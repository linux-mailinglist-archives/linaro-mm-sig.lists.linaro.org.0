Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FAFBAE17F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 18:53:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EEAF45D5A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 16:52:58 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 743DF44B31
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 16:52:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=C4CvMKfn;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759251175;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JryoONnZtvrch8iWe5kQa/bp3US7CnLH1VFoC2oPQRw=;
	b=C4CvMKfnfsBwv/UV11NrYVILm3XQU5yOggbiFAlOCcDCemcY97Cn4bwXobrQuRvlzMI4Oz
	mrawaozBGewhSKsyc1yfWzDQp+PgIzf+CkCF80PggI25T6UCLny6qW6Av7sLEG7ZZin66O
	2hIxka+TFnVE75hvoNWCWnFId5SBkEY=
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-70-2Cgfqk0fOa6mPz8I7493Ag-1; Tue, 30 Sep 2025 12:52:51 -0400
X-MC-Unique: 2Cgfqk0fOa6mPz8I7493Ag-1
X-Mimecast-MFC-AGG-ID: 2Cgfqk0fOa6mPz8I7493Ag_1759251171
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7aba0808204so1557665a34.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 09:52:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759251171; x=1759855971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JryoONnZtvrch8iWe5kQa/bp3US7CnLH1VFoC2oPQRw=;
        b=nrmdvr+w74yVvagOlGsOGg0l6ID5OhlDvGeT1MDPOlMeeEe6MXdjFSOpwNjWCrwhWE
         6jiQZbGm699PkflylfWAcEVH9FlQWxt8TRH6U3Au2bMXkuLJCNUxNx6LqDDuKAFzg60G
         sS02qpG7lqfUR1TmUoa9zmun7L4wAaN0v0K66YEubnHMEEF98DEOPlw//iHMsHGMmWBR
         P3QfL+rT+eXflZ5k/lG5fgdfEosr+hjtCO8hfy1i5DgNqtrDALflW8rhMFlPrT40IVN6
         CYljctd9zP/IzGJQgHiyNOAm97ySJuuiHYCvMa4tu4mGGD+eEUVQpVccIaL+oGd/2Lel
         FEjw==
X-Forwarded-Encrypted: i=1; AJvYcCWENv68Sv+508qyMeN0cKHnHOAApol04O7Pui5A1JEvUkbMPXFI5dZhFPYhNEg1YlrNscQwufyCpvB2rwAr@lists.linaro.org
X-Gm-Message-State: AOJu0YzL8htgs1vW8/trHDcNu1FbnK9hv634FOGXAiInAZu3dIZ5EW+a
	yUYS+0yq3bFRVDL3rmTHg5cCrkJAJyZSJ7CwNe8noidblYAP2e5PRIHwZZYh15iAiNiQ+90AXCJ
	FnNvHy9meUd65cbkAbzXMo7/CVIo1YFC4+bzmv5mZ0c3L1MQh7fjUozca1FoPY3JBrIwc
X-Gm-Gg: ASbGncsahkrtzkcYjwfyR7Qjq0dYrtechAgCsJkvkmpsiFciRGkDXJBsRAfq8U3x6V7
	K7Vj1p6S9CvWz8dUBz3xWy3ZeUZn+rosZ4SelunyFtN6V/PlfXKUDQ/swj2pFyEns3RXW3+gST0
	pIdcwhK53jGxbaPAEb+jFA5MRfB5c2xvTd2zRtS4BJQdGBk7W7AYr4EZD+drAWUdn+hy6B9+q+6
	dL8uplwYVtWpaU8fGOPUm1Ae9N66LO56EprbymDJxdfHfH8tmYmGsjj5rShWQSxQYR0Srm0jHlU
	mr2So3hPYdPIty7Zmf+JCi9VhBMQ3UxFlDb1DKTnjRpsmwr2
X-Received: by 2002:a05:6808:f86:b0:438:33fd:317c with SMTP id 5614622812f47-43fa41bd61fmr82472b6e.3.1759251171053;
        Tue, 30 Sep 2025 09:52:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwZ3/lKZz7Fdu2TvHNlTbKRk5qveSl6rvSejYaxAMAP02EZ6HQb/uugFp+9XcOcN4obhcZxg==
X-Received: by 2002:a05:6808:f86:b0:438:33fd:317c with SMTP id 5614622812f47-43fa41bd61fmr82463b6e.3.1759251170626;
        Tue, 30 Sep 2025 09:52:50 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43f51238c63sm2746753b6e.22.2025.09.30.09.52.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 09:52:49 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:52:47 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20250930105247.1935b553.alex.williamson@redhat.com>
In-Reply-To: <20250930143408.GI2942991@nvidia.com>
References: <cover.1759070796.git.leon@kernel.org>
	<53f3ea1947919a5e657b4f83e74ca53aa45814d4.1759070796.git.leon@kernel.org>
	<20250929151749.2007b192.alex.williamson@redhat.com>
	<20250930090048.GG324804@unreal>
	<CH3PR12MB754801DC65227CC39A3CB1F3AB1AA@CH3PR12MB7548.namprd12.prod.outlook.com>
	<20250930143408.GI2942991@nvidia.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ihnXckjdEeFrvU9Idrdhktce1WUeFfjqRJd9ozcZijw_1759251171
X-Mimecast-Originator: redhat.com
X-Rspamd-Queue-Id: 743DF44B31
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[redhat.com:dkim];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.133.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.210.70:received,170.10.133.124:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HMXMCEUTYDKWSJD24YUMZL77D3XI6AYJ
X-Message-ID-Hash: HMXMCEUTYDKWSJD24YUMZL77D3XI6AYJ
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Shameer Kolothum <skolothumtho@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 10/10] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HMXMCEUTYDKWSJD24YUMZL77D3XI6AYJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 30 Sep 2025 11:34:08 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Sep 30, 2025 at 12:50:47PM +0000, Shameer Kolothum wrote:
> 
> > This is where hisi_acc reports a different BAR size as it tries to hide
> > the migration control region from Guest access.  
> 
> I think for now we should disable DMABUF for any PCI driver that
> implements a VFIO_DEVICE_GET_REGION_INFO
> 
> For a while I've wanted to further reduce the use of the ioctl
> multiplexer, so maybe this series:
> 
> https://github.com/jgunthorpe/linux/commits/vfio_get_region_info_op/
> 
> And then the dmabuf code can check if the ops are set to the generic
> or not and disable itself automatically.
> 
> Otherwise perhaps route the dmabuf through an op and deliberately omit
> it (with a comment!) from hisi, virtio, nvgrace.
> 
> We need to route it through an op anyhow as those three drivers will
> probably eventually want to implement their own version.

Can't we basically achieve the same by testing the ioctl is
vfio_pci_core_ioctl?  Your proposal would have better granularity, but
we'd probably want an ops callback that we can use without a userspace
buffer to get the advertised region size if we ever want to support a
device that both modifies the size of the region relative to the BAR
and supports p2p.  Thanks,

Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
