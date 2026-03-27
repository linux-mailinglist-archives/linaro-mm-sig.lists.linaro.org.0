Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBGtMtBi5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEFC4314E9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68E8F404FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:30:55 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 4393C402C4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 11:59:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b="RB/aqBUb";
	dmarc=pass (policy=none) header.from=quicinc.com;
	spf=pass (lists.linaro.org: domain of quic_msavaliy@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_msavaliy@quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62R4A5XA3341501;
	Fri, 27 Mar 2026 06:21:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YSzXm+RZAa9Rqyx7SbN6v7Cf13JatYH15U/iDOUtR48=; b=RB/aqBUbAIIEFFOU
	c4kMCFtneX801+z8GuXWH1f7pGJr/9byBXrII71fj5Sz7Ta96kdxaERnWneaDLbi
	EGhEjHiqBR3D1Zn3j94OzxJFnj0MmFTAxL6Pewjtk+1r0WaHSQAkfzVaE4HbIemI
	4c93ZvL3OaqY4ieLfJ5DIYga0kHNh/Km+B9cWAD7XgLTl6VTBl2QGSVJfGSUm/ms
	LF+A/AmZp564ZyAPY+xyo7rBYpAztwoFhzlNm7Y0vdiCLcEuofolRGHXCM9Ax3cq
	ZwzQI08gIaSGMt1af59bfUg5bN0YbkPSZtSeKsadoeV+MQghH7PYDkfxLbOmmHnJ
	hbbE0A==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d5a9q20g4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Mar 2026 06:21:39 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 62R6LcXr014950
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Mar 2026 06:21:38 GMT
Received: from [10.217.219.207] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Thu, 26 Mar
 2026 23:21:34 -0700
Message-ID: <341f2f06-eae0-44b1-b513-61a4a129bae2@quicinc.com>
Date: Fri, 27 Mar 2026 11:51:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aniket Randive <aniket.randive@oss.qualcomm.com>,
        Mukesh Kumar Savaliya
	<mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya
	<viken.dadhaniya@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>,
        "Sumit Semwal" <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>
References: <20260326-skip_extra_dma_tre-v1-1-deef018895dc@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
In-Reply-To: <20260326-skip_extra_dma_tre-v1-1-deef018895dc@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: O8eAz8RP_v7e5AXmdYACo4b6E9ip1Q8b
X-Proofpoint-ORIG-GUID: O8eAz8RP_v7e5AXmdYACo4b6E9ip1Q8b
X-Authority-Analysis: v=2.4 cv=J4GnLQnS c=1 sm=1 tr=0 ts=69c621f3 cx=c_pps
 a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=DM0cx9kTKsjz1JukrIkA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDA0NiBTYWx0ZWRfX6ZnL9fiECyZ7
 LMHimHdcXT+aA+1MibCeLVfagtST8511dCr1a3vtURNVnZEw4xHiwvvRhNvN3SSih1yvlx1XKVU
 pAToEwg1xvFa4h6hRW+pf96/YoiLdY87Xy+/AWg9/HsN/XKdkpY8f0ZXLGhLgVnVp1oM/jidyoF
 DuTeWboq70Z62uvuKk9UEZhRMGDmie++KvEI9Flgnm2QR5A7Gxr86XNmR2vNj8WgTkDL6AaGbfR
 5bbT8pTBIkqgvJGiO9XixXpZuKCwK0HJkrCQHqWHd+Rhbc0hLXPYuqpeW/0U+7y+IGZWydWaJwy
 pgdTTkTwxJGJHz7AtGJ5z+aqGud8orhprJWpnyN60E/4tjD5kmZa4jkkfXvMCOQj5ytvgyPLfI9
 DRBZKb0LtQSbJTjb1A48ngeJikYaTQGF1JfvJgsBazv4Vue2p3MVbgOGOHjgxFjlg4n5n3RAKQ/
 Gsi3MwCAsC9s9N4Y32g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_04,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1011 phishscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603270046
X-Spamd-Bar: ----
X-MailFrom: quic_msavaliy@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EIPJSVSNDSUIK75EZASASC7UNFPMQ363
X-Message-ID-Hash: EIPJSVSNDSUIK75EZASASC7UNFPMQ363
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:50 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] i2c: qcom-geni: Skip extra TX DMA TRE for single read message in GPI mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EIPJSVSNDSUIK75EZASASC7UNFPMQ363/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[587];
	R_DKIM_REJECT(1.00)[quicinc.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[quicinc.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[quicinc.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[quic_msavaliy@quicinc.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.897];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 4DEFC4314E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/26/2026 10:01 AM, Aniket Randive wrote:
> In GPI mode, the I2C GENI driver incorrectly generates an extra TX DMA
> TRE on the TX channel during single read message transfer. This results
What's the impact of this extra DMA TRE ? do you see failure/timeout, 
anything ?
> in an unnecessary write operation on the I2C bus, which is not required.
> 
> Update the logic to avoid generating the extra TX DMA TRE for single
> read message, ensuring correct behavior and preventing redundant
> transfers.
> 
So for read, we do unwanted write too ? if so, please write it 
accordingly.  Correct behavior needs to be justified against wrong.
> Co-developed-by: Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
> Signed-off-by: Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
> Signed-off-by: Aniket Randive <aniket.randive@oss.qualcomm.com>
> ---
>   drivers/i2c/busses/i2c-qcom-geni.c | 18 +++++++++++++-----
>   1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index a4acb78fafb6..2706309bbebb 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -625,8 +625,8 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
>   {
>   	struct gpi_i2c_config *peripheral;
>   	unsigned int flags;
> -	void *dma_buf;
> -	dma_addr_t addr;
> +	void *dma_buf = NULL;
> +	dma_addr_t addr = 0;
>   	enum dma_data_direction map_dirn;
>   	enum dma_transfer_direction dma_dirn;
>   	struct dma_async_tx_descriptor *desc;
> @@ -639,6 +639,11 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
>   	gi2c_gpi_xfer = &gi2c->i2c_multi_desc_config;
>   	msg_idx = gi2c_gpi_xfer->msg_idx_cnt;
>   
> +	if (op == I2C_WRITE && msgs[msg_idx].flags & I2C_M_RD) {
> +		peripheral->multi_msg = true;
what's the actual meaning of multi_msg here ? IIUC, this multi_msg is 
set to true for single transfer  ? any better name if so ? Yes, need to 
change it out of this patch.
> +		goto skip_dma;
> +	}
> +
>   	dma_buf = i2c_get_dma_safe_msg_buf(&msgs[msg_idx], 1);
>   	if (!dma_buf) {
>   		ret = -ENOMEM;
> @@ -668,6 +673,7 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
>   		flags = DMA_PREP_INTERRUPT | DMA_CTRL_ACK;
>   	}
>   
> +skip_dma:
>   	/* set the length as message for rx txn */
>   	peripheral->rx_len = msgs[msg_idx].len;
>   	peripheral->op = op;
> @@ -740,9 +746,11 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
>   	return 0;
>   
>   err_config:
> -	dma_unmap_single(gi2c->se.dev->parent, addr,
> -			 msgs[msg_idx].len, map_dirn);
> -	i2c_put_dma_safe_msg_buf(dma_buf, &msgs[msg_idx], false);
> +	if (op == I2C_WRITE && (msgs[msg_idx].flags & I2C_M_RD)) {
> +		dma_unmap_single(gi2c->se.dev->parent, addr,
> +				 msgs[msg_idx].len, map_dirn);
> +		i2c_put_dma_safe_msg_buf(dma_buf, &msgs[msg_idx], false);
> +	}
>   
>   out:
>   	gi2c->err = ret;
> 
> ---
> base-commit: 785f0eb2f85decbe7c1ef9ae922931f0194ffc2e
> change-id: 20260325-skip_extra_dma_tre-a3cf22f81d9b
> 
> Best regards,
> --
> Aniket Randive <aniket.randive@oss.qualcomm.com>
> 
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
