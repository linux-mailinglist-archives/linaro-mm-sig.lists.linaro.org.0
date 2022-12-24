Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B716558F3
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Dec 2022 08:35:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A3413EEC0
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Dec 2022 07:35:56 +0000 (UTC)
Received: from cstnet.cn (smtp23.cstnet.cn [159.226.251.23])
	by lists.linaro.org (Postfix) with ESMTP id 448C83EEA4
	for <linaro-mm-sig@lists.linaro.org>; Sat, 24 Dec 2022 07:35:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of jiasheng@iscas.ac.cn designates 159.226.251.23 as permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn;
	dmarc=none
Received: from localhost.localdomain (unknown [124.16.138.125])
	by APP-03 (Coremail) with SMTP id rQCowADn7JTJq6Zj1ihdCA--.4680S2;
	Sat, 24 Dec 2022 15:35:37 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: gregkh@linuxfoundation.org
Date: Sat, 24 Dec 2022 15:35:36 +0800
Message-Id: <20221224073536.24889-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: rQCowADn7JTJq6Zj1ihdCA--.4680S2
X-Coremail-Antispam: 1UD129KBjvdXoWrur4UGF4UXr1UZFW3Wry3Arb_yoWDKrgEkr
	4UuFW7C34UZF98tF17J34ayrWDKF95Z3s5WF1q9FnxZa43JayxXr4Uuryv9a13ZF1xCFs3
	Cw15JanrXa4FgjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbVAFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
	Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxVW8Jr
	0_Cr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj
	6xIIjxv20xvE14v26r126r1DMcIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr
	0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E
	8cxan2IY04v7MxkIecxEwVAFwVW8CwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbV
	WUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF
	67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42
	IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF
	0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxh
	VjvjDU0xZFpf9x0JUm-eOUUUUU=
X-Originating-IP: [124.16.138.125]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Spamd-Result: default: False [-0.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	FAKE_REPLY(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:159.226.251.0/25];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7497, ipnet:159.226.0.0/16, country:CN];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.844];
	ARC_NA(0.00)[];
	HAS_XOIP(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp23.cstnet.cn:rdns];
	DMARC_NA(0.00)[iscas.ac.cn];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 448C83EEA4
X-Spamd-Bar: /
Message-ID-Hash: QEM4X42WOQIPW3KQZBPKA3Z7J2DCUFZB
X-Message-ID-Hash: QEM4X42WOQIPW3KQZBPKA3Z7J2DCUFZB
X-MailFrom: jiasheng@iscas.ac.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: neal_liu@aspeedtech.com, andrew@aj.id.au, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Jiasheng Jiang <jiasheng@iscas.ac.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] usb: gadget: aspeed_udc: Add check for dma_alloc_coherent
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QEM4X42WOQIPW3KQZBPKA3Z7J2DCUFZB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Dec 23, 2022 at 10:54:37PM +0800, Greg KH wrote:
>> diff --git a/drivers/usb/gadget/udc/aspeed_udc.c b/drivers/usb/gadget/udc/aspeed_udc.c
>> index 01968e2167f9..7dc2457c7460 100644
>> --- a/drivers/usb/gadget/udc/aspeed_udc.c
>> +++ b/drivers/usb/gadget/udc/aspeed_udc.c
>> @@ -1516,6 +1516,10 @@ static int ast_udc_probe(struct platform_device *pdev)
>>  					  AST_UDC_EP_DMA_SIZE *
>>  					  AST_UDC_NUM_ENDPOINTS,
>>  					  &udc->ep0_buf_dma, GFP_KERNEL);
>> +	if (!udc->ep0_buf) {
>> +		rc = -ENOMEM;
>> +		goto err;
>> +	}
>>  
>>  	udc->gadget.speed = USB_SPEED_UNKNOWN;
>>  	udc->gadget.max_speed = USB_SPEED_HIGH;
>> -- 
>> 2.25.1
>> 
> 
> Why is this just a duplicate of the patch previously submitted here:
> 	https://lore.kernel.org/r/20221125092833.74822-1-yuancan@huawei.com
> 
> confused,
> 
> greg k-h

Yes, it is the same as mine.
As the previous patch had not been merged into the Linux kernel,
my tool found the same error and report it.
And both of us chose the most concise way to fix the error.
That is why the patches are the same.

Thanks,
Jiang

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
