Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jIzuMIkAK2od1AMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 20:38:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4792C6747DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 20:38:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=Y66pKvyJ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3998340A3E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 18:38:00 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id CDDDC3F76E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 18:37:48 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2bf2d865383so14725ad.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 11:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781203068; x=1781807868; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/TFfh87PJEUZx1rJ8R/E1mrJDSDu5E1AnG3uHnDgisU=;
        b=Y66pKvyJXOTnx1QlK6KpNQOnuTPBN28H2IaNMM0s2HWz2q9HhSvMG0b8qKHi3xLMT/
         Fi8i6n1Mrt9J9w/B7VLs7qccv0yq2sS8w06dT4pc8Vl6fPlL8XZTysDn2fi6cUok2yDc
         bFQhoIAssUB43hOF4IKjbkncSQyk5MqM7IJUO3ujtX/cqzn8lSuMV4EVyFLCsA8zaTV+
         k5Z799FwxhdIKV/eZo67GXZdcyyl19oeagC5nPZ4BprzSL2oZoZ8fJSts7jOy5byC6Vn
         xORght/aYxcyfbYSzZI4YuedpacSxGH7oz7uXcFL7jMaMj04q3sXe3c6fayg9avO2pNV
         AyRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781203068; x=1781807868;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/TFfh87PJEUZx1rJ8R/E1mrJDSDu5E1AnG3uHnDgisU=;
        b=IprBAHLCcLAMZ/hVRAIFA4rsLrQkc5S2dDDztHxE1I95kWVCcn/AHs4xKSaamqZfTi
         R07kgWgLrBZR8J+MIm7GmheUmRdfD2cn4wiuZHFxQVBDjUr4K3AlXRS4c9PrjSfqRP/N
         KcFJa7RpLFRzsqZuyjfdfIadaVED/pYtQWqSKHoLkGN/AnMl7XTADFU/ox/PpQgaLdbU
         3Nbl8lJyQTnaTvs+vCVJPh+Vj1bK8Nc527zmr56RGta871bk5g5OwCKP6Mag+IpBoRNx
         KkLUBec8T8Lrt2SNJ2hR7ajkZTc8hmr6pK/tFHLBAkSns6PINEfLO8AhYfi8GUwPsEkU
         ZviQ==
X-Forwarded-Encrypted: i=1; AFNElJ+3RRVfEvJH7zHEaVlSNfgGmEa7nR7ZYQXY2NTCzDtwT8CdKnRcGjlXjenh8neQRSq38MKLWlNvSa3iy82O@lists.linaro.org
X-Gm-Message-State: AOJu0Yy39IqumfTmxXUhHBlrvJMi1vT54UmXLNEwWeQ/fXsRu6XFzFiM
	qxFrsUqqptOoIvU1kJFJOz67kbOcO8PqqTJRhRsi19tRARMVKgHU1uioWy4DhEywBg==
X-Gm-Gg: Acq92OEiElrXOtnib5QN3Li8SirG+Xu8GXl7Pa8n9moNedpToMN/hqKZ7bSv8b9YKxl
	fsyYlHwUmQeLa6p4VKFLyYS/IgXrzUO5LyR0Rp7JqLPBRcdFQYF53897OtZmRsdmFsSmix6pl6n
	1hDJbbK+09cgbCnVpbKDc+TPexQ4orpMvlWEjTw0jHP9aRhP6oDNzNygrxg5P1HQMuwG6V6De7X
	QSFhrMbmdFyqgaaDNP01xrWVOHh/36XI+jxvRXnPLJ/uC/0iYSLH/vwpJnMEy32kv3jD4njt///
	qkD+1ToUBlhVzbT9QXCu74N8VRfGq86qrmPxPmJdDCg7vQnp8LV1b16B7/ccrJj9J+uKU1/vwqj
	fAUsG+eTYeHyGn/WHLXOldyTRtJre8UtmTyJEPxHBwAGwwnHyAwovYWCzbZgQp62yayVLydq5mu
	xDhOXbchdaVyr7yCcKse7vF0tJbFosurD9ZJGpRntOLruzqb2efvHUmUt+yqjv
X-Received: by 2002:a17:902:ce02:b0:2bf:b01:2b4c with SMTP id d9443c01a7336-2c3e3f69092mr255655ad.9.1781203067344;
        Thu, 11 Jun 2026 11:37:47 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c865880c00dsm2085451a12.24.2026.06.11.11.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 11:37:46 -0700 (PDT)
Date: Thu, 11 Jun 2026 18:37:39 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <aisAc1HRn2Wa4F9p@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-2-matt@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610154327.37758-2-matt@ozlabs.org>
X-Spamd-Bar: ----
Message-ID-Hash: MNMYB3VGK6T24XEN3VUMSU2MIX25HGGE
X-Message-ID-Hash: MNMYB3VGK6T24XEN3VUMSU2MIX25HGGE
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MNMYB3VGK6T24XEN3VUMSU2MIX25HGGE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4792C6747DB

On Wed, Jun 10, 2026 at 04:43:15PM +0100, Matt Evans wrote:
> The P2PDMA code currently provides two features under the same
> CONFIG_PCI_P2PDMA option:
> 
>  1.  Locate providers via pcim_p2pdma_provider()
>  2.  Manage actual P2P DMA
> 
> Some drivers (such as vfio-pci) depend on 1, without having a hard
> dependency on 2.
> 
> A future commit expands the use of DMABUF in vfio-pci for non-P2P
> scenarios, relying on pcim_p2pdma_provider() always being present.  If
> that depended on CONFIG_PCI_P2PDMA, it would make vfio-pci only
> available if CONFIG_ZONE_DEVICE is present (e.g. 64-bit systems), even
> when P2P is not needed.
> 
> To resolve this, introduce CONFIG_PCI_P2PDMA_CORE and refactor the
> basic provider functionality into a new p2pdma_core.c file.  This is
> available even if the CONFIG_PCI_P2PDMA feature is disabled (or
> unavailable due to !CONFIG_ZONE_DEVICE).  Then, drivers can enable any
> additional P2P features with the original CONFIG_PCI_P2PDMA (available
> when CONFIG_ZONE_DEVICE is set).
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>
> ---
>  MAINTAINERS                |   2 +-
>  drivers/pci/Kconfig        |  10 ++--
>  drivers/pci/Makefile       |   1 +
>  drivers/pci/p2pdma.c       | 109 ++--------------------------------
>  drivers/pci/p2pdma.h       |  29 +++++++++
>  drivers/pci/p2pdma_core.c  | 118 +++++++++++++++++++++++++++++++++++++
>  include/linux/pci-p2pdma.h |  24 ++++----
>  include/linux/pci.h        |   2 +-
>  8 files changed, 174 insertions(+), 121 deletions(-)
>  create mode 100644 drivers/pci/p2pdma.h
>  create mode 100644 drivers/pci/p2pdma_core.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c2c6d79275c6..b21523b3bd8b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20617,7 +20617,7 @@ B:	https://bugzilla.kernel.org
>  C:	irc://irc.oftc.net/linux-pci
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git
>  F:	Documentation/driver-api/pci/p2pdma.rst
> -F:	drivers/pci/p2pdma.c
> +F:	drivers/pci/p2pdma*
>  F:	include/linux/pci-p2pdma.h
>  
>  PCI POWER CONTROL
> diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> index 33c88432b728..59d70bc84cc9 100644
> --- a/drivers/pci/Kconfig
> +++ b/drivers/pci/Kconfig
> @@ -206,11 +206,7 @@ config PCIE_TPH
>  config PCI_P2PDMA
>  	bool "PCI peer-to-peer transfer support"
>  	depends on ZONE_DEVICE
> -	#
> -	# The need for the scatterlist DMA bus address flag means PCI P2PDMA
> -	# requires 64bit
> -	#
> -	depends on 64BIT
> +	select PCI_P2PDMA_CORE
>  	select GENERIC_ALLOCATOR
>  	select NEED_SG_DMA_FLAGS
>  	help

Nit: Did we drop depends on 64BIT intentionally here? I guess the full
PCI_P2PDMA stack still selects NEED_SG_DMA_FLAGS? IIRC, NEED_SG_DMA_FLAGS
doesn't select 64BIT?

With the nit (and Bjorn's comments addressed)
Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
