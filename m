Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C88D6A1B78
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 12:37:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7470144248
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 11:37:38 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by lists.linaro.org (Postfix) with ESMTPS id 490183F50D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 11:37:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=dssZGPQo;
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 134.134.136.24) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677238637; x=1708774637;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=dWAgl/tdtfg2TnhXEjmoFDyF9GDJI776Z7KeMzUMu5w=;
  b=dssZGPQotmj8GOJ+iDchx4TUPYr4snp/libNDtBOwhm7UkRYh/9+klnb
   HXK+hVZeRj1t0mSnAetyuK6v8di1q8lBatNkj1s23nBIyNHFmdsC8wgZX
   GsVgV8AgyqjBHVWUO25YVp334zNF7SQFGcU+49+SZ7yhfXSwxG0kwn8Fr
   0olzNVpIcbQD1h1yxRDw/zmmmHDB2dbFcINe+Orq9W9l2UVuPqY8qwfeR
   C2Kr8O1K7PJcaB0nA5dYNjJQeu4CG9+R1v9jOky2ThE9/I7VKInowwKoA
   71qDSLKUQpK8md2S9a6ODlfEgJjB30oJwEgv9AGzDOym9k1Ywev5c6sVB
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334876203"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000";
   d="scan'208";a="334876203"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2023 03:37:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="761759786"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000";
   d="scan'208";a="761759786"
Received: from wmao-mobl.amr.corp.intel.com (HELO [10.212.63.133]) ([10.212.63.133])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2023 03:37:09 -0800
Message-ID: <c5d046d6-ab8e-2bc7-5110-dba78b91348b@linux.intel.com>
Date: Fri, 24 Feb 2023 11:37:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-7-robdclark@gmail.com>
 <20230220105345.70e46fa5@eldfell>
 <CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
 <cdd5f892-49b9-1e22-4dc1-95a8a733c453@amd.com>
 <CAF6AEGuMn3FywPkEtfJ7oZ16A0Bk2aiaRvj4si4od1d3wzXkPw@mail.gmail.com>
 <20230222114900.1b6baf95@eldfell>
 <CAF6AEGs1_75gg+LCBj6=PH8Jn60PXiE+Kx_2636nP-+pajN8Hg@mail.gmail.com>
 <20230223113814.3010cedc@eldfell>
 <CAF6AEGuE89kuKTjjzwW1xMppcVw-M4-hcrtifed-mvsCA=cshQ@mail.gmail.com>
 <20230224112630.313d7b76@eldfell>
 <a47e2686-1e35-39a3-0f0c-6c3b9522f8ff@linux.intel.com>
 <20230224122403.6a088da1@eldfell>
 <582a9b92-d246-fce2-cf39-539d9a2db17f@linux.intel.com>
 <20230224130053.3f8939e2@eldfell>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230224130053.3f8939e2@eldfell>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 490183F50D
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.40 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[intel.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[134.134.136.24:from];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[134.134.136.24:from];
	FREEMAIL_CC(0.00)[gmail.com,chromium.org,intel.com,padovan.org,daenzer.net,vger.kernel.org,lists.freedesktop.org,linaro.org,lists.linaro.org,amd.com];
	TAGGED_RCPT(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[intel.com:+];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 5UHRSZH3D6UX3ZNCI6F2A6XUC3JZ4QUQ
X-Message-ID-Hash: 5UHRSZH3D6UX3ZNCI6F2A6XUC3JZ4QUQ
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@gmail.com>, Rob Clark <robdclark@chromium.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5UHRSZH3D6UX3ZNCI6F2A6XUC3JZ4QUQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit


On 24/02/2023 11:00, Pekka Paalanen wrote:
> On Fri, 24 Feb 2023 10:50:51 +0000
> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> 
>> On 24/02/2023 10:24, Pekka Paalanen wrote:
>>> On Fri, 24 Feb 2023 09:41:46 +0000
>>> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>>>    
>>>> On 24/02/2023 09:26, Pekka Paalanen wrote:
>>>>> On Thu, 23 Feb 2023 10:51:48 -0800
>>>>> Rob Clark <robdclark@gmail.com> wrote:
>>>>>       
>>>>>> On Thu, Feb 23, 2023 at 1:38 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>>>>>>>
>>>>>>> On Wed, 22 Feb 2023 07:37:26 -0800
>>>>>>> Rob Clark <robdclark@gmail.com> wrote:
>>>>>>>         
>>>>>>>> On Wed, Feb 22, 2023 at 1:49 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>>>>>
>>>>> ...
>>>>>       
>>>>>>>>> On another matter, if the application uses SET_DEADLINE with one
>>>>>>>>> timestamp, and the compositor uses SET_DEADLINE on the same thing with
>>>>>>>>> another timestamp, what should happen?
>>>>>>>>
>>>>>>>> The expectation is that many deadline hints can be set on a fence.
>>>>>>>> The fence signaller should track the soonest deadline.
>>>>>>>
>>>>>>> You need to document that as UAPI, since it is observable to userspace.
>>>>>>> It would be bad if drivers or subsystems would differ in behaviour.
>>>>>>>         
>>>>>>
>>>>>> It is in the end a hint.  It is about giving the driver more
>>>>>> information so that it can make better choices.  But the driver is
>>>>>> even free to ignore it.  So maybe "expectation" is too strong of a
>>>>>> word.  Rather, any other behavior doesn't really make sense.  But it
>>>>>> could end up being dictated by how the hw and/or fw works.
>>>>>
>>>>> It will stop being a hint once it has been implemented and used in the
>>>>> wild long enough. The kernel userspace regression rules make sure of
>>>>> that.
>>>>
>>>> Yeah, tricky and maybe a gray area in this case. I think we eluded
>>>> elsewhere in the thread that renaming the thing might be an option.
>>>>
>>>> So maybe instead of deadline, which is a very strong word, use something
>>>> along the lines of "present time hint", or "signalled time hint"? Maybe
>>>> reads clumsy. Just throwing some ideas for a start.
>>>
>>> You can try, but I fear that if it ever changes behaviour and
>>> someone notices that, it's labelled as a kernel regression. I don't
>>> think documentation has ever been the authoritative definition of UABI
>>> in Linux, it just guides drivers and userspace towards a common
>>> understanding and common usage patterns.
>>>
>>> So even if the UABI contract is not documented (ugh), you need to be
>>> prepared to set the UABI contract through kernel implementation.
>>
>> To be the devil's advocate it probably wouldn't be an ABI regression but
>> just an regression. Same way as what nice(2) priorities mean hasn't
>> always been the same over the years, I don't think there is a strict
>> contract.
>>
>> Having said that, it may be different with latency sensitive stuff such
>> as UIs though since it is very observable and can be very painful to users.
>>
>>> If you do not document the UABI contract, then different drivers are
>>> likely to implement it differently, leading to differing behaviour.
>>> Also userspace will invent wild ways to abuse the UABI if there is no
>>> documentation guiding it on proper use. If userspace or end users
>>> observe different behaviour, that's bad even if it's not a regression.
>>>
>>> I don't like the situation either, but it is what it is. UABI stability
>>> trumps everything regardless of whether it was documented or not.
>>>
>>> I bet userspace is going to use this as a "make it faster, make it
>>> hotter" button. I would not be surprised if someone wrote a LD_PRELOAD
>>> library that stamps any and all fences with an expired deadline to
>>> just squeeze out a little more through some weird side-effect.
>>>
>>> Well, that's hopefully overboard in scaring, but in the end, I would
>>> like to see UABI documented so I can have a feeling of what it is for
>>> and how it was intended to be used. That's all.
>>
>> We share the same concern. If you read elsewhere in these threads you
>> will notice I have been calling this an "arms race". If the ability to
>> make yourself go faster does not required additional privilege I also
>> worry everyone will do it at which point it becomes pointless. So yes, I
>> do share this concern about exposing any of this as an unprivileged uapi.
>>
>> Is it possible to limit access to only compositors in some sane way?
>> Sounds tricky when dma-fence should be disconnected from DRM..
> 
> Maybe it's not that bad in this particular case, because we are talking
> only about boosting GPU clocks which benefits everyone (except
> battery life) and it does not penalize other programs like e.g.
> job priorities do.

Apart from efficiency that you mentioned, which does not always favor 
higher clocks, sometimes thermal budget is also shared between CPU and 
GPU. So more GPU clocks can mean fewer CPU clocks. It's really hard to 
make optimal choices without the full coordination between both schedulers.

But that is even not the main point, which is that if everyone sets the 
immediate deadline then having the deadline API is a bit pointless. For 
instance there is a reason negative nice needs CAP_SYS_ADMIN.

However Rob has also pointed out the existence of uclamp.min via 
sched_setattr which is unprivileged and can influence frequency 
selection in the CPU world, so I conceded on that point. If CPU world 
has accepted it so can we I guess.

So IMO we are back to whether we can agree defining it is a hint is good 
enough, be in via the name of the ioctl/flag itself or via documentation.

> Drivers are not going to use the deadline for scheduling priorities,
> right? I don't recall seeing any mention of that.
> 
> ...right?

I wouldn't have thought it would be beneficial to preclude that, or 
assume what drivers would do with the info to begin with.

For instance in i915 we almost had a deadline based scheduler which was 
much fairer than the current priority sorted fifo and in an ideal world 
we would either revive or re-implement that idea. In which case 
considering the fence deadline would naturally slot in and give true 
integration with compositor deadlines (not just boost clocks and pray it 
helps).

Regards,

Tvrtko
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
