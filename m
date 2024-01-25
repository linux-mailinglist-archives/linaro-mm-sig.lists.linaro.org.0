Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 969BD83C676
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jan 2024 16:23:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7CCC643CFD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jan 2024 15:23:14 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lists.linaro.org (Postfix) with ESMTPS id 223AC3F00C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jan 2024 15:23:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=GMN1U2t2;
	dmarc=pass (policy=quarantine) header.from=ti.com;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=afd@ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 40PFMxEB029810;
	Thu, 25 Jan 2024 09:22:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1706196179;
	bh=3uCm+3uv8GvMxy4OgNybvMflNJ+eaPMs5XH+LYlHVzk=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=GMN1U2t2nH/8OoBPHHzd8rA7ZqBV9C5ul0BVQm6Wfau2GNcBiwiIEQztFf9trtH+a
	 2VKObYP8D2NJhkUO/SgX/GzUhkx9C2Bv6VEZtVIm2hcYclBoEkqBmY3KYzEAEl9Ykf
	 ngDTXrObEd5MQccdKVZyg/F5/AF+//T5lBd0QkBc=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 40PFMxct048139
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 25 Jan 2024 09:22:59 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 25
 Jan 2024 09:22:59 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 25 Jan 2024 09:22:59 -0600
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 40PFMwBh079463;
	Thu, 25 Jan 2024 09:22:58 -0600
Message-ID: <9bb17376-7793-4cb1-984c-adffb1c7ab1e@ti.com>
Date: Thu, 25 Jan 2024 09:22:58 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>,
        Gerd Hoffmann
	<kraxel@redhat.com>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Paul Cercueil
	<paul@crapouillou.net>
References: <20240123221227.868341-1-afd@ti.com>
 <IA0PR11MB7185C76FC248EDDC5FBC49EFF87B2@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <IA0PR11MB7185C76FC248EDDC5FBC49EFF87B2@IA0PR11MB7185.namprd11.prod.outlook.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 223AC3F00C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.19.0/24];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ASN(0.00)[asn:161, ipnet:198.47.19.0/24, country:US];
	URIBL_BLOCKED(0.00)[fllv0015.ext.ti.com:helo,fllv0015.ext.ti.com:rdns];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+]
Message-ID-Hash: 3GAGDROWNV32OHHOJGA3ZXJ54MACWK4M
X-Message-ID-Hash: 3GAGDROWNV32OHHOJGA3ZXJ54MACWK4M
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] udmabuf: Keep track current device mappings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3GAGDROWNV32OHHOJGA3ZXJ54MACWK4M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 1/24/24 4:36 PM, Kasireddy, Vivek wrote:
> Hi Andrew,
> 
>> When a device attaches to and maps our buffer we need to keep track
>> of this mapping/device. This is needed for synchronization with these
>> devices when beginning and ending CPU access for instance. Add a list
>> that tracks device mappings as part of {map,unmap}_udmabuf().
>>
>> Signed-off-by: Andrew Davis <afd@ti.com>
>> ---
>>   drivers/dma-buf/udmabuf.c | 43
>> +++++++++++++++++++++++++++++++++++++--
>>   1 file changed, 41 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
>> index c406459996489..3a23f0a7d112a 100644
>> --- a/drivers/dma-buf/udmabuf.c
>> +++ b/drivers/dma-buf/udmabuf.c
>> @@ -28,6 +28,14 @@ struct udmabuf {
>>   	struct page **pages;
>>   	struct sg_table *sg;
>>   	struct miscdevice *device;
>> +	struct list_head attachments;
>> +	struct mutex lock;
>> +};
>> +
>> +struct udmabuf_attachment {
>> +	struct device *dev;
>> +	struct sg_table *table;
>> +	struct list_head list;
>>   };
>>
>>   static vm_fault_t udmabuf_vm_fault(struct vm_fault *vmf)
>> @@ -120,14 +128,42 @@ static void put_sg_table(struct device *dev, struct
>> sg_table *sg,
>>   static struct sg_table *map_udmabuf(struct dma_buf_attachment *at,
>>   				    enum dma_data_direction direction)
>>   {
>> -	return get_sg_table(at->dev, at->dmabuf, direction);
>> +	struct udmabuf *ubuf = at->dmabuf->priv;
>> +	struct udmabuf_attachment *a;
>> +
>> +	a = kzalloc(sizeof(*a), GFP_KERNEL);
>> +	if (!a)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	a->table = get_sg_table(at->dev, at->dmabuf, direction);
>> +	if (IS_ERR(a->table)) {
>> +		kfree(a);
>> +		return a->table;
> Isn't that a use-after-free bug?

Indeed it is, will fix.

Seems coccicheck also caught this but I missed it when
reviewing its output, my bad :(

Andrew

> Rest of the patch lgtm.
> 
> Thanks,
> Vivek
> 
>> +	}
>> +
>> +	a->dev = at->dev;
>> +
>> +	mutex_lock(&ubuf->lock);
>> +	list_add(&a->list, &ubuf->attachments);
>> +	mutex_unlock(&ubuf->lock);
>> +
>> +	return a->table;
>>   }
>>
>>   static void unmap_udmabuf(struct dma_buf_attachment *at,
>>   			  struct sg_table *sg,
>>   			  enum dma_data_direction direction)
>>   {
>> -	return put_sg_table(at->dev, sg, direction);
>> +	struct udmabuf_attachment *a = at->priv;
>> +	struct udmabuf *ubuf = at->dmabuf->priv;
>> +
>> +	mutex_lock(&ubuf->lock);
>> +	list_del(&a->list);
>> +	mutex_unlock(&ubuf->lock);
>> +
>> +	put_sg_table(at->dev, sg, direction);
>> +
>> +	kfree(a);
>>   }
>>
>>   static void release_udmabuf(struct dma_buf *buf)
>> @@ -263,6 +299,9 @@ static long udmabuf_create(struct miscdevice
>> *device,
>>   		memfd = NULL;
>>   	}
>>
>> +	INIT_LIST_HEAD(&ubuf->attachments);
>> +	mutex_init(&ubuf->lock);
>> +
>>   	exp_info.ops  = &udmabuf_ops;
>>   	exp_info.size = ubuf->pagecount << PAGE_SHIFT;
>>   	exp_info.priv = ubuf;
>> --
>> 2.39.2
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
