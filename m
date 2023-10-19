Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B547CF7D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 14:00:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39DEA40C10
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 12:00:05 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 3321A3F362
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Oct 2023 04:46:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=fswbowur;
	spf=pass (lists.linaro.org: domain of quic_vjitta@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_vjitta@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39J4iVZo001920;
	Thu, 19 Oct 2023 04:46:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=GllU55egM3SFF4i33quwXnsHM4nT8xMO4Wjzw6HCkZ4=;
 b=fswbowurxsdu4Od9TTfXRCzMuSQ7SQ9iD6ylWvVyExjvVCzBPMA1xA6ZaSL1hpxncid5
 wvNf/brWH5ZhJwgtNgv9UBpFxhOLJO4IGnvG80ejFBzHnrjeqw0J475mX0/SlsYGdyOn
 gm0B8xpvz5Brh3/vEnHYDVMlKZ9F1GZ5+dQ6CnxSkt9lgweY0vmVpXNskuRfZw+fUYMA
 9a0/2BNEHSofbYRra19Ki3fTRXxKwgCLpYQ9A5rcQIZn4nh+dmJBJ07+NwwsOWwUzUuu
 hCcSmLL1pmuSyr8sNKartP4CtYzTKZmCSshn8lzbZ/un008iFy0c1FEw8PQxU5Eud9bO 0A==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ttcuv26qj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 04:46:35 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39J4kYXM005613
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 04:46:34 GMT
Received: from [10.216.19.246] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 18 Oct
 2023 21:46:26 -0700
Message-ID: <d4d471e7-64cf-42bf-a061-82934c904691@quicinc.com>
Date: Thu, 19 Oct 2023 10:16:22 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Sumit
 Semwal <sumit.semwal@linaro.org>, <christian.koenig@amd.com>,
        Matthias
 Brugger <matthias.bgg@gmail.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-9-yong.wu@mediatek.com>
From: Vijayanand Jitta <quic_vjitta@quicinc.com>
In-Reply-To: <20230911023038.30649-9-yong.wu@mediatek.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Fgb6rSe9B4xWlWXtpT1BE9r0OlNVksBF
X-Proofpoint-GUID: Fgb6rSe9B4xWlWXtpT1BE9r0OlNVksBF
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
	RCVD_IN_DNSWL_HI(-1.00)[205.220.180.131:from,129.46.96.20:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.180.131];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	URIBL_BLOCKED(0.00)[quicinc.com:dkim,mx0b-0031df01.pphosted.com:helo,mx0b-0031df01.pphosted.com:rdns,mediatek.com:email,devicetree.org:url];
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
X-Rspamd-Queue-Id: 3321A3F362
X-MailFrom: quic_vjitta@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PB4RLEA4XZUZEP3U4SPPDHG75FM4GVYO
X-Message-ID-Hash: PB4RLEA4XZUZEP3U4SPPDHG75FM4GVYO
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:52:36 +0000
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved memory for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PB4RLEA4XZUZEP3U4SPPDHG75FM4GVYO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 9/11/2023 8:00 AM, Yong Wu wrote:
> This adds the binding for describing a CMA memory for MediaTek SVP(Secure
> Video Path).
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  .../mediatek,secure_cma_chunkmem.yaml         | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,secure_cma_chunkmem.yaml
> 
> diff --git a/Documentation/devicetree/bindings/reserved-memory/mediatek,secure_cma_chunkmem.yaml b/Documentation/devicetree/bindings/reserved-memory/mediatek,secure_cma_chunkmem.yaml
> new file mode 100644
> index 000000000000..cc10e00d35c4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reserved-memory/mediatek,secure_cma_chunkmem.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reserved-memory/mediatek,secure_cma_chunkmem.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Secure Video Path Reserved Memory
> +
> +description:
> +  This binding describes the reserved memory for secure video path.
> +
> +maintainers:
> +  - Yong Wu <yong.wu@mediatek.com>
> +
> +allOf:
> +  - $ref: reserved-memory.yaml
> +
> +properties:
> +  compatible:
> +    const: mediatek,secure_cma_chunkmem
> +
> +required:
> +  - compatible
> +  - reg
> +  - reusable
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +
> +    reserved-memory {
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;
> +
> +        reserved-memory@80000000 {
> +            compatible = "mediatek,secure_cma_chunkmem";
> +            reusable;
> +            reg = <0x80000000 0x18000000>;
> +        };
> +    };

Instead of having a vendor specific binding for cma area, How about retrieving
https://lore.kernel.org/lkml/1594948208-4739-1-git-send-email-hayashi.kunihiko@socionext.com/ ?
dma_heap_add_cma can just associate cma region and create a heap. So, we can reuse cma heap
code for allocation instead of replicating that code here.

Thanks,
Vijay


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
