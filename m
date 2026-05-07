Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YL/MNqVgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A497532473
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D3D7401C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:29:40 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 54F813F6C2
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 07:57:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=Qg6qXUNE;
	spf=pass (lists.linaro.org: domain of "prvs=3587027ada=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=3587027ada=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.18.1.11/8.18.1.11) with ESMTP id 6472nTKg3680530
	for <linaro-mm-sig@lists.linaro.org>; Thu, 7 May 2026 10:17:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=2hseHusJHq4MxssvE9ph720WJzKkL0PdIQg2ntbbJzc=; b=Qg6qXUNE89L6
	+1ES/JHEoLIWulvpYZjGL9eLFRE+al8XgZoQ8YL/vXchbQbFrgU8ECcnx8vgaMhB
	GTxqwgWBviFZw2PcYYNaT1rfZofblWJNgGXEXTjDIybxE43ZtWQSvsNvmlX7vFO/
	0go7Uor9MuOCWiXaIbGZ2PKGWUYx60XssWozr1TyEmBZvoY/X8vkn1lSceRGZPfQ
	Su8oMk6xG+FtN054DdH+1h2blHvZqaHvayI8GoSnX83+ToBjab/+284lAwtmgqEG
	07naHNI1aSQw11PSjpb1QTqodKmpaVbNohVKeOsctRjkWzSfSxiMMguFRx/xw9th
	HExpZMTmKg==
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
	by m0001303.ppops.net (PPS) with ESMTPS id 4dwcxa1u3f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 07 May 2026 10:17:56 -0700 (PDT)
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-43efc93e4f6so763770f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 May 2026 10:17:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778174276; x=1778779076;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2hseHusJHq4MxssvE9ph720WJzKkL0PdIQg2ntbbJzc=;
        b=cJX5jTnOR8J1QA3sPjZ2yt68RYjuaswaQnCLVFlfOsPAvG2SfsopnxV4q5FqvQ0da4
         iLf8KtWuDzFMNtZv9IhkLPmjZsm7md2B9Dz3T4YA/f8edrmVgsqomzndmnuNUnrnWBRk
         TJ1yeiAG3FRnkLoyo4QBTnmelxb4g5j9bOE94QDYZAWH/0NRI89+/tfejwm4oP6AQkbY
         u7wMKjU8N3dnrI0mf0CumW4jD1wTny/KRXHrnujjm1drH7916auw3m6rpeJ+wEBxbf69
         zZGjvVw8FCvhC/TgdqsREK/JNKM3RNl7pPRYdnTqUR6U4xfL/Uu/GuL0v6ZFRhW9LG8V
         RQJQ==
X-Forwarded-Encrypted: i=1; AFNElJ9XeHVH1ob4TPp0WKTYbQhq2ZU4B6Cp9p7qFLHBoIN//37DYqHcL5eRzg1BszWqn3AKBtx+lMYRmWizDi7L@lists.linaro.org
X-Gm-Message-State: AOJu0YzVBnYQhzC4N4qf88yKGTzAJm61tBZCPuS+gcafoAjKbMYEp7ah
	qTJcDvsCkOOAIMH9RWSaTdY8CKxXUFx0Unu9O4ckBIxtiOU+0kjYYUUlrYhkkEV2PaYt/ztEG7V
	Pd+obqkubjWN3mYoO2x/wCNu8Ixx75UDvJF0QSqHosh7oezdyQCTODiEhrLKOdajNBkw=
X-Gm-Gg: Acq92OH4VLpFsMFsNjYQCdFKOAbW9GHnmFqNAQ7CoQIt1SwvXCIAtzxDWdSuFLpuErG
	FkkfEhRIFKhCh5UMwauz6CUuodqCXmPzjzDBxrqxXiZl4sCupuiPAqmn2JCe+BawKO3by4Dzb5u
	pW+hbTy6Leyt8hKQDgIVOdGVbQVB5P8F7uz1wjNaRqBB8ghSNJEgOugWd/l/izy+nWm1cNVv8Oc
	T0NjfiYnv7LvsiEPAdbhtfyCGJ5/D6gNvhTeI5OH7A6BOSaI5OUzGo2Bql+/oNsztLTbLWxlrsB
	8JNzL47hnaw6hDRyG7fAIdaH4FkMP3BKVEgCKiIOZoiT07NO9B7kw93KiDoIPJ+/WI4xmrSkDXf
	fdCBZL0wNmK8rX0bWb0v1cSeulTPHTuu0izscuDhSLjDGwbU2ACpe/VsbfIK749mkoJQLfFc440
	Csc5yrdR4uTTECXJIgM03AfJ8USOoUUTE1oEWBWxWhNetxqnAhQr/bOwZo4W4YQ/rO0R94KEa40
	WG43KO3KBGxm8hrP8gy1vQgz4buQCEDzQ==
X-Received: by 2002:a05:6000:2903:b0:43d:242:b9bb with SMTP id ffacd0b85a97d-4515b9f322fmr14370574f8f.18.1778174275503;
        Thu, 07 May 2026 10:17:55 -0700 (PDT)
X-Received: by 2002:a05:6000:2903:b0:43d:242:b9bb with SMTP id ffacd0b85a97d-4515b9f322fmr14370521f8f.18.1778174275013;
        Thu, 07 May 2026 10:17:55 -0700 (PDT)
Received: from ?IPV6:2001:8b0:8b6:13d4:102e:f2af:e074:5cde? (e.d.c.5.4.7.0.e.f.a.2.f.e.2.0.1.4.d.3.1.6.b.8.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:8b6:13d4:102e:f2af:e074:5cde])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4541282046esm408713f8f.8.2026.05.07.10.17.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2026 10:17:54 -0700 (PDT)
Message-ID: <afd17112-5d59-4a68-88ac-903616ed7dfd@meta.com>
Date: Thu, 7 May 2026 18:17:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Matt Evans <mattev@meta.com>
To: Alex Williamson <alex@shazbot.org>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-6-mattev@meta.com>
 <20260501164430.5d3ea683@shazbot.org>
 <7d370a5d-3730-42f0-8656-14ad9c0da682@meta.com>
Content-Language: en-GB
In-Reply-To: <7d370a5d-3730-42f0-8656-14ad9c0da682@meta.com>
X-Proofpoint-ORIG-GUID: LIczScZsiAlJEa7STSdZYP4dwheehxA1
X-Proofpoint-GUID: LIczScZsiAlJEa7STSdZYP4dwheehxA1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA3MDE3MyBTYWx0ZWRfX/6pdLJUdTTdl
 Prn0oKkSTzoRIyQfDFvZwDcWFn3PBw6iTBLwR/oKYSL+K7ZCqzox2mn7l7vvDmgAWmgjfamVxt8
 5JuJrKpA5CzObGFB0IMHu4jC+f/+4aqJRJV7s+gEbXFQRDOofoSefkXlDiHF0I00oIDxQdYkzd/
 NoJ5IzDvDlLrsxPa7O43S1/qbPNQMZLlJsvx23EhTaS51YbWQedpXjvZIgxFEsu1Ob+olW/FzYJ
 Am5wUp81V+fWMQ6LICIgvg35oMw+l8yB05X5+zZYoFIdlOrclWL+nAZ3+8MDzmOqAD5QaO04w3W
 1BOEoVJ8FtfNrJ2ZVWukXE7Cve35yrD07nxNxdi67ee6hZ7rNfvP6ToO8DtG3Uh7T3rEbGB+Z7R
 5reuvGKXEBKi9MgXzaz9Zl9HhdJzVfl4qTNOW5Eia2JjRDGOSIwUIxc5cmRo9bOdXY5LqQTpq3O
 l6m9uk5zeJ5MW34SEjA==
X-Authority-Analysis: v=2.4 cv=SoCgLvO0 c=1 sm=1 tr=0 ts=69fcc944 cx=c_pps
 a=pX1sPZUoWPGeQgUnKQNIgA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=_78whYxrdx1mplLwxq1U:22 a=VwQbUJbxAAAA:8 a=VabnemYjAAAA:8
 a=gEb6E3g4VIbv0AVgNvMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-06_01,2025-10-01_01
X-Spamd-Bar: ---
X-MailFrom: prvs=3587027ada=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: O2ZG6C7RFVHFOLBM3VUFJ3ZPRIHPEEYB
X-Message-ID-Hash: O2ZG6C7RFVHFOLBM3VUFJ3ZPRIHPEEYB
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:48 +0000
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] vfio/pci: Provide a user-facing name for BAR mappings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O2ZG6C7RFVHFOLBM3VUFJ3ZPRIHPEEYB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 9A497532473
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[138];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[meta.com:-];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.382];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

U2VudCB0b28gc29vbiwgOnwNCg0KT24gMDcvMDUvMjAyNiAxNzo1NiwgTWF0dCBFdmFucyB3cm90
ZToNCj4gSGkgQWxleCwNCj4gDQo+IE9uIDAxLzA1LzIwMjYgMjM6NDQsIEFsZXggV2lsbGlhbXNv
biB3cm90ZToNCj4+DQo+PiBPbiBUaHUsIDE2IEFwciAyMDI2IDA2OjE3OjQ4IC0wNzAwDQo+PiBN
YXR0IEV2YW5zIDxtYXR0ZXZAbWV0YS5jb20+IHdyb3RlOg0KPj4NCj4+PiBTaW5jZSBjb252ZXJ0
aW5nIEJBUiBtbWFwKClzIHRvIHVzaW5nIERNQUJVRnMsIHdlIGxvc2UgdGhlIG9yaWdpbmFsDQo+
Pj4gZGV2aWNlIHBhdGggaW4gL3Byb2MvPHBpZD4vbWFwcywgbHNvZiwgZXRjLsKgIEdlbmVyYXRl
IGEgZGVidWctb3JpZW50ZWQNCj4+PiBzeW50aGV0aWMgJ2ZpbGVuYW1lJyBiYXNlZCBvbiB0aGUg
Y2RldiwgcGx1cyBCREYsIHBsdXMgcmVzb3VyY2UgaW5kZXguDQo+Pj4NCj4+PiBUaGlzIGFwcGxp
ZXMgb25seSB0byBCQVIgbWFwcGluZ3MgdmlhIHRoZSBWRklPIGRldmljZSBmZCwgYXMNCj4+PiBl
eHBsaWNpdGx5LWV4cG9ydGVkIERNQUJVRnMgYXJlIG5hbWVkIGJ5IHVzZXJzcGFjZSB2aWEgdGhl
DQo+Pj4gRE1BX0JVRl9TRVRfTkFNRSBpb2N0bC4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IE1h
dHQgRXZhbnMgPG1hdHRldkBtZXRhLmNvbT4NCj4+PiAtLS0NCj4+PiDCoCBkcml2ZXJzL3ZmaW8v
cGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrKy0tDQo+
Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+
Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYyBi
L2RyaXZlcnMvdmZpby9wY2kvIA0KPj4+IHZmaW9fcGNpX2RtYWJ1Zi5jDQo+Pj4gaW5kZXggYTEy
NDMyODI1ZTVlLi4wNGM3NzMzZmU3MTIgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy92ZmlvL3Bj
aS92ZmlvX3BjaV9kbWFidWYuYw0KPj4+ICsrKyBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lf
ZG1hYnVmLmMNCj4+PiBAQCAtNCw2ICs0LDcgQEANCj4+PiDCoCAjaW5jbHVkZSA8bGludXgvZG1h
LWJ1Zi1tYXBwaW5nLmg+DQo+Pj4gwqAgI2luY2x1ZGUgPGxpbnV4L3BjaS1wMnBkbWEuaD4NCj4+
PiDCoCAjaW5jbHVkZSA8bGludXgvZG1hLXJlc3YuaD4NCj4+PiArI2luY2x1ZGUgPHVhcGkvbGlu
dXgvZG1hLWJ1Zi5oPg0KPj4+IMKgICNpbmNsdWRlICJ2ZmlvX3BjaV9wcml2LmgiDQo+Pj4gQEAg
LTQ2Nyw2ICs0NjgsNyBAQCBpbnQgdmZpb19wY2lfY29yZV9tbWFwX3ByZXBfZG1hYnVmKHN0cnVj
dCANCj4+PiB2ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldiwNCj4+PiDCoCB7DQo+Pj4gwqDCoMKg
wqDCoCBzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiAqcHJpdjsNCj4+PiDCoMKgwqDCoMKgIGNvbnN0
IHVuc2lnbmVkIGludCBucl9yYW5nZXMgPSAxOw0KPj4+ICvCoMKgwqAgY2hhciAqYnVmbmFtZTsN
Cj4+PiDCoMKgwqDCoMKgIGludCByZXQ7DQo+Pj4gwqDCoMKgwqDCoCBwcml2ID0ga3phbGxvY19v
YmooKnByaXYpOw0KPj4+IEBAIC00NzksNiArNDgxLDIwIEBAIGludCB2ZmlvX3BjaV9jb3JlX21t
YXBfcHJlcF9kbWFidWYoc3RydWN0IA0KPj4+IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LA0K
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9mcmVlX3ByaXY7DQo+Pj4gwqDCoMKgwqDC
oCB9DQo+Pj4gK8KgwqDCoCBidWZuYW1lID0ga3phbGxvYyhETUFfQlVGX05BTUVfTEVOLCBHRlBf
S0VSTkVMKTsNCj4+PiArwqDCoMKgIGlmICghYnVmbmFtZSkgew0KPj4+ICvCoMKgwqDCoMKgwqDC
oCByZXQgPSAtRU5PTUVNOw0KPj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9mcmVlX3BoeXM7
DQo+Pj4gK8KgwqDCoCB9DQo+Pj4gKw0KPj4+ICvCoMKgwqAgLyoNCj4+PiArwqDCoMKgwqAgKiBN
YXhpbXVtIHNpemUgb2YgdGhlIGZyaWVuZGx5IGRlYnVnIG5hbWUgaXMNCj4+PiArwqDCoMKgwqAg
KiB2ZmlvMTIzNDU2Nzg5MDpmZmZmOmZmOjNmLjctOSA9IDMwLCB3aGljaCBmaXRzIHdpdGhpbg0K
Pj4+ICvCoMKgwqDCoCAqIERNQV9CVUZfTkFNRV9MRU4uDQo+Pj4gK8KgwqDCoMKgICovDQo+Pj4g
K8KgwqDCoCBzbnByaW50ZihidWZuYW1lLCBETUFfQlVGX05BTUVfTEVOLCAiJXM6JXMvJXgiLA0K
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgIGRldl9uYW1lKCZ2ZGV2LT52ZGV2LmRldmljZSksIHBjaV9u
YW1lKHZkZXYtPnBkZXYpLCANCj4+PiByZXNfaW5kZXgpOw0KPj4NCj4+IENvbW1lbnQgc3VnZ2Vz
dHMgOSBpcyB0aGUgbWF4IHJlc19pbmRleCB0aGF0IGNhbiBiZSBwcmludGVkLCBidXQgbW1hcA0K
Pj4gb25seSBkaXJlY3RseSBzdXBwb3J0cyBzdGFuZGFyZCBCQVJzIDAtNS7CoCBDb21tZW50IGFs
c28gdXNlcyBhICctJw0KPj4gd2hpbGUgdGhlIGNvZGUgdXNlcyBhICcvJy7CoCBUaGFua3MsDQo+
IA0KPiBSaWdodCB5b3UgYXJlLsKgIEZpeGVkLCBidXQsIHNpbmNlLi4uDQo+IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2t2bS81MjE2MmRhNC1lMWNjLTRmOTAtYTk1YS0yMThkNjA4OWNkNzFAbWV0
YS5jb20vDQo+IA0KPiAuLi5JJ20ga2VlcGluZyB0aGUgcmVzb3VyY2UgaW5kZXggZW5jb2RlZCBp
biB0aGUgdm1fcGdvZmZzIGFuZCBhcyB0aGF0J3MNCj4gaW4gL3Byb2MvPHBpZD4vbWFwcyBpdCBk
b2Vzbid0IG5lZWQgdG8gYmUgaW4gdGhlIG5hbWUuIEkuZS4sIGFuIGV4YW1wbGUNCj4gbWFwcGlu
ZyBvZiBCQVIgMiBsb29rcyBsaWtlOg0KPiANCj4gZmZmZmE5MzMwMDAwLWZmZmZhZDMwMDAwMCBy
dy1zIDIwMDAwMDMwMDAwIDAwOjBiIDEyIC8gDQo+IGRtYWJ1Zjp2ZmlvMDowMDAwOjAwOjAzLjAN
Cg0KQlVULCB0aGUgbmFtZSdzIHZpc2libGUgdmlhIHBhdGhzIG90aGVyIHRoYW4ganVzdCAvcHJv
Yy88cGlkPi9tYXBzLCBlLmcuDQovc3lzL2tlcm5lbC9kZWJ1Zy9kbWFfYnVmL2J1ZmluZm8gb3Ig
L3Byb2MvPHBpZD4vbWFwX2ZpbGVzIHdoaWNoIGRvbid0IA0KaGF2ZSB0aGUgdm1fb2ZmcywgYW5k
IHNvIGJhY2sgdG8gcGxhbiBBLiAgSnVzdCBtYWRlIHRoZSBjb21tZW50IGNvbnNpc3RlbnQuDQoN
Ck1hdHQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
