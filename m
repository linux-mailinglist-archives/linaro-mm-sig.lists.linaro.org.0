Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AEEC32C62
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 04 Nov 2025 20:26:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39F3C3F868
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Nov 2025 19:26:31 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by lists.linaro.org (Postfix) with ESMTPS id 447413F752
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 19:26:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=KMYTRrX0;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.175 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8909f01bd00so693335685a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Nov 2025 11:26:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1762284378; x=1762889178; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b3vZ52GkNsJGLOkvon3L18RWVKcEn1c510aPuA199YI=;
        b=KMYTRrX0dUAbuSlTMdB3GLTxh4tu1KVKf2oiu7XGNo7iLh+BwDQHtKjdUagXy2Xn0a
         g6rE+9hWLfJOAkAABTZ+FV1yVNdklvSYYkQLS5fFT0e+rku0U3XbusI2w0IAP2gqBHBF
         EWanK/qpGuf21QF1uFRXs2v3MmZjSMg1HO3pQWv1j4o2GCoc/t2PQgjBH1MUqjceTGHi
         jKxuIbA/zpyd+1pC/4Y3ayZnxOC9lFK0NABTjX6MZvMfztb4IjBwvfYiWmGT8H8j+ieJ
         kvZ9BPOVAZBOMMuLy2MdZgmLuYPFU/PDvblwOhDUQpAJ5kcXXl4oHZztZNT9+oSQYkV0
         vXxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762284378; x=1762889178;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b3vZ52GkNsJGLOkvon3L18RWVKcEn1c510aPuA199YI=;
        b=eD/q/hcAXcn6jDb+ijJNwKZjWL8w1e/YVkWxjEyw3QIIt3DovQvC1aZHiBZyYbKHXT
         zRMEdDSapHNDieU+AOE+xcjJxXvU12YHxt70tLbp9KmSceggZrxtE24gLWWrxTpulAnI
         +1KnnqTQq4+Ott6gf8SK/phZ5zWZGYNibsqYV4tfftDantFD85dF6rCFoYOwTlxSFd+D
         V6NxgtYtma5lxKMRZj0r3p72qkbgwROkAwZn7ER1MIn/76EyiQIG7aoxOFaM9eEXOYX0
         vaRPeGYMHFt1++ihebdu5Ij/gdxHrjD06Fv2ZTY68C2bPFS/N6GAPgzu96UFAhsIZ1AB
         lr+g==
X-Forwarded-Encrypted: i=1; AJvYcCWGgLQJXnjCfoQ62hM+PyZSV5Rvmsp37WabnE9CXRMIgEn0ekQqzT2OD8Q8qBbu07YdGYMuKoj9f9PIjbD+@lists.linaro.org
X-Gm-Message-State: AOJu0YyDOKSAZueANbVzOTzGSopVVwRXYQBBwoLKdSW3dc3zL/tpVll0
	EzenbsOGoheAzEig+SOSF65L6kRf21a36JWzmEjRVG6CU1wCfsrxrx18g5nrQX8ScJk=
X-Gm-Gg: ASbGnct9eRsATmPeoJBfwsA6hCbvXCmLRORXlP6D/P3uEiR36xa0NGf/pBbhIEulwgc
	/G3JIAPXJF6YnELQpw7Sl2AqufvPALUEBBrWNVoRZn2KwS1MqHolCZkpOkLGUgFo4EWmbR6kX99
	Yaf+y4zA2XQp/9T2P/UGcTpQQPi72bJ0ZFeLqHnTNwt3kmSoW+3i3q126izNLNiwEfAAlCPusEg
	DqORVajFeSso6QdWPfo+HGNH02J3RDgYbxoFCX8Gb6aDKGljJKPRZP+xGczSXSgYwDAsLA7oEpm
	Kyb95KXsyz6x09OAGVBaBvcI/T5sgHBhhMQ7z5cnpc2RswDV4FK3PU2lat1bB6TjF+0r8m7/TEN
	KYyj21MDOmDdM4pGOussobE2EWrZpmz3n4zoUHtf3meXEJSTJfRijTjV+hzkaZtAIihDWfd5MOb
	NO0O7pvxVKHMiO61MplCLFFMe+W36qFyZ6mNif8idgR5Q+yw==
X-Google-Smtp-Source: AGHT+IFUVGYM+r9VlnujjXwSiyntNScv3JSZn85Gft/uvY+ZvhCxVbalAnSefdp5Rhr2H4+z2gOTFg==
X-Received: by 2002:a05:620a:2a06:b0:86f:aee8:fcbc with SMTP id af79cd13be357-8b220b9ef27mr103417385a.79.1762284377655;
        Tue, 04 Nov 2025 11:26:17 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b0f7bb3e33sm250495385a.39.2025.11.04.11.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 11:26:16 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vGMfY-000000073Bk-1Ldv;
	Tue, 04 Nov 2025 15:26:16 -0400
Date: Tue, 4 Nov 2025 15:26:16 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nicolin Chen <nicolinc@nvidia.com>
Message-ID: <20251104192616.GJ1204670@ziepe.ca>
References: <20251102-dmabuf-vfio-v6-0-d773cff0db9f@nvidia.com>
 <aQpRz74RurfhZK15@Asurada-Nvidia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aQpRz74RurfhZK15@Asurada-Nvidia>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 447413F752
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.175:from];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
Message-ID-Hash: OYEJ7IDRNFPXBWERS3WW7TEQN7RQT5IN
X-Message-ID-Hash: OYEJ7IDRNFPXBWERS3WW7TEQN7RQT5IN
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.l
 inaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 00/11] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OYEJ7IDRNFPXBWERS3WW7TEQN7RQT5IN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 04, 2025 at 11:19:43AM -0800, Nicolin Chen wrote:
> On Sun, Nov 02, 2025 at 10:00:48AM +0200, Leon Romanovsky wrote:
> > Changelog:
> > v6:
> >  * Fixed wrong error check from pcim_p2pdma_init().
> >  * Documented pcim_p2pdma_provider() function.
> >  * Improved commit messages.
> >  * Added VFIO DMA-BUF selftest.
> >  * Added __counted_by(nr_ranges) annotation to struct vfio_device_feature_dma_buf.
> >  * Fixed error unwind when dma_buf_fd() fails.
> >  * Document latest changes to p2pmem.
> >  * Removed EXPORT_SYMBOL_GPL from pci_p2pdma_map_type.
> >  * Moved DMA mapping logic to DMA-BUF.
> >  * Removed types patch to avoid dependencies between subsystems.
> >  * Moved vfio_pci_dma_buf_move() in err_undo block.
> >  * Added nvgrace patch.
> 
> I have verified this v6 using Jason's iommufd dmabuf branch:
> https://github.com/jgunthorpe/linux/commits/iommufd_dmabuf/
> 
> by drafting a QEMU patch on top of Shameer's vSMMU v5 series:
> https://github.com/nicolinc/qemu/commits/wip/iommufd_dmabuf/
> 
> with that, I see GPU BAR memory be correctly fetched in the QEMU:
> vfio_region_dmabuf Device 0009:01:00.0, region "0009:01:00.0 BAR 0", offset: 0x0, size: 0x1000000
> vfio_region_dmabuf Device 0009:01:00.0, region "0009:01:00.0 BAR 2", offset: 0x0, size: 0x44f00000
> vfio_region_dmabuf Device 0009:01:00.0, region "0009:01:00.0 BAR 4", offset: 0x0, size: 0x17a0000000

Great thanks! This means we finally have a solution to that follow_pfn
lifetime problem in type 1! What a long journey :)

For those following along this same flow will be used with KVM to
allow it to map VFIO as well. Confidential Compute will require this
because some arches can't put confidential MMIO (or RAM) into a VMA.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
