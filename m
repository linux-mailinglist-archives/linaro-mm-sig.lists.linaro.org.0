Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B68D769D0E2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 16:47:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80FD43F31A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 15:47:06 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by lists.linaro.org (Postfix) with ESMTPS id C383F3EBC1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 15:46:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="Nxy/CTo6";
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 192.55.52.136) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1676908006; x=1708444006;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=k4wfezK6AXjJRKoJw8o50JWi2ZFodNHQ5z5zxhTGtJs=;
  b=Nxy/CTo68GN5DSYUlRtJ3kAjuyuKS23fxsXxtvkTtDL+a+PT7NWyCx/j
   yafxBZxOrcRo8myfN2KMnbcBNlZm9gTIgzgiUDYz4np9xRJl5tP6U9tsO
   K/mtvajpxun+VbKrim4M/4SFUDeLRdwWBUFG5cW5AF0vKPZJKg3Ww/nUV
   nV1xhtGnbjSRcujLln/9A8jONYx41KnkmQBGXmRsziRXsHhbII0dfBclW
   xg5X0VIJ+4YIUqWkbgiRLj04AmNONOpy31SgUcJgHobomqL1muOYmjVgj
   YWVZUJRLEQ+PMu8CeqEdD4aF0W/h/5noUksrKepZ+UxsM0nZU+1GTCD5t
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312060023"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000";
   d="scan'208";a="312060023"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2023 07:46:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="916897293"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000";
   d="scan'208";a="916897293"
Received: from mochoamo-mobl.ger.corp.intel.com (HELO [10.213.211.126]) ([10.213.211.126])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2023 07:46:41 -0800
Message-ID: <2716c108-0486-6e27-77e2-efd1fa350f04@linux.intel.com>
Date: Mon, 20 Feb 2023 15:46:39 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-15-robdclark@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230218211608.1630586-15-robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C383F3EBC1
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,lists.freedesktop.org,intel.com,gmail.com,daenzer.net,vger.kernel.org,amd.com,lists.linaro.org,linaro.org];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: 7USNP77EHOXXXE5G6SJQ5XFQN24IDM53
X-Message-ID-Hash: 7USNP77EHOXXXE5G6SJQ5XFQN24IDM53
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 14/14] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7USNP77EHOXXXE5G6SJQ5XFQN24IDM53/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit


On 18/02/2023 21:15, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
> 
> This should probably be re-written by someone who knows the i915
> request/timeline stuff better, to deal with non-immediate deadlines.
> But as-is I think this should be enough to handle the case where
> we want syncobj waits to trigger boost.

Yeah, there are endless possibilities. :) But I think it is effectively 
similar enough to current waitboosting (when waits are done using the 
i915 specific ioctl). So as a first step I'll try to organize some 
internal power and performance testing, at least Chromebook focused, to 
see if modern userspace (syncobj based) even benefits and does not by 
some chance regress over the board.

Regards,

Tvrtko

> 
>   drivers/gpu/drm/i915/i915_driver.c  |  2 +-
>   drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++++
>   2 files changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index cf1c0970ecb4..bd40b7bcb38a 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1781,7 +1781,7 @@ static const struct drm_driver i915_drm_driver = {
>   	.driver_features =
>   	    DRIVER_GEM |
>   	    DRIVER_RENDER | DRIVER_MODESET | DRIVER_ATOMIC | DRIVER_SYNCOBJ |
> -	    DRIVER_SYNCOBJ_TIMELINE,
> +	    DRIVER_SYNCOBJ_TIMELINE | DRIVER_SYNCOBJ_DEADLINE,
>   	.release = i915_driver_release,
>   	.open = i915_driver_open,
>   	.lastclose = i915_driver_lastclose,
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 7503dcb9043b..44491e7e214c 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -97,6 +97,25 @@ static bool i915_fence_enable_signaling(struct dma_fence *fence)
>   	return i915_request_enable_breadcrumb(to_request(fence));
>   }
>   
> +static void i915_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
> +{
> +	struct i915_request *rq = to_request(fence);
> +
> +	if (i915_request_completed(rq))
> +		return;
> +
> +	if (i915_request_started(rq))
> +		return;
> +
> +	/*
> +	 * TODO something more clever for deadlines that are in the
> +	 * future.  I think probably track the nearest deadline in
> +	 * rq->timeline and set timer to trigger boost accordingly?
> +	 */
> +
> +	intel_rps_boost(rq);
> +}
> +
>   static signed long i915_fence_wait(struct dma_fence *fence,
>   				   bool interruptible,
>   				   signed long timeout)
> @@ -182,6 +201,7 @@ const struct dma_fence_ops i915_fence_ops = {
>   	.signaled = i915_fence_signaled,
>   	.wait = i915_fence_wait,
>   	.release = i915_fence_release,
> +	.set_deadline = i915_fence_set_deadline,
>   };
>   
>   static void irq_execute_cb(struct irq_work *wrk)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
