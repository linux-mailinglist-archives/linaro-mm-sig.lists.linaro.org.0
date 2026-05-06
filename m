Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOH6IiJZ+2n+ZQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:07:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9D94DCDEC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:07:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 491A440514
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2026 15:07:13 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id B59E43F75F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 15:07:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=FmnnVKGi;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1A5F1A00;
	Wed,  6 May 2026 08:06:59 -0700 (PDT)
Received: from [10.57.69.49] (unknown [10.57.69.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB7173F7B4;
	Wed,  6 May 2026 08:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1778080025; bh=0Qvkwoc6ppPEBLSk9uM5Rsgl5b8rqzzkFxSZy6MZlV8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FmnnVKGik6Xi8qEL1+q1giTNjcCEklsr6JI2g2nwenfvZhfM3nqzgpT+RM2xxmcJC
	 xly2Z0kjShS+ZRLlyw6kV6yCShZvUoFu2DPHS+flFwwTX2uS0zZJ94JWhsqo0vVpe1
	 zeNFJykwZSUlOJaLygI3u2hyQJgsKDJ1m5jWaAZo=
Message-ID: <ed1b0be1-cf6e-4318-b040-12d315eae3f0@arm.com>
Date: Wed, 6 May 2026 16:06:57 +0100
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
 <20260506-panthor-explicit-reclaim-v1-1-44f82ac147ce@collabora.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20260506-panthor-explicit-reclaim-v1-1-44f82ac147ce@collabora.com>
X-Spamd-Bar: ---
Message-ID-Hash: IQTMDHQ455KNU4GFQUJBWQY6FO3JGGSB
X-Message-ID-Hash: IQTMDHQ455KNU4GFQUJBWQY6FO3JGGSB
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] drm/panthor: Add freed_sz parameter to reclaim_priv_bos
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IQTMDHQ455KNU4GFQUJBWQY6FO3JGGSB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 3F9D94DCDEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	NEURAL_HAM(-0.00)[-0.958];
	FROM_NEQ_ENVFROM(0.00)[steven.price@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:mid,collabora.com:email,linaro.org:email]

On 06/05/2026 11:45, Nicolas Frattaroli wrote:
> panthor_mmu_reclaim_priv_bos returns the number of freed pages. However,
> how many bytes of freed memory this translates to can't generally be
> deduced from the number of pages, as the page size is a per-VM property.
> 
> It may be useful to know the exact number of bytes that have been freed

The "useful" aspect seems to just be a drm_dbg() message from what I can
see with this series? Am I missing something or is it not actually that
useful?

Thanks,
Steve

> for observability and debugging purposes. To that end, add a new
> parameter "freed_sz", which is a pointer to a size_t where this
> information will be stored. It may be NULL, in which case the
> information isn't stored at all.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/panthor/panthor_gem.c |  3 ++-
>  drivers/gpu/drm/panthor/panthor_mmu.c | 12 ++++++++++--
>  drivers/gpu/drm/panthor/panthor_mmu.h |  1 +
>  3 files changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panthor/panthor_gem.c b/drivers/gpu/drm/panthor/panthor_gem.c
> index 13295d7a593d..80e82238f3c5 100644
> --- a/drivers/gpu/drm/panthor/panthor_gem.c
> +++ b/drivers/gpu/drm/panthor/panthor_gem.c
> @@ -1511,7 +1511,8 @@ panthor_gem_shrinker_scan(struct shrinker *shrinker, struct shrink_control *sc)
>  		goto out;
>  
>  	freed += panthor_mmu_reclaim_priv_bos(ptdev, sc->nr_to_scan - freed,
> -					      &remaining, panthor_gem_try_evict);
> +					      &remaining, NULL,
> +					      panthor_gem_try_evict);
>  	if (freed >= sc->nr_to_scan)
>  		goto out;
>  
> diff --git a/drivers/gpu/drm/panthor/panthor_mmu.c b/drivers/gpu/drm/panthor/panthor_mmu.c
> index a7ee14986849..b81388b35a58 100644
> --- a/drivers/gpu/drm/panthor/panthor_mmu.c
> +++ b/drivers/gpu/drm/panthor/panthor_mmu.c
> @@ -3127,13 +3127,18 @@ int panthor_vm_prepare_mapped_bos_resvs(struct drm_exec *exec, struct panthor_vm
>  unsigned long
>  panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
>  			     unsigned int nr_to_scan, unsigned long *remaining,
> +			     size_t *freed_sz,
>  			     bool (*shrink)(struct drm_gem_object *,
>  					    struct ww_acquire_ctx *))
>  {
> +	unsigned long newly_freed;
>  	unsigned long freed = 0;
>  	LIST_HEAD(remaining_vms);
>  	LIST_HEAD(vms);
>  
> +	if (freed_sz)
> +		*freed_sz = 0;
> +
>  	mutex_lock(&ptdev->reclaim.lock);
>  	list_splice_init(&ptdev->reclaim.vms, &vms);
>  
> @@ -3152,8 +3157,11 @@ panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
>  
>  		mutex_unlock(&ptdev->reclaim.lock);
>  
> -		freed += drm_gem_lru_scan(&vm->reclaim.lru, nr_to_scan - freed,
> -					  remaining, shrink, NULL);
> +		newly_freed = drm_gem_lru_scan(&vm->reclaim.lru, nr_to_scan - freed,
> +					       remaining, shrink, NULL);
> +		if (freed_sz)
> +			*freed_sz += panthor_vm_page_size(vm) * newly_freed;
> +		freed += newly_freed;
>  
>  		mutex_lock(&ptdev->reclaim.lock);
>  
> diff --git a/drivers/gpu/drm/panthor/panthor_mmu.h b/drivers/gpu/drm/panthor/panthor_mmu.h
> index 3522fbbce369..12b18b5f90e1 100644
> --- a/drivers/gpu/drm/panthor/panthor_mmu.h
> +++ b/drivers/gpu/drm/panthor/panthor_mmu.h
> @@ -52,6 +52,7 @@ int panthor_vm_evict_bo_mappings_locked(struct panthor_gem_object *bo);
>  unsigned long
>  panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
>  			     unsigned int nr_to_scan, unsigned long *remaining,
> +			     size_t *freed_sz,
>  			     bool (*shrink)(struct drm_gem_object *,
>  					    struct ww_acquire_ctx *));
>  int panthor_vm_prepare_mapped_bos_resvs(struct drm_exec *exec,
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
