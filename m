Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHaTF65k5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:38:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3FE431AB1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:38:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9C623F6F8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:38:52 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 10F383F735
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Apr 2026 04:39:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="aDX/karK";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=ABm3TZBy;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of mukesh.savaliya@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=mukesh.savaliya@oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 635ATvxA3204592
	for <linaro-mm-sig@lists.linaro.org>; Mon, 6 Apr 2026 04:39:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ErGZ9VGt485klsK/g/5Yj2oyGp2dAuXoJriTQiswEyQ=; b=aDX/karKvYmPtB5E
	ZFzkJ4/tawXZhF55uWZwsPOFHXAirMRJk4eEple/+0j2HijDm9BCh2aithOdvobR
	zBqot8XcvpYSnhWCiNfRyMLbZpOK8r5NAuS3rkZ+iUDsOnA6EpQuKbz+EoIXrNLR
	p45gI5vvbbdKDPNW81FIL5SfBswQV8ELidtvugTxbDlPG4RbCA8zLtXfi/lFk9tl
	d+JgZX5/h4krD1m7uakjeutr6xSEn8xqMRDpuztTyvkMGFQvMyRcyzhqHarmT/w7
	r66Nwi3RujeDn8f7iOFL5UISgbIb7190ZbCUiWeoI6XOhDucZA7lQoPSRoaN3+wr
	G39PHQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4datqskrv7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 06 Apr 2026 04:39:07 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a90510a6d1so26265945ad.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 Apr 2026 21:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775450346; x=1776055146; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ErGZ9VGt485klsK/g/5Yj2oyGp2dAuXoJriTQiswEyQ=;
        b=ABm3TZByPJhMbII/BFn/7JxoXcJqBWMiwSBnJT2wM0EmchTqF//39FhtKR3+CWhZog
         +cUIcG+y6ffcQBNdAdyi94lRENz+hR6FUcTeLF2bd7yxgs1tPhVhczclhxzayOOv/HhL
         sjMqFPZliO4CQKsG/DNtBuGUEdzDfjEyTFBWm30XfJClj1hjXsiJRm0aMlVzRtxMzWYP
         z3ktr2dP43rJhaLsn6b+IGwQvWq2JhISeuPIprbRx8abri4L3x5HYhp7sN9DZp7dtTfV
         CjcLeA7tFpXinwkII6U0nIZpT+wh/VwJYWORFX4/5YcLN6kK+i5H1g3/0YqGYpd8j+DE
         7TOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775450346; x=1776055146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ErGZ9VGt485klsK/g/5Yj2oyGp2dAuXoJriTQiswEyQ=;
        b=SU5etfVXnhwh6OfBE0oaezWxuKPCldqk2SlB/f7xe7q6/ruFoimDwMKnzDH7wv/w4h
         X5T3CFm8df2JVQaqBRPAlt9TOkXHVBUokFvHkrCOaS/34IBdFJRWsiT7gB+eSH9Ztk/h
         HYN1mw7KE4VV0SInVVyxOoglRUH1NFZtVGyawEKUk2yn1hlPFVXB8DxDAK17Rq/kNqpQ
         SkDBdyUSGm0rh5e5iCaZpKvvn0NojmBFbzhYD22bH5mzl0NJGbWkM0UCr0gZpT+MVgrR
         6K0oes5WUNNPYaEoU1JTAk5dWQP3kSnLWkTbbwm1iDkXKqHb3UhAmQT17GK6HHz/F9Wu
         Ii4w==
X-Forwarded-Encrypted: i=1; AJvYcCUF/ija1KPSdssOyZDL1nEbsofs79CJWMuKLZMlvaNejkI4d3lR4g3upy0luyR0F1ALtHp7uXK3HmN1n0bX@lists.linaro.org
X-Gm-Message-State: AOJu0Yx1lvnpzcWkljSV23Y0fJNmjxKoj6EFf33hEewt8Tys91wb3CTN
	l7oG69UCity7BNgsg1mXSrcb9QaggjM83vWVJeDcu+TVgO3l14Jh9XbNn0wA739d11D7aE5/EPk
	BN+xRNGXPQfuHMSX3pjXjJGcGXqx7LTvXbI7AtbmTP68l3NDX0UR4bocaozNZu7x89Tqybw==
X-Gm-Gg: AeBDiesbQq3F8x+U0QfdkBa9RG5SDZzAIETJb9qH6RB1U1aveeuNLPN39FG67bvduFA
	pVJIPOlUdLEuOc/axcCmVmR3pOSY8yNI9uI9wGfE34MxfpWGiUu7JFTKohZDyqkHomQ6FmbMvJb
	mLoSi0RWP5XS3OlSz1PJISyzaFetfUHEVvGS3TgYXn2fXyr7+ltTEZvpvVuYNP8E1ApzmLqsg04
	PsfD9EUbki7Sozy8pX4+JmfJSaLO4JUDqogtxINBLOdTQmuvp4wNQ5wptF4aknBzyMTK/+7HmS1
	2Tb9pSBYnWEcMxFxsBZB1bxZQocNwB7YD1HWeQkFtwerj0wgWxlHoO+jIksiOmj58A6JXv8e3NO
	6DwZIQcnn/uv5pNtpnf6lxprBxHaI0k+9dc+DCEJpmv2e2KjST/lo4zO8
X-Received: by 2002:a17:902:d2c6:b0:2b2:53f5:461f with SMTP id d9443c01a7336-2b277e566a8mr124146715ad.25.1775450346417;
        Sun, 05 Apr 2026 21:39:06 -0700 (PDT)
X-Received: by 2002:a17:902:d2c6:b0:2b2:53f5:461f with SMTP id d9443c01a7336-2b277e566a8mr124146525ad.25.1775450345888;
        Sun, 05 Apr 2026 21:39:05 -0700 (PDT)
Received: from [10.217.219.207] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b27478945asm162456115ad.28.2026.04.05.21.39.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Apr 2026 21:39:05 -0700 (PDT)
Message-ID: <818da0cf-06e8-4a26-955b-67a3d5392e91@oss.qualcomm.com>
Date: Mon, 6 Apr 2026 10:08:59 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aniket Randive <aniket.randive@oss.qualcomm.com>,
        viken.dadhaniya@oss.qualcomm.com, andi.shyti@kernel.org,
        sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20260403084135.1300931-1-aniket.randive@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Savaliya <mukesh.savaliya@oss.qualcomm.com>
In-Reply-To: <20260403084135.1300931-1-aniket.randive@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ari/yCZV c=1 sm=1 tr=0 ts=69d338eb cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=TIcjmxIkOcpZypuolxMA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: VpgUpaAZMrs5cNo3-o7aKFlzCFJHbnzt
X-Proofpoint-GUID: VpgUpaAZMrs5cNo3-o7aKFlzCFJHbnzt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA2MDA0MSBTYWx0ZWRfX6hwNzUz9txSi
 smXcs1cZZveGrA4o3caVdWNB5Cc3ghXMHItPj5NSkF9dR7bqWfPp06rztrceXGk9EI3ymnQGglg
 PgoEynObcRt8HFAxC8dgU9BGrZy65dhVeRm4mZwdJ1JK8npdXDp25BLTqYiJHM8vrA6Mc7WBk2f
 XcEHUw9629vRM1YRdC0uJY4mw8haKHEsJAbLxltMAlZATggOD2jNwVHIinJOq81qC5W/PWa5T3G
 BSLx733EuXrDecOxEfHn6K98NLulJ1HZCfIqV3S52N4uWpeaRfC1ypK26LGe1qB5u97lbmQuNyx
 dxZI5lBD6vrxUySwj2YogeEJcmJGRGdPPZD++POIqAKKiURHZ+RZKysPkVsmbPc/JrZvvdl1cOz
 BCPsBSIlcK9+UqK2De22QlYgHcCREl8qe6MX5eT/sxok+NWACguZjxrf0mUlpkApf7FYBOqQ8TH
 T9wghEwF5STx8aWwHLA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-06_01,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1011 malwarescore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604060041
X-Spamd-Bar: ----
X-MailFrom: mukesh.savaliya@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4CFSUOZDZHVJF5CTLMKYRQBV7DU4FJML
X-Message-ID-Hash: 4CFSUOZDZHVJF5CTLMKYRQBV7DU4FJML
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:50 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V3] i2c: qcom-geni: Avoid extra TX DMA TRE for single read message in GPI mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4CFSUOZDZHVJF5CTLMKYRQBV7DU4FJML/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[348];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mukesh.savaliya@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,linaro.org:email,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: DB3FE431AB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/3/2026 2:11 PM, Aniket Randive wrote:
> In GPI mode, the I2C GENI driver programs an extra TX DMA transfer
> descriptor (TRE) on the TX channel when handling a single read message.
> This results in an unintended write phase being issued on the I2C bus,
> even though a read transaction does not require any TX data.
> 
> For a single-byte read, the correct hardware sequence consists of the
> CONFIG and GO commands followed by a single RX DMA TRE. Programming an
> additional TX DMA TRE is redundant, causes unnecessary DMA buffer
> mapping on the TX channel, and may lead to incorrect bus behavior.
> 
> Update the transfer logic to avoid programming a TX DMA TRE for single
> read messages in GPI mode.
> 
> Co-developed-by: Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
> Signed-off-by: Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
> Signed-off-by: Aniket Randive <aniket.randive@oss.qualcomm.com>
> ---
> Changes in v3:
>    - Added comment in the driver for better readability and changed the
>      position of 'skip_dma' label to allow dma engine configuration.
> 
> Changes in v2:
>    - Updated the commit message.
> 
>   drivers/i2c/busses/i2c-qcom-geni.c | 20 +++++++++++++++-----
>   1 file changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index a4acb78fafb6..78b92db7c7fd 100644
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
> @@ -639,6 +639,12 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
>   	gi2c_gpi_xfer = &gi2c->i2c_multi_desc_config;
>   	msg_idx = gi2c_gpi_xfer->msg_idx_cnt;
>   
> +	/* Skip TX DMA map for I2C_WRITE operation to avoid unintended write cycle */
Seems you are missing writing important point - For read message ?
Important is to clarity what's the condition we are handling, Skipping 
something is anyway clear from goto skip_dma.
> +	if (op == I2C_WRITE && msgs[msg_idx].flags & I2C_M_RD) {
> +		peripheral->multi_msg = true;
> +		goto skip_dma;
> +	}
> +
>   	dma_buf = i2c_get_dma_safe_msg_buf(&msgs[msg_idx], 1);
>   	if (!dma_buf) {
>   		ret = -ENOMEM;
> @@ -658,6 +664,7 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
>   		goto out;
>   	}
>   
> +skip_dma:
Better name - skip_tx_dma_map ?
>   	if (gi2c->is_tx_multi_desc_xfer) {
>   		flags = DMA_CTRL_ACK;
>   
> @@ -740,9 +747,12 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
>   	return 0;
>   
>   err_config:
> -	dma_unmap_single(gi2c->se.dev->parent, addr,
> -			 msgs[msg_idx].len, map_dirn);
> -	i2c_put_dma_safe_msg_buf(dma_buf, &msgs[msg_idx], false);
> +	/* Avoid DMA unmap as the write operation skipped DMA mapping */
> +	if (dma_buf) {
> +		dma_unmap_single(gi2c->se.dev->parent, addr,
> +				 msgs[msg_idx].len, map_dirn);
> +		i2c_put_dma_safe_msg_buf(dma_buf, &msgs[msg_idx], false);
> +	}
>   
>   out:
>   	gi2c->err = ret;

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
