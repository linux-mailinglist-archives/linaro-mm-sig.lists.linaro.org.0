Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a6eaOz9ePWr/1wgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:58:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 859CC6C79F8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:58:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=bB0PRaIM;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA0BB40F7F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 16:58:38 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id C41EB3F7DA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781107251;
	bh=eDEkk4f7S76uj36wByzSVbCn2IDwUfz2uxF1LUdS/0Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bB0PRaIM4+jrYgnE3WcqtZCosNRTn/dSy2m0AXX+ymW/8IYLTa6cRUe8zxHtEFQAD
	 ekpOcPyLvQEddGX9u07/sC5TMCQ430i5e03rRXfswTAd09MloYA/i4/ZUA8Wxu77eZ
	 L7QoCI2PIOqKG7EnVRSjbclfVXwcpIjR8kBDaPWvry8DpAfjNQDTIz4jxE9h+L+5Oj
	 ZYVROtNv2VyhvQdQVHoDwt3UF+8PrD2cNa6ICcjDtk5NHo/GRPy9byWtLrapYHhnU1
	 HbcWbcePG9H1w4vZ95R189BPokROy+dyqpHNfzkw9/I+i13lgt9vQOCnrPZXRy/QH5
	 h0WAye/RMrEUw==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gb9VN0LRgz4wCj;
	Thu, 11 Jun 2026 02:00:43 +1000 (AEST)
Message-ID: <39e5e731-bfa2-484d-ad29-a9e173ccc6d1@ozlabs.org>
Date: Wed, 10 Jun 2026 17:00:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Pranjal Shrivastava <praan@google.com>, Jason Gunthorpe <jgg@nvidia.com>
References: <20260527102319.100128-1-mattev@meta.com>
 <20260527102319.100128-2-mattev@meta.com>
 <20260527150946.312b3042@nvidia.com> <20260529230553.GE3195266@nvidia.com>
 <aimCfaCM-m4TS2g9@google.com>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <aimCfaCM-m4TS2g9@google.com>
X-Spamd-Bar: ----
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2BXJXXYF4TPQEZALRT5RWC7VA3PCVQ54
X-Message-ID-Hash: 2BXJXXYF4TPQEZALRT5RWC7VA3PCVQ54
X-Mailman-Approved-At: Thu, 25 Jun 2026 16:57:02 +0000
CC: Alex Williamson <alex.williamson@nvidia.com>, Matt Evans <mattev@meta.com>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2BXJXXYF4TPQEZALRT5RWC7VA3PCVQ54/>
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
	DATE_IN_PAST(1.00)[360];
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:praan@google.com,m:jgg@nvidia.com,m:alex.williamson@nvidia.com,m:mattev@meta.com,m:leon@kernel.org,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:mid,ozlabs.org:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 859CC6C79F8

Hi Praan,

On 10/06/2026 16:27, Pranjal Shrivastava wrote:
> On Fri, May 29, 2026 at 08:05:53PM -0300, Jason Gunthorpe wrote:
>> On Wed, May 27, 2026 at 03:09:46PM -0600, Alex Williamson wrote:
>>> This deserves a /* CONFIG_PCI_P2PDMA */ reference like the previous
>>> long span, though potentially a better solution would be to split the
>>> core code out to a separate file with shared header.  I asked opus to
>>> see what this would look like and it generated the patch below
>>> (unverified, compile tested only).  Bigger diff, harder to follow
>>> blame, but the shape of the core is much more apparent.  You're welcome
>>> to take or leave it.
>>
>> I think it is a good idea, it will make it easier to add more stuff to
>> these different aspects.
>>
>> Really they are now two different things with one layered on top of
>> the other.
>>
> 
> A little late to this party. I agree with this split per status quo.
> Although, one observation from me, I've posted a concurrent RFC [1] that
> implements ZONE_DEVICE P2P registration for VFIO. That work relies on
> pci_p2pdma_add_resource(), which requires ZONE_DEVICE and the full
> CONFIG_PCI_P2PDMA stack rather than just the CORE part.
> 
> I guess I can be careful to guard the ZONE_DEVICE P2P registration 
> feature in VFIO with the full PCI_P2PDMA config. Apart from that, this
> split provides a clean foundation for both series to coexist.

Thanks for the heads-up/Cc.

From your description, I agree, just depend on/select CONFIG_PCI_P2PDMA
as usual.  The only new thing in this split is the
CONFIG_PCI_P2PDMA_CORE allows the subset, but the default case (as used
by a couple of other drivers) stays the same.

I just posted a v3 including this split so you can see it in practice.
(I'd done part of it manually anyway so just finished it off, not
character-identical to Alex's patch but does the same thing.)

Thanks,


Matt


> 
> Thanks,
> Praan
> 
> [1] https://lore.kernel.org/all/20260610151853.3608948-1-praan@google.com/

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
