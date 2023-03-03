Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3276A9A3F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 16:08:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 250E23EF25
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 15:08:41 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by lists.linaro.org (Postfix) with ESMTPS id A48E33EA17
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 15:08:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=DAoV1EOi;
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 134.134.136.100) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677856101; x=1709392101;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=s8d3oS7J43u4ul75ZgButvm6v6s/YZ4L8cHni8MIrkk=;
  b=DAoV1EOiU672QSwkXgkZImvQ2WJmqJaUnOX+ZHIZdgdptVWEcZ9JUaFp
   5SYV+l/ChyepL6J7Vbn+4cyqXFBqS17RVzu1JgFmgHSANOl3358CY5+mo
   LdiHrhLqfkJdDeei35ZQ6/Nju0VPWDY8Us7B5NtlHZrY4aeGPyiEabhrl
   /m9Bu5T7uu9HiaH98rwT/Ia3mk5zGsW7jbYi3ZBxlTRcIYXfubxNgJO5l
   D/xCYIfoabvbF+oiH1+dj6/SCdCiDuuvx93NjEjWOo0RZUyxX6mpGULmA
   5plhbReOPLCnz4qTrfTy467HRZLWO352G5PvrSlsHwl4G5Zr51je9O3zw
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="399871688"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400";
   d="scan'208";a="399871688"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 07:07:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="739528150"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400";
   d="scan'208";a="739528150"
Received: from npalanis-mobl1.ger.corp.intel.com (HELO [10.213.202.105]) ([10.213.202.105])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 07:07:06 -0800
Message-ID: <a5ced581-4060-0fa2-d2fc-d18beee6fdb5@linux.intel.com>
Date: Fri, 3 Mar 2023 15:07:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>
References: <20230302235356.3148279-1-robdclark@gmail.com>
 <20230302235356.3148279-16-robdclark@gmail.com> <ZAFnqbycMleLmRe9@intel.com>
 <3bded9d7-9796-4a9b-7c11-aac994d4fdc6@linux.intel.com>
 <CAF6AEGs6QYTESuwB8E9cTbv9LqQX16tz6-geeu9BCyFos9=sOA@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CAF6AEGs6QYTESuwB8E9cTbv9LqQX16tz6-geeu9BCyFos9=sOA@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A48E33EA17
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[gmail.com];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,amd.com,emersion.fr,chromium.org,linux.intel.com,linaro.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: IBROZA2Z6XEIJC5L2LYE7XVDJQY2YN6E
X-Message-ID-Hash: IBROZA2Z6XEIJC5L2LYE7XVDJQY2YN6E
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Matt Turner <mattst88@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IBROZA2Z6XEIJC5L2LYE7XVDJQY2YN6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit


On 03/03/2023 14:48, Rob Clark wrote:
> On Fri, Mar 3, 2023 at 1:58 AM Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
>>
>>
>> On 03/03/2023 03:21, Rodrigo Vivi wrote:
>>> On Thu, Mar 02, 2023 at 03:53:37PM -0800, Rob Clark wrote:
>>>> From: Rob Clark <robdclark@chromium.org>
>>>>
>>>
>>> missing some wording here...
>>>
>>>> v2: rebase
>>>>
>>>> Signed-off-by: Rob Clark <robdclark@chromium.org>
>>>> ---
>>>>    drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++++
>>>>    1 file changed, 20 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
>>>> index 7503dcb9043b..44491e7e214c 100644
>>>> --- a/drivers/gpu/drm/i915/i915_request.c
>>>> +++ b/drivers/gpu/drm/i915/i915_request.c
>>>> @@ -97,6 +97,25 @@ static bool i915_fence_enable_signaling(struct dma_fence *fence)
>>>>       return i915_request_enable_breadcrumb(to_request(fence));
>>>>    }
>>>>
>>>> +static void i915_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
>>>> +{
>>>> +    struct i915_request *rq = to_request(fence);
>>>> +
>>>> +    if (i915_request_completed(rq))
>>>> +            return;
>>>> +
>>>> +    if (i915_request_started(rq))
>>>> +            return;
>>>
>>> why do we skip the boost if already started?
>>> don't we want to boost the freq anyway?
>>
>> I'd wager Rob is just copying the current i915 wait boost logic.
> 
> Yup, and probably incorrectly.. Matt reported fewer boosts/sec
> compared to your RFC, this could be the bug

Hm, there I have preserved this same !i915_request_started logic.

Presumably it's not just fewer boosts but lower performance. How is he 
setting the deadline? Somehow from clFlush or so?

Regards,

Tvrtko

P.S. Take note that I did not post the latest version of my RFC. The one 
where I fix the fence chain and array misses you pointed out. I did not 
think it would be worthwhile given no universal love for it, but if 
people are testing with it more widely that I was aware perhaps I should.

>>>> +
>>>> +    /*
>>>> +     * TODO something more clever for deadlines that are in the
>>>> +     * future.  I think probably track the nearest deadline in
>>>> +     * rq->timeline and set timer to trigger boost accordingly?
>>>> +     */
>>>
>>> I'm afraid it will be very hard to find some heuristics of what's
>>> late enough for the boost no?
>>> I mean, how early to boost the freq on an upcoming deadline for the
>>> timer?
>>
>> We can off load this patch from Rob and deal with it separately, or
>> after the fact?
> 
> That is completely my intention, I expect you to replace my i915 patch ;-)
> 
> Rough idea when everyone is happy with the core bits is to setup an
> immutable branch without the driver specific patches, which could be
> merged into drm-next and $driver-next and then each driver team can
> add there own driver patches on top
> 
> BR,
> -R
> 
>> It's a half solution without a smarter scheduler too. Like
>> https://lore.kernel.org/all/20210208105236.28498-10-chris@chris-wilson.co.uk/,
>> or if GuC plans to do something like that at any point.
>>
>> Or bump the priority too if deadline is looming?
>>
>> IMO it is not very effective to fiddle with the heuristic on an ad-hoc
>> basis. For instance I have a new heuristics which improves the
>> problematic OpenCL cases for further 5% (relative to the current
>> waitboost improvement from adding missing syncobj waitboost). But I
>> can't really test properly for regressions over platforms, stacks,
>> workloads.. :(
>>
>> Regards,
>>
>> Tvrtko
>>
>>>
>>>> +
>>>> +    intel_rps_boost(rq);
>>>> +}
>>>> +
>>>>    static signed long i915_fence_wait(struct dma_fence *fence,
>>>>                                  bool interruptible,
>>>>                                  signed long timeout)
>>>> @@ -182,6 +201,7 @@ const struct dma_fence_ops i915_fence_ops = {
>>>>       .signaled = i915_fence_signaled,
>>>>       .wait = i915_fence_wait,
>>>>       .release = i915_fence_release,
>>>> +    .set_deadline = i915_fence_set_deadline,
>>>>    };
>>>>
>>>>    static void irq_execute_cb(struct irq_work *wrk)
>>>> --
>>>> 2.39.1
>>>>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
