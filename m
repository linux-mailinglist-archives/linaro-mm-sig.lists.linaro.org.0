Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DE66A18F7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 10:42:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 887A34423C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 09:42:11 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by lists.linaro.org (Postfix) with ESMTPS id 8B80F3ED9F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 09:41:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=YSK0+k2T;
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 134.134.136.24) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677231712; x=1708767712;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=OeOLLVSe1/js5PTlYfPJkePsPkE4JB+cWEgIxLEaucY=;
  b=YSK0+k2TbdbxjwL+yakxCz5DOzRC4XhLreUq4cETU9RJPh0jbBsWiJ71
   lR8GEogFBi1VP0qwArA2/2bNvilq5t3SMIYExt0tmBEs1qMbSRJLhrdsd
   kPRSY7gjEcOyrCEVH+wEiQS0bTX72jDdY5Nh//gzrlHqzsKKkRFE8dEgC
   VXLmTp0LmPzC4g8z/vq799XdPdxKYynVzDS+KunmtfOn8kksaAkEGOEgn
   FuuUfjfwY8CjBZCK3VNOjywyeORtf2cGzoF9hDuwVurZ7I12f+o26D4KI
   VN7CTCwzdDhnUMSU95oevQ8hoOJxIasx/OeuzDaWk1Hkax06ZZcbqdsWk
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334858026"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000";
   d="scan'208";a="334858026"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2023 01:41:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="736744871"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000";
   d="scan'208";a="736744871"
Received: from wmao-mobl.amr.corp.intel.com (HELO [10.212.63.133]) ([10.212.63.133])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2023 01:41:48 -0800
Message-ID: <a47e2686-1e35-39a3-0f0c-6c3b9522f8ff@linux.intel.com>
Date: Fri, 24 Feb 2023 09:41:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Pekka Paalanen <ppaalanen@gmail.com>, Rob Clark <robdclark@gmail.com>
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
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230224112630.313d7b76@eldfell>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8B80F3ED9F
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[134.134.136.24:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[gmail.com];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,intel.com,padovan.org,daenzer.net,vger.kernel.org,lists.freedesktop.org,linaro.org,lists.linaro.org,amd.com,gmail.com];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: RSN4A2O4KU4LAQVZ2XYFFSECET5K3KXM
X-Message-ID-Hash: RSN4A2O4KU4LAQVZ2XYFFSECET5K3KXM
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RSN4A2O4KU4LAQVZ2XYFFSECET5K3KXM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit


On 24/02/2023 09:26, Pekka Paalanen wrote:
> On Thu, 23 Feb 2023 10:51:48 -0800
> Rob Clark <robdclark@gmail.com> wrote:
> 
>> On Thu, Feb 23, 2023 at 1:38 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>>>
>>> On Wed, 22 Feb 2023 07:37:26 -0800
>>> Rob Clark <robdclark@gmail.com> wrote:
>>>   
>>>> On Wed, Feb 22, 2023 at 1:49 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> 
> ...
> 
>>>>> On another matter, if the application uses SET_DEADLINE with one
>>>>> timestamp, and the compositor uses SET_DEADLINE on the same thing with
>>>>> another timestamp, what should happen?
>>>>
>>>> The expectation is that many deadline hints can be set on a fence.
>>>> The fence signaller should track the soonest deadline.
>>>
>>> You need to document that as UAPI, since it is observable to userspace.
>>> It would be bad if drivers or subsystems would differ in behaviour.
>>>   
>>
>> It is in the end a hint.  It is about giving the driver more
>> information so that it can make better choices.  But the driver is
>> even free to ignore it.  So maybe "expectation" is too strong of a
>> word.  Rather, any other behavior doesn't really make sense.  But it
>> could end up being dictated by how the hw and/or fw works.
> 
> It will stop being a hint once it has been implemented and used in the
> wild long enough. The kernel userspace regression rules make sure of
> that.

Yeah, tricky and maybe a gray area in this case. I think we eluded 
elsewhere in the thread that renaming the thing might be an option.

So maybe instead of deadline, which is a very strong word, use something 
along the lines of "present time hint", or "signalled time hint"? Maybe 
reads clumsy. Just throwing some ideas for a start.

Regards,

Tvrtko

> See the topic of implementing triple-buffering in Mutter in order to
> put more work to the GPU in order to have the GPU ramp up clocks in
> order to not miss rendering deadlines. I don't think that patch set has
> landed in Mutter upstream, but I hear distributions in downstream are
> already carrying it.
> 
> https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/1383
> https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/1441
> 
> Granted, GPU clocks are just one side of that story it seems, and
> triple-buffering may have other benefits.
> 
> If SET_DEADLINE would fix that problem without triple-buffering, it is
> definitely userspace observable, expected and eventually required
> behaviour.
> 
> 
> Thanks,
> pq
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
