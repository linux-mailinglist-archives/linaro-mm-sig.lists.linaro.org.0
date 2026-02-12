Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNoLLzER4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:41:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 97003411D96
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:41:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC15344EE9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:41:20 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by lists.linaro.org (Postfix) with ESMTPS id C4E233F75E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Feb 2026 09:03:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=N8zu0OrZ;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.221.43 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-4359108fd24so4966698f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Feb 2026 01:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1770886990; x=1771491790; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HTUilNAe4IDeb/F1rvdrNpZ6rY/d/aViUlbwLpih+Tc=;
        b=N8zu0OrZ5BMU4xSAI3KyFVOaMPoGTsmc+K1VQTCry4SGEL1wOHE4Fr3H0UKLED1qZl
         RRqYAsFTibSoC7bzlEG/uZkdDo73dFHwY7U+9ZAxNqqCr7mlaKYIYMqiATcmyJXhB47G
         pee0c82GlwgSHTL/6XP4KF1/QzEY7f0+4KZR0i65Q6NlRmIWSiu1WVwbnuL76uXjJiEz
         ixXH4GC2U/kBMoBHcT0Vn8FSWWE29wp4BNwxEjkvGmwcbgl+6R0dVNn7V032Ikq2CnF/
         icMmUEYiiGYGE1t6Oj71CuD1aO9arE28L5Agw3OynVErMUfkUc9ykACElUqZIqke/vvA
         vuZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770886990; x=1771491790;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HTUilNAe4IDeb/F1rvdrNpZ6rY/d/aViUlbwLpih+Tc=;
        b=vCWNgRIyPJVD+qZP3wgdUDo7ESgKDLyIZi6dxgIjrvTLFMoedGLpiIFQxrF1GfDqrI
         qMeW6wHfZqMcoK7cXx6+uqqve1Gb7sMFSJE8UN0hHhgUGoWm7q8Tu7/pcjnT24SuAKKM
         Z5dFSNtFu9Q+oDRAHCzAadPxmhipXkj2fa1HfXwhxA/fZmDIbsEmhp6Ah3C4c91VWJ7g
         Anq+Wfl3xVM5c0w9TNweJTjX+P6rHgreozkQ3es8sN13/Kllk1QhYOKtS6iVdUsvVze9
         8KI3sUOsp3Xb/NCTzxv1tZjrx+2JWZYdgYjGs1trFb2Afu2M+BGV6IwL3gKmEATwXgu2
         UZUw==
X-Forwarded-Encrypted: i=1; AJvYcCXonaT2ENTzMekUgr/yHKSb62GocZV41KSWy1UNzNePw/EpiJyOCwoySV9nAjBra/NXlnj5p5KcP2N/tEhP@lists.linaro.org
X-Gm-Message-State: AOJu0Yzqd3FLHk/dSyDh/SR4P7Vp0O5qO3L3w7KRzkIvXcYsMOuL63Wd
	NDtWl5qfAnpRyTxcjpmSp7qEK3CcANR6gM/drrCV6L7RLsieQCNVZXe3FizccOtsrsU=
X-Gm-Gg: AZuq6aKX1tdPPOYz0J/Rt0Oe2tbf+hsdmasUqdHrPHD/Rc5fWK77CvuCNrP7OipjZ87
	bjcz3G5iRPUL0iUanbUDPIjmZmEjpbpWIOc/pyi4m0KQHAaI9vWTOb2Z51QaY7X4JgoCt5buXsm
	XNx7oUKrJTojZ5l/a+4zH2tNyhQpumCUjxChly0YMAd1f326m+jB967FYlQIYfwf8RcAAGs4wXn
	SQa5MweXsH4XpJQ5oJrOpEhyOOHQiU6ZkKfIr8iFZIUZWxAHFU5OJAMXLa40rSQrc/f2i6eAuLG
	m0MdavyodrZEwtyCFyHQ4pR8DeOf5wEs9L4hRdZMICXr8yxj1Q4e9EylZkw+btNtiPgOzapVgcm
	lhzGCliogW7lKzR5Oy/jBLTIpj4nNgoiOJPnjwJ8k+6X1khbVVJhCs2EFYRuFOevtXpVpLRXdHd
	SiN55ZR9q8OWhH+0sFKRZpZ+RlpovYZZae9PA06bjTQKov
X-Received: by 2002:a05:600c:19ca:b0:480:4a4f:c36f with SMTP id 5b1f17b1804b1-4836570f25fmr24694975e9.21.1770886989617;
        Thu, 12 Feb 2026 01:03:09 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d77f9sm195670835e9.3.2026.02.12.01.03.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 01:03:09 -0800 (PST)
Message-ID: <b60e30a1-7c5f-4335-b565-ed527dee5fc1@ursulin.net>
Date: Thu, 12 Feb 2026 09:03:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@kernel.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260210102232.1642-1-christian.koenig@amd.com>
 <20260210102232.1642-2-christian.koenig@amd.com>
 <f1345723cc5a61cdec5a6f168f71a323b822b7e2.camel@mailbox.org>
 <f357c2fc-3c72-42ac-b079-849222de4c6e@gmail.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <f357c2fc-3c72-42ac-b079-849222de4c6e@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CK4W2O4XTZJQERWXEFRUWU5GJ3DGFT7F
X-Message-ID-Hash: CK4W2O4XTZJQERWXEFRUWU5GJ3DGFT7F
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:16 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/8] dma-buf: protected fence ops by RCU v5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CK4W2O4XTZJQERWXEFRUWU5GJ3DGFT7F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[1519];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,intel.com,linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.014];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,ursulin.net:mid]
X-Rspamd-Queue-Id: 97003411D96
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMS8wMi8yMDI2IDE1OjQzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KDQo4PjwNCg0K
Pj4+ICsJICovDQo+Pj4gKwlSQ1VfSU5JVF9QT0lOVEVSKGZlbmNlLT5vcHMsIG9wcyk7DQo+Pj4g
IMKgCUlOSVRfTElTVF9IRUFEKCZmZW5jZS0+Y2JfbGlzdCk7DQo+Pj4gIMKgCWZlbmNlLT5sb2Nr
ID0gbG9jazsNCj4+PiAgwqAJZmVuY2UtPmNvbnRleHQgPSBjb250ZXh0Ow0KPj4+IEBAIC0xMTI5
LDExICsxMTUyLDEyIEBAIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2luaXQ2NCk7DQo+Pj4gIMKg
ICovDQo+Pj4gIMKgY29uc3QgY2hhciBfX3JjdSAqZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4+ICDCoHsNCj4+PiAtCVJDVV9MT0NLREVQX1dBUk4oIXJj
dV9yZWFkX2xvY2tfaGVsZCgpLA0KPj4+IC0JCQkgIlJDVSBwcm90ZWN0aW9uIGlzIHJlcXVpcmVk
IGZvciBzYWZlIGFjY2VzcyB0byByZXR1cm5lZCBzdHJpbmciKTsNCj4+PiArCWNvbnN0IHN0cnVj
dCBkbWFfZmVuY2Vfb3BzICpvcHM7DQo+Pj4gICANCj4+PiArCS8qIFJDVSBwcm90ZWN0aW9uIGlz
IHJlcXVpcmVkIGZvciBzYWZlIGFjY2VzcyB0byByZXR1cm5lZCBzdHJpbmcgKi8NCj4+PiArCW9w
cyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4+PiAgwqAJaWYgKCFkbWFfZmVuY2Vf
dGVzdF9zaWduYWxlZF9mbGFnKGZlbmNlKSkNCj4+PiAtCQlyZXR1cm4gKGNvbnN0IGNoYXIgX19y
Y3UgKilmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpOw0KPj4+ICsJCXJldHVybiAo
Y29uc3QgY2hhciBfX3JjdSAqKW9wcy0+Z2V0X2RyaXZlcl9uYW1lKGZlbmNlKTsNCj4+PiAgwqAJ
ZWxzZQ0KPj4+ICDCoAkJcmV0dXJuIChjb25zdCBjaGFyIF9fcmN1ICopImRldGFjaGVkLWRyaXZl
ciI7DQo+Pj4gIMKgfQ0KPj4+IEBAIC0xMTYxLDExICsxMTg1LDEyIEBAIEVYUE9SVF9TWU1CT0wo
ZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKTsNCj4+PiAgwqAgKi8NCj4+PiAgwqBjb25zdCBjaGFyIF9f
cmN1ICpkbWFfZmVuY2VfdGltZWxpbmVfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+
PiAgwqB7DQo+Pj4gLQlSQ1VfTE9DS0RFUF9XQVJOKCFyY3VfcmVhZF9sb2NrX2hlbGQoKSwNCj4+
PiAtCQkJICJSQ1UgcHJvdGVjdGlvbiBpcyByZXF1aXJlZCBmb3Igc2FmZSBhY2Nlc3MgdG8gcmV0
dXJuZWQgc3RyaW5nIik7DQo+Pj4gKwljb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzOw0K
Pj4+ICAgDQo+Pj4gKwkvKiBSQ1UgcHJvdGVjdGlvbiBpcyByZXF1aXJlZCBmb3Igc2FmZSBhY2Nl
c3MgdG8gcmV0dXJuZWQgc3RyaW5nICovDQo+Pj4gKwlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVu
Y2UtPm9wcyk7DQo+Pj4gIMKgCWlmICghZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhmZW5j
ZSkpDQo+Pj4gLQkJcmV0dXJuIChjb25zdCBjaGFyIF9fcmN1ICopZmVuY2UtPm9wcy0+Z2V0X2Ry
aXZlcl9uYW1lKGZlbmNlKTsNCj4+PiArCQlyZXR1cm4gKGNvbnN0IGNoYXIgX19yY3UgKilvcHMt
PmdldF9kcml2ZXJfbmFtZShmZW5jZSk7DQo+Pj4gIMKgCWVsc2UNCj4+PiAgwqAJCXJldHVybiAo
Y29uc3QgY2hhciBfX3JjdSAqKSJzaWduYWxlZC10aW1lbGluZSI7DQo+Pj4gIMKgfQ0KPj4NCj4+
IERpZCB3ZSBtYWtlIGFueSBwcm9ncmVzcyBpbiBvdXIgY29udmVyc2F0aW9uIGFib3V0IHJlbW92
aW5nIHRob3NlIHR3bw0KPj4gZnVuY3Rpb25zIGFuZCBjYWxsYmFja3M/IFRoZXkncmUgb25seSB1
c2VkIGJ5IGk5MTUuDQo+IA0KPiBBY3R1YWxseSB0aGV5IGFyZSBtb3N0bHkgdXNlZCBieSB0aGUg
dHJhY2UgcG9pbnRzIGFuZCBkZWJ1Z2ZzLCBzbyB3ZSBjZXJ0YWlubHkgY2FuJ3QgcmVtb3ZlIHRo
ZW0uDQo+IA0KPiBCdXQgSSdtIHJlYWxseSB3b25kZXJpbmcgd2h5IHRoZSBoZWNrIGk5MTUgaXMg
dXNpbmcgdGhlbT8NCg0KTW9zdGx5IGRpcmVjdGVkIHRvIFBoaWxpcHAgLSBieSB1c2luZyB5b3Ug
bWVhbiBjYWxsaW5nIHRoZSBoZWxwZXJzPyBJIA0KdGhvdWdodCBJIG1lbnRpb25lZCBiZWZvcmUg
dGhlIHN5bmNlIGZlbmNlIHVhcGkgKFNZTkNfSU9DX0ZJTEVfSU5GTykgDQphY3R1YWxseSByZWxp
ZXMgb24gdGhlIG5hbWVzLiBTeW5jIGZlbmNlIHdhcyBpbiBmYWN0IHRoZSBlYXNpZXN0IHdheSB0
byANCnRyaWdnZXIgdGhlIHVzZSBhZnRlciBmcmVlIGFzIGEgcG9zdGVkIHRoZSBJR1QgdG8gc2hv
dyBpdCBsYXN0IHllYXIuIFNvIA0KdG8gcmVtb3ZlIHdlIHdvdWxkIG5lZWQgdG8gcHJvdmUgbm8g
ZXhpc3RpbmcgdXNlcnNwYWNlIHVzZXMgdGhhdC4NCg0KUmVnYXJkcywNCg0KVHZydGtvDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
