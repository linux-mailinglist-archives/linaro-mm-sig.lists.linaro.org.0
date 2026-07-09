Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zX72K8zJT2qRoQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 18:18:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4FC73361B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 18:18:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=tWglgtXm;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16B7540E05
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2026 16:18:19 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id A65FE404BE
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 16:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1783613884;
	bh=OArR/KeoVpNI247WLRI2TAI/hbwe5M9v3yfS72f/EYE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tWglgtXml7pWfbHECxp6rv6+pl7o+Z6pl8u4VKyh8ZZ2F8rVizDEv5FLgaz1ZsN7Z
	 rxppfO+k24cGHc1gPzlsY3LGNqJoFRKoYox17ybUVU+RhbrrjwQCEO/xSNnNeeTcPK
	 XYU4vK05nZCRVvkpoWsPQd93LGdruEmDya+3aTut0o82rCsaIi7YWNeZODo4qFSWcU
	 5/Hk3Un9hUHlxhmvNDUjMYjAIDBICgHjy0Tea/lIvsoB1DrREnpx0nGmgQ7JvSvoMl
	 LiZSCSDCanrPhDrI6JqUArQm72BlLoJIH2OZ5fo9nok0p9/2Ft7cQjuQcQWe0ozzuS
	 9lEMaOemERv9Q==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gx0Vs2Qmmz58fn;
	Fri, 10 Jul 2026 02:17:56 +1000 (AEST)
Message-ID: <e0ccdfd7-2379-44ae-b579-a0da045d7f1b@ozlabs.org>
Date: Thu, 9 Jul 2026 17:17:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Logan Gunthorpe <logang@deltatee.com>, Alex Williamson
 <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
 Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Kevin Tian <kevin.tian@intel.com>,
 Pranjal Shrivastava <praan@google.com>
References: <20260701171245.90111-1-matt@ozlabs.org>
 <20260701171245.90111-3-matt@ozlabs.org>
 <26f74cf0-8892-4672-b0e1-1f1a385c42bb@deltatee.com>
 <aecbbc66-c154-4439-a6ae-84dc012b0f8d@ozlabs.org>
 <1cd1b832-082c-4f9c-ab68-706110ddcb25@deltatee.com>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <1cd1b832-082c-4f9c-ab68-706110ddcb25@deltatee.com>
X-Spamd-Bar: ---
Message-ID-Hash: HTSN3GYHN2JGJJDLNOHONQZOZRNS5GFJ
X-Message-ID-Hash: HTSN3GYHN2JGJJDLNOHONQZOZRNS5GFJ
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 02/10] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HTSN3GYHN2JGJJDLNOHONQZOZRNS5GFJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:logang@deltatee.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:kevin.tian@intel.com,m:praan@google.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ozlabs.org:mid,ozlabs.org:from_mime,deltatee.com:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E4FC73361B

Hi Logan,

On 02/07/2026 21:34, Logan Gunthorpe wrote:
> 
> 
> On 2026-07-02 10:44 a.m., Matt Evans wrote:
>>> So maybe at this point it's fine to enable this on 32bit systems and we
>>> can remove this requirement. However, I think we should do that
>>> explicitly in its own patch, not hide it in this refactoring patch.
>>
>> Your question does prove it's too stealthy as-is. :)  PCI_P2PDMA still
>> can't be enabled on 32-bit systems because of its ZONE_DEVICE -> 
>> MEMORY_HOTPLUG -> 64BIT dependency.  So we're not enabling 32-bit 
>> support for PCI_P2PDMA here, but it's not obvious and so I'll re-add the 
>> `depends on 64BIT`.  At least then it won't be enabled without intention 
>> if someone enables ZONE_DEVICE on 32-bit systems...
> 
> Ok, that all makes sense to me. I would be good with removing the 64BIT
> dependency (as it is is a bit confusing as is) but I think adding
> another patch would be appropriate with some of the commit message notes
> you mentioned in your emails.
> 
> Besides that, I think you can add to this patch:
> 
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Thanks for that.  On second reading, just want to check with you:

I'm intending to repost _retaining_ the 64BIT dependency (i.e. revert
its removal) for simplicity's sake.  Then we can follow up separatey
(outside this series) with a cleanup patch to remove 64BIT, explain,
examine other dependencies etc. as you suggest.  Works for you?

(I want to reduce the diff in this series, and revert since this isn't
truly necessary && wasn't entirely obvious.)

Cheers,


Matt

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
