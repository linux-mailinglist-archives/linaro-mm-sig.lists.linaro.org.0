Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJ8lOWIf4Wl0pQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:41:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6A6413143
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:41:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 685024557F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:41:53 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id ED77F3F69B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 13:20:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=avWNFnwG;
	dkim=pass header.d=redhat.com header.s=google header.b=FeHyqRXT;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772544039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8HeSeolQ1fBhOJOln5m5tn/ig4w91f0rYiMidADsnM8=;
	b=avWNFnwG0KrQf5G4rLUqPi7gHHVTxahuPE1V8ehsP9PNeQEINV2TI38Dy1C7ngJvKhfr8P
	D3RvbFZiYKZHoHMixNCRoeWcvq8mt3PRpkgaA/uQRO/+m4LDRV2GhXz29SstFpdldmV1Wz
	MbIuejYBEnAjGGxIHYFEat6RLvtPmHA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-12-YSnjv65sNnqZkkPmmcwbQQ-1; Tue, 03 Mar 2026 08:20:38 -0500
X-MC-Unique: YSnjv65sNnqZkkPmmcwbQQ-1
X-Mimecast-MFC-AGG-ID: YSnjv65sNnqZkkPmmcwbQQ_1772544037
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-439b20722e3so1130153f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Mar 2026 05:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772544037; x=1773148837; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8HeSeolQ1fBhOJOln5m5tn/ig4w91f0rYiMidADsnM8=;
        b=FeHyqRXTE8x06qgGakZiQOj0BeFe5cuV58JR2UmCAOPAtb9DENAWXDtcmX38pW9WJH
         uLxD/y+lFjUWKAC2gqI/DNfxv1OWD/UQGKidj5PDgJvMidxlbXTAl3VoyKkU9PBcCp0m
         bV68tCv8TYHlhdHs4ND2Z54AIGVIslAnk6ApWd0VkHeLSb3bG5yPCxmosQjtqp4QXAB/
         iRJP6r0l2j1ULaXxuOZq7XEjl+MPa/1yQOlwhq1qf14guEb2XMJlLHFFYvDWSuanhsy1
         M8jHC754G7GGDRFCc4Lbk7fSLCR3wEhVEAwtmZ1t1DrtsGfMS41XAmNLcpmtwpea46m9
         6HIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772544037; x=1773148837;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8HeSeolQ1fBhOJOln5m5tn/ig4w91f0rYiMidADsnM8=;
        b=nX2eUpTXs1ww2cshIxcyixLGOoe/9VIkywOzl6Q4lDqTplkt4VQe9bYIfCKZw9Hq2L
         hHLdMQPpOVBIbqBEm3ZGwE7rU639jgt1M/MTgIWKwy1PP7bKGmzg7wSxDXhXPBzWZoeg
         /AWlUCSULTJXCwuxP8d5/lzMqqYX3ZpH1HgwhsKe8fm0CNpxqNewPnPeA6HlnmFEz4gw
         IdlW3CR43VFAKFVGC54TVm0lxAbiZhDG7/SflTghqHutrEILsjPqGqv8k5spKxdji6yu
         ppW1k/JsmxfYrGyBW8gyBlVIzD1v7Ie8at7saP4KchsnMeIIxZVKelqpHFJMOMzUz+Lf
         T02A==
X-Forwarded-Encrypted: i=1; AJvYcCVOlpYg+I+u84ILBLpJtjtYelLflgTieYvwZhXdefIh94TUym+IrH734ddE5tGFIQLA4Pq19npe/ZIW9Vc3@lists.linaro.org
X-Gm-Message-State: AOJu0YyD9pOFGyUXLLOofbAxrzgrL86pEvzGNPVnMvjWuMof7t6LL1DD
	j4LD6pimyAjbpE30OBxu8/Q1QA1sYP46i2vj4xLokia4u1Sn5ZrZh3VQU9y3c3lewGhwMao5Gag
	r8regP3b9YvAGjo+L0R5vls4SbEb25swNJRDvXm8JpkYGDvY5K65hkq5uU8Y6CcODE89t
X-Gm-Gg: ATEYQzwyHn8uk1IOQBNG+zwY2ucjykS2ev/RnfOmJw5EGoUoFmLg3oCqJ0u2ioUu8BO
	Kna5hlEn8Ux19IYpYVFhzObhU2Gz/tUQG8XYj/OSyJ2VrX54SiuD+kpCG+JwwQ3m6ZY4/uEmuUG
	YcaWhCYqKljPruGGDzpp3Ae239mWELO/f/rh0ip5VRUBZEBLrSw0ugsWPt1igd1grA5W1W+9VdX
	x9m1ZjI/VLnA6f7rPBnzqsXPZlduinvSs0SroMla72xlhG4U59BiExskLChIWvrtXzuELIDjWay
	cIJHpX0qaiz2byUYWx45G+8QilPJKK56HtfY6OqYdN1Bbxm2zuCAKsylVVfs6pjUbg3sY/g1yw=
	=
X-Received: by 2002:a05:6000:25c6:b0:439:c14b:2100 with SMTP id ffacd0b85a97d-439c14b22d7mr3433787f8f.12.1772544036651;
        Tue, 03 Mar 2026 05:20:36 -0800 (PST)
X-Received: by 2002:a05:6000:25c6:b0:439:c14b:2100 with SMTP id ffacd0b85a97d-439c14b22d7mr3433696f8f.12.1772544036002;
        Tue, 03 Mar 2026 05:20:36 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439af926c53sm24022288f8f.8.2026.03.03.05.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:20:35 -0800 (PST)
Date: Tue, 3 Mar 2026 14:20:34 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Albert Esteve <aesteve@redhat.com>
Message-ID: <20260303-rigorous-cow-of-saturation-23f87b@houat>
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
 <20260303-b4-dmabuf-heap-coherent-rmem-v2-4-65a4653b3378@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260303-b4-dmabuf-heap-coherent-rmem-v2-4-65a4653b3378@redhat.com>
X-Spamd-Bar: ------
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4GQB62CWUNADUEORUUV2CNJWVIJ72A7S
X-Message-ID-Hash: 4GQB62CWUNADUEORUUV2CNJWVIJ72A7S
X-Mailman-Approved-At: Thu, 16 Apr 2026 17:00:21 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/6] dma-buf: heaps: Add Coherent heap to dmabuf heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4GQB62CWUNADUEORUUV2CNJWVIJ72A7S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1215482395879443053=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1060];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 9D6A6413143
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============1215482395879443053==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="3oyzr26awgsnuxvr"
Content-Disposition: inline


--3oyzr26awgsnuxvr
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 4/6] dma-buf: heaps: Add Coherent heap to dmabuf heaps
MIME-Version: 1.0

Hi,

On Tue, Mar 03, 2026 at 01:33:47PM +0100, Albert Esteve wrote:
> Add a dma-buf heap for DT coherent reserved-memory
> (i.e., 'shared-dma-pool' without 'reusable' property),
> exposing one heap per region for userspace buffers.
>=20
> The heap binds the heap device to each memory region so
> coherent allocations use the correct dev->dma_mem, and
> it defers registration until module_init when normal
> allocators are available.
>=20
> Signed-off-by: Albert Esteve <aesteve@redhat.com>
> ---
>  drivers/dma-buf/dma-heap.c            |   4 +-
>  drivers/dma-buf/heaps/Kconfig         |   9 +
>  drivers/dma-buf/heaps/Makefile        |   1 +
>  drivers/dma-buf/heaps/coherent_heap.c | 426 ++++++++++++++++++++++++++++=
++++++
>  include/linux/dma-heap.h              |  11 +
>  include/linux/dma-map-ops.h           |   7 +
>  6 files changed, 456 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> index 88189d4e48561..ba87e5ac16ae2 100644
> --- a/drivers/dma-buf/dma-heap.c
> +++ b/drivers/dma-buf/dma-heap.c
> @@ -390,8 +390,8 @@ struct dma_heap *dma_heap_add(const struct dma_heap_e=
xport_info *exp_info)
> =20
>  	heap =3D dma_heap_create(exp_info);
>  	if (IS_ERR(heap)) {
> -		pr_err("dma_heap: failed to create heap (%d)\n", PTR_ERR(heap));
> -		return PTR_ERR(heap);
> +		pr_err("dma_heap: failed to create heap (%ld)\n", PTR_ERR(heap));
> +		return ERR_CAST(heap);

This looks unrelated and should possibly be squashed into the previous
patch that introduces dma_heap_create()?

> +static int coherent_heap_init_dma_mask(struct device *dev)
> +{
> +	int ret;
> +
> +	ret =3D dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
> +	if (!ret)
> +		return 0;
> +
> +	/* Fallback to 32-bit DMA mask */
> +	return dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
> +}

Why do you need to mess with the DMA mask? I'd expect that device to be
able to access everything.

> +static int __coherent_heap_register(struct reserved_mem *rmem)
> +{
> +	struct dma_heap_export_info exp_info;
> +	struct coherent_heap *coh_heap;
> +	struct device *heap_dev;
> +	int ret;
> +
> +	if (!rmem || !rmem->name)
> +		return -EINVAL;
> +
> +	coh_heap =3D kzalloc_obj(*coh_heap);
> +	if (!coh_heap)
> +		return -ENOMEM;
> +
> +	coh_heap->rmem =3D rmem;
> +	coh_heap->name =3D kstrdup(rmem->name, GFP_KERNEL);
> +	if (!coh_heap->name) {
> +		ret =3D -ENOMEM;
> +		goto free_coherent_heap;
> +	}
> +
> +	exp_info.name =3D coh_heap->name;
> +	exp_info.ops =3D &coherent_heap_ops;
> +	exp_info.priv =3D coh_heap;
> +
> +	coh_heap->heap =3D dma_heap_create(&exp_info);
> +	if (IS_ERR(coh_heap->heap)) {
> +		ret =3D PTR_ERR(coh_heap->heap);
> +		goto free_name;
> +	}
> +
> +	heap_dev =3D dma_heap_get_dev(coh_heap->heap);
> +	ret =3D coherent_heap_init_dma_mask(heap_dev);
> +	if (ret) {
> +		pr_err("coherent_heap: failed to set DMA mask (%d)\n", ret);
> +		goto destroy_heap;
> +	}
> +
> +	ret =3D of_reserved_mem_device_init_with_mem(heap_dev, rmem);
> +	if (ret) {
> +		pr_err("coherent_heap: failed to initialize memory (%d)\n", ret);
> +		goto destroy_heap;
> +	}
> +
> +	ret =3D dma_heap_register(coh_heap->heap);
> +	if (ret) {
> +		pr_err("coherent_heap: failed to register heap (%d)\n", ret);
> +		goto destroy_heap;
> +	}

I guess it's more of a comment about your previous patch, but it's not
clear to me why you needed to split dma_heap_add into dma_heap_create /
_register. Can you expand a bit?

> diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
> index 1b0ea43ba66c3..77e6cb66ffce1 100644
> --- a/include/linux/dma-heap.h
> +++ b/include/linux/dma-heap.h
> @@ -9,10 +9,12 @@
>  #ifndef _DMA_HEAPS_H
>  #define _DMA_HEAPS_H
> =20
> +#include <linux/errno.h>
>  #include <linux/types.h>
> =20
>  struct dma_heap;
>  struct device;
> +struct reserved_mem;
> =20
>  /**
>   * struct dma_heap_ops - ops to operate on a given heap
> @@ -53,4 +55,13 @@ struct dma_heap *dma_heap_add(const struct dma_heap_ex=
port_info *exp_info);
> =20
>  extern bool mem_accounting;
> =20
> +#if IS_ENABLED(CONFIG_DMABUF_HEAPS_COHERENT)
> +int dma_heap_coherent_register(struct reserved_mem *rmem);
> +#else
> +static inline int dma_heap_coherent_register(struct reserved_mem *rmem)
> +{
> +	return -EOPNOTSUPP;
> +}
> +#endif
> +
>  #endif /* _DMA_HEAPS_H */

Do you still need that now that you switched to an iterator-like
function?

> diff --git a/include/linux/dma-map-ops.h b/include/linux/dma-map-ops.h
> index 60b63756df821..c87e5e44e5383 100644
> --- a/include/linux/dma-map-ops.h
> +++ b/include/linux/dma-map-ops.h
> @@ -12,6 +12,7 @@
> =20
>  struct cma;
>  struct iommu_ops;
> +struct reserved_mem;
> =20
>  struct dma_map_ops {
>  	void *(*alloc)(struct device *dev, size_t size,
> @@ -161,6 +162,7 @@ int dma_alloc_from_dev_coherent(struct device *dev, s=
size_t size,
>  int dma_release_from_dev_coherent(struct device *dev, int order, void *v=
addr);
>  int dma_mmap_from_dev_coherent(struct device *dev, struct vm_area_struct=
 *vma,
>  		void *cpu_addr, size_t size, int *ret);
> +struct reserved_mem *dma_coherent_get_reserved_region(unsigned int idx);
>  #else
>  static inline int dma_declare_coherent_memory(struct device *dev,
>  		phys_addr_t phys_addr, dma_addr_t device_addr, size_t size)
> @@ -172,6 +174,11 @@ static inline int dma_declare_coherent_memory(struct=
 device *dev,
>  #define dma_release_from_dev_coherent(dev, order, vaddr) (0)
>  #define dma_mmap_from_dev_coherent(dev, vma, vaddr, order, ret) (0)
>  static inline void dma_release_coherent_memory(struct device *dev) { }
> +static inline
> +struct reserved_mem *dma_coherent_get_reserved_region(unsigned int idx)
> +{
> +	return NULL;
> +}
>  #endif /* CONFIG_DMA_DECLARE_COHERENT */
> =20
>  #ifdef CONFIG_DMA_GLOBAL_POOL

To preserve bisectability, you shouldn't do it that way. Introduce this
function into a preliminary patch, and then use it in this one.

Maxime

--3oyzr26awgsnuxvr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaabgIgAKCRAnX84Zoj2+
dpoAAYDbvla5ginFJZBwWscCdbzpqxZu0Nmn5Wmi+a860nETKwKEQNqs0s5JuwUy
LJBvBPIBf3AhBVl15Ze7xHfd358n8N5AmjXfB9uhtuZLkCNeqTzjr/j0hj5xhQ45
SMroDA+cOQ==
=6R14
-----END PGP SIGNATURE-----

--3oyzr26awgsnuxvr--


--===============1215482395879443053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1215482395879443053==--

