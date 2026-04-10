Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KO8qHRNl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:40:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A49431C67
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:40:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F24983F70A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:40:33 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 194353F70C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 10:16:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=LWzGM3WQ;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=XQ91B9c3;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of aniket.randive@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=aniket.randive@oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63AA9a1K2047038
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 10:16:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xWLLA9vRgMxLzH+R7T6INqv0GkwFLsTjR10pSbI4x0k=; b=LWzGM3WQFiAU6RJR
	tY+utxEjkSbrUkh+oCfMPUEip3mr5IU5MUs9rvy+Q0Sweo8DjNPzls4lw5jA0vMe
	AV/mfjWUPxuvkuSKqCu1n4NV9f2wWLcABtvwqc8uGeqbmxht7jsb2V3M5QQglWHD
	oiKk8oTKd5hNQLNzL02ZNHytIfs5TF3uzjTGpp3anltCrvaGhbXDH59ofMADu/0D
	wykL2rzD/2ucsx4sGjEsIE69Bv1nDK20oaNRsJ1Tw/nhapoBSmwLkSnhnV7E7IDd
	6ZgwC7caIvvorbU8qrlp/rkjfdh6VFkCsoaHZuvHrsUMOFfe3UN83C+KG2Y+bu9l
	CWw8yQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dey7781d6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 10:16:46 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35d9278587bso2023843a91.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 03:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775816205; x=1776421005; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xWLLA9vRgMxLzH+R7T6INqv0GkwFLsTjR10pSbI4x0k=;
        b=XQ91B9c3xcIJD5pZt2aEZtufjt5a7MklQT9BGauUsi0QhwFFvJYTAfkToaDdTDwxiM
         wGLFZaAgVCIFxv6576OjiB08ZqMvJ0beUUdRikj3uZuB2golFfyts96u2ahxRa59NIUV
         gslOxtN15yFJj2V9kJ/Bzps3z07WZioY2+XoRQAkLzyQ8dT9luo680uUR4dAIOfP9vRs
         PI4+chffVZ2Vi3mqUPhg7KTG5K4i21o0Tdq+e7EW/ZJCMR9EpyTR8jJe5Sz3LrhKFKvQ
         qo0n43h/mhiu+KQm2rfCepeFUS3BKoriOkA2DSHD2Vn2hm3ZVkXCmMe8EPfHBn7lgLCi
         u4tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775816205; x=1776421005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xWLLA9vRgMxLzH+R7T6INqv0GkwFLsTjR10pSbI4x0k=;
        b=T+oEOegdaDd1pIFWKUEZjDL3Hhezs1sB9wLaImXVCQ2nm3A8nBmjMD/r11gP5NCx77
         p9rAaoibtUUWrmkDsOKxv7e4CE3akp4kjY1U4R8SfjQ45LjLV6/47OTtgoVbVXmi9z/q
         gSiJ3OYlOtPlTM37FYM23UwLExL5tlVooCHrWgadK+9Fbb/n03FRObCmJ1hRVt0QEqPt
         9Jc8j51iUtspwZRyW7dAkLzoXPK2YtAygw8j05X4rFKVTEXSphIjLp+ORsFQiBl9cF0T
         bCvid2juBaY6WkQJT6oT2UGpaPxcU4Q0SMb+g9iP8iRjLYSWkB11P+BvstLbYDrza8cQ
         lQTw==
X-Forwarded-Encrypted: i=1; AJvYcCWS8g7qS1hwUjjHX7V8TuUrdH5SQw0ugsIDlgB02Be74IcIJ+qd1EyVtLekpggN/V0JN8/ktf1p4oCdMHLW@lists.linaro.org
X-Gm-Message-State: AOJu0Yz5GpObbH4Xzdzk+K8Mglxm63rSLr8C2VQ9lRZ+MuC6sRe+qHtl
	gKAkKwL3yuL24Y42TDONJtNFwjEp3fLHWCi8bV/tH3jjiDnj2U6jMqE4saXjylAWIPNmIqbEonc
	hZaAMnzz9bZ5Cmt1inNDK+uwPbVLIdfQ8T0rrq6xA9RhcVs56jM03oAYkxuHBVCUpfhaB+Q==
X-Gm-Gg: AeBDietjQprAAj2X2gu+E4dYNeIrxs0oonzy/rJTN/74uGVaK3M+mg3ZTuxCgSMop4M
	/oiaynmHrYwwj4/BmLPLTNS6b9UqGGH/etwzbmFyw8yauVrvXxghVxjL7oXgj812QmeXQ17yhek
	Ze4CSbJhHz/Es4BZiUWneZWHhc7Jpe0/x8wa+u7DnaZrJmyUZBAMwDz9rey76nQY4rX+k32dI3Y
	8oOMWYB4t1q/iP+94oiqGR1Iy0YE0ntDhKNmmUf7rEcqAqPrv4Bpa/3bglXjBcUSXwsuqrIaACp
	R/RlyquoWxs6T0YCQm8bFm51d8Je1oIA/HZO3+p+qe2nLQyEjM0aoMoyzK1FyOquOwyiNqEFqnx
	ZtRcuGaqkX7fIE1teHzekxepSeLGhsgQSnLFSFo64pNhiFc7z6x+jymU=
X-Received: by 2002:a17:90b:4fc9:b0:35d:a38a:a117 with SMTP id 98e67ed59e1d1-35e42815bccmr2699519a91.15.1775816205346;
        Fri, 10 Apr 2026 03:16:45 -0700 (PDT)
X-Received: by 2002:a17:90b:4fc9:b0:35d:a38a:a117 with SMTP id 98e67ed59e1d1-35e42815bccmr2699460a91.15.1775816204836;
        Fri, 10 Apr 2026 03:16:44 -0700 (PDT)
Received: from [10.217.218.160] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35e42e4517fsm984703a91.4.2026.04.10.03.16.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2026 03:16:44 -0700 (PDT)
Message-ID: <587ea315-9cc2-4ac8-919d-fe34b076f63f@oss.qualcomm.com>
Date: Fri, 10 Apr 2026 15:46:38 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mukesh Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        viken.dadhaniya@oss.qualcomm.com, andi.shyti@kernel.org,
        sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20260403084135.1300931-1-aniket.randive@oss.qualcomm.com>
 <818da0cf-06e8-4a26-955b-67a3d5392e91@oss.qualcomm.com>
Content-Language: en-US
From: Aniket RANDIVE <aniket.randive@oss.qualcomm.com>
In-Reply-To: <818da0cf-06e8-4a26-955b-67a3d5392e91@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: kjt9KjpvaXA96ZR5lgoV4M5_yKP4lBCm
X-Proofpoint-GUID: kjt9KjpvaXA96ZR5lgoV4M5_yKP4lBCm
X-Authority-Analysis: v=2.4 cv=VN/tWdPX c=1 sm=1 tr=0 ts=69d8ce0e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=v7GTtkQuv75T_6NhELgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEwMDA5NSBTYWx0ZWRfX4CEqldyze8Tv
 o7GhtajV7Sw94NQU20mDhrxq2NXM0N4WOvSJK4ELNBW3+gMt6gn2Ei9kLJgN82OAmbJ6XVX8Sta
 P2XCNUcavo6M8mfD6q3geB5xxKaN0bdXXWymWEi8q1Fn/R6Fw2k8H2J0Ehv0b6UrrAlAHIQjo20
 phiQ4lXrcLLQ7NfeOtZ3LQCpaFbEsLccX1YIMyqOdlPHgIsBLVB8RTldGRXFJ4+TqQ1Au6W7Svc
 kAG+Nmx+tri8hgEF3nIljrAskGv2XPFrPHrrIVt0ulV/IVP5amxlcjkbsKvNAEJ2zoGsNxA/kRZ
 9LTyxRjUBib2nQxuBUFQuW4+L5VbZT6JJGF2lUGx2yMp0jn/oxwuN/RDU7TfJrke5BU2twyG8tV
 8ocH4/AZTjMULTGF/2Mws133wlRqr+uLrK9h/4OEKF+NkHz/W4/P9UZHSS8bwB7bFTHkoCRJONJ
 h3vVRi2dO4kftWzww0g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-10_03,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604100095
X-Spamd-Bar: ----
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QFA2G6U2BQ2USEPSQGC5W3MOD5W47DGY
X-Message-ID-Hash: QFA2G6U2BQ2USEPSQGC5W3MOD5W47DGY
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:39:04 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V3] i2c: qcom-geni: Avoid extra TX DMA TRE for single read message in GPI mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QFA2G6U2BQ2USEPSQGC5W3MOD5W47DGY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[247];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.965];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: E2A49431C67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDQvNi8yMDI2IDEwOjA4IEFNLCBNdWtlc2ggU2F2YWxpeWEgd3JvdGU6DQo+IA0KPiAN
Cj4gT24gNC8zLzIwMjYgMjoxMSBQTSwgQW5pa2V0IFJhbmRpdmUgd3JvdGU6DQo+PiBJbiBHUEkg
bW9kZSwgdGhlIEkyQyBHRU5JIGRyaXZlciBwcm9ncmFtcyBhbiBleHRyYSBUWCBETUEgdHJhbnNm
ZXINCj4+IGRlc2NyaXB0b3IgKFRSRSkgb24gdGhlIFRYIGNoYW5uZWwgd2hlbiBoYW5kbGluZyBh
IHNpbmdsZSByZWFkIG1lc3NhZ2UuDQo+PiBUaGlzIHJlc3VsdHMgaW4gYW4gdW5pbnRlbmRlZCB3
cml0ZSBwaGFzZSBiZWluZyBpc3N1ZWQgb24gdGhlIEkyQyBidXMsDQo+PiBldmVuIHRob3VnaCBh
IHJlYWQgdHJhbnNhY3Rpb24gZG9lcyBub3QgcmVxdWlyZSBhbnkgVFggZGF0YS4NCj4+DQo+PiBG
b3IgYSBzaW5nbGUtYnl0ZSByZWFkLCB0aGUgY29ycmVjdCBoYXJkd2FyZSBzZXF1ZW5jZSBjb25z
aXN0cyBvZiB0aGUNCj4+IENPTkZJRyBhbmQgR08gY29tbWFuZHMgZm9sbG93ZWQgYnkgYSBzaW5n
bGUgUlggRE1BIFRSRS4gUHJvZ3JhbW1pbmcgYW4NCj4+IGFkZGl0aW9uYWwgVFggRE1BIFRSRSBp
cyByZWR1bmRhbnQsIGNhdXNlcyB1bm5lY2Vzc2FyeSBETUEgYnVmZmVyDQo+PiBtYXBwaW5nIG9u
IHRoZSBUWCBjaGFubmVsLCBhbmQgbWF5IGxlYWQgdG8gaW5jb3JyZWN0IGJ1cyBiZWhhdmlvci4N
Cj4+DQo+PiBVcGRhdGUgdGhlIHRyYW5zZmVyIGxvZ2ljIHRvIGF2b2lkIHByb2dyYW1taW5nIGEg
VFggRE1BIFRSRSBmb3Igc2luZ2xlDQo+PiByZWFkIG1lc3NhZ2VzIGluIEdQSSBtb2RlLg0KPj4N
Cj4+IENvLWRldmVsb3BlZC1ieTogTWFyYW1haW5hIE5hcmVzaCA8bmFyZXNoLm1hcmFtYWluYUBv
c3MucXVhbGNvbW0uY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogTWFyYW1haW5hIE5hcmVzaCA8bmFy
ZXNoLm1hcmFtYWluYUBvc3MucXVhbGNvbW0uY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogQW5pa2V0
IFJhbmRpdmUgPGFuaWtldC5yYW5kaXZlQG9zcy5xdWFsY29tbS5jb20+DQo+PiAtLS0NCj4+IENo
YW5nZXMgaW4gdjM6DQo+PiDCoMKgIC0gQWRkZWQgY29tbWVudCBpbiB0aGUgZHJpdmVyIGZvciBi
ZXR0ZXIgcmVhZGFiaWxpdHkgYW5kIGNoYW5nZWQgdGhlDQo+PiDCoMKgwqDCoCBwb3NpdGlvbiBv
ZiAnc2tpcF9kbWEnIGxhYmVsIHRvIGFsbG93IGRtYSBlbmdpbmUgY29uZmlndXJhdGlvbi4NCj4+
DQo+PiBDaGFuZ2VzIGluIHYyOg0KPj4gwqDCoCAtIFVwZGF0ZWQgdGhlIGNvbW1pdCBtZXNzYWdl
Lg0KPj4NCj4+IMKgIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcWNvbS1nZW5pLmMgfCAyMCArKysr
KysrKysrKysrKystLS0tLQ0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9p
MmMtcWNvbS1nZW5pLmMgYi9kcml2ZXJzL2kyYy9idXNzZXMvIA0KPj4gaTJjLXFjb20tZ2VuaS5j
DQo+PiBpbmRleCBhNGFjYjc4ZmFmYjYuLjc4YjkyZGI3YzdmZCAxMDA2NDQNCj4+IC0tLSBhL2Ry
aXZlcnMvaTJjL2J1c3Nlcy9pMmMtcWNvbS1nZW5pLmMNCj4+ICsrKyBiL2RyaXZlcnMvaTJjL2J1
c3Nlcy9pMmMtcWNvbS1nZW5pLmMNCj4+IEBAIC02MjUsOCArNjI1LDggQEAgc3RhdGljIGludCBn
ZW5pX2kyY19ncGkoc3RydWN0IGdlbmlfaTJjX2RldiAqZ2kyYywgDQo+PiBzdHJ1Y3QgaTJjX21z
ZyBtc2dzW10sDQo+PiDCoCB7DQo+PiDCoMKgwqDCoMKgIHN0cnVjdCBncGlfaTJjX2NvbmZpZyAq
cGVyaXBoZXJhbDsNCj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGZsYWdzOw0KPj4gLcKgwqDC
oCB2b2lkICpkbWFfYnVmOw0KPj4gLcKgwqDCoCBkbWFfYWRkcl90IGFkZHI7DQo+PiArwqDCoMKg
IHZvaWQgKmRtYV9idWYgPSBOVUxMOw0KPj4gK8KgwqDCoCBkbWFfYWRkcl90IGFkZHIgPSAwOw0K
Pj4gwqDCoMKgwqDCoCBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBtYXBfZGlybjsNCj4+IMKgwqDC
oMKgwqAgZW51bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRtYV9kaXJuOw0KPj4gwqDCoMKgwqDC
oCBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IgKmRlc2M7DQo+PiBAQCAtNjM5LDYgKzYz
OSwxMiBAQCBzdGF0aWMgaW50IGdlbmlfaTJjX2dwaShzdHJ1Y3QgZ2VuaV9pMmNfZGV2IA0KPj4g
KmdpMmMsIHN0cnVjdCBpMmNfbXNnIG1zZ3NbXSwNCj4+IMKgwqDCoMKgwqAgZ2kyY19ncGlfeGZl
ciA9ICZnaTJjLT5pMmNfbXVsdGlfZGVzY19jb25maWc7DQo+PiDCoMKgwqDCoMKgIG1zZ19pZHgg
PSBnaTJjX2dwaV94ZmVyLT5tc2dfaWR4X2NudDsNCj4+ICvCoMKgwqAgLyogU2tpcCBUWCBETUEg
bWFwIGZvciBJMkNfV1JJVEUgb3BlcmF0aW9uIHRvIGF2b2lkIHVuaW50ZW5kZWQgDQo+PiB3cml0
ZSBjeWNsZSAqLw0KPiBTZWVtcyB5b3UgYXJlIG1pc3Npbmcgd3JpdGluZyBpbXBvcnRhbnQgcG9p
bnQgLSBGb3IgcmVhZCBtZXNzYWdlID8NCj4gSW1wb3J0YW50IGlzIHRvIGNsYXJpdHkgd2hhdCdz
IHRoZSBjb25kaXRpb24gd2UgYXJlIGhhbmRsaW5nLCBTa2lwcGluZyANCj4gc29tZXRoaW5nIGlz
IGFueXdheSBjbGVhciBmcm9tIGdvdG8gc2tpcF9kbWEuDQoNClN1cmUsIHdpbGwgYWRkIG1vcmUg
ZGVzY3JpcHRpb24gaW4gY29tbWVudCBmb3IgYmV0dGVyIHVuZGVyc3RhbmRpbmcuDQotQW5pa2V0
DQoNCj4+ICvCoMKgwqAgaWYgKG9wID09IEkyQ19XUklURSAmJiBtc2dzW21zZ19pZHhdLmZsYWdz
ICYgSTJDX01fUkQpIHsNCj4+ICvCoMKgwqDCoMKgwqDCoCBwZXJpcGhlcmFsLT5tdWx0aV9tc2cg
PSB0cnVlOw0KPj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gc2tpcF9kbWE7DQo+PiArwqDCoMKgIH0N
Cj4+ICsNCj4+IMKgwqDCoMKgwqAgZG1hX2J1ZiA9IGkyY19nZXRfZG1hX3NhZmVfbXNnX2J1Zigm
bXNnc1ttc2dfaWR4XSwgMSk7DQo+PiDCoMKgwqDCoMKgIGlmICghZG1hX2J1Zikgew0KPj4gwqDC
oMKgwqDCoMKgwqDCoMKgIHJldCA9IC1FTk9NRU07DQo+PiBAQCAtNjU4LDYgKzY2NCw3IEBAIHN0
YXRpYyBpbnQgZ2VuaV9pMmNfZ3BpKHN0cnVjdCBnZW5pX2kyY19kZXYgKmdpMmMsIA0KPj4gc3Ry
dWN0IGkyY19tc2cgbXNnc1tdLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Ow0KPj4g
wqDCoMKgwqDCoCB9DQo+PiArc2tpcF9kbWE6DQo+IEJldHRlciBuYW1lIC0gc2tpcF90eF9kbWFf
bWFwID8NCg0KU3VyZS4gSSB3aWxsIGNoYW5nZSBpdC4NCi1BbmlrZXQNCg0KPj4gwqDCoMKgwqDC
oCBpZiAoZ2kyYy0+aXNfdHhfbXVsdGlfZGVzY194ZmVyKSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgZmxhZ3MgPSBETUFfQ1RSTF9BQ0s7DQo+PiBAQCAtNzQwLDkgKzc0NywxMiBAQCBzdGF0aWMg
aW50IGdlbmlfaTJjX2dwaShzdHJ1Y3QgZ2VuaV9pMmNfZGV2IA0KPj4gKmdpMmMsIHN0cnVjdCBp
MmNfbXNnIG1zZ3NbXSwNCj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7DQo+PiDCoCBlcnJfY29uZmln
Og0KPj4gLcKgwqDCoCBkbWFfdW5tYXBfc2luZ2xlKGdpMmMtPnNlLmRldi0+cGFyZW50LCBhZGRy
LA0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtc2dzW21zZ19pZHhdLmxlbiwgbWFwX2Rp
cm4pOw0KPj4gLcKgwqDCoCBpMmNfcHV0X2RtYV9zYWZlX21zZ19idWYoZG1hX2J1ZiwgJm1zZ3Nb
bXNnX2lkeF0sIGZhbHNlKTsNCj4+ICvCoMKgwqAgLyogQXZvaWQgRE1BIHVubWFwIGFzIHRoZSB3
cml0ZSBvcGVyYXRpb24gc2tpcHBlZCBETUEgbWFwcGluZyAqLw0KPj4gK8KgwqDCoCBpZiAoZG1h
X2J1Zikgew0KPj4gK8KgwqDCoMKgwqDCoMKgIGRtYV91bm1hcF9zaW5nbGUoZ2kyYy0+c2UuZGV2
LT5wYXJlbnQsIGFkZHIsDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbXNn
c1ttc2dfaWR4XS5sZW4sIG1hcF9kaXJuKTsNCj4+ICvCoMKgwqDCoMKgwqDCoCBpMmNfcHV0X2Rt
YV9zYWZlX21zZ19idWYoZG1hX2J1ZiwgJm1zZ3NbbXNnX2lkeF0sIGZhbHNlKTsNCj4+ICvCoMKg
wqAgfQ0KPj4gwqAgb3V0Og0KPj4gwqDCoMKgwqDCoCBnaTJjLT5lcnIgPSByZXQ7DQo+IA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
