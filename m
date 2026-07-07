Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wIKAGPvtTGrTsAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Jul 2026 14:15:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD6271B42E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Jul 2026 14:15:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=arm.com header.s=foss header.b=TNdO5d+U;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=arm.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C368640A95
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jul 2026 12:15:53 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 1B4D3401D8
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 12:15:43 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1AE0B25DD;
	Tue,  7 Jul 2026 05:15:38 -0700 (PDT)
Received: from [10.2.212.23] (e121345-lin.cambridge.arm.com [10.2.212.23])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1FA373F7B4;
	Tue,  7 Jul 2026 05:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1783426542; bh=K/4UxBvoLplwP1TnbzWxw3/3TsMxIZDXrC28TvWcMiE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TNdO5d+UTUqiaO2n0m215MtyUHnlvQDgBMAikIE37JFWL924/I6kpflUa5nFhYyke
	 k+JcMLhIlAQbvHvBkEF4SPEAGvyeDpBoepuFrUOEUOC3Cd0e8k86lrEkmzUih1Xbfx
	 dpcXyStBrZwJKsn8m45phGgiYaBsgjGXU6H92Tfs=
Message-ID: <7d969be1-244b-4ff7-a5d4-b20da09f5488@arm.com>
Date: Tue, 7 Jul 2026 13:15:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Thierry Reding <thierry.reding@kernel.org>, Will Deacon <will@kernel.org>
References: <20260701-tegra-vpr-v3-0-d80f7b871bb4@nvidia.com>
 <20260701-tegra-vpr-v3-4-d80f7b871bb4@nvidia.com>
 <akYs91INHMXMTI-t@willie-the-truck> <akZkuwktaXFTrASP@orome>
 <akaSJ5D98w2cHqb6@orome> <akftuw9NyRy36fXA@willie-the-truck>
 <akuvyu1Pq0ZVMZV0@orome>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <akuvyu1Pq0ZVMZV0@orome>
X-Spamd-Bar: ---
Message-ID-Hash: NJWVPQZ3YT247DNBQRG5R23TBK4GCLMR
X-Message-ID-Hash: NJWVPQZ3YT247DNBQRG5R23TBK4GCLMR
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sowjanya Komatineni <skomatineni@nvidia.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Mikko Perttunen <mperttunen@nvidia.com>, Yury Norov <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Russell King <linux@armlinux.org.uk>, Alexander Gordeev <agordeev@linux.ibm.com>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <ljs@kernel.org>, "Liam R. Howlett" <liam@infrade
 ad.org>, Vlastimil Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Catalin Marinas <catalin.marinas@arm.com>, Thierry Reding <thierry.reding@gmail.com>, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org, linux-mm@kvack.org, iommu@lists.linux.dev, linaro-mm-sig@lists.linaro.org, linux-trace-kernel@vger.kernel.org, Thierry Reding <treding@nvidia.com>, C
 hun Ng <chunn@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/11] arm64/mm: Add set_memory_device() and set_memory_normal()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NJWVPQZ3YT247DNBQRG5R23TBK4GCLMR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[robin.murphy@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:thierry.reding@kernel.org,m:will@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jonathanh@nvidia.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:skomatineni@nvidia.com,m:luca.ceresoli@bootlin.com,m:mperttunen@nvidia.com,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:linux@armlinux.org.uk,m:agordeev@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:hca@linux.ibm.com,m:gor@linux.ibm.com,m:borntraeger@linux.ibm.com,m:svens@linux.ibm.com,m:akpm@linux-foundation.org,m:david@kernel.org,m:ljs@kernel.org,m:liam@infrade ad.org,m:vbabka@kernel.org,m:rppt@kernel.org,m:surenb@google.com,m:mhocko@suse.com,m:sumit.semwal@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:christian.koenig@amd.com,m:rostedt@goodmis.org,m:mhiramat@kernel.org,m:mathieu.desnoyers@efficios.com,m:catalin.marinas@arm.com,m:thierr
 y.reding@gmail.com,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-mm@kvack.org,m:iommu@lists.linux.dev,m:linaro-mm-sig@lists.linaro.org,m:linux-trace-kernel@vger.kernel.org,m:treding@nvidia.com,m:chunn@nvidia.com,m:krzk@kernel.org,m:conor@kernel.org,m:yurynorov@gmail.com,m:thierryreding@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robin.murphy@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,bootlin.com,rasmusvillemoes.dk,armlinux.org.uk,linux.ibm.com,linux-foundation.org,infrade ad.org,google.com,suse.com,linaro.org,collabora.com,arm.com,amd.com,goodmis.org,efficios.com,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,kvack.org,lists.linux.dev,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,arm.com:mid,arm.com:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CDD6271B42E

On 06/07/2026 2:49 pm, Thierry Reding wrote:
> On Fri, Jul 03, 2026 at 06:13:31PM +0100, Will Deacon wrote:
>> On Thu, Jul 02, 2026 at 06:41:23PM +0200, Thierry Reding wrote:
>>> On Thu, Jul 02, 2026 at 03:46:44PM +0200, Thierry Reding wrote:
>>>> On Thu, Jul 02, 2026 at 10:18:47AM +0100, Will Deacon wrote:
>>>>> On Wed, Jul 01, 2026 at 06:08:15PM +0200, Thierry Reding wrote:
>>>>>> From: Chun Ng <chunn@nvidia.com>
>>>>>>
>>>>>> Add helpers to swap PROT_NORMAL and PROT_DEVICE_nGnRnE protection bits
>>>>>> on a kernel-linear-map range.
>>>>>
>>>>> That sounds like a really terrible idea. Why is this necessary and how
>>>>> does it interact with things like load_unaligned_zeropad()?
>>>>
>>>> This is necessary because once the memory controller has walled off the
>>>> new memory region the CPU must not access it under any circumstances or
>>>> it'll cause the CPU to lock up (I think technically it'll hit an SError
>>>> but in practice that just means it'll freeze, as far as I can tell).
>>>>
>>>> Probably doesn't interact well at all with load_unaligned_zeropad().
>>>>
>>>>> I think you should unmap the memory from the linear map and memremap()
>>>>> it instead.
>>>>
>>>> Given that the memory can never be accessed by the CPU after the memory
>>>> controller locks it down, I don't think we'll even need memremap(). The
>>>> only thing we really need is the sg_table we hand out via the DMA BUFs
>>>> so that they can be used by device drivers to program their DMA engines
>>>> internally.
>>>>
>>>> Looking through some of the architecture code around this, shouldn't we
>>>> simply be using set_memory_encrypted() and set_memory_decrypted() for
>>>> this? While they might've been created for slightly other use-cases,
>>>> they seem to be doing exactly what we want (i.e. remove the page range
>>>> from the linear mapping and flushing it, or restoring the valid bit and
>>>> standard permissions, respectively).
>>>
>>> Ah... I guess we can't do it because we're not in a realm world and so
>>> the early checks in __set_memory_enc_dec() would return early and turn
>>> it into a no-op.
>>>
>>> How about if I extract a common helper and provide set_memory_p() and
>>> set_memory_np() in terms of those. Those are available on x86 and
>>> PowerPC as well, so fairly standard. I suppose at that point we're
>>> closer to set_memory_valid().
>>
>> Why not just call set_direct_map_invalid_noflush() +
>> flush_tlb_kernel_range() for each page? We already have APIs for this.
> 
> Having a "standard" helper with a fixed and documented purposed seemed
> like a preferable approach for this particular case. We also may want to
> make the driver that uses this buildable as a module, in which case we'd
> need to export these rather low-level APIs. And then there's also the
> fact that we typically call this on a rather large region of memory
> (usually something like 512 MiB), so doing it page-by-page is rather
> suboptimal.
> 
>> The big challenge I see with any linear map manipulation, however, is
>> that it will rely on can_set_direct_map() which likely means you need to
>> give up some performance and/or security to make this work. Does memory
>> become inaccesible dynamically at runtime? If not, the best bet would
>> be to describe it as a carveout in the DT and mark it as "no-map" so
>> we avoid mapping it in the first place.
> 
> VPR exists in two modes: static and resizable. For static VPR we do
> exactly that: describe it as carveout in DT with no-map and deal with it
> accordingly in the driver. Resizable VPR is for device that have small
> amounts of RAM. Content-protected video playback will in the worst case
> consume around 1.8 GiB of RAM, so we want to be able to reuse for other
> purposes when VPR is unused on those devices. In that case, the memory
> is also described as a reserved-memory region in DT, but it is marked as
> reusable so that it can be managed by CMA.

OK, so this is dynamic TrustZone, which is essentially identical to CCA 
delegation as far as we're concerned from the Non-Secure side. IIRC 
there was some ongoing talk about explicitly keeping track of the state 
of physical memory ranges in terms of being delegated to CoCo VMs or 
not, so eventually plumbing a "delegated to TEE/other" state through all 
the same mechanisms seems a pretty achievable goal.

For now, though, firstly I'll note we have seen this sort of thing before:

https://lore.kernel.org/dri-devel/20240515112308.10171-1-yong.wu@mediatek.com/

although that didn't seem to need explicit unmapping (likely it involved 
a TrustZone controller that just made NS accesses RAZ/WI instead of 
external-aborting).

If you want to be nice and start trying to build the general abstraction 
for this, then as a first step I'd suggest following the shape of the 
current CCA machinery - build a "delegate to TEE" operation around the 
existing set_memory_valid() paradigm[1] with can_set_direct_map() 
safeguards, and have something like a have_dynamic_tz() that echoes 
is_realm_world() in terms of being set at boot when one of these regions 
is detected by the early reserved-memory parsing, then considered in 
force_pte_mapping() (such that it only matters if BBML3 doesn't already 
have us covered).

Thanks,
Robin.


[1] Personally I'd be inclined to stay away from set_memory_*crypted() 
until that mess gets sorted out properly, but the argument could also be 
made the other way that the "delegated" state is currently mixed up in 
"encrypted", so technically it wouldn't be entirely inaccurate to use, 
it would just mean that we're intentionally adding more to that cleanup 
effort. For now it seems nicer to me to keep a distinct "made invalid 
(due to delegation)" state that can eventually converge into a proper 
"delegated" state once that exists, rather than get mixed up in the 
current 
guest-shared/guest-private/host-shared/host-private/host-delegated mess 
most of which is not relevant for non-CoCo uses.

> The resize operation is fairly slow to begin with because we need to
> stall the GPU and put it into reset before the operation, then take it
> out of reset and resume it afterwards.
> 
> What kind of performance impact do you expect?
> 
> Thierry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
