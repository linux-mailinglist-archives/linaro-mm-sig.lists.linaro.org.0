Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vD9zNtpxVmq05gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:28:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A8F7576CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:28:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=bEQZwyc8;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=QEnbxLkF;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9573940165
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:28:57 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 3B7CF40447
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 09:28:02 +0000 (UTC)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66A7dWGp056471
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 09:28:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ea0QguoYL7HAG5QOZUHhNnUFaa6FuT9iaUs3b0VOK4E=; b=bEQZwyc8XDMXAW5T
	oEMWxvv0TPUNE+xjii/lGQs/yn9jua4T4pq8gYMXFaVqqv3cUCllqk9RRr0FtlZs
	FW6ncGBWWy53MmpI7kIlvuWR6NXQUazvB06l2jzszG69JXWFEvdVuY3fgJ6eTA4G
	kdh9ZpYO0R2TKghzi+ltSI7N1ljdtrWw+J8S9jvXkmApG9tpzHh/L7TMc7hPjw1X
	TIAWCIOdl2RbUMUEMI4jHB5vGnw7hkUeKicM/4bxTvqg0FZHIg59pjpn+27e0m0v
	sg+BieWuHrm/sC0Y8Rz+0LwssX/yp8NpboriYdS06O3QH1fTG5W26EU1MIvGL5Zz
	Pz25Zg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fajwtac5r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 09:28:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c07313be5so2047571cf.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 02:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783675680; x=1784280480; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ea0QguoYL7HAG5QOZUHhNnUFaa6FuT9iaUs3b0VOK4E=;
        b=QEnbxLkFMdOF7akPQ2E8EPyCeaRXU/0wJgQycuoOO/BKn/pk9KmIaaYQX1wIZLdhho
         JFC25WcMwe7u1+oRXxMYtqE03d4jEsUKk2gcFbEm9UkuCnWBq6tu+hU1fD/EKG/z18S/
         KG6GOmhzPgVyoBtQILVaFIkNj8mebRCAdKKo3vO16d95f9jwH9ZFUx1YG64Zs/rpVdru
         RDXwFarIXLuIKDlTOkTGQqtYOnF8lsaiZLS+rD+0Kfegyh67xU0VG8sXZtYgB0GSyuqj
         rydeTgTb2ZEkOAeGckrOG6SDjZ/nLDPEVzpMl9fxPDki7P5L+PsqEEF0qkU73veGIwZP
         MdRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783675680; x=1784280480;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ea0QguoYL7HAG5QOZUHhNnUFaa6FuT9iaUs3b0VOK4E=;
        b=c5vPORBfkEQ7Y6SEY6U7TZhrXrUDTqcMBn4EHRPMN2AXX9IddS+D8gwqKmf1M1L5mi
         ptElWwh8r4FAmvnfp3ce14jCnoMCDZ2Qs7aWQ0o4Xnye/bG1It31lLtfT9FqwKTIg9if
         HVTyndicnIBAw6RJrj57IY7CqyENNaAdZh6r5o2bCO+YKzOI3BnZMKZeL3N2XT4F347e
         N47Ztmm1bAxl/ChvTIL2h4fOr/uQpfrjtGi9GyC6ZxzJyVeN8Fil09ppigvCoq2QQ9QK
         5iQrWRJqPfoaYnX9YjWJxMCg9Fx4zuYu8lqEhkC/CpWOioHEiDrQss5zO2nQtfL1a263
         Vz3g==
X-Forwarded-Encrypted: i=1; AHgh+Rqlv2Hk+gxz63olkV3ASDGy1kHVlAaAas/VrUkNlacy/r0unTdoFI1RqLg+tFezV19QGVUVWp7xGz+ZRNp+@lists.linaro.org
X-Gm-Message-State: AOJu0Yy8ACMAngBmNGP9hS831BYryYSZI/lKuHtHu3myIp1ITBY1JtQK
	vBmnUYGuhbBiGwUOuQYc4LLkBoHKlf1aSkdczniIu9K8UMwuT6AVTSs20HNlcg7f9LdFIL4b+qf
	5VJj4eK1tshy8QGZuSESv9dma5/BSbKeOsx0NFkrHvwsGLo+Gw/kaUMXv8Hr8vnK3B8xoDQ==
X-Gm-Gg: AfdE7ckERLkTVdYjqPt3BISYXs4E/N4rIv9LfE8qGY3gzO4o+81E7HRcdnNAL0Fhl56
	mnjzveZFuR2Mh/zIywef+LawqnNpj6rmvV4bNoXalaz5/Kn1oeZsMkhJ4YSOjNoVaAMcssw41CW
	dIv1jMLofoRAEFOreMtqC5v3OxeD9csqFEMwYstTCay22ZcnmyXEMevB8EV9fWjtSvBKu0UKJeE
	eSusRUMdRQsjQNR9q1SKVS4lOJrjseqAc2j2WI6pURqwe//ID0UEt2iZSXwgJM1ltBA8ZpnQbKo
	0ab7PFdeuqnkF+/gZYRmEMOWAeDC4qBnMbNQE+tJ/GEr00i7AqlLGGCguTnSD3eaGKLetd/ulRS
	OXfZrs7d376reLa1p0W9KQfRUDmE+wBYCORE=
X-Received: by 2002:ac8:5acd:0:b0:51a:8c9c:7de1 with SMTP id d75a77b69052e-51c9684058emr68768651cf.11.1783675679847;
        Fri, 10 Jul 2026 02:27:59 -0700 (PDT)
X-Received: by 2002:ac8:5acd:0:b0:51a:8c9c:7de1 with SMTP id d75a77b69052e-51c9684058emr68768501cf.11.1783675679321;
        Fri, 10 Jul 2026 02:27:59 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15cfac0f76sm402966166b.33.2026.07.10.02.27.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 02:27:58 -0700 (PDT)
Message-ID: <82326bd4-59f0-45b6-8f06-38896cf9f9bb@oss.qualcomm.com>
Date: Fri, 10 Jul 2026 11:27:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aniket RANDIVE <aniket.randive@oss.qualcomm.com>,
        mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
References: <20260705135739.4038826-1-aniket.randive@oss.qualcomm.com>
 <4f865aaf-a400-4dc6-acaa-80dc22a36af7@oss.qualcomm.com>
 <6b53fa97-0fae-4ba2-a774-ae8df2c2ad4e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6b53fa97-0fae-4ba2-a774-ae8df2c2ad4e@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=XOYAjwhE c=1 sm=1 tr=0 ts=6a50bb20 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=7-yhJlWS37sO_0-qT9EA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: g_akXxFoDa3MyUTGjchwibSm7ozSlBMV
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDA5MSBTYWx0ZWRfX1edDU+OVCZWY
 GJSeFB5CE2EfkNqPslunhX7T1yTyc88RAljFrj58W4SWz72kEEsymQ//QZHleA0ma3gXtnhzu1M
 jPZDKfjDr2nPDbw7uBmTve7zfYgikp0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDA5MSBTYWx0ZWRfX/2oH7EndO6+3
 MrAKCkYu6Ag786ITyxsgHYxmqceNwF4ri3Z/+jew+qjj15JoPUom07fB6dFYEher+wlkwA1aXm+
 Q2ke0pjiBNEq6sxNdIUeg5OyUMIYGsOQB33I4ineMyOHKSB4uP8IBwbkaYcpUSbFcFcnT20TC/K
 LKSNI44KcKi3ri7lKw14uksLZhPeaag4IEOLy+mmZKRTTG7Bef3lXyFK3ocBH5IqH0OkzKjLESe
 qIy2CGTGNKcakQag6CFldm0jAkvkh9n3JUmlxykCE/RywctgxBLmb0zznmpFh/TowE9RADmxVSP
 DsOnGxnibKIbaImADmi6U3gAdjI2uqoWkhYKYft+xMV+92tCGxlsxnIzZOJu1bWIUqMSo+YqmJn
 94yFNYC8wVPanZtx1RxfE1l5kqZPzPjzpCkEgb9ekBM+9qVGIPIwU468gZP0MAZBIJJTCCYZVWI
 Q3EknWFVXBlPLESDP+Q==
X-Proofpoint-ORIG-GUID: g_akXxFoDa3MyUTGjchwibSm7ozSlBMV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_02,2026-07-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 adultscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100091
X-Spamd-Bar: ---
X-MailFrom: konrad.dybcio@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Z34HZTP5HOAWQ34Z5MBZRYB5CF4ATDBP
X-Message-ID-Hash: Z34HZTP5HOAWQ34Z5MBZRYB5CF4ATDBP
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:21:04 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z34HZTP5HOAWQ34Z5MBZRYB5CF4ATDBP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[104];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aniket.randive@oss.qualcomm.com,m:mukesh.savaliya@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-i2c@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:naresh.maramaina@oss.qualcomm.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 78A8F7576CD

On 7/9/26 8:28 AM, Aniket RANDIVE wrote:
> Thanks Konrad for the review.
> 
> Sorry, I missed your comments on the v2 patch and ended up posting v3. I'm happy to post a v4 incorporating your feedback once the discussion concludes.
> 
> On 7/6/2026 5:11 PM, Konrad Dybcio wrote:
>> On 7/5/26 3:57 PM, Aniket Randive wrote:
>>> The driver uses a static XFER_TIMEOUT of HZ (1 second) for all transfers
>>> regardless of message length or bus frequency, causing unnecessary
>>> delays on error paths.
>>>
>>> Compute the timeout dynamically from message length and bus frequency
>>> with a 10x safety margin over the theoretical wire time and a 300ms
>>> floor. For GPI multi-descriptor transfers, use the maximum message
>>> length across all queued messages as the per-completion timeout.
>>
>> What's the reason for a 0.3 s floor?
> 
> The floor accounts for I2C clock stretching. The spec allows slaves to hold SCL low indefinitely during internal processing. A dynamically computed xfer time alone gives no time for that.
> 300ms value covers worst-case stretching while still detecting real hangs 3x faster than the old 1s static timeout.

Please put that in the commit message and possibly in the code as a comment

> 
> Thanks,
> Aniket
> 
>>
>> Why a 10x safety margin specifically?
>>
>> [...]
> 
> The multiplier covers the gap between theoretical xfer time and actual completion time (DMA descriptor setup, interrupt latency, and scheduling jitter on a loaded system)
> Without it, short transfers would have almost no extra time before a spurious timeout.

Likewise

(Should there be a constant safety margin added to account for all
that? Keep in mind this driver will run on a turbofast Glymur and on
a notsofast Agatti so any numbers that depend on the processor's
speed must be reasonable for both)

Konrad
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
