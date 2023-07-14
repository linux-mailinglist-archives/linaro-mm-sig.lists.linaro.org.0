Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F77475336B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jul 2023 09:46:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3648543C9F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jul 2023 07:46:09 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id 0CD953EF35
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jul 2023 07:45:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=gjzet+3E;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-51cff235226so3246275a12.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jul 2023 00:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689320751; x=1691912751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N6vuG3HQkEQ7VNeSQ5xmh1TS6CjzB/10WVd0XG/5aiY=;
        b=gjzet+3EtfmPg0tf8IJHdcqio4lk8hH5r0xGb3jPub9rRkdCMPlN07kjBsFMoNgcUl
         9scbBglIZZafZTLDAVubtwb6YTanXfnEwyUEE3Xu9iU5qB+whYOrbNEf2ssOHEqvKdeG
         KC8Fule84HyTin/rpOsFjWQ2PzioUgoterzvoTE5x15sm5L2Pg0UtE4dkeixAfjLmJmw
         7BUdczbiPnmAM3KnW3ox/dM3xHSlKpcK5eF8Ce6hgLFRp72tDCyneWEOh9w12AX2ZzAp
         RmVGFDyypB4Tt8gw880ZKOmFh5s0a30KiULcXr8YnPHrT3HuFjh3Whv9ZPZhrOLVxlQ6
         DLwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689320751; x=1691912751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N6vuG3HQkEQ7VNeSQ5xmh1TS6CjzB/10WVd0XG/5aiY=;
        b=XI4Kvs/8bZJ27kCng0vGYbesGrko5q/aooRDpzru5w3leHhGi2uctMSqh5a1M4qKcT
         DjtaBW83eAzGdERjHZ/v9eJ+lqaTP9jHAp7ie00YQ57wRu5rI2eg1HZeoXF8jebsEHwY
         MhvHa1EHWirRg6Okm/dexuBSEI+3PzVYzQP17R8hwOWMWBQM1iBpUvqLGx6IFZ7NycjA
         JiavtJo/6bi6xJKbJdqbtyza3RJEvc+w9VG4mikWAPZGyMffhB5tgY29EM0D7/iZTPpU
         sriVVICOqxmMlix3P8BCzGK8kFSegVyExb/JnAHnl12g2x6meinII/So94Y7WY52CLxT
         t8eA==
X-Gm-Message-State: ABy/qLbqXQZbpXl69RP6SBDD7QQ4BuTyNGDaypbcpaAsK301A7lecEaK
	DXCRMwnExSd4iOGzi4eiIIc=
X-Google-Smtp-Source: APBJJlE9LmJVESEldeBsjKBFMJhkXTV0WWWDsVr7FqxjeFyNg3BVE+QDcTnHHM2SkLqoXFEitTeN4A==
X-Received: by 2002:a05:6402:518f:b0:51e:4218:b91b with SMTP id q15-20020a056402518f00b0051e4218b91bmr2404203edd.1.1689320750718;
        Fri, 14 Jul 2023 00:45:50 -0700 (PDT)
Received: from ?IPV6:2a00:e180:156e:8700:817e:6375:6a13:2da9? ([2a00:e180:156e:8700:817e:6375:6a13:2da9])
        by smtp.gmail.com with ESMTPSA id n1-20020a056402514100b0051e2cde9e3esm5419862edd.75.2023.07.14.00.45.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jul 2023 00:45:50 -0700 (PDT)
Message-ID: <942c0138-e264-88c0-ebb1-cce0604d74ff@gmail.com>
Date: Fri, 14 Jul 2023 09:45:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Davis <afd@ti.com>
References: <20230713191316.116019-1-afd@ti.com>
 <2023071308-squeeze-hamster-d02f@gregkh>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <2023071308-squeeze-hamster-d02f@gregkh>
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.54:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[arndb.de,gmail.com,google.com,pengutronix.de,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0CD953EF35
X-Spamd-Bar: ------
Message-ID-Hash: ERFQZKOCSCGQ5UHZCE6266BBZEPQDZSQ
X-Message-ID-Hash: ERFQZKOCSCGQ5UHZCE6266BBZEPQDZSQ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Arnd Bergmann <arnd@arndb.de>, Christian Gmeiner <christian.gmeiner@gmail.com>, John Stultz <jstultz@google.com>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] misc: sram: Add DMA-BUF Heap exporting of SRAM areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ERFQZKOCSCGQ5UHZCE6266BBZEPQDZSQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 13.07.23 um 21:28 schrieb Greg Kroah-Hartman:
> On Thu, Jul 13, 2023 at 02:13:16PM -0500, Andrew Davis wrote:
>> This new export type exposes to userspace the SRAM area as a DMA-BUF Heap,
>> this allows for allocations of DMA-BUFs that can be consumed by various
>> DMA-BUF supporting devices.
> What devices exactly?
>
> And what userspace tools/programs are going to use this api?
>
>> Signed-off-by: Andrew Davis <afd@ti.com>
>> ---
>>
>> Changes from v2:
>>   - Make sram_dma_heap_allocate static (kernel test robot)
>>   - Rebase on v6.5-rc1
>>
>>   drivers/misc/Kconfig         |   7 +
>>   drivers/misc/Makefile        |   1 +
>>   drivers/misc/sram-dma-heap.c | 245 +++++++++++++++++++++++++++++++++++
>>   drivers/misc/sram.c          |   6 +
>>   drivers/misc/sram.h          |  16 +++
>>   5 files changed, 275 insertions(+)
>>   create mode 100644 drivers/misc/sram-dma-heap.c
>>
>> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
>> index 75e427f124b28..ee34dfb61605f 100644
>> --- a/drivers/misc/Kconfig
>> +++ b/drivers/misc/Kconfig
>> @@ -448,6 +448,13 @@ config SRAM
>>   config SRAM_EXEC
>>   	bool
>>   
>> +config SRAM_DMA_HEAP
>> +	bool "Export on-chip SRAM pools using DMA-Heaps"
>> +	depends on DMABUF_HEAPS && SRAM
>> +	help
>> +	  This driver allows the export of on-chip SRAM marked as both pool
>> +	  and exportable to userspace using the DMA-Heaps interface.
> Module name?
>
>>   config DW_XDATA_PCIE
>>   	depends on PCI
>>   	tristate "Synopsys DesignWare xData PCIe driver"
>> diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
>> index f2a4d1ff65d46..5e7516bfaa8de 100644
>> --- a/drivers/misc/Makefile
>> +++ b/drivers/misc/Makefile
>> @@ -47,6 +47,7 @@ obj-$(CONFIG_VMWARE_VMCI)	+= vmw_vmci/
>>   obj-$(CONFIG_LATTICE_ECP3_CONFIG)	+= lattice-ecp3-config.o
>>   obj-$(CONFIG_SRAM)		+= sram.o
>>   obj-$(CONFIG_SRAM_EXEC)		+= sram-exec.o
>> +obj-$(CONFIG_SRAM_DMA_HEAP)	+= sram-dma-heap.o
>>   obj-$(CONFIG_GENWQE)		+= genwqe/
>>   obj-$(CONFIG_ECHO)		+= echo/
>>   obj-$(CONFIG_CXL_BASE)		+= cxl/
>> diff --git a/drivers/misc/sram-dma-heap.c b/drivers/misc/sram-dma-heap.c
>> new file mode 100644
>> index 0000000000000..c054c04dff33e
>> --- /dev/null
>> +++ b/drivers/misc/sram-dma-heap.c
>> @@ -0,0 +1,245 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * SRAM DMA-Heap userspace exporter
>> + *
>> + * Copyright (C) 2019-2022 Texas Instruments Incorporated - https://www.ti.com/
>> + *	Andrew Davis <afd@ti.com>
> It's 2023 :(
>
> And this needs review from the dma-buf maintainers before I could do
> anything with it.

Yeah, agree. Thanks Greg.

It would be nice if you explicitly CC the maintainers for DMA-buf and 
DMA-buf heaps as well.

Of hand I can only find the version from 2020 in the LKML archives.

Regards,
Christian.

>
> thanks,
>
> greg k-h
> _______________________________________________
> Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
> To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
