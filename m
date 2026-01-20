Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F06D3D3C666
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 11:58:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24B2C3F914
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 10:58:36 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id C3E0C400F2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 10:57:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=PKzAYl0X;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so49278295e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 02:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768906624; x=1769511424; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XqVToHPilGc3rB1IlznFCmAYG7fAdkPbx5gcjGdkNEw=;
        b=PKzAYl0Xo0mpdeqF4PTz+xZ6lRGqN1yWkBHYNhzgayh4ByO0crBjvnegw8ooUc+4+t
         GAG2TTwwEpKo+KUhDDGQWJPNewktg1zCt7eRXfjWOgLUTbH63HBM4RMc2785f2U6vq31
         LVaxUoqfd3ddTWLPrNQtz0ZJGsSim3THAJBOPM/vKrUuUCJQRRptoB6jjeABTeQj5WpV
         /y9ykT2ze1fmHRaEVEnD7luNynQmKiXUv9l+lkUSW/5No2Y2qusYSklwxiDE1oef0Mom
         6A4cm42/3BEvNDX0mF8A/KsJnHgM497E1Laeb5XlTTKirr6LARE7fO6aVblJRjPdPslt
         h3Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768906624; x=1769511424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XqVToHPilGc3rB1IlznFCmAYG7fAdkPbx5gcjGdkNEw=;
        b=a+LBGFcAUL9VtyMxD6ZE28dBYdBgL4cxUshQn/tm/Nf5Ch94cpApLVoziNR63sNLiX
         DLeoOlKoBnKM7/xJNAUwOEJW2E7nTT29O80PaOKQHlnYUQptvW/NSrRfYnfksrt3TZ1f
         6pX/mVtva7n5ok2lv628hKQiVeHHFOlppoRdz57fPVygiV/1gMDZnezcgjy9/KcJwpMq
         jdGq8sx0kQ+N0Bac+p9TMOpOzUIJRVjwI6nDli0KV9fAzdalSBLMyIsr10badgxPYBVl
         hT2BtFgcSL0PlNicsrO4LRLNUwUZX4pf8jAGfRZkYs6tk/kUmMQxh2cPTGk5PyDN7fWc
         coYw==
X-Forwarded-Encrypted: i=1; AJvYcCWwY8sahvXOM05XBURrtIb5xAlHv67OXzChTURsC4juRSn6kItDvQOClhEuvaXIZ1FJLizoxR339oKabwms@lists.linaro.org
X-Gm-Message-State: AOJu0YxnXCRC4Crhp4ZszLzleV9vN4vDYOQLotqp9Y3OVRu+fGHg75kg
	TPHH/pghaxqVfVdU7wtkO5gmbp+R3RZAXVqp1I+4ucUbgP78qtsIDtAE
X-Gm-Gg: AY/fxX7er+uIcDnXaU1XD4rWuHkFbsLIq3qXYARmUP9Q5c560Kv3xmhdaAhaV+ULdpV
	K9dnQgDd1NG1csn7YKaZoahBj0VSjpc3BhAmCM4wljY7oW3o6EbniVT6JId0ieYiCLnncDGiNet
	TMFk4KoXEGJZrB6pDXVnXHNAd624X2+6O5HEhVC6Wguv2mWCE2OgQBPlIzhABphCc/fEsISqIhA
	EQ3ebdVrTbAti3y1P1bgRTHMH7ENlqAZXg9y4MnXFq4k8xWquY65uqOFe34+3CToNDN+vyTV2D0
	Xp+end4AuLSfBe3T0i6Lt9gN/JQU9ksb5Y3JWWgmjc5W0OddZ7u29Sam5R1LeyoRHPIgSU4p/6m
	HcCQSxdGPljy5gxHpWMmPbFuz9Ra4Fki5kd55oUjdk4PINTMD6ZZicgkBG7dRWvJg1PtROBuwCZ
	l0R6yRWcdIc3SzNDT66PCAe9PE
X-Received: by 2002:a05:600c:4692:b0:47d:3ead:7439 with SMTP id 5b1f17b1804b1-4803f44a19amr13651685e9.37.1768906623487;
        Tue, 20 Jan 2026 02:57:03 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe67780sm99418105e9.16.2026.01.20.02.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:57:03 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 20 Jan 2026 11:54:45 +0100
Message-ID: <20260120105655.7134-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120105655.7134-1-christian.koenig@amd.com>
References: <20260120105655.7134-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: C3E0C400F2
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.128.50:from,2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a:received];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HSIA6SC4PJJN7QKIFTT74VJIIHUBUWPG
X-Message-ID-Hash: HSIA6SC4PJJN7QKIFTT74VJIIHUBUWPG
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/9] dma-buf/selftests: test RCU ops and inline lock v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HSIA6SC4PJJN7QKIFTT74VJIIHUBUWPG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RHJvcCB0aGUgbW9ja19mZW5jZSBhbmQgdGhlIGttZW1fY2FjaGUsIGluc3RlYWQgdXNlIHRoZSBp
bmxpbmUgbG9jayBhbmQNCnRlc3QgaWYgdGhlIG9wcyBhcmUgcHJvcGVybHkgZHJvcHBlZCBhZnRl
ciBzaWduYWxpbmcuDQoNCnYyOiBtb3ZlIHRoZSBSQ1UgY2hlY2sgdG8gdGhlIGVuZCBvZiB0aGUg
dGVzdA0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGln
YWxpYS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgfCA0NCArKysr
KysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L3N0LWRtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQppbmRleCA1
ZDBkOWFiYzZlMjEuLjBkOWQ1MjRkNzliNiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQpAQCAt
MTQsNDMgKzE0LDI2IEBADQogDQogI2luY2x1ZGUgInNlbGZ0ZXN0LmgiDQogDQotc3RhdGljIHN0
cnVjdCBrbWVtX2NhY2hlICpzbGFiX2ZlbmNlczsNCi0NCi1zdGF0aWMgc3RydWN0IG1vY2tfZmVu
Y2Ugew0KLQlzdHJ1Y3QgZG1hX2ZlbmNlIGJhc2U7DQotCXN0cnVjdCBzcGlubG9jayBsb2NrOw0K
LX0gKnRvX21vY2tfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZikgew0KLQlyZXR1cm4gY29udGFp
bmVyX29mKGYsIHN0cnVjdCBtb2NrX2ZlbmNlLCBiYXNlKTsNCi19DQotDQogc3RhdGljIGNvbnN0
IGNoYXIgKm1vY2tfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KIHsNCiAJcmV0dXJuICJtb2Nr
IjsNCiB9DQogDQotc3RhdGljIHZvaWQgbW9ja19mZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVu
Y2UgKmYpDQotew0KLQlrbWVtX2NhY2hlX2ZyZWUoc2xhYl9mZW5jZXMsIHRvX21vY2tfZmVuY2Uo
ZikpOw0KLX0NCi0NCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgbW9ja19vcHMg
PSB7DQogCS5nZXRfZHJpdmVyX25hbWUgPSBtb2NrX25hbWUsDQogCS5nZXRfdGltZWxpbmVfbmFt
ZSA9IG1vY2tfbmFtZSwNCi0JLnJlbGVhc2UgPSBtb2NrX2ZlbmNlX3JlbGVhc2UsDQogfTsNCiAN
CiBzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqbW9ja19mZW5jZSh2b2lkKQ0KIHsNCi0Jc3RydWN0
IG1vY2tfZmVuY2UgKmY7DQorCXN0cnVjdCBkbWFfZmVuY2UgKmY7DQogDQotCWYgPSBrbWVtX2Nh
Y2hlX2FsbG9jKHNsYWJfZmVuY2VzLCBHRlBfS0VSTkVMKTsNCisJZiA9IGttYWxsb2Moc2l6ZW9m
KCpmKSwgR0ZQX0tFUk5FTCk7DQogCWlmICghZikNCiAJCXJldHVybiBOVUxMOw0KIA0KLQlzcGlu
X2xvY2tfaW5pdCgmZi0+bG9jayk7DQotCWRtYV9mZW5jZV9pbml0KCZmLT5iYXNlLCAmbW9ja19v
cHMsICZmLT5sb2NrLCAwLCAwKTsNCi0NCi0JcmV0dXJuICZmLT5iYXNlOw0KKwlkbWFfZmVuY2Vf
aW5pdChmLCAmbW9ja19vcHMsIE5VTEwsIDAsIDApOw0KKwlyZXR1cm4gZjsNCiB9DQogDQogc3Rh
dGljIGludCBzYW5pdHljaGVjayh2b2lkICphcmcpDQpAQCAtMTAwLDYgKzgzLDExIEBAIHN0YXRp
YyBpbnQgdGVzdF9zaWduYWxpbmcodm9pZCAqYXJnKQ0KIAkJZ290byBlcnJfZnJlZTsNCiAJfQ0K
IA0KKwlpZiAocmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmLT5vcHMsIHRydWUpKSB7DQorCQlw
cl9lcnIoIkZlbmNlIG9wcyBub3QgY2xlYXJlZCBvbiBzaWduYWxcbiIpOw0KKwkJZ290byBlcnJf
ZnJlZTsNCisJfQ0KKw0KIAllcnIgPSAwOw0KIGVycl9mcmVlOg0KIAlkbWFfZmVuY2VfcHV0KGYp
Ow0KQEAgLTU0MCwxOSArNTI4LDcgQEAgaW50IGRtYV9mZW5jZSh2b2lkKQ0KIAkJU1VCVEVTVCh0
ZXN0X3N0dWIpLA0KIAkJU1VCVEVTVChyYWNlX3NpZ25hbF9jYWxsYmFjayksDQogCX07DQotCWlu
dCByZXQ7DQogDQogCXByX2luZm8oInNpemVvZihkbWFfZmVuY2UpPSV6dVxuIiwgc2l6ZW9mKHN0
cnVjdCBkbWFfZmVuY2UpKTsNCi0NCi0Jc2xhYl9mZW5jZXMgPSBLTUVNX0NBQ0hFKG1vY2tfZmVu
Y2UsDQotCQkJCSBTTEFCX1RZUEVTQUZFX0JZX1JDVSB8DQotCQkJCSBTTEFCX0hXQ0FDSEVfQUxJ
R04pOw0KLQlpZiAoIXNsYWJfZmVuY2VzKQ0KLQkJcmV0dXJuIC1FTk9NRU07DQotDQotCXJldCA9
IHN1YnRlc3RzKHRlc3RzLCBOVUxMKTsNCi0NCi0Ja21lbV9jYWNoZV9kZXN0cm95KHNsYWJfZmVu
Y2VzKTsNCi0NCi0JcmV0dXJuIHJldDsNCisJcmV0dXJuIHN1YnRlc3RzKHRlc3RzLCBOVUxMKTsN
CiB9DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
