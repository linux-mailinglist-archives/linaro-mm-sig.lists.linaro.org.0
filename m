Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCvCICf+4GnzoAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:20:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AAC410884
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:20:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 310C8404F4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:20:06 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id E0DE33F777
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 16:03:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=bB4Ivx3E;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.128.47 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47796a837c7so21933445e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 08:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1763481831; x=1764086631; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NPy7MtRGfLlvM770xBVrc8IbPL912/1L/AULTvqcMyg=;
        b=bB4Ivx3EhtN6ddjk6g/ozXZon7mArvrbfLB4jRuhy9FUZjCPng61pB1sMx/s7hL57G
         hCaCEzWLB3gtm5dlox+odKwVvPdfV09Nuj+GlwrGod6WJKS3DnRq5bw/Yf4pUQN/JQGe
         l73ZObJNDwUhpX+WlSfsltVSXj21gOR0rUC7sMjZARnCpT7BJx2aRVA7cEXkgikFrhsB
         q9KJ+K//ugeLn37as0foqsyUy8A+BOAEHMllj/sEr0byh/VrUPh6vnDuQVy70u7AIWYD
         PKnEFzsp87fefdI3uGj+Upf6Pkf2ZamYuiVLKoe+uRoZaW45aFK7HeOqqUB03XEcPkYN
         nysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763481831; x=1764086631;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NPy7MtRGfLlvM770xBVrc8IbPL912/1L/AULTvqcMyg=;
        b=m6whT418inb+34B4v5yKVZNoKOMm8DHVZa9kXfBDawP8ut0zZ/eCOtcFkt0IOGuzrX
         V/KINH6KXygzr5PN8/L/e45BQ82/h9IDNOFzgzZN2DfdOWOB7+/lf7UdueLn9L+zI19p
         9WLvh/5tiWXNjheh952vlY+x/O+t8JcgPz6YBlfj5kYJXkGdHTtsh/e/Jux4gf4MbbWI
         sz+u4gUZYviFzsdbvoZFdTRujcdoalPhKfohW0vZbXPyFx2Dx/vLtndeMalXgKF586a1
         PQLXKuAphIBSYwmKng6aWf738okoIxEQ3Dk+uhtW/7C3fPTriOXCRXEvJgIUPOS2yS6c
         8goQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyKSfV5s/1wKmSqqlxjGdOURGLvOtmbVW4PwGKfz7rsYGLJSF1OAydFW9cjRypdoDbBBmsgLVlt70mZ4vO@lists.linaro.org
X-Gm-Message-State: AOJu0Yx4sbY5TrDx9mREjOBN5FDuLY0+vjWhwlLEhZjbMx54eqx1Zqys
	m44/RF3/gv8lRU9HzC10OGcdO89u37InlZ714lQPf+7g4Q3SoUoD2b0HWM5z6a2Rr/8=
X-Gm-Gg: ASbGnctD8M9LpCqdw5h58I1RWwQUUc8yJwSLHztF4PVJIufA91dl4qKbDrsO+UUOjHr
	dqUH2aBUMBncnvNrGq2vDTXJfJhJh4sl4niIbDJ31FFabnd6j95QEkx0tec8jpdtiLt7MVMBIVW
	UNc7OkGhlCl7mfdoPBefnr6kHbz3I2mci+uUNA4E3bBDPQvyGjnYX8aYQAjC6ZuDKkomIEjQdNF
	zz76jBeBjm7YSj8wrTkZz8KBGD96rA42zWpdj1YejP/7l/bxR6Ridd3L3uR35qtI23gcAgdrmQr
	R56LoAxSzOXwtWz8TnTW8iHekYklhXZyQ/j+PKxcfhjw0A88//LLeojAKFACkRtv/IvdwzXH36e
	WUH9pRgMppSqrbX4Aczsffq4usyRxwSJ/T393fBvhOF9FlwZR3vZpt7VqGaWzXZO+bkg9E1Otqq
	6oie/iRWsn7L/iPEYkseyS1fbSHFeiA6ZB
X-Google-Smtp-Source: AGHT+IGysRbMzbECL6E+MizQEQGrtqhmQyxOI0y7D4OkZygIod9v97e1L6AKbj5saKClh+dNolGEFw==
X-Received: by 2002:a05:600c:4695:b0:477:63b4:ef7a with SMTP id 5b1f17b1804b1-4778feaa8a1mr139503735e9.20.1763481830363;
        Tue, 18 Nov 2025 08:03:50 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a973390csm20979025e9.4.2025.11.18.08.03.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 08:03:49 -0800 (PST)
Message-ID: <ed7595b4-b6e4-4a7f-ad35-e3a3cf063e72@ursulin.net>
Date: Tue, 18 Nov 2025 16:03:48 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 phasta@mailbox.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-3-christian.koenig@amd.com>
 <ef0f9459-6733-4e0a-9c06-c36c02e5a93c@ursulin.net>
 <35d7ab6c-bd4d-4267-8ae1-2637d6c0f1ff@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <35d7ab6c-bd4d-4267-8ae1-2637d6c0f1ff@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UM7VIFEIBYPODM7TDS4BV57RJ36CV6XV
X-Message-ID-Hash: UM7VIFEIBYPODM7TDS4BV57RJ36CV6XV
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:16 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/18] dma-buf: protected fence ops by RCU v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UM7VIFEIBYPODM7TDS4BV57RJ36CV6XV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3575];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ursulin.net];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,mailbox.org,gmail.com,ffwll.ch,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.590];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,ursulin.net:mid]
X-Rspamd-Queue-Id: 27AAC410884
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxOC8xMS8yMDI1IDE0OjI4LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxMS8x
NC8yNSAxMTo1MCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+Pj4gQEAgLTU2OSwxMiArNTc3LDEy
IEBAIHZvaWQgZG1hX2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGtyZWYgKmtyZWYpDQo+Pj4gIMKgwqDC
oMKgwqDCoMKgwqDCoCBzcGluX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLT5sb2NrLCBmbGFncyk7
DQo+Pj4gIMKgwqDCoMKgwqAgfQ0KPj4+ICDCoCAtwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOw0K
Pj4+IC0NCj4+PiAtwqDCoMKgIGlmIChmZW5jZS0+b3BzLT5yZWxlYXNlKQ0KPj4+IC3CoMKgwqDC
oMKgwqDCoCBmZW5jZS0+b3BzLT5yZWxlYXNlKGZlbmNlKTsNCj4+PiArwqDCoMKgIG9wcyA9IHJj
dV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4+PiArwqDCoMKgIGlmIChvcHMtPnJlbGVhc2Up
DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIG9wcy0+cmVsZWFzZShmZW5jZSk7DQo+Pj4gIMKgwqDCoMKg
wqAgZWxzZQ0KPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX2ZyZWUoZmVuY2UpOw0K
Pj4+ICvCoMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7DQo+Pg0KPj4gUmlzayBiZWluZyBhIHNwaW4g
bG9jayBpbiB0aGUgcmVsZWFzZSBjYWxsYmFjayB3aWxsIHRyaWdnZXIgYSB3YXJuaW5nIG9uIFBS
RUVNUFRfUlQuIEJ1dCBhdCBsZWFzdCB0aGUgY3VycmVudCBjb2RlIGJhc2UgZG9lcyBub3QgaGF2
ZSBhbnl0aGluZyBsaWtlIHRoYXQgQUZBSUNTIHNvIEkgZ3Vlc3MgaXQgaXMgb2theS4NCj4gDQo+
IEkgZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIGlzIGEgcHJvYmxlbS4gV2hlbiBQUkVFTVBUX1JUIGlz
IGVuYWJsZWQgYm90aCBSQ1UgYW5kIHNwaW5sb2NrcyBiZWNvbWUgcHJlZW1wdGlibGUuDQo+IA0K
PiBTbyBhcyBmYXIgYXMgSSBrbm93IGl0IGlzIHBlcmZlY3RseSB2YWxpZCB0byBncmFiIGEgc3Bp
bmxvY2sgdW5kZXIgYW4gcmN1IHJlYWQgc2lkZSBjcml0aWNhbCBzZWN0aW9uLg0KDQpMb29raW5n
IGF0IHRoZSBzb3VyY2UganVzdCBub3csIEkgdGhpbmsgaXQgaXMgcG9zc2libGUgSSBtaXhlZCBp
dCB1cCANCndpdGggcHJlZW1wdF9kaXNhYmxlKCkrc3Bpbl9sb2NrKCkuDQo+Pj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5o
DQo+Pj4gaW5kZXggNjQ2MzllMTA0MTEwLi43N2YwNzczNWY1NTYgMTAwNjQ0DQo+Pj4gLS0tIGEv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmgNCj4+PiBAQCAtNjYsNyArNjYsNyBAQCBzdHJ1Y3Qgc2VxX2ZpbGU7DQo+Pj4gIMKgwqAg
Ki8NCj4+PiAgwqAgc3RydWN0IGRtYV9mZW5jZSB7DQo+Pj4gIMKgwqDCoMKgwqAgc3BpbmxvY2tf
dCAqbG9jazsNCj4+PiAtwqDCoMKgIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHM7DQo+
Pj4gK8KgwqDCoCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBfX3JjdSAqb3BzOw0KPj4+ICDC
oMKgwqDCoMKgIC8qDQo+Pj4gIMKgwqDCoMKgwqDCoCAqIFdlIGNsZWFyIHRoZSBjYWxsYmFjayBs
aXN0IG9uIGtyZWZfcHV0IHNvIHRoYXQgYnkgdGhlIHRpbWUgd2UNCj4+PiAgwqDCoMKgwqDCoMKg
ICogcmVsZWFzZSB0aGUgZmVuY2UgaXQgaXMgdW51c2VkLiBObyBvbmUgc2hvdWxkIGJlIGFkZGlu
ZyB0byB0aGUNCj4+PiBAQCAtMjE4LDYgKzIxOCwxMCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB7
DQo+Pj4gIMKgwqDCoMKgwqDCoCAqIHRpbWVkIG91dC4gQ2FuIGFsc28gcmV0dXJuIG90aGVyIGVy
cm9yIHZhbHVlcyBvbiBjdXN0b20gaW1wbGVtZW50YXRpb25zLA0KPj4+ICDCoMKgwqDCoMKgwqAg
KiB3aGljaCBzaG91bGQgYmUgdHJlYXRlZCBhcyBpZiB0aGUgZmVuY2UgaXMgc2lnbmFsZWQuIEZv
ciBleGFtcGxlIGEgaGFyZHdhcmUNCj4+PiAgwqDCoMKgwqDCoMKgICogbG9ja3VwIGNvdWxkIGJl
IHJlcG9ydGVkIGxpa2UgdGhhdC4NCj4+PiArwqDCoMKgwqAgKg0KPj4+ICvCoMKgwqDCoCAqIElt
cGxlbWVudGluZyB0aGlzIGNhbGxiYWNrIHByZXZlbnRzIHRoZSBCTyBmcm9tIGRldGFjaGluZyBh
ZnRlcg0KPj4NCj4+IHMvQk8vZmVuY2UvDQo+Pg0KPj4+ICvCoMKgwqDCoCAqIHNpZ25hbGluZyBh
bmQgc28gaXQgaXMgbWFuZGF0b3J5IGZvciB0aGUgbW9kdWxlIHByb3ZpZGluZyB0aGUNCj4+PiAr
wqDCoMKgwqAgKiBkbWFfZmVuY2Vfb3BzIHRvIHN0YXkgbG9hZGVkIGFzIGxvbmcgYXMgdGhlIGRt
YV9mZW5jZSBleGlzdHMuDQo+Pj4gIMKgwqDCoMKgwqDCoCAqLw0KPj4+ICDCoMKgwqDCoMKgIHNp
Z25lZCBsb25nICgqd2FpdCkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+Pj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBpbnRyLCBzaWduZWQgbG9uZyB0aW1lb3V0
KTsNCj4+PiBAQCAtMjI5LDYgKzIzMywxMyBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB7DQo+Pj4g
IMKgwqDCoMKgwqDCoCAqIENhbiBiZSBjYWxsZWQgZnJvbSBpcnEgY29udGV4dC7CoCBUaGlzIGNh
bGxiYWNrIGlzIG9wdGlvbmFsLiBJZiBpdCBpcw0KPj4+ICDCoMKgwqDCoMKgwqAgKiBOVUxMLCB0
aGVuIGRtYV9mZW5jZV9mcmVlKCkgaXMgaW5zdGVhZCBjYWxsZWQgYXMgdGhlIGRlZmF1bHQNCj4+
PiAgwqDCoMKgwqDCoMKgICogaW1wbGVtZW50YXRpb24uDQo+Pj4gK8KgwqDCoMKgICoNCj4+PiAr
wqDCoMKgwqAgKiBJbXBsZW1lbnRpbmcgdGhpcyBjYWxsYmFjayBwcmV2ZW50cyB0aGUgQk8gZnJv
bSBkZXRhY2hpbmcgYWZ0ZXINCj4+DQo+PiBEaXR0by4NCj4gDQo+IEJvdGggZml4ZWQsIHRoYW5r
cy4NCj4gDQo+Pg0KPj4+ICvCoMKgwqDCoCAqIHNpZ25hbGluZyBhbmQgc28gaXQgaXMgbWFuZGF0
b3J5IGZvciB0aGUgbW9kdWxlIHByb3ZpZGluZyB0aGUNCj4+PiArwqDCoMKgwqAgKiBkbWFfZmVu
Y2Vfb3BzIHRvIHN0YXkgbG9hZGVkIGFzIGxvbmcgYXMgdGhlIGRtYV9mZW5jZSBleGlzdHMuDQo+
Pj4gK8KgwqDCoMKgICoNCj4+PiArwqDCoMKgwqAgKiBJZiB0aGUgY2FsbGJhY2sgaXMgaW1wbGVt
ZW50ZWQgdGhlIG1lbW9yeSBiYWNraW5nIHRoZSBkbWFfZmVuY2UNCj4+PiArwqDCoMKgwqAgKiBv
YmplY3QgbXVzdCBiZSBmcmVlZCBSQ1Ugc2FmZS4NCj4+PiAgwqDCoMKgwqDCoMKgICovDQo+Pj4g
IMKgwqDCoMKgwqAgdm9pZCAoKnJlbGVhc2UpKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsNCj4+
PiAgwqAgQEAgLTQxOCwxMyArNDI5LDE5IEBAIGNvbnN0IGNoYXIgX19yY3UgKmRtYV9mZW5jZV90
aW1lbGluZV9uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsNCj4+PiAgwqAgc3RhdGljIGlu
bGluZSBib29sDQo+Pj4gIMKgIGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UpDQo+Pj4gIMKgIHsNCj4+PiArwqDCoMKgIGNvbnN0IHN0cnVjdCBkbWFf
ZmVuY2Vfb3BzICpvcHM7DQo+Pj4gKw0KPj4+ICDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChETUFf
RkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIHRydWU7DQo+Pj4gIMKgIC3CoMKgwqAgaWYgKGZlbmNlLT5vcHMtPnNp
Z25hbGVkICYmIGZlbmNlLT5vcHMtPnNpZ25hbGVkKGZlbmNlKSkgew0KPj4+ICvCoMKgwqAgcmN1
X3JlYWRfbG9jaygpOw0KPj4+ICvCoMKgwqAgb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5v
cHMpOw0KPj4+ICvCoMKgwqAgaWYgKG9wcy0+c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5j
ZSkpIHsNCj4+PiArwqDCoMKgwqDCoMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7DQo+Pj4gIMKgwqDC
oMKgwqDCoMKgwqDCoCBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChmZW5jZSk7DQo+Pj4gIMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gdHJ1ZTsNCj4+PiAgwqDCoMKgwqDCoCB9DQo+Pj4gK8KgwqDC
oCByY3VfcmVhZF91bmxvY2soKTsNCj4+PiAgwqAgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7DQo+
Pj4gIMKgIH0NCj4+PiBAQCAtNDQ4LDEzICs0NjUsMTkgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVk
X2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+PiAgwqAgc3RhdGljIGlubGluZSBi
b29sDQo+Pj4gIMKgIGRtYV9mZW5jZV9pc19zaWduYWxlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSkNCj4+PiAgwqAgew0KPj4+ICvCoMKgwqAgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9w
czsNCj4+PiArDQo+Pj4gIMKgwqDCoMKgwqAgaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJ
R05BTEVEX0JJVCwgJmZlbmNlLT5mbGFncykpDQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm4gdHJ1ZTsNCj4+PiAgwqAgLcKgwqDCoCBpZiAoZmVuY2UtPm9wcy0+c2lnbmFsZWQgJiYgZmVu
Y2UtPm9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQo+Pj4gK8KgwqDCoCByY3VfcmVhZF9sb2NrKCk7
DQo+Pj4gK8KgwqDCoCBvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQo+Pj4gK8Kg
wqDCoCBpZiAob3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNlKSkgew0KPj4+ICvC
oMKgwqDCoMKgwqDCoCByY3VfcmVhZF91bmxvY2soKTsNCj4+DQo+PiBXaXRoIHRoZSB1bmxvY2tl
ZCB2ZXJzaW9uIHR3byB0aHJlYWRzIGNvdWxkIHJhY2UgYW5kIG9uZSBjb3VsZCBtYWtlIHRoZSBm
ZW5jZS0+bG9jayBnbyBhd2F5IGp1c3QgYXJvdW5kIGhlcmUsIGJlZm9yZSB0aGUgZG1hX2ZlbmNl
X3NpZ25hbCBiZWxvdyB3aWxsIHRha2UgaXQuIEl0IHNlZW1zIGl0IGlzIG9ubHkgc2FmZSB0byBy
Y3VfcmVhZF91bmxvY2sgYmVmb3JlIHNpZ25hbGluZyBpZiB1c2luZyB0aGUgZW1iZWRkZWQgZmVu
Y2UgKGxhdGVyIGluIHRoZSBzZXJpZXMpLiBDYW4geW91IHRoaW5rIG9mIGEgZG93bnNpZGUgdG8g
aG9sZGluZyB0aGUgcmN1IHJlYWQgbG9jayB0byBhZnRlciBzaWduYWxpbmc/IHRoYXQgd291bGQg
bWFrZSBpdCBzYWZlIEkgdGhpbmsuDQo+IA0KPiBXZWxsIGl0J3MgZ29vZCB0byB0YWxrIGFib3V0
IGl0IGJ1dCBJIHRoaW5rIHRoYXQgaXQgaXMgbm90IG5lY2Vzc2FyeSB0byBwcm90ZWN0IHRoZSBs
b2NrIGluIHRoaXMgcGFydGljdWxhciBjYXNlLg0KPiANCj4gU2VlIHRoZSBSQ1UgcHJvdGVjdGlv
biBpcyBvbmx5IGZvciB0aGUgZmVuY2UtPm9wcyBwb2ludGVyLCBidXQgdGhlIGxvY2sgY2FuIGJl
IHRha2VuIHdheSBhZnRlciB0aGUgZmVuY2UgaXMgYWxyZWFkeSBzaWduYWxlZC4NCj4gDQo+IFRo
YXQncyB3aHkgSSBjYW1lIHVwIHdpdGggdGhlIHBhdGNoIHRvIG1vdmUgdGhlIGxvY2sgaW50byB0
aGUgZmVuY2UgaW4gdGhlIGZpcnN0IHBsYWNlLg0KDQpSaWdodC4gQW5kIHlvdSB0aGluayB0aGVy
ZSBpcyBub3RoaW5nIHRvIGdhaW4gd2l0aCB0aGUgb3B0aW9uIG9mIGtlZXBpbmcgDQp0aGUgcmN1
X3JlYWRfdW5sb2NrKCkgdG8gYWZ0ZXIgc2lnbmFsbGluZz8gSWUuIHdoeSBub3QgcGx1ZyBhIHBv
dGVudGlhbCANCnJhY2UgaWYgd2UgY2FuIGZvciBubyBuZWdhdGl2ZSBlZmZlY3QuDQoNClJlZ2Fy
ZHMsDQoNClR2cnRrbw0KDQo+PiBSZWdhcmRzLA0KPj4NCj4+IFR2cnRrbw0KPj4NCj4+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9zaWduYWwoZmVuY2UpOw0KPj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIHRydWU7DQo+Pj4gIMKgwqDCoMKgwqAgfQ0KPj4+ICvCoMKgwqAgcmN1
X3JlYWRfdW5sb2NrKCk7DQo+Pj4gIMKgIMKgwqDCoMKgwqAgcmV0dXJuIGZhbHNlOw0KPj4+ICDC
oCB9DQo+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
