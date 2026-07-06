Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kpQXEDtwVmpI5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:22:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBF67575B2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:22:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=HhXwqs2Y;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBC3F40EBF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:22:01 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 9399A3F798
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2026 08:22:33 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666428Cl3615008
	for <linaro-mm-sig@lists.linaro.org>; Mon, 6 Jul 2026 08:22:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H7kgDUzxypUi9Hv5ERYiztltz8pc1iThxnESL38uqQ0=; b=HhXwqs2Y0ZsHrIij
	AaX2/c5hNOoJABzdK+vgCCvIRziXAvqlKp+HfEApATvvzOlO9sVSrJzcIZ0gLubE
	xqBeUJ0Ot4r44/oeqRtbFiGUFOsXcI+24UltpPC8iakeix4jwSEjHg8KAnEkv6q0
	ozKG0icp+Jc/2I2XUZE/dzB6e16ku1SYwiAYd0gXoUToBKhts5fkNiuRxdirmiz/
	QNZRC3Kl0sJ3Flfz8XAYdQzqc7irlqPYhDO69z5CHlRaOpMjJSVOtugLSl1SguJC
	JU+WCl1umXijhDcuJFyUpO3C8cubO1nyzL1Mk/Ng7Vsc/y6irFVChjR2wthlmyKx
	O74cjA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6srvnagy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 06 Jul 2026 08:22:33 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c9fe4c5eb39so1593378a12.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 Jul 2026 01:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783326152; x=1783930952; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H7kgDUzxypUi9Hv5ERYiztltz8pc1iThxnESL38uqQ0=;
        b=G4LFmug+gYKt7qVli19cQD33Ejqdng/KzsfASXLdQz70zTnkaAP4ONkqAqkOBLzc5J
         Heo8wxGi6EG6uOkmvhP3WpPRMKl7MlEOqnyJb7bwJc4IRgfvpC5umn+Se5vnToJBA+fm
         RAP+teE2CcbAOlwftRssEg8rmSvZ1dkG+D5oKjWNBy+oEhXLloZtjOatelHuKurvRE3O
         slRft7thUMt/RHHxHI0qXOgeeBM6EYbICK/LIM1At9UEgv6NJW8dH/UW6LR05BiDP/+a
         pWJOUEZt0Lw7ACkxiQOM20Q65eMXol2wxvON3BByeUvEM8+wCyTdj46xf8wvHyCB57Jo
         36aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783326152; x=1783930952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H7kgDUzxypUi9Hv5ERYiztltz8pc1iThxnESL38uqQ0=;
        b=o9VoI7F+NkG2gVwREmL3nj2QgNqqM1X9G8xEuuppFUNTCxLvv2bg2HFKAJmYrtKmDe
         mnpepDiQoXnNX9MC3NHc/sdhLvW5VEUwxVdpA1gV3w8KOtR6alDbX+Z95vIFokYknwtX
         t23+qum0maw/H81xPmY1YoJc8p5Wv+hKzaLE1YGaYkZYTzlEX3Ja1AxjTiN9aky32DP4
         ENqyUoG1pdcA2AgOuDHRAV+M4jlg3B072A7IpgtwS8cf2oRL9yryD+mMLeVL9i3JoSCG
         4G4fqBRon3abCc2U5Z508vbl5PGEIOQClUBSJsB7zTyno+jz4C/vH7Et74Q7SqSLCCNJ
         vNNQ==
X-Forwarded-Encrypted: i=1; AHgh+RrknxQ/p/aXFI/lCY/GbcseO/F+mSWsjh9uhRmhgYOizWZVyrHn2p/3pITv6B6MP71zF7gI6RW3QpfnsTuV@lists.linaro.org
X-Gm-Message-State: AOJu0Yw6okQCJiokLw+MJ7W5dtALggsnxGU4V3TtIlYGpLKa+Ovpar6M
	nx2/u9DJFlTJZ2jRc5q5/L0U7edROvQL3uYm5MQ4ek4IXrl7V3xqrMpUnjQBk5ZfMMY4/zOyJoH
	rPqP/t7mHFCza63rVX+e5oz4qK+oe8of8YoC92yFUrgN6YPk08lo6bXQIpEuPAbmhyAPD/w==
X-Gm-Gg: AfdE7clKj7hImbEQmadUxlqEz0lJby1ncgmDtjxovxoT+ntFCyidoD53TTD2YHVAGp2
	zV0JtcTGiyPoUwQG6KswZnMewQFOsWKadBFJD2bq8ZsXcpLshNxEG9vwXdSoKfkzoepb5MqAYwc
	i79BfvloUFUZHYq4Dn/muzl3LOAhd5dQeL5DUixYFdkx0Oe6kFHeLKoedRd1W3mhxIWQQq0uVhx
	CHN6LOyC4iafihdGVuLfRnQuxhGihntukOC9gwzgFqXfVaqxrW9TqguPhKO+7WDgRCx43pYY9Fz
	xQVRp+w/07zIsXB7dwbeS72mYF9+76lVCcIcS7QiF5coghIY3DOkyQZAZco4bocuJt6esJpJT4d
	dmqv4vt9jLjqQptyDRyPmOrYBdm7y2fE8QeghRHzcf4nG0lqNFw==
X-Received: by 2002:a05:6a00:1254:b0:847:833c:6451 with SMTP id d2e1a72fcca58-847f6fda4f9mr8656675b3a.57.1783326149434;
        Mon, 06 Jul 2026 01:22:29 -0700 (PDT)
X-Received: by 2002:a05:6a00:1254:b0:847:833c:6451 with SMTP id d2e1a72fcca58-847f6fda4f9mr8656641b3a.57.1783326148965;
        Mon, 06 Jul 2026 01:22:28 -0700 (PDT)
Received: from [192.168.31.103] ([152.56.16.171])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6d4986bsm3304973b3a.29.2026.07.06.01.22.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 01:22:28 -0700 (PDT)
Message-ID: <b1299875-9fda-4477-b533-f491f19e8a2a@oss.qualcomm.com>
Date: Mon, 6 Jul 2026 13:52:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>, mukesh.savaliya@oss.qualcomm.com,
        viken.dadhaniya@oss.qualcomm.com, andi.shyti@kernel.org,
        sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20260705134619.4030745-1-aniket.randive@oss.qualcomm.com>
 <1edb643c-1d09-4ad8-97df-66c86e6123c5@kernel.org>
Content-Language: en-US
From: Aniket RANDIVE <aniket.randive@oss.qualcomm.com>
In-Reply-To: <1edb643c-1d09-4ad8-97df-66c86e6123c5@kernel.org>
X-Authority-Analysis: v=2.4 cv=TcamcxQh c=1 sm=1 tr=0 ts=6a4b65c9 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=hhhz2GjkF5S+8y/bMxhNDA==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=CKx7tiaC2mrULMmJUrMA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: IzLUsgheDbWXhHzbUG8HLMLnc_yxAM9p
X-Proofpoint-GUID: IzLUsgheDbWXhHzbUG8HLMLnc_yxAM9p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDA4MiBTYWx0ZWRfXywp2PQAXw7hc
 508CYFunJXK0u/rZbgCiJQx7Ancv6wTZJ1TVtyiTs3pypXWjg7ipnKP5p0sR62+dt9Z/NrDcDMO
 9Ldm/o5Apa6/O8mundGn+u8lRkPANy7i8z8tHLnEDB8mEhI9HlDB4jezScnT2j9GDsyzMSGa+WI
 w/roN9dg2UC5N5EpCFLU2Y5zVTQLT1b0AikV1t+JpbApc66h7NfShy0u+OhWHqtCoWoWfnsZOtM
 LptTVcAD2BqrsKWTvnBjO9aQj7k+wEvf3L5ZdBBY30rbbBVINS07Us4Q0RMsvECQya8kVGolvBb
 Y2eGfgEhIOMa4lTKrNUf1QUlRSPi1/PTg3zD+mbbrtN07tvOgPwimrdhhdwbdsFpyxAfZihNj7S
 dSAF02yJH8xGikmX3sVfJqnPVQUh54KsfopBvTnY1BmoiLyLfu7iubfL/U3w/FWY4ZUIhIW22uD
 +OYMHBjN7BY27X12jkA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDA4MiBTYWx0ZWRfX8uiaGyQDsfk4
 oxt4GROz7CMpr61h6R6VFzdJY4c2VuoSIT1jVT6kQXPIw+0d3fVxy6SzYo/Ddrg0YP90nwwaZT0
 wLs5Q9SIZDyIQUjq/r3ZXj4yELsoLXg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-05_02,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060082
X-Spamd-Bar: ----
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SGFH5362AR3YQODPMO5A4KDHTSG2VFUE
X-Message-ID-Hash: SGFH5362AR3YQODPMO5A4KDHTSG2VFUE
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:17:05 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SGFH5362AR3YQODPMO5A4KDHTSG2VFUE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[200];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:mukesh.savaliya@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-i2c@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:naresh.maramaina@oss.qualcomm.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,oss.qualcomm.com:from_mime,oss.qualcomm.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BFBF67575B2



On 7/6/2026 11:28 AM, Krzysztof Kozlowski wrote:
> On 05/07/2026 15:46, Aniket Randive wrote:
>> The driver uses a static XFER_TIMEOUT of HZ (1 second) for all transfers
>> regardless of message length or bus frequency, causing unnecessary
>> delays on error paths.
>>
>> Compute the timeout dynamically from message length and bus frequency
>> with a 10x safety margin over the theoretical wire time and a 300ms
>> floor. For GPI multi-descriptor transfers, use the maximum message
>> length across all queued messages as the per-completion timeout.
>>
>> Signed-off-by: Aniket Randive <aniket.randive@oss.qualcomm.com>
>> ---
>>   arch/arm64/configs/defconfig       | 54 +++---------------------------
>>   drivers/i2c/busses/i2c-qcom-geni.c | 37 +++++++++++++++-----
>>   2 files changed, 33 insertions(+), 58 deletions(-)
>>
>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>> index faf146441f97..841108ae2d01 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -32,7 +32,6 @@ CONFIG_KALLSYMS_ALL=y
>>   CONFIG_PROFILING=y
>>   CONFIG_KEXEC=y
>>   CONFIG_KEXEC_FILE=y
>> -CONFIG_CRASH_DUMP=y
> 
> 
> Irrelevant patch change. And not really correct - you base this on some
> old tree.
> 
> Best regards,
> Krzysztof

Please check latest [PATCH v2] i2c: qcom-geni: Add dynamic transfer 
timeout based on transfer length and frequency.
- Aniket

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
