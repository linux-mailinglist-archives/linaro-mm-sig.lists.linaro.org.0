Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Jx9G+AU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:57:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0857641228D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:57:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 17862451DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:03 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 95E5E3F80A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 10:12:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=aC6sK2pT;
	dkim=pass header.d=redhat.com header.s=google header.b=qif6YlRl;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772100739;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gvNRe5YinnGtBsLbQqtbum68D8/4VbQI7D9a9RKn348=;
	b=aC6sK2pTfrH3XDdWTtFPdOuUxo9w9zjf7xQgqLs35IzX0+8RMfnbCzSdnPcM8utnpFy9dQ
	bgRWb7ZuDImOfAj3csuzDZPiZFgiaZq9WEmTLdbMreqYhqCblMvCRzm67rGzw1oMvh5f7w
	2z40MwOVvHZe+628Y9IDqAXSussTFTs=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-6--1-hiaM-OyWdiqiWu0vR2A-1; Thu, 26 Feb 2026 05:12:16 -0500
X-MC-Unique: -1-hiaM-OyWdiqiWu0vR2A-1
X-Mimecast-MFC-AGG-ID: -1-hiaM-OyWdiqiWu0vR2A_1772100736
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-483a24db6ecso7175125e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 02:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772100736; x=1772705536; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gvNRe5YinnGtBsLbQqtbum68D8/4VbQI7D9a9RKn348=;
        b=qif6YlRlt8xnNoFx90BRfH7AFgoPvFdrdN9u+zXWp8/XLVVLeMGnTu5pwTALoA4SZ5
         PfQclNJS8bkZwsGQLI/+kh4UH9TuayD/Zp5zor4H1pZJNIMTOvGQQYJ0l1QbhqvN5kaX
         kmVrmgPXkLpi5j4NnOuHSqlNTYUwyyRKyVAw39tfBIDs2Ec5CpXGnv71+NCdpFbh4cFb
         VILox6KWC4kikynvR5gdQaH3dV9GxTmR3MLUcwZufwNNmWcAuugeLMYL2iBD+3II+ErB
         8IcBV3kdmQLJocApM1HPBZ5P7q59wLPeLxUgCAZLVA23ZhC947pBWHG6beoxMNdx/b5A
         KDhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772100736; x=1772705536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gvNRe5YinnGtBsLbQqtbum68D8/4VbQI7D9a9RKn348=;
        b=aGqAT8kptdfV4HfMw47jm3tKY8US/cIrNBWwtKLA1JzetC6acMrRL3ihRiJeDpjDsG
         XHFc5YrRBtq3fpxTCKBmOaacNZ9pn1WwAEEdkDa4msswjlXHf2My3y3eR4/6BXFeOcHK
         EtckEkWsM3JdiaCgYxMiZt1ZBE8KjPcS1TMpA3oUd4C9M64AZmGzlzDxCEnmyGbwDhut
         HGCqJvRmqPlUJaCkkAP+muNsJEPn5AEqfxJLi1mMoSqX6Uilg+P02CkL71peIB3w5GAs
         OoCQArM3U3C1BH1rHFKW/5e/5lO7biaA8oZ19KBLktMvIVaG5sMTZXuF94g3IxEmvQK7
         k2kg==
X-Forwarded-Encrypted: i=1; AJvYcCU88zRna8cZ+MBewPD6b2sJ2XkfocPSmyv/ngthKVkh7D/4EXACvQFMzw/f6qI0KHlGWzPFWeOLEdLsiVlw@lists.linaro.org
X-Gm-Message-State: AOJu0YwBSlliHSTGNtLRoP+jll/86hiA5vyqvlG0bHq86M4lpP5XQuUI
	czn3Xkd7SkH2X9rZ/fByEDvLgIg0n/06wj1DgVH+T6OutTu/DpcF2U+KL1eSCNii/L5jEtJB8Rz
	fX9uvkuGt44rJNlQPxB4tW6wlVHiAZP4JlKuaea43Oe7VJDa9O9THuLIHL8hYyi5RehGe
X-Gm-Gg: ATEYQzzO+p+aXO16leZ2qy6dnYRy+JZeg9YLFO9dQsf8A/nuZsrowMhcewvbGh3cPYM
	nmDWObWgM1JydoDrfZKLHNwE1yRIynW/drt7zUaLb/DqUxWkpWZJySGquIzhreLc3jrxgZlSN0j
	wmd0IJ8/uGlotyo8tr35MK8iV93IgriJA7wgdfK87SCGNncQ6xeN3Nuqm9Ukw2foqtkzut15Ql3
	Ex/17uUyCO/506iCRG7xKjvvjx4WgVBZ25H/f/iQndWtr5sEtqKXtUdGYFFWJtZ/sJUIdNsi7Pr
	5TYwEcR1Wtn5MEaXntkspkwSvg0LWGTRi61RITKRUMTNThHHBXLCy5PLRkHJfLAh+szFkLYkoHn
	nxEw0Y4ma5EkWQQ50
X-Received: by 2002:a05:600c:5250:b0:483:9139:4c1d with SMTP id 5b1f17b1804b1-483c3db85b0mr26446015e9.14.1772100734220;
        Thu, 26 Feb 2026 02:12:14 -0800 (PST)
X-Received: by 2002:a05:600c:5250:b0:483:9139:4c1d with SMTP id 5b1f17b1804b1-483c3db85b0mr26445365e9.14.1772100733586;
        Thu, 26 Feb 2026 02:12:13 -0800 (PST)
Received: from localhost ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b89c99sm33795575e9.15.2026.02.26.02.12.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 02:12:13 -0800 (PST)
Date: Thu, 26 Feb 2026 11:12:12 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Albert Esteve <aesteve@redhat.com>
Message-ID: <20260226-smoky-fancy-dachshund-1a2f92@penduick>
References: <20260224-b4-dmabuf-heap-coherent-rmem-v1-1-dffef43298ac@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260224-b4-dmabuf-heap-coherent-rmem-v1-1-dffef43298ac@redhat.com>
X-Spamd-Bar: ------
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FPSTQ4WB4NJ4VEDYDET3NWT6IKSCD6FX
X-Message-ID-Hash: FPSTQ4WB4NJ4VEDYDET3NWT6IKSCD6FX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:22 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Add Coherent heap to dmabuf heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FPSTQ4WB4NJ4VEDYDET3NWT6IKSCD6FX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0357055163062713456=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1182];
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
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.962];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 0857641228D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============0357055163062713456==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="myq5wdwgjhmnmvhe"
Content-Disposition: inline


--myq5wdwgjhmnmvhe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dma-buf: heaps: Add Coherent heap to dmabuf heaps
MIME-Version: 1.0

Hi Albert,

Thanks for your patch!

On Tue, Feb 24, 2026 at 08:57:33AM +0100, Albert Esteve wrote:
> Add a dma-buf heap for DT coherent reserved-memory
> (i.e., 'shared-dma-pool' without 'reusable' property),
> exposing one heap per region for userspace buffers.
>=20
> The heap binds a synthetic platform device to each region
> so coherent allocations use the correct dev->dma_mem,
> and it defers registration until late_initcall when
> normal allocator are available.
>=20
> This patch includes charging of the coherent heap
> allocator to the dmem cgroup.
>=20
> Signed-off-by: Albert Esteve <aesteve@redhat.com>
> ---
> This patch introduces a new driver to expose DT coherent reserved-memory
> regions as dma-buf heaps, allowing userspace buffers to be created.
>=20
> Since these regions are device-dependent, we bind a synthetic platform
> device to each region so coherent allocations use the correct dev->dma_me=
m.
>=20
> Following Eric=E2=80=99s [1] and Maxime=E2=80=99s [2] work on charging DM=
A buffers
> allocated from userspace to cgroups (dmem), this patch adds the same
> charging pattern used by CMA heaps patch. Charging is done only through
> the dma-buf heap interface so it can be attributed to a userspace allocat=
or.
>=20
> This allows each device-specific reserved-memory region to enforce its
> own limits.
>=20
> [1] https://lore.kernel.org/all/20260218-dmabuf-heap-cma-dmem-v2-0-b24988=
6fb7b2@redhat.com/
> [2] https://lore.kernel.org/all/20250310-dmem-cgroups-v1-0-2984c1bc9312@k=
ernel.org/
> ---
>  drivers/dma-buf/heaps/Kconfig         |  17 ++
>  drivers/dma-buf/heaps/Makefile        |   1 +
>  drivers/dma-buf/heaps/coherent_heap.c | 485 ++++++++++++++++++++++++++++=
++++++
>  include/linux/dma-heap.h              |  11 +
>  kernel/dma/coherent.c                 |   9 +
>  5 files changed, 523 insertions(+)
>=20
> diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
> index a5eef06c42264..93765dca164e3 100644
> --- a/drivers/dma-buf/heaps/Kconfig
> +++ b/drivers/dma-buf/heaps/Kconfig
> @@ -12,3 +12,20 @@ config DMABUF_HEAPS_CMA
>  	  Choose this option to enable dma-buf CMA heap. This heap is backed
>  	  by the Contiguous Memory Allocator (CMA). If your system has these
>  	  regions, you should say Y here.
> +
> +config DMABUF_HEAPS_COHERENT
> +	bool "DMA-BUF Coherent Reserved-Memory Heap"
> +	depends on DMABUF_HEAPS && OF_RESERVED_MEM && DMA_DECLARE_COHERENT
> +	help
> +	  Choose this option to enable coherent reserved-memory dma-buf heaps.
> +	  This heap is backed by non-reusable DT "shared-dma-pool" regions.
> +	  If your system defines coherent reserved-memory regions, you should
> +	  say Y here.
> +
> +config COHERENT_AREAS_DEFERRED
> +	int "Max deferred coherent reserved-memory regions"
> +	depends on DMABUF_HEAPS_COHERENT
> +	default 16
> +	help
> +	  Maximum number of coherent reserved-memory regions that can be
> +	  deferred for later registration during early boot.
> diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makef=
ile
> index 974467791032f..96bda7a65f041 100644
> --- a/drivers/dma-buf/heaps/Makefile
> +++ b/drivers/dma-buf/heaps/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+=3D system_heap.o
>  obj-$(CONFIG_DMABUF_HEAPS_CMA)		+=3D cma_heap.o
> +obj-$(CONFIG_DMABUF_HEAPS_COHERENT)	+=3D coherent_heap.o
> diff --git a/drivers/dma-buf/heaps/coherent_heap.c b/drivers/dma-buf/heap=
s/coherent_heap.c
> new file mode 100644
> index 0000000000000..870b2b89aefcb
> --- /dev/null
> +++ b/drivers/dma-buf/heaps/coherent_heap.c
> @@ -0,0 +1,485 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * DMABUF heap for coherent reserved-memory regions
> + *
> + * Copyright (C) 2026 Red Hat, Inc.
> + * Author: Albert Esteve <aesteve@redhat.com>
> + *
> + */
> +
> +#include <linux/cgroup_dmem.h>
> +#include <linux/dma-heap.h>
> +#include <linux/dma-buf.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/err.h>
> +#include <linux/highmem.h>
> +#include <linux/iosys-map.h>
> +#include <linux/of_reserved_mem.h>
> +#include <linux/platform_device.h>
> +#include <linux/scatterlist.h>
> +#include <linux/slab.h>
> +#include <linux/vmalloc.h>
> +
> +#define DEFERRED_AREAS_MAX CONFIG_COHERENT_AREAS_DEFERRED

I'm not sure we need to make it configurable. Distros are going to set
it to the user with the highest number of regions anyway. How about
using MAX_RESERVED_REGIONS for now?

>
> [...]
>
> +struct coherent_heap {
> +	struct dma_heap *heap;
> +	struct reserved_mem *rmem;
> +	char *name;
> +	struct device *dev;
> +	struct platform_device *pdev;
> +#if IS_ENABLED(CONFIG_CGROUP_DMEM)
> +	struct dmem_cgroup_region *cg;
> +#endif

We might want to leave the dmem accounting out for now so we can focus
on the heap itself. That being said, it ended up being pretty trivial
for CMA, so maybe it's not too much of a concern.

>
> [...]
>
> +static int __coherent_heap_register(struct reserved_mem *rmem)
> +{
> +	struct dma_heap_export_info exp_info;
> +	struct coherent_heap *coh_heap;
> +#if IS_ENABLED(CONFIG_CGROUP_DMEM)
> +	struct dmem_cgroup_region *region;
> +#endif
> +	const char *rmem_name;
> +	int ret;
> +
> +	if (!rmem)
> +		return -EINVAL;
> +
> +	rmem_name =3D rmem->name ? rmem->name : "unknown";

If the reserved region has no name, we probably shouldn't expose it to
userspace at all. Using unknown will probably create some bugs if you
have several, but also it's pretty like to have a name at some point and
thus we wouldn't have a stable name for the uAPI.

> +	coh_heap =3D kzalloc_obj(*coh_heap);
> +	if (!coh_heap)
> +		return -ENOMEM;
> +
> +	coh_heap->name =3D kasprintf(GFP_KERNEL, "coherent_%s", rmem_name);
> +	if (!coh_heap->name) {
> +		ret =3D -ENOMEM;
> +		goto free_coherent_heap;
> +	}

Similarly, we shouldn't use the coherent_ prefix for the heap name. If
the backing allocator ever changes (and between contiguous and coherent,
the difference is just a single property value in the DT), then the name
would change and userspace would break. We should directly use the name
of the region here.

> +	coh_heap->rmem =3D rmem;
> +
> +	/* create a platform device per rmem and bind it */
> +	coh_heap->pdev =3D platform_device_register_simple("coherent-heap",
> +							 PLATFORM_DEVID_AUTO,
> +							 NULL, 0);
> +	if (IS_ERR(coh_heap->pdev)) {
> +		ret =3D PTR_ERR(coh_heap->pdev);
> +		goto free_name;
> +	}

We probably should use a faux_device here instead of a platform_device,
but more importantly, the heap itself already has a device allocated for
it (dev_ret in dma_heap_add).

It's not in struct dma_heap yet, but there's a patch that moves it there
that we should probably carry:
https://lore.kernel.org/r/20210120210937.15069-2-john.stultz@linaro.org/

> +	if (rmem->ops && rmem->ops->device_init) {
> +		ret =3D rmem->ops->device_init(rmem, &coh_heap->pdev->dev);
> +		if (ret)
> +			goto pdev_unregister;
> +	}

I'm not really a fan of calling ops directly. Maybe we should create an
of_reserved_mem_device_init_with_mem function that would do it for us
(and would be called by of_reserved_mem_device_init_by_idx and the
likes).

> +	coh_heap->dev =3D &coh_heap->pdev->dev;
> +#if IS_ENABLED(CONFIG_CGROUP_DMEM)
> +	region =3D dmem_cgroup_register_region(rmem->size, "coh/%s", rmem_name);
> +	if (IS_ERR(region)) {
> +		ret =3D PTR_ERR(region);
> +		goto pdev_unregister;
> +	}
> +	coh_heap->cg =3D region;
> +#endif

Same comment than for CMA here: it should really be created by the
coherent memory region itself.

> +	exp_info.name =3D coh_heap->name;
> +	exp_info.ops =3D &coherent_heap_ops;
> +	exp_info.priv =3D coh_heap;
> +
> +	coh_heap->heap =3D dma_heap_add(&exp_info);
> +	if (IS_ERR(coh_heap->heap)) {
> +		ret =3D PTR_ERR(coh_heap->heap);
> +		goto cg_unregister;
> +	}
> +
> +	return 0;
> +
> +cg_unregister:
> +#if IS_ENABLED(CONFIG_CGROUP_DMEM)
> +	dmem_cgroup_unregister_region(coh_heap->cg);
> +#endif
> +pdev_unregister:
> +	platform_device_unregister(coh_heap->pdev);
> +	coh_heap->pdev =3D NULL;
> +free_name:
> +	kfree(coh_heap->name);
> +free_coherent_heap:
> +	kfree(coh_heap);
> +
> +	return ret;
> +}
> +
> +int dma_heap_coherent_register(struct reserved_mem *rmem)
> +{
> +	int ret;
> +
> +	ret =3D __coherent_heap_register(rmem);
> +	if (ret =3D=3D -ENOMEM)
> +		return coherent_heap_add_deferred(rmem);
> +	return ret;
> +}

I appreciate you did it like we did for CMA, but if we ever want to make
that heap a module you'll end up with a dependency from the core kernel
on a module which doesn't work. The best here might be to wait a bit
until we have somewhat of an agreement on

https://lore.kernel.org/r/20260225-dma-buf-heaps-as-modules-v1-0-2109225a09=
0d@kernel.org

> +static int __init coherent_heap_register_deferred(void)
> +{
> +	unsigned int i;
> +	int ret;
> +
> +	for (i =3D 0; i < rmem_areas_deferred_num; i++) {
> +		struct reserved_mem *rmem =3D rmem_areas_deferred[i];
> +
> +		ret =3D __coherent_heap_register(rmem);
> +		if (ret) {
> +			pr_warn("Failed to add coherent heap %s",
> +				rmem->name ? rmem->name : "unknown");
> +			continue;
> +		}
> +	}
> +
> +	return 0;
> +}
> +late_initcall(coherent_heap_register_deferred);

Why do you need a late_initcall here? Isn't module_init enough?

> +MODULE_DESCRIPTION("DMA-BUF heap for coherent reserved-memory regions");
> diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
> index 648328a64b27e..e894cfa1ecf1a 100644
> --- a/include/linux/dma-heap.h
> +++ b/include/linux/dma-heap.h
> @@ -9,9 +9,11 @@
>  #ifndef _DMA_HEAPS_H
>  #define _DMA_HEAPS_H
> =20
> +#include <linux/errno.h>
>  #include <linux/types.h>
> =20
>  struct dma_heap;
> +struct reserved_mem;
> =20
>  /**
>   * struct dma_heap_ops - ops to operate on a given heap
> @@ -48,4 +50,13 @@ struct dma_heap *dma_heap_add(const struct dma_heap_ex=
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
> diff --git a/kernel/dma/coherent.c b/kernel/dma/coherent.c
> index 1147497bc512c..f49d13e460e4b 100644
> --- a/kernel/dma/coherent.c
> +++ b/kernel/dma/coherent.c
> @@ -9,6 +9,7 @@
>  #include <linux/module.h>
>  #include <linux/dma-direct.h>
>  #include <linux/dma-map-ops.h>
> +#include <linux/dma-heap.h>
> =20
>  struct dma_coherent_mem {
>  	void		*virt_base;
> @@ -393,6 +394,14 @@ static int __init rmem_dma_setup(struct reserved_mem=
 *rmem)
>  	rmem->ops =3D &rmem_dma_ops;
>  	pr_info("Reserved memory: created DMA memory pool at %pa, size %ld MiB\=
n",
>  		&rmem->base, (unsigned long)rmem->size / SZ_1M);
> +
> +	if (IS_ENABLED(CONFIG_DMABUF_HEAPS_COHERENT)) {
> +		int ret =3D dma_heap_coherent_register(rmem);
> +
> +		if (ret)
> +			pr_warn("Reserved memory: failed to register coherent heap for %s (%d=
)\n",
> +				rmem->name ? rmem->name : "unknown", ret);
> +	}

I think this should be split into a patch of its own. It's going to be
reviewed (and possibly merged) by another maintainer, through another
tree.

Maxime

--myq5wdwgjhmnmvhe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaaAcdAAKCRAnX84Zoj2+
doMtAYDM1DBB7yzRJMjRilWANJNUJzHNeXZViTQsYLixeAxj4iCz3QEqo/8XR6m6
CoZetNYBgJ0oezkcaikKA6NM6doFtNDG5JMPHUlcVCqYvCWQFWfZQuIvlwJDtvAS
bdbMnK9X8g==
=PuJc
-----END PGP SIGNATURE-----

--myq5wdwgjhmnmvhe--


--===============0357055163062713456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0357055163062713456==--

