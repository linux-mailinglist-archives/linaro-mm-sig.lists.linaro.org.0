Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A82BBE37A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 06 Oct 2025 15:47:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2225145F5B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Oct 2025 13:47:33 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id 7DF4E44472
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Oct 2025 13:47:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="EKmfa/L9";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3ee15b5435bso2901046f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 Oct 2025 06:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759758435; x=1760363235; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JUjSFz6fN2wSOyWGzwAwR2J1COdGWDGN7frdNiRq5kw=;
        b=EKmfa/L9vR8iq+0x8rHcezGd3vLjGnJ3hs0qeVAGPS2U3a/rhutL/lH6dqMsLaiVZZ
         cyevydcXGpq4eO85NBQ5GNl6fz8HmSC5KLCqg7cpfEsXkgzon/HRU+RFmJBqAkUZ7p6Y
         NB9u8Hp5UMhz5fjJzFzatWZAtXBp66llYKAYykJV/Jzug3lcvye5ugqTu5o485aEyXvO
         gWxTMA9hQ4UEb37LXznV5TrUOaJngiPdaAKvCieIUaLjxEbdwBqWEqXrZgnE0ZjqFHcl
         iwd5EHaH4ENuxU1NSsBwyijJPSlJFUKQjSuYJ+B24yIjgSXsyvpkpPcwcHKGiagFn2Gd
         6bRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759758435; x=1760363235;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JUjSFz6fN2wSOyWGzwAwR2J1COdGWDGN7frdNiRq5kw=;
        b=qGPZaPJOn1NC3kZDT5Fw4nqLPWb5MDmhGc2knLnTb1rpgOqov/exeGGHtsSIBlBmVz
         dRU4rHblDsYR4on+08PkxuSCMOj1jvpktVNRd/6vUGtU3H4wF9U2YfVMsf3oIwgsDcuC
         RtucUdWuP4BsTPnBWuAPDHY8KEn8RMrBy474W6KQtn9ON8RjObqGcVpRMKNgXqjynBKa
         DXMEOxPl51DK/K3jf2CaZtirMhe1bDX4QmW56cgLCeO3HZ5/0NszDgnEOJfenKOpHtVG
         F8XG8I8B6UwQ5shyTlOG7whhktVXnk3gQMKfwPvowQQgvV3WfPvl8T4dnoQmzo/c+PVk
         R/fg==
X-Forwarded-Encrypted: i=1; AJvYcCV2FnaWfElCGfZLWXUnXAyUpqa9l+7Z3B8HpldpjXQZ9V1qr2rmUmhthfkC2u52VkAftlBFWIluzFC1wtIV@lists.linaro.org
X-Gm-Message-State: AOJu0Yx5+NHW+c04IQIQNiPrAOTyqFSnDYnKLwYLqhPIJ7YYTpRBOkmP
	zCY7zeyH0bMVOsty4trhVP1SrO3XDmOHCRwnINkaZI4ZV7tP4VWPvKVu
X-Gm-Gg: ASbGncumSiPa4HIxVLtdfGy29rIBkwBWctmofXsW882EqlEWIhrC1pkL75ss5w3N7I/
	bW2bZTrwviEwK7MTT7Z0N9cg80rzhoIxOvpGUuUzSH67DgSb0KvSF6CgIoxnrgP/GCYT94kxD/y
	fsLm5K/H5lvilHqls/oNBnJf/oR2MNm0Bm8H7vbgmuX4FfnsX27MWABv2Xid0x0TTfRyPQemtji
	VF2v+KfLyLuo3nSbQRU3ZTWsmU4B8IYUd8gwyfwjFg4sncby5x53R8ofgA5A+EBUp/otOj/dcNe
	R/J++Qq+lduzrriinNu0BtEzY2+HFiMWoV5JrkmA55dzmBCD/psPt30ER+Jb/ynyBwNmfZTIyNM
	S9zZvGRapeeavZ4PD3eDRFA/wYSq1Tat3oMKNplnrLQe9waLqsCprSRpFIAe0XNzPCS/BdQ==
X-Google-Smtp-Source: AGHT+IHghnHYTHQMZ74bXvaml49IhX11dZtX5PjRksFkQP9ERbo3nu+xG5MfUzWuLRJts3bUM0z8Ew==
X-Received: by 2002:a05:6000:610:b0:3fe:d6df:c679 with SMTP id ffacd0b85a97d-425671c1c62mr8200162f8f.55.1759758435309;
        Mon, 06 Oct 2025 06:47:15 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:1585:c600:2084:c9fe:598c:ebd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8b0068sm20966125f8f.26.2025.10.06.06.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 06:47:14 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	simona.vetter@ffwll.ch
Date: Mon,  6 Oct 2025 15:47:13 +0200
Message-ID: <20251006134713.1846-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251006134713.1846-1-christian.koenig@amd.com>
References: <20251006134713.1846-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 7DF4E44472
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.45:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mail-wr1-f45.google.com:rdns,mail-wr1-f45.google.com:helo];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2J5N7X5ZESLBO5F6UYA6WBJN5M27BVNK
X-Message-ID-Hash: 2J5N7X5ZESLBO5F6UYA6WBJN5M27BVNK
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/2] dma-buf: improve sg_table debugging hack
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2J5N7X5ZESLBO5F6UYA6WBJN5M27BVNK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW5zdGVhZCBvZiBqdXN0IG1hbmdsaW5nIHRoZSBwYWdlIGxpbmsgY3JlYXRlIGEgY29weSBvZiB0
aGUgc2dfdGFibGUNCmJ1dCBvbmx5IGNvcHkgb3ZlciB0aGUgRE1BIGFkZHJlc3NlcyBhbmQgbm90
IHRoZSBwYWdlcy4NCg0KU3RpbGwgcXVpdGUgYSBoYWNrIGJ1dCB0aGlzIGF0IGxlYXN0IGFsbG93
cyB0aGUgZXhwb3J0ZXIgdG8gcHJvcGVybHkNCmtlZXBzIGl0J3Mgc2dfdGFibGUgaW50YWN0Lg0K
DQpUaGlzIGlzIGltcG9ydGFudCBmb3IgZXhhbXBsZSBmb3IgdGhlIHN5c3RlbSBETUEtaGVhcCB3
aGljaCBuZWVkcyBpdCdzDQpzZ190YWJsZSB0byBzeW5jIENQVSB3cml0ZXMgd2l0aCBkZXZpY2Ug
YWNjZXNzZXMuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA2OCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgNTQg
aW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggMjMwNWJi
MmNjMWYxLi4xZmU1NzgxZDg4NjIgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtODI4LDIxICs4MjgsNTkg
QEAgdm9pZCBkbWFfYnVmX3B1dChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KIH0NCiBFWFBPUlRf
U1lNQk9MX05TX0dQTChkbWFfYnVmX3B1dCwgIkRNQV9CVUYiKTsNCiANCi1zdGF0aWMgdm9pZCBt
YW5nbGVfc2dfdGFibGUoc3RydWN0IHNnX3RhYmxlICpzZ190YWJsZSkNCitzdGF0aWMgaW50IGRt
YV9idWZfbWFuZ2xlX3NnX3RhYmxlKHN0cnVjdCBzZ190YWJsZSAqKnNnX3RhYmxlKQ0KIHsNCi0j
aWZkZWYgQ09ORklHX0RNQUJVRl9ERUJVRw0KLQlpbnQgaTsNCi0Jc3RydWN0IHNjYXR0ZXJsaXN0
ICpzZzsNCi0NCi0JLyogVG8gY2F0Y2ggYWJ1c2Ugb2YgdGhlIHVuZGVybHlpbmcgc3RydWN0IHBh
Z2UgYnkgaW1wb3J0ZXJzIG1peA0KLQkgKiB1cCB0aGUgYml0cywgYnV0IHRha2UgY2FyZSB0byBw
cmVzZXJ2ZSB0aGUgbG93IFNHXyBiaXRzIHRvDQotCSAqIG5vdCBjb3JydXB0IHRoZSBzZ3QuIFRo
ZSBtaXhpbmcgaXMgdW5kb25lIG9uIHVubWFwDQotCSAqIGJlZm9yZSBwYXNzaW5nIHRoZSBzZ3Qg
YmFjayB0byB0aGUgZXhwb3J0ZXIuDQorCXN0cnVjdCBzZ190YWJsZSAqdG8sICpmcm9tID0gKnNn
X3RhYmxlOw0KKwlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnRvX3NnLCAqZnJvbV9zZzsNCisJaW50IGks
IHJldDsNCisNCisJaWYgKCFJU19FTkFCTEVEKENPTkZJR19ETUFCVUZfREVCVUcpKQ0KKwkJcmV0
dXJuIDA7DQorDQorCS8qDQorCSAqIFRvIGNhdGNoIGFidXNlIG9mIHRoZSB1bmRlcmx5aW5nIHN0
cnVjdCBwYWdlIGJ5IGltcG9ydGVycyBjb3B5IHRoZQ0KKwkgKiBzZ190YWJsZSB3aXRob3V0IGNv
cHlpbmcgdGhlIHBhZ2VfbGluayBhbmQgZ2l2ZSBvbmx5IHRoZSBjb3B5IGJhY2sgdG8NCisJICog
dGhlIGltcG9ydGVyLg0KIAkgKi8NCi0JZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ190YWJsZSwgc2cs
IGkpDQotCQlzZy0+cGFnZV9saW5rIF49IH4weGZmVUw7DQotI2VuZGlmDQorCXRvID0ga3phbGxv
YyhzaXplb2YoKnRvKSwgR0ZQX0tFUk5FTCk7DQorCWlmICghdG8pDQorCQlyZXR1cm4gLUVOT01F
TTsNCiANCisJcmV0ID0gc2dfYWxsb2NfdGFibGUodG8sIGZyb20tPm5lbnRzLCBHRlBfS0VSTkVM
KTsNCisJaWYgKHJldCkNCisJCWdvdG8gZnJlZV90bzsNCisNCisJdG9fc2cgPSB0by0+c2dsOw0K
Kwlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9zZyhmcm9tLCBmcm9tX3NnLCBpKSB7DQorCQlzZ19zZXRf
cGFnZSh0b19zZywgTlVMTCwgMCwgMCk7DQorICAgICAgICAgICAgICAgIHNnX2RtYV9hZGRyZXNz
KHRvX3NnKSA9IHNnX2RtYV9hZGRyZXNzKGZyb21fc2cpOw0KKyAgICAgICAgICAgICAgICBzZ19k
bWFfbGVuKHRvX3NnKSA9IHNnX2RtYV9sZW4oZnJvbV9zZyk7DQorCQl0b19zZyA9IHNnX25leHQo
dG9fc2cpOw0KKwl9DQorDQorCS8qDQorCSAqIFN0b3JlIHRoZSBvcmlnaW5hbCBzZ190YWJsZSBp
biB0aGUgZmlyc3QgcGFnZV9saW5rIG9mIHRoZSBjb3B5IHNvDQorCSAqIHRoYXQgd2UgY2FuIHJl
dmVydCBldmVyeXRoaW5nIGJhY2sgYWdhaW4gb24gdW5tYXAuDQorCSAqLw0KKwl0by0+c2dsWzBd
LnBhZ2VfbGluayA9ICh1bnNpZ25lZCBsb25nKWZyb207DQorCSpzZ190YWJsZSA9IHRvOw0KKwly
ZXR1cm4gMDsNCisNCitmcmVlX3RvOg0KKwlrZnJlZSh0byk7DQorCXJldHVybiByZXQ7DQorfQ0K
Kw0KK3N0YXRpYyB2b2lkIGRtYV9idWZfZGVtYW5nbGVfc2dfdGFibGUoc3RydWN0IHNnX3RhYmxl
ICoqc2dfdGFibGUpDQorew0KKwlzdHJ1Y3Qgc2dfdGFibGUgKmNvcHkgPSAqc2dfdGFibGU7DQor
DQorCWlmICghSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX0RFQlVHKSkNCisJCXJldHVybjsNCisN
CisJKnNnX3RhYmxlID0gKHZvaWQgKiljb3B5LT5zZ2xbMF0ucGFnZV9saW5rOw0KKwlzZ19mcmVl
X3RhYmxlKGNvcHkpOw0KKwlrZnJlZShjb3B5KTsNCiB9DQogDQogc3RhdGljIGlubGluZSBib29s
DQpAQCAtMTEzOSw3ICsxMTc3LDkgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRh
Y2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCiAJCWlmIChyZXQgPCAw
KQ0KIAkJCWdvdG8gZXJyb3JfdW5tYXA7DQogCX0NCi0JbWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxl
KTsNCisJcmV0ID0gZG1hX2J1Zl9tYW5nbGVfc2dfdGFibGUoJnNnX3RhYmxlKTsNCisJaWYgKHJl
dCkNCisJCWdvdG8gZXJyb3JfdW5tYXA7DQogDQogCWlmIChJU19FTkFCTEVEKENPTkZJR19ETUFf
QVBJX0RFQlVHKSkgew0KIAkJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsNCkBAIC0xMjIwLDcgKzEy
NjAsNyBAQCB2b2lkIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2gsDQogDQogCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVm
LT5yZXN2KTsNCiANCi0JbWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxlKTsNCisJZG1hX2J1Zl9kZW1h
bmdsZV9zZ190YWJsZSgmc2dfdGFibGUpOw0KIAlhdHRhY2gtPmRtYWJ1Zi0+b3BzLT51bm1hcF9k
bWFfYnVmKGF0dGFjaCwgc2dfdGFibGUsIGRpcmVjdGlvbik7DQogDQogCWlmIChkbWFfYnVmX3Bp
bl9vbl9tYXAoYXR0YWNoKSkNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
