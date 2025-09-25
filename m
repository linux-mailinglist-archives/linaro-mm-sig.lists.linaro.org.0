Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE133BA1CB7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 00:31:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E1CA450A6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 22:31:41 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id E186143C7C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Sep 2025 22:31:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=C+yZubRg;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758839497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pPGBYTkBK6lmMsctQg86rFzc+ubUYRnHqSeaFKAdA0w=;
	b=C+yZubRgK7Xuwq8ZYbAwrcRYC9QJmxmKZYhbFEgZZzGy0wcSpRtZdmQIn5cJi+4/kE7I0b
	H7LRxQ7lvfwPszHznmJsqnXlq31xtlX1UeKVoTth1DoVwhxeCom1E1069qr7z2twjZ/ElL
	OZg7vgVrWNEhfNV/vmzboGSLcCUVDtI=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-510-tPjbUZ9kNG6ZtE_hIAoBGw-1; Thu, 25 Sep 2025 18:31:36 -0400
X-MC-Unique: tPjbUZ9kNG6ZtE_hIAoBGw-1
X-Mimecast-MFC-AGG-ID: tPjbUZ9kNG6ZtE_hIAoBGw_1758839495
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-4247de28df5so3347145ab.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Sep 2025 15:31:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758839495; x=1759444295;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pPGBYTkBK6lmMsctQg86rFzc+ubUYRnHqSeaFKAdA0w=;
        b=LRgu+9RuGRDWt9MCm3pib5POr9QRbKAWtY9kHreevzW2keCFEvjI2tCZ68S/J4I+gE
         aWsLG4wkSO315JD5mPMfNCtjNOv96q7b0UGC4q0gdJMgFlaD5TQ/1fttOZxCs9q65L0z
         Rwymz/elXWYMj5p3QCgQM/wfhcz3ZjW+/el070oMQkFVtWhYRUyhn99NnJjiAaUtrFki
         fGs23mJ1mXVhEXPEkM5A5SpcQaYLoidHlgk56abLfsuUp3U7eiF0y3tcEIWxU29OzC/W
         JE24aYm2caFcfbuO3b3a/tTtj3PeQopSWO4UvVoFpe8UBNDbjJ7p7uSwtGyOOt0RylqV
         3/OA==
X-Forwarded-Encrypted: i=1; AJvYcCUUf5IWS6vn0+NMic+T2R9f1xtanodB76+9q6TW5j432T9NXn0Y2Wc39IVziTQeCYtZkcKcoI4HhX5qz1Ur@lists.linaro.org
X-Gm-Message-State: AOJu0YzQMuq+m2bsclqIrEzIoRX9ttDEFG1JgLlc7DTYbqM7WffNmXUT
	7TceLIIsZeZmv5wnUeXQqt3Ed3zRzYw6pKuDZlzaSmauD46UK3N2VQZNPPvhRGFCaGqVlgjTkYN
	Hh42paUZHicjfVoLdaksaTpl3vzRpZWhYvLZeJk6xZUQpuX0SMZNYXZLNCwHQv40JQQ1h
X-Gm-Gg: ASbGncvooHf8v4WWYtZdHzfUR9PfRb9wi9WPTiCzdiKOXcefOSnBfK0bjgFGT546sMV
	jcS76VuRT3Suh4ffWCQVre+60M0tZ6yKcUIPwXiDwUW+nNVF+sw9EKYSso7P9WezSO8+IPl3CQ8
	G1R08Yptf7RWNnW5kJeoV1uyKC7MI39KklpmKRt95BGXTmFXyH1CWE3FRkINfXjemtXS9uAsv16
	BoD79QEFlqQLRRGe4tOXhG0lfAugjekWelluqg4co+YaaI1ZdXFqtmyrRZxYkV79df3GMeD5MMB
	ftuwjJQyTURSV5K86v/qhOyvJ0V7euH6uuZIwY3lqFM=
X-Received: by 2002:a92:d987:0:b0:424:80e6:9e8b with SMTP id e9e14a558f8ab-42595661562mr24720185ab.7.1758839495372;
        Thu, 25 Sep 2025 15:31:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBjWzVlsd5kVvaGcIPZVt9Dy5vtGZ7X7lNybnyhnS6f36pgd3Q/xbJFuK0zszjvTKZaW8Iag==
X-Received: by 2002:a92:d987:0:b0:424:80e6:9e8b with SMTP id e9e14a558f8ab-42595661562mr24719995ab.7.1758839494991;
        Thu, 25 Sep 2025 15:31:34 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-56a69a1c574sm1211405173.40.2025.09.25.15.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 15:31:34 -0700 (PDT)
Date: Thu, 25 Sep 2025 16:31:31 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20250925163131.22a2c09b.alex.williamson@redhat.com>
In-Reply-To: <20250925115308.GT2617119@nvidia.com>
References: <cover.1757589589.git.leon@kernel.org>
	<1e2cb89ea76a92949d06a804e3ab97478e7cacbb.1757589589.git.leon@kernel.org>
	<20250922150032.3e3da410.alex.williamson@redhat.com>
	<20250923150414.GA2608121@nvidia.com>
	<20250923113041.38bee711.alex.williamson@redhat.com>
	<20250923174333.GE2608121@nvidia.com>
	<20250923120932.47df57b2.alex.williamson@redhat.com>
	<20250925070314.GA12165@unreal>
	<20250925115308.GT2617119@nvidia.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: uERDWqyl8yAaXNmP1OQUco9qq9ksvXQ5HiN14WHXLrg_1758839495
X-Mimecast-Originator: redhat.com
X-Rspamd-Queue-Id: E186143C7C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.133.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QWNEIKY35NQDSBRIT56DUM73KVNAQG6X
X-Message-ID-Hash: QWNEIKY35NQDSBRIT56DUM73KVNAQG6X
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leon@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/10] PCI/P2PDMA: Refactor to separate core P2P functionality from memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QWNEIKY35NQDSBRIT56DUM73KVNAQG6X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 25 Sep 2025 08:53:08 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Thu, Sep 25, 2025 at 10:03:14AM +0300, Leon Romanovsky wrote:
> 
> > > It would at least make sense to me then to store the provider on the
> > > vfio_pci_dma_buf object at the time of the get feature call rather than
> > > vfio_pci_core_init_dev() though.  That would eliminate patch 08/ and
> > > the inline #ifdefs.  
> > 
> > I'll change it now. If "enable" function goes to be "get" function, we
> > won't need to store anything in vfio_pci_dma_buf too. At the end, we
> > have exactly two lines "provider = priv->vdev->provider[priv->bar];",
> > which can easily be changed to be "provider = pcim_p2pdma_provider(priv->vdev->pdev, priv->bar)"  
> 
> Not without some kind of locking change. I'd keep the
> priv->vdev->provider[priv->bar] because setup during probe doesn't
> need special locking.

Why do we need to store the provider on the vfio_pci_core_device at
probe though, we can get it later via pcim_p2pdma_provider().  Ideally
we'd take the opportunity to pull out the setup part of the _provider
function to give us an initialization interface to use at probe time
without an unnecessary BAR# arg.  Thanks,

Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
