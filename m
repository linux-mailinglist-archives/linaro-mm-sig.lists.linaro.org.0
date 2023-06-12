Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B592572CC7F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jun 2023 19:27:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC67D3F345
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jun 2023 17:27:27 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id BBEB73E896
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jun 2023 12:44:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=kCo1pR4S;
	dmarc=pass (policy=none) header.from=quicinc.com;
	spf=pass (lists.linaro.org: domain of quic_pkanojiy@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_pkanojiy@quicinc.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35C9QvYD002272;
	Mon, 12 Jun 2023 12:44:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=AbqVcEBTgwpX78pdviKKVyjWrTI6YI8h2YEgR9e9Gvc=;
 b=kCo1pR4STXPu4x0rLsWVJBc3Uk+Uvkr1zmk5KMs5UMsnXaZnNJsYijd4gHk85or8ON+K
 S5z1nEQTpWyj7V+rVMagJSZjOeK9fgtli/iXXFwxNV4CkQvmBB7PTatY5awd9AG5iSA9
 sA39PnxkQvGyYKP4MOgPFXW2b4cDnHzTsWVGJgYxg8RwVYZIMk2iTEJpemzFiklHXrfk
 W2dIAGxJKavcyBuTkTG1wQtcwOF+lXVTPNBCvixIUQlOeud92rDyg+RwsAZPOl0Uh7Ys
 g+Xe7OyT6Mx5MtEUzhvETmYc7snm9GlZKvDfftyarnQaP/ZptJmHgYoM+aXj7FSVT4y0 Sg==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r4ggr3b27-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jun 2023 12:44:19 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35CCiHSp014000
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jun 2023 12:44:18 GMT
Received: from [10.50.37.200] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Mon, 12 Jun
 2023 05:44:14 -0700
Message-ID: <1d2aa1b5-56d1-b334-5f2d-2fe3fb42b0b1@quicinc.com>
Date: Mon, 12 Jun 2023 18:14:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Sukrut Bellary <sukrut.bellary@linux.com>,
        Jeffrey Hugo
	<quic_jhugo@quicinc.com>,
        Oded Gabbay <ogabbay@kernel.org>,
        Sumit Semwal
	<sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=c3=b6nig?=
	<christian.koenig@amd.com>
References: <20230610021200.377452-1-sukrut.bellary@linux.com>
Content-Language: en-US
From: Pranjal Ramajor Asha Kanojiya <quic_pkanojiy@quicinc.com>
In-Reply-To: <20230610021200.377452-1-sukrut.bellary@linux.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: uCWHrFY7FAqAC1J-jmAOGSzXxsWQAkpw
X-Proofpoint-ORIG-GUID: uCWHrFY7FAqAC1J-jmAOGSzXxsWQAkpw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-12_06,2023-06-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 mlxscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 clxscore=1011
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306120110
X-Rspamd-Queue-Id: BBEB73E896
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[quicinc.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.180.131];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:22843, ipnet:205.220.180.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	URIBL_BLOCKED(0.00)[quicinc.com:email,quicinc.com:dkim,linux.com:email];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: quic_pkanojiy@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LIHQGM2E7WG4FW4TIC3QDLJGEFYDUNY5
X-Message-ID-Hash: LIHQGM2E7WG4FW4TIC3QDLJGEFYDUNY5
X-Mailman-Approved-At: Mon, 12 Jun 2023 17:26:46 +0000
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] accel/qaic: Fix dereferencing freed memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LIHQGM2E7WG4FW4TIC3QDLJGEFYDUNY5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit



On 6/10/2023 7:42 AM, Sukrut Bellary wrote:
> smatch warning:
> 	drivers/accel/qaic/qaic_data.c:620 qaic_free_object() error:
> 		dereferencing freed memory 'obj->import_attach'
> 
> obj->import_attach is detached and freed using dma_buf_detach().
> But used after free to decrease the dmabuf ref count using
> dma_buf_put().
> 
> Fixes: ff13be830333 ("accel/qaic: Add datapath")
> Signed-off-by: Sukrut Bellary <sukrut.bellary@linux.com>
> ---
>   drivers/accel/qaic/qaic_data.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/accel/qaic/qaic_data.c b/drivers/accel/qaic/qaic_data.c
> index e42c1f9ffff8..7cba4d680ea8 100644
> --- a/drivers/accel/qaic/qaic_data.c
> +++ b/drivers/accel/qaic/qaic_data.c
> @@ -613,11 +613,13 @@ static int qaic_gem_object_mmap(struct drm_gem_object *obj, struct vm_area_struc
>   static void qaic_free_object(struct drm_gem_object *obj)
>   {
>   	struct qaic_bo *bo = to_qaic_bo(obj);
> +	struct dma_buf *dmabuf;
>   
>   	if (obj->import_attach) {
>   		/* DMABUF/PRIME Path */
> +		dmabuf = obj->import_attach->dmabuf;
>   		dma_buf_detach(obj->import_attach->dmabuf, obj->import_attach);
> -		dma_buf_put(obj->import_attach->dmabuf);
> +		dma_buf_put(dmabuf);
>   	} else {
>   		/* Private buffer allocation path */
>   		qaic_free_sgt(bo->sgt);

Reviewed-by: Pranjal Ramajor Asha Kanojiya <quic_pkanojiy@quicinc.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
