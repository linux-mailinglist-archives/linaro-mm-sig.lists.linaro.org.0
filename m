Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1724F4B837B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 10:02:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 274363EEC5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 09:02:20 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by lists.linaro.org (Postfix) with ESMTPS id 29A6F3ECAA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Feb 2022 09:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645002137; x=1676538137;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=mwF1U5j+drzsRrwL7zZWjzrwyGUiQkfyhUKOWPFbLPM=;
  b=g6Izr7evwwQqwJS++Nr/y0Wm3apHhIgWegEQH+wYZS0G7paRP6VxuvtQ
   ylS0g4tIMQsMk9nGl3TsuCpU2/xIty5jVKdcTHurhhRtRrib6wgQj8SfD
   Y2Rrpr7eGUgclNxuvTTlDVrGblwUARMJx745NWoZNoizYj7wWNOR6tFRT
   Ogi0JBMjp/KcdeIyH8wTVWk+ffUD07GSQqAVJ7jN1QqHYrUz6vWbkD4h/
   rVcOabtBrbTbDkj+lkCEfOaUjRqtR1LGT3PYwWpsXYs01RdupT9+6iZDy
   mmNtcRDOfYfvuswzUPQgiAtxnT9IWPke+MoZ54TP3UL2a5ptOygYAWcg+
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250758357"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600";
   d="scan'208";a="250758357"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2022 01:02:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600";
   d="scan'208";a="704216865"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost) ([10.252.13.113])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2022 01:02:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
In-Reply-To: <20220216083849.91239-1-jiapeng.chong@linux.alibaba.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220216083849.91239-1-jiapeng.chong@linux.alibaba.com>
Date: Wed, 16 Feb 2022 11:02:06 +0200
Message-ID: <87h78z5gmp.fsf@intel.com>
MIME-Version: 1.0
Message-ID-Hash: EMZAC575EXRVHAL66XXCYLG6TM4EC6O4
X-Message-ID-Hash: EMZAC575EXRVHAL66XXCYLG6TM4EC6O4
X-MailFrom: jani.nikula@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch, christian.koenig@amd.com, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/i915/gt: fix unsigned integer to signed assignment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EMZAC575EXRVHAL66XXCYLG6TM4EC6O4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 16 Feb 2022, Jiapeng Chong <jiapeng.chong@linux.alibaba.com> wrote:
> Eliminate the follow smatch warning:
>
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4640
> guc_create_virtual() warn: assigning (-2) to unsigned variable
> 've->base.instance'.
>
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4641
> guc_create_virtual() warn: assigning (-2) to unsigned variable
> 've->base.uabi_instance'.
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

The report seems to be valid, but I don't think this is the fix.

Where do we even check for invalid instance/uabi_instance in code?

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/gt/intel_engine_types.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 36365bdbe1ee..dc7cc06c68e7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -328,10 +328,10 @@ struct intel_engine_cs {
>  	intel_engine_mask_t logical_mask;
>  
>  	u8 class;
> -	u8 instance;
> +	s8 instance;
>  
>  	u16 uabi_class;
> -	u16 uabi_instance;
> +	s16 uabi_instance;
>  
>  	u32 uabi_capabilities;
>  	u32 context_size;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
