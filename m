Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4C876D3C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Aug 2023 18:33:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5D8C41206
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Aug 2023 16:33:29 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lists.linaro.org (Postfix) with ESMTPS id 08B6B3ED52
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Aug 2023 16:33:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=tfUzKdje;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 372GXH0Y040683;
	Wed, 2 Aug 2023 11:33:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1690993997;
	bh=aj36lQFcLGyLFCI4TdSoefHrWZpxlble72FTUSoXD1M=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=tfUzKdjeTKEr9zzRx+ue3Gqs13hUAQZxXMUxI+a/zgO2YfdmPJhPP0HHrErpEVNsK
	 ZpblM8HX/rCMwWw+yTI1QwqXas8WHDiMEkn28ShVFzQYvMr/NTOrYYBORTcLQNfI43
	 1d/JpLc9j94Z9FVsuLyNfY1P3+ZRhWSvRMDPT+W4=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 372GXHBn068377
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 2 Aug 2023 11:33:17 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 2
 Aug 2023 11:33:17 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 2 Aug 2023 11:33:17 -0500
Received: from [10.250.36.161] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 372GXGFr126074;
	Wed, 2 Aug 2023 11:33:16 -0500
Message-ID: <a3764397-ec79-0bb6-e3f4-179f92e1e45c@ti.com>
Date: Wed, 2 Aug 2023 11:33:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20230713191316.116019-1-afd@ti.com>
 <2023071344-skinhead-send-33f7@gregkh>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <2023071344-skinhead-send-33f7@gregkh>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 08B6B3ED52
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.50)[198.47.19.142:from,157.170.170.23:received,157.170.170.36:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.19.0/24];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[arndb.de,gmail.com,google.com,pengutronix.de,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:161, ipnet:198.47.19.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[198.47.19.142:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[ti.com:dkim];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: SFE7TO2T6XTBNMPYW6YSVAAORZKGZEOF
X-Message-ID-Hash: SFE7TO2T6XTBNMPYW6YSVAAORZKGZEOF
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Arnd Bergmann <arnd@arndb.de>, Christian Gmeiner <christian.gmeiner@gmail.com>, John Stultz <jstultz@google.com>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] misc: sram: Add DMA-BUF Heap exporting of SRAM areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SFE7TO2T6XTBNMPYW6YSVAAORZKGZEOF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 7/13/23 2:27 PM, Greg Kroah-Hartman wrote:
> On Thu, Jul 13, 2023 at 02:13:16PM -0500, Andrew Davis wrote:
>> +int sram_add_dma_heap(struct sram_dev *sram,
>> +		      struct sram_reserve *block,
>> +		      phys_addr_t start,
>> +		      struct sram_partition *part)
>> +{
>> +	struct sram_dma_heap *sram_dma_heap;
>> +	struct dma_heap_export_info exp_info;
>> +
>> +	dev_info(sram->dev, "Exporting SRAM Heap '%s'\n", block->label);
> 
> When drivers are working properly, they are quiet.
> 

This should only be printed once in early boot when the memory is added,
I was wanting this to match the other memory exporters/output at the
beginning of boot logs.

But quiet is fine too, will change this to dev_dbg() for v4.

Thanks,
Andrew

> thanks,
> 
> greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
