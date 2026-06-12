Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uQByA3pePWoS2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:59:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 961AE6C7A21
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:59:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=EOwLg45D;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADA82434CD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 16:59:36 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id DD0193F91B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 14:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781274721;
	bh=oYg/1sibtgFfC9/h6xF284nz/nnSd5DreUIEPAixkoI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EOwLg45DKjx6iDaghDYk9kK4wwjCVOjCkcg4exJJahYAnqK8izc/mcAILa15V1Lw+
	 WZvY5lJJPBAuzY0sfq6YxCSuit092SWgMIATHqOj8MQvDZYd9grb5T+2Y4kgT27Xqq
	 4WTUNvtPu/f8LO0RtR4DSWesenP11MoRP5ideV8DmBKUmPJid3QS6nttKavPg4/3jW
	 nhJ0zA+9NVczIGTE9zDZ0/wp+ntipstalerasNPLL8tfLvg2Rx46Oad+JjtpviFiif
	 6JmXWN7efNklF145UDNG7QB9DrJCcpGL+9n6y1jSIMMz9cgSmLZF0Sgm4vVDj8p+QG
	 CSy5Imknap0HA==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gcMQx0gWPz58ld;
	Sat, 13 Jun 2026 00:31:52 +1000 (AEST)
Message-ID: <0dfadf98-a904-4e6a-b078-5caf27bc7922@ozlabs.org>
Date: Fri, 12 Jun 2026 15:31:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: "Tian, Kevin" <kevin.tian@intel.com>,
 Pranjal Shrivastava <praan@google.com>, Robin Murphy <robin.murphy@arm.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-2-matt@ozlabs.org> <aisAc1HRn2Wa4F9p@google.com>
 <DM6PR11MB36904ED2E1D2C646644F67668C182@DM6PR11MB3690.namprd11.prod.outlook.com>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <DM6PR11MB36904ED2E1D2C646644F67668C182@DM6PR11MB3690.namprd11.prod.outlook.com>
X-Spamd-Bar: ---
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3C3CTCPGZF66BAZER2N5KTXWSH3UJ7LE
X-Message-ID-Hash: 3C3CTCPGZF66BAZER2N5KTXWSH3UJ7LE
X-Mailman-Approved-At: Thu, 25 Jun 2026 16:59:02 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3C3CTCPGZF66BAZER2N5KTXWSH3UJ7LE/>
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
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	DATE_IN_PAST(1.00)[314];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kevin.tian@intel.com,m:praan@google.com,m:robin.murphy@arm.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,ozlabs.org:mid,ozlabs.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 961AE6C7A21

Hi Kevin, Pranjal, (+Robin, hi!)

On 12/06/2026 04:39, Tian, Kevin wrote:
>> From: Pranjal Shrivastava <praan@google.com>
>> Sent: Friday, June 12, 2026 2:38 AM
>>
>> On Wed, Jun 10, 2026 at 04:43:15PM +0100, Matt Evans wrote:
>>> --- a/drivers/pci/Kconfig
>>> +++ b/drivers/pci/Kconfig
>>> @@ -206,11 +206,7 @@ config PCIE_TPH
>>>  config PCI_P2PDMA
>>>  	bool "PCI peer-to-peer transfer support"
>>>  	depends on ZONE_DEVICE
>>> -	#
>>> -	# The need for the scatterlist DMA bus address flag means PCI
>> P2PDMA
>>> -	# requires 64bit
>>> -	#
>>> -	depends on 64BIT
>>> +	select PCI_P2PDMA_CORE
>>>  	select GENERIC_ALLOCATOR
>>>  	select NEED_SG_DMA_FLAGS
>>>  	help
>>
>> Nit: Did we drop depends on 64BIT intentionally here? I guess the full
>> PCI_P2PDMA stack still selects NEED_SG_DMA_FLAGS? IIRC,
>> NEED_SG_DMA_FLAGS doesn't select 64BIT?
> 
> seems that comment is stale. According to the commit msg:
> 
> " it would make vfio-pci only available if CONFIG_ZONE_DEVICE is
> present (e.g. 64-bit systems), "
> 
> so it sounds a redundant dependency hence is removed.

This was intentional.  In practice there is still a dependency on 64BIT
for PCI_P2PDMA, but it is because of ZONE_DEVICE (and mem hotplug).  The
key need is PCI_P2PDMA_CORE is available on !64BIT for VFIO, but I
didn't see a requirement from PCI_P2PDMA itself (as opposed to its
dependencies).  If I've missed one, I can put it back...

But NEED_SG_DMA_FLAGS doesn't smell quite right; I see from comments in

  af2880ec44021 ("scatterlist: add dedicated config for DMA flags")

that it assumes 64BIT, but it seems to be missing a "depends on 64BIT".

Robin -- should that depend on 64BIT?


Cheers,


Matt


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
