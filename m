Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HsfEYlk+2kuaQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:55:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B404F4DDB0C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:55:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64D2D4044D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2026 15:55:51 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 42C753F75F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 15:55:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=OP8+PNR9;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F74D1A00;
	Wed,  6 May 2026 08:55:42 -0700 (PDT)
Received: from [10.57.69.49] (unknown [10.57.69.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAE7A3F7B4;
	Wed,  6 May 2026 08:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1778082947; bh=yx44QsR+dr0wp1FGWIHshhf2FouszWxeHYwpeS2FZdA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OP8+PNR9HAAL7fsQC1pkWVwQFHDeoeuWGPOUMiDIZm2DfhnHN1KIfEHs0OrIRvYaz
	 xZSj4xf4c/FtDLNgS6E19u5T/pdKEJmw6oI8rUcTk9jiwZCAJ5g1QeRXU4zdbx5elF
	 cN/N/QgEV5oR424hZ7qnkvgDAFMaE0jWBZz6r+J8=
Message-ID: <b3c98120-2493-46a5-a48c-d90c31cf25c0@arm.com>
Date: Wed, 6 May 2026 16:55:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260506-panthor-explicit-reclaim-v1-0-44f82ac147ce@collabora.com>
 <829b8887-48de-4cfa-8bb2-79db1471bb8d@arm.com>
 <qxAaM8FMQLuQt09qti64IA@collabora.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <qxAaM8FMQLuQt09qti64IA@collabora.com>
X-Spamd-Bar: ---
Message-ID-Hash: TZ2WZ265XTRWDHOLY2LAFBVJLWQIVCSU
X-Message-ID-Hash: TZ2WZ265XTRWDHOLY2LAFBVJLWQIVCSU
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Let userspace explicitly trigger memory reclaims
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TZ2WZ265XTRWDHOLY2LAFBVJLWQIVCSU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B404F4DDB0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	FROM_NEQ_ENVFROM(0.00)[steven.price@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,linaro.org:email,arm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]

On 06/05/2026 16:43, Nicolas Frattaroli wrote:
> On Wednesday, 6 May 2026 17:06:56 Central European Summer Time Steven Price wrote:
>> On 06/05/2026 11:45, Nicolas Frattaroli wrote:
>>> RAM is not, in fact, cheap. Especially on embedded systems with a low
>>> amount of memory, but known and well-defined userspace, more explicit
>>> resource management can lead to better utilisation patterns. As an
>>> example, a resource manager process on a purpose-built device may wish
>>> to launch, and then explicitly swap out, memory of processes that are
>>> kept "warm", to improve perceived startup latency of individual
>>> full-screen applications without making the kernel figure out the usage
>>> pattern from observation alone in order to swap out the right pages.
>>
>> Have you considered memory control groups (memcg) for this purpose?
>> Imposing a lower limit than currently allocated should trigger reclaim,
>> so 'background' applications could have the limit lowered and then
>> restored when moved to the foreground.
> 
> This is a suggestion in line with what I've made to the entity for
> whom I am adding this, but was told that for them they really do want
> tight control without having to use cgroups into technically doing it
> by dynamically adjusting the limits of them.
> 
> I do think that writing 0 to `memory.high` to swap it out and `"max"`
> to allow it to swap back in might work, though that'll then apply to
> all of the process' memory, not just the GPU resources.
> 
> I will ask for clarification internally.

Thanks, it would be good to have a better understanding of why GPU
memory is special (and needs to be paged out) and the process' other
memory can be kept.

>>
>>> To allow for this explicit control in the context of panthor's GPU
>>> memory, add two new sysfs knobs. The first, mem_reclaim, runs an
>>> explicit priv BO reclaim cycle on the TGID written to it.
>>>
>>> The second, mem_claim, does the opposite: it swaps BOs back into active
>>> memory.
>>
>> How necessary is this mem_claim for performance? Have you done any
>> benchmarking of explicitly claiming vs just allowing it to happen
>> naturally? My gut feeling is that mem_claim should be unnecessary in
>> most situations, but I'm prepared to be proved wrong.
> 
> I've done no benchmarking, but can do so if you have any preferred
> workloads for this. Since we have to keep entire groups either in
> memory or out of memory right now AFAIK, I don't expect this to be
> very beneficial at all. At most we avoid a single fault I think.

Yes the memory should be brought back in as soon as a job is submitted.
I've no particular workloads in mind - but it would be nice to be able
to point to something that actually improves by adding this feature.

> I can drop the mem_claim part, though it may become relevant if we
> ever have more fine-grained memory eviction where a single job or
> group can run into multiple faults before everything it needs to
> render a new frame is back in memory. In that case, it will be
> beneficial, because it avoids doing the swap-in dance several
> times while the user wonders why the UI is rendering at powerpoint
> speeds as it touches memory pages that are still swapped out during
> subsequent frames.

We don't want to be faulting memory in a page at a time for exactly the
reasons you state. So even if we do make things more fine-grained we're
going to have to implement some form of read-ahead. Otherwise it's
"powerpoint time" after any even that causes memory pressure.

A possible justification is if the system can tell an application is
about to be used and can "pre-fault" things before rendering starts. But
it's a rare system design where it has this form of precognition.

Thanks,
Steve

>>
>> I'm not saying this series is necessarily the wrong approach - but I
>> think we need a bit more justification for adding a new API for this.
>>
>> Thanks,
>> Steve
> 
> Kind regards,
> Nicolas Frattaroli
> 
>>
>>> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>>> ---
>>> Nicolas Frattaroli (4):
>>>       drm/panthor: Add freed_sz parameter to reclaim_priv_bos
>>>       MAINTAINERS: Add sysfs ABI docs to list of panthor files
>>>       drm/panthor: Add explicit memory reclaim sysfs knob
>>>       drm/panthor: Add explicit memory claim sysfs knob
>>>
>>>  Documentation/ABI/testing/sysfs-driver-panthor-mem | 34 ++++++++
>>>  MAINTAINERS                                        |  1 +
>>>  drivers/gpu/drm/panthor/panthor_drv.c              | 93 ++++++++++++++++++++++
>>>  drivers/gpu/drm/panthor/panthor_gem.c              |  7 +-
>>>  drivers/gpu/drm/panthor/panthor_gem.h              |  1 +
>>>  drivers/gpu/drm/panthor/panthor_mmu.c              | 70 +++++++++++++++-
>>>  drivers/gpu/drm/panthor/panthor_mmu.h              |  4 +
>>>  7 files changed, 205 insertions(+), 5 deletions(-)
>>> ---
>>> base-commit: 2c4b906cd135bbb44855287d0d0eff0ee0b47afe
>>> change-id: 20260506-panthor-explicit-reclaim-3dffed028d8c
>>>
>>> Best regards,
>>> --  
>>> Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>>>
>>
>>
> 
> 
> 
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
