Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B22612E05
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Oct 2022 00:26:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0664B3F5C0
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 30 Oct 2022 23:26:11 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lists.linaro.org (Postfix) with ESMTPS id 7B8003EC2E
	for <linaro-mm-sig@lists.linaro.org>; Sun, 30 Oct 2022 23:25:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=klp6m862;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29UNPDiP019973;
	Sun, 30 Oct 2022 18:25:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1667172313;
	bh=V6PpPRXChTMfvnSzrScuWIP50LYca9tZ+HJcEcG2FL8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=klp6m862gHiRbmBxOP5drrax+/jgolHjC7B0uZk5MDWnzAf0HnoA1VZU5aLccjDXg
	 XptJCJ+aRI2l/iNVGmggGcP5Lk1QL3DxVdrCm7VOkE3gzOeE0RAtLrTIbAC9eXjrWM
	 PLqEabIHpUeaXxvOrTP9atXd8vRMXsMm1tCLnb1Y=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29UNPDqi003091
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 30 Oct 2022 18:25:13 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sun, 30
 Oct 2022 18:25:12 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sun, 30 Oct 2022 18:25:12 -0500
Received: from [10.250.35.234] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29UNPBfp097440;
	Sun, 30 Oct 2022 18:25:12 -0500
Message-ID: <b3073b69-c404-4f3b-8a8e-5a86cf413877@ti.com>
Date: Sun, 30 Oct 2022 18:25:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: Dawei Li <set_pte_at@outlook.com>, <sumit.semwal@linaro.org>,
        <christian.koenig@amd.com>
References: <TYCP286MB2323950197F60FC3473123B7CA349@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <TYCP286MB2323950197F60FC3473123B7CA349@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----
X-Rspamd-Queue-Id: 7B8003EC2E
X-Spamd-Result: default: False [-4.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.23.248/30];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	RCVD_IN_DNSWL_MED(-0.20)[198.47.23.248:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[outlook.com,linaro.org,amd.com];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:161, ipnet:198.47.23.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[ti.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: 4SYNMHNL2YPEXUO3NOHZC2VSMNASNFYN
X-Message-ID-Hash: 4SYNMHNL2YPEXUO3NOHZC2VSMNASNFYN
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: benjamin.gaignard@collabora.com, lmark@codeaurora.org, labbott@redhat.com, Brian.Starkey@arm.com, jstultz@google.com, sspatil@android.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix racing conflict of dma_heap_add()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4SYNMHNL2YPEXUO3NOHZC2VSMNASNFYN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 10/30/22 6:37 AM, Dawei Li wrote:
> Racing conflict could be:
> task A                 task B
> list_for_each_entry
> strcmp(h->name))
>                         list_for_each_entry
>                         strcmp(h->name)
> kzalloc                kzalloc
> ......                 .....
> device_create          device_create
> list_add
>                         list_add
> 
> The root cause is that task B has no idea about the fact someone
> else(A) has inserted heap with same name when it calls list_add,
> so a potential collision occurs.
> 
> Fixes: c02a81fba74f ("dma-buf: Add dma-buf heaps framework")
> 
> base-commit: 447fb14bf07905b880c9ed1ea92c53d6dd0649d7
> 
> Signed-off-by: Dawei Li <set_pte_at@outlook.com>
> ---
>   drivers/dma-buf/dma-heap.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> index 8f5848aa144f..ff44c2777b04 100644
> --- a/drivers/dma-buf/dma-heap.c
> +++ b/drivers/dma-buf/dma-heap.c
> @@ -243,11 +243,12 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>   			return ERR_PTR(-EINVAL);
>   		}
>   	}
> -	mutex_unlock(&heap_list_lock);
>   
>   	heap = kzalloc(sizeof(*heap), GFP_KERNEL);
> -	if (!heap)
> +	if (!heap) {
> +		mutex_unlock(&heap_list_lock);
>   		return ERR_PTR(-ENOMEM);
> +	}
>   
>   	heap->name = exp_info->name;
>   	heap->ops = exp_info->ops;
> @@ -284,7 +285,6 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>   		goto err2;
>   	}
>   	/* Add heap to the list */
> -	mutex_lock(&heap_list_lock);


Good catch!

In general I'd like to hold locks for as short a time as possible and
only bracket the lock associated structure (heap_list). How about we
move the duplicate name check to down here so they are both inside
this one locked section here.

I know this will mean we take a longer unwind error path
if the names are duplicated, but that should be rare and
this will keep all heap_list accesses together.

Thanks,
Andrew


>   	list_add(&heap->list, &heap_list);
>   	mutex_unlock(&heap_list_lock);
>   
> @@ -296,6 +296,7 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>   	xa_erase(&dma_heap_minors, minor);
>   err0:
>   	kfree(heap);
> +	mutex_unlock(&heap_list_lock);
>   	return err_ret;
>   }
>   
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
