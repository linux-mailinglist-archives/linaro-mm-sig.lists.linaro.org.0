Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0J+TBndfBGpBHgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:24:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C28165322A2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:24:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBFDE401B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:24:37 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 894523F812
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2026 15:47:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=R2dNc5lI;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777996072;
	bh=H4hfN0oMllcNEjPVcnu5mtrqlmjlS8rr/h+c93usT34=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=R2dNc5lIkfxzRIdZj5bE8Pht0wT+bdc6exMlFXhdxJPXapmX818okKAW7mgW1UrYb
	 8URaR1dfHXkCp7xtrPHFWe2ueSq5ODIvOPNSGEGz9qtMftbWPaYkYWNPP/l9aRoyai
	 71B+VdiYYtw6yBQdsLnY1GzSCftSI1ZSlc6Tnwhjy45MEg+NgIVngeyb1aBBlAEkxA
	 +fd/A5I9KZ0tpKdG20e7dlT8nu1X94pzHbUyJXkN6GESzab2ksAA2eeVE/9g1pXD+3
	 pDtyD7zPhFi1UUaEW+14i0+wICfppaGGofhpheacoMmeKqr6Kvks84NZOPdxeYTBXL
	 +gUM9nF3JSs6g==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 362F817E05FC;
	Tue,  5 May 2026 17:47:51 +0200 (CEST)
Date: Tue, 5 May 2026 17:47:47 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ketil Johnsen <ketil.johnsen@arm.com>
Message-ID: <20260505174747.3c199a81@fedora>
In-Reply-To: <20260505140516.1372388-4-ketil.johnsen@arm.com>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
	<20260505140516.1372388-4-ketil.johnsen@arm.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XSLBWZIYKNMLGKJVYXSTYWYIR5W6JA5G
X-Message-ID-Hash: XSLBWZIYKNMLGKJVYXSTYWYIR5W6JA5G
X-Mailman-Approved-At: Wed, 13 May 2026 11:22:15 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, l
 inux-mediatek@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/8] drm/panthor: De-duplicate FW memory section sync
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XSLBWZIYKNMLGKJVYXSTYWYIR5W6JA5G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: C28165322A2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[187];
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
	NEURAL_HAM(-0.00)[-0.604];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,arm.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,arm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:email]
X-Rspamd-Action: no action

On Tue,  5 May 2026 16:05:09 +0200
Ketil Johnsen <ketil.johnsen@arm.com> wrote:

> Handle the sync to device of FW memory sections inside
> panthor_fw_init_section_mem() so that the callers do not have to.
> 
> This small improvement is also critical for protected FW sections,
> so we avoid issuing memory transactions to protected memory from
> CPU running in normal mode.
> 
> Signed-off-by: Ketil Johnsen <ketil.johnsen@arm.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/gpu/drm/panthor/panthor_fw.c | 22 ++++++----------------
>  1 file changed, 6 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panthor/panthor_fw.c b/drivers/gpu/drm/panthor/panthor_fw.c
> index be0da5b1f3abf..0d07a133dc3af 100644
> --- a/drivers/gpu/drm/panthor/panthor_fw.c
> +++ b/drivers/gpu/drm/panthor/panthor_fw.c
> @@ -446,6 +446,7 @@ static void panthor_fw_init_section_mem(struct panthor_device *ptdev,
>  					struct panthor_fw_section *section)
>  {
>  	bool was_mapped = !!section->mem->kmap;
> +	struct sg_table *sgt;
>  	int ret;
>  
>  	if (!section->data.size &&
> @@ -464,6 +465,11 @@ static void panthor_fw_init_section_mem(struct panthor_device *ptdev,
>  
>  	if (!was_mapped)
>  		panthor_kernel_bo_vunmap(section->mem);
> +
> +	/* An sgt should have been requested when the kernel BO was GPU-mapped. */
> +	sgt = to_panthor_bo(section->mem->obj)->dmap.sgt;
> +	if (!drm_WARN_ON_ONCE(&ptdev->base, !sgt))
> +		dma_sync_sgtable_for_device(ptdev->base.dev, sgt, DMA_TO_DEVICE);
>  }
>  
>  /**
> @@ -626,7 +632,6 @@ static int panthor_fw_load_section_entry(struct panthor_device *ptdev,
>  	section_size = hdr.va.end - hdr.va.start;
>  	if (section_size) {
>  		u32 cache_mode = hdr.flags & CSF_FW_BINARY_IFACE_ENTRY_CACHE_MODE_MASK;
> -		struct panthor_gem_object *bo;
>  		u32 vm_map_flags = 0;
>  		u64 va = hdr.va.start;
>  
> @@ -663,14 +668,6 @@ static int panthor_fw_load_section_entry(struct panthor_device *ptdev,
>  		}
>  
>  		panthor_fw_init_section_mem(ptdev, section);
> -
> -		bo = to_panthor_bo(section->mem->obj);
> -
> -		/* An sgt should have been requested when the kernel BO was GPU-mapped. */
> -		if (drm_WARN_ON_ONCE(&ptdev->base, !bo->dmap.sgt))
> -			return -EINVAL;
> -
> -		dma_sync_sgtable_for_device(ptdev->base.dev, bo->dmap.sgt, DMA_TO_DEVICE);
>  	}
>  
>  	if (hdr.va.start == CSF_MCU_SHARED_REGION_START)
> @@ -724,17 +721,10 @@ panthor_reload_fw_sections(struct panthor_device *ptdev, bool full_reload)
>  	struct panthor_fw_section *section;
>  
>  	list_for_each_entry(section, &ptdev->fw->sections, node) {
> -		struct sg_table *sgt;
> -
>  		if (!full_reload && !(section->flags & CSF_FW_BINARY_IFACE_ENTRY_WR))
>  			continue;
>  
>  		panthor_fw_init_section_mem(ptdev, section);
> -
> -		/* An sgt should have been requested when the kernel BO was GPU-mapped. */
> -		sgt = to_panthor_bo(section->mem->obj)->dmap.sgt;
> -		if (!drm_WARN_ON_ONCE(&ptdev->base, !sgt))
> -			dma_sync_sgtable_for_device(ptdev->base.dev, sgt, DMA_TO_DEVICE);
>  	}
>  }
>  

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
