Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB8A7CF7C5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:59:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F89340C10
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:59:22 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 78F793F362
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Oct 2023 04:45:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=cTuGhnsg;
	spf=pass (lists.linaro.org: domain of quic_vjitta@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_vjitta@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39J47EYO030685;
	Thu, 19 Oct 2023 04:45:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=LLKCqAQkXIt5yyS3YauV6hUjXjexODPbf5Fe1p8Y7gs=;
 b=cTuGhnsgxlwDSLqGnKjVLUcHWuDA3XkIITG39wfht2GrX4y/oYPoQYbEQnKcR4smQ6PS
 LctuHOCD5zKk0x5yOKKgNNUq5UqvTY3PcsXhjLTdjwPrlNeCo9d2wEcDy7X5OjwWQS0+
 sY3DnaRJKIqveO9yb5021KtXcemXK/byI16g1qMzZUQlFmHP+hciEpNqsi+t7tq+9Chs
 jYgDuwyn02VO4+d+9C9w7kJZRjeaGHestuUoru7nO1Bt/NY7wqL1lXGITG0Kngw1rjS4
 rxsSRojeH/AsNrnEUFVM/XxedEYrrdM79034cZl3UhGQT8aaX4+3mMtvv76EIoyvGraU Dg==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ttcuv26mn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 04:45:34 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39J4jXxi004486
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 04:45:33 GMT
Received: from [10.216.19.246] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 18 Oct
 2023 21:45:24 -0700
Message-ID: <5d806772-a2b4-4304-be45-7c2ed2930fcc@quicinc.com>
Date: Thu, 19 Oct 2023 10:15:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Sumit
 Semwal <sumit.semwal@linaro.org>, <christian.koenig@amd.com>,
        Matthias
 Brugger <matthias.bgg@gmail.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-5-yong.wu@mediatek.com>
From: Vijayanand Jitta <quic_vjitta@quicinc.com>
In-Reply-To: <20230911023038.30649-5-yong.wu@mediatek.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: CPwMUBJQsnSw-RhST_Y5Uy1hTw1cat2n
X-Proofpoint-GUID: CPwMUBJQsnSw-RhST_Y5Uy1hTw1cat2n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-19_02,2023-10-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310190039
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[129.46.96.20:received,205.220.180.131:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.180.131];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	URIBL_BLOCKED(0.00)[quicinc.com:dkim,mediatek.com:email,mx0b-0031df01.pphosted.com:helo,mx0b-0031df01.pphosted.com:rdns];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,amd.com,gmail.com];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+];
	ASN(0.00)[asn:22843, ipnet:205.220.180.0/24, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 78F793F362
X-MailFrom: quic_vjitta@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5RAUAFB2QD6273M4LAN7OQ7NMEDNZC3W
X-Message-ID-Hash: 5RAUAFB2QD6273M4LAN7OQ7NMEDNZC3W
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:52:36 +0000
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] dma-buf: heaps: Initialise MediaTek secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5RAUAFB2QD6273M4LAN7OQ7NMEDNZC3W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 9/11/2023 8:00 AM, Yong Wu wrote:
> Initialise a mtk_svp heap. Currently just add a null heap, Prepare for
> the later patches.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/dma-buf/heaps/Kconfig           |  8 ++
>  drivers/dma-buf/heaps/Makefile          |  1 +
>  drivers/dma-buf/heaps/mtk_secure_heap.c | 99 +++++++++++++++++++++++++
>  3 files changed, 108 insertions(+)
>  create mode 100644 drivers/dma-buf/heaps/mtk_secure_heap.c
> 
> diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
> index a5eef06c4226..729c0cf3eb7c 100644
> --- a/drivers/dma-buf/heaps/Kconfig
> +++ b/drivers/dma-buf/heaps/Kconfig
> @@ -12,3 +12,11 @@ config DMABUF_HEAPS_CMA
>  	  Choose this option to enable dma-buf CMA heap. This heap is backed
>  	  by the Contiguous Memory Allocator (CMA). If your system has these
>  	  regions, you should say Y here.
> +
> +config DMABUF_HEAPS_MTK_SECURE
> +	bool "DMA-BUF MediaTek Secure Heap"
> +	depends on DMABUF_HEAPS && TEE
> +	help
> +	  Choose this option to enable dma-buf MediaTek secure heap for Secure
> +	  Video Path. This heap is backed by TEE client interfaces. If in
> +	  doubt, say N.
> diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makefile
> index 974467791032..df559dbe33fe 100644
> --- a/drivers/dma-buf/heaps/Makefile
> +++ b/drivers/dma-buf/heaps/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+= system_heap.o
>  obj-$(CONFIG_DMABUF_HEAPS_CMA)		+= cma_heap.o
> +obj-$(CONFIG_DMABUF_HEAPS_MTK_SECURE)	+= mtk_secure_heap.o
> diff --git a/drivers/dma-buf/heaps/mtk_secure_heap.c b/drivers/dma-buf/heaps/mtk_secure_heap.c
> new file mode 100644
> index 000000000000..bbf1c8dce23e
> --- /dev/null
> +++ b/drivers/dma-buf/heaps/mtk_secure_heap.c
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * DMABUF mtk_secure_heap exporter
> + *
> + * Copyright (C) 2023 MediaTek Inc.
> + */
> +
> +#include <linux/dma-buf.h>
> +#include <linux/dma-heap.h>
> +#include <linux/err.h>
> +#include <linux/module.h>
> +#include <linux/slab.h>
> +
> +/*
> + * MediaTek secure (chunk) memory type
> + *
> + * @KREE_MEM_SEC_CM_TZ: static chunk memory carved out for trustzone.
> + */
> +enum kree_mem_type {
> +	KREE_MEM_SEC_CM_TZ = 1,
> +};
> +
> +struct mtk_secure_heap_buffer {
> +	struct dma_heap		*heap;
> +	size_t			size;
> +};
> +
> +struct mtk_secure_heap {
> +	const char		*name;
> +	const enum kree_mem_type mem_type;
> +};
> +
> +static struct dma_buf *
> +mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
> +		      unsigned long fd_flags, unsigned long heap_flags)
> +{
> +	struct mtk_secure_heap_buffer *sec_buf;
> +	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> +	struct dma_buf *dmabuf;
> +	int ret;
> +
> +	sec_buf = kzalloc(sizeof(*sec_buf), GFP_KERNEL);

As we know, kzalloc can only allocate 4MB at max. So, secure heap has this limitation.
can we have a way to allocate more memory in secure heap ? maybe similar to how system heap does?

Thanks,
Vijay

> +	if (!sec_buf)
> +		return ERR_PTR(-ENOMEM);
> +
> +	sec_buf->size = size;
> +	sec_buf->heap = heap;
> +
> +	exp_info.exp_name = dma_heap_get_name(heap);
> +	exp_info.size = sec_buf->size;
> +	exp_info.flags = fd_flags;
> +	exp_info.priv = sec_buf;
> +
> +	dmabuf = dma_buf_export(&exp_info);
> +	if (IS_ERR(dmabuf)) {
> +		ret = PTR_ERR(dmabuf);
> +		goto err_free_buf;
> +	}
> +
> +	return dmabuf;
> +
> +err_free_buf:
> +	kfree(sec_buf);
> +	return ERR_PTR(ret);
> +}
> +
> +static const struct dma_heap_ops mtk_sec_heap_ops = {
> +	.allocate	= mtk_sec_heap_allocate,
> +};
> +
> +static struct mtk_secure_heap mtk_sec_heap[] = {
> +	{
> +		.name		= "mtk_svp",
> +		.mem_type	= KREE_MEM_SEC_CM_TZ,
> +	},
> +};
> +
> +static int mtk_sec_heap_init(void)
> +{
> +	struct mtk_secure_heap *sec_heap = mtk_sec_heap;
> +	struct dma_heap_export_info exp_info;
> +	struct dma_heap *heap;
> +	unsigned int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(mtk_sec_heap); i++, sec_heap++) {
> +		exp_info.name = sec_heap->name;
> +		exp_info.ops = &mtk_sec_heap_ops;
> +		exp_info.priv = (void *)sec_heap;
> +
> +		heap = dma_heap_add(&exp_info);
> +		if (IS_ERR(heap))
> +			return PTR_ERR(heap);
> +	}
> +	return 0;
> +}
> +
> +module_init(mtk_sec_heap_init);
> +MODULE_DESCRIPTION("MediaTek Secure Heap Driver");
> +MODULE_LICENSE("GPL");
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
