Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAQrCNz34GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F2940FDCF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3F41406A2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:53:14 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 54D1B3F7D0
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 09:26:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=WXvFdDly;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=K4lL8nxI;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of konrad.dybcio@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=konrad.dybcio@oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U4xfQN2622811
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 09:26:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MkhXCfGdSQcDvTlbYDPsW7XCU2SBVMl9E+b0/qNR+YA=; b=WXvFdDlyVDlLgs24
	hRq6p+6qK8CV9lic9QlCuUfaa0N8G3YCqYN7vRhVoRwikaXnrxpBvPouyJN9TthI
	Rvvxg6gHR2/83eMMhgIKHaF/2gzjTsd0/pwzyo1HiT7DJWdmxw4zXGOxJzj75wPv
	MxIqgQRwirpvHbcGxz6Uh5x1NIHXK1NA5mM+EXNEXSpNYv+ArFuWKkIbnB6TyN+z
	J+Mh2nk3LYfSRxD1D/R5R5tkklf9An488gzGNuxoue23wlQwz+TJGmjzPZzFtIfl
	Ecw7mI8ytS+6TnUauCSxQKMRKMdlm9JUK7i5oHYuEdiLkBsiOgfN0108MZ76Nj9P
	ZeiYXQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a41fxgr1r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 09:26:46 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87bd2dececeso3249086d6.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 02:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761816406; x=1762421206; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MkhXCfGdSQcDvTlbYDPsW7XCU2SBVMl9E+b0/qNR+YA=;
        b=K4lL8nxI/FF6KBj3GUZZO6qEUaph5upWBVFOiJK8KPavKb8GRD0sw3SfjjU2oqVboy
         JfCIe1Ob0ZrmpWG9JIksOYkraB0Md7/4j3h6OGvHYSrDbGZ3QwE6abKFc+6DlRqjXpyV
         THogbeQCSJ80s65VR4VYDk41W+pn6+L6g0ugCl5wbGBOMzvgWkGj8iReIPT2ws6I+m2n
         9ewxKHco5toJJzPPKO0q23mEpRJQX9c+bYVpOu1JYOSOp2Q/r4wHtzo5rUjbbqy+RB3u
         /OsdMWdSyI0IwW5U1mfGz1EnFJwvBITSYd31ifr4CAF/KAVHy3RXTrs5p4aTIq774sl7
         Mmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761816406; x=1762421206;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MkhXCfGdSQcDvTlbYDPsW7XCU2SBVMl9E+b0/qNR+YA=;
        b=Ym3f5QePozc2vv04dIY1UUztpP6rNSk+kwVRkCBHYFKLmr7uYDOpoJ2h8wg+77SbjR
         lO+JcieC5WKs/G4pjTWX8erXCubptE5stuDxBy2iqoHTaiHW1zL5dBD62ONIxjzP8za+
         WLLLeHS6lDnA0NlFlztnu1iuRF6GC4j+iw0jocdH37UX8q6errKvyLpXMColiregBBLl
         aRTilqTcxHobjbS++cIPgT3k2vtIVEF2Cdq/KcjYiSXqalutpTmOwqgKjDLmbncGeo+E
         +IwbD/SWoavBwopfd+ZA0/+mr//R8qvb0Tbe6NS8F2A3yMSxBnv0IR1aNgbqGiOmc2nE
         Qwlw==
X-Forwarded-Encrypted: i=1; AJvYcCXn00wD/KCnwysgEsXZnlMvLjV4XBxDVOwjARuDLYWv9cq2FImhYt9+KnJ1zFvJXIQx6iGVwDPyuPIKvixj@lists.linaro.org
X-Gm-Message-State: AOJu0YxejvUMHnRZzg4QGbL8USe9/8x3lQScgaO+380hh7nwBcIA3A9d
	DmDZi+CaMYO/1Xf1klDlVnT9P8eo0A5DGZWtbV6d89Bl51sTeDx/HQvHMGU6V3biaVQyzkjJd0T
	WVk/iPq6inbBnCiPNO5FCykYCYC5eb4RrMvDxu2/4/Tv1C8wFWBLPr3U5wjyqYH+Ccdq9EQ==
X-Gm-Gg: ASbGnctJYwTeMYPe+YMvSrecFMcdjD9zp75SyHhfARK1ZS74443uVneukhADEPeo/Fb
	tqDysJ4Ii+/kxUJMSN4drAg8PUbLyRKpIhPkh+eGs/wYNoVv1eHqKe2P57qmR8KKsB9REbF4Z0n
	IMhHG2KAr5FFlHTfC3mUXlVkASvYl/nN1Lwf8GLPwsw/6KQwRtdAoLekZYX3dTnW40u5+vC1L6w
	rfHSD8bLGLzeLLNs6ZmVuKYWHWmGg3oUZLPCdCebSbZNuShJmwAHtwremsxw4A6kGc8AOaJVZM7
	z/SIxXBZykguR6fjza5SRk3DPdO+Dx8A0KGX+Qh4YgxHmZr/Bny3ROdIPVPm/AGmUnrfBfQtQ+9
	FtvkvRKekfBAV65JNGhwQHO5SCUx/RNHUHa9UVD/GdSA3je7apxuqMmcl
X-Received: by 2002:a05:6214:487:b0:84f:81b4:4440 with SMTP id 6a1803df08f44-88009c059damr57947666d6.7.1761816406130;
        Thu, 30 Oct 2025 02:26:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENOdltg392rpt/C6P2DXClkaCW6AuvtVnIkahf+FfBy++WBa3yu6xR0D9iLMYKtJjowkMGMg==
X-Received: by 2002:a05:6214:487:b0:84f:81b4:4440 with SMTP id 6a1803df08f44-88009c059damr57947516d6.7.1761816405687;
        Thu, 30 Oct 2025 02:26:45 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853f9a0fsm1679780866b.50.2025.10.30.02.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 02:26:45 -0700 (PDT)
Message-ID: <49f067c0-20d3-4039-95e6-fc19ce48881d@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 10:26:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Wolfram Sang <wsa@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
References: <20251029-topic-sm8x50-geni-i2c-hub-no-dma-v1-1-5e264258a5bd@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251029-topic-sm8x50-geni-i2c-hub-no-dma-v1-1-5e264258a5bd@linaro.org>
X-Proofpoint-GUID: mYiSoQOe5M4O4XYX-XLPV_br9MTL3stL
X-Authority-Analysis: v=2.4 cv=UJrQ3Sfy c=1 sm=1 tr=0 ts=69032f56 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=7QP1INNbtZu8WugdpZMA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: mYiSoQOe5M4O4XYX-XLPV_br9MTL3stL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA3NiBTYWx0ZWRfX1E/Dg1JAAuL8
 BWpCfvnXATpOA4b6GIlKQKLzCF9CfrM4b/co+I1iguvvmQyQJNUg12I6BvE4X5QoXGmtLnTBNfI
 CKWq+B724hQHwFrrKHtkIHIaK+wbKWkwXxOch5tucr0DvStmCTyXHf84+6kX41JuTC7QCPvS3qd
 E1k3jZ+/ZJ1kLVEJpdk4jOOFUYfS1k5MuXCAdPRBOwDm16laIUPtNlADEiApt2rP0iwmZgbh6CY
 47u+tC2s1pQYGgNMRGl7Fi7YKF6YjdgwTJsJXVbAy4jwwTek5W3aRRXLF7R8+GEqZqVINepIr+b
 nxtHVcec8B+aQROG4hCRry8kcSdwMp72/L6uOWU9zX7p2Q5VVQonr/nFBBnGyIogLtKJrwE9qRg
 C+jVC4Ie06Df8xilgS+XoRWuAe5Fyg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300076
X-Spamd-Bar: ----
X-MailFrom: konrad.dybcio@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NZOSHJ77G3VBVX4GRPOXFYSI54W6G4VR
X-Message-ID-Hash: NZOSHJ77G3VBVX4GRPOXFYSI54W6G4VR
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:35 +0000
CC: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: qcom-geni: make sure I2C hub controllers can't use SE DMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NZOSHJ77G3VBVX4GRPOXFYSI54W6G4VR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[4037];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.887];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:mid,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 91F2940FDCF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 10/29/25 7:07 PM, Neil Armstrong wrote:
> The I2C Hub controller is a simpler GENI I2C variant that doesn't
> support DMA at all, add a no_dma flag to make sure it nevers selects
> the SE DMA mode with mappable 32bytes long transfers.
> 
> Fixes: cacd9643eca7 ("i2c: qcom-geni: add support for I2C Master Hub variant")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index 43fdd89b8beb..bfb352b04902 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -97,6 +97,7 @@ struct geni_i2c_dev {
>  	dma_addr_t dma_addr;
>  	struct dma_chan *tx_c;
>  	struct dma_chan *rx_c;
> +	bool no_dma;
>  	bool gpi_mode;
>  	bool abort_done;
>  };
> @@ -425,7 +426,7 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>  	size_t len = msg->len;
>  	struct i2c_msg *cur;
>  
> -	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
> +	dma_buf = gi2c->no_dma ? NULL : i2c_get_dma_safe_msg_buf(msg, 32);

Not a huge fan of putting the ternary operator here, but I don't
mind that much either

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
