Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKEbK8UssGlHgwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 15:37:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED1F252294
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 15:37:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2943D3F7EC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 14:37:56 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012053.outbound.protection.outlook.com [40.93.195.53])
	by lists.linaro.org (Postfix) with ESMTPS id 56AA73F7EC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 14:37:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=selector1 header.b=MGTAiLJD;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 40.93.195.53 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iqWoYnwOzrioXDz+125/BaccW7mr7p8fQTv1vbwCaYLHMR8GJz6F6jguWuTRCKi5s9uOH19Ax5a3r6i64lnSMJ1BVbroYLuHs4WKszhNoeaINnpOiF+Xjk6HOXmwrqI4415UK+WSkfRaBIs2Cw97lxwHsb/VKjg3WV3KGPRo0ts9szPewNmmw0N3+dy5iua30zBpLzSadDGQP5IB2oWDki3zLHZFfqbFErPaa2sljjC3mrc2ZN5/JYlEE6uWZgK2i+kj23o8/sG86jDVUM3B6G2mgk9urAxkly1oifES3WYBwDKWtjbMDoAVV5inDv0rgxLPczpz30dsZivWYMnQJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DjZZV3U5g6Fzx1PJNmiSVWBQ9ZDh9lQoiBnO09xW+BE=;
 b=YxWU+xR2aod6cM8Hfg4jT8q6KcknnnbnlHK3UTgKtVfcqgoDNKwQB/yHAy5fAZulY9TNDZptJ0CmbxjbOxqeXojZztbOqvGEzt8Pz+M3VFa1IFmEuGGmtFn2KWPhWBMC7texeq2LsedhxL+4dVnzGcbSf+YA9rtGIYExr1tvYtxQKgd8YUuggfVLAaoVktdACsLXxyt6jOYkrB3G9M0DBZuutTC/zCIibuKIzIpozZAo3POWD2/+KAV0Gm0QbsMioKFIChi/hY+VWhk3rVAlw4SaB6QdavkdXXxJKMhAyvipWsyykAAqOwVJm3/FlQVhjIpz87ZGSUTX+uO5BAoc6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DjZZV3U5g6Fzx1PJNmiSVWBQ9ZDh9lQoiBnO09xW+BE=;
 b=MGTAiLJDiNBmwQ9iddSYYbsbLnVr/ACBPZCkOIWlUmCgRfzUpNBfEmw8UW2CxnSm96ZyOMVpHHPmwnSmHFuJCrrq0V9PVQd27J5LMQ1B2LSFHkKrGVS/mJiXpOOKJiln53mKX3uLO9nLAt6lu2omvuMHdWmKDBWxXLH6i8o628I=
Received: from SJ0PR03CA0231.namprd03.prod.outlook.com (2603:10b6:a03:39f::26)
 by SJ0PR10MB5767.namprd10.prod.outlook.com (2603:10b6:a03:3ef::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.25; Tue, 10 Mar
 2026 14:37:50 +0000
Received: from SJ5PEPF000001CD.namprd05.prod.outlook.com
 (2603:10b6:a03:39f:cafe::54) by SJ0PR03CA0231.outlook.office365.com
 (2603:10b6:a03:39f::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.25 via Frontend Transport; Tue,
 10 Mar 2026 14:37:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SJ5PEPF000001CD.mail.protection.outlook.com (10.167.242.42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Tue, 10 Mar 2026 14:37:50 +0000
Received: from DLEE213.ent.ti.com (157.170.170.116) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 10 Mar
 2026 09:37:49 -0500
Received: from DLEE207.ent.ti.com (157.170.170.95) by DLEE213.ent.ti.com
 (157.170.170.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 10 Mar
 2026 09:37:49 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE207.ent.ti.com
 (157.170.170.95) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 10 Mar 2026 09:37:49 -0500
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62AEbmh63244992;
	Tue, 10 Mar 2026 09:37:48 -0500
Message-ID: <c7c1a4dd-dd10-4490-998b-55f9ec5989a7@ti.com>
Date: Tue, 10 Mar 2026 09:37:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Albert Esteve <aesteve@redhat.com>, Sumit Semwal
	<sumit.semwal@linaro.org>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Marek Szyprowski
	<m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>, Rob Herring
	<robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>
References: <20260306-b4-dmabuf-heap-coherent-rmem-v3-0-3d00d36c9bc4@redhat.com>
 <20260306-b4-dmabuf-heap-coherent-rmem-v3-1-3d00d36c9bc4@redhat.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20260306-b4-dmabuf-heap-coherent-rmem-v3-1-3d00d36c9bc4@redhat.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001CD:EE_|SJ0PR10MB5767:EE_
X-MS-Office365-Filtering-Correlation-Id: c06f6b08-a82b-4511-afaf-08de7eb29b61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|1800799024|82310400026|36860700016|921020|7053199007|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	FVYxFAka9Y1KaW34yYzAsCTJ2VQxBbgCOk+yMcpco7ZYnJb5lwfH2UlrXS86RTplJ6LI96vz5+RbSksqotQl+bq6gmhoJWh0r97GcciWm6Yks5RWi2UpNI3NmG7DkwxXFB/uL5x9cYIrW6zStGyT3W9pCP2E2K6aapfuFgT5Fyx4HOKC8THGX9TKhb4v+UCwE6x396Vh2X3wbHPObsDo/ejX3kkSTyUlVk4OMxKh6HHPZ0y6XDFp1dNuAAth4WpnZ/b91PUsM2dNAB6pm1ZpmCtFgklIdF+yknTq1l3C0U/H/ti9oAYdRG6UOIrMsI8xeJ7WX+9mToYmPDRLUSu3M3zdU3VMr0TH9mtVj/Cd8iXOUyBUPj18Gai0tSnXHNMkkO249VE7FM1EOyGikdZwh6myy3g9NG7iai159OYtVt5O/uq2hCd7dXoUGTjTkkZKqGLJHClCL3CtlldtreBzInHJehANmG2MYfzrjtFi0XPl++VeevHSfkoSRiBc44lZ5pGVFiXGO4mDjTg2Y/KNcAqHByjG3wCkhMTDfJMMRe7sRly40C++Z9soOghcGE1teF534ft+CUQpUclA+6ZxKpWs6MYxVQfXRexkw6m81vn7185YjLbVUZXAf2CfQcPpRcWHo+IqfHwQLRIuINs292SzdR3Y41iGHYyoOo4SmxEgU6BCSOn32musiWIbLeOG12YOSuzIEhN0A2JglSSyDsJAEZKxKK+zpQsTrRGD8SV1D4xGzEMdDbeF7SDkm+pwWpAzuYNrMAFVgcHP8RyQTbN6JbvrA3pZD58A+6a9F1alTveOH7VCgCp3Qs0Fb+ez
X-Forefront-Antispam-Report: 
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(82310400026)(36860700016)(921020)(7053199007)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	5Z7BflejH2RwoI3as3cCohbyyY6VyptHfZi2+IBygoneUg2FA502IoL5Jhnr4RvmJx8spHKY6YS3ZYH1sW6xAuMZAfqKDtRQxZEvLUveWOsGlplrFayqwpLhLAWybvp1HsA53SpdH5CYjTKtOY4zBzftrKk+lSCZA6A+Bsin9HVeyHOBTrKEY1IizlBeixxMgxRbJWnIzKUTt3bLrnPZRb/Ltu9p9viyRomfVBdUCFUxztEOEnsP3iOq7XqZ5R8xsJ5P6lCZ+k97LDUxFF6UXQI/pQShrzD35RYqt8s17WMaQH7lrZ12Zr6Yk0oy5y/fhmU4QEcnbm3yCCEZvy9r/GkxTA1rhAHrTxl0ROsAAcH8TO4N6emO2Idr9LOHj0SxCtoRaf7+xOc46m7em4bmTLUR+zdXXuGpNo0D9kGHcEDu9KoULCyHnRUwVddyTcI6
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 14:37:50.8055
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c06f6b08-a82b-4511-afaf-08de7eb29b61
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	SJ5PEPF000001CD.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5767
X-Spamd-Bar: -----
Message-ID-Hash: 7WLE2SHQZRD3F4WJE2USYBFRDYMCEB5T
X-Message-ID-Hash: 7WLE2SHQZRD3F4WJE2USYBFRDYMCEB5T
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, mripard@redhat.com, echanude@redhat.com, John Stultz <john.stultz@linaro.org>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/6] dma-buf: dma-heap: Keep track of the heap device struct
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7WLE2SHQZRD3F4WJE2USYBFRDYMCEB5T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 2ED1F252294
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[ti.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[afd@ti.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ti.com:mid];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	NEURAL_HAM(-0.00)[-0.364];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:-]
X-Rspamd-Action: no action

On 3/6/26 4:36 AM, Albert Esteve wrote:
> From: John Stultz <john.stultz@linaro.org>
> 
> Keep track of the heap device struct.
> 
> This will be useful for special DMA allocations
> and actions.
> 
> Signed-off-by: John Stultz <john.stultz@linaro.org>
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Albert Esteve <aesteve@redhat.com>
> ---
>   drivers/dma-buf/dma-heap.c | 34 ++++++++++++++++++++++++++--------
>   include/linux/dma-heap.h   |  2 ++
>   2 files changed, 28 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> index ac5f8685a6494..1124d63eb1398 100644
> --- a/drivers/dma-buf/dma-heap.c
> +++ b/drivers/dma-buf/dma-heap.c
> @@ -31,6 +31,7 @@
>    * @heap_devt:		heap device node
>    * @list:		list head connecting to list of heaps
>    * @heap_cdev:		heap char device
> + * @heap_dev:		heap device
>    *
>    * Represents a heap of memory from which buffers can be made.
>    */
> @@ -41,6 +42,7 @@ struct dma_heap {
>   	dev_t heap_devt;
>   	struct list_head list;
>   	struct cdev heap_cdev;
> +	struct device *heap_dev;
>   };
>   
>   static LIST_HEAD(heap_list);
> @@ -223,6 +225,19 @@ const char *dma_heap_get_name(struct dma_heap *heap)
>   }
>   EXPORT_SYMBOL_NS_GPL(dma_heap_get_name, "DMA_BUF_HEAP");
>   
> +/**
> + * dma_heap_get_dev() - get device struct for the heap
> + * @heap: DMA-Heap to retrieve device struct from
> + *
> + * Returns:
> + * The device struct for the heap.
> + */
> +struct device *dma_heap_get_dev(struct dma_heap *heap)
> +{
> +	return heap->heap_dev;
> +}
> +EXPORT_SYMBOL_NS_GPL(dma_heap_get_dev, "DMA_BUF_HEAP");
> +
>   /**
>    * dma_heap_add - adds a heap to dmabuf heaps
>    * @exp_info: information needed to register this heap
> @@ -230,7 +245,6 @@ EXPORT_SYMBOL_NS_GPL(dma_heap_get_name, "DMA_BUF_HEAP");
>   struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>   {
>   	struct dma_heap *heap, *h, *err_ret;
> -	struct device *dev_ret;
>   	unsigned int minor;
>   	int ret;
>   
> @@ -272,14 +286,14 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>   		goto err1;
>   	}
>   
> -	dev_ret = device_create(dma_heap_class,
> -				NULL,
> -				heap->heap_devt,
> -				NULL,
> -				heap->name);
> -	if (IS_ERR(dev_ret)) {
> +	heap->heap_dev = device_create(dma_heap_class,
> +				       NULL,
> +				       heap->heap_devt,
> +				       NULL,
> +				       heap->name);
> +	if (IS_ERR(heap->heap_dev)) {
>   		pr_err("dma_heap: Unable to create device\n");
> -		err_ret = ERR_CAST(dev_ret);
> +		err_ret = ERR_CAST(heap->heap_dev);
>   		goto err2;
>   	}
>   
> @@ -295,6 +309,10 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>   		}
>   	}
>   
> +	/* Make sure it doesn't disappear on us */
> +	heap->heap_dev = get_device(heap->heap_dev);
> +
> +

Is this actually something that matters or could happen? Seems you
just remove it in the next patch anyway.

Andrew

>   	/* Add heap to the list */
>   	list_add(&heap->list, &heap_list);
>   	mutex_unlock(&heap_list_lock);
> diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
> index 648328a64b27e..493085e69b70e 100644
> --- a/include/linux/dma-heap.h
> +++ b/include/linux/dma-heap.h
> @@ -12,6 +12,7 @@
>   #include <linux/types.h>
>   
>   struct dma_heap;
> +struct device;
>   
>   /**
>    * struct dma_heap_ops - ops to operate on a given heap
> @@ -43,6 +44,7 @@ struct dma_heap_export_info {
>   void *dma_heap_get_drvdata(struct dma_heap *heap);
>   
>   const char *dma_heap_get_name(struct dma_heap *heap);
> +struct device *dma_heap_get_dev(struct dma_heap *heap);
>   
>   struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info);
>   
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
