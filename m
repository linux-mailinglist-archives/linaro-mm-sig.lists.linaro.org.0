Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0087CA88CE9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 22:14:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1D2E455DD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 20:14:19 +0000 (UTC)
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	by lists.linaro.org (Postfix) with ESMTPS id 86CD343FA1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 20:14:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=rdxPbLcW;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.23.234 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53EKDr7M2255205
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 14 Apr 2025 15:13:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1744661633;
	bh=u4s325uvuTrWBpavXWq6UQUmHw42JVkD/r2Zx8Uy0G4=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=rdxPbLcWyTDIJ9phfExl7sbHI2mZmInXxPpoGj/wFsJkGVlvtRGloTMdtZxIBXrED
	 7TELmyo9rNl8zsOJZBDwZhvqEeu0SIJRVV9jNqOvbbk9PLU9jZeuGLrJIyw5ATrZyM
	 KOFq5+UyrUBsVdrOplbysZE/EGNZ9W6GdmLbrMMQ=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53EKDrWo107347
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Apr 2025 15:13:53 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 14
 Apr 2025 15:13:52 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 14 Apr 2025 15:13:53 -0500
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53EKDqaS030321;
	Mon, 14 Apr 2025 15:13:52 -0500
Message-ID: <4c77a566-d231-43f2-ada6-a81ec6b58237@ti.com>
Date: Mon, 14 Apr 2025 15:13:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20250410-uio-dma-v1-0-6468ace2c786@bootlin.com>
 <Z_yjNgY3dVnA5OVz@infradead.org> <20250414102455.03331c0f@windsurf>
 <Z_zwZYBO5Txz6lDF@infradead.org> <20250414134831.20b04c77@windsurf>
 <8f55367e-45c0-4280-b1ed-7ce9160c1fad@ti.com>
 <20250414212125.4b3e6f33@windsurf>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20250414212125.4b3e6f33@windsurf>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-Rspamd-Queue-Id: 86CD343FA1
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[198.47.23.234:from];
	DWL_DNSWL_LOW(-1.00)[ti.com:dkim];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.23.224/27];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:161, ipnet:198.47.23.0/24, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EBGMVWXZT4UKNBEN6XX4AYHIRFCG7DF2
X-Message-ID-Hash: EBGMVWXZT4UKNBEN6XX4AYHIRFCG7DF2
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christoph Hellwig <hch@infradead.org>, Bastien Curutchet <bastien.curutchet@bootlin.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/3] uio/dma-buf: Give UIO users access to DMA addresses.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EBGMVWXZT4UKNBEN6XX4AYHIRFCG7DF2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 4/14/25 2:21 PM, Thomas Petazzoni wrote:
> Hello Andrew,
> 
> On Mon, 14 Apr 2025 12:08:44 -0500
> Andrew Davis <afd@ti.com> wrote:
> 
>> "UIO is a broken legacy mess, so let's add more broken things
>> to it as broken + broken => still broken, so no harm done", am I
>> getting that right?
> 
> Who says UIO is a "broken legacy mess"? Only you says so. I don't see
> any indication anywhere in the kernel tree suggesting that UIO is
> considered a broken legacy mess.
> 

I'm not saying that*, I'm pointing out your argument is that even
though what you are trying to do is broken and unsafe, it is okay to
do because it isn't any "more "broken and unsafe" than UIO already is."

*It is, but that is an argument to have outside of this thread :)

> Keep in mind that when you're running code as root, you can load a
> kernel module, which can do anything on the system security-wise. So
> letting UIO expose MMIO registers of devices to userspace applications
> running as root is not any worse than that.
> 

You can take your computer out back and shoot it too, but we shouldn't
encourage that either :) According to the original docs, UIO was created
to support "industrial I/O cards", think old one-off custom ISA cards by
vendors that had no intention of ever writing a proper driver and just
wanted to poke registers and wait on an IRQ.

IMHO we shouldn't be encouraging that, and trying to modernize UIO does just
that. It gives the impression that is how drivers should still be written.
If you setup your FPGA card to go blink an LED, sure UIO driver it is,
anything more complex, then writing a proper driver is the way to go.

>> If your FPGA IP can do DMA then you should not be using UIO in
>> the first place, see UIO docs:
>>
>>> Please note that UIO is not an universal driver interface. Devices that
>>> are already handled well by other kernel subsystems (like networking or
>>> serial or USB) are no candidates for an UIO driver.
>>
>> The DMA subsystem already handles DMA devices, so write a DMA driver.
> 
> My FPGA IP block is not a DMA controller that would fit the dmaengine
> kernel subsystem. It's a weird custom device that doesn't fit in any
> existing subsystem, and that happens to do "peripheral DMA" (i.e the IP
> block is DMA-capable itself, without relying on a separate DMA
> controller). So this (very valid) recommendation from the UIO
> documentation doesn't apply to my device.

Peripheral DMA is the much more common case, nothing new here. Could
you give a hint as to what this device does that doesn't fit *any*
current subsystem? Or are we talking a hypothetical device (which
for the sake of argument is a valid thing to say, I'm sure with an
FPGA card I could make something that doesn't fit any current
framework too). Just want to know if you are trying to solve a
specific issue or a generic issue here.

Andrew

> 
> Best regards,
> 
> Thomas
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
