Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id veBzJphxVmqj5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:27:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6627675769D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:27:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=iuGkr4Jb;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=GQPtIh3q;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C74840A43
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:27:51 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 7DFC8404BE
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 06:28:36 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66960044711005
	for <linaro-mm-sig@lists.linaro.org>; Thu, 9 Jul 2026 06:28:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P6rkqMfXLK638vUXHiaFMs9sT739rEtUIMeGGDeaRaw=; b=iuGkr4JbT9ADw3uA
	mXUmcOFWX7uDjojELZtVMUO/2WVsuu82pzhw3sTMP59spjvrcKITavLMQ/+vFzUx
	iMKsNPhdUREk3Hi9w8tbS22d9T2NTteWo3xXTRQBLn7pnHVTlffOnWnBmKm7rQ37
	HU5Binf8tdkKyTdEqzUed+9e+h2kyeTK7fWrevbIp0BCKulC1EDXIi63e7UuwzsB
	2UIx7wJ1DButXX6eTtfmaPbO+YvTjS3eHYE9UZbwO+y06mIHjPRE0QZq2ze5CSkq
	sgY8ZOLVKRj6lUUNKJ51RDQM5+k+DLPCY2YJ0V/fNAIOJ0k5wi5ZoloNMyqae+zV
	CTgzaw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fa55vg9vh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2026 06:28:35 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-845317fa7e6so2555865b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jul 2026 23:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783578514; x=1784183314; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P6rkqMfXLK638vUXHiaFMs9sT739rEtUIMeGGDeaRaw=;
        b=GQPtIh3qOAGz1r8FklAAykNY/4qcAYpgQp89AYz534W2Nil6F+I2xkR8r573TP+vtW
         YiKHtnHkpR7FdzX54VJjzpyGPRZ/chwtyB7mAAccqNLbvRpMjSUmCQlRk8MjHSynjSCf
         mw9UIsm0V8pze2cgHlGVa2nui+qxs3QcAisgiJMtwn36TkGTY3iEY35Xclo8zDWAJ0QT
         LQIXuh/hiNYxHoDBnVw8iFWDq5jxfmxMvhlHgHuL0E8M8gtJg2PIOrr4TRcCX85rcBHk
         hAuG2Rt6PWUEwrwW7U+WbwZeixs/QTNhbM9sWZSih8AKDx63Sz0C+f4K8/UUvqEWFpdO
         VapQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783578514; x=1784183314;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=P6rkqMfXLK638vUXHiaFMs9sT739rEtUIMeGGDeaRaw=;
        b=mrQ88L2lqr8X50oaVgXM/6EBf82X/CbC7NFzbCb59IbF3fvu5WyjKxw5NsAHJQF4kA
         hf0RJewn5OhZQX4kjS5baks5AIeMAquCffyOEi3F9xyeqwf34AoMAP1/E5l9MCwJQpBD
         ygOjwP4YSzX6eRQi+U9MaRvpjjIMV1ZH204qZQzMvLN5hWsb9A6pM1/2c4pMxFk8aUVf
         Q4rdV/OVJo8W5CaiQbnxnD8zvvnlHI9veSmPAANirClo9fXzUyE+xYDsR/ozAqOU/aB/
         yeOGEMvLSSl/3gVmiWf9jTUxsyRnVUnZT47nWv7UEZjVcMbI78rajk6Cy/tQ8gotEM2/
         JhyQ==
X-Forwarded-Encrypted: i=1; AHgh+RrDrlIexlzI3WPkAJYbxmUg9ZpLOjtB4I/hEjYCgduC+Uh6xfparTF3ERchccYkA3bj9maiq1+8L2g0sGAr@lists.linaro.org
X-Gm-Message-State: AOJu0YyFOMYyL93+hHVoc9qxHxqZwoIftsiT7jZ3LkCun6M9xQE3d76Z
	SlZuW+u253dk2Sxm0bz99B9NWc5sQxxRkKuYf8HOICVDKtEJNh9AOc4bIr/+hkUjFGVcbCDwHCE
	DI/AUx0I8xmqcR1L7duxVTqscI2S1ii8PyE0jac8sZWAHnkAK5iaOZsSxKE/bjqsZiKO7VQ==
X-Gm-Gg: AfdE7cmpYI26zang/Shhz2mk/ad/je1VCgAapLfNwAioVMQ6mC2cS/xhoQxUp6zTT5v
	iEVZG5UP9v4URUwxWJb8QoSIZwB9aecuCgZchSI6q3/sob/XGZfHCw5+yJ/ZNQjgSgUpTrM2B6M
	qDd7CLkz0PLa6P7CGYTH33ldV0+ySQhRxP38j3p6QoAYmcDTHtAWgH/ABxEyxPa034jKeQ+0brU
	FNQ40bzSyQGP60Ur9swofHnkKuZz2ocyYoa3ijrtPsBFTFeGZFxyxoNrcgB3bHGeLX8/ucD0RDh
	Roj0dHypeScLkcSNXDTGOGcGypeY+FpQbkljPk103CTF75ENh6mcvp8hiyOM1E7mkd3T0TNs9mf
	gvytfaT+Dcy7cUGjWtHvQ/qMwHoNsX/Qr/D3UO3TM7/4lYGR9ZQ==
X-Received: by 2002:a05:6a00:cd6:b0:848:30c3:45d6 with SMTP id d2e1a72fcca58-84842ef886amr5946297b3a.14.1783578514273;
        Wed, 08 Jul 2026 23:28:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:cd6:b0:848:30c3:45d6 with SMTP id d2e1a72fcca58-84842ef886amr5946271b3a.14.1783578513823;
        Wed, 08 Jul 2026 23:28:33 -0700 (PDT)
Received: from [192.168.31.103] ([152.58.31.181])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6b9a832sm8089294b3a.18.2026.07.08.23.28.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2026 23:28:33 -0700 (PDT)
Message-ID: <6b53fa97-0fae-4ba2-a774-ae8df2c2ad4e@oss.qualcomm.com>
Date: Thu, 9 Jul 2026 11:58:27 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
References: <20260705135739.4038826-1-aniket.randive@oss.qualcomm.com>
 <4f865aaf-a400-4dc6-acaa-80dc22a36af7@oss.qualcomm.com>
Content-Language: en-US
From: Aniket RANDIVE <aniket.randive@oss.qualcomm.com>
In-Reply-To: <4f865aaf-a400-4dc6-acaa-80dc22a36af7@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA1OSBTYWx0ZWRfX4FMtsd1BLZUV
 BOE2d76SUmhyvffYkkYybbnWFFPrXm5wh+kxpemrYBueDGqLH0CtotSMuCxM/sw6ahIGx6nTw0Q
 S7sA1dB1aad3txVMsI71SOM3SSl2zuW1GpIm0LeYVDOvnLRWCZ9IOcBP9G4tGUel5MD3s0QXMJt
 1Oi4eTh4x2rNG31aHWAbx43p22fXQDPkdlPfBh16L2rwO9lmC7htKLnfUjmsVYE6F5Hib51L/Wx
 2FskJQ8vUw8o9bqmNu4MPLrlqLEIUSmRulgyBEIV9pPyBk6H/Ej6xSOczENzMuq1rdNskP/9pSd
 GWw9cwHAbYlkEtVEIbscJDFM2VD7PvHZEoX77dSYxLwzgqPZRrYYKHlbKm7y9lFteQXHSEvP6t+
 j+MojliK0UX8vbpCVfcCNn4oSSe8fb/bWsEJiJBZAJTUFVVsuI4jQCAHdA7+cs3RVpFh0F2IjWT
 seKvKoqYa6FjlyiJQFA==
X-Authority-Analysis: v=2.4 cv=KfDidwYD c=1 sm=1 tr=0 ts=6a4f3f93 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=9AXozQ6IwN0d4JI31gUtBA==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=5GfgTEDUgWdp11RPFvgA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA1OSBTYWx0ZWRfXxgY8Isg3nUlk
 omuncsf6ZbWolL0LT5iOpoxaQOJKn23ZnSp3qyCg3YRg/PWur+0JpsOTmWv17Ra7nNrxWsUNzD/
 fzzKUEnBKHm8iHaszdw7dM5w/qkVSLw=
X-Proofpoint-ORIG-GUID: 7XbHBy7ZulaGdg-QIk4jcbVXymw6cm94
X-Proofpoint-GUID: 7XbHBy7ZulaGdg-QIk4jcbVXymw6cm94
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_01,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 adultscore=0 clxscore=1015 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607090059
X-Spamd-Bar: ---
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UNHIA66D6QIAOOPSBUXR6XHIX2E3SML2
X-Message-ID-Hash: UNHIA66D6QIAOOPSBUXR6XHIX2E3SML2
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:19:50 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UNHIA66D6QIAOOPSBUXR6XHIX2E3SML2/>
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
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	DATE_IN_PAST(1.00)[130];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	URIBL_MULTI_FAIL(0.00)[lists.linaro.org:server fail,oss.qualcomm.com:server fail,linaro.org:server fail];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:mukesh.savaliya@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-i2c@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:naresh.maramaina@oss.qualcomm.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:from_mime,oss.qualcomm.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6627675769D

Thanks Konrad for the review.

Sorry, I missed your comments on the v2 patch and ended up posting v3. 
I'm happy to post a v4 incorporating your feedback once the discussion 
concludes.

On 7/6/2026 5:11 PM, Konrad Dybcio wrote:
> On 7/5/26 3:57 PM, Aniket Randive wrote:
>> The driver uses a static XFER_TIMEOUT of HZ (1 second) for all transfers
>> regardless of message length or bus frequency, causing unnecessary
>> delays on error paths.
>>
>> Compute the timeout dynamically from message length and bus frequency
>> with a 10x safety margin over the theoretical wire time and a 300ms
>> floor. For GPI multi-descriptor transfers, use the maximum message
>> length across all queued messages as the per-completion timeout.
> 
> What's the reason for a 0.3 s floor?

The floor accounts for I2C clock stretching. The spec allows slaves to 
hold SCL low indefinitely during internal processing. A dynamically 
computed xfer time alone gives no time for that.
300ms value covers worst-case stretching while still detecting real 
hangs 3x faster than the old 1s static timeout.

Thanks,
Aniket

> 
> Why a 10x safety margin specifically?
> 
> [...]

The multiplier covers the gap between theoretical xfer time and actual 
completion time (DMA descriptor setup, interrupt latency, and scheduling 
jitter on a loaded system)
Without it, short transfers would have almost no extra time before a 
spurious timeout.

Thanks,
Aniket

> 
>> +static unsigned long geni_i2c_xfer_timeout(struct geni_i2c_dev *gi2c, size_t len)
>> +{
>> +	size_t bit_cnt = len * 9;
>> +	size_t bit_usec = (bit_cnt * USEC_PER_SEC) / gi2c->clk_freq_out;
> 
> mult_frac()
> 
> Konrad

Good catch. I'll switch the calculation to mult_frac() as suggested in 
the next v4 patch.

Thanks,
Aniket
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
