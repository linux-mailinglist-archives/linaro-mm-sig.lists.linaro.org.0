Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EVgA9n44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CDE40FFF5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E42A404DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:57:27 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 900983F73D
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Nov 2025 10:28:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=prQuvqIY;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=AdYYPIHi;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of mukesh.savaliya@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=mukesh.savaliya@oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A53s6c73913768
	for <linaro-mm-sig@lists.linaro.org>; Wed, 5 Nov 2025 10:28:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JF+KpggyAZ/ITnvctK4l8SdHIQOwsXYkgFSK64qTgoI=; b=prQuvqIY2Amv7BYe
	cVEn7aZ5txx5vMjo3H/OZ/QYLOQJ2/BvymOuzcAhAesQg0BHcCGsi+dwuKsaQEoQ
	Cw2/QjIyobAfPE1576rdNBI3vH80JpvwLnh/MbqSFlNezHVsM49NhGfxqY0ILA0R
	vq/lGyY5bKiJAhO7d7ZhcXzuePYzfFN6ItFouYOAWskDar0pK7WMSu5CUUrfYTXx
	ouZfweq0n+i0bBRooAwE6KKrakOgnJmryOeMjZhVRLi/d9b3N+ivB72jD3BK3Tjk
	1up7kXC4a9WZK4t10QVgChHcl7jXXLSItX7jY8tgN4ZyVMGKVngGOMrodpi72iNl
	kFK+1w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7y378ye6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Nov 2025 10:28:36 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-336b646768eso7459294a91.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Nov 2025 02:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762338515; x=1762943315; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JF+KpggyAZ/ITnvctK4l8SdHIQOwsXYkgFSK64qTgoI=;
        b=AdYYPIHiNTcr7MygCNIfsHYE3gO9AetdEDfKNyxAWvMYeZIbZ7PI1kGGi7zPNfL+83
         DuLRDlzsqF5sz7HKt3prnMAW2brx0g4lqcc8OSJlWUtxbEToGXt18cXi04rspExzw6jd
         DIfhVL8iA7DjtNVSK4p1vhjNIRyb7caSfZbb0Fyi5lD8NqaQXAYAT4py7XZtF7xWYW4k
         06ljCdnPL6XXvyj3PkczRHIXOfFd6RtzeLZ2fuUDoIkhbLQltJzg47bz/cdSrFA6GX+k
         ZhfRgXSCnxaDpWN3FS0nNAE/DF9FfOQM0FcB8IkFDAEXrWnfb9jggte3P53WbqjFJgrX
         WKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762338515; x=1762943315;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JF+KpggyAZ/ITnvctK4l8SdHIQOwsXYkgFSK64qTgoI=;
        b=ezrJkXs7oTq/0qx1Z3QuF4tothSOEsSf2NuRBd67AJziMOPLln62+1BogSBa3PpjJs
         UZE6FSZiAjXFp+avQo31dIJsHx2AonFw3613AeDMNMNqb4nyqzwlfTZULM4IckrU4LjZ
         ZCu1kfN+xlXogLptV5QafujoSZMu+MS/ax7RgJu4CqhJ2CkP186yZu28n713jqefF7vV
         mjeKImNbn+Jz1pEhhYcN+63DntPdBJw9Qu4AOhh/9/n5zMwYwsqcBnxj1CiUsAxSDOYx
         U905Ere/Pbgp9736xdQADFHFNxr6iel+zrwQllNFOKwe3C10YXK/YOFJKDfaZvZtzDtF
         Aj1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVOrlp329eFmJwoRsXTLH0gp9APFoMbEN4fV36kwqXmYO66YTdv6fB+fIAchLH/qnZp7hLfV0YZJaOOTFn/@lists.linaro.org
X-Gm-Message-State: AOJu0Yx/0CMJ1c0DpWGWgmWXG2JUkx8Ge58zpvXAsepnpjVrrnKjEHa9
	wzL8R1hWKwHhy6QdXdGWGZUMEvPqvJMvVpTEm/l/XIJd3njoeAr1GfI6qF+rGki6v7tbj4Y0dtR
	TcisO75HFyjqiWRxIpgs+axb5bNYQDTkGdT0ZUuOpZJ+ZVkeBWgGP9cxGzklRruvqSHueeA==
X-Gm-Gg: ASbGncsBdyi/nPbgKIte0JK14iESvE80UcDPIF/FsiHk9IATzO0umHSi+N8Uyao2Q22
	w952zktg1qyWco8iNpJ6Ql9y9Jdi39VlbsHNXL3v2TXSrv7f5CPZ3mwuMi469NxRgZcErhySlD/
	AItFHhLmNJQvoz+DrLX5epo5zJ/VBslTTmwKNpoQsxfAEX91JNj79T8ZwqBKUqIK5E/86RtZ6HN
	BpTI7SxY0sfgBEc//h7iUKvenQsYZ2oxIFLpzBjcd82Sll4/If2yExGW+5qPxPlQxajL0wooWyu
	HwsCZAdcIi8QXOd4pqVoQVyC9VFBBoasT6lgAlC818KDC/6CX7D9pwcLM8Cc+uiW2sn1y37y3nD
	08S5GCTA4cnURbyR4cyoOau0mldJds8h+xQ==
X-Received: by 2002:a17:90b:2e04:b0:341:6164:c27d with SMTP id 98e67ed59e1d1-341a6bfbc5cmr2752082a91.3.1762338515042;
        Wed, 05 Nov 2025 02:28:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0nab8d2/HqREAsJ22farB7T8O/NtwdkVq1ttqTloYL9Mn4A21uAb5ZKhKlMroMgSfVGcy9g==
X-Received: by 2002:a17:90b:2e04:b0:341:6164:c27d with SMTP id 98e67ed59e1d1-341a6bfbc5cmr2752065a91.3.1762338514552;
        Wed, 05 Nov 2025 02:28:34 -0800 (PST)
Received: from [10.217.219.207] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7acd324680asm5909209b3a.1.2025.11.05.02.28.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 02:28:34 -0800 (PST)
Message-ID: <77031db5-a94e-49c3-b48f-5f7a5569d1a2@oss.qualcomm.com>
Date: Wed, 5 Nov 2025 15:58:28 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Wolfram Sang <wsa@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
References: <20251029-topic-sm8x50-geni-i2c-hub-no-dma-v1-1-5e264258a5bd@linaro.org>
 <49f067c0-20d3-4039-95e6-fc19ce48881d@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Savaliya <mukesh.savaliya@oss.qualcomm.com>
In-Reply-To: <49f067c0-20d3-4039-95e6-fc19ce48881d@oss.qualcomm.com>
X-Proofpoint-GUID: xlQC-wWGCPwZICWPZ62vx25ND5euHmq_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA3NyBTYWx0ZWRfXwjtAN2ANOPUd
 2L8YBzqy36dF1ld/2GCyM8cMHzGDSTAqJWce1u5efG9SJLBHiOQ/b2M3JezftxuySCwMU8qx5sE
 v9HB8/lbfbjVqPj78YvVXsUcOw+XrOK1gHhW8Yg9FE4LazkuWJCa+G33eKuDw9QasxPVpDaEKLC
 DV0XgBk3ZRjsAqV6J+/aoiJjCDLFK3a57nkTSSiHg50GM34AIuhKzhman2S6jlCmVcXkIZjNB1c
 zexZlCvoryMICdPeRgWTHMQFjA93EJ89mHYHDjMAqvinHTdG//Y9hVgov/0vH2BSmDcASK0uJyf
 +r1EMp9Z7h8nO2zWJP18tO8NufiClONCplGDm0Epx9u354TwLd6H6QDgKra8xbraxY2vcv82V5g
 VFgApT/tBU1cPlKEP+R+KFvR89BmeQ==
X-Proofpoint-ORIG-GUID: xlQC-wWGCPwZICWPZ62vx25ND5euHmq_
X-Authority-Analysis: v=2.4 cv=Ev3fbCcA c=1 sm=1 tr=0 ts=690b26d4 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=wCNI2q6YBtXYwDTL9A4A:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050077
X-Spamd-Bar: ------
X-MailFrom: mukesh.savaliya@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UCZ4BOL35USKM6CFYREVVOJWQFNTBNQS
X-Message-ID-Hash: UCZ4BOL35USKM6CFYREVVOJWQFNTBNQS
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:43 +0000
CC: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: qcom-geni: make sure I2C hub controllers can't use SE DMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UCZ4BOL35USKM6CFYREVVOJWQFNTBNQS/>
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
	DATE_IN_PAST(1.00)[3892];
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
	FROM_NEQ_ENVFROM(0.00)[mukesh.savaliya@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.892];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,qualcomm.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 74CDE40FFF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 10/30/2025 2:56 PM, Konrad Dybcio wrote:
> On 10/29/25 7:07 PM, Neil Armstrong wrote:
>> The I2C Hub controller is a simpler GENI I2C variant that doesn't
>> support DMA at all, add a no_dma flag to make sure it nevers selects
>> the SE DMA mode with mappable 32bytes long transfers.
>>
>> Fixes: cacd9643eca7 ("i2c: qcom-geni: add support for I2C Master Hub variant")
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/i2c/busses/i2c-qcom-geni.c | 11 +++++++----
>>   1 file changed, 7 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
>> index 43fdd89b8beb..bfb352b04902 100644
>> --- a/drivers/i2c/busses/i2c-qcom-geni.c
>> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
>> @@ -97,6 +97,7 @@ struct geni_i2c_dev {
>>   	dma_addr_t dma_addr;
>>   	struct dma_chan *tx_c;
>>   	struct dma_chan *rx_c;
>> +	bool no_dma;
>>   	bool gpi_mode;
>>   	bool abort_done;
>>   };
>> @@ -425,7 +426,7 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>>   	size_t len = msg->len;
>>   	struct i2c_msg *cur;
>>   
>> -	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
>> +	dma_buf = gi2c->no_dma ? NULL : i2c_get_dma_safe_msg_buf(msg, 32);
> 
> Not a huge fan of putting the ternary operator here, but I don't
> mind that much either
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>>
> Konrad

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
