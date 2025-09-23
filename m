Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2C8B9707E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 19:30:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 202AB45DEC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 17:30:50 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id F11F03F711
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 17:30:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="IMSAE/uk";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758648646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OFNQwbdODcls1yBrLTyCkOTsxOyxsNLxzpt49nq+oT4=;
	b=IMSAE/ukwgqc7iPO/pa0aMx7byi9JIwj35xAZv2Vthnk9tXxsT6NeacpIv3L9o3ONmLXaW
	sEkMN/ABvJURerQV68uJE6i3lFtF6fu+rsJR3bcFxTAt6tlZxMYJ/al/aGo5IQq6oEYAoN
	5nCPDnyMlXvCEtSr9TV0YSsqUJX89V0=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-658-3wun2hhfNJ27GHkoqPuFSg-1; Tue, 23 Sep 2025 13:30:45 -0400
X-MC-Unique: 3wun2hhfNJ27GHkoqPuFSg-1
X-Mimecast-MFC-AGG-ID: 3wun2hhfNJ27GHkoqPuFSg_1758648645
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-42574155f16so3005445ab.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 10:30:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758648645; x=1759253445;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OFNQwbdODcls1yBrLTyCkOTsxOyxsNLxzpt49nq+oT4=;
        b=MHBgMohmqxatDC8zyJnjOE8bDbRkAEmtOo+ccb8iO4Q0GXQhHwJKKAdUnBVvEbjXQ5
         pLTt4DRfRSqYOoT8Q5FAh3v21ZUdezmAScCZWayA04GtWq7fPEC/Z3bbjvi/FtxngIlZ
         5K1RaRtkEHRGnwK73L+ehEj45UBsKVkBZT2qb88SDo1lYCAed3A0jT4uT9vk/Y0cYaid
         V4kTO2CRLL86Q68DGksv0fWlN1iloGCPr5c5I6BHksLflOrlJYZ2ZX3GO8l84Hgh6a+S
         Nc7NPyt065ViNYR2xWT24BonAPyqQKXED+/4i0eOZLSrvZwNoeQsIzF+AiazqarGqh/h
         grcg==
X-Forwarded-Encrypted: i=1; AJvYcCWsGpPawgtgNYVyNsm3q4YJKthMwDeHAusNAECmZp3YivbvNu63uz1byU4VKyTDi5uM8QD+1cr2EsDvH7fS@lists.linaro.org
X-Gm-Message-State: AOJu0YxN+DQaZyQ7E7v64IkmMesKIO3FvLtV0LsjDe8WrT2x2+PJ2xXK
	50l/vE3bVqaYslSzdVKCDUjirJ7MG0WKhlGFlgyBtokz9mNrVqKmMkLy35ThRKxBzjfUk8BVAA+
	U5y6JKNwPmAmcxiHi7BKPzcRNWMBJdk8KhvpTSEfL6Q9VE8qN51RCYWPsa5YcY3GzogFq
X-Gm-Gg: ASbGncsGYdww0r/PSIlFv+OApZaBPSbSI/W1VYYARw5coKoszXtqLEQ/O9+sttOrbpk
	BW8r+bzDlo+VkoYbysWSIv1saTEQSnquRzmOBOMGlGFs84rtgnX/FaOSIXUs2kQY6J/t8U+GzHd
	//8fkf2N8icXMHK/7ROpOAreeEbTuOQDv4mQ7eBOg5AkCHMqgu8pFwKAuKWbtQtZ0+E8PtT7PiH
	AyOxGgZy81Deb4mi6MkaZNYtQvtjFri8D6OEWRHkWaghtuErPM9dhFwmyX/GKyXP9C9ZYzvWIDR
	Yye0TpEjbEEDQBCY4uorgAXE9cEEq1iu0LM2B4t3+6Y=
X-Received: by 2002:a05:6e02:164d:b0:400:7d06:dd6d with SMTP id e9e14a558f8ab-42581e09c50mr18781085ab.1.1758648644623;
        Tue, 23 Sep 2025 10:30:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNobmhXZYu8wcE6bAQtE0C6wCF0m0+GFNpZFLyv2Bpb6JP547FE77pkIiIGw0EG9S0P84Gyw==
X-Received: by 2002:a05:6e02:164d:b0:400:7d06:dd6d with SMTP id e9e14a558f8ab-42581e09c50mr18780695ab.1.1758648644175;
        Tue, 23 Sep 2025 10:30:44 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-566127693e0sm275326173.30.2025.09.23.10.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 10:30:43 -0700 (PDT)
Date: Tue, 23 Sep 2025 11:30:41 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20250923113041.38bee711.alex.williamson@redhat.com>
In-Reply-To: <20250923150414.GA2608121@nvidia.com>
References: <cover.1757589589.git.leon@kernel.org>
	<1e2cb89ea76a92949d06a804e3ab97478e7cacbb.1757589589.git.leon@kernel.org>
	<20250922150032.3e3da410.alex.williamson@redhat.com>
	<20250923150414.GA2608121@nvidia.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: w7CybWUy_FpTSFpStb5v5qaB71p7gmzMIw3yI-zKO8c_1758648645
X-Mimecast-Originator: redhat.com
X-Rspamd-Queue-Id: F11F03F711
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.133.124:from];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RLWI5D3X4PEA46ZBZZUIKHJ4COWAJOR3
X-Message-ID-Hash: RLWI5D3X4PEA46ZBZZUIKHJ4COWAJOR3
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leon@kernel.org>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/10] PCI/P2PDMA: Refactor to separate core P2P functionality from memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RLWI5D3X4PEA46ZBZZUIKHJ4COWAJOR3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 23 Sep 2025 12:04:14 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Mon, Sep 22, 2025 at 03:00:32PM -0600, Alex Williamson wrote:
> > But then later in patch 8/ and again in 10/ why exactly do we cache
> > the provider on the vfio_pci_core_device rather than ask for it on
> > demand from the p2pdma?  
> 
> It makes the most sense if the P2P is activated once during probe(),
> it is just a cheap memory allocation, so no reason not to.
> 
> If you try to do it on-demand then it will require more locking.

I'm only wondering about splitting to an "initialize/setup" function
where providers for each BAR are setup, and a "get provider" interface,
which doesn't really seem to be a hot path anyway.  Batching could
still be done to setup all BAR providers at once.

However, the setup isn't really once per probe(), even in the case of a
new driver probing we re-use the previously setup providers.  Doesn't
that introduce a problem that the provider bus_offset can be stale if
something like a BAR resize has occurred between drivers?

Possibly the providers should be setup in PCI core, a re-init triggered
for resource updates, and the driver interface is only to get the
provider.  Thanks,

Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
