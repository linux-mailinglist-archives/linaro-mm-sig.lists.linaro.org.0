Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TP5oK3txVmqZ5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:27:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 241F575767F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:27:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=cozis1wM;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=Bas2+gr5;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 445AE401D8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:27:22 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id E04B03F9A9
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 05:49:56 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668N96Hr038884
	for <linaro-mm-sig@lists.linaro.org>; Thu, 9 Jul 2026 05:49:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9NALSQ0Dw5Lbqt1NCbiSIryndvAMq6kLYEDbo/CY7xs=; b=cozis1wMS8L2FUgx
	cepcsHXh0axn8p70eC4gXcGvnSVEzEUff/y8/Ky99iBpGK8p90colMWMc2PFfBL0
	tvB6OhzqP1YGXGkh5yaY2umWomva21QRb1TxbT0eIG5ZutGQjMCDKVzGqMKqHUwo
	c0CIFphtqLF9FJj1NgD7XUGojKvPouvnGHRDybeg5YtPhWPS2rMJiU3+xaMOeKSi
	7mAmIr2+1T07vW+v7vQeL+3wgoEXHnL0g/K38b8F9nEMObXIA0MLyvByT9fryZay
	TRKvrdY6auPqCuphQxKQD0YJUYbl9hoOjnoYn7nrtwGIzuoe5A50Gc6PcoMt/XkD
	9LcEwA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9ug6j3k3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2026 05:49:56 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-37d4f23eb37so990614a91.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jul 2026 22:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783576195; x=1784180995; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9NALSQ0Dw5Lbqt1NCbiSIryndvAMq6kLYEDbo/CY7xs=;
        b=Bas2+gr5fwC2uOiYdNMhkhrDebKMLAEe3pp7IOaczHaauqH7fd9MWdyulAd6V91IDS
         pm/IWwCBEE5pEHv84jiE4yx2Q36tKHF6bzAr4PN4nvAjpdBcRArTBHXkZuPpT/+hGcII
         mdwJMNL49U7KvyJK/UhmNhtnivmn7yb/OF1dkH6WTxhsk3YE0zSFG05Sa6vkN+VUM7y7
         ym+uYbvbZw6k9UsfcuwMentZnNjbuOkGVfBQwMgbOe+ttB6j4WZqWmmV+4FYs7cpPlx7
         1Jl/fWdC2W6NE5ZW14WgZK+vbvvelpuH1q/b4wJ9iEwGbjc2ihWeNg3KwDE6C8MSf67t
         jcSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783576195; x=1784180995;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9NALSQ0Dw5Lbqt1NCbiSIryndvAMq6kLYEDbo/CY7xs=;
        b=M+yeBOntS7+QNn7spukNep6uIO1AuPEyzBa0GjY6cR7J9dNXtC3KEyVnLdmoTfsQDc
         iRDH+EabH4RQZYU4TjCKrOHfBXVO+V12KywNx3LTvnD4aMClW8nahTJ/8i1OTL/R6T73
         aN9gINuaCO3b2J9CFpWGgMvylA0vP/O6VzOMsBHWatrgQCjAOGdiK69GnlTBedMj/gge
         4ULgMGlPr39/sBP8iTZAzNY0ywzvoJMoG0jxi7SvmvdsdZ1EIaySy0gx2HJ2+U8e5sML
         jSm42l0B1rZi9WUdXrGFNYjgFxe8Kf3wIR1c+jNXI2VMAyi5XjJzzYGAHii1iB+cV+U6
         ypYw==
X-Forwarded-Encrypted: i=1; AHgh+RplRqw6MSRJfB06Pm+uqBsJh2e28AW5RPZO5AT/odZjccg5AcwhzpmC+IpNEIzCc6NUJ04PeA8YKLDkA4rQ@lists.linaro.org
X-Gm-Message-State: AOJu0YyhBUp+xkcDDVik9vgcQt1ITIGGCl9Gwa4JeDTCoCjp+uIdGpz9
	NRSvupyl5CFUm2QmQcB8wvanGIYlAhthbBSlhYHh1kppLACR2kMtR/Owdcq2T1aRm8a9ozHmQs5
	zAsmaagpzVATZhCXs/5i4L0+1pq4l+uScTOZL3oVl/7WJG35u68dt6PR5lIDw1b1mdQKsvA==
X-Gm-Gg: AfdE7clmxgLeE/jRoiu1jATQLK9+iAN83X9m5QHHdc4mklaW4Gj6ckwMtdXVAvvvqK6
	Gx7BdGp6aDNlZkjN4xuAOkiWbUCEB/m39o0eVLznLy/uIlIoaL3Jen+3kV9CljJFuKLih3wI4OO
	Uk0mLPVOC8depKDoaovFAQnNDTuw2L3rjm/WW5vg3X8E+eRYJ64xXtd+j4hT1rZbtM1jLhY4Is5
	B1/oJbhdYZrBuXiRLS596b5wsqarm80v8yybUyE/iK4A7MCbzmbgUpaAglRvbbkS+kMUskMjkoL
	4VPrMn0kW5UFxu2z9hxw+WvHtIzODEmZPhhachwbRwcXNVloxhNEiOzxKG1Vxqnu+n8Ix6usU/L
	gxy2r2X33FPer2Yr6LMt7ODngXOdQyDmoXGSgCm7P49ZpIvMSWQ==
X-Received: by 2002:a17:90b:2c90:b0:37f:f89a:a1e6 with SMTP id 98e67ed59e1d1-3893d2429bdmr5476205a91.0.1783576195305;
        Wed, 08 Jul 2026 22:49:55 -0700 (PDT)
X-Received: by 2002:a17:90b:2c90:b0:37f:f89a:a1e6 with SMTP id 98e67ed59e1d1-3893d2429bdmr5476176a91.0.1783576194794;
        Wed, 08 Jul 2026 22:49:54 -0700 (PDT)
Received: from [192.168.31.103] ([152.58.31.181])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38a55a47286sm562981a91.10.2026.07.08.22.49.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2026 22:49:54 -0700 (PDT)
Message-ID: <734537a8-7ece-4d2e-8e72-d090d4788b22@oss.qualcomm.com>
Date: Thu, 9 Jul 2026 11:19:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mukesh Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        viken.dadhaniya@oss.qualcomm.com, andi.shyti@kernel.org,
        sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20260705135739.4038826-1-aniket.randive@oss.qualcomm.com>
 <81e84294-b438-415d-82ef-a523c4381eb4@oss.qualcomm.com>
Content-Language: en-US
From: Aniket RANDIVE <aniket.randive@oss.qualcomm.com>
In-Reply-To: <81e84294-b438-415d-82ef-a523c4381eb4@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA1MiBTYWx0ZWRfX/viuX773WYCG
 D3x+wOQFhGTzqDBO2ZOciEbhKc8rY2KVhRRQwE2bqgITIWEpXuCyeDlJ22ZMxENu7RroAl0XhdF
 Id+6BCJDsgwLBGMzl8eWr2jGXEbv+IE=
X-Proofpoint-GUID: PCsd1GxWUKk1THJ0YP8Am3PnZA395gzY
X-Authority-Analysis: v=2.4 cv=cL3QdFeN c=1 sm=1 tr=0 ts=6a4f3684 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=9AXozQ6IwN0d4JI31gUtBA==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=QsZEBUMWvTWtZ6nCauIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: PCsd1GxWUKk1THJ0YP8Am3PnZA395gzY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA1MiBTYWx0ZWRfX85rrZIR8Sdy1
 Z1GsDGrrEr8Z4uRkyqJbXCt8jLkmVEb9dQBP/wsm1+Jo/FjzvLlVRQXYSZQYZ3kaGS/r4r9BguW
 vyIO8vm2Mg4XKFLdEkoZ0kCU2u9wkI2phJ/wnrz5qvSkqwR8k5CVmyBvSfYarcrtVBFGJ9HaXM9
 8qX7f/JMCPaLGwaqUBkXlTIT0RCA20BYmByhFzkLZNNkCBXenDYyejelghTxQD2MuENos9Lz48V
 j4UDbAID9z+fgViZ2rJHQa3eNi1ClC8Pj2+WBNL/PvDiyZYB+P7KjNKF9zX9569dtf/HI6EXvgI
 CtCFRzAeQ4F3alt7lwlwLgMC5WZImCajbYQVC5v5g3iIGBhczu6TfN0nLA6IzwD16K+ie7GGQrW
 RkzguY+dpHps4jXPmCCvs5pAb0kprARtFrG5Gp12DZ2N/BKYvdOcKjajzVKxcWpghqfAQ58Tmq8
 J6Iu7aUQKlsiNnhHKow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_05,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607090052
X-Spamd-Bar: ----
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 35LOOALNGDRCTPIFWT5CYUCHB3ZIQN36
X-Message-ID-Hash: 35LOOALNGDRCTPIFWT5CYUCHB3ZIQN36
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:19:49 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/35LOOALNGDRCTPIFWT5CYUCHB3ZIQN36/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	DATE_IN_PAST(1.00)[131];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mukesh.savaliya@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-i2c@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:naresh.maramaina@oss.qualcomm.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
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
X-Rspamd-Queue-Id: 241F575767F

VGhhbmtzIE11a2VzaCBmb3IgdGhlIHJldmlldy4NCg0KT24gNy83LzIwMjYgNTozNyBQTSwgTXVr
ZXNoIFNhdmFsaXlhIHdyb3RlOg0KPiANCj4gDQo+IE9uIDcvNS8yMDI2IDc6MjcgUE0sIEFuaWtl
dCBSYW5kaXZlIHdyb3RlOg0KPiBbLi4uXQ0KPiANCj4+IMKgIHN0YXRpYyBpbnQgcWNvbV9nZW5p
X2kyY19jb25mKHN0cnVjdCBnZW5pX3NlICpzZSwgdW5zaWduZWQgbG9uZyBmcmVxKQ0KPj4gwqAg
ew0KPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZ2VuaV9pMmNfZGV2ICpnaTJjID0gZGV2X2dldF9kcnZk
YXRhKHNlLT5kZXYpOw0KPj4gQEAgLTQ3MSw3ICs0ODQsNyBAQCBzdGF0aWMgaW50IGdlbmlfaTJj
X3J4X29uZV9tc2coc3RydWN0IGdlbmlfaTJjX2RldiANCj4+ICpnaTJjLCBzdHJ1Y3QgaTJjX21z
ZyAqbXNnLA0KPj4gwqDCoMKgwqDCoCB9DQo+PiDCoMKgwqDCoMKgIGN1ciA9IGdpMmMtPmN1cjsN
Cj4+IC3CoMKgwqAgdGltZV9sZWZ0ID0gd2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KCZnaTJj
LT5kb25lLCBYRkVSX1RJTUVPVVQpOw0KPj4gK8KgwqDCoCB0aW1lX2xlZnQgPSB3YWl0X2Zvcl9j
b21wbGV0aW9uX3RpbWVvdXQoJmdpMmMtPmRvbmUsIA0KPj4gZ2VuaV9pMmNfeGZlcl90aW1lb3V0
KGdpMmMsIGxlbikpOw0KPiBTaW1wbGlmeSB3aXRoIHRpbWVvdXQgPSBnZW5pX2kyY194ZmVyX3Rp
bWVvdXQoZ2kyYywgbGVuKSBhbmQgdXNlIGFzIGFuIA0KPiBhcmcgPw0KDQpZZXMuIHdlIGNhbiBh
ZGQgZXh0cmEgdmFyaWFibGUuIEkgdGhvdWdoIHRvIGF2b2lkIGV4dHJhIHZhcmlhYmxlLg0KDQo+
PiDCoMKgwqDCoMKgIGlmICghdGltZV9sZWZ0KQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdlbmlf
aTJjX2Fib3J0X3hmZXIoZ2kyYyk7DQo+PiBAQCAtNTEzLDcgKzUyNiw3IEBAIHN0YXRpYyBpbnQg
Z2VuaV9pMmNfdHhfb25lX21zZyhzdHJ1Y3QgZ2VuaV9pMmNfZGV2IA0KPj4gKmdpMmMsIHN0cnVj
dCBpMmNfbXNnICptc2csDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgd3JpdGVsX3JlbGF4ZWQoMSwg
c2UtPmJhc2UgKyBTRV9HRU5JX1RYX1dBVEVSTUFSS19SRUcpOw0KPj4gwqDCoMKgwqDCoCBjdXIg
PSBnaTJjLT5jdXI7DQo+PiAtwqDCoMKgIHRpbWVfbGVmdCA9IHdhaXRfZm9yX2NvbXBsZXRpb25f
dGltZW91dCgmZ2kyYy0+ZG9uZSwgWEZFUl9USU1FT1VUKTsNCj4+ICvCoMKgwqAgdGltZV9sZWZ0
ID0gd2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KCZnaTJjLT5kb25lLCANCj4+IGdlbmlfaTJj
X3hmZXJfdGltZW91dChnaTJjLCBsZW4pKTsNCj4+IMKgwqDCoMKgwqAgaWYgKCF0aW1lX2xlZnQp
DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZ2VuaV9pMmNfYWJvcnRfeGZlcihnaTJjKTsNCj4+IEBA
IC01OTEsNyArNjA0LDcgQEAgc3RhdGljIHZvaWQgZ2VuaV9pMmNfZ3BpX211bHRpX2Rlc2NfdW5t
YXAoc3RydWN0IA0KPj4gZ2VuaV9pMmNfZGV2ICpnaTJjLCBzdHJ1Y3QgaTJjXw0KPj4gwqDCoCAq
IGdlbmlfaTJjX2dwaV9tdWx0aV94ZmVyX3RpbWVvdXRfaGFuZGxlcigpIC0gSGFuZGxlcyBtdWx0
aSBtZXNzYWdlIA0KPj4gdHJhbnNmZXIgdGltZW91dA0KPj4gwqDCoCAqIEBkZXY6IFBvaW50ZXIg
dG8gdGhlIGNvcnJlc3BvbmRpbmcgZGV2IG5vZGUNCj4+IMKgwqAgKiBAbXVsdGlfeGZlcjogUG9p
bnRlciB0byB0aGUgZ2VuaV9pMmNfZ3BpX211bHRpX2Rlc2NfeGZlcg0KPj4gLSAqIEB0cmFuc2Zl
cl90aW1lb3V0X21zZWNzOiBUaW1lb3V0IHZhbHVlIGluIG1pbGxpc2Vjb25kcw0KPj4gKyAqIEB0
cmFuc2Zlcl90aW1lb3V0X21zZWNzOiBQZXItbWVzc2FnZSBjb21wbGV0aW9uIHRpbWVvdXQgaW4g
amlmZmllcw0KPj4gwqDCoCAqIEB0cmFuc2Zlcl9jb21wOiBDb21wbGV0aW9uIG9iamVjdCBvZiB0
aGUgdHJhbnNmZXINCj4+IMKgwqAgKg0KPj4gwqDCoCAqIFRoaXMgZnVuY3Rpb24gd2FpdHMgZm9y
IHRoZSBjb21wbGV0aW9uIG9mIGVhY2ggcHJvY2Vzc2VkIHRyYW5zZmVyIA0KPj4gbWVzc2FnZXMN
Cj4+IEBAIC02MDEsNyArNjE0LDcgQEAgc3RhdGljIHZvaWQgZ2VuaV9pMmNfZ3BpX211bHRpX2Rl
c2NfdW5tYXAoc3RydWN0IA0KPj4gZ2VuaV9pMmNfZGV2ICpnaTJjLCBzdHJ1Y3QgaTJjXw0KPj4g
wqDCoCAqLw0KPj4gwqAgc3RhdGljIGludCBnZW5pX2kyY19ncGlfbXVsdGlfeGZlcl90aW1lb3V0
X2hhbmRsZXIoc3RydWN0IGRldmljZSAqZGV2LA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGdlbmlfaTJjX2dwaV9tdWx0
aV9kZXNjX3hmZXIgDQo+PiAqbXVsdGlfeGZlciwNCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiB0cmFuc2Zlcl90aW1lb3V0X21zZWNz
LA0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdW5zaWduZWQgbG9uZyB0aW1lb3V0X2ppZmZpZXMsDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgY29tcGxldGlvbiAq
dHJhbnNmZXJfY29tcCkNCj4+IMKgIHsNCj4+IMKgwqDCoMKgwqAgaW50IGk7DQo+PiBAQCAtNjEy
LDcgKzYyNSw3IEBAIHN0YXRpYyBpbnQgDQo+PiBnZW5pX2kyY19ncGlfbXVsdGlfeGZlcl90aW1l
b3V0X2hhbmRsZXIoc3RydWN0IGRldmljZSAqZGV2LA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChtdWx0aV94ZmVyLT5tc2dfaWR4X2NudCAhPSBtdWx0aV94ZmVyLT5pcnFfY250KSB7DQo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aW1lX2xlZnQgPSB3YWl0X2Zvcl9jb21wbGV0aW9u
X3RpbWVvdXQodHJhbnNmZXJfY29tcCwNCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0cmFuc2Zlcl90aW1lb3V0X21zZWNz
KTsNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB0aW1lb3V0X2ppZmZpZXMpOw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaWYgKCF0aW1lX2xlZnQpIHsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZGV2X2VycihkZXYsICIlczogVHJhbnNmZXIgdGltZW91dFxuIiwgX19mdW5jX18pOw0K
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVUSU1FRE9VVDsN
Cj4+IEBAIC03MzYsOCArNzQ5LDE1IEBAIHN0YXRpYyBpbnQgZ2VuaV9pMmNfZ3BpKHN0cnVjdCBn
ZW5pX2kyY19kZXYgDQo+PiAqZ2kyYywgc3RydWN0IGkyY19tc2cgbXNnc1tdLA0KPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIGRtYV9hc3luY19pc3N1ZV9wZW5kaW5nKGdpMmMtPnR4X2MpOw0KPj4gwqDC
oMKgwqDCoMKgwqDCoMKgIGlmICgobXNnX2lkeCA9PSAoZ2kyYy0+bnVtX21zZ3MgLSAxKSkgfHwg
ZmxhZ3MgJiANCj4+IERNQV9QUkVQX0lOVEVSUlVQVCkgew0KPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc2l6ZV90IG1heF9sZW4gPSAwOw0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50
IGo7DQo+PiArDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb3IgKGogPSAwOyBqIDwgZ2ky
Yy0+bnVtX21zZ3M7IGorKykNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWF4
X2xlbiA9IG1heF90KHNpemVfdCwgbWF4X2xlbiwgbXNnc1tqXS5sZW4pOw0KPj4gKw0KPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gZ2VuaV9pMmNfZ3BpX211bHRpX3hmZXJfdGlt
ZW91dF9oYW5kbGVyKGdpMmMtIA0KPj4gPnNlLmRldiwgZ2kyY19ncGlfeGZlciwNCj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBYRkVSX1RJTUVPVVQsICZnaTJjLT5kb25lKTsNCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBnZW5pX2kyY194ZmVyX3RpbWVvdXQoDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ2ky
YywgbWF4X2xlbiksICZnaTJjLT5kb25lKTsNCj4gU2ltcGxpZnkgd2l0aCB0aW1lb3V0ID0gZ2Vu
aV9pMmNfeGZlcl90aW1lb3V0KGdpMmMsIGxlbikgYW5kIHVzZSBhcyBhbiANCj4gYXJnID8NCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQpIHsNCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2VycihnaTJjLT5zZS5kZXYsDQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIkkyQyBtdWx0aSB3cml0ZSBtc2cgdHJh
bnNmZXIgdGltZW91dDogJWRcbiIsDQo+PiBAQCAtODUyLDcgKzg3Miw4IEBAIHN0YXRpYyBpbnQg
Z2VuaV9pMmNfZ3BpX3hmZXIoc3RydWN0IGdlbmlfaTJjX2RldiANCj4+ICpnaTJjLCBzdHJ1Y3Qg
aTJjX21zZyBtc2dzW10sIGkNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWdpMmMtPmlzX3R4
X211bHRpX2Rlc2NfeGZlcikgew0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2Fz
eW5jX2lzc3VlX3BlbmRpbmcoZ2kyYy0+dHhfYyk7DQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB0aW1lX2xlZnQgPSB3YWl0X2Zvcl9jb21wbGV0aW9uX3RpbWVvdXQoJmdpMmMtPmRvbmUsIA0K
Pj4gWEZFUl9USU1FT1VUKTsNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRpbWVfbGVmdCA9
IHdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91dCgmZ2kyYy0+ZG9uZSwgDQo+PiBnZW5pX2kyY194
ZmVyX3RpbWVvdXQoDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ2kyYywgbXNnc1tpXS5sZW4pKTsNCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmICghdGltZV9sZWZ0KSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGRldl9lcnIoZ2kyYy0+c2UuZGV2LCAiJXM6STJDIHRpbWVvdXRc
biIsIF9fZnVuY19fKTsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ2ky
Yy0+ZXJyID0gLUVUSU1FRE9VVDsNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
