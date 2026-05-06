Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNiQMDdc+2nEaAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:20:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F8A4DD128
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:20:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5F904017B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2026 15:20:21 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id F3B793F72F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 15:20:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=a1+q1uJj;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of nicolas.frattaroli@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=nicolas.frattaroli@collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
ARC-Seal: i=1; a=rsa-sha256; t=1778080805; cv=none;
	d=zohomail.com; s=zohoarc;
	b=ccnp9lLYXkWiV/1a8ryN+Ss+TqSFhqUNh4xFO9aotk0X82kVW8Ojoni4EJ2xNiF2A2rXf4G2584cVJ4hsrsxJtggfW1yh5RpN6c927Jy8ipbP5WNgqx+xOkgFGeCrFK56ewfx2qvh+auKmH2y34E7FbfHvZEuH7/L11fnRDo4a8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1778080805; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=mtMZ9EQALc5pJHEUStF4pqAx6HGSH8n0LEuG9ncFJTU=;
	b=iU3j/vbKEdsrSbNtgJ6C+GLOD4u4f+kFAelbsvnv7Pkwnzh7u5DvLEAUkiGHoZpGSM4yE9QVBXpRqzVdCcm3kWpPwMhDAxS2Cm+mz70h2EkC+3fOv4DkubupCd3nqzOkK7LvxBJqP+76Ph9yrC46mg4mf3Lj21euUEdyHDMUiBA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778080805;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=mtMZ9EQALc5pJHEUStF4pqAx6HGSH8n0LEuG9ncFJTU=;
	b=a1+q1uJjtnu7tN3y0mSCBvEXsb6m92i5aw/ypTWX4AuH0ylRG+IZBKipgKyU0wVQ
	YU/XUO9ejPyQUJK6Qz/lV8pTkPVp6Iod7wXlhPeMa5D5GS0KAegwkvza33LvTJue/ZZ
	NFUsYI83RhQktEHqC1XFSvyMNbkKj1WX+gIm9LdU=
Received: by mx.zohomail.com with SMTPS id 177808080434751.147007267912386;
	Wed, 6 May 2026 08:20:04 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Steven Price <steven.price@arm.com>
Date: Wed, 06 May 2026 17:19:59 +0200
Message-ID: <uhheTk9bTneBzwQGdN_KPA@collabora.com>
In-Reply-To: <ed1b0be1-cf6e-4318-b040-12d315eae3f0@arm.com>
References: 
 <20260506-panthor-explicit-reclaim-v1-0-44f82ac147ce@collabora.com>
 <20260506-panthor-explicit-reclaim-v1-1-44f82ac147ce@collabora.com>
 <ed1b0be1-cf6e-4318-b040-12d315eae3f0@arm.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: EW4BHQ7GOWO4EVTFEQGK67AUGAD2ICJD
X-Message-ID-Hash: EW4BHQ7GOWO4EVTFEQGK67AUGAD2ICJD
X-MailFrom: nicolas.frattaroli@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] drm/panthor: Add freed_sz parameter to reclaim_priv_bos
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EW4BHQ7GOWO4EVTFEQGK67AUGAD2ICJD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 51F8A4DD128
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

On Wednesday, 6 May 2026 17:06:57 Central European Summer Time Steven Price wrote:
> On 06/05/2026 11:45, Nicolas Frattaroli wrote:
> > panthor_mmu_reclaim_priv_bos returns the number of freed pages. However,
> > how many bytes of freed memory this translates to can't generally be
> > deduced from the number of pages, as the page size is a per-VM property.
> > 
> > It may be useful to know the exact number of bytes that have been freed
> 
> The "useful" aspect seems to just be a drm_dbg() message from what I can
> see with this series?

Correct.

> Am I missing something or is it not actually that useful?

I wanted to know how much memory I'm actually reclaiming without
making any assumptions about page sizes, and figured the change is
innocent enough. If it's deemed too pointless, then I'll just drop
the size in bytes from the debug message.

Kind regards,
Nicolas Frattaroli

> 
> Thanks,
> Steve
> 
> > for observability and debugging purposes. To that end, add a new
> > parameter "freed_sz", which is a pointer to a size_t where this
> > information will be stored. It may be NULL, in which case the
> > information isn't stored at all.
> > 
> > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > ---
> >  drivers/gpu/drm/panthor/panthor_gem.c |  3 ++-
> >  drivers/gpu/drm/panthor/panthor_mmu.c | 12 ++++++++++--
> >  drivers/gpu/drm/panthor/panthor_mmu.h |  1 +
> >  3 files changed, 13 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/panthor/panthor_gem.c b/drivers/gpu/drm/panthor/panthor_gem.c
> > index 13295d7a593d..80e82238f3c5 100644
> > --- a/drivers/gpu/drm/panthor/panthor_gem.c
> > +++ b/drivers/gpu/drm/panthor/panthor_gem.c
> > @@ -1511,7 +1511,8 @@ panthor_gem_shrinker_scan(struct shrinker *shrinker, struct shrink_control *sc)
> >  		goto out;
> >  
> >  	freed += panthor_mmu_reclaim_priv_bos(ptdev, sc->nr_to_scan - freed,
> > -					      &remaining, panthor_gem_try_evict);
> > +					      &remaining, NULL,
> > +					      panthor_gem_try_evict);
> >  	if (freed >= sc->nr_to_scan)
> >  		goto out;
> >  
> > diff --git a/drivers/gpu/drm/panthor/panthor_mmu.c b/drivers/gpu/drm/panthor/panthor_mmu.c
> > index a7ee14986849..b81388b35a58 100644
> > --- a/drivers/gpu/drm/panthor/panthor_mmu.c
> > +++ b/drivers/gpu/drm/panthor/panthor_mmu.c
> > @@ -3127,13 +3127,18 @@ int panthor_vm_prepare_mapped_bos_resvs(struct drm_exec *exec, struct panthor_vm
> >  unsigned long
> >  panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
> >  			     unsigned int nr_to_scan, unsigned long *remaining,
> > +			     size_t *freed_sz,
> >  			     bool (*shrink)(struct drm_gem_object *,
> >  					    struct ww_acquire_ctx *))
> >  {
> > +	unsigned long newly_freed;
> >  	unsigned long freed = 0;
> >  	LIST_HEAD(remaining_vms);
> >  	LIST_HEAD(vms);
> >  
> > +	if (freed_sz)
> > +		*freed_sz = 0;
> > +
> >  	mutex_lock(&ptdev->reclaim.lock);
> >  	list_splice_init(&ptdev->reclaim.vms, &vms);
> >  
> > @@ -3152,8 +3157,11 @@ panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
> >  
> >  		mutex_unlock(&ptdev->reclaim.lock);
> >  
> > -		freed += drm_gem_lru_scan(&vm->reclaim.lru, nr_to_scan - freed,
> > -					  remaining, shrink, NULL);
> > +		newly_freed = drm_gem_lru_scan(&vm->reclaim.lru, nr_to_scan - freed,
> > +					       remaining, shrink, NULL);
> > +		if (freed_sz)
> > +			*freed_sz += panthor_vm_page_size(vm) * newly_freed;
> > +		freed += newly_freed;
> >  
> >  		mutex_lock(&ptdev->reclaim.lock);
> >  
> > diff --git a/drivers/gpu/drm/panthor/panthor_mmu.h b/drivers/gpu/drm/panthor/panthor_mmu.h
> > index 3522fbbce369..12b18b5f90e1 100644
> > --- a/drivers/gpu/drm/panthor/panthor_mmu.h
> > +++ b/drivers/gpu/drm/panthor/panthor_mmu.h
> > @@ -52,6 +52,7 @@ int panthor_vm_evict_bo_mappings_locked(struct panthor_gem_object *bo);
> >  unsigned long
> >  panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
> >  			     unsigned int nr_to_scan, unsigned long *remaining,
> > +			     size_t *freed_sz,
> >  			     bool (*shrink)(struct drm_gem_object *,
> >  					    struct ww_acquire_ctx *));
> >  int panthor_vm_prepare_mapped_bos_resvs(struct drm_exec *exec,
> > 
> 
> 




_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
