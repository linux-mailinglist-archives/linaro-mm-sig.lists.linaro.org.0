Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECF79BE662
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Nov 2024 12:59:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52372447F2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Nov 2024 11:59:13 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id DB08F3F395
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Nov 2024 11:59:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=SCRSE42S;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4315baa51d8so58960115e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 Nov 2024 03:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730894345; x=1731499145; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3Y87pMnWFoa3I37VV8/r2muz4wO+tB140v+PKTUy8BI=;
        b=SCRSE42SDfCTa4H1GJVhjK8BEQdp3ROM+wVLqoCHk6Z0bXXIdWFSFWg5PkJKoB7T+7
         z8Xd5pEOgdCtfmPrBSZJwvb3Djj6ko8wbvKDuS5ZGTRU6pCJAxscz+0xqiNbHkwnWOpu
         H059dWrrtelTP1XzL7bonAxB9QW8MHvrZ7j9nn1vZtTtay9qitiT/UHUiyXat4/lDrIL
         xAKAW44n8ADtSb7SXqz+rl6DIOjD5TH7x3cKZhm4DxcIwZX59wqsYiQT7MViMeIt4XXy
         OaKdxk03LXpOYJRI8ROOmXNPV5IpKhyfL3OJeQ9R4JF+NnmiWjPuriQl9sZj0fy7p3V8
         LrJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730894345; x=1731499145;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Y87pMnWFoa3I37VV8/r2muz4wO+tB140v+PKTUy8BI=;
        b=D9H6MOv4JR759Rae/2M6rzTxQcZhlTNxFX1GhvEybO2fYQX1h4u6PF6kQWSp3w3hEO
         edHmGmGWI5W9tX1mGa2xwop9Oy41UOQ2O+nAj2X4FCGDxkfe00XSKZsz8WG7bli5qxnq
         xbFbtfvyTNjcnI4rh7aX9ZgfFjoAZ5IIc/satOgwVLgBpWpk/bCfkev31S8Y3qnvplJW
         /BKNk5m01OEcfhSBw2E4fX/GJDxpWbIqLyU8BvNMkkVVUNlfROcQHQip9kitwZ88HjiV
         BxPrJa7BJWLr4ggn/EDU1bGPNBrgD97cHKv/zpt6ny80SCEYUkxlQPMqDB5KAFIWlgiv
         THhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzXE8oCN0u/EW+KgGEyamIltqcflNhAKT8/O1SB+WbpE/GUzTmmxpNwn6vczNi2pP/5EiY7d9yAz6AVM6N@lists.linaro.org
X-Gm-Message-State: AOJu0Yz2KQEq5olI6A9VtDzE7UFREdLaXgHrPibB1uiRMZjGhFSaJ9X0
	nhvHQHkrszGrnsTKyAjtttWwC8yki8qNS8zyFrxonchlQwhgk9fB
X-Google-Smtp-Source: AGHT+IFg9E6elVz+or/lQqOgtLdlpoV/nnD8qYAb6a9NpLfMMZrK3a1k2HMk8oyLpqzu9iyteOFbmQ==
X-Received: by 2002:a05:6000:2805:b0:37d:4657:ea7d with SMTP id ffacd0b85a97d-381bea26687mr12845863f8f.49.1730894344497;
        Wed, 06 Nov 2024 03:59:04 -0800 (PST)
Received: from [10.254.108.83] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c116a7a6sm18893363f8f.92.2024.11.06.03.59.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 03:59:04 -0800 (PST)
Message-ID: <1a93003c-44fb-416a-9446-8f74d6121a98@gmail.com>
Date: Wed, 6 Nov 2024 12:59:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Friedrich Vock <friedrich.vock@gmx.de>, Richardqi.Liang@amd.com,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
References: <20241024124159.4519-1-christian.koenig@amd.com>
 <20241024124159.4519-3-christian.koenig@amd.com>
 <c93698d1-5b83-4314-bf9f-d1540d5cdf2d@gmx.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <c93698d1-5b83-4314-bf9f-d1540d5cdf2d@gmx.de>
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.128.51:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	FREEMAIL_TO(0.00)[gmx.de,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DB08F3F395
X-Spamd-Bar: --
Message-ID-Hash: MKIVM4LVOYVIGS3YVI35332RIGO2ZDHA
X-Message-ID-Hash: MKIVM4LVOYVIGS3YVI35332RIGO2ZDHA
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] dma-buf: sort fences in dma_fence_unwrap_merge
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MKIVM4LVOYVIGS3YVI35332RIGO2ZDHA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzAuMTAuMjQgdW0gMTk6MTAgc2NocmllYiBGcmllZHJpY2ggVm9jazoNCj4gT24gMjQuMTAu
MjQgMTQ6NDEsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBUaGUgbWVyZ2UgZnVuY3Rpb24g
aW5pdGlhbGx5IGhhbmRsZWQgb25seSBpbmRpdmlkdWFsIGZlbmNlcyBhbmQNCj4+IGFycmF5cyB3
aGljaCBpbiB0dXJuIHdlcmUgY3JlYXRlZCBieSB0aGUgbWVyZ2UgZnVuY3Rpb24uIFRoaXMgYWxs
b3dlZA0KPj4gdG8gY3JlYXRlIHRoZSBuZXcgYXJyYXkgYnkgYSBzaW1wbGUgbWVyZ2Ugc29ydCBi
YXNlZCBvbiB0aGUgZmVuY2UNCj4+IGNvbnRleHQgbnVtYmVyLg0KPj4NCj4+IFRoZSBwcm9ibGVt
IGlzIG5vdyB0aGF0IHNpbmNlIHRoZSBhZGRpdGlvbiBvZiB0aW1lbGluZSBzeW5jIG9iamVjdHMN
Cj4+IHVzZXJzcGFjZSBjYW4gY3JlYXRlIGNoYWluIGNvbnRhaW5lcnMgaW4gYmFzaWNhbGx5IGFu
eSBmZW5jZSBjb250ZXh0DQo+PiBvcmRlci4NCj4+DQo+PiBJZiB0aG9zZSBhcmUgbWVyZ2VkIHRv
Z2V0aGVyIGl0IGNhbiBoYXBwZW4gdGhhdCB3ZSBjcmVhdGUgcmVhbGx5DQo+PiBsYXJnZSBhcnJh
eXMgc2luY2UgdGhlIG1lcmdlIHNvcnQgYWxnb3JpdGhtIGRvZXNuJ3Qgd29yayBhbnkgbW9yZS4N
Cj4+DQo+PiBTbyBwdXQgYW4gaW5zZXJ0IHNvcnQgYmVoaW5kIHRoZSBtZXJnZSBzb3J0IHdoaWNo
IGtpY2tzIGluIHdoZW4gdGhlDQo+PiBpbnB1dCBmZW5jZXMgYXJlIG5vdCBpbiB0aGUgZXhwZWN0
ZWQgb3JkZXIuIFRoaXMgaXNuJ3QgYXMgZWZmaWNpZW50DQo+PiBhcyBhIGhlYXAgc29ydCwgYnV0
IGhhcyBiZXR0ZXIgcHJvcGVydGllcyBmb3IgdGhlIG1vc3QgY29tbW9uIHVzZQ0KPj4gY2FzZS4N
Cj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFw
LmMgfCAzOSArKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0NCj4+IMKgIDEgZmlsZSBjaGFu
Z2VkLCAzNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jIA0KPj4gYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLXVud3JhcC5jDQo+PiBpbmRleCA2MjhhZjUxYzgxYWYuLmQ5YWEyODBkOWZm
NiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCj4+
ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCj4+IEBAIC0xMDYsNyAr
MTA2LDcgQEAgc3RydWN0IGRtYV9mZW5jZSANCj4+ICpfX2RtYV9mZW5jZV91bndyYXBfbWVyZ2Uo
dW5zaWduZWQgaW50IG51bV9mZW5jZXMsDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZmVuY2VzW2ld
ID0gZG1hX2ZlbmNlX3Vud3JhcF9maXJzdChmZW5jZXNbaV0sICZpdGVyW2ldKTsNCj4+DQo+PiDC
oMKgwqDCoMKgIGNvdW50ID0gMDsNCj4+IC3CoMKgwqAgZG8gew0KPj4gK8KgwqDCoCB3aGlsZSAo
dHJ1ZSkgew0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBzZWw7DQo+Pg0KPj4g
wqAgcmVzdGFydDoNCj4+IEBAIC0xNDQsMTEgKzE0NCw0MCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlIA0K
Pj4gKl9fZG1hX2ZlbmNlX3Vud3JhcF9tZXJnZSh1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcywNCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0NCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9DQo+
Pg0KPj4gLcKgwqDCoMKgwqDCoMKgIGlmICh0bXApIHsNCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGFycmF5W2NvdW50KytdID0gZG1hX2ZlbmNlX2dldCh0bXApOw0KPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZmVuY2VzW3NlbF0gPSBkbWFfZmVuY2VfdW53cmFwX25leHQoJml0ZXJbc2Vs
XSk7DQo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCF0bXApDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBicmVhazsNCj4+ICsNCj4+ICvCoMKgwqDCoMKgwqDCoCAvKg0KPj4gK8KgwqDCoMKgwqDC
oMKgwqAgKiBXZSBjb3VsZCB1c2UgYSBiaW5hcnkgc2VhcmNoIGhlcmUsIGJ1dCBzaW5jZSB0aGUg
YXNzdW1wdGlvbg0KPj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBpcyB0aGF0IHRoZSBtYWluIGlucHV0
IGFyZSBhbHJlYWR5IHNvcnRlZCBkbWFfZmVuY2VfYXJyYXlzDQo+PiArwqDCoMKgwqDCoMKgwqDC
oCAqIGp1c3QgbG9va2luZyBmcm9tIGVuZCBoYXMgYSBoaWdoZXIgY2hhbmNlIG9mIGZpbmRpbmcg
dGhlDQo+PiArwqDCoMKgwqDCoMKgwqDCoCAqIHJpZ2h0IGxvY2F0aW9uIG9uIHRoZSBmaXJzdCB0
cnkNCj4+ICvCoMKgwqDCoMKgwqDCoMKgICovDQo+PiArDQo+PiArwqDCoMKgwqDCoMKgwqAgZm9y
IChpID0gY291bnQ7IGktLTspIHsNCj4NCj4gVGhpcyBpcyBicm9rZW4uIFRoZSBmaXJzdCBpdGVy
YXRpb24gb2YgdGhpcyBsb29wIHdpbGwgYWx3YXlzIGluZGV4IG91dA0KPiBvZiBib3VuZHMuDQoN
Ck5vcGUsIHRoYXQgaXMgY29ycmVjdC4gVGhlIGNvbmRpdGlvbiBpcyBldmFsdWF0ZWQgYmVmb3Jl
IHRoZSBsb29wLCBzbyANCnRoZSBpLS0gcmVkdWNlcyB0aGUgaW5kZXggdG8gdGhlIGxhc3QgZWxl
bWVudCBpbiB0aGUgYXJyYXkuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCg0KPiBXaGF0IHlv
dSBwcm9iYWJseSB3YW50IGhlcmUgaXM6DQo+DQo+ICvCoMKgwqDCoMKgwqDCoCBmb3IgKGkgPSBj
b3VudCAtIDE7IGNvdW50ICYmIGktLTspIHsNCj4NCj4gVGhpcyBpbnRlbnRpb25hbGx5IG92ZXJm
bG93cyBmb3IgY291bnQgPT0gMCwgYnV0IHRoZSArK2kgYWZ0ZXIgdGhlIGxvb3ANCj4gdW5kb2Vz
IHRoYXQuIE1heWJlIGl0IHdvdWxkIGJlIHdvcnRoIGEgY29tbWVudCB0byBwb2ludCBvdXQgdGhh
dCdzDQo+IGludGVudGlvbmFsLg0KPg0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGxp
a2VseShhcnJheVtpXS0+Y29udGV4dCA8IHRtcC0+Y29udGV4dCkpDQo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGJyZWFrOw0KPj4gKw0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaWYgKGFycmF5W2ldLT5jb250ZXh0ID09IHRtcC0+Y29udGV4dCkgew0KPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZG1hX2ZlbmNlX2lzX2xhdGVyKHRtcCwgYXJyYXlb
aV0pKSB7DQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2Zl
bmNlX3B1dChhcnJheVtpXSk7DQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYXJyYXlbaV0gPSBkbWFfZmVuY2VfZ2V0KHRtcCk7DQo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIH0NCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmVu
Y2VzW3NlbF0gPSBkbWFfZmVuY2VfdW53cmFwX25leHQoJml0ZXJbc2VsXSk7DQo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gcmVzdGFydDsNCj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIH0NCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9DQo+PiAtwqDCoMKgIH0gd2hpbGUg
KHRtcCk7DQo+PiArDQo+PiArwqDCoMKgwqDCoMKgwqAgKytpOw0KPj4gK8KgwqDCoMKgwqDCoMKg
IC8qDQo+PiArwqDCoMKgwqDCoMKgwqDCoCAqIE1ha2Ugcm9vbSBmb3IgdGhlIGZlbmNlLCB0aGlz
IHNob3VsZCBiZSBhIG5vcCBtb3N0IG9mIHRoZQ0KPj4gK8KgwqDCoMKgwqDCoMKgwqAgKiB0aW1l
Lg0KPj4gK8KgwqDCoMKgwqDCoMKgwqAgKi8NCj4+ICvCoMKgwqDCoMKgwqDCoCBtZW1jcHkoJmFy
cmF5W2kgKyAxXSwgJmFycmF5W2ldLCAoY291bnQgLSBpKSAqIHNpemVvZigqYXJyYXkpKTsNCj4N
Cj4gTmVlZCBtZW1tb3ZlIGhlcmUsIHNyYyBhbmQgZHN0IGFsaWFzLg0KPg0KPiBJIHRvb2sgaXQg
Zm9yIGEgc3BpbiB3aXRoIHRoZXNlIHRoaW5ncyBmaXhlZCBhbmQgaXQgc2VlbWVkIHRvIHJlc29s
dmUNCj4gdGhlIGlzc3VlIGFzIHdlbGwuIEhvdyBkbyB5b3Ugd2FudCB0byBwcm9jZWVkPyBJIGd1
ZXNzIEkgd291bGQgYmUNCj4gY29tZm9ydGFibGUgcHV0dGluZyBhIFJldmlld2VkLWJ5IGFuZC9v
ciBUZXN0ZWQtYnkgb24gYSB2ZXJzaW9uIHdpdGgNCj4gdGhlc2UgdGhpbmdzIGZpeGVkICh3aXRo
IHRoZSB1c3VhbCBjYXZlYXQgdGhhdCBJJ20gbm90IGEgbWFpbnRhaW5lciAtIEkNCj4gZ3Vlc3Mg
dGhlIHByb2Nlc3MgcmVxdWlyZXMgKGF0IGxlYXN0IG9uZSkgcmV2aWV3ZXIgdG8gYmU/KS4NCj4N
Cj4gQnkgdGhlIHdheSwgSSBndWVzcyB5b3UgbWlnaHQndmUgaGFkIHNvbWUgaW50ZXJuYWwgYnJh
bmNoZXMgd2hlcmUgdGhpcw0KPiBmaXggbmVlZGVkIHRvIGdvIGludG8gcXVpY2sgb3Igc29tZXRo
aW5nPyBVc3VhbGx5IEknbSBoYXBweSB0byBtYWtlIGEgdjINCj4gZm9yIG15IHBhdGNoZXMgbXlz
ZWxmLCB0b28gOykNCj4NCj4gUmVnYXJkcywNCj4gRnJpZWRyaWNoDQo+DQo+PiArwqDCoMKgwqDC
oMKgwqAgYXJyYXlbaV0gPSBkbWFfZmVuY2VfZ2V0KHRtcCk7DQo+PiArwqDCoMKgwqDCoMKgwqAg
ZmVuY2VzW3NlbF0gPSBkbWFfZmVuY2VfdW53cmFwX25leHQoJml0ZXJbc2VsXSk7DQo+PiArwqDC
oMKgwqDCoMKgwqAgY291bnQrKzsNCj4+ICvCoMKgwqAgfTsNCj4+DQo+PiDCoMKgwqDCoMKgIGlm
IChjb3VudCA9PSAwKSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgdG1wID0gZG1hX2ZlbmNlX2Fs
bG9jYXRlX3ByaXZhdGVfc3R1YihrdGltZV9nZXQoKSk7DQo+DQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
