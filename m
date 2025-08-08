Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D05E4B1E65E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Aug 2025 12:17:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8258744A0D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Aug 2025 10:17:36 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 2F37C4253B
	for <linaro-mm-sig@lists.linaro.org>; Fri,  8 Aug 2025 10:17:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=T4MUx9WX;
	spf=pass (lists.linaro.org: domain of quic_charante@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_charante@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5787BZ6a007643;
	Fri, 8 Aug 2025 10:17:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c/phIuxoIUzkjBry14BRzTtMSTDr5kOHNRDCXHgMW+k=; b=T4MUx9WXbm4vFpWk
	tLK7/QyQSRqWM14T3pS8QXVjBNNus4tNtPoTt0HwoC9rZu4bB75NceIrGcSdUh+K
	jDW+v/krliyuSYX/tdrjXcNCfYHsKhGVjy0urZ7O0FXf1GehhU6qCYFm6oqooBMe
	bh6UHgNmMUEf8m0Qxw0dzSVOtVXMBOVh9yZTgLNpgZ69Bx7UwwTQmYtOgtgms0Ao
	vPmDJZgMMzRx7B8IzpJ0NcRSMxRI+W+6DspBRHZuHJc8vp419XbiIGeUdwb1W/rC
	DtyACocduXXQjAoTAs2l5tcfeZPZhtLDBiHGprcQJ9fMgQoOnEpB1bjO0HtRgNIS
	7yBU9Q==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48c8u26q44-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 08 Aug 2025 10:17:11 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 578AHBHa010739
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 8 Aug 2025 10:17:11 GMT
Received: from [10.219.56.14] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 8 Aug
 2025 03:17:05 -0700
Message-ID: <a5526631-15fc-479f-8ac8-015231357080@quicinc.com>
Date: Fri, 8 Aug 2025 15:46:21 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@google.com>,
        Sumit Semwal
	<sumit.semwal@linaro.org>,
        Benjamin Gaignard
	<benjamin.gaignard@collabora.com>,
        Brian Starkey <Brian.Starkey@arm.com>,
        John Stultz <jstultz@google.com>,
        "T.J. Mercier" <tjmercier@google.com>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20250617-dma-buf-ecc-heap-v5-0-0abdc5863a4f@kernel.org>
 <20250617-dma-buf-ecc-heap-v5-2-0abdc5863a4f@kernel.org>
Content-Language: en-US
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <20250617-dma-buf-ecc-heap-v5-2-0abdc5863a4f@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: QtuIlNDcZUtMiEkoJ1Eo_DGgYVxnih83
X-Authority-Analysis: v=2.4 cv=Q/TS452a c=1 sm=1 tr=0 ts=6895cea7 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=PNflvO2YEgqhxBGMU7UA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
X-Proofpoint-ORIG-GUID: QtuIlNDcZUtMiEkoJ1Eo_DGgYVxnih83
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDA5MCBTYWx0ZWRfX8H7DV5Yc9Ti9
 sRH1qkdQbzr/5idaEBh/1gEEOr9XMM62GnP1gp1b4EO/2FaF6igM8im7qvEcj7+tmVN31pHvMiC
 TmFwknZqkB57qCdudIeaIg9pv8Ym5hcarcNkOMn0pDlqMcA/lAZrdsQlhX3YvBDL6fS1j6LKJkN
 53areVHa033QARJ+3791eQjNA2EH4zupu8EXGie8kYikiKiyet21/v9oLkbojLjXhZt8vW5mPXT
 JBKOArQGBAU9KhW9AnEl1aut9AR4iqQ8m87bYXrJcoABdAqehayhRs7WZU/ClDonynkwZNLjsw9
 E+6PkyD5H+fC2cUcmZfHNyZUSO8oCbdo8yPY4UFtNkBu8kGlgNN36kyNOLGrUhP6G6v7q/yOzBJ
 nH4m9P7I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1011 suspectscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060090
X-Spamd-Result: default: False [-1.56 / 15.00];
	BAYES_HAM(-2.06)[95.40%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.168.131];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	MIME_GOOD(-0.10)[text/plain];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:26211, ipnet:205.220.168.0/24, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[quicinc.com:mid,quicinc.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	HAS_XOIP(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2F37C4253B
X-Spamd-Bar: -
Message-ID-Hash: MI6ZKZOJU5MYAB5BS3IKJF5THUVIXRQZ
X-Message-ID-Hash: MI6ZKZOJU5MYAB5BS3IKJF5THUVIXRQZ
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/2] dma-buf: heaps: Introduce a new heap for reserved memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MI6ZKZOJU5MYAB5BS3IKJF5THUVIXRQZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Maxime,

On 6/17/2025 5:55 PM, Maxime Ripard wrote:
> +static void carveout_heap_dma_buf_release(struct dma_buf *buf)
> +{
> +	struct carveout_heap_buffer_priv *buffer_priv = buf->priv;
> +	struct carveout_heap_priv *heap_priv = buffer_priv->heap;
> +	unsigned long len = buffer_priv->num_pages * PAGE_SIZE;
> +
> +	gen_pool_free(heap_priv->pool, buffer_priv->paddr, len);

Just checking If clearing of the memory is missed before releasing it to
the free pool. If not, isn't it a leak of data when the heap is being
used by the multiple apps.

BTW, thanks for these patches.

> +	kfree(buffer_priv);
> +}

-Charan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
