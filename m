Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SjopCsmqOmqfDAgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 17:48:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B016B86D6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 17:48:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=arm.com header.s=foss header.b=Bo+JWdlj;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=arm.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6456409AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 15:48:23 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 25A5D3F7FF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 15:48:14 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D130016F8;
	Tue, 23 Jun 2026 08:48:08 -0700 (PDT)
Received: from [10.2.212.23] (e121345-lin.cambridge.arm.com [10.2.212.23])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CDC803F62B;
	Tue, 23 Jun 2026 08:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1782229693; bh=NJqkEZcWa1A5YciYaSbIuAPL/MnbLkuiSpwUoNgaw8A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Bo+JWdlj2ADWTVgzFv+6PqCl48iOPpg92u2k+0c2TeJ3N/RurCTpn86f1qiS/jSsR
	 63I52Za56NNbj3HMlm9X7FzRlLcP42vWhhLC7JrK3xQqxot8x772iEorlLECXDJgNp
	 W2rPKXAW7W9lWYjrw/Dk3RKu7VEAkBmxVWDXoxGg=
Message-ID: <81a9d212-996e-42e1-aabf-b120a13e94c3@arm.com>
Date: Tue, 23 Jun 2026 16:48:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Evans <matt@ozlabs.org>, "Tian, Kevin" <kevin.tian@intel.com>,
 Pranjal Shrivastava <praan@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-2-matt@ozlabs.org> <aisAc1HRn2Wa4F9p@google.com>
 <DM6PR11MB36904ED2E1D2C646644F67668C182@DM6PR11MB3690.namprd11.prod.outlook.com>
 <0dfadf98-a904-4e6a-b078-5caf27bc7922@ozlabs.org>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <0dfadf98-a904-4e6a-b078-5caf27bc7922@ozlabs.org>
X-Spamd-Bar: ---
Message-ID-Hash: IF4VPDSMJ3F3LPMQU4YRV32LQXEVWT7R
X-Message-ID-Hash: IF4VPDSMJ3F3LPMQU4YRV32LQXEVWT7R
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IF4VPDSMJ3F3LPMQU4YRV32LQXEVWT7R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:kevin.tian@intel.com,m:praan@google.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[robin.murphy@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robin.murphy@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:mid,arm.com:from_mime,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 95B016B86D6

On 12/06/2026 3:31 pm, Matt Evans wrote:
> Hi Kevin, Pranjal, (+Robin, hi!)

Oh hey there! :)

> On 12/06/2026 04:39, Tian, Kevin wrote:
>>> From: Pranjal Shrivastava <praan@google.com>
>>> Sent: Friday, June 12, 2026 2:38 AM
>>>
>>> On Wed, Jun 10, 2026 at 04:43:15PM +0100, Matt Evans wrote:
>>>> --- a/drivers/pci/Kconfig
>>>> +++ b/drivers/pci/Kconfig
>>>> @@ -206,11 +206,7 @@ config PCIE_TPH
>>>>   config PCI_P2PDMA
>>>>   	bool "PCI peer-to-peer transfer support"
>>>>   	depends on ZONE_DEVICE
>>>> -	#
>>>> -	# The need for the scatterlist DMA bus address flag means PCI
>>> P2PDMA
>>>> -	# requires 64bit
>>>> -	#
>>>> -	depends on 64BIT
>>>> +	select PCI_P2PDMA_CORE
>>>>   	select GENERIC_ALLOCATOR
>>>>   	select NEED_SG_DMA_FLAGS
>>>>   	help
>>>
>>> Nit: Did we drop depends on 64BIT intentionally here? I guess the full
>>> PCI_P2PDMA stack still selects NEED_SG_DMA_FLAGS? IIRC,
>>> NEED_SG_DMA_FLAGS doesn't select 64BIT?
>>
>> seems that comment is stale. According to the commit msg:
>>
>> " it would make vfio-pci only available if CONFIG_ZONE_DEVICE is
>> present (e.g. 64-bit systems), "
>>
>> so it sounds a redundant dependency hence is removed.
> 
> This was intentional.  In practice there is still a dependency on 64BIT
> for PCI_P2PDMA, but it is because of ZONE_DEVICE (and mem hotplug).  The
> key need is PCI_P2PDMA_CORE is available on !64BIT for VFIO, but I
> didn't see a requirement from PCI_P2PDMA itself (as opposed to its
> dependencies).  If I've missed one, I can put it back...
> 
> But NEED_SG_DMA_FLAGS doesn't smell quite right; I see from comments in
> 
>    af2880ec44021 ("scatterlist: add dedicated config for DMA flags")
> 
> that it assumes 64BIT, but it seems to be missing a "depends on 64BIT".
> 
> Robin -- should that depend on 64BIT?

Indeed, looking at the history it seems like that was overlooked, but it 
worked out at the time since the only selector of NEED_SG_DMA_FLAGS was 
PCI_P2PDMA as you say. If we're now generalising then moving the 
explicit 64BIT dependency to NEED_SG_DMA_FLAGS itself sounds like the 
right thing to do.

Cheers,
Robin.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
