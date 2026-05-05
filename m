Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EVUBaZfBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:25:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A10E5322E0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:25:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8C20404E3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:25:24 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 69C163F75A
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2026 16:32:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=chnNGEJP;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777998770;
	bh=dnfLGzurewhGYmAkfx0e1+N3a4xmKjPSdyc6YJYICe0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=chnNGEJP+I5Tqr/+EzV+BAGa2W8876nPXG15BSzH3+oTObFtVw/uGnWFO4iEfi6Yu
	 qjVJu+SBs/mo/Sk7SE3fHq+sYl6hc9nf05jEVXaxQ0cR2WLGatLnbs2uyeBwE3/aND
	 hPWcmnyKFANowsOdgQrWSSRX5HuTRQJWzrUOmENA5qa4LqYsM1N1mfdKOXp3ZrkQLl
	 1cfuK86dMDOdfh1iedj/t8nURvTzZQRQyNPGBFwpt35AlXQk1bcM/ikK9HdqWi765l
	 ElVgV22rH5VsA7nb4eBu3bdhO9NoRLdMYZaMe1aI7S9wmGx7xHEbvKlpJGoSAiu6xm
	 5UrIfFmlWFH5w==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B811917E0F07;
	Tue,  5 May 2026 18:32:49 +0200 (CEST)
Date: Tue, 5 May 2026 18:32:44 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ketil Johnsen <ketil.johnsen@arm.com>
Message-ID: <20260505183244.0830c34c@fedora>
In-Reply-To: <20260505140516.1372388-7-ketil.johnsen@arm.com>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
	<20260505140516.1372388-7-ketil.johnsen@arm.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YH223T7GABM3RUWNN22OAA3WOGRJOLRR
X-Message-ID-Hash: YH223T7GABM3RUWNN22OAA3WOGRJOLRR
X-Mailman-Approved-At: Wed, 13 May 2026 11:22:16 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, l
 inux-mediatek@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/8] drm/panthor: Explicit expansion of locked VM region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YH223T7GABM3RUWNN22OAA3WOGRJOLRR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9A10E5322E0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[186];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.530];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,arm.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,arm.com:email]
X-Rspamd-Action: no action

On Tue,  5 May 2026 16:05:12 +0200
Ketil Johnsen <ketil.johnsen@arm.com> wrote:

> Currently the panthor_vm_lock_region() function will implicitly expand
> an already locked VM region. This can be problematic because the caller
> do not reliably know if it needs to call panthor_vm_unlock_region()
> or not.
> 
> Worth noting, there is currently no known issues with this as the code
> is written today.
> 
> This change introduces panthor_vm_expand_region() which will only work
> if there is already a locked VM region. This again means that the
> original lock and unlock functions can work as a pair. This pairing is
> needed for subsequent protected memory changes.
> 
> Signed-off-by: Ketil Johnsen <ketil.johnsen@arm.com>
> ---
>  drivers/gpu/drm/panthor/panthor_mmu.c | 69 +++++++++++++++++++--------
>  1 file changed, 50 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panthor/panthor_mmu.c b/drivers/gpu/drm/panthor/panthor_mmu.c
> index fc930ee158a52..07f54176ec1bf 100644
> --- a/drivers/gpu/drm/panthor/panthor_mmu.c
> +++ b/drivers/gpu/drm/panthor/panthor_mmu.c
> @@ -1701,15 +1701,36 @@ static int panthor_vm_lock_region(struct panthor_vm *vm, u64 start, u64 size)
>  	struct panthor_device *ptdev = vm->ptdev;
>  	int ret = 0;
>  
> -	/* sm_step_remap() can call panthor_vm_lock_region() to account for
> -	 * the wider unmap needed when doing a partial huge page unamp. We
> -	 * need to ignore the lock if it's already part of the locked region.
> -	 */
> -	if (start >= vm->locked_region.start &&
> -	    start + size <= vm->locked_region.start + vm->locked_region.size)
> -		return 0;
> +	if (drm_WARN_ON(&ptdev->base, vm->locked_region.size))
> +		return -EINVAL;

How about we have a helper called panthor_vm_apply_as_lock() that would
only take care of the AS_LOCKADDR() sequence. panthor_vm_lock_region()
would have this WARN_ON(), the pack_region_range() and a call to
panthor_vm_apply_as_lock(). Similarly,
panthor_vm_expand_locked_region() would rely on
panthor_vm_apply_as_lock() to apply the expanded lock.

> +
> +	mutex_lock(&ptdev->mmu->as.slots_lock);
> +	if (vm->as.id >= 0 && size) {
> +		/* Lock the region that needs to be updated */
> +		gpu_write64(ptdev, AS_LOCKADDR(vm->as.id),
> +			    pack_region_range(ptdev, &start, &size));
> +
> +		/* If the lock succeeded, update the locked_region info. */
> +		ret = as_send_cmd_and_wait(ptdev, vm->as.id, AS_COMMAND_LOCK);
> +	}
>  
> -	/* sm_step_remap() may need a locked region that isn't a strict superset
> +	if (!ret) {
> +		vm->locked_region.start = start;
> +		vm->locked_region.size = size;
> +	}
> +	mutex_unlock(&ptdev->mmu->as.slots_lock);
> +
> +	return ret;
> +}
> +
> +static int panthor_vm_expand_region(struct panthor_vm *vm, u64 start, u64 size)

s/panthor_vm_expand_region/panthor_vm_expand_locked_region/

> +{
> +	struct panthor_device *ptdev = vm->ptdev;
> +	u64 end;
> +	int ret = 0;
> +
> +	/* This function is here to handle the following case:
> +	 * sm_step_remap() may need a locked region that isn't a strict superset
>  	 * of the original one because of having to extend unmap boundaries beyond
>  	 * it to deal with partial unmaps of transparent huge pages. What we want
>  	 * in those cases is to lock the union of both regions. The new region must
> @@ -1717,16 +1738,24 @@ static int panthor_vm_lock_region(struct panthor_vm *vm, u64 start, u64 size)
>  	 * boundaries in a remap operation can only shift up or down respectively,
>  	 * but never otherwise.
>  	 */
> -	if (vm->locked_region.size) {
> -		u64 end = max(vm->locked_region.start + vm->locked_region.size,
> -			      start + size);
>  
> -		drm_WARN_ON_ONCE(&vm->ptdev->base, (start + size <= vm->locked_region.start) ||
> -				 (start >= vm->locked_region.start + vm->locked_region.size));
> +	/* This function can only expand an already locked region */
> +	if (drm_WARN_ON(&ptdev->base, !vm->locked_region.size))
> +		return -EINVAL;
>  
> -		start = min(start, vm->locked_region.start);
> -		size = end - start;
> -	}
> +	/* Early out if requested range is already locked */
> +	if (start >= vm->locked_region.start &&
> +	    start + size <= vm->locked_region.start + vm->locked_region.size)
> +		return 0;
> +
> +	end = max(vm->locked_region.start + vm->locked_region.size,
> +		  start + size);
> +
> +	drm_WARN_ON_ONCE(&ptdev->base, (start + size <= vm->locked_region.start) ||
> +			 (start >= vm->locked_region.start + vm->locked_region.size));
> +
> +	start = min(start, vm->locked_region.start);
> +	size = end - start;
>  
>  	mutex_lock(&ptdev->mmu->as.slots_lock);
>  	if (vm->as.id >= 0 && size) {
> @@ -2252,11 +2281,13 @@ static int panthor_gpuva_sm_step_remap(struct drm_gpuva_op *op,
>  	unmap_hugepage_align(&op->remap, &unmap_start, &unmap_range);
>  
>  	/* If the range changed, we might have to lock a wider region to guarantee
> -	 * atomicity. panthor_vm_lock_region() bails out early if the new region
> -	 * is already part of the locked region, so no need to do this check here.
> +	 * atomicity.
>  	 */
>  	if (!unmap_vma->evicted) {
> -		panthor_vm_lock_region(vm, unmap_start, unmap_range);
> +		ret = panthor_vm_expand_region(vm, unmap_start, unmap_range);
> +		if (ret)
> +			return ret;
> +
>  		panthor_vm_unmap_pages(vm, unmap_start, unmap_range);
>  	}
>  

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
