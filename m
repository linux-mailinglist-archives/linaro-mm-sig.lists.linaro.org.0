Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F293D616A4A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 18:14:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 072943F5C0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 17:14:08 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lists.linaro.org (Postfix) with ESMTPS id 747643EE5B
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Nov 2022 17:13:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=WqN4PAWB;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2A2HDeqq111380;
	Wed, 2 Nov 2022 12:13:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1667409220;
	bh=9xXQl3ypMam93TQFZncK480oz+++LfFiwW9TqbQA7ow=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=WqN4PAWBfTgKqYPqWR9QfiQMUSEDkcgH7jMjSv6Cf7d6MMl030QQzz87vmOiCkhmW
	 wch90C6cgTFlDbDD20D2mJ1zuddtVjIe7cBPvqx+dTZoly+wJdzW+xxvRFeLfdBPy4
	 azLS9WnhAuCZ1JiBBvlQf09MX1qlI/AwwaJw6Pgg=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2A2HDeBh090547
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 2 Nov 2022 12:13:40 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 2 Nov
 2022 12:13:40 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 2 Nov 2022 12:13:40 -0500
Received: from [10.249.33.217] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2A2HDd5N022592;
	Wed, 2 Nov 2022 12:13:39 -0500
Message-ID: <ef0636bd-bb23-19b0-ab8f-a37280fe4296@ti.com>
Date: Wed, 2 Nov 2022 12:13:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Dawei Li <set_pte_at@outlook.com>, <sumit.semwal@linaro.org>,
        <christian.koenig@amd.com>
References: <TYCP286MB2323D71DEC1D008BEA6F7ABBCA399@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <TYCP286MB2323D71DEC1D008BEA6F7ABBCA399@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----------
X-Rspamd-Queue-Id: 747643EE5B
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[198.47.19.142:from,157.170.170.41:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.19.0/24];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[outlook.com,linaro.org,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:161, ipnet:198.47.19.0/24, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	DKIM_TRACE(0.00)[ti.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_FAIL(0.00)[157.170.170.37:server fail]
Message-ID-Hash: TZUBT3KTAYEUWCSRIRUR4KR5QGFFQFEY
X-Message-ID-Hash: TZUBT3KTAYEUWCSRIRUR4KR5QGFFQFEY
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: benjamin.gaignard@collabora.com, labbott@redhat.com, Brian.Starkey@arm.com, jstultz@google.com, sspatil@android.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: fix racing conflict of dma_heap_add()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TZUBT3KTAYEUWCSRIRUR4KR5QGFFQFEY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 11/2/22 10:58 AM, Dawei Li wrote:
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
> v1: https://lore.kernel.org/all/TYCP286MB2323950197F60FC3473123B7CA349@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM/
> 
> v1->v2: Narrow down locking scope, check the existence of heap before
> insertion, as suggested by Andrew Davis.
> 
> v2->v3: Remove double checking.

The above version info should be in a cover letter or below
the --- line so it doesn't end up in the commit message in tree.

> 
> Fixes: c02a81fba74f ("dma-buf: Add dma-buf heaps framework")
> 
> base-commit: 447fb14bf07905b880c9ed1ea92c53d6dd0649d7
> 

Same as above, plus this is an odd base, maybe just use "v6.1-rc2".

> Signed-off-by: Dawei Li <set_pte_at@outlook.com>
> ---
>   drivers/dma-buf/dma-heap.c | 29 +++++++++++++++--------------
>   1 file changed, 15 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> index 8f5848aa144f..7a25e98259ea 100644
> --- a/drivers/dma-buf/dma-heap.c
> +++ b/drivers/dma-buf/dma-heap.c
> @@ -233,18 +233,6 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>   		return ERR_PTR(-EINVAL);
>   	}
>   
> -	/* check the name is unique */
> -	mutex_lock(&heap_list_lock);
> -	list_for_each_entry(h, &heap_list, list) {
> -		if (!strcmp(h->name, exp_info->name)) {
> -			mutex_unlock(&heap_list_lock);
> -			pr_err("dma_heap: Already registered heap named %s\n",
> -			       exp_info->name);
> -			return ERR_PTR(-EINVAL);
> -		}
> -	}
> -	mutex_unlock(&heap_list_lock);
> -
>   	heap = kzalloc(sizeof(*heap), GFP_KERNEL);
>   	if (!heap)
>   		return ERR_PTR(-ENOMEM);
> @@ -283,13 +271,26 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>   		err_ret = ERR_CAST(dev_ret);
>   		goto err2;
>   	}
> -	/* Add heap to the list */
> +
>   	mutex_lock(&heap_list_lock);
> +	/* check the name is unique */
> +	list_for_each_entry(h, &heap_list, list) {
> +		if (!strcmp(h->name, exp_info->name)) {
> +			mutex_unlock(&heap_list_lock);
> +			pr_err("dma_heap: Already registered heap named %s\n",
> +			       exp_info->name);
> +			err_ret = ERR_PTR(-EINVAL);
> +			goto err3;
> +		}
> +	}
> +
> +	/* Add heap to the list */
>   	list_add(&heap->list, &heap_list);
>   	mutex_unlock(&heap_list_lock);
>   
>   	return heap;
> -

Would like to keep this new line after the return statement.

Andrew

> +err3:
> +	device_destroy(dma_heap_class, heap->heap_devt);
>   err2:
>   	cdev_del(&heap->heap_cdev);
>   err1:
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
