Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5394B3B0D33
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 20:50:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 171E363290
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 18:50:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D7F426329E; Tue, 22 Jun 2021 18:50:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA33E631B5;
	Tue, 22 Jun 2021 18:50:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4917B631B3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 18:50:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3F2DB631B5; Tue, 22 Jun 2021 18:50:06 +0000 (UTC)
Received: from mx1.smtp.larsendata.com (mx1.smtp.larsendata.com
 [91.221.196.215])
 by lists.linaro.org (Postfix) with ESMTPS id 0C6BB631B3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 18:50:03 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id afd44773-d38a-11eb-960d-0050568c148b;
 Tue, 22 Jun 2021 18:50:17 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id DE0F1194B4A;
 Tue, 22 Jun 2021 20:50:05 +0200 (CEST)
Date: Tue, 22 Jun 2021 20:49:58 +0200
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YNIw1g5HVCzvmKzP@ravnborg.org>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/15] dma-resv: Fix kerneldoc
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi Daniel,

On Tue, Jun 22, 2021 at 06:54:57PM +0200, Daniel Vetter wrote:
> Oversight from
> =

> commit 6edbd6abb783d54f6ac4c3ed5cd9e50cff6c15e9
> Author: Christian K=F6nig <christian.koenig@amd.com>
> Date:   Mon May 10 16:14:09 2021 +0200

this is what we uses Fixes: ... for.

It looks wrong to hide it in the description.

	Sam

> =

>     dma-buf: rename and cleanup dma_resv_get_excl v3
> =

> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org
> ---
>  include/linux/dma-resv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index 562b885cf9c3..e1ca2080a1ff 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -212,7 +212,7 @@ static inline void dma_resv_unlock(struct dma_resv *o=
bj)
>  }
>  =

>  /**
> - * dma_resv_exclusive - return the object's exclusive fence
> + * dma_resv_excl_fence - return the object's exclusive fence
>   * @obj: the reservation object
>   *
>   * Returns the exclusive fence (if any). Caller must either hold the obj=
ects
> -- =

> 2.32.0.rc2
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
