Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E836A88961
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 19:09:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B17A444155
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 17:09:14 +0000 (UTC)
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	by lists.linaro.org (Postfix) with ESMTPS id A2CF144155
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 17:08:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=k2iElssn;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.23.234 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53EH8jj62215165
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 14 Apr 2025 12:08:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1744650525;
	bh=6uNQ9e271FhEaPxh08oKF5aC3iophxn4ihnEasLwask=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=k2iElssnlrEJfpxE5yq0RkacWS8WecGDHg+f4CK8nh9ksgfGCPNMMU2JaJnopsruK
	 32MKJ4/luTVVwQMHhwt8ZtJlEiVAO9rd27IHr85qS0zrXre+fy6egRQ81ZcLh7iQes
	 370ctwD3wgLTwEAevQ95KrH+cMq0YUdOzap1vddw=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53EH8jKu125869
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Apr 2025 12:08:45 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 14
 Apr 2025 12:08:44 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 14 Apr 2025 12:08:44 -0500
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53EH8iHK076714;
	Mon, 14 Apr 2025 12:08:44 -0500
Message-ID: <8f55367e-45c0-4280-b1ed-7ce9160c1fad@ti.com>
Date: Mon, 14 Apr 2025 12:08:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Christoph Hellwig
	<hch@infradead.org>
References: <20250410-uio-dma-v1-0-6468ace2c786@bootlin.com>
 <Z_yjNgY3dVnA5OVz@infradead.org> <20250414102455.03331c0f@windsurf>
 <Z_zwZYBO5Txz6lDF@infradead.org> <20250414134831.20b04c77@windsurf>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20250414134831.20b04c77@windsurf>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-Rspamd-Queue-Id: A2CF144155
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_LOW(-1.00)[ti.com:dkim];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.23.224/27];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	MIME_GOOD(-0.10)[text/plain];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[198.47.23.234:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:161, ipnet:198.47.23.0/24, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DNSWL_BLOCKED(0.00)[198.47.23.234:from,157.170.170.38:received,157.170.170.37:received];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AOIQBFFHXIF3ORFWHBJHLCLOICAA2CC4
X-Message-ID-Hash: AOIQBFFHXIF3ORFWHBJHLCLOICAA2CC4
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bastien Curutchet <bastien.curutchet@bootlin.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/3] uio/dma-buf: Give UIO users access to DMA addresses.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AOIQBFFHXIF3ORFWHBJHLCLOICAA2CC4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 4/14/25 6:48 AM, Thomas Petazzoni wrote:
> Hello Christoph,
> 
> On Mon, 14 Apr 2025 04:24:21 -0700
> Christoph Hellwig <hch@infradead.org> wrote:
> 
>> On Mon, Apr 14, 2025 at 10:24:55AM +0200, Thomas Petazzoni wrote:
>>> What this patch series is about is to add new user-space interface to
>>> extend the existing UIO subsystem.
>>
>> Which as I explained to you is fundamentally broken and unsafe.  If you
>> need to do DMA from userspae you need to use vfio/iommufd.
> 
> I'm still unclear as to why it is more "broken and unsafe" than UIO
> already is. As I already replied in this thread: UIO allows to remap
> MMIO registers into a user-space application, which can then do
> whatever it wants with the IP block behind those MMIO registers. If
> this IP block supports DMA, it already means that _today_ with the
> current UIO subsystem as it is, the user-space application can program
> a DMA transfer to read/write to any location in memory.
> 
> Therefore, providing a way to cleanly allocate DMA buffers and get
> their physical address will not make things any better or worse in
> terms of safety.
> 
> The fact that it is reasonably safe is solely based on access control
> to the UIO device, done using usual Unix permissions, and that is
> already the case today.
> 
>>> I am not sure how this can work in our use-case. We have a very simple
>>> set of IP blocks implemented in a FPGA, some of those IP blocks are
>>> able to perform DMA operations. The register of those IP blocks are
>>> mapped into a user-space application using the existing, accepted
>>> upstream, UIO subsystem. Some of those registers allow to program DMA
>>> transfers. So far, we can do all what we need, except program those DMA
>>> transfers. Lots of people are having the same issue, and zillions of
>>> ugly out-of-tree solutions flourish all over, and we're trying to see
>>> if we can constructively find a solution that would be acceptable
>>> upstream to resolve this use-case. Our platform is an old PowerPC with
>>> no IOMMU.
>>
>> Then your driver design can't work and you need to replace it with a
>> proper in-kernel driver.
> 
> See above: your point is moot because providing capabilities to
> allocate a buffer and get its physical address so that a UIO-based
> user-space application can do DMA transfer does not make things any
> more unsafe than they already are.
> 

"UIO is a broken legacy mess, so let's add more broken things
to it as broken + broken => still broken, so no harm done", am I
getting that right?

If your FPGA IP can do DMA then you should not be using UIO in
the first place, see UIO docs:

> Please note that UIO is not an universal driver interface. Devices that
> are already handled well by other kernel subsystems (like networking or
> serial or USB) are no candidates for an UIO driver.

The DMA subsystem already handles DMA devices, so write a DMA driver.

Andrew

> Best regards,
> 
> Thomas
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
