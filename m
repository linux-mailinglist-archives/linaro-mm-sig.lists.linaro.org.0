Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TvW8KHFePWoR2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:59:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7BE6C7A1C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:59:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=Os9kV2Gx;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 860B841250
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 16:59:28 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id E93373F76E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 17:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781199888;
	bh=bgyx4tuoR1VujLGJebtgmRpeK21Ky1z7/2zTZbfFLxY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Os9kV2GxCX6cgBB+jfIbx4Jk5aYyWKQ5X/ZXH+VDun8JRkKYtFv/ieIvA9GjW9BEP
	 oCbiUOIm0Juecvy1as3nTJYV673czVuKakUU/AnOzg1YsHLcYDcCT6wfnXjOb4o5EF
	 gGsD9u+TtAD6sXt5Fps0rxVzebnry3bpHhfB/x6aKrUvYTzMNZCxodqLKN4BSGZnoy
	 7qlwpEUgQ//8IfsVc+0INo/af9xSHJs4pcUtFr/egZjryoz4iw5WPTWSpoUclLkJ9x
	 MLyh0LmyKHrhyNGTv+5AcdgmuuA1QN8TdwwUbruNIB224zwt1Y0N8Pmt5FJFGTti/K
	 pXV0X5964ySzw==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gbqlp6VBVz4wJk;
	Fri, 12 Jun 2026 03:44:38 +1000 (AEST)
Message-ID: <d38fc0ed-4e89-4eeb-b32d-06afba3157f6@ozlabs.org>
Date: Thu, 11 Jun 2026 18:44:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20260611160749.GA469670@bhelgaas>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <20260611160749.GA469670@bhelgaas>
X-Spamd-Bar: ----
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EZ3UX2BONONG7CWKDUNEDSZHHXGD6ZFI
X-Message-ID-Hash: EZ3UX2BONONG7CWKDUNEDSZHHXGD6ZFI
X-Mailman-Approved-At: Thu, 25 Jun 2026 16:59:02 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EZ3UX2BONONG7CWKDUNEDSZHHXGD6ZFI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[335];
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:helgaas@kernel.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,ozlabs.org:email,ozlabs.org:mid,ozlabs.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E7BE6C7A1C

Hi Bjorn,

On 11/06/2026 17:07, Bjorn Helgaas wrote:
> On Wed, Jun 10, 2026 at 04:43:15PM +0100, Matt Evans wrote:
>> The P2PDMA code currently provides two features under the same
>> CONFIG_PCI_P2PDMA option:
>>
>>  1.  Locate providers via pcim_p2pdma_provider()
>>  2.  Manage actual P2P DMA
>>
>> Some drivers (such as vfio-pci) depend on 1, without having a hard
>> dependency on 2.
>>
>> A future commit expands the use of DMABUF in vfio-pci for non-P2P
>> scenarios, relying on pcim_p2pdma_provider() always being present.  If
>> that depended on CONFIG_PCI_P2PDMA, it would make vfio-pci only
>> available if CONFIG_ZONE_DEVICE is present (e.g. 64-bit systems), even
>> when P2P is not needed.
>>
>> To resolve this, introduce CONFIG_PCI_P2PDMA_CORE and refactor the
>> basic provider functionality into a new p2pdma_core.c file.  This is
>> available even if the CONFIG_PCI_P2PDMA feature is disabled (or
>> unavailable due to !CONFIG_ZONE_DEVICE).  Then, drivers can enable any
>> additional P2P features with the original CONFIG_PCI_P2PDMA (available
>> when CONFIG_ZONE_DEVICE is set).
>>
>> Signed-off-by: Matt Evans <matt@ozlabs.org>
> 
> I thought this was going to be just a code move and new Kconfig
> option, but it involves a little more than that, e.g., adding
> pci_p2pdma_release_pool() and tweaking the RCU synchronization.
> 
> If possible, it would be nice to do that refactoring in a smaller
> preliminary patch so it's easier to review/bisect/etc and make this
> one a pure code move.

pci_p2pdma_release_pool() is really part of the split, not a functional
change, i.e. factoring the (P2P-only) pool handling out from the rest of
the pci_p2pdma_release() actions still needed for the _CORE case.

I guess .._release() could be split in place in a small patch, and then
moved alongside the rest in a second.

> I guess CONFIG_PCI_P2PDMA_CORE selects just part 1 ("Locate providers
> via pcim_p2pdma_provider()"), right?

Yes, I can reword that last paragraph of the commit message to make this
clearer.

>> +++ b/drivers/pci/p2pdma.h
>> @@ -0,0 +1,29 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * PCI Peer 2 Peer DMA support.
>> + */
>> +
>> +#ifndef _PCI_P2PDMA_H
>> +#define _PCI_P2PDMA_H
>> +
>> +#include <linux/genalloc.h>
>> +#include <linux/pci-p2pdma.h>
>> +#include <linux/xarray.h>
>> +
>> +struct pci_p2pdma {
>> +	struct gen_pool *pool;
>> +	bool p2pmem_published;
>> +	struct xarray map_types;
>> +	struct p2pdma_provider mem[PCI_STD_NUM_BARS];
>> +};
>> +
>> +#ifdef CONFIG_PCI_P2PDMA
>> +void pci_p2pdma_release_pool(struct pci_dev *pdev, struct pci_p2pdma *p2pdma);
>> +#else
>> +static inline void pci_p2pdma_release_pool(struct pci_dev *pdev, struct pci_p2pdma *p2pdma)
> 
> Wrap to fit in 80 columns like the rest of drivers/pci/

Fixed.

>> +{
>> +}
>> +#endif
>> +
>> +#endif
>> +
> 
> Spurious blank line at end.

Doh, fixed.

>> +++ b/drivers/pci/p2pdma_core.c
>> @@ -0,0 +1,118 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * PCI Peer 2 Peer DMA support core, providing a bare-bones
> 
> In this English text, I think I would spell out "Peer to Peer" instead
> of relying on the "2" homophone.  Same in p2pdma.h.

I would've preferred that too, it isn't correct; I was seeking to keep
the blurb here (and in p2pdma.h) as close to the original p2pdma.c as
possible.  I'll correct it in the new files (hyphenated "peer-to-peer"
in PCI-SIG language).


Thanks,


Matt

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
