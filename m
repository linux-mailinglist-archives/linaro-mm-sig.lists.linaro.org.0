Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 32976BAAA39
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 23:18:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42E5F45D6C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 21:18:23 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 0A9FC45DC5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 21:17:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=AoVB7n49;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759180674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tBEzt7vDi7cQon8pe4PxgzLkANUC3bHfRN0ntBJldU8=;
	b=AoVB7n49DgHSo37MjaQllW4eGuNjjEw5pl3xaRFAwSHzydcdRsI6sMss4RD3X8SS9MbZgr
	XZjqXGZhRDPmC5on4UlhesH1Z1cmoVeZeeGJ4si/ZvLfQ+Or70e550TUXxBebcIQnGCqyI
	KZHynBGNJ8c9VOBpXNpr1FY54WZH/XA=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-573-GCOIEosEOfu9Q7NQzVEyrA-1; Mon, 29 Sep 2025 17:17:53 -0400
X-MC-Unique: GCOIEosEOfu9Q7NQzVEyrA-1
X-Mimecast-MFC-AGG-ID: GCOIEosEOfu9Q7NQzVEyrA_1759180673
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-42b18fa4b81so5192885ab.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 14:17:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759180673; x=1759785473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tBEzt7vDi7cQon8pe4PxgzLkANUC3bHfRN0ntBJldU8=;
        b=m+Th9XEkIpvTuDVkoD6XzH+OrWhLdIbYZyHh4mXvvvZwLRwZtz50yWEFCLRVyAsRbT
         u+NtweDapBKppd4MVpjnpU2Gku0j7fILR6slopkJetYCS/cxmEUiSBV9WtyDM3XcqygN
         Rs9+J2zg19w35JrU6eRH2FfpdiId3jaqaBIAbH2HvL2fIIff95uRaKONy/qIwENYjpT1
         ltRZutI9G7OZyunFbkynwp8pcRW3F5P6D1CjzVZdhiiHNLOJajJ/vDzi0EltDJ+mwzCB
         pxIRVilZxr6Ssx1aXLxgIkLCOME45Y6l+ZcPfaPfJdbWlvkHhq6pXZz1uHHzkUpBuEyy
         GMJw==
X-Forwarded-Encrypted: i=1; AJvYcCVfsr37ptc1kowfHgV3cd85zK+e/Bu2BginkkRuZdFTVUk+jww8VvYmCYBvnYd1ltd7vO4KQfWHs+XAub0W@lists.linaro.org
X-Gm-Message-State: AOJu0YyO8Xn5jQsLBAWsJkG3Dkwz3Zx4XkbxqVbXlw09Hat6n0XTR9hv
	5uV8ob44aT7BA2eypxNcE38VAspfurX8gUNcvWHybwEX8foWkdqJnGpodtRpqHgTWlLyVnCgGE9
	e5wwRphlar1Kotuf/7A/zd51QKJbL639Ee8iVAMdbkqSgme4wzVVNBOopjNVjuD81LyM5
X-Gm-Gg: ASbGnctttao1Y8xja5HHBUQoWRgeJjZLvt5ubAWHc63it5CaRbPevZp43ekT4ez0RMt
	eulcEkCHtt6GiHI01xNiefucOXnUh3tPovSbcfXIENPEFWV5VkH7BVnWw6FuZSyIjQMTYRvXZgH
	CPC3a7jnPB9iIMzJF5g51PQmnse/46eyW7DO2K2hUbV5FxJZt9rP0tgJ6ejXFjUVZCLq5F9q/QP
	ClNO+yl+d+Hyiyu+QojfqNuA/ztoCYr/2wJWlnIRfmdThF4chO2Phsg7m7OC3XwcY/+c6HPW0mx
	iRUNBjHSzZNRFz0KuqcML3JC7M9S1kYt8mS/WoGR3ms=
X-Received: by 2002:a05:6e02:1523:b0:425:9068:4ff with SMTP id e9e14a558f8ab-425955c8eb5mr97782345ab.1.1759180672721;
        Mon, 29 Sep 2025 14:17:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTF4nahZRRX2gicTqxhxWdWKeUzRDCgsQQuCRfxHGJ4HNrczL75firr5hrFe4LKeaKRuPCNA==
X-Received: by 2002:a05:6e02:1523:b0:425:9068:4ff with SMTP id e9e14a558f8ab-425955c8eb5mr97782155ab.1.1759180672251;
        Mon, 29 Sep 2025 14:17:52 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-425c05476fasm62141985ab.43.2025.09.29.14.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 14:17:51 -0700 (PDT)
Date: Mon, 29 Sep 2025 15:17:49 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20250929151749.2007b192.alex.williamson@redhat.com>
In-Reply-To: <53f3ea1947919a5e657b4f83e74ca53aa45814d4.1759070796.git.leon@kernel.org>
References: <cover.1759070796.git.leon@kernel.org>
	<53f3ea1947919a5e657b4f83e74ca53aa45814d4.1759070796.git.leon@kernel.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vejGtRLOrWxPhQKS2-iSQ1oQ8bv0JPuBMMsJVnbzUeM_1759180673
X-Mimecast-Originator: redhat.com
X-Rspamd-Queue-Id: 0A9FC45DC5
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.129.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6UPWUCBTK4OYP57A4UH2IYVSQU2YLPAZ
X-Message-ID-Hash: 6UPWUCBTK4OYP57A4UH2IYVSQU2YLPAZ
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leonro@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 10/10] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6UPWUCBTK4OYP57A4UH2IYVSQU2YLPAZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 28 Sep 2025 17:50:20 +0300
Leon Romanovsky <leon@kernel.org> wrote:
> +static int validate_dmabuf_input(struct vfio_pci_core_device *vdev,
> +				 struct vfio_device_feature_dma_buf *dma_buf,
> +				 struct vfio_region_dma_range *dma_ranges,
> +				 struct p2pdma_provider **provider)
> +{
> +	struct pci_dev *pdev = vdev->pdev;
> +	u32 bar = dma_buf->region_index;
> +	resource_size_t bar_size;
> +	u64 sum;
> +	int i;
> +
> +	if (dma_buf->flags)
> +		return -EINVAL;
> +	/*
> +	 * For PCI the region_index is the BAR number like  everything else.
> +	 */
> +	if (bar >= VFIO_PCI_ROM_REGION_INDEX)
> +		return -ENODEV;
> +
> +	*provider = pcim_p2pdma_provider(pdev, bar);
> +	if (!provider)

This needs to be IS_ERR_OR_NULL() or the function needs to settle on a
consistent error return value regardless of CONFIG_PCI_P2PDMA.

> +		return -EINVAL;
> +
> +	bar_size = pci_resource_len(pdev, bar);

We get to this feature via vfio_pci_core_ioctl_feature(), which is used
by several variant drivers, some of which mangle the BAR size exposed
to the user, ex. hisi_acc.  I'm afraid this might actually be giving
dmabuf access to a portion of the BAR that isn't exposed otherwise.

> +	for (i = 0; i < dma_buf->nr_ranges; i++) {
> +		u64 offset = dma_ranges[i].offset;
> +		u64 len = dma_ranges[i].length;
> +
> +		if (!PAGE_ALIGNED(offset) || !PAGE_ALIGNED(len))
> +			return -EINVAL;
> +
> +		if (check_add_overflow(offset, len, &sum) || sum > bar_size)
> +			return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
> +				  struct vfio_device_feature_dma_buf __user *arg,
> +				  size_t argsz)
> +{
> +	struct vfio_device_feature_dma_buf get_dma_buf = {};
> +	struct vfio_region_dma_range *dma_ranges;
> +	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> +	struct p2pdma_provider *provider;
> +	struct vfio_pci_dma_buf *priv;
> +	int ret;
> +
> +	ret = vfio_check_feature(flags, argsz, VFIO_DEVICE_FEATURE_GET,
> +				 sizeof(get_dma_buf));
> +	if (ret != 1)
> +		return ret;
> +
> +	if (copy_from_user(&get_dma_buf, arg, sizeof(get_dma_buf)))
> +		return -EFAULT;
> +
> +	if (!get_dma_buf.nr_ranges)
> +		return -EINVAL;
> +
> +	dma_ranges = memdup_array_user(&arg->dma_ranges, get_dma_buf.nr_ranges,
> +				       sizeof(*dma_ranges));
> +	if (IS_ERR(dma_ranges))
> +		return PTR_ERR(dma_ranges);
> +
> +	ret = validate_dmabuf_input(vdev, &get_dma_buf, dma_ranges, &provider);
> +	if (ret)
> +		return ret;

goto err_free_ranges;

Thanks,
Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
