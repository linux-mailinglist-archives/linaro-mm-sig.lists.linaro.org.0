Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HYcrKeRxVmq15gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:29:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F717576D3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:29:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=VCTgJ131;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=FmWKJh6g;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F6BF40A24
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:29:07 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id D5CBB40D59
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 11:11:51 +0000 (UTC)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66AAn7V1429464
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 11:11:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JU6YRxZVspUNbu+VKz/3WI7sJx1qZ3NhZ7bU7qRiJXg=; b=VCTgJ131iEPM4MAE
	8AYlc6FUY8uYOy4BZ+QjxJUMPxwOJP1fAdceJXbGSle3LxdPLs/ci66EsO43j6Aa
	aCV35X4L1GQDnSm7oi2OXuH2GTtAB8jKnxUTqGN99GkNSqHGFM8BsOCG4XOOiG+R
	K6P28wi4JcS9YD5PpAJvsQNwH9pOd+mbfQXlUGRMwiZ+YRyKyDMRmw6q2tyBKrg5
	zcuhJAAZdqDAkWin8FUYJDLXkAYcL/t/TWBIIzqwQ9YloyN3IjqfdZdvcQWSUsJ7
	wUsiP0u0b/+jxA+UfqEZAI3Hst6y/HtalCKmlTL1+NFiI8dWKz6RLaOIlWWkSug4
	/z5aJQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4faf24uy9h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 11:11:51 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-384048e7e14so1158438a91.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 04:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783681910; x=1784286710; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JU6YRxZVspUNbu+VKz/3WI7sJx1qZ3NhZ7bU7qRiJXg=;
        b=FmWKJh6gk3vWo0I/oJ/ByyxDtk1OEKm3ihCqL2S4+8KhpZ4fDI0tI6kwqqWPJVsHy1
         1Sx3D8k5fRX6eZnxYHVx1+fsFIAlQYFywFEz90h8CTuIskENLdyeNWE28ppv6/OIHQWJ
         19RGlOd+btwsubm3p9Swr82qfPjutciLN7CbDmh74RB4ASprj0Pt4ER0D3nE+bLxkFZT
         l9qqnHcD8oW+l/VFY6qAVJlkAZI0wikTYzvzVmnvfE8z1rijSZsGLdGZ4G/zBiNRYqHv
         BIBNLi7zfyRhao26GOwcRXIb6xM7N+na7mgyj6NgsJ7xn5VTS6nCeQcD2CYtGY6vVS//
         nb3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783681910; x=1784286710;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JU6YRxZVspUNbu+VKz/3WI7sJx1qZ3NhZ7bU7qRiJXg=;
        b=cL/NMgKsXLoMQ6e/wHdopl45j8SH7a7JApXNdMpFmEJV4SGIfMFwSP3dNIqnY4qfev
         r0G7nkq5ckbQaokvGMOaRaoetW4jNZY52xacKYD0HftU9qTrxIwEkFOaHdQvGWyR2k8l
         mLWNMhKyutMXq192DepZ58wjwTqAAqJbKeMh7jTg2MiovfwrSa4XajBYEajKpTT0VyG9
         074/m3vIaN5YNPGcdf5kKcgsShwKUQmQpYgyAAONuScoUg3AMVKpf2ByQQzxCT2Amrya
         6fjgl5T8BCeQz6ly5JOU7Z2PGiexSDawvnn2e/GXIYuwV1cxteg7FanG2v6W8Vm/yzku
         r2sw==
X-Forwarded-Encrypted: i=1; AHgh+RqG0/+ytWA4CwDglm1Ih4c+NjIAOHQwo+LAF39beLUZKaVgAJAvfLZqR0uOoTWeA4olEBaNOvw4iyeGTBW1@lists.linaro.org
X-Gm-Message-State: AOJu0Yyu53rlfBrEklhEegnmYj8n0zTbU6s3VtvREmcaLCqHsLZwZVs5
	03hLYI10JenIdmQHqyvkKMtRZVHYtGNvkcCN8ZMoqTE9x82PcmVqmZmWAiij+JRYTxsD1PUhJnB
	dfnxyhMqtH+Y9xf5uC93WNdtGAJHpMJGuZYwaZ7ak2euCA8kjxATkv5NsfaruKw8v/uzIuw==
X-Gm-Gg: AfdE7cnmqAEv9G5bDYKULu+mFUZrIVOR85vl+of/Je1X29/vndrtjiHcXz/yuJBBMHI
	Y7Bv0aXHkwRATh6kI/PwaSxStBxZEjS+iGY6LHFlXwi5OwWfo8iYDN1ycZIILdqo+vZCK/KZ7sk
	8m0sUmGLKdq7aNW9ozofvG6o2o6zjI575jdCWWTTEVa77FTuCyOHX4F4cwUyYTp6H2vckecLIu7
	vOq8PBB8mxT2wDSIh8gD6sjJXjzBQfQyEK7V3INnZB6eHOyjGkobiombvWXCCZFeFlNnB2LaqPR
	4bNQOktpJY4Ju4f4bwP4xw6O/LNVKZTqAzdUf0QNDOnp/cXaKxnBxuaLRLunhQPeeWGQitoc9Oc
	9Tk7CXJxYy4mdXVXDER2/Cd3NZuDb0RTqctK3lTw9kGD8oHe6RA==
X-Received: by 2002:a17:90b:3f8c:b0:387:e0cb:7f7 with SMTP id 98e67ed59e1d1-38942b786e0mr10762380a91.43.1783681910300;
        Fri, 10 Jul 2026 04:11:50 -0700 (PDT)
X-Received: by 2002:a17:90b:3f8c:b0:387:e0cb:7f7 with SMTP id 98e67ed59e1d1-38942b786e0mr10762344a91.43.1783681909714;
        Fri, 10 Jul 2026 04:11:49 -0700 (PDT)
Received: from [192.168.31.103] ([152.58.31.181])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38a5516ad7asm2610062a91.3.2026.07.10.04.11.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 04:11:49 -0700 (PDT)
Message-ID: <e775ae90-86d2-4901-8057-264953d25c02@oss.qualcomm.com>
Date: Fri, 10 Jul 2026 16:41:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
References: <20260705135739.4038826-1-aniket.randive@oss.qualcomm.com>
 <4f865aaf-a400-4dc6-acaa-80dc22a36af7@oss.qualcomm.com>
 <6b53fa97-0fae-4ba2-a774-ae8df2c2ad4e@oss.qualcomm.com>
 <82326bd4-59f0-45b6-8f06-38896cf9f9bb@oss.qualcomm.com>
Content-Language: en-US
From: Aniket RANDIVE <aniket.randive@oss.qualcomm.com>
In-Reply-To: <82326bd4-59f0-45b6-8f06-38896cf9f9bb@oss.qualcomm.com>
X-Proofpoint-GUID: 83DHgllROjyhOjf_VOoVjkBHPxKhnE6m
X-Proofpoint-ORIG-GUID: 83DHgllROjyhOjf_VOoVjkBHPxKhnE6m
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDEwOSBTYWx0ZWRfX1+Hsy7Chmdgm
 LN2GeaZElVTHbVD/6t1dp/hq8qfWUEqo3vAR12209053PPfRs74Jr/u0HOFbQWrDmmUEBUyAdEJ
 VNq6+zVXw9elB5QVgeczcxo3/OmFBQA=
X-Authority-Analysis: v=2.4 cv=daKwG3Xe c=1 sm=1 tr=0 ts=6a50d377 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=9AXozQ6IwN0d4JI31gUtBA==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=52HooUGS_mQjH2t11kEA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDEwOSBTYWx0ZWRfXzgDagINLKm77
 csKDmZ0hFVqLv66E/LhyvNENP3vdBhwkueqM4mW3SKTBvNSPTqiE617HSTrTd9pZVV5IWYAbgYx
 z0Dj6YXw2yc3bUdIl2935Hhn+5DLYy6G1rsmc2WdIQFylatolMC9Hw5ZWeBDr5JsxgpPdjWPQmv
 SGejeMnMOBUjoXqSXFZrGLDaXr/7jnoT80TdguK7cMjaD7mztMnaWFv3aNfga++5DYwGkm60qCH
 ysz/GYT2tTw8s4LMD1KtLoIff019V2bPlH1Rq26cc0M4gT25B3Gw8Lnz3sZRaRoCsnKi/LL/aqb
 i2BulQyMV6Yez0/2GPJJZn24wJHT9ZqSZUMriDNCvOTIcO6V18+12M+3dFv/XV7IUAvTC+gXL2T
 bZ9xijzK6HVnvDbUtDxTm1bq9EPPHXPrwZWg8dEtGbUwgfaJ8hB6teH0DhTEuvz13IS9yIwo5kz
 7sii8xubSCEDZ72ApBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_03,2026-07-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100109
X-Spamd-Bar: ---
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: X5LLQ47DE3YK3ZXHB3E6OICSTLM63RZ4
X-Message-ID-Hash: X5LLQ47DE3YK3ZXHB3E6OICSTLM63RZ4
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:21:04 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X5LLQ47DE3YK3ZXHB3E6OICSTLM63RZ4/>
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
	DATE_IN_PAST(1.00)[102];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:mukesh.savaliya@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-i2c@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:naresh.maramaina@oss.qualcomm.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:from_mime,oss.qualcomm.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 35F717576D3



On 7/10/2026 2:57 PM, Konrad Dybcio wrote:
> On 7/9/26 8:28 AM, Aniket RANDIVE wrote:
>> Thanks Konrad for the review.
>>
>> Sorry, I missed your comments on the v2 patch and ended up posting v3. I'm happy to post a v4 incorporating your feedback once the discussion concludes.
>>
>> On 7/6/2026 5:11 PM, Konrad Dybcio wrote:
>>> On 7/5/26 3:57 PM, Aniket Randive wrote:
>>>> The driver uses a static XFER_TIMEOUT of HZ (1 second) for all transfers
>>>> regardless of message length or bus frequency, causing unnecessary
>>>> delays on error paths.
>>>>
>>>> Compute the timeout dynamically from message length and bus frequency
>>>> with a 10x safety margin over the theoretical wire time and a 300ms
>>>> floor. For GPI multi-descriptor transfers, use the maximum message
>>>> length across all queued messages as the per-completion timeout.
>>>
>>> What's the reason for a 0.3 s floor?
>>
>> The floor accounts for I2C clock stretching. The spec allows slaves to hold SCL low indefinitely during internal processing. A dynamically computed xfer time alone gives no time for that.
>> 300ms value covers worst-case stretching while still detecting real hangs 3x faster than the old 1s static timeout.
> 
> Please put that in the commit message and possibly in the code as a comment

Sure. I will update the commit message accordingly and add a 
corresponding comment in the driver as well.
Thanks,
Aniket

> 
>>
>> Thanks,
>> Aniket
>>
>>>
>>> Why a 10x safety margin specifically?
>>>
>>> [...]
>>
>> The multiplier covers the gap between theoretical xfer time and actual completion time (DMA descriptor setup, interrupt latency, and scheduling jitter on a loaded system)
>> Without it, short transfers would have almost no extra time before a spurious timeout.
> 
> Likewise
> 
> (Should there be a constant safety margin added to account for all
> that? Keep in mind this driver will run on a turbofast Glymur and on
> a notsofast Agatti so any numbers that depend on the processor's
> speed must be reasonable for both)
> 
> Konrad

The 10x multiplier was chosen as a conservative guard band to account 
for the gap between theoretical transfer time and actual completion 
time, including DMA setup, interrupt handling, and scheduling delays. 
Although the value is not derived from a formal worst-case latency 
analysis, it provides sufficient tolerance to accommodate runtime 
variability and helps avoid spurious timeouts across a wide range of 
platforms and system load conditions.

Thanks,
Aniket
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
