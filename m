Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCaJLZxgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C2D532454
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98375404D0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:29:31 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id E064B3F72F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 19:03:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=Z4RSZl73;
	dmarc=pass (policy=reject) header.from=meta.com;
	spf=pass (lists.linaro.org: domain of "prvs=358647ce9a=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=358647ce9a=mattev@meta.com"
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.18.1.11/8.18.1.11) with ESMTP id 6466ZPHl920923
	for <linaro-mm-sig@lists.linaro.org>; Wed, 6 May 2026 12:03:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=5ISWZb2UuFba0k6oi9EeUbt30lbvtpS4mraM2wLVkyY=; b=Z4RSZl73zxAx
	zZGJKjWbu3zTJO2Bsk7H+t9eLU0pGSMUd2EWPWWmTWTrjcXJW+t9cykPVmWT/6Na
	WhFVloj/P5riPIh99O4KiziEkw1rv5LZA/mZhy4TyD7T0ICAUcP4MGYeNRbK/nHE
	r9mAY5EM5AxyDLUb44A/sl+y/vDtcJn+m0fJvgbR80rNhdJ0BjHN943pa5tqCWng
	PbPABcZ9oR39oGQYRUmyHdfUR8kptlyAkWGNdDRXzAg9SW6Ud/2laX0vukK4dV7V
	GrqhUuFJxQOsbFydokpDYy0yIbLdkYADFwS9VzcXfG4iefkHSRTb5nZbsmrZvwQn
	GMozv0gGUA==
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
	by m0001303.ppops.net (PPS) with ESMTPS id 4dwcx9twa9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 06 May 2026 12:03:12 -0700 (PDT)
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-48d127eb013so161245e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 May 2026 12:03:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778094191; x=1778698991;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5ISWZb2UuFba0k6oi9EeUbt30lbvtpS4mraM2wLVkyY=;
        b=FMbA3f1HUK6vU1bkWrEc/ppkNJuebNoYX2oL2B/Vw6SxWS8VD2PgCpmkzYwii1bbuJ
         VqC6hmD51Ge0WoJwl/k2JhfYoKMO1Ej/WCx31vzIyhZhrCbna6JN6dDv9ZkIZBdAEtPN
         TgtoFWH0vFtB6zSwUjrJYx8AYiBtn8QzB/99JhJqa6SHVXnGSh+5+He+On2Q/ShKdH29
         xdDiZ1e2X3r4JUwssEi+dT39PZK+RePiJaao+7nc4mbXaZbL20zgGicDWPYrDR3GOFAv
         vw73iPVJSpeZt3jcZgeW04lhVRQEHUscxDbKb9h0CkwnJpc0WI/SYfCkQDgRbL7Y8FRQ
         s1Jw==
X-Forwarded-Encrypted: i=1; AFNElJ89qMdMCu9PIiu1TVd+KGL0GQq3HrjxqvxDz19xDiUj7/7uVCaUsP3wN9BqBsQMqHDEQxXylVJPdsml0ReH@lists.linaro.org
X-Gm-Message-State: AOJu0YwlaEGQMHUKAfGIof1qHjhy6xnPIsmT/hWh0G2H03WYqE7xohoj
	vJ7WstUpe+7WnCtagiRlmNjYGGwzEEH/eHUMMmpIDnFd3h7AipOs9UMH3lOwMDj7+taxwkgnvG5
	BLlfFreoGWJzdH90vhimgNXJgHyXLmjx+oTK++XEKmYnwZe5fU263RT3mrNYShm6ERRY=
X-Gm-Gg: AeBDiev2sTJPaxbPxTMh7ChR+0yOij1waxO3IiNkOl89U8jbtf+6frwUqfGFmQhD12o
	AAS8GwlLwSNS66f8dUcr8fNTNFsq7fkx5r6JEKtK11/OtrJ1u05qdi3Gv4obSAqbyynIsVm+NZ6
	yeL9U4vakR7jzQbqbOTcYjMe/wotyssJJx93AUrGHFDPJl7F0artJwNqKrf3r/RPAHh7oDJYohl
	NETsc9aC1dkA6pdgEh0NDODYEy09XGRUFY6Ofbr9zU3B9EXaKtJupy1W0pDoP/zSTB4MXyDDHUw
	DJE8dlPmax0Wc/XU8DBEP4VuOV87GkGPTeWndMX9tdLedjtR7SIJ9fIbHXeHtK97s3ekDSqFN3q
	WndWc2JNfvUS7bZyQcC5nFhQCJPq4QUwIydE3nOTQIJSTBAUNPSYUV20qZOYd9EMyMl3YM39DfG
	bwSFng0jAFmA4wBxpGLsaJKnRllpB3extE3WKksZlsF4rKHdEAU74bg6EX/51+9KvqLm9D+jQkC
	IHXHfDIF/vfxyhBmpGA8dfxDQQ2n7OUSg==
X-Received: by 2002:a05:600c:8b04:b0:47e:e2eb:bc22 with SMTP id 5b1f17b1804b1-48e51f183demr77118315e9.5.1778094191028;
        Wed, 06 May 2026 12:03:11 -0700 (PDT)
X-Received: by 2002:a05:600c:8b04:b0:47e:e2eb:bc22 with SMTP id 5b1f17b1804b1-48e51f183demr77117815e9.5.1778094190534;
        Wed, 06 May 2026 12:03:10 -0700 (PDT)
Received: from ?IPV6:2001:8b0:8b6:13d4:102e:f2af:e074:5cde? (e.d.c.5.4.7.0.e.f.a.2.f.e.2.0.1.4.d.3.1.6.b.8.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:8b6:13d4:102e:f2af:e074:5cde])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e538fb19csm62944065e9.11.2026.05.06.12.03.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 12:03:09 -0700 (PDT)
Message-ID: <52162da4-e1cc-4f90-a95a-218d6089cd71@meta.com>
Date: Wed, 6 May 2026 20:03:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Matt Evans <mattev@meta.com>
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-4-mattev@meta.com>
 <20260424182426.GG3444440@nvidia.com>
 <c598a21e-ee50-42d9-98dc-2959e84ace50@meta.com>
 <20260430171106.GA6829@nvidia.com>
 <2d0eb275-64ef-4710-806b-36f6b32f7122@meta.com>
Content-Language: en-GB
In-Reply-To: <2d0eb275-64ef-4710-806b-36f6b32f7122@meta.com>
X-Proofpoint-ORIG-GUID: Jwm0XJtNhdKpaNUT0O7wJy-07jokSlds
X-Proofpoint-GUID: Jwm0XJtNhdKpaNUT0O7wJy-07jokSlds
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA2MDE4NyBTYWx0ZWRfX74S3GQmiDxyE
 ud2NnZvMAYfgaPxG+N9quz9mtR0/lZAWZVFekBXZ9/it2puqwQYxKYaz5eU6qY2NvqonKrDxJvq
 CuMNp7MKpDC7tHGTPbTFwIdITffKbSF5KrVBQRk41XuZvIbHXQOEGz+214B5cfQChFXH5PIHYSo
 c3kktpndkg7kVYtXXFPWb+h+knNPB7qd4ayqujx9KUyIUQYAl7V41Sfho/LfQPfPIbVg250XFJN
 MKD2r2FxVGrknXvRKwiPH9L2tKEdwjwBgxYzOnJuPyM4A09x5+xBjXXGJ3BMpMyBrhSY8oZQ4gy
 9/Z7DK54ZtCGx0D/7ZNRm61HG1HLPmqtyCTvDitwBWMCccHXh+PRkC8XlPygaEFecK1Srwq6THh
 VSolm7yHVi35x1ZhrtDHyHc8x0wOkadhxi9H7i8X62N5/T2kYMJKuC7no0td9DgSM5uwKge+u3K
 22MEH80ayvfljs907Kw==
X-Authority-Analysis: v=2.4 cv=SoCgLvO0 c=1 sm=1 tr=0 ts=69fb9070 cx=c_pps
 a=IwH782EDBk/vqbJ9rM8UFw==:117 a=Dv35txUGz5gI0hTa:21 a=xqWC_Br6kY4A:10
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7x6HtfJdh03M6CCDgxCd:22 a=_78whYxrdx1mplLwxq1U:22 a=lFmndaL0naqy_eS1C0EA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-06_01,2026-05-06_01,2025-10-01_01
X-Spamd-Bar: ----
X-MailFrom: prvs=358647ce9a=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WX4E4IRUCLUSTSHL5S3LIO4VAINZK4UD
X-Message-ID-Hash: WX4E4IRUCLUSTSHL5S3LIO4VAINZK4UD
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:48 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] vfio/pci: Add a helper to create a DMABUF for a BAR-map VMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WX4E4IRUCLUSTSHL5S3LIO4VAINZK4UD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 76C2D532454
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[160];
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
	NEURAL_SPAM(0.00)[0.770];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

SGkgYWdhaW4gSmFzb24sDQoNCk9uIDA1LzA1LzIwMjYgMTk6MTMsIE1hdHQgRXZhbnMgd3JvdGU6
DQo+IEhpIEphc29uLA0KPiANCj4gT24gMzAvMDQvMjAyNiAxODoxMSwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOg0KPj4NCj4+IE9uIFRodSwgQXByIDMwLCAyMDI2IGF0IDA1OjQ3OjQ5UE0gKzAxMDAs
IE1hdHQgRXZhbnMgd3JvdGU6DQo+Pj4+IE9uIFRodSwgQXByIDE2LCAyMDI2IGF0IDA2OjE3OjQ2
QU0gLTA3MDAsIE1hdHQgRXZhbnMgd3JvdGU6DQo+Pj4+PiAraW50IHZmaW9fcGNpX2NvcmVfbW1h
cF9wcmVwX2RtYWJ1ZihzdHJ1Y3QgdmZpb19wY2lfY29yZV9kZXZpY2UgKnZkZXYsDQo+Pj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB2bV9hcmVhX3N0cnVj
dCAqdm1hLA0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQg
cGh5c19zdGFydCwgdTY0IHJlcV9sZW4sDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCByZXNfaW5kZXgpDQo+Pj4+PiArew0KPj4+Pj4gK8Kg
wqDCoCBzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiAqcHJpdjsNCj4+Pj4+ICvCoMKgwqAgY29uc3Qg
dW5zaWduZWQgaW50IG5yX3JhbmdlcyA9IDE7DQo+Pj4+PiArwqDCoMKgIGludCByZXQ7DQo+Pj4+
PiArDQo+Pj4+PiArwqDCoMKgIHByaXYgPSBremFsbG9jX29iaigqcHJpdik7DQo+Pj4+PiArwqDC
oMKgIGlmICghcHJpdikNCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsNCj4+
Pj4+ICsNCj4+Pj4+ICvCoMKgwqAgcHJpdi0+cGh5c192ZWMgPSBremFsbG9jX29iaigqcHJpdi0+
cGh5c192ZWMpOw0KPj4+Pj4gK8KgwqDCoCBpZiAoIXByaXYtPnBoeXNfdmVjKSB7DQo+Pj4+PiAr
wqDCoMKgwqDCoMKgwqAgcmV0ID0gLUVOT01FTTsNCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBnb3Rv
IGVycl9mcmVlX3ByaXY7DQo+Pj4+PiArwqDCoMKgIH0NCj4+Pj4+ICsNCj4+Pj4+ICvCoMKgwqAg
LyoNCj4+Pj4+ICvCoMKgwqDCoCAqIFRoZSBtbWFwKCkgcmVxdWVzdCdzIHZtYS0+dm1fb2ZmcyBt
aWdodCBiZSBub24temVybywgYnV0DQo+Pj4+PiArwqDCoMKgwqAgKiB0aGUgRE1BQlVGIGlzIGNy
ZWF0ZWQgZnJvbSBfb2Zmc2V0IHplcm9fIG9mIHRoZSBCQVIuwqAgVGhlDQo+Pj4+PiArwqDCoMKg
wqAgKiBwb3J0aW9uIGJldHdlZW4gemVybyBhbmQgdGhlIHZtX29mZnMgaXMgaW5hY2Nlc3NpYmxl
DQo+Pj4+PiArwqDCoMKgwqAgKiB0aHJvdWdoIHRoaXMgVk1BLCBidXQgdGhpcyBhcHByb2FjaCBr
ZWVwcyB0aGUNCj4+Pj4+ICvCoMKgwqDCoCAqIC9wcm9jLzxwaWQ+L21hcHMgb2Zmc2V0IHNvbWV3
aGF0IGNvbnNpc3RlbnQgd2l0aCB0aGUNCj4+Pj4+ICvCoMKgwqDCoCAqIHByZS1ETUFCVUYgY29k
ZS7CoCBTaXplIGluY2x1ZGVzIHRoZSBvZmZzZXQgcG9ydGlvbi4NCj4+Pj4NCj4+Pj4gSSdtIG5v
dCBzdXJlIEkgdW5kZXJzdGFuZCB0aGlzIGNvbW1lbnQ/DQo+Pj4+DQo+Pj4+IEZvciB0aGUgb2xk
IHBhdGggdm1fcGdvZmYgZm9yIGJ5dGUgMCBvZiB0aGUgYmFyIHN0YXJ0cyBhdCBzb21lIGxhcmdl
DQo+Pj4+IG9mZnNldA0KPj4+Pg0KPj4+PiBGb3IgdGhlIG5ldyBwYXRoIHZtX3Bnb2ZmIGZvciBi
eXRlIDAgb2YgdGhlIGZpcnN0IHJhbmdlIHN0YXJ0cyBhdCAwDQo+Pj4NCj4+PiBHbGFkIHlvdSBh
c2tlZC7CoCA6KQ0KPj4+DQo+Pj4gVGhpcyBpcyB0cnlpbmcgdG8gYWNoaWV2ZSBrZWVwaW5nIC9w
cm9jLzxwaWQ+L21hcHMgKG9yIHNpbWlsYXIpIHNvbWV3aGF0DQo+Pj4gYXMgaW5mb3JtYXRpdmUg
YXMgcHJlLURNQUJVRiBCQVIgbW1hcCwgaW4gdGVybXMgb2Yga2VlcGluZyB0aGUgVk1BDQo+Pj4g
dm1fb2ZmcyBjb2x1bW4gdXNlZnVsLsKgIEJlZm9yZSB0aGlzIHBhdGNoLCBzYXkgeW91IG1tYXAo
KSB0d28gc2xpY2VzIEENCj4+PiBhbmQgQiBvZiB0aGUgc2FtZSBCQVI6DQo+Pj4NCj4+PiDCoCBz
dHJ1Y3QgdmZpb19yZWdpb25faW5mbyBiYXJfcmVnaW9uOw0KPj4+DQo+Pj4gwqAgdm1fYSA9IG1t
YXAoMCwgMHgxMDAwLCAuLi4sIGRldmljZV9mZCwgYmFyX3JlZ2lvbi5vZmZzZXQgKyAwKTsNCj4+
PiDCoCB2bV9iID0gbW1hcCgwLCAweDEwMDAsIC4uLiwgZGV2aWNlX2ZkLCBiYXJfcmVnaW9uLm9m
ZnNldCArIDB4NDAwMCk7DQo+Pj4NCj4+PiAuLi55b3UnZCBzZWUgc29tZXRoaW5nIGxpa2UgdGhp
cyBpbiAvcHJvYy9ibGFoL21hcHM6DQo+Pj4NCj4+PiBmZmZmZjQwMDAwMDAtZmZmZmY0MDAxMDAw
IHJ3LXMgMTAwMDAwMDAwMDAgMDA6MDcgMTQ4wqDCoMKgwqAgL2Rldi92ZmlvLyANCj4+PiBkZXZp
Y2VzL3ZmaW8wDQo+Pj4gZmZmZmY1MDAwMDAwLWZmZmZmNTAwMTAwMCBydy1zIDEwMDAwMDA0MDAw
IDAwOjA3IDE0OMKgwqDCoMKgIC9kZXYvdmZpby8gDQo+Pj4gZGV2aWNlcy92ZmlvMA0KDQpMb29r
aW5nIGF0IHRoaXMgYWdhaW4sIEkvd2UgZ290IHRoaXMgYmFja3dhcmRzIGFuZCBJIG1peGVkIHVw
IHR3byB0aGluZ3M6DQoNClRoZSBnb2FsIG9mIHRoaXMgcGF0Y2ggX2lzIGFscmVhZHlfIHRvIG1h
a2Ugc3VyZSB0aGUgVk1BJ3Mgdm1fcGdvZmYgDQood2hldGhlciB2aWV3ZWQgaW4gL3Byb2MvPHBp
ZD4vbWFwcyBvciBlbHNld2hlcmUpIHN0aWxsIG1hdGNoZXMgdGhlIA0KbW1hcCgpJ3Mgb2Zmc2V0
Lg0KDQooRm9yIGEgbW8sIGlnbm9yZSB0aGUgcmVzb3VyY2UgaW5kZXggZW5jb2RlZCBpbnRvIHRo
ZSBvZmZzZXQuICBDb25zaWRlciANCmp1c3QgdGhlIG9mZnNldCBpbnRvIHRoZSBCQVIgaXRzZWxm
LCBpbnNpZGUgdGhlIFZGSU9fUENJX09GRlNFVF9NQVNLLiANCkknbGwgY29tZSBiYWNrIHRvIHRo
ZSBpbmRleCBlbmNvZGVkIGludG8gdGhlIHVwcGVyIGJpdHMuKQ0KDQo+Pj4gdGhlbiB0aGUgVk1B
J3Mgdm1fb2ZmcyB3b3VsZCBuZWVkIHRvIGJlIHRodW5rZWQgYmFjayBkb3duIHRvIDAgKHNpbmNl
DQo+Pj4gdGhlIGZhdWx0IGhhbmRsZXIgdGhlbiB0cmVhdHMgdm1fYiArIDAgYXMgdGhlIGZpcnN0
IGJ5dGUgb2YgdGhlIERNQUJVRikuDQo+Pj4gVGhhdCB3b3Jrcy9hZGRzIHVwLCBidXQgdGhlbiB0
aGUgdm1fb2ZmcyBvZiBib3RoIFZNQXMgQSAmIEIgYm90aCBoYXZlDQo+Pj4gb2Zmc2V0IDAsIGFu
ZCBpdCdzIGhhcmRlciB0byBkaWZmZXJlbnRpYXRlIGluIC9wcm9jL2JsYWgvbWFwcy4NCj4+DQo+
PiBZZXMsIGFuZCB0aGF0IHdvdWxkIGJlIGNvcnJlY3QuDQoNCldoeT8gIFRoaXMgcGFyYWdyYXBo
IHdhcyBvdXRsaW5pbmcgYSBoeXBvdGhldGljYWwgYWx0ZXJuYXRpdmUgDQppbXBsZW1lbnRhdGlv
biB0aGF0IGNyZWF0ZXMgdGhlIERNQUJVRiB0aGUgc2l6ZSBvZiB0aGUgVk1BIGFuZCBzdGFydGlu
ZyANCmZyb20gYW4gb2Zmc2V0IGludG8gdGhlIEJBUiBiYXNlZCBvbiB2bV9wZ29mZiwgYW5kIHRo
ZW4gY29tcGVuc2F0ZXMgYnkgDQpzZXR0aW5nIHZtYS0+dm1fcGdvZmYgPSAwIHNvIHRoYXQgdGhl
IGZhdWx0IGRvZXNuJ3QgcmUtYXBwbHkgdGhlIG9mZnNldCANCmFnYWluLiAgVGhhdCB3b3VsZCBt
YWtlIGJ5dGUgMCBvZiB0aGUgVk1BIGFjY2VzcyBjb3JyZWN0Og0KDQogICBCQVJfc3RhcnQgKyAo
dm1hLT52bV9wZ29mZiA8PCBQQUdFX1NISUZUKSAgIFsxXQ0KDQpCdXQgaXQgd291bGQuLi4NCg0K
Pj4gVGhlIFZNQSBvdXRwdXQgb2YgbHNwY2kgc2hvdWxkIHNob3cgdGhlIGV4YWN0IHBnb2ZmIHBh
c3NlZCB0byBtbWFwIGFuZA0KPj4gbm90aGluZyBlbHNlLiBEbyBub3QgbWFuZ2xlIGl0IGZvciAi
ZGVidWdnaW5nIi4NCiA+Pj4+IHBnb2ZmIGlzIG5vdCB0byBiZSB1c2VkIHRvIHNob3cgcmFuZG9t
IGludGVybmFsIEZEIGRldGFpbHMuLg0KDQouLi5kZWZpbml0ZWx5IGJyZWFrIHRoaXMgcHJvcGVy
dHksIG5vPw0KDQpUaGlzIHBhdGNoIGlzIHN1cHBvcnRpbmcgdGhhdCBwcm9wZXJ0eSBieSBpbnN0
ZWFkIGNyZWF0aW5nIHRoZSBETUFCVUYgc28gDQp0aGF0IHRoZSBWTUEncyB2bV9wZ29mZiAod2hp
Y2ggaXMgbWFpbnRhaW5lZCBhbmQgdGhlIHNhbWUqIGFzIHBhc3NlZCANCmZyb20gbW1hcCgpISkg
aW5kZXhlcyB0aGUgRE1BQlVGIHNvIHRoYXQgYnl0ZSAwIG9mIHRoZSBWTUEgYWNjZXNzZXMgdGhl
IA0Kc2FtZSBhZGRyZXNzIGFib3ZlIGluIFsxXS4gIFRoZSBETUFCVUYgc3BhbnMgZnJvbSB0aGUg
c3RhcnQgb2YgdGhlIEJBUiANCnNvIHRoZSBmYXVsdCBoYW5kbGVyIG1hdGhzICh3aGljaCBpbmRl
eGVzIHRoZSBETUFCVUYgYnkgdm1fcGdvZmZzKSBpcyANCmNvbW1vbiBmb3IgYWxsIGJ1ZmZlcnMu
DQoNCiAgYSA9IG1tYXAoMCwgMHgxMDAwMCwgLi4uLCBkZXZpY2VfZmQsIDB4NDAwMCk7DQoNCiAg
ICAgICAgICArMCAgICAgICAgICAgKzB4NDAwMA0KICAgICAgICAgICstLS0tLS0tLS0tLS12LS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KICAgICAgICAgIHwgICAg
ICAgICAgICAgICBCQVIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfA0KICAg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfA0KICAgICAgICAgICstLS0tLS0tLS0tLS1eLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tKw0KICAgICAgICAgIC4gICAgICAgICAgICAuDQogICAgICAgICAg
LiAgICAgICAgICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCiAgICAgICAgICAuICAg
ICAgICAgICAgfCAgVk1BICAgICAgICAgICAgICAgICAgICAgfA0KICAgICAgICAgIC4gICAgICAg
ICAgICB8ICB2bWEtPnZtX3Bnb2ZmID0gNCAgICAgICB8DQogICAgICAgICAgLiAgICAgICAgICAg
ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCiAgICAgICAgICAuICAgICAgICAgICAgLiAg
ICAgICAgICAgICAgICAgICAgICAgICAgLg0KICAgICAgICAgICstLS0tLS0tLS0tLS0rLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0rDQogICAgICAgICAgfCBpbnZpc2libGUgIHwgIERNQUJVRiAg
ICAgICAgICAgICAgICAgIHwNCiAgICAgICAgICB8ICAgICAgICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICAgICAgfA0KICAgICAgICAgICstLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0rDQoNClNhbWUqIGV4dGVybmFsbHktb2JzZXJ2YWJsZSBiZWhhdmlvdXIgYXMgdGhl
IG9sZCBtbWFwKCkuDQoNCj4+PiBXZSBjb3VsZCBwb3NzaWJseSBzdGFzaCB0aGUgb3JpZ2luYWwg
b2Zmc2V0IHNvbWV3aGVyZSBhbmQgdGhlbiByZW5kZXIgaXQNCj4+PiBpbiB0aGUgbmFtZSBzdHJp
bmcsIGJ1dCB0aGUgbmFtZSdzIGFscmVhZHkgYWJvdXQgdGhlIG1heCBzaXplIGFuZCB1c2luZw0K
Pj4+IHRoZSBleGlzdGluZyB2bV9vZmZzIGNvbHVtbiBpcyBuaWNlciBJTU8sIGRvZXNuJ3QgbmVl
ZCBhIG5ldyBmaWVsZCwgZXRjLg0KPj4NCj4+PiBJIG5lZWQgdG8gd29yayBvbiB0aGlzIGNvbW1l
bnQgdGhlbiHCoCBXaGF0IHRoaXMgaXMgdHJ5aW5nIHRvIHNheSBpcyB0aGF0DQo+Pj4gdGhlIERN
QUJVRiBpcyBtYWRlIGFydGlmaWNpYWxseSBsYXJnZXIgdGhhbiB0aGUgcGFydCB0aGF0IGlzIHZp
c2libGUNCj4+PiB0aHJvdWdoIHRoZSBWTUEuDQo+Pg0KPj4gWXVrLCB0aGF0J3MgYW5vdGhlciBy
ZWFzb24gbm90IHRvIGRvIHRoaXMuDQpBcGFydCBmcm9tIHRoZSB5dWsgcGFydCwgZG8gd2UgaGF2
ZSBhIHNwZWNpZmljIGNvbmNlcm4gd2l0aCB0aGUgDQppbnZpc2libGUgcG9ydGlvbj8gIFBlcmhh
cHMgaWYgb25lIGNvdWxkIGZpc2ggb3V0IGEgRE1BQlVGIGZkIHNvbWVob3cgDQooaXQncyBhIGZp
bGUsIGJ1dCBubyBzY2FsYXIgZmQgaXMgcmV0dXJuZWQgdG8gdXNlcnNwYWNlKSB0aGVuIHRoZSBs
b3dlciANCkJBUiBhZGRyZXNzZXMgY291bGQgZ2V0IG1tYXAoKWVkLiAgSXNuJ3QgdGhhdCBhdCB3
b3JzdCBhcyBwZXJtaXNzaXZlIGFzIA0KYSAiY2xvc2VkIiBWRklPIGRldmljZSBmZCB3aGljaCBj
b3VsZCBnZXQgZmlzaGVkIG91dCwgZS5nLiANCi9wcm9jLzxwaWQ+L21hcF9maWxlcywgYW5kIG1t
YXAoKWVkIGFnYWluPw0KDQpJIHdlbnQgdGhyb3VnaCBvdGhlciBhcHByb2FjaGVzLCBidXQgdGhl
eSBlaXRoZXIgbmVlZCBzcGVjaWFsLWNhc2luZyBpbiANCnRoZSBmYXVsdCBoYW5kbGVyIG9yIERN
QUJVRi10by1QRk4gaGVscGVyLCBvciBhcyBhYm92ZSB3b3VsZCBtb2RpZnkgdGhlIA0Kdm1hLT52
bV9vZmZzLiAgVGhpcyBzZWVtZWQgYmVzdCBvdmVyYWxsIHRob3VnaCwgYXMgZXZlciwgb3BlbiB0
byBpZGVhcy4NCg0KDQoqOiBSZWdpb24gb2Zmc2V0Og0KDQpPSywgc28gdGhpcyBwYXRjaCBzdHJp
cHMgb3V0IHRoZSBoaWdoIGJpdHMgb2YgdGhlIG9mZnNldCBlYXJseSwgc28gDQp0aGF0J3MgZGlz
YXBwZWFyZWQgZnJvbSAvcHJvYy88cGlkPi9tYXBzIGV0Yy4gIFlvdSdyZSByaWdodCB0byBwb2lu
dCBvdXQgDQp0aGF0IHRoZSByZXNvdXJjZSBpbmRleCBjb3VsZCBiZSBjYXJyaWVkIHN1Y2ggdGhh
dCB0aGUgdm1hLT52bV9wZ29mZiANCnJlYWxseSBpcyBpZGVudGljYWwgdGhyb3VnaG91dC4gIEkn
bGwgcmVzdG9yZSB0aGF0IHNvIHRoYXQgdGhlIFZNQSdzIA0Kdm1fb2ZmcyBpcyBpZGVudGljYWwg
dG8gdGhhdCBwYXNzZWQgdmlhIG1tYXAoKS4NCg0KRG9lcyB0aGF0IHNlZW0gcmVhc29uYWJsZT8N
Cg0KDQpUaGFua3MsDQoNCg0KTWF0dA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
