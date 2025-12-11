Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BECCB5D2A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:25:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C95F53F9AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:25:50 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 641823F9B1
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=dg3s6xtT;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-477632b0621so149875e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455854; x=1766060654; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3YjNW429UorXfRWSmfiSu8+hOtC1rk0BjcG9/GAykRw=;
        b=dg3s6xtTyv3VyNEyb7Iorv+HtMBXzEzjK/xj1WQcZ41IGY4wXOaSE8FtQ4lrVHXdN2
         c0Xn2pE85amyJQVB5GCc2dqRy5Ig64vgifUKxUTnjEQMB9hEN6o2uOldtKB96yz0L/Gi
         /2rfa1lx4iWKPwKFD9J6K0eBe3C5dqMZIp0NjTyAYyjgeqm4QwJdycHboYluuHnZQd97
         gbV/ozIMD9hihmfrMuUzriWCLbtsnSi7IoZtbubzB6UQ5A2y00TWOH8tyACViN4jR4N7
         8p0MYzIwU80keDvToK62pZwjPiePIuf1lB13IrM8d6e5ntpGWHDcTkoHRnhOBA1xIZAr
         GpNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455854; x=1766060654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3YjNW429UorXfRWSmfiSu8+hOtC1rk0BjcG9/GAykRw=;
        b=MWZXaJ4rHZZwzt5l1uWIRE+9opDQQUHG5jcIo6k71FbbwHOgEQHOUbi+5fp1uV0i3H
         sNR5JcKX4jHa/3uG84ezVuOJs76YlTpHkW8rcTJw6iH8nwiQDj+Cjjqju1hg8TDCIdCv
         f/n9yTU4XadUQ4ET64/C5dEszJYav5R2DePJwmzLoVMGcZq2mxebwUUDxmJCMRd7M/qK
         JKtVrEcG6aVJyVk6SEzMDRi80OZmCd3MWIncEyZgw6cXMGoxmFyFFOE8WKhnBIl49GAn
         88C+lnrH6x6TbC0egnjJWllQRpJs6rqrG9cAJzCpLIvuA98mfvEaIjlo/uYv2u1MsBTg
         yhrA==
X-Forwarded-Encrypted: i=1; AJvYcCUqdgPUikCcS6x4u+9Ltimg9HBIeADNrU93ugmR3dVv1HL9f8u40XPBISm1p7wr6UatZidEcv124inizAE1@lists.linaro.org
X-Gm-Message-State: AOJu0YyE4XrNiqInbDlPEm4PaIZiaPnwHkNcvBnzP0ILkHKS4UgITLEz
	4q2swi1WGsiLYRmXj6opX4ZTfKsuG/R5XxteEdHCcLPpu4dljqYqzBjR
X-Gm-Gg: AY/fxX5Aboponjy40zeRDLr4BhZop+Zg0xeeOpz2111SnttbnVpA4FX6vvMT8njBXK6
	MAxyaSzYz9QXenkboCsiIokd/0LdKn82jMZ8T14LugX9tS9bEUAmKGGNCPTtE5JHqmgGQJSY1jV
	XNrTTqsOfiIA+kLfgF2yLoMzt02WDGr1XzUr7lEEMNoohqS7TVZrZnuBVbEdoDxUmHbHR8IWTVH
	RIx9Yei5a+jSQH3koT7WCBu2iE0K7qne3JZ6eVHJGTKiw9DI8uZW4e4pCOP04zaWMjik1th85Ag
	om9vLaehDoDbdgFRGKSvorA+z6TcRSiCM1DydnbXCQpC6vpEluMndP3YZRR5y5fR60XS5ZVmKd2
	Kg6yIiu2YAqfwc24ZxhucXcNlAh9E1SK4yiha5Crs+DFjv6ie+sVmqvnvaV/UQ6OlyC86bEGDuF
	L2zmm1+q7E58IFB+rh0UQEVdWX
X-Google-Smtp-Source: AGHT+IHrMX+tx4xAWbkp78CX31uMZS5UInfR/QT/dyZzjvgDckmV/OiUsw0v/VA6SSf/409LqVNotQ==
X-Received: by 2002:a05:600c:3f0e:b0:46e:4b79:551 with SMTP id 5b1f17b1804b1-47a8379c10dmr59834165e9.31.1765455854292;
        Thu, 11 Dec 2025 04:24:14 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:13 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:36 +0100
Message-ID: <20251211122407.1709-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	BLOCKLISTDE_FAIL(0.00)[2a00:e180:152a:9f00:dc26:feac:12f7:4088:query timed out];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 641823F9B1
X-Spamd-Bar: ----
Message-ID-Hash: SYCL32XPJIH7ORPH63UBXK4L6L2Z5RNA
X-Message-ID-Hash: SYCL32XPJIH7ORPH63UBXK4L6L2Z5RNA
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 05/19] dma-buf/selftests: test RCU ops and inline lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SYCL32XPJIH7ORPH63UBXK4L6L2Z5RNA/>
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
ciBzaWduYWxpbmcuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyB8
IDQ0ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMN
CmluZGV4IDVkMGQ5YWJjNmUyMS4uNjUyMjEyNzBmZDA2IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9k
bWEtYnVmL3N0LWRtYS1mZW5jZS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNl
LmMNCkBAIC0xNCw0MyArMTQsMjYgQEANCiANCiAjaW5jbHVkZSAic2VsZnRlc3QuaCINCiANCi1z
dGF0aWMgc3RydWN0IGttZW1fY2FjaGUgKnNsYWJfZmVuY2VzOw0KLQ0KLXN0YXRpYyBzdHJ1Y3Qg
bW9ja19mZW5jZSB7DQotCXN0cnVjdCBkbWFfZmVuY2UgYmFzZTsNCi0Jc3RydWN0IHNwaW5sb2Nr
IGxvY2s7DQotfSAqdG9fbW9ja19mZW5jZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKSB7DQotCXJldHVy
biBjb250YWluZXJfb2YoZiwgc3RydWN0IG1vY2tfZmVuY2UsIGJhc2UpOw0KLX0NCi0NCiBzdGF0
aWMgY29uc3QgY2hhciAqbW9ja19uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQogew0KIAlyZXR1
cm4gIm1vY2siOw0KIH0NCiANCi1zdGF0aWMgdm9pZCBtb2NrX2ZlbmNlX3JlbGVhc2Uoc3RydWN0
IGRtYV9mZW5jZSAqZikNCi17DQotCWttZW1fY2FjaGVfZnJlZShzbGFiX2ZlbmNlcywgdG9fbW9j
a19mZW5jZShmKSk7DQotfQ0KLQ0KIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBt
b2NrX29wcyA9IHsNCiAJLmdldF9kcml2ZXJfbmFtZSA9IG1vY2tfbmFtZSwNCiAJLmdldF90aW1l
bGluZV9uYW1lID0gbW9ja19uYW1lLA0KLQkucmVsZWFzZSA9IG1vY2tfZmVuY2VfcmVsZWFzZSwN
CiB9Ow0KIA0KIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlICptb2NrX2ZlbmNlKHZvaWQpDQogew0K
LQlzdHJ1Y3QgbW9ja19mZW5jZSAqZjsNCisJc3RydWN0IGRtYV9mZW5jZSAqZjsNCiANCi0JZiA9
IGttZW1fY2FjaGVfYWxsb2Moc2xhYl9mZW5jZXMsIEdGUF9LRVJORUwpOw0KKwlmID0ga21hbGxv
YyhzaXplb2YoKmYpLCBHRlBfS0VSTkVMKTsNCiAJaWYgKCFmKQ0KIAkJcmV0dXJuIE5VTEw7DQog
DQotCXNwaW5fbG9ja19pbml0KCZmLT5sb2NrKTsNCi0JZG1hX2ZlbmNlX2luaXQoJmYtPmJhc2Us
ICZtb2NrX29wcywgJmYtPmxvY2ssIDAsIDApOw0KLQ0KLQlyZXR1cm4gJmYtPmJhc2U7DQorCWRt
YV9mZW5jZV9pbml0KGYsICZtb2NrX29wcywgTlVMTCwgMCwgMCk7DQorCXJldHVybiBmOw0KIH0N
CiANCiBzdGF0aWMgaW50IHNhbml0eWNoZWNrKHZvaWQgKmFyZykNCkBAIC05MCw2ICs3MywxMSBA
QCBzdGF0aWMgaW50IHRlc3Rfc2lnbmFsaW5nKHZvaWQgKmFyZykNCiAJCWdvdG8gZXJyX2ZyZWU7
DQogCX0NCiANCisJaWYgKHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoZi0+b3BzLCB0cnVlKSkg
ew0KKwkJcHJfZXJyKCJGZW5jZSBvcHMgbm90IGNsZWFyZWQgb24gc2lnbmFsXG4iKTsNCisJCWdv
dG8gZXJyX2ZyZWU7DQorCX0NCisNCiAJaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZikpIHsN
CiAJCXByX2VycigiRmVuY2Ugbm90IHJlcG9ydGluZyBzaWduYWxlZFxuIik7DQogCQlnb3RvIGVy
cl9mcmVlOw0KQEAgLTU0MCwxOSArNTI4LDcgQEAgaW50IGRtYV9mZW5jZSh2b2lkKQ0KIAkJU1VC
VEVTVCh0ZXN0X3N0dWIpLA0KIAkJU1VCVEVTVChyYWNlX3NpZ25hbF9jYWxsYmFjayksDQogCX07
DQotCWludCByZXQ7DQogDQogCXByX2luZm8oInNpemVvZihkbWFfZmVuY2UpPSV6dVxuIiwgc2l6
ZW9mKHN0cnVjdCBkbWFfZmVuY2UpKTsNCi0NCi0Jc2xhYl9mZW5jZXMgPSBLTUVNX0NBQ0hFKG1v
Y2tfZmVuY2UsDQotCQkJCSBTTEFCX1RZUEVTQUZFX0JZX1JDVSB8DQotCQkJCSBTTEFCX0hXQ0FD
SEVfQUxJR04pOw0KLQlpZiAoIXNsYWJfZmVuY2VzKQ0KLQkJcmV0dXJuIC1FTk9NRU07DQotDQot
CXJldCA9IHN1YnRlc3RzKHRlc3RzLCBOVUxMKTsNCi0NCi0Ja21lbV9jYWNoZV9kZXN0cm95KHNs
YWJfZmVuY2VzKTsNCi0NCi0JcmV0dXJuIHJldDsNCisJcmV0dXJuIHN1YnRlc3RzKHRlc3RzLCBO
VUxMKTsNCiB9DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
