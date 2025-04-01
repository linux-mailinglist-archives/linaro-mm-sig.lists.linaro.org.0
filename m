Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (unknown [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D428A7797D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 13:23:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7E6B46044
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 11:23:27 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by lists.linaro.org (Postfix) with ESMTPS id B61743F66D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 11:18:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=nU89yRse;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-399737f4fa4so2644038f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Apr 2025 04:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743506312; x=1744111112; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MHjLXZJ1cnpvspCUUy5TO+Zanl0UIrIyQt6fEAo5S/E=;
        b=nU89yRseA1/sFr2Z2DlquUKhy5ygg8iebbRX+vaeLxpazzwvjhkq5TW9c1BbdgzRRI
         /fH8cmSURL/OOkvvNehYu/lUccYnsdnWnvsTvXDYBT9lYKreyFV8Jihg05CTXYeQEs+0
         0XQ5zgoQnMyKXbPWa+/Oq5e+WNFKAYGI3imzJrooe/dlQxX3H7fuSDWh4sahfkgV84lJ
         metM8Ur/oUbpXMUWpQ8/8vr+Y725tq9GcS1f86EyQSZDjm2hcBvx8vyi6eZs/jGGmC8E
         JgVe7sQhIBqWSWbhABnFmhfxD4etb0rVv2hHdOacwZymRgBeoT33QpI3HI7XgB7zMEOW
         Z9Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743506312; x=1744111112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MHjLXZJ1cnpvspCUUy5TO+Zanl0UIrIyQt6fEAo5S/E=;
        b=Bm6cMeQXMLc1b+FIGC7+xaTo2nadXdw0N8M8AMjCE+MR2J5wHOIAoSDgjhCjeGMIAA
         Ar8c2DUI6okZABJnJFZytwzXzV4Fjs7XM5iYm4AEt4WDWApFXgzDwwv3AwD9ykOAjesO
         H/3HpJ5nN4O2voWoExx0BEipe6COmZrKNlaXc7BWtTB6VbHxREXtrZ1fMYnzE8Mhqmry
         l1zzFWjpAsJHdE2ukReFGyPsXhGGUnisyhppAeT3oIxYGqx6tutnOm5eTL32higRCFU4
         jUVEkLXyauImCg6bx7R8xxKH0lgBS0sDdpaW5005tWbJUwLm/6RKrncFtuKMLYznrjbn
         mx6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXwsxyrRxNabQ5QI+pSa3NeBurjCDGAMnh1mFaXjPRYUDcgy8MkVQP6X4pxMP60FhRlVY5TQhref0k3mjFu@lists.linaro.org
X-Gm-Message-State: AOJu0Yzu56CVRtiq3fT3Zj3zva8gSjhofKhT4o1tFuTjhBEFhpdeUi+0
	FiWOpP87XVdFuI05pchW2p+4/B92ZHtyvqr0tyKFwKJfrODOB8j7
X-Gm-Gg: ASbGncuMpGXGvrzMumEl9+K9VUnZRh05bHrMNIWfwJduQfAXxxTzNsUol5p6lTt+Dib
	B+SBeR9sqYpZfxxqACr761LeLQ8X5mIISnoF9fk4Vi3wmj+w5w6Sq8OMIiPBN9WpoPk8wf31NSj
	3JVDn1gLSjhpmn0lnI5EO0za+SLMAFeL3NTwibJy7zw2ryVbL8Meio3lDzTus9SX9n9Z7mIE/ic
	7Qf70L3847NrBB4zKcBZcw2rW8vrSzaAwkjgNjyEDu8VycFBm2gEWheNZI/qZeYkEaAefsSVCIT
	4v5v9kEfrW/bEdPaIVyAbJKgz/PLOKE5fnq4MuYOgTh81DWKm+wC1E8jBbNZCtt+lGaVWgxs+A=
	=
X-Google-Smtp-Source: AGHT+IHL7hdDkklKqbVxncDc8exnu0HuxmsEO5AkQ0x0L0l35X0qyjhrepIfjwYO28fP7NDX2ub+LQ==
X-Received: by 2002:a5d:6daf:0:b0:391:4914:3c6a with SMTP id ffacd0b85a97d-39c120e34b1mr7985118f8f.29.1743506311481;
        Tue, 01 Apr 2025 04:18:31 -0700 (PDT)
Received: from [10.254.108.83] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b663470sm13778422f8f.27.2025.04.01.04.18.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 04:18:31 -0700 (PDT)
Message-ID: <593b5915-7148-446a-a240-7f7939025a5f@gmail.com>
Date: Tue, 1 Apr 2025 13:18:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20250331212333.16029-1-robdclark@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20250331212333.16029-1-robdclark@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B61743F66D
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.221.50:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.50:from];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: E6LRE626QT2HATVRFN7HCKUAUPLARB6E
X-Message-ID-Hash: E6LRE626QT2HATVRFN7HCKUAUPLARB6E
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E6LRE626QT2HATVRFN7HCKUAUPLARB6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMzEuMDMuMjUgdW0gMjM6MjMgc2NocmllYiBSb2IgQ2xhcms6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4NCj4gQWRkIHN1cHBvcnQgZm9yIGV4cG9ydGlu
ZyBhIGRtYV9mZW5jZSBmZCBmb3IgYSBzcGVjaWZpYyBwb2ludCBvbiBhDQo+IHRpbWVsaW5lLiAg
VGhpcyBpcyBuZWVkZWQgZm9yIHZ0ZXN0L3ZwaXBlWzFdWzJdIHRvIGltcGxlbWVudCB0aW1lbGlu
ZQ0KPiBzeW5jb2JqIHN1cHBvcnQsIGFzIGl0IG5lZWRzIGEgd2F5IHRvIHR1cm4gYSBwb2ludCBv
biBhIHRpbWVsaW5lIGJhY2sNCj4gaW50byBhIGRtYV9mZW5jZSBmZC4gIEl0IGFsc28gY2xvc2Vz
IGFuIG9kZCBvbWlzc2lvbiBmcm9tIHRoZSBzeW5jb2JqDQo+IFVBUEkuDQo+DQo+IFsxXSBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhLy0vbWVyZ2VfcmVxdWVzdHMvMzM0
MzMNCj4gWzJdIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy92aXJnbC92aXJnbHJlbmRl
cmVyLy0vbWVyZ2VfcmVxdWVzdHMvODA1DQo+DQo+IHYyOiBBZGQgRFJNX1NZTkNPQkpfSEFORExF
X1RPX0ZEX0ZMQUdTX1RJTUVMSU5FDQo+IHYzOiBBZGQgdW5zdGFnZWQgdWFiaSBoZWFkZXIgaHVu
aw0KPiB2NDogQWxzbyBoYW5kbGUgSU1QT1JUX1NZTkNfRklMRSBjYXNlDQo+IHY1OiBBZGRyZXNz
IGNvbW1lbnRzIGZyb20gRG1pdHJ5DQo+DQo+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9i
ZGNsYXJrQGNocm9taXVtLm9yZz4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNv
YmouYyB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ICBpbmNsdWRl
L3VhcGkvZHJtL2RybS5oICAgICAgICB8ICA0ICsrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzkg
aW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX3N5bmNvYmouYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQo+
IGluZGV4IDRmMmFiOGE3YjUwZi4uYjBhNGM1OGZlNzI2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNv
YmouYw0KPiBAQCAtNzQxLDcgKzc0MSw3IEBAIHN0YXRpYyBpbnQgZHJtX3N5bmNvYmpfZmRfdG9f
aGFuZGxlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlLA0KPiAgfQ0KPiAgDQo+ICBzdGF0
aWMgaW50IGRybV9zeW5jb2JqX2ltcG9ydF9zeW5jX2ZpbGVfZmVuY2Uoc3RydWN0IGRybV9maWxl
ICpmaWxlX3ByaXZhdGUsDQo+IC0JCQkJCSAgICAgIGludCBmZCwgaW50IGhhbmRsZSkNCj4gKwkJ
CQkJICAgICAgaW50IGZkLCBpbnQgaGFuZGxlLCB1NjQgcG9pbnQpDQo+ICB7DQo+ICAJc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UgPSBzeW5jX2ZpbGVfZ2V0X2ZlbmNlKGZkKTsNCj4gIAlzdHJ1Y3Qg
ZHJtX3N5bmNvYmogKnN5bmNvYmo7DQo+IEBAIC03NTUsMTQgKzc1NSwyMiBAQCBzdGF0aWMgaW50
IGRybV9zeW5jb2JqX2ltcG9ydF9zeW5jX2ZpbGVfZmVuY2Uoc3RydWN0IGRybV9maWxlICpmaWxl
X3ByaXZhdGUsDQo+ICAJCXJldHVybiAtRU5PRU5UOw0KPiAgCX0NCj4gIA0KPiAtCWRybV9zeW5j
b2JqX3JlcGxhY2VfZmVuY2Uoc3luY29iaiwgZmVuY2UpOw0KPiArCWlmIChwb2ludCkgew0KPiAr
CQlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9IGRtYV9mZW5jZV9jaGFpbl9hbGxvYygp
Ow0KPiArCQlpZiAoIWNoYWluKQ0KPiArCQkJcmV0dXJuIC1FTk9NRU07DQo+ICsJCWRybV9zeW5j
b2JqX2FkZF9wb2ludChzeW5jb2JqLCBjaGFpbiwgZmVuY2UsIHBvaW50KTsNCg0KSnVzdCBhIG5p
dCBwaWNrIGJ1dCBjaGVja3BhdGNoLnBsIHdpbGwgY29tcGxhaW4gYWJvdXQgaXQ6IEVtcHR5IGxp
bmUgYmV0d2VlbiBkZWNsYXJhdGlvbiBhbmQgY29kZSBwbGVhc2UuDQoNCk1heWJlIGRvdWJsZSBj
aGVjayBpZiBjaGVjcGF0Y2gucGwgaXMgb3RoZXJ3aXNlIGhhcHB5IHdpdGggdGhlIHBhdGNoLg0K
DQpXaXRoIHRoYXQgZG9uZSBmZWVsIGZyZWUgdG8gYWRkIFJldmlld2VkLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Lg0KDQpMZXQgbWUga25vdyBpZiBJIHNo
b3VsZCBwdXNoIGl0IHRvIGRybS1taXNjLW5leHQuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoN
Cj4gKwl9IGVsc2Ugew0KPiArCQlkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN5bmNvYmosIGZl
bmNlKTsNCj4gKwl9DQo+ICsNCj4gIAlkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCj4gIAlkcm1fc3lu
Y29ial9wdXQoc3luY29iaik7DQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyBp
bnQgZHJtX3N5bmNvYmpfZXhwb3J0X3N5bmNfZmlsZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJp
dmF0ZSwNCj4gLQkJCQkJaW50IGhhbmRsZSwgaW50ICpwX2ZkKQ0KPiArCQkJCQlpbnQgaGFuZGxl
LCB1NjQgcG9pbnQsIGludCAqcF9mZCkNCj4gIHsNCj4gIAlpbnQgcmV0Ow0KPiAgCXN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlOw0KPiBAQCAtNzcyLDcgKzc4MCw3IEBAIHN0YXRpYyBpbnQgZHJtX3N5
bmNvYmpfZXhwb3J0X3N5bmNfZmlsZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCj4g
IAlpZiAoZmQgPCAwKQ0KPiAgCQlyZXR1cm4gZmQ7DQo+ICANCj4gLQlyZXQgPSBkcm1fc3luY29i
al9maW5kX2ZlbmNlKGZpbGVfcHJpdmF0ZSwgaGFuZGxlLCAwLCAwLCAmZmVuY2UpOw0KPiArCXJl
dCA9IGRybV9zeW5jb2JqX2ZpbmRfZmVuY2UoZmlsZV9wcml2YXRlLCBoYW5kbGUsIHBvaW50LCAw
LCAmZmVuY2UpOw0KPiAgCWlmIChyZXQpDQo+ICAJCWdvdG8gZXJyX3B1dF9mZDsNCj4gIA0KPiBA
QCAtODY5LDYgKzg3Nyw5IEBAIGRybV9zeW5jb2JqX2hhbmRsZV90b19mZF9pb2N0bChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiAgCQkJCSAgIHN0cnVjdCBkcm1fZmlsZSAq
ZmlsZV9wcml2YXRlKQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1fc3luY29ial9oYW5kbGUgKmFyZ3Mg
PSBkYXRhOw0KPiArCXVuc2lnbmVkIHZhbGlkX2ZsYWdzID0gRFJNX1NZTkNPQkpfSEFORExFX1RP
X0ZEX0ZMQUdTX1RJTUVMSU5FIHwNCj4gKwkJCSAgICAgICBEUk1fU1lOQ09CSl9IQU5ETEVfVE9f
RkRfRkxBR1NfRVhQT1JUX1NZTkNfRklMRTsNCj4gKwl1NjQgcG9pbnQgPSAwOw0KPiAgDQo+ICAJ
aWYgKCFkcm1fY29yZV9jaGVja19mZWF0dXJlKGRldiwgRFJJVkVSX1NZTkNPQkopKQ0KPiAgCQly
ZXR1cm4gLUVPUE5PVFNVUFA7DQo+IEBAIC04NzYsMTMgKzg4NywxOCBAQCBkcm1fc3luY29ial9o
YW5kbGVfdG9fZmRfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCj4g
IAlpZiAoYXJncy0+cGFkKQ0KPiAgCQlyZXR1cm4gLUVJTlZBTDsNCj4gIA0KPiAtCWlmIChhcmdz
LT5mbGFncyAhPSAwICYmDQo+IC0JICAgIGFyZ3MtPmZsYWdzICE9IERSTV9TWU5DT0JKX0hBTkRM
RV9UT19GRF9GTEFHU19FWFBPUlRfU1lOQ19GSUxFKQ0KPiArCWlmIChhcmdzLT5mbGFncyAmIH52
YWxpZF9mbGFncykNCj4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+ICANCj4gKwlpZiAoYXJncy0+Zmxh
Z3MgJiBEUk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUpDQo+ICsJCXBvaW50
ID0gYXJncy0+cG9pbnQ7DQo+ICsNCj4gIAlpZiAoYXJncy0+ZmxhZ3MgJiBEUk1fU1lOQ09CSl9I
QU5ETEVfVE9fRkRfRkxBR1NfRVhQT1JUX1NZTkNfRklMRSkNCj4gIAkJcmV0dXJuIGRybV9zeW5j
b2JqX2V4cG9ydF9zeW5jX2ZpbGUoZmlsZV9wcml2YXRlLCBhcmdzLT5oYW5kbGUsDQo+IC0JCQkJ
CQkgICAgJmFyZ3MtPmZkKTsNCj4gKwkJCQkJCSAgICBwb2ludCwgJmFyZ3MtPmZkKTsNCj4gKw0K
PiArCWlmIChhcmdzLT5wb2ludCkNCj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ICANCj4gIAlyZXR1
cm4gZHJtX3N5bmNvYmpfaGFuZGxlX3RvX2ZkKGZpbGVfcHJpdmF0ZSwgYXJncy0+aGFuZGxlLA0K
PiAgCQkJCQkmYXJncy0+ZmQpOw0KPiBAQCAtODkzLDYgKzkwOSw5IEBAIGRybV9zeW5jb2JqX2Zk
X3RvX2hhbmRsZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiAg
CQkJCSAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlKQ0KPiAgew0KPiAgCXN0cnVjdCBk
cm1fc3luY29ial9oYW5kbGUgKmFyZ3MgPSBkYXRhOw0KPiArCXVuc2lnbmVkIHZhbGlkX2ZsYWdz
ID0gRFJNX1NZTkNPQkpfRkRfVE9fSEFORExFX0ZMQUdTX1RJTUVMSU5FIHwNCj4gKwkJCSAgICAg
ICBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxBR1NfSU1QT1JUX1NZTkNfRklMRTsNCj4gKwl1
NjQgcG9pbnQgPSAwOw0KPiAgDQo+ICAJaWYgKCFkcm1fY29yZV9jaGVja19mZWF0dXJlKGRldiwg
RFJJVkVSX1NZTkNPQkopKQ0KPiAgCQlyZXR1cm4gLUVPUE5PVFNVUFA7DQo+IEBAIC05MDAsMTQg
KzkxOSwyMCBAQCBkcm1fc3luY29ial9mZF90b19oYW5kbGVfaW9jdGwoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgdm9pZCAqZGF0YSwNCj4gIAlpZiAoYXJncy0+cGFkKQ0KPiAgCQlyZXR1cm4gLUVJ
TlZBTDsNCj4gIA0KPiAtCWlmIChhcmdzLT5mbGFncyAhPSAwICYmDQo+IC0JICAgIGFyZ3MtPmZs
YWdzICE9IERSTV9TWU5DT0JKX0ZEX1RPX0hBTkRMRV9GTEFHU19JTVBPUlRfU1lOQ19GSUxFKQ0K
PiArCWlmIChhcmdzLT5mbGFncyAmIH52YWxpZF9mbGFncykNCj4gIAkJcmV0dXJuIC1FSU5WQUw7
DQo+ICANCj4gKwlpZiAoYXJncy0+ZmxhZ3MgJiBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxB
R1NfVElNRUxJTkUpDQo+ICsJCXBvaW50ID0gYXJncy0+cG9pbnQ7DQo+ICsNCj4gIAlpZiAoYXJn
cy0+ZmxhZ3MgJiBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxBR1NfSU1QT1JUX1NZTkNfRklM
RSkNCj4gIAkJcmV0dXJuIGRybV9zeW5jb2JqX2ltcG9ydF9zeW5jX2ZpbGVfZmVuY2UoZmlsZV9w
cml2YXRlLA0KPiAgCQkJCQkJCSAgYXJncy0+ZmQsDQo+IC0JCQkJCQkJICBhcmdzLT5oYW5kbGUp
Ow0KPiArCQkJCQkJCSAgYXJncy0+aGFuZGxlLA0KPiArCQkJCQkJCSAgcG9pbnQpOw0KPiArDQo+
ICsJaWYgKGFyZ3MtPnBvaW50KQ0KPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gIA0KPiAgCXJldHVy
biBkcm1fc3luY29ial9mZF90b19oYW5kbGUoZmlsZV9wcml2YXRlLCBhcmdzLT5mZCwNCj4gIAkJ
CQkJJmFyZ3MtPmhhbmRsZSk7DQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2RybS5o
IGIvaW5jbHVkZS91YXBpL2RybS9kcm0uaA0KPiBpbmRleCA3ZmJhMzdiOTQ0MDEuLmU2M2E3MWQz
YzYwNyAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS91YXBpL2RybS9kcm0uaA0KPiArKysgYi9pbmNs
dWRlL3VhcGkvZHJtL2RybS5oDQo+IEBAIC05MDUsMTMgKzkwNSwxNyBAQCBzdHJ1Y3QgZHJtX3N5
bmNvYmpfZGVzdHJveSB7DQo+ICB9Ow0KPiAgDQo+ICAjZGVmaW5lIERSTV9TWU5DT0JKX0ZEX1RP
X0hBTkRMRV9GTEFHU19JTVBPUlRfU1lOQ19GSUxFICgxIDw8IDApDQo+ICsjZGVmaW5lIERSTV9T
WU5DT0JKX0ZEX1RPX0hBTkRMRV9GTEFHU19USU1FTElORSAgICAgICAgICgxIDw8IDEpDQo+ICAj
ZGVmaW5lIERSTV9TWU5DT0JKX0hBTkRMRV9UT19GRF9GTEFHU19FWFBPUlRfU1lOQ19GSUxFICgx
IDw8IDApDQo+ICsjZGVmaW5lIERSTV9TWU5DT0JKX0hBTkRMRV9UT19GRF9GTEFHU19USU1FTElO
RSAgICAgICAgICgxIDw8IDEpDQo+ICBzdHJ1Y3QgZHJtX3N5bmNvYmpfaGFuZGxlIHsNCj4gIAlf
X3UzMiBoYW5kbGU7DQo+ICAJX191MzIgZmxhZ3M7DQo+ICANCj4gIAlfX3MzMiBmZDsNCj4gIAlf
X3UzMiBwYWQ7DQo+ICsNCj4gKwlfX3U2NCBwb2ludDsNCj4gIH07DQo+ICANCj4gIHN0cnVjdCBk
cm1fc3luY29ial90cmFuc2ZlciB7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
