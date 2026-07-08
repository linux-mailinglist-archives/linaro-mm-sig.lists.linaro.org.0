Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F8vIC/twVmp15gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:25:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B145875761E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:25:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=TxzNfxkA;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD2BD40470
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:25:13 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id D33553F6DA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 06:36:46 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0206B436F3;
	Wed,  8 Jul 2026 06:36:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EE831F000E9;
	Wed,  8 Jul 2026 06:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783492605;
	bh=s0HJkQVRyCuHBvyWHHR+93fIn2+uXye8kCTNUU3r60I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TxzNfxkAbGy4rqJIqCr89/xbSHEkX+rin+tyCSt7590zWJuMCw8dcQKrSCNVIiWoA
	 ndOV/GgWovh0WUxdtvgi0EtOpL/TilvEb2DV/Haj7x+l+Y6wUpasj2HUpo6QNlgM2K
	 FXdGWdWH5cn/DW+KWFvNGyKQiWhHS8hgb6rAvdnbskLQw7CGy/oixnnHzdKAsVfU8i
	 Ckw1IGQsAI4HAECNOWyM3Pg5nt+m9bUKguiwdqud8b7wpl/lsMWQrtFW3E8+u/b4Vo
	 qizUfCiYMop6IHGz5Ym885tLg6yCjh+X38Gv1RHOK0ly9wgNDvXOadV5LseTU5F1jP
	 7eax4QVB5vPgw==
Date: Wed, 8 Jul 2026 09:36:25 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Will Deacon <will@kernel.org>
Message-ID: <ak3v6dt_VIZTynT8@kernel.org>
References: <20260701-tegra-vpr-v3-0-d80f7b871bb4@nvidia.com>
 <20260701-tegra-vpr-v3-4-d80f7b871bb4@nvidia.com>
 <akYs91INHMXMTI-t@willie-the-truck>
 <akZkuwktaXFTrASP@orome>
 <akaSJ5D98w2cHqb6@orome>
 <akftuw9NyRy36fXA@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <akftuw9NyRy36fXA@willie-the-truck>
X-Spamd-Bar: ------
X-MailFrom: rppt@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HM5PZPPE2ZUELOWCLTPRYXP5DFMYHPJN
X-Message-ID-Hash: HM5PZPPE2ZUELOWCLTPRYXP5DFMYHPJN
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:19:46 +0000
CC: Thierry Reding <thierry.reding@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sowjanya Komatineni <skomatineni@nvidia.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Mikko Perttunen <mperttunen@nvidia.com>, Yury Norov <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Russell King <linux@armlinux.org.uk>, Alexander Gordeev <agordeev@linux.ibm.com>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <ljs@
 kernel.org>, "Liam R. Howlett" <liam@infradead.org>, Vlastimil Babka <vbabka@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Catalin Marinas <catalin.marinas@arm.com>, Thierry Reding <thierry.reding@gmail.com>, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org, linux-mm@kvack.org, iommu@lists.linux.dev, linaro-mm-sig@lists.linaro.org, linux-trace-kernel@vger.
 kernel.org, Thierry Reding <treding@nvidia.com>, Chun Ng <chunn@nvidia.com>, Shyam Saini <shyamsaini@linux.microsoft.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Reserving memory on ACPI systems (was: [PATCH v3 04/11] arm64/mm: Add set_memory_device() and set_memory_normal())
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HM5PZPPE2ZUELOWCLTPRYXP5DFMYHPJN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	DATE_IN_PAST(1.00)[154];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:will@kernel.org,m:thierry.reding@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jonathanh@nvidia.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:skomatineni@nvidia.com,m:luca.ceresoli@bootlin.com,m:mperttunen@nvidia.com,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:linux@armlinux.org.uk,m:agordeev@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:hca@linux.ibm.com,m:gor@linux.ibm.com,m:borntraeger@linux.ibm.com,m:svens@linux.ibm.com,m:akpm@linux-foundation.org,m:david@kernel.org,m:ljs@ kernel.org,m:liam@infradead.org,m:vbabka@kernel.org,m:surenb@google.com,m:mhocko@suse.com,m:robin.murphy@arm.com,m:sumit.semwal@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:christian.koenig@amd.com,m:rostedt@goodmis.org,m:mhiramat@kernel.org,m:mathieu.desnoyers@efficios.com,m:catalin.marinas@arm.com,m:t
 hierry.reding@gmail.com,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-mm@kvack.org,m:iommu@lists.linux.dev,m:linaro-mm-sig@lists.linaro.org,m:linux-trace-kernel@vger,m:treding@nvidia.com,m:chunn@nvidia.com,m:shyamsaini@linux.microsoft.com,m:krzk@kernel.org,m:conor@kernel.org,m:yurynorov@gmail.com,m:thierryreding@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[rppt@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,bootlin.com,rasmusvillemoes.dk,armlinux.org.uk,linux.ibm.com,linux-foundation.org, kernel.org,infradead.org,google.com,suse.com,arm.com,linaro.org,collabora.com,amd.com,goodmis.org,efficios.com,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,kvack.org,lists.linux.dev,lists.linaro.org,vger,linux.microsoft.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B145875761E

On Fri, Jul 03, 2026 at 06:13:31PM +0100, Will Deacon wrote:
> On Thu, Jul 02, 2026 at 06:41:23PM +0200, Thierry Reding wrote:
> > On Thu, Jul 02, 2026 at 03:46:44PM +0200, Thierry Reding wrote:
> > > On Thu, Jul 02, 2026 at 10:18:47AM +0100, Will Deacon wrote:
> > > > On Wed, Jul 01, 2026 at 06:08:15PM +0200, Thierry Reding wrote:
> > > > > From: Chun Ng <chunn@nvidia.com>
> > > > > 
> > > > > Add helpers to swap PROT_NORMAL and PROT_DEVICE_nGnRnE protection bits
> > > > > on a kernel-linear-map range.
> > > > 
> > > > That sounds like a really terrible idea. Why is this necessary and how
> > > > does it interact with things like load_unaligned_zeropad()?
> > > 
> > > This is necessary because once the memory controller has walled off the
> > > new memory region the CPU must not access it under any circumstances or
> > > it'll cause the CPU to lock up (I think technically it'll hit an SError
> > > but in practice that just means it'll freeze, as far as I can tell).
> > > 
> > > Probably doesn't interact well at all with load_unaligned_zeropad().
> > > 
> > > > I think you should unmap the memory from the linear map and memremap()
> > > > it instead.
> > > 
> > > Given that the memory can never be accessed by the CPU after the memory
> > > controller locks it down, I don't think we'll even need memremap(). The
> > > only thing we really need is the sg_table we hand out via the DMA BUFs
> > > so that they can be used by device drivers to program their DMA engines
> > > internally.
> > > 
> > > Looking through some of the architecture code around this, shouldn't we
> > > simply be using set_memory_encrypted() and set_memory_decrypted() for
> > > this? While they might've been created for slightly other use-cases,
> > > they seem to be doing exactly what we want (i.e. remove the page range
> > > from the linear mapping and flushing it, or restoring the valid bit and
> > > standard permissions, respectively).
> > 
> > Ah... I guess we can't do it because we're not in a realm world and so
> > the early checks in __set_memory_enc_dec() would return early and turn
> > it into a no-op.
> > 
> > How about if I extract a common helper and provide set_memory_p() and
> > set_memory_np() in terms of those. Those are available on x86 and
> > PowerPC as well, so fairly standard. I suppose at that point we're
> > closer to set_memory_valid().
> 
> Why not just call set_direct_map_invalid_noflush() +
> flush_tlb_kernel_range() for each page? We already have APIs for this.
> 
> The big challenge I see with any linear map manipulation, however, is
> that it will rely on can_set_direct_map() which likely means you need to
> give up some performance and/or security to make this work. Does memory
> become inaccesible dynamically at runtime? If not, the best bet would
> be to describe it as a carveout in the DT and mark it as "no-map" so
> we avoid mapping it in the first place.

While I got your attention a bit off-topic but still related question.

AFAIK a lot in arm64 drivers ecosystem relies on that ranges defined as
"/reserved-memory" in DT are linked to devices that use that memory.

EFI/ACPI does not have a similar concept.

Given that more and more systems are using EFI/ACPI rather than DT as their
boot protocol we probably need some way to define such memory carveouts in
the ACPI world.
 
> Will

-- 
Sincerely yours,
Mike.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
