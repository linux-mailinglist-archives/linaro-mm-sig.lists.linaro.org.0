Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 62926467442
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Dec 2021 10:44:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 447B861A4B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Dec 2021 09:44:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EFAB561F0D; Fri,  3 Dec 2021 09:44:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2427261A3D;
	Fri,  3 Dec 2021 09:44:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 105B761A36
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Dec 2021 09:44:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F41E161A3D; Fri,  3 Dec 2021 09:44:50 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by lists.linaro.org (Postfix) with ESMTPS id A210061A36
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Dec 2021 09:44:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="223822103"
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="223822103"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 01:42:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="655897030"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 03 Dec 2021 01:42:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Dec 2021 11:42:06 +0200
Date: Fri, 3 Dec 2021 11:42:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Message-ID: <YanmbhwDrdpu+Zup@intel.com>
References: <1638523913-117827-1-git-send-email-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1638523913-117827-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Patchwork-Hint: comment
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdkfd: Use max() instead of doing
 it manually
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: airlied@linux.ie, Felix.Kuehling@amd.com, Xinhui.Pan@amd.com,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 alexander.deucher@amd.com, christian.koenig@amd.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Dec 03, 2021 at 05:31:53PM +0800, Jiapeng Chong wrote:
> Fix following coccicheck warning:
> =

> ./drivers/gpu/drm/amd/amdkfd/kfd_svm.c:2193:16-17: WARNING opportunity
> for max().
> =

> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---
>  drivers/gpu/drm/amd/amdkfd/kfd_svm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/amd/amdkfd/kfd_svm.c b/drivers/gpu/drm/amd/a=
mdkfd/kfd_svm.c
> index f2db49c..4f7e7b1 100644
> --- a/drivers/gpu/drm/amd/amdkfd/kfd_svm.c
> +++ b/drivers/gpu/drm/amd/amdkfd/kfd_svm.c
> @@ -2190,7 +2190,7 @@ void schedule_deferred_list_work(struct svm_range_l=
ist *svms)
>  =

>  	start =3D mni->interval_tree.start;
>  	last =3D mni->interval_tree.last;
> -	start =3D (start > range->start ? start : range->start) >> PAGE_SHIFT;
> +	start =3D max(start, range->start) >> PAGE_SHIFT;
>  	last =3D (last < (range->end - 1) ? last : range->end - 1) >> PAGE_SHIF=
T;

There's an open coded min() on the very next line.

>  	pr_debug("[0x%lx 0x%lx] range[0x%lx 0x%lx] notifier[0x%lx 0x%lx] %d\n",
>  		 start, last, range->start >> PAGE_SHIFT,
> -- =

> 1.8.3.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
