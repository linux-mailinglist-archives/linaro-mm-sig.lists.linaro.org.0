Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GedD9Zi5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD7B431500
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A651440501
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:31:00 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 626873F9DC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 12:00:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=e9EHlytI;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=JnpBASMW;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of aniket.randive@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=aniket.randive@oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62R6w3XJ1860244
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 10:07:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xPdH5qml1h9BZi0j2A2fsbs34QlWxVd/aklZ5kvyOTs=; b=e9EHlytIdywEPWTD
	39TnP0cmNofvASKvqU/gBxM+mf6hxXLeXbj5KdhdZ6WBNeDsrXHlnGjbzqdwgIzX
	x4dJxAslVv/eeQBvs+LNVl3R8uWMP3bThaoLIoK2V4/d+o7VsxmUb00CDBMcVWIh
	Jz76tazr9xvVXke/qU3s59wp6eDAMgiSPjFFGACIeKsi1YR+IQsN/KH9240yD5UC
	3MpkETytN29yoEeeTpjcWtYKblQpydUseX0pjTLYbVv2+6RZR+fLmwX8ebA0akGq
	kVVtWkZe36msYVJfqMhLi9h1pO+jiyF9e+jVnrYAMTrADYVLzG3X5vdRaS/SSo3R
	E8c50A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d5bxv2hph-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 10:07:52 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-82c38b85c25so3513857b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 03:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774606072; x=1775210872; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xPdH5qml1h9BZi0j2A2fsbs34QlWxVd/aklZ5kvyOTs=;
        b=JnpBASMWC+7kcRRXAU+NW6fCYTAP7GdWJN6gn5xwCvn6DbqrhA0pqsR8f4RlghEZYb
         wNe1H+t4BLPbXyBmK3TNx+6GNC2J63Y87/DDtIo2OalxqnsWobCsFWvGxBODngeVqziE
         UR/WSGGADx7txoR/JFsGjNJpbwer0jM+gtRo5E9F29wqE0L1w50E6oAWEHVemBC74YOy
         sb6c0milrP4OdLYc88keoyA9UxRtgExAlTTbA+00PmNEJo+zsYoMhKmMIUxX2Bf4CrXG
         /EzVz6RaigoO0ypmyoE7FvazMXdhZa9AvxaCJPlc69J3bhse1iG/ygCIJereSQGPsSJg
         Ko1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774606072; x=1775210872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xPdH5qml1h9BZi0j2A2fsbs34QlWxVd/aklZ5kvyOTs=;
        b=WqYZ55g66ij1EpXS5Xdi8sayuZFi/P9QvoRTqs/ST9iYuTwH8HQAshqNbjYDFLxmG4
         kJUImVicy4qHs+cxpDlJLe4cMrniQHRAhaPbakVLeBM26Ze6aiv004mUkAEPvfTuRoJV
         AHRWkG1UGnSZKtpVx60372D6iLyVPMljGBPTdfkrs2FWWWMkcnP4veY7UQ8BNiMi657K
         fNV3EMPAfFyqoZm1yu+Eshmd8c7HvmEkfbjvE1gNbb9oU5xkt2MAiXZmDvwWV1Uv9R5t
         ppjbMLFQ/uJLAUMUyeRjptxbE4klJC+hNeGWdxk1Q82b1bevyAhGdTMmzvkp9dverAQD
         03QA==
X-Forwarded-Encrypted: i=1; AJvYcCV9UGQgO7WF/p6QrDaJ7ih9Vgh5ins8hXOl2aeMObAKLF3P0E84+shz8wgWZgo28ng3uWHrHG794uqGdALx@lists.linaro.org
X-Gm-Message-State: AOJu0YwEygR94uG9A6s3TCKevVC9jFf35wZSfyrSTWNnb46m2aEm5xhL
	VrwZ9kDXkxzFSNxucEbJVioZh9dn0BIzK4SEcX1KnVDPouMPrPf9VghZftZjHyxAAFe2bzYKXDf
	/hc63GZi8cyxRRp9YMBaab9fi/ehxJFt5qJSn3X8C2G768ZtfTn29w9ywn+EkzRjY9er7fQ==
X-Gm-Gg: ATEYQzxlnYlXBab/Zr6sjjQv5GcWgYuV6aab7X4fhPUS6Em19gaG3adUQemT2runBnr
	1xbF+VvY1RCQDjlQt6F8cM+DZedr3q+RI4LgmcUMNkHKKCVxRwOy2gyNtIabpsoORsurw2HIkO9
	ziFkYXnHArZgEK98F30PDoR311w1QFG4PIlJa0KBKcmOma3/5P/omSm9s1jDosmh8CuOPqtmDYy
	0Sgh1dJA64rLg3ZT1lqTPi9HJCf6gXh58omys8esII138dD1khLzIwWtQdV5KAszsCRFlTR19JY
	BOL30lj2QJWVZjUX7VazWSi7pRuWcLXIIQw2QH1w/vfr9v4eEJWkvhpBGhZtLLopvF+U3yfgLt6
	uB9ydpO1NGSIkspfH6FTy6IUMTnI8/A367oeXIEed6HPDlBX5vxUaBrc=
X-Received: by 2002:a05:6a00:3405:b0:82a:68fb:cd6d with SMTP id d2e1a72fcca58-82c959d4ac7mr1873015b3a.3.1774606072001;
        Fri, 27 Mar 2026 03:07:52 -0700 (PDT)
X-Received: by 2002:a05:6a00:3405:b0:82a:68fb:cd6d with SMTP id d2e1a72fcca58-82c959d4ac7mr1872992b3a.3.1774606071485;
        Fri, 27 Mar 2026 03:07:51 -0700 (PDT)
Received: from [10.217.218.237] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82c7d1e5ee6sm5012429b3a.7.2026.03.27.03.07.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 03:07:50 -0700 (PDT)
Message-ID: <e850f14e-a938-41cb-80fe-fb92f647fc31@oss.qualcomm.com>
Date: Fri, 27 Mar 2026 15:37:45 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260326-skip_extra_dma_tre-v1-1-deef018895dc@oss.qualcomm.com>
 <341f2f06-eae0-44b1-b513-61a4a129bae2@quicinc.com>
Content-Language: en-US
From: Aniket RANDIVE <aniket.randive@oss.qualcomm.com>
In-Reply-To: <341f2f06-eae0-44b1-b513-61a4a129bae2@quicinc.com>
X-Authority-Analysis: v=2.4 cv=A99h/qWG c=1 sm=1 tr=0 ts=69c656f8 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=3qtGEnkgDDs7DTPDeWgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: N1MxXHqnCoss7A74TofPjf5CmdIWpVrI
X-Proofpoint-GUID: N1MxXHqnCoss7A74TofPjf5CmdIWpVrI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDA3NCBTYWx0ZWRfX1Hc0lo795obh
 gio0aDZr5oj81AnwP5ZuDAKh9ZHG3vDXGB4fjHloxmv7hzxiDZrtaARakLYk8ZliuiOwh1d0kQ4
 IxHUpjdC3EIh4lK/RUCSExFSH2rDyr2jqGEM1OATDSF5Ot+z2w8d8lSbVfnRXBU7DK6HRYyAK7D
 25/mVc89Cpljutq6t9o+p8rn1GQgfottChN54r9lKyE5j2l5mIQuhAOeiJ0MSj3T43u1RlReyDF
 kyA8CGK6aSO2PdYDbZ369Wwwrhqm+9qGcIPAhAxzA5OY13qpg8JEQwDmRo6nCQg+r1hZ9A8zSFt
 F7r1+3zFsuFtZ5SxBwufu8C0p1K7QeJFky8KZ5ShLwR39Tlr1O49VXdukAowye8vbfIkhYh8lWH
 VHvqcga6QM4v1wRZI3P9wGdZTHxwZAp+JYYapDxUGLPpJ7AmXu6EajAfjD+ZyOSmWjpmytwaDAd
 ZAwqnZZlV9MzCENHLqA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_04,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603270074
X-Spamd-Bar: ----
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZNPH74LR5IQ7XJP4FGPAPMPSP2K4MMO2
X-Message-ID-Hash: ZNPH74LR5IQ7XJP4FGPAPMPSP2K4MMO2
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:51 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] i2c: qcom-geni: Skip extra TX DMA TRE for single read message in GPI mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZNPH74LR5IQ7XJP4FGPAPMPSP2K4MMO2/>
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
	DATE_IN_PAST(1.00)[583];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
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
	NEURAL_HAM(-0.00)[-0.964];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: EDD7B431500
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDMvMjcvMjAyNiAxMTo1MSBBTSwgTXVrZXNoIEt1bWFyIFNhdmFsaXlhIHdyb3RlOg0K
PiANCj4gDQo+IE9uIDMvMjYvMjAyNiAxMDowMSBBTSwgQW5pa2V0IFJhbmRpdmUgd3JvdGU6DQo+
PiBJbiBHUEkgbW9kZSwgdGhlIEkyQyBHRU5JIGRyaXZlciBpbmNvcnJlY3RseSBnZW5lcmF0ZXMg
YW4gZXh0cmEgVFggRE1BDQo+PiBUUkUgb24gdGhlIFRYIGNoYW5uZWwgZHVyaW5nIHNpbmdsZSBy
ZWFkIG1lc3NhZ2UgdHJhbnNmZXIuIFRoaXMgcmVzdWx0cw0KPiBXaGF0J3MgdGhlIGltcGFjdCBv
ZiB0aGlzIGV4dHJhIERNQSBUUkUgPyBkbyB5b3Ugc2VlIGZhaWx1cmUvdGltZW91dCwgDQo+IGFu
eXRoaW5nID8NCg0KVGhpcyB3cml0ZSBvcGVyYXRpb24gaXMgdW5uZWNlc3NhcnkuIEZvciBhIDHi
gJFieXRlIHJlYWQgb3BlcmF0aW9uLCBvbmx5IA0KdGhlIENPTkZJRywgR08gYW5kIFJYIERNQSBU
UkUgYXJlIHJlcXVpcmVkLiBIb3dldmVyLCBhbiBhZGRpdGlvbmFsIFRYIA0KRE1BIFRSRSBpcyBj
dXJyZW50bHkgYmVpbmcgYWRkZWQuIEluIGFkZGl0aW9uIHRvIGJlaW5nIHJlZHVuZGFudCwgdGhp
cyANCmFsc28gcmVzdWx0cyBpbiB1bm5lY2Vzc2FyeSBETUEgYnVmZmVyIG1hcHBpbmcgZm9yIHRo
ZSBUWCBETUEgVFJFLg0KDQo+PiBpbiBhbiB1bm5lY2Vzc2FyeSB3cml0ZSBvcGVyYXRpb24gb24g
dGhlIEkyQyBidXMsIHdoaWNoIGlzIG5vdCByZXF1aXJlZC4NCj4+DQo+PiBVcGRhdGUgdGhlIGxv
Z2ljIHRvIGF2b2lkIGdlbmVyYXRpbmcgdGhlIGV4dHJhIFRYIERNQSBUUkUgZm9yIHNpbmdsZQ0K
Pj4gcmVhZCBtZXNzYWdlLCBlbnN1cmluZyBjb3JyZWN0IGJlaGF2aW9yIGFuZCBwcmV2ZW50aW5n
IHJlZHVuZGFudA0KPj4gdHJhbnNmZXJzLg0KPj4NCj4gU28gZm9yIHJlYWQsIHdlIGRvIHVud2Fu
dGVkIHdyaXRlIHRvbyA/IGlmIHNvLCBwbGVhc2Ugd3JpdGUgaXQgDQo+IGFjY29yZGluZ2x5LsKg
IENvcnJlY3QgYmVoYXZpb3IgbmVlZHMgdG8gYmUganVzdGlmaWVkIGFnYWluc3Qgd3JvbmcuDQoN
Clllcy4gQ3VycmVudGx5LCB0aGUgZHJpdmVyIHBlcmZvcm1zIGFuIHVubmVjZXNzYXJ5IHdyaXRl
IGFzIHBhcnQgb2YgYSANCnJlYWQgdHJhbnNhY3Rpb24uIEZvciBhIHNpbmdsZeKAkWJ5dGUgcmVh
ZCBvcGVyYXRpb24sIHRoZSBjb3JyZWN0IGJlaGF2aW9yIA0KaXMgdG8gaXNzdWUgb25seSB0aGUg
Q09ORklHLCBHTyBjb21tYW5kLCBhbmQgYW4gUlggRE1BIFRSRS4gVGhpcyBUWCBETUEgDQpUUkUg
ZG9lcyBub3QgY29udHJpYnV0ZSB0byB0aGUgcmVhZCBvcGVyYXRpb24gYW5kIHJlc3VsdHMgaW4g
YW4gDQp1bmludGVuZGVkIHdyaXRlIGFuZCByZWR1bmRhbnQgRE1BIGJ1ZmZlciBtYXBwaW5nLiBI
ZW5jZSwgdGhlIGN1cnJlbnQgDQpiZWhhdmlvciBpcyBpbmNvcnJlY3QgYW5kIHNob3VsZCBiZSBm
aXhlZCB0byBhbGlnbiB3aXRoIHRoZSByZXF1aXJlZCANCmhhcmR3YXJlIHRyYW5zYWN0aW9uIHNl
cXVlbmNlLg0KDQo+PiBDby1kZXZlbG9wZWQtYnk6IE1hcmFtYWluYSBOYXJlc2ggPG5hcmVzaC5t
YXJhbWFpbmFAb3NzLnF1YWxjb21tLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6IE1hcmFtYWluYSBO
YXJlc2ggPG5hcmVzaC5tYXJhbWFpbmFAb3NzLnF1YWxjb21tLmNvbT4NCj4+IFNpZ25lZC1vZmYt
Ynk6IEFuaWtldCBSYW5kaXZlIDxhbmlrZXQucmFuZGl2ZUBvc3MucXVhbGNvbW0uY29tPg0KPj4g
LS0tDQo+PiDCoCBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXFjb20tZ2VuaS5jIHwgMTggKysrKysr
KysrKysrKy0tLS0tDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1x
Y29tLWdlbmkuYyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy8gDQo+PiBpMmMtcWNvbS1nZW5pLmMNCj4+
IGluZGV4IGE0YWNiNzhmYWZiNi4uMjcwNjMwOWJiZWJiIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmkuYw0KPj4gKysrIGIvZHJpdmVycy9pMmMvYnVzc2Vz
L2kyYy1xY29tLWdlbmkuYw0KPj4gQEAgLTYyNSw4ICs2MjUsOCBAQCBzdGF0aWMgaW50IGdlbmlf
aTJjX2dwaShzdHJ1Y3QgZ2VuaV9pMmNfZGV2ICpnaTJjLCANCj4+IHN0cnVjdCBpMmNfbXNnIG1z
Z3NbXSwNCj4+IMKgIHsNCj4+IMKgwqDCoMKgwqAgc3RydWN0IGdwaV9pMmNfY29uZmlnICpwZXJp
cGhlcmFsOw0KPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgZmxhZ3M7DQo+PiAtwqDCoMKgIHZv
aWQgKmRtYV9idWY7DQo+PiAtwqDCoMKgIGRtYV9hZGRyX3QgYWRkcjsNCj4+ICvCoMKgwqAgdm9p
ZCAqZG1hX2J1ZiA9IE5VTEw7DQo+PiArwqDCoMKgIGRtYV9hZGRyX3QgYWRkciA9IDA7DQo+PiDC
oMKgwqDCoMKgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIG1hcF9kaXJuOw0KPj4gwqDCoMKgwqDC
oCBlbnVtIGRtYV90cmFuc2Zlcl9kaXJlY3Rpb24gZG1hX2Rpcm47DQo+PiDCoMKgwqDCoMKgIHN0
cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRvciAqZGVzYzsNCj4+IEBAIC02MzksNiArNjM5LDEx
IEBAIHN0YXRpYyBpbnQgZ2VuaV9pMmNfZ3BpKHN0cnVjdCBnZW5pX2kyY19kZXYgDQo+PiAqZ2ky
Yywgc3RydWN0IGkyY19tc2cgbXNnc1tdLA0KPj4gwqDCoMKgwqDCoCBnaTJjX2dwaV94ZmVyID0g
JmdpMmMtPmkyY19tdWx0aV9kZXNjX2NvbmZpZzsNCj4+IMKgwqDCoMKgwqAgbXNnX2lkeCA9IGdp
MmNfZ3BpX3hmZXItPm1zZ19pZHhfY250Ow0KPj4gK8KgwqDCoCBpZiAob3AgPT0gSTJDX1dSSVRF
ICYmIG1zZ3NbbXNnX2lkeF0uZmxhZ3MgJiBJMkNfTV9SRCkgew0KPj4gK8KgwqDCoMKgwqDCoMKg
IHBlcmlwaGVyYWwtPm11bHRpX21zZyA9IHRydWU7DQo+IHdoYXQncyB0aGUgYWN0dWFsIG1lYW5p
bmcgb2YgbXVsdGlfbXNnIGhlcmUgPyBJSVVDLCB0aGlzIG11bHRpX21zZyBpcyANCj4gc2V0IHRv
IHRydWUgZm9yIHNpbmdsZSB0cmFuc2ZlcsKgID8gYW55IGJldHRlciBuYW1lIGlmIHNvID8gWWVz
LCBuZWVkIHRvIA0KPiBjaGFuZ2UgaXQgb3V0IG9mIHRoaXMgcGF0Y2guDQoNCkluIHRoZSBHUEkg
ZHJpdmVyLCBhIERNQSBUUkUgaXMgY3JlYXRlZCBvbmx5IHdoZW4gZWl0aGVyIHRoZSBvcGVyYXRp
b24gDQppcyBhIHJlYWQgb3Igd2hlbiBtdWx0aV9tc2cgaXMgc2V0IHRvIGZhbHNlLiBUaGlzIGlz
IGNvbnRyb2xsZWQgYnkgdGhlIA0KZm9sbG93aW5nIGNoZWNrIGR1cmluZyBJMkMgVFJFIGNvbnN0
cnVjdGlvbiwNCg0KCWlmIChpMmMtPm9wID09IEkyQ19SRUFEIHx8IGkyYy0+bXVsdGlfbXNnID09
IGZhbHNlKSB7DQoJCS8qIGNyZWF0ZSB0aGUgRE1BIFRSRSAqLw0KCQl0cmUgPSAmZGVzYy0+dHJl
W3RyZV9pZHhdOw0KDQpQcmV2aW91c2x5LCB3aGVuIGRtYWVuZ2luZV9wcmVwX3NsYXZlX3Npbmds
ZSgpIHdhcyBpbnZva2VkIGZvciBhIHdyaXRlIA0Kb3BlcmF0aW9uLCB0aGlzIGNvbmRpdGlvbiBl
dmFsdWF0ZWQgdG8gdHJ1ZSBhbmQgYSBUWCBETUEgVFJFIHdhcyBjcmVhdGVkIA0Kb24gdGhlIFRY
IGNoYW5uZWwuIFdpdGggdGhlIHJlY2VudCBjaGFuZ2UsIHRoZSBmbGFnIGlzIGV4cGxpY2l0bHkg
c2V0LCANCndoaWNoIGNvcnJlY3RseSBwcmV2ZW50cyBjcmVhdGlvbiBvZiBhIFRYIERNQSBUUkUu
IEkgYWdyZWUgdGhlIHZhcmlhYmxlIA0KbmFtZSBjYW4gYmUgaW1wcm92ZWQgZm9yIGNsYXJpdHkg
YW5kIHByb3Bvc2UgYWRkcmVzc2luZyB0aGF0IGluIGEgDQpmb2xsb3figJF1cCBwYXRjaCB0byBr
ZWVwIHRoaXMgY2hhbmdlIG1pbmltYWwgYW5kIGZvY3VzZWQuDQoNCj4+ICvCoMKgwqDCoMKgwqDC
oCBnb3RvIHNraXBfZG1hOw0KPj4gK8KgwqDCoCB9DQo+PiArDQo+PiDCoMKgwqDCoMKgIGRtYV9i
dWYgPSBpMmNfZ2V0X2RtYV9zYWZlX21zZ19idWYoJm1zZ3NbbXNnX2lkeF0sIDEpOw0KPj4gwqDC
oMKgwqDCoCBpZiAoIWRtYV9idWYpIHsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSAtRU5P
TUVNOw0KPj4gQEAgLTY2OCw2ICs2NzMsNyBAQCBzdGF0aWMgaW50IGdlbmlfaTJjX2dwaShzdHJ1
Y3QgZ2VuaV9pMmNfZGV2ICpnaTJjLCANCj4+IHN0cnVjdCBpMmNfbXNnIG1zZ3NbXSwNCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCBmbGFncyA9IERNQV9QUkVQX0lOVEVSUlVQVCB8IERNQV9DVFJMX0FD
SzsNCj4+IMKgwqDCoMKgwqAgfQ0KPj4gK3NraXBfZG1hOg0KPj4gwqDCoMKgwqDCoCAvKiBzZXQg
dGhlIGxlbmd0aCBhcyBtZXNzYWdlIGZvciByeCB0eG4gKi8NCj4+IMKgwqDCoMKgwqAgcGVyaXBo
ZXJhbC0+cnhfbGVuID0gbXNnc1ttc2dfaWR4XS5sZW47DQo+PiDCoMKgwqDCoMKgIHBlcmlwaGVy
YWwtPm9wID0gb3A7DQo+PiBAQCAtNzQwLDkgKzc0NiwxMSBAQCBzdGF0aWMgaW50IGdlbmlfaTJj
X2dwaShzdHJ1Y3QgZ2VuaV9pMmNfZGV2IA0KPj4gKmdpMmMsIHN0cnVjdCBpMmNfbXNnIG1zZ3Nb
XSwNCj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7DQo+PiDCoCBlcnJfY29uZmlnOg0KPj4gLcKgwqDC
oCBkbWFfdW5tYXBfc2luZ2xlKGdpMmMtPnNlLmRldi0+cGFyZW50LCBhZGRyLA0KPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBtc2dzW21zZ19pZHhdLmxlbiwgbWFwX2Rpcm4pOw0KPj4gLcKg
wqDCoCBpMmNfcHV0X2RtYV9zYWZlX21zZ19idWYoZG1hX2J1ZiwgJm1zZ3NbbXNnX2lkeF0sIGZh
bHNlKTsNCj4+ICvCoMKgwqAgaWYgKG9wID09IEkyQ19XUklURSAmJiAobXNnc1ttc2dfaWR4XS5m
bGFncyAmIEkyQ19NX1JEKSkgew0KPj4gK8KgwqDCoMKgwqDCoMKgIGRtYV91bm1hcF9zaW5nbGUo
Z2kyYy0+c2UuZGV2LT5wYXJlbnQsIGFkZHIsDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgbXNnc1ttc2dfaWR4XS5sZW4sIG1hcF9kaXJuKTsNCj4+ICvCoMKgwqDCoMKgwqDC
oCBpMmNfcHV0X2RtYV9zYWZlX21zZ19idWYoZG1hX2J1ZiwgJm1zZ3NbbXNnX2lkeF0sIGZhbHNl
KTsNCj4+ICvCoMKgwqAgfQ0KPj4gwqAgb3V0Og0KPj4gwqDCoMKgwqDCoCBnaTJjLT5lcnIgPSBy
ZXQ7DQo+Pg0KPj4gLS0tDQo+PiBiYXNlLWNvbW1pdDogNzg1ZjBlYjJmODVkZWNiZTdjMWVmOWFl
OTIyOTMxZjAxOTRmZmMyZQ0KPj4gY2hhbmdlLWlkOiAyMDI2MDMyNS1za2lwX2V4dHJhX2RtYV90
cmUtYTNjZjIyZjgxZDliDQo+Pg0KPj4gQmVzdCByZWdhcmRzLA0KPj4gLS0gDQo+PiBBbmlrZXQg
UmFuZGl2ZSA8YW5pa2V0LnJhbmRpdmVAb3NzLnF1YWxjb21tLmNvbT4NCj4+DQo+Pg0KPiANCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
