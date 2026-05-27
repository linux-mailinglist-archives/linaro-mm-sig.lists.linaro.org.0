Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNmEA9FmHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:14:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B95628784
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:14:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 856DC4098E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:14:55 +0000 (UTC)
Received: from ale.deltatee.com (ale.deltatee.com [204.191.154.188])
	by lists.linaro.org (Postfix) with ESMTPS id 59B763F732
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 16:07:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=deltatee.com header.s=20200525 header.b=hKKQDdIr;
	spf=pass (lists.linaro.org: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
	dmarc=pass (policy=quarantine) header.from=deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=deltatee.com; s=20200525; h=Subject:In-Reply-To:From:References:Cc:To:
	MIME-Version:Date:Message-ID:content-disposition;
	bh=qGgbZA7gj3eEje/Kt3h0lR6kJ8rSI8Qm0mNt/KdiiAg=; b=hKKQDdIrR+jWwnj24G+ln2wtbI
	dqLuifKrJ1IXNelOU+BQve3+wXU3dNpcHAqIpwfFWbRuzpdMBbEoZEURfIlX3FyOZbDB0V6U2zy0F
	tGJiCdbanctZEtuWZEc6Ctk4z8ZY/m6I58gtn1PuvZolrRTGKRZm57hzhNjrGR5XyHwNAXbmyhjQc
	YxQdPm9C0dkk+aNXmXyJi1bGuIT5XS/9RVo5R5qwEiNZf12fPWzrOUCArdpSJYEDRGqxHeVyHTzla
	fSY3zJeaAzjwNg+t29KhK1Npb/Oa6Yl5CyzWl7nGKurmy3jhZ8GrWFQuMN9hWfvqoM+9p8sc85bSp
	gztv1aSA==;
Received: from d142-179-236-232.abhsia.telus.net ([142.179.236.232] helo=[192.168.11.155])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.98.2)
	(envelope-from <logang@deltatee.com>)
	id 1wSGn0-00000001YTC-0svZ;
	Wed, 27 May 2026 10:07:26 -0600
Message-ID: <843e8525-5927-45b5-a3e2-a5ec16234398@deltatee.com>
Date: Wed, 27 May 2026 10:07:22 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Evans <mattev@meta.com>, Alex Williamson <alex@shazbot.org>,
 Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>,
 Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>
References: <20260527102319.100128-1-mattev@meta.com>
 <20260527102319.100128-2-mattev@meta.com>
Content-Language: en-US
From: Logan Gunthorpe <logang@deltatee.com>
In-Reply-To: <20260527102319.100128-2-mattev@meta.com>
X-SA-Exim-Connect-IP: 142.179.236.232
X-SA-Exim-Rcpt-To: mattev@meta.com, alex@shazbot.org, leon@kernel.org, jgg@nvidia.com, amastro@fb.com, christian.koenig@amd.com, bhelgaas@google.com, mngyadam@amazon.de, dmatlack@google.com, bjorn@kernel.org, sumit.semwal@linaro.org, kevin.tian@intel.com, ankita@nvidia.com, praan@google.com, apopple@nvidia.com, vivek.kasireddy@intel.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	MYRULES_FREE autolearn=no autolearn_force=no version=4.0.1
X-SA-Exim-Version: 4.2.1 (built Sun, 23 Feb 2025 07:57:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Spamd-Bar: ---
X-MailFrom: logang@deltatee.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JY4EBDWTLGC3SSRDMKJBBEY37NKCZPP7
X-Message-ID-Hash: JY4EBDWTLGC3SSRDMKJBBEY37NKCZPP7
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:14:34 +0000
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JY4EBDWTLGC3SSRDMKJBBEY37NKCZPP7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[deltatee.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[deltatee.com:s=20200525];
	DATE_IN_PAST(1.00)[133];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[deltatee.com:-];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	NEURAL_HAM(-0.00)[-0.565];
	FROM_NEQ_ENVFROM(0.00)[logang@deltatee.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B4B95628784
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2026-05-27 04:23, Matt Evans wrote:
> The P2PDMA code currently provides two features under the same
> CONFIG_PCI_P2PDMA option:
> 
>  1.  Locate providers via pcim_p2pdma_provider()
>  2.  Manage actual P2P DMA
> 
> Other code (such as vfio-pci) depends on 1, without having a hard
> dependency on 2.
> 
> A future commit expands the use of DMABUF in vfio-pci for non-P2P
> scenarios, relying on pcim_p2pdma_provider() always being present.  If
> that depended on CONFIG_PCI_P2PDMA, it would make vfio-pci only
> available if CONFIG_ZONE_DEVICE is present (e.g. 64-bit systems), even
> when P2P is not needed.
> 
> To resolve this, introduce CONFIG_PCI_P2PDMA_CORE which contains the
> basic provider functionality to make it available even if the
> CONFIG_PCI_P2PDMA feature is disabled or unavailable due to
> !CONFIG_ZONE_DEVICE.  Users such as vfio-pci can enable their own P2P
> features based off the original CONFIG_PCI_P2PDMA (available when
> CONFIG_ZONE_DEVICE is set).
> 
> Signed-off-by: Matt Evans <mattev@meta.com>

Largely this looks good to me. I have one minor nit below that you can
apply or not. Either way, feel free to add:

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>


>  static void pci_p2pdma_release(void *data)
>  {
>  	struct pci_dev *pdev = data;
> @@ -241,11 +251,13 @@ static void pci_p2pdma_release(void *data)
>  		synchronize_rcu();
>  	xa_destroy(&p2pdma->map_types);
>  
> +#ifdef CONFIG_PCI_P2PDMA
>  	if (!p2pdma->pool)
>  		return;
>  
>  	gen_pool_destroy(p2pdma->pool);
>  	sysfs_remove_group(&pdev->dev.kobj, &p2pmem_group);
> +#endif
>  }

I'm personally not a fan of adding #ifdefs inside functions like this.
This instance is small and easy to understand, but it can quickly become
a bit of a mess if we start adding more features. I probably would have
created a pci_p2pdma_release_pool() helper which does the inverse of
pci_p2pdma_setup_pool(), it would be called in pci_p2pdma_release() and
an empty implementation would be provided in the case where
CONFIG_PCI_P2PDMA is not set.

Logan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
