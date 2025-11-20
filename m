Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F22CC74B75
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 16:01:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A0F83F9B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 15:01:32 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 9D4833F952
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 15:00:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ewwu3WnH;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6418b55f86dso1712942a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 07:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763650824; x=1764255624; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fn4zDi1+fVw5LF2kCVwHRZ0dDV9P2PJVWlKNVfHgNls=;
        b=ewwu3WnHk6fO2C2tAo0wY7ddiFWAFdE/5HcM+a7wu2D9qcsxnkfdOqy+QaqIUnYCNL
         1j4D0VA4/oKm67YcqSD/RDW7qEIBISnZKf6HRafSbmFePa8Jxmf3BTQ3Wa4IW2eA+NJD
         D0i8ffgpklWKOh3HrQabI89fN0kwyyUZc/SJwAWR1L03kwtSbX5ZFFnmKmxvebkx53Vr
         3sDl8UtHJn87SJ+84bmSpFw2zr7hhxeKORIrtTc+mFDLYr3Ounx+3v4Iz1FIQcUazdqP
         Y2eMAPaDZ4A1Ct2CUJWDqGAsVbYUXngcjcR1RLV8p+PBVJpvPoHN/pZYV0CS3JCvhntW
         iorA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763650824; x=1764255624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Fn4zDi1+fVw5LF2kCVwHRZ0dDV9P2PJVWlKNVfHgNls=;
        b=iqaWD6uJbwNVy1SaqJ7IOSfoHffWrtKLnO2cZz9V+U0pcqn7H47FP0HhkeFV0a8rf3
         HEw7m6TnBjKvAiJZ15PmTdfL3+A7Ey9olHP5e8b7M1vSclieiiPxNFvzv3A94g75bYR7
         at9IWo1XH9djnYgPWFWRl8jkJcj/ge1/pgMOHj4iV2ctjdMX1bkFPZhkXIgy4f85HRSe
         NFndBoEPpkmkCgcKo/GNnzfIfPmumsBOK9m8zv4/TRvWdcfLVuEKK6F9GuZkmbXulDrN
         mkRwPT1ukA+u9MiAmIHC55F9Q278m9emLk6+3i+jZZyiT/bvmzdh2RGyr4TgLhJelua7
         QBZA==
X-Gm-Message-State: AOJu0YwBqJssqU39wWGQv1WaWPKGETt+XCGup+iQ75mfui7Pje02D9eB
	wIdBP+Giy3g+tPvfyYf30GcKc3gPOOA/+QkdrEPELB0Ealdy6fHJXXG8
X-Gm-Gg: ASbGncuouqdVVAwKueI/bNeA0sFrfGGzx8LSiitDNpntzu8WA6lcbPL/mbHLst93i/X
	DIGAnAKbysnsZYVxde0RF6zmRirx5A8o+cmn3MqWnfhws0gA/unhDK2tLjyoLzDFxD0qVxR5wLQ
	T/Gqnn46QweQh1FGsT0YLPb9B+IvjqHaQM6p3M6nTRbdCSFsxcJpPF4hsI6iBgut4FDAUgVq+AO
	KRiPq0HS4dk4q52PfAO1c4tal06LDymXPQUbgRk9V2YtH18guCUuVOD/78ma3QjUDpxF6zAEx9e
	2yPTIbDyRq2Nv3OnU/bD+6uQBU0MAMNOhgTdXugWqpVfuHAE1NHrcB6qHzv4Oax+zJ70v+qKNcE
	pqZU//329TS02QeUrSB2j+c1nUOYi4vN71rLAry63RnfLJhLnO6Sm6tGo9e6E6HpSa7RdLUEqRi
	SMjmpdIvvaShJb1tvy3fSfp+Gb
X-Google-Smtp-Source: AGHT+IHEa9jeRDndfJYJmlCbMv7bvXqUgvUVm8f5HPtphgMQ7NFdUo4LDlVADG2NiQoXZEPcdmxqDQ==
X-Received: by 2002:a17:907:9812:b0:b6d:5b4d:7277 with SMTP id a640c23a62f3a-b76550b65a3mr357219366b.0.1763650824178;
        Thu, 20 Nov 2025 07:00:24 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:154c:c900:7aba:c4b7:a402:3cd2])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453645f2easm2205878a12.33.2025.11.20.07.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:00:23 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	faith@gfxstrand.net,
	sumit.semwal@linaro.org
Date: Thu, 20 Nov 2025 15:41:09 +0100
Message-ID: <20251120150018.27385-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251120150018.27385-1-christian.koenig@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9D4833F952
X-Spamd-Bar: ---
Message-ID-Hash: T2B6MW5YW2MFYS2UVMKJZUST5UEQJV7L
X-Message-ID-Hash: T2B6MW5YW2MFYS2UVMKJZUST5UEQJV7L
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/4] drm/vgem: use the reasonable maximum timeout defined by the dma_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T2B6MW5YW2MFYS2UVMKJZUST5UEQJV7L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW5zdGVhZCBvZiAxMCBzZWNvbmRzIGp1c3QgdXNlIHRoZSByZWFzb25hYmxlIG1heGltdW0gdGlt
ZW91dCBkZWZpbmVkIGJ5DQp0aGUgZG1hX2ZlbmNlIGZyYW1ld29yay4NCg0KU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJp
dmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9mZW5jZS5jIHwgOSArKysrKy0tLS0NCiAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdl
bV9mZW5jZS5jDQppbmRleCAwN2RiMzE5YzNkN2YuLjFjYTE0YjgzNDc5ZCAxMDA2NDQNCi0tLSBh
L2RyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZmVuY2UuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJt
L3ZnZW0vdmdlbV9mZW5jZS5jDQpAQCAtMjcsOCArMjcsNiBAQA0KIA0KICNpbmNsdWRlICJ2Z2Vt
X2Rydi5oIg0KIA0KLSNkZWZpbmUgVkdFTV9GRU5DRV9USU1FT1VUICgxMCpIWikNCi0NCiBzdHJ1
Y3QgdmdlbV9mZW5jZSB7DQogCXN0cnVjdCBkbWFfZmVuY2UgYmFzZTsNCiAJc3RydWN0IHNwaW5s
b2NrIGxvY2s7DQpAQCAtODEsOCArNzksMTEgQEAgc3RhdGljIHN0cnVjdCBkbWFfZmVuY2UgKnZn
ZW1fZmVuY2VfY3JlYXRlKHN0cnVjdCB2Z2VtX2ZpbGUgKnZmaWxlLA0KIA0KIAl0aW1lcl9zZXR1
cCgmZmVuY2UtPnRpbWVyLCB2Z2VtX2ZlbmNlX3RpbWVvdXQsIFRJTUVSX0lSUVNBRkUpOw0KIA0K
LQkvKiBXZSBmb3JjZSB0aGUgZmVuY2UgdG8gZXhwaXJlIHdpdGhpbiAxMHMgdG8gcHJldmVudCBk
cml2ZXIgaGFuZ3MgKi8NCi0JbW9kX3RpbWVyKCZmZW5jZS0+dGltZXIsIGppZmZpZXMgKyBWR0VN
X0ZFTkNFX1RJTUVPVVQpOw0KKwkvKg0KKwkgKiBGb3JjZSB0aGUgZmVuY2UgdG8gZXhwaXJlIHdp
dGhpbiBhIHJlYXNvbmFibGUgdGltZW91dCB0byBwcmV2ZW50DQorCSAqIGhhbmdzIGluc2lkZSB0
aGUgbWVtb3J5IG1hbmFnZW1lbnQuDQorCSAqLw0KKwltb2RfdGltZXIoJmZlbmNlLT50aW1lciwg
amlmZmllcyArIERNQV9GRU5DRV9NQVhfUkVBU09OQUJMRV9USU1FT1VUKTsNCiANCiAJcmV0dXJu
ICZmZW5jZS0+YmFzZTsNCiB9DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
