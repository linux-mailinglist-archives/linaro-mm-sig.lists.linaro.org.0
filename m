Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aD+cL61h+2kuaQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:43:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EDA4DD7DA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:43:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1257E4043E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2026 15:43:40 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id C867C3F95A
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 15:43:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=fYyFlf7s;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of nicolas.frattaroli@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=nicolas.frattaroli@collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
ARC-Seal: i=1; a=rsa-sha256; t=1778082204; cv=none;
	d=zohomail.com; s=zohoarc;
	b=fdZH5j80Z+w5iKIl1C69yOFF3BMAxZ6YJBVntLffDu/PLXSXtflWSPdzmDsjRz1H5ll8Lxj6XcJNrD2Uy3ugy/2fgOhUsIonApZ45nOnLMOKeT7SHymtM/6mQrHdCyyJ+6RRkyGs+FZPHajMoYXv1nIjWjEy3nYBF1N5CJVqx+M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1778082204; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=zpLoZnJSSvx/I/AHhCM0A94vwhGcJxh2mbqqLYmrIIc=;
	b=bP0za7HMejDuoXD6AnuqTkSVSPbxrDfNaqm12VxhnwU4oY17uibwc+GH3CjWXJ1BU75Vl7OXyZWE00TYDC+slIWlcffYTwrPfdp5xoSCg8uvPRkrQvnqRjODMZl/PxcrFJcf9rwt5TBfezrJZQbOTxhEk11ay5M2p2Eevc6Q8ts=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778082204;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=zpLoZnJSSvx/I/AHhCM0A94vwhGcJxh2mbqqLYmrIIc=;
	b=fYyFlf7sPC0AsGLtJsiynyxfwIzc1AcoecIXj0E7+u7mWfShV52O6lBF98xwzqos
	A+tkDgjgxTGvbxvTiZAoyW9nm0Yx6BCCcGj16wxRh9rTW7AO/rBAV4/U02R17fr0hZf
	uoTz5gpe7jtMuTvQRNXDdln/13TlGoVPJnFs6zGo=
Received: by mx.zohomail.com with SMTPS id 1778082202486120.18991077078181;
	Wed, 6 May 2026 08:43:22 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Steven Price <steven.price@arm.com>
Date: Wed, 06 May 2026 17:43:18 +0200
Message-ID: <qxAaM8FMQLuQt09qti64IA@collabora.com>
In-Reply-To: <829b8887-48de-4cfa-8bb2-79db1471bb8d@arm.com>
References: 
 <20260506-panthor-explicit-reclaim-v1-0-44f82ac147ce@collabora.com>
 <829b8887-48de-4cfa-8bb2-79db1471bb8d@arm.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: T3QLYZS5TXGPM7S2HWKVNHUEIRQGJVLZ
X-Message-ID-Hash: T3QLYZS5TXGPM7S2HWKVNHUEIRQGJVLZ
X-MailFrom: nicolas.frattaroli@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Let userspace explicitly trigger memory reclaims
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T3QLYZS5TXGPM7S2HWKVNHUEIRQGJVLZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 46EDA4DD7DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.59 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:mid,collabora.com:email]

On Wednesday, 6 May 2026 17:06:56 Central European Summer Time Steven Price wrote:
> On 06/05/2026 11:45, Nicolas Frattaroli wrote:
> > RAM is not, in fact, cheap. Especially on embedded systems with a low
> > amount of memory, but known and well-defined userspace, more explicit
> > resource management can lead to better utilisation patterns. As an
> > example, a resource manager process on a purpose-built device may wish
> > to launch, and then explicitly swap out, memory of processes that are
> > kept "warm", to improve perceived startup latency of individual
> > full-screen applications without making the kernel figure out the usage
> > pattern from observation alone in order to swap out the right pages.
> 
> Have you considered memory control groups (memcg) for this purpose?
> Imposing a lower limit than currently allocated should trigger reclaim,
> so 'background' applications could have the limit lowered and then
> restored when moved to the foreground.

This is a suggestion in line with what I've made to the entity for
whom I am adding this, but was told that for them they really do want
tight control without having to use cgroups into technically doing it
by dynamically adjusting the limits of them.

I do think that writing 0 to `memory.high` to swap it out and `"max"`
to allow it to swap back in might work, though that'll then apply to
all of the process' memory, not just the GPU resources.

I will ask for clarification internally.

> 
> > To allow for this explicit control in the context of panthor's GPU
> > memory, add two new sysfs knobs. The first, mem_reclaim, runs an
> > explicit priv BO reclaim cycle on the TGID written to it.
> > 
> > The second, mem_claim, does the opposite: it swaps BOs back into active
> > memory.
> 
> How necessary is this mem_claim for performance? Have you done any
> benchmarking of explicitly claiming vs just allowing it to happen
> naturally? My gut feeling is that mem_claim should be unnecessary in
> most situations, but I'm prepared to be proved wrong.

I've done no benchmarking, but can do so if you have any preferred
workloads for this. Since we have to keep entire groups either in
memory or out of memory right now AFAIK, I don't expect this to be
very beneficial at all. At most we avoid a single fault I think.

I can drop the mem_claim part, though it may become relevant if we
ever have more fine-grained memory eviction where a single job or
group can run into multiple faults before everything it needs to
render a new frame is back in memory. In that case, it will be
beneficial, because it avoids doing the swap-in dance several
times while the user wonders why the UI is rendering at powerpoint
speeds as it touches memory pages that are still swapped out during
subsequent frames.

> 
> I'm not saying this series is necessarily the wrong approach - but I
> think we need a bit more justification for adding a new API for this.
> 
> Thanks,
> Steve

Kind regards,
Nicolas Frattaroli

> 
> > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > ---
> > Nicolas Frattaroli (4):
> >       drm/panthor: Add freed_sz parameter to reclaim_priv_bos
> >       MAINTAINERS: Add sysfs ABI docs to list of panthor files
> >       drm/panthor: Add explicit memory reclaim sysfs knob
> >       drm/panthor: Add explicit memory claim sysfs knob
> > 
> >  Documentation/ABI/testing/sysfs-driver-panthor-mem | 34 ++++++++
> >  MAINTAINERS                                        |  1 +
> >  drivers/gpu/drm/panthor/panthor_drv.c              | 93 ++++++++++++++++++++++
> >  drivers/gpu/drm/panthor/panthor_gem.c              |  7 +-
> >  drivers/gpu/drm/panthor/panthor_gem.h              |  1 +
> >  drivers/gpu/drm/panthor/panthor_mmu.c              | 70 +++++++++++++++-
> >  drivers/gpu/drm/panthor/panthor_mmu.h              |  4 +
> >  7 files changed, 205 insertions(+), 5 deletions(-)
> > ---
> > base-commit: 2c4b906cd135bbb44855287d0d0eff0ee0b47afe
> > change-id: 20260506-panthor-explicit-reclaim-3dffed028d8c
> > 
> > Best regards,
> > --  
> > Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > 
> 
> 




_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
