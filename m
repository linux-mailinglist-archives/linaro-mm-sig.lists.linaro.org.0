Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fFp3L+tvVmo05gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:20:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E99E757569
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:20:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=deltatee.com header.s=20200525 header.b=cU4+yxkJ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=deltatee.com (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8CC1340A78
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:20:42 +0000 (UTC)
Received: from ale.deltatee.com (ale.deltatee.com [204.191.154.188])
	by lists.linaro.org (Postfix) with ESMTPS id 478C24015A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2026 20:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=deltatee.com; s=20200525; h=Subject:In-Reply-To:From:References:Cc:To:
	MIME-Version:Date:Message-ID:content-disposition;
	bh=JzUSZhPWqNWNKTHl/0jMtxGhpz8F8LscUgrhOQUpk4Y=; b=cU4+yxkJdxAeS4yui7R8BmYTUJ
	DRYWdLNFmn4IzYyA8GI4JMvn5I+ao4YCJoKHqHlZBXELhVQOR7+rbnR5az5v/BkfQgJToWwrgHqdK
	bkyzMrds8fKOwiAy9eQt43KyjnGykPEVoAe3We6O105RJ3FqGfgbPe2c3N//eYM+RF2KlpkmplnRX
	ZyFUAT2Yl+gEox2QjrPI7AH2qNf8wELNWJcyEDHIcdGl009phubiaMKzFVqgmjyy33HlREsTWdv3X
	6RaWLz4M8MAKVnPl1dKbctoJ3kYc+JvbGJAMeQtwUQhSvSUPSEtpYv4AZtpLxXiHnJMSl2eirkvTa
	pSPZ8pZQ==;
Received: from [104.157.31.28] (helo=[192.168.1.251])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.98.2)
	(envelope-from <logang@deltatee.com>)
	id 1wfO8O-000000071tG-1qho;
	Thu, 02 Jul 2026 14:35:45 -0600
Message-ID: <1cd1b832-082c-4f9c-ab68-706110ddcb25@deltatee.com>
Date: Thu, 2 Jul 2026 14:34:25 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Evans <matt@ozlabs.org>, Alex Williamson <alex@shazbot.org>,
 Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>,
 Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Kevin Tian <kevin.tian@intel.com>, Pranjal Shrivastava <praan@google.com>
References: <20260701171245.90111-1-matt@ozlabs.org>
 <20260701171245.90111-3-matt@ozlabs.org>
 <26f74cf0-8892-4672-b0e1-1f1a385c42bb@deltatee.com>
 <aecbbc66-c154-4439-a6ae-84dc012b0f8d@ozlabs.org>
Content-Language: en-CA
From: Logan Gunthorpe <logang@deltatee.com>
In-Reply-To: <aecbbc66-c154-4439-a6ae-84dc012b0f8d@ozlabs.org>
X-SA-Exim-Connect-IP: 104.157.31.28
X-SA-Exim-Rcpt-To: matt@ozlabs.org, alex@shazbot.org, leon@kernel.org, jgg@nvidia.com, amastro@fb.com, christian.koenig@amd.com, bhelgaas@google.com, kevin.tian@intel.com, praan@google.com, mngyadam@amazon.de, dmatlack@google.com, bjorn@kernel.org, sumit.semwal@linaro.org, ankita@nvidia.com, apopple@nvidia.com, vivek.kasireddy@intel.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=4.0.1
X-SA-Exim-Version: 4.2.1 (built Sun, 23 Feb 2025 07:57:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Spamd-Bar: ---
X-MailFrom: logang@deltatee.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HKC3A22MRXX2AKUDZH6RQQEGHVYE6ENP
X-Message-ID-Hash: HKC3A22MRXX2AKUDZH6RQQEGHVYE6ENP
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:17:03 +0000
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 02/10] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HKC3A22MRXX2AKUDZH6RQQEGHVYE6ENP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[deltatee.com : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[284];
	R_DKIM_REJECT(1.00)[deltatee.com:s=20200525];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[logang@deltatee.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:kevin.tian@intel.com,m:praan@google.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[deltatee.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[logang@deltatee.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,deltatee.com:from_mime,deltatee.com:email,deltatee.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E99E757569



On 2026-07-02 10:44 a.m., Matt Evans wrote:
>> So maybe at this point it's fine to enable this on 32bit systems and we
>> can remove this requirement. However, I think we should do that
>> explicitly in its own patch, not hide it in this refactoring patch.
> 
> Your question does prove it's too stealthy as-is. :)  PCI_P2PDMA still
> can't be enabled on 32-bit systems because of its ZONE_DEVICE -> 
> MEMORY_HOTPLUG -> 64BIT dependency.  So we're not enabling 32-bit 
> support for PCI_P2PDMA here, but it's not obvious and so I'll re-add the 
> `depends on 64BIT`.  At least then it won't be enabled without intention 
> if someone enables ZONE_DEVICE on 32-bit systems...

Ok, that all makes sense to me. I would be good with removing the 64BIT
dependency (as it is is a bit confusing as is) but I think adding
another patch would be appropriate with some of the commit message notes
you mentioned in your emails.

Besides that, I think you can add to this patch:

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Thanks,

Logan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
