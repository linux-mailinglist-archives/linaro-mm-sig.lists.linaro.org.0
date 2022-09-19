Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA5C5BC45F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Sep 2022 10:34:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA123479EC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Sep 2022 08:34:56 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by lists.linaro.org (Postfix) with ESMTPS id 6817F3ED1B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Sep 2022 08:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663576490; x=1695112490;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=gvitbWxJbKVPz6HHjo9mSVxRRPK2yahVp85eTBd7yNA=;
  b=V7BNjST7WM7vZn+ZxbelW65LDFl14c3JLQD9dBtyRplbThj8KWMOEGGh
   BKG6YZxUuYyNzkS4JD6QU4a3/L9Y7D43Z6uPoFpP2+Yq5JxI/vBJwUbNl
   N4Jo79zU8RfWxQilv6ucX8NAc++Rak3vrbTIl/qWuoe8oFzvsTSqZK1xU
   N5O0uwxJYa4bQ5dMwfCgUZCGgJOqX+C2j4yi0c7SAmV4v5M9SJ/ZNzSvo
   anKqKGpdUDoaO2ED36ZFF22bsq7jHbDwnHC2vi2na7tGsWu6Py5pDbeae
   PSkWY/V9s86b+hmhAyn7IuqBAyUAGzPyXHLbeT46juxrA/VXcmUrwshd7
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="279723883"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200";
   d="scan'208";a="279723883"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 01:34:49 -0700
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200";
   d="scan'208";a="595995204"
Received: from jjohns2-mobl2.amr.corp.intel.com (HELO localhost) ([10.252.57.205])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 01:34:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Li Zhong <floridsleeves@gmail.com>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220918220731.1026200-1-floridsleeves@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220918220731.1026200-1-floridsleeves@gmail.com>
Date: Mon, 19 Sep 2022 11:34:29 +0300
Message-ID: <877d1zrcdm.fsf@intel.com>
MIME-Version: 1.0
Message-ID-Hash: 45RKV3BTTIJ5VGXNL6Y5P67K5YVM7Z2L
X-Message-ID-Hash: 45RKV3BTTIJ5VGXNL6Y5P67K5YVM7Z2L
X-MailFrom: jani.nikula@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: airlied@redhat.com, ville.syrjala@linux.intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, daniel@ffwll.ch, airlied@linux.ie, tvrtko.ursulin@linux.intel.com, rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com, Li Zhong <floridsleeves@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] drivers/gpu/drm/i915/gt: Check the return value of i915_active_acquire()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/45RKV3BTTIJ5VGXNL6Y5P67K5YVM7Z2L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 18 Sep 2022, Li Zhong <floridsleeves@gmail.com> wrote:
> i915_active_acquire() could return error when the acquire fails. Check
> and return the error code.

The commit message should explain why you don't need to do further error
handling. Or do you?

Side note, the distribution list is excessive.

BR,
Jani.


> Signed-off-by: Li Zhong <floridsleeves@gmail.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_timeline.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index b9640212d659..d8333ab64574 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -211,7 +211,10 @@ int intel_timeline_pin(struct intel_timeline *tl, struct i915_gem_ww_ctx *ww)
>  	GT_TRACE(tl->gt, "timeline:%llx using HWSP offset:%x\n",
>  		 tl->fence_context, tl->hwsp_offset);
>  
> -	i915_active_acquire(&tl->active);
> +	err = i915_active_acquire(&tl->active);
> +	if (err)
> +		return err;
> +
>  	if (atomic_fetch_inc(&tl->pin_count)) {
>  		i915_active_release(&tl->active);
>  		__i915_vma_unpin(tl->hwsp_ggtt);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
