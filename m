Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B90D6A94A1
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 10:59:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 01A293EEE3
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 09:59:04 +0000 (UTC)
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	by lists.linaro.org (Postfix) with ESMTPS id D73E43EA17
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 09:58:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=AEauKBpI;
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 134.134.136.31) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677837525; x=1709373525;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=43cn5v2Z9OSPVxLCaHxJZxxi3aLIc72ErHl75qOAgGQ=;
  b=AEauKBpIgAJ7uUPwMjTI3Wqsl07jbOeF+I93yKp9cH86fID0lUOhu++I
   qgoa/LF/hD9qX1z0nrCu56zPnoPo+6SHO3ZH3gkOVuMleazx+hIgLVxXe
   F6W7bagX/Ub38XpLRDpBbi6AtkM+wooSMuMLUKLov/prBrU+OfWezNq9U
   yC4OUYmNFrzf4KAmm9eRB8jmQnrptZdAwgoTP3Pf2kEDwpuJzIYIA+fBp
   kBACI44vbRr259jCBxZXSox1MEY0ZwMp0Fmid0AvMGlzrcGlnw+JR25fA
   /3M1fQsYD/JkHCye5uHt9nmUvHlbcEaNXJ8w2nqDuDYt/cLzUC7Tc5xhU
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="397598984"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400";
   d="scan'208";a="397598984"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 01:58:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="764356162"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400";
   d="scan'208";a="764356162"
Received: from shiyaowa-mobl2.ger.corp.intel.com (HELO [10.213.235.33]) ([10.213.235.33])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 01:58:38 -0800
Message-ID: <3bded9d7-9796-4a9b-7c11-aac994d4fdc6@linux.intel.com>
Date: Fri, 3 Mar 2023 09:58:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Rob Clark <robdclark@gmail.com>
References: <20230302235356.3148279-1-robdclark@gmail.com>
 <20230302235356.3148279-16-robdclark@gmail.com> <ZAFnqbycMleLmRe9@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZAFnqbycMleLmRe9@intel.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D73E43EA17
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mga06.intel.com:helo,intel.com:dkim,chromium.org:email];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	FREEMAIL_TO(0.00)[intel.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linux.intel.com,linaro.org,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: FOPS6XFEJAR6ODMKHAZZX5RWV5NCZ3TQ
X-Message-ID-Hash: FOPS6XFEJAR6ODMKHAZZX5RWV5NCZ3TQ
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FOPS6XFEJAR6ODMKHAZZX5RWV5NCZ3TQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit


On 03/03/2023 03:21, Rodrigo Vivi wrote:
> On Thu, Mar 02, 2023 at 03:53:37PM -0800, Rob Clark wrote:
>> From: Rob Clark <robdclark@chromium.org>
>>
> 
> missing some wording here...
> 
>> v2: rebase
>>
>> Signed-off-by: Rob Clark <robdclark@chromium.org>
>> ---
>>   drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++++
>>   1 file changed, 20 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
>> index 7503dcb9043b..44491e7e214c 100644
>> --- a/drivers/gpu/drm/i915/i915_request.c
>> +++ b/drivers/gpu/drm/i915/i915_request.c
>> @@ -97,6 +97,25 @@ static bool i915_fence_enable_signaling(struct dma_fence *fence)
>>   	return i915_request_enable_breadcrumb(to_request(fence));
>>   }
>>   
>> +static void i915_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
>> +{
>> +	struct i915_request *rq = to_request(fence);
>> +
>> +	if (i915_request_completed(rq))
>> +		return;
>> +
>> +	if (i915_request_started(rq))
>> +		return;
> 
> why do we skip the boost if already started?
> don't we want to boost the freq anyway?

I'd wager Rob is just copying the current i915 wait boost logic.

>> +
>> +	/*
>> +	 * TODO something more clever for deadlines that are in the
>> +	 * future.  I think probably track the nearest deadline in
>> +	 * rq->timeline and set timer to trigger boost accordingly?
>> +	 */
> 
> I'm afraid it will be very hard to find some heuristics of what's
> late enough for the boost no?
> I mean, how early to boost the freq on an upcoming deadline for the
> timer?

We can off load this patch from Rob and deal with it separately, or 
after the fact?

It's a half solution without a smarter scheduler too. Like 
https://lore.kernel.org/all/20210208105236.28498-10-chris@chris-wilson.co.uk/, 
or if GuC plans to do something like that at any point.

Or bump the priority too if deadline is looming?

IMO it is not very effective to fiddle with the heuristic on an ad-hoc 
basis. For instance I have a new heuristics which improves the 
problematic OpenCL cases for further 5% (relative to the current 
waitboost improvement from adding missing syncobj waitboost). But I 
can't really test properly for regressions over platforms, stacks, 
workloads.. :(

Regards,

Tvrtko

> 
>> +
>> +	intel_rps_boost(rq);
>> +}
>> +
>>   static signed long i915_fence_wait(struct dma_fence *fence,
>>   				   bool interruptible,
>>   				   signed long timeout)
>> @@ -182,6 +201,7 @@ const struct dma_fence_ops i915_fence_ops = {
>>   	.signaled = i915_fence_signaled,
>>   	.wait = i915_fence_wait,
>>   	.release = i915_fence_release,
>> +	.set_deadline = i915_fence_set_deadline,
>>   };
>>   
>>   static void irq_execute_cb(struct irq_work *wrk)
>> -- 
>> 2.39.1
>>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
