Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 271E2C70DA2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 20:41:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF46A3F90A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 19:41:38 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by lists.linaro.org (Postfix) with ESMTPS id 6BAA73F786
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 19:41:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=iSdWrEVe;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.51 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-88051279e87so1038416d6.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 11:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763581282; x=1764186082; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1xvMcuBzJSIcfclCVWQ2hNnnKt+oezBHS+z89ygHsa4=;
        b=iSdWrEVeObA7PwvIohdJSXajiU6x1UqDBPwlXtLIDZVO4f/RAHxqigYIJ/wau0DM+a
         HC+cHfJGwM4pCxXlXq1SvluR3+f28EnoFWFk1pVNyyRogJTc45WOu12ftrlbqWaZb9Oc
         2JrlaYnRW/4OMP6TGzK1Sd7JeUYJj4HFIssQzitrgel26+KwTuLlLHeEsLk6UGHqUDqP
         zZqNrJ2SVcklzTFkRXaHsNw2YnQCiSdH0W8M9/0nM7c8QI2A/oV8tAyOS0IhDg5t2vq+
         MVuoHgcXfhtW00Qry8xDyGiKZ68px1NL2aCPqJ+yDWGXEi1QJqRTojCeLhC8ZI1bu0Wa
         swRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763581282; x=1764186082;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1xvMcuBzJSIcfclCVWQ2hNnnKt+oezBHS+z89ygHsa4=;
        b=QmRbCclT2hwk31EOSOOx+HZkQ2mE5KMmBmq12CLI1lOoF0np9KtnFENj8m3r1Cxivk
         oimHAuJLQOGymGwdaKEK6YWJXFTvfYZkKcDbocO4HYdOCNSBR4stzqjJjLJ4TaaAt5I0
         aKsVquwoFFXtiffdIlvRZ67VL0xDcdv80C+UOuExggjC48Q50zu4FljWLbhBIAg+ewD+
         Gz2i08pkxNAiWtPXt5P5j99/kb6uGjMRHy9Di4viqyYSvVysMnwuIgZHFRxN1EX0G17L
         iNOV6WR0lzUgfyAozFbSAyjP0ekCPyvMDOxnTK5qznDiPTCWV3l6x5xwcW+bdllDNC//
         Li2A==
X-Forwarded-Encrypted: i=1; AJvYcCWEgkhFTs2QG5N123wwVPnQ2xNRE1Z2XImBrxntr4NiAy4FeE7c3+a6gPYdDAlotVn4qs2Y4qFgaWC2KMmd@lists.linaro.org
X-Gm-Message-State: AOJu0YzI9XG0kPU88AEL28itS9n5hlK/FDIt3Hc+XFuZeR0HvKEzxtxd
	tBrXaRaFJznqJK6fqK5PYWTuNSSbW8+8LC64cn80iLBjO009nyoM4oRpJluGZNa5G4I=
X-Gm-Gg: ASbGncvL2n9yqfVYSaQeU/b5B7uABIJEDkHYZaaZc7TI4IOS0stGZJWUXRxAykgHO4h
	HIEf0LK0o8dygMKa+IZDvNu71F6e+Nlmfr8YnlACZ7togFHjwoggiJ0TX/veHHF22CBI3WQ/VIj
	nyfDIKAgV53ceHmQJ8V//usES9Abao9B8a5p9H/7C1Lqm0OlV36c6BSahBvgTkHiSbHKOyhuHP0
	MO1n/a0yGi43og+fHf4MJudNvN0XLM9uczcsYihFL1hPorl6wAn2NCu2uHGuWlSqoSworMi24Mm
	SujfSHjgNUfJdvsru84JWIV/DtZhz/d6rdMsGhA0XG+HQ8SYcJ6PMFD/jqfYdNUSefdmKZ9fJgJ
	GDVSz5VjlETlirTWLzc4rXU0oakyFJ98YZPhfs4re9m5r3gz0xYdDSPbsRMzxSqJnpMzqnFDa5F
	qBikzAQi3i7oaijVoP5A1WVVn8TbGuPxgWEDVkotdjP7Voeh6FVmqFb9+/
X-Google-Smtp-Source: AGHT+IEkkwKLlD7bgArhzanqcgyJXrNkTCLmX/zPs7UZp1FVMILPKD98FXvYwEVi1NAfBqdDip+8Dg==
X-Received: by 2002:a05:6214:4a84:b0:7d2:f787:1978 with SMTP id 6a1803df08f44-8846ed7f961mr1725046d6.3.1763581281958;
        Wed, 19 Nov 2025 11:41:21 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8846e47115bsm1948696d6.21.2025.11.19.11.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 11:41:21 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vLo3M-00000000bbB-3imG;
	Wed, 19 Nov 2025 15:41:20 -0400
Date: Wed, 19 Nov 2025 15:41:20 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20251119194120.GR17968@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-10-fd9aa5df478f@nvidia.com>
 <BN9PR11MB527610F3240E677BE9720C2B8CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251118142849.GG17968@ziepe.ca>
 <BN9PR11MB5276EF47D26AB55B2CD456EE8CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN9PR11MB5276EF47D26AB55B2CD456EE8CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.51:from];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.219.51:from];
	DNSWL_BLOCKED(0.00)[47.55.120.4:received];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6BAA73F786
X-Spamd-Bar: ---
Message-ID-Hash: SMDQ36BZISTIGM5QSSPASLVYNUUYDXEE
X-Message-ID-Hash: SMDQ36BZISTIGM5QSSPASLVYNUUYDXEE
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-doc@
 vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 10/11] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SMDQ36BZISTIGM5QSSPASLVYNUUYDXEE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 18, 2025 at 11:56:14PM +0000, Tian, Kevin wrote:
> > > > +	down_write(&vdev->memory_lock);
> > > > +	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm)
> > > > {
> > > > +		if (!get_file_active(&priv->dmabuf->file))
> > > > +			continue;
> > > > +
> > > > +		dma_resv_lock(priv->dmabuf->resv, NULL);
> > > > +		list_del_init(&priv->dmabufs_elm);
> > > > +		priv->vdev = NULL;
> > > > +		priv->revoked = true;
> > > > +		dma_buf_move_notify(priv->dmabuf);
> > > > +		dma_resv_unlock(priv->dmabuf->resv);
> > > > +		vfio_device_put_registration(&vdev->vdev);
> > > > +		fput(priv->dmabuf->file);
> > >
> > > dma_buf_put(priv->dmabuf), consistent with other places.
> > 
> > Someone else said this, I don't agree, the above got the get via
> > 
> > get_file_active() instead of a dma_buf version..
> > 
> > So we should pair with get_file_active() vs fput().
> > 
> > Christian rejected the idea of adding a dmabuf wrapper for
> > get_file_active(), oh well.
> 
> Okay then vfio_pci_dma_buf_move() should be changed. It uses
> get_file_active() to pair dma_buf_put().

Makes sense, Leon can you fix it?

Thanks,
Jason 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
