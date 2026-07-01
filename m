Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kyaXHnKDRWqYBQsAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 23:15:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 045A56F1C75
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 23:15:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=HQvde2K6;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE0EF40536
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2026 21:15:28 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 257ED3F91C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 21:15:18 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 81B75600AF;
	Wed,  1 Jul 2026 21:15:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 110651F000E9;
	Wed,  1 Jul 2026 21:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782940517;
	bh=ST5XJ3qWoqmoFi2Pnu/be6GaGojp4wfpLlZ4lIOZGEA=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=HQvde2K6xIG4LDeLWg1opVnBNcOByUfAUML5CkvgpbeOXkd6QuA7qjtTXu8+5Q1fg
	 eJQth6EWn5+/7UADpEFS2icad+ZmPZlpGfeug+wikYLqcpys5oSKAKD48T7TawM62O
	 CMZjbLgWOL2Yf21DSV1ajWzvE7OcDPhWWHXZ209DKfoJT4ieRfPCnVFXMtDy9t7feY
	 fhPDjKqZuOku4of0ERbySgBg1SYHXWaccC1rYi/HAatyMwcg0bPP7sR4Y5vo7zqW2N
	 nciM6RZrdV8psIIcdQQ1tp2jjZ1dUDnqatqYgbfKZYdAEpr31cFkgqlM3h0XwpZmtx
	 fa0OWKI3I03uA==
Date: Wed, 1 Jul 2026 16:15:15 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <20260701211515.GA351212@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701171245.90111-2-matt@ozlabs.org>
X-Spamd-Bar: ------
Message-ID-Hash: MRHFLLMPU73BU7JVHOMCKR4KTHC2X3FK
X-Message-ID-Hash: MRHFLLMPU73BU7JVHOMCKR4KTHC2X3FK
X-MailFrom: helgaas@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Kevin Tian <kevin.tian@intel.com>, Pranjal Shrivastava <praan@google.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 01/10] PCI/P2PDMA: Split pool-related cleanup out of pci_p2pdma_release()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MRHFLLMPU73BU7JVHOMCKR4KTHC2X3FK/>
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
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[helgaas@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:kevin.tian@intel.com,m:praan@google.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ozlabs.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 045A56F1C75

On Wed, Jul 01, 2026 at 06:12:13PM +0100, Matt Evans wrote:
> Preparing for a refactor in a subsequent patch, split the pool-related
> release code into a new pci_p2pdma_release_pool() function.
> 
> This allows future compile-time selection of a null implementation for
> pci_p2pdma_release_pool(), when p2pdma.c is refactored into core- and
> P2P-related files.
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/p2pdma.c | 24 ++++++++++++++----------
>  1 file changed, 14 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
> index 7c898542af8d..a5a1baebc34e 100644
> --- a/drivers/pci/p2pdma.c
> +++ b/drivers/pci/p2pdma.c
> @@ -226,6 +226,17 @@ static const struct dev_pagemap_ops p2pdma_pgmap_ops = {
>  	.folio_free = p2pdma_folio_free,
>  };
>  
> +static void pci_p2pdma_release_pool(struct pci_dev *pdev,
> +				    struct pci_p2pdma *p2pdma)
> +{
> +	if (!p2pdma->pool)
> +		return;
> +
> +	synchronize_rcu();
> +	gen_pool_destroy(p2pdma->pool);
> +	sysfs_remove_group(&pdev->dev.kobj, &p2pmem_group);
> +}
> +
>  static void pci_p2pdma_release(void *data)
>  {
>  	struct pci_dev *pdev = data;
> @@ -237,15 +248,8 @@ static void pci_p2pdma_release(void *data)
>  
>  	/* Flush and disable pci_alloc_p2p_mem() */
>  	pdev->p2pdma = NULL;
> -	if (p2pdma->pool)
> -		synchronize_rcu();
> +	pci_p2pdma_release_pool(pdev, p2pdma);
>  	xa_destroy(&p2pdma->map_types);
> -
> -	if (!p2pdma->pool)
> -		return;
> -
> -	gen_pool_destroy(p2pdma->pool);
> -	sysfs_remove_group(&pdev->dev.kobj, &p2pmem_group);
>  }
>  
>  /**
> @@ -932,8 +936,8 @@ void *pci_alloc_p2pmem(struct pci_dev *pdev, size_t size)
>  	struct pci_p2pdma *p2pdma;
>  
>  	/*
> -	 * Pairs with synchronize_rcu() in pci_p2pdma_release() to
> -	 * ensure pdev->p2pdma is non-NULL for the duration of the
> +	 * Pairs with synchronize_rcu() in pci_p2pdma_release_pool()
> +	 * to ensure pdev->p2pdma is non-NULL for the duration of the
>  	 * read-lock.
>  	 */
>  	rcu_read_lock();
> -- 
> 2.50.1 (Apple Git-155)
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
