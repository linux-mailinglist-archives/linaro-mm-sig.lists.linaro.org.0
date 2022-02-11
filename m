Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4FF4B806F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 07:16:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 513EF3EEC6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 06:16:19 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 7ED023EDFB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 16:19:12 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id f32-20020a25b0a0000000b0061dad37dcd6so19580745ybj.16
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 08:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding;
        bh=09UL10d0I9UYF+bVDoR9sZ50jMDUcLUx49HZh4jVL78=;
        b=JE1EYWsWmJMVKKKziQTWEWuNUsyaPxqCZ/opyUrIE1QJ2zMzT8OF9HdxhY+GhtuCaK
         HyDDiusYJME2veTyqvuwR1555jPMqz95nnShokOB0VNQWEe93IdgXongToVPd90O3dAV
         IimzoYc1rIm15su0G+eGvhoRyruDLS+nZbjAQSDDWgXzx6DUp60nKevkdTlnOcGS/yxC
         7VDKvQJbgIkNVOdKUHyv+vhK1BCP41v5/xbIT27E+bix812dIwb5ma26aGylR3U5/hbr
         /YZu4e+ldXsQQ0aLJTqhpqIkZ/qs9fg8ieI0b6EipnVFoSEM/clguN4lkL+c5q3or2+f
         JMAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding;
        bh=09UL10d0I9UYF+bVDoR9sZ50jMDUcLUx49HZh4jVL78=;
        b=ZkVIDYlFdBHwDaworxmVmrkVt5kfM6/FdGSSELQAvCqDlmYyzua64VgMal9gByrWLS
         L02+XzjcgzdVYM3ItQGO6xFKo7FqGeBa236ltAG1/0sj5QIm1S8mW+UPMOXK2fGq8zxd
         cQzwgHOgcPoe8/CgP5vECjfOCV0xUHl7JzQXgTNs9GnOPG5O25bI3ubrlQeNoZ3HvQPH
         LCRN548t+T+dnutE0lrVOdZ4f15Y7ezSH12hpd+pEFAjqPSP3iEf2unySwQmKka0hSfy
         kaKbXRfGKantmDxAGCz85/I0BDm7VwUizGZgDUH/EXgGSA3sN+AmJrqb4FLKBLTlh0Gv
         VoPQ==
X-Gm-Message-State: AOAM532c96Z+sk8Dwg2eNrKGYzMUCVqsXRjuV5jArHxBxyZtO8ZIJ8z3
	R1hUjHlAnQP0k8fPxH3CDhP4QO1ovT6eBEI=
X-Google-Smtp-Source: ABdhPJyt28xsiqi+oRkwIgJ74WzjQyOoBVx2xkYnBQvOje0p3ZB58ZSdJeKE27JlSq7ErJdcjRoIy8BigQrNax8=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a81:d007:: with SMTP id
 v7mr2415829ywi.88.1644596352146; Fri, 11 Feb 2022 08:19:12 -0800 (PST)
Date: Fri, 11 Feb 2022 16:18:29 +0000
In-Reply-To: <20220211161831.3493782-1-tjmercier@google.com>
Message-Id: <20220211161831.3493782-7-tjmercier@google.com>
Mime-Version: 1.0
References: <20220211161831.3493782-1-tjmercier@google.com>
X-Mailer: git-send-email 2.35.1.265.g69c8d7142f-goog
From: "T.J. Mercier" <tjmercier@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>
X-MailFrom: 3gIwGYgkKDck8y1t6rxt6v33v0t.r310x2p63-11-7xv0x787.0x2p63.36v@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XDBYO43GS5OQMWD5IS4CO3MTM3ICZJJW
X-Message-ID-Hash: XDBYO43GS5OQMWD5IS4CO3MTM3ICZJJW
X-Mailman-Approved-At: Wed, 16 Feb 2022 06:15:44 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 6/6] android: binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XDBYO43GS5OQMWD5IS4CO3MTM3ICZJJW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgYnVmZmVyIGZsYWcgQklOREVSX0JVRkZFUl9GTEFHX1NF
TkRFUl9OT19ORUVEDQp0aGF0IGEgcHJvY2VzcyBzZW5kaW5nIGFuIGZkIGFycmF5IHRvIGFub3Ro
ZXIgcHJvY2VzcyBvdmVyIGJpbmRlciBJUEMNCmNhbiBzZXQgdG8gcmVsaW5xdWlzaCBvd25lcnNo
aXAgb2YgdGhlIGZkcyBiZWluZyBzZW50IGZvciBtZW1vcnkNCmFjY291bnRpbmcgcHVycG9zZXMu
IElmIHRoZSBmbGFnIGlzIGZvdW5kIHRvIGJlIHNldCBkdXJpbmcgdGhlIGZkIGFycmF5DQp0cmFu
c2xhdGlvbiBhbmQgdGhlIGZkIGlzIGZvciBhIERNQS1CVUYsIHRoZSBidWZmZXIgaXMgdW5jaGFy
Z2VkIGZyb20NCnRoZSBzZW5kZXIncyBjZ3JvdXAgYW5kIGNoYXJnZWQgdG8gdGhlIHJlY2Vpdmlu
ZyBwcm9jZXNzJ3MgY2dyb3VwDQppbnN0ZWFkLg0KDQpJdCBpcyB1cCB0byB0aGUgc2VuZGluZyBw
cm9jZXNzIHRvIGVuc3VyZSB0aGF0IGl0IGNsb3NlcyB0aGUgZmRzDQpyZWdhcmRsZXNzIG9mIHdo
ZXRoZXIgdGhlIHRyYW5zZmVyIGZhaWxlZCBvciBzdWNjZWVkZWQuDQoNCk1vc3QgZ3JhcGhpY3Mg
c2hhcmVkIG1lbW9yeSBhbGxvY2F0aW9ucyBpbiBBbmRyb2lkIGFyZSBkb25lIGJ5IHRoZQ0KZ3Jh
cGhpY3MgYWxsb2NhdG9yIEhBTCBwcm9jZXNzLiBPbiByZXF1ZXN0cyBmcm9tIGNsaWVudHMsIHRo
ZSBIQUwgcHJvY2Vzcw0KYWxsb2NhdGVzIG1lbW9yeSBhbmQgc2VuZHMgdGhlIGZkcyB0byB0aGUg
Y2xpZW50cyBvdmVyIGJpbmRlciBJUEMuDQpUaGUgZ3JhcGhpY3MgYWxsb2NhdG9yIEhBTCB3aWxs
IG5vdCByZXRhaW4gYW55IHJlZmVyZW5jZXMgdG8gdGhlDQpidWZmZXJzLiBXaGVuIHRoZSBIQUwg
c2V0cyB0aGUgQklOREVSX0JVRkZFUl9GTEFHX1NFTkRFUl9OT19ORUVEIGZvciBmZA0KYXJyYXlz
IGhvbGRpbmcgRE1BLUJVRiBmZHMsIHRoZSBncHUgY2dyb3VwIGNvbnRyb2xsZXIgd2lsbCBiZSBh
YmxlIHRvDQpjb3JyZWN0bHkgY2hhcmdlIHRoZSBidWZmZXJzIHRvIHRoZSBjbGllbnQgcHJvY2Vz
c2VzIGluc3RlYWQgb2YgdGhlDQpncmFwaGljcyBhbGxvY2F0b3IgSEFMLg0KDQpGcm9tOiBIcmlk
eWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4NClNpZ25lZC1vZmYtYnk6IEhyaWR5YSBW
YWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0KQ28tZGV2ZWxvcGVkLWJ5OiBULkouIE1lcmNp
ZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KU2lnbmVkLW9mZi1ieTogVC5KLiBNZXJjaWVyIDx0
am1lcmNpZXJAZ29vZ2xlLmNvbT4NCi0tLQ0KY2hhbmdlcyBpbiB2Mg0KLSBNb3ZlIGRtYS1idWYg
Y2dyb3VwIGNoYXJnZSB0cmFuc2ZlciBmcm9tIGEgZG1hX2J1Zl9vcCBkZWZpbmVkIGJ5IGV2ZXJ5
DQpoZWFwIHRvIGEgc2luZ2xlIGRtYS1idWYgZnVuY3Rpb24gZm9yIGFsbCBoZWFwcyBwZXIgRGFu
aWVsIFZldHRlciBhbmQNCkNocmlzdGlhbiBLw7ZuaWcuDQoNCiBkcml2ZXJzL2FuZHJvaWQvYmlu
ZGVyLmMgICAgICAgICAgICB8IDI2ICsrKysrKysrKysrKysrKysrKysrKysrKysrDQogaW5jbHVk
ZS91YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVyLmggfCAgMSArDQogMiBmaWxlcyBjaGFuZ2VkLCAy
NyBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2FuZHJvaWQvYmluZGVyLmMg
Yi9kcml2ZXJzL2FuZHJvaWQvYmluZGVyLmMNCmluZGV4IDgzNTFjNTYzODg4MC4uZjUwZDg4ZGVk
MTg4IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9hbmRyb2lkL2JpbmRlci5jDQorKysgYi9kcml2ZXJz
L2FuZHJvaWQvYmluZGVyLmMNCkBAIC00Miw2ICs0Miw3IEBADQogDQogI2RlZmluZSBwcl9mbXQo
Zm10KSBLQlVJTERfTU9ETkFNRSAiOiAiIGZtdA0KIA0KKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVm
Lmg+DQogI2luY2x1ZGUgPGxpbnV4L2ZkdGFibGUuaD4NCiAjaW5jbHVkZSA8bGludXgvZmlsZS5o
Pg0KICNpbmNsdWRlIDxsaW51eC9mcmVlemVyLmg+DQpAQCAtMjQ4Miw4ICsyNDgzLDEwIEBAIHN0
YXRpYyBpbnQgYmluZGVyX3RyYW5zbGF0ZV9mZF9hcnJheShzdHJ1Y3QgbGlzdF9oZWFkICpwZl9o
ZWFkLA0KIHsNCiAJYmluZGVyX3NpemVfdCBmZGksIGZkX2J1Zl9zaXplOw0KIAliaW5kZXJfc2l6
ZV90IGZkYV9vZmZzZXQ7DQorCWJvb2wgdHJhbnNmZXJfZ3B1X2NoYXJnZSA9IGZhbHNlOw0KIAlj
b25zdCB2b2lkIF9fdXNlciAqc2VuZGVyX3VmZGFfYmFzZTsNCiAJc3RydWN0IGJpbmRlcl9wcm9j
ICpwcm9jID0gdGhyZWFkLT5wcm9jOw0KKwlzdHJ1Y3QgYmluZGVyX3Byb2MgKnRhcmdldF9wcm9j
ID0gdC0+dG9fcHJvYzsNCiAJaW50IHJldDsNCiANCiAJZmRfYnVmX3NpemUgPSBzaXplb2YodTMy
KSAqIGZkYS0+bnVtX2ZkczsNCkBAIC0yNTIxLDggKzI1MjQsMTUgQEAgc3RhdGljIGludCBiaW5k
ZXJfdHJhbnNsYXRlX2ZkX2FycmF5KHN0cnVjdCBsaXN0X2hlYWQgKnBmX2hlYWQsDQogCWlmIChy
ZXQpDQogCQlyZXR1cm4gcmV0Ow0KIA0KKwlpZiAoSVNfRU5BQkxFRChDT05GSUdfQ0dST1VQX0dQ
VSkgJiYNCisJCXBhcmVudC0+ZmxhZ3MgJiBCSU5ERVJfQlVGRkVSX0ZMQUdfU0VOREVSX05PX05F
RUQpDQorCQl0cmFuc2Zlcl9ncHVfY2hhcmdlID0gdHJ1ZTsNCisNCiAJZm9yIChmZGkgPSAwOyBm
ZGkgPCBmZGEtPm51bV9mZHM7IGZkaSsrKSB7DQogCQl1MzIgZmQ7DQorCQlzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmOw0KKwkJc3RydWN0IGdwdWNnICpncHVjZzsNCisNCiAJCWJpbmRlcl9zaXplX3Qg
b2Zmc2V0ID0gZmRhX29mZnNldCArIGZkaSAqIHNpemVvZihmZCk7DQogCQliaW5kZXJfc2l6ZV90
IHNlbmRlcl91b2Zmc2V0ID0gZmRpICogc2l6ZW9mKGZkKTsNCiANCkBAIC0yNTMyLDYgKzI1NDIs
MjIgQEAgc3RhdGljIGludCBiaW5kZXJfdHJhbnNsYXRlX2ZkX2FycmF5KHN0cnVjdCBsaXN0X2hl
YWQgKnBmX2hlYWQsDQogCQkJCQkJICBpbl9yZXBseV90byk7DQogCQlpZiAocmV0KQ0KIAkJCXJl
dHVybiByZXQgPiAwID8gLUVJTlZBTCA6IHJldDsNCisNCisJCWlmICghdHJhbnNmZXJfZ3B1X2No
YXJnZSkNCisJCQljb250aW51ZTsNCisNCisJCWRtYWJ1ZiA9IGRtYV9idWZfZ2V0KGZkKTsNCisJ
CWlmIChJU19FUlIoZG1hYnVmKSkNCisJCQljb250aW51ZTsNCisNCisJCWdwdWNnID0gZ3B1Y2df
Z2V0KHRhcmdldF9wcm9jLT50c2spOw0KKwkJcmV0ID0gZG1hX2J1Zl9jaGFyZ2VfdHJhbnNmZXIo
ZG1hYnVmLCBncHVjZyk7DQorCQlpZiAocmV0KSB7DQorCQkJcHJfd2FybigiJWQ6JWQgVW5hYmxl
IHRvIHRyYW5zZmVyIERNQS1CVUYgZmQgY2hhcmdlIHRvICVkIiwNCisJCQkJcHJvYy0+cGlkLCB0
aHJlYWQtPnBpZCwgdGFyZ2V0X3Byb2MtPnBpZCk7DQorCQkJZ3B1Y2dfcHV0KGdwdWNnKTsNCisJ
CX0NCisJCWRtYV9idWZfcHV0KGRtYWJ1Zik7DQogCX0NCiAJcmV0dXJuIDA7DQogfQ0KZGlmZiAt
LWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oIGIvaW5jbHVkZS91YXBp
L2xpbnV4L2FuZHJvaWQvYmluZGVyLmgNCmluZGV4IDMyNDZmMmM3NDY5Ni4uMTY5ZmQ1MDY5YTFh
IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVyLmgNCisrKyBi
L2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oDQpAQCAtMTM3LDYgKzEzNyw3IEBA
IHN0cnVjdCBiaW5kZXJfYnVmZmVyX29iamVjdCB7DQogDQogZW51bSB7DQogCUJJTkRFUl9CVUZG
RVJfRkxBR19IQVNfUEFSRU5UID0gMHgwMSwNCisJQklOREVSX0JVRkZFUl9GTEFHX1NFTkRFUl9O
T19ORUVEID0gMHgwMiwNCiB9Ow0KIA0KIC8qIHN0cnVjdCBiaW5kZXJfZmRfYXJyYXlfb2JqZWN0
IC0gb2JqZWN0IGRlc2NyaWJpbmcgYW4gYXJyYXkgb2YgZmRzIGluIGEgYnVmZmVyDQotLSANCjIu
MzUuMS4yNjUuZzY5YzhkNzE0MmYtZ29vZw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
