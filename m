Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A3137A20C0F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jan 2025 15:28:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A1C341272
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jan 2025 14:28:22 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 0B1793F50E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jan 2025 14:28:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=fcEEUgRy;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4368a293339so65297295e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jan 2025 06:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738074489; x=1738679289; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ahk62Ar8Pu/DVCpXbGNGRvzN3jwVrKohGxX3J3gkK5A=;
        b=fcEEUgRyvycEkL3X9co0oRuXNo8DEAaRcMYbg8Ply4B2eRzhJmloP6QKZlDddmAxNO
         RxEDHhdZPIN7l+3zz4Vw9B+i18hP6SC5rKSd267IpNHOiLdQ/Wv/L8PLpqQeEBTKzav7
         Waie8qnHgB06YgXtrFRdvhSVLG80jcXqWceyV5P3kkRhIVjBUMrZc0HVLKxpUB9K3KSe
         btIkqGIUXaGSglNUVtQ0iq/jUuVR+uN4L4BmArAw+OK2uEOQzWKwmDmRY7O7kYnNISQG
         IXM33E1Rw+y6SaJ+ojBSfEAJjC8etHsL2Rnurg6HefjGW7Z8slQOoBMnvnkbHv6RkZpM
         qHxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738074489; x=1738679289;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ahk62Ar8Pu/DVCpXbGNGRvzN3jwVrKohGxX3J3gkK5A=;
        b=GSrLY2QSoGNf+rNRcGFXP33AwvF7z2quQgoBW2Wrlcg8kRAYXqgnXQ4ya91rKaR5IX
         4ZOxX6L4V/NIYYZfFF5LJ53EYZVCnyNmr5Me7z02aVgfIg7CCq+ESJpblluEAfxHtLyV
         KbANTPNuorNhMNvlqHx5h87jAEhdCtL/md5nyF5IrbXL742R0EtNM9B+4CETgl1i/+ug
         M5CzeQcgleoO0RSjCBEQVhBGQKAWszsF0ZPhkZRQUEJBDSj8hB9wUgwkEdsWTSCBxbwp
         xD9+H/wxqBrlFibwh1v/wY7cy7vXXebWmp+JJilnRbW1jIeWohjah6NTT2dDrOdUJ9E2
         NdaA==
X-Forwarded-Encrypted: i=1; AJvYcCU8UkSdQPGl9Xp41CBDDOpcN1gYXcBtml3JGEX6UE6893/lSO3VTxuH3lqh4HUpTMknsJQCwul8TZqYgmda@lists.linaro.org
X-Gm-Message-State: AOJu0YznMKCuQn8skj9yFgDsClhwJpWmrvjgYVe1FdBDB4+tt6nXCpmD
	zx4e3emNk2wzhShXbE63RmEZ16c8rBBH/nghnDSZ9PzTut7K5HUY
X-Gm-Gg: ASbGncvGVjKEcNXh1Mt9TBd/TqUHS5wzQSL+3VrA+kQKyWLB6u5zvEN9Ur2XfywrozV
	5mvx/6Llo1uW2JVYZ3IVhaOwSbVd62SY4/LWughTXtx75YbLMSLi+wNQ9uVIB/nnJ8y/1nk4dqq
	f8nP5UetjYa5UbyZ6JH87+N/No+qEgnE2Znvp6FzYtLtWetmcBEjgO3W+AyU/aSUE2WlFWb0xl9
	K0gODI7ewr0FxmGSERY7Rh2m3iudPn+iRjWxFDI5BmkONr254ma0MfPXbGkEDEQVm3sXWx3+3WB
	JhH37KUq8SZuxdr4YHNvq0aDnGvFQj4ahhj38iSKd8NbEAi05liivvQ=
X-Google-Smtp-Source: AGHT+IGe4Gq0fWnPhR3Cs+lOYdtUwcTbBTKsiXhgWED++HD+8j7b1fZPRSoYalZO9TSPtYmFAQ2nWg==
X-Received: by 2002:a5d:5887:0:b0:38b:da31:3e3c with SMTP id ffacd0b85a97d-38bf56635c9mr38247686f8f.20.1738074488757;
        Tue, 28 Jan 2025 06:28:08 -0800 (PST)
Received: from [10.254.108.83] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a1bbd93sm14320932f8f.76.2025.01.28.06.28.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 06:28:08 -0800 (PST)
Message-ID: <af78559c-057a-4d70-ab05-fcc943dce2e6@gmail.com>
Date: Tue, 28 Jan 2025 15:28:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lucas Stach <l.stach@pengutronix.de>, marek.olsak@amd.com,
 sumit.semwal@linaro.org
References: <20250128100833.8973-1-christian.koenig@amd.com>
 <6681c5a71cadaee237dc4bf47e12ffd0bfdd89b0.camel@pengutronix.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <6681c5a71cadaee237dc4bf47e12ffd0bfdd89b0.camel@pengutronix.de>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0B1793F50E
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_5(1.50)[209.85.128.51:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.51:from];
	NEURAL_HAM(-0.00)[-0.998];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	RCPT_COUNT_FIVE(0.00)[6]
Message-ID-Hash: 3RZPBBFNGMHXZXUUX6IVCVENIMXAPY6H
X-Message-ID-Hash: 3RZPBBFNGMHXZXUUX6IVCVENIMXAPY6H
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix timeout handling in dma_resv_wait_timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3RZPBBFNGMHXZXUUX6IVCVENIMXAPY6H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjguMDEuMjUgdW0gMTE6NDggc2NocmllYiBMdWNhcyBTdGFjaDoNCj4gSGkgQ2hyaXN0aWFu
LA0KPg0KPiBBbSBEaWVuc3RhZywgZGVtIDI4LjAxLjIwMjUgdW0gMTE6MDggKzAxMDAgc2Nocmll
YiBDaHJpc3RpYW4gS8O2bmlnOg0KPj4gRXZlbiB0aGUga2VybmVsZG9jIHNheXMgdGhhdCB3aXRo
IGEgemVybyB0aW1lb3V0IHRoZSBmdW5jdGlvbiBzaG91bGQgbm90DQo+PiB3YWl0IGZvciBhbnl0
aGluZywgYnV0IHN0aWxsIHJldHVybiAxIHRvIGluZGljYXRlIHRoYXQgdGhlIGZlbmNlcyBhcmUN
Cj4+IHNpZ25hbGVkIG5vdy4NCj4+DQo+PiBVbmZvcnR1bmF0ZWx5IHRoYXQgaXNuJ3Qgd2hhdCB3
YXMgaW1wbGVtZW50ZWQsIGluc3RlYWQgb2Ygb25seSByZXR1cm5pbmcNCj4+IDEgd2UgYWxzbyB3
YWl0ZWQgZm9yIGF0IGxlYXN0IG9uZSBqaWZmaWVzLg0KPj4NCj4+IEZpeCB0aGF0IGJ5IGFkanVz
dGluZyB0aGUgaGFuZGxpbmcgdG8gd2hhdCB0aGUgZnVuY3Rpb24gaXMgYWN0dWFsbHkNCj4+IGRv
Y3VtZW50ZWQgdG8gZG8uDQo+Pg0KPj4gUmVwb3J0ZWQtYnk6IE1hcmVrIE9sxaHDoWsgPG1hcmVr
Lm9sc2FrQGFtZC5jb20+DQo+PiBSZXBvcnRlZC1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVu
Z3V0cm9uaXguZGU+DQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQo+PiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+DQo+PiAt
LS0NCj4+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAxMSArKysrKystLS0tLQ0KPj4g
ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPj4NCj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtcmVzdi5jDQo+PiBpbmRleCA1ZjhkMDEwNTE2ZjAuLmFlOTJkOWQyMzk0ZCAxMDA2NDQN
Cj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+PiArKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLXJlc3YuYw0KPj4gQEAgLTY4NCwxMSArNjg0LDEyIEBAIGxvbmcgZG1hX3Jlc3Zf
d2FpdF90aW1lb3V0KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBlbnVtIGRtYV9yZXN2X3VzYWdlIHVz
YWdlLA0KPj4gICAJZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBvYmosIHVzYWdlKTsNCj4+
ICAgCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7DQo+
PiAgIA0KPj4gLQkJcmV0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmZW5jZSwgaW50ciwgcmV0
KTsNCj4+IC0JCWlmIChyZXQgPD0gMCkgew0KPj4gLQkJCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJz
b3IpOw0KPj4gLQkJCXJldHVybiByZXQ7DQo+PiAtCQl9DQo+PiArCQlyZXQgPSBkbWFfZmVuY2Vf
d2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCB0aW1lb3V0KTsNCj4+ICsJCWlmIChyZXQgPD0gMCkN
Cj4+ICsJCQlicmVhazsNCj4+ICsNCj4+ICsJCS8qIEV2ZW4gZm9yIHplcm8gdGltZW91dCB0aGUg
cmV0dXJuIHZhbHVlIGlzIDEgKi8NCj4+ICsJCXRpbWVvdXQgPSBtaW4odGltZW91dCwgcmV0KTsN
Cj4gVGhpcyBtaW4gY29uc3RydWN0IGFuZCB0aGUgY29tbWVudCBjb25mdXNlZCBtZSBhIGJpdCBh
dCBmaXJzdC4gSSB0aGluaw0KPiBpdCB3b3VsZCBiZSBlYXNpZXIgdG8gcmVhZCBhcw0KPg0KPiAv
KiBXaXRoIGEgemVybyB0aW1lb3V0IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQgbWFrZXMgdXAgYQ0K
PiAgICogcG9zaXRpdmUgcmV0dXJuIHZhbHVlIGZvciBhbHJlYWR5IHNpZ25hbGVkIGZlbmNlcy4N
Cj4gICAqLw0KPiBpZiAodGltZW91dCkNCj4gCXRpbWVvdXQgPSByZXQ7DQoNCkdvb2QgcG9pbnQs
IGdvaW5nIHRvIGNoYW5nZSB0aGF0Lg0KDQo+DQo+IEFsc28gcGxlYXNlIGNoYW5nZSB0aGUgaW5p
dGlhbGl6YXRpb24gb2YgcmV0IG9uIHRvcCBvZiB0aGUgZnVuY3Rpb24gdG8NCj4gcmV0ID0gMSBz
byBpdCBoYXMgdGhlIHJpZ2h0IHZhbHVlIHdoZW4gbm8gZmVuY2VzIGFyZSBwcmVzZW50LiBOb3cg
dGhhdA0KPiB5b3UgdXNlIHRoZSB0aW1lb3V0IHZhcmlhYmxlIGZvciB0aGUgZmVuY2Ugd2FpdCwg
dGhlcmUgaXMgbm8gcG9pbnQgaW4NCj4gaW5pdGlhbGl6aW5nIHJldCB0byB0aGUgdGltZW91dC4N
Cg0KV2hlbiBubyBmZW5jZXMgYXJlIHByZXNlbnQgcmV0dXJuaW5nIDEgd291bGQgYmUgaW5jb3Jy
ZWN0IGlmIHRoZSB0aW1lb3V0IA0KdmFsdWUgd2FzIG5vbiB6ZXJvLg0KDQpPbmx5IHdoZW4gdGhl
IHRpbWVvdXQgdmFsdWUgaXMgemVybyB3ZSBzaG91bGQgcmV0dXJuIDEgdG8gaW5kaWNhdGUgdGhh
dCANCnRoZXJlIGlzIG5vdGhpbmcgdG8gd2FpdCBmb3IuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4u
DQoNCj4NCj4gUmVnYXJkcywNCj4gTHVjYXMNCj4NCj4+ICAgCX0NCj4+ICAgCWRtYV9yZXN2X2l0
ZXJfZW5kKCZjdXJzb3IpOw0KPj4gICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
