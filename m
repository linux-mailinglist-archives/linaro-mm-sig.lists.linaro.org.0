Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BC1493B48
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 14:43:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C5823EE83
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 13:43:46 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by lists.linaro.org (Postfix) with ESMTPS id A244E3EE7C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 13:43:42 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id j23so6660432edp.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 05:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nkHC8QZFOIHT45+bm5mbkRLb4msTxzU2f5F+QSxdoAg=;
        b=kA3OW1OUw0qGIgFgEr0kKZ2UdSFvZdnvjoM0lTM/D9X+mBtKQeC7rRw78LXmBVALy4
         oS4/NuhD6B5fWe2IrNEF47yE1nam6z2V4bp6bIOzsGlGZ716RbQdTK36ZNr+UOUmNKTb
         4ELPG1rofWbczCwKL3Cjw01+z31KKByuJHCwaFxVHr2HTpjT07jE9xg1BxTIr7T8Id5L
         0G0e64OTarRwhrL7Vt8ky183Y85WxlAoL0oHmNkVtLOitqgFzRc9xLgNP2gzKQoVsJoI
         8GWd/dRRlM/TV4K/R8/RvmmiWH/dmi6rGQfytV/U7OHRAwzKgvOaj/Hz0TzNfRu0KCiY
         QMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nkHC8QZFOIHT45+bm5mbkRLb4msTxzU2f5F+QSxdoAg=;
        b=ci7bNJjFLzFjSmfofuYOHQcjBQHXLNyusG3k1ExM+CaWy3eU1QDlpSqUDyBwL+NR32
         caZ/B6v/n+XHPZeup8cMPqcBLGMBeTYkO8AaVtkLLsZ64JlV5AUe2MQfD6rgx70KBD6M
         jVmsc40XJKxpWV8fsdTvBkvBMXI/nKGgr8v+P5EMXaIkp2oIIgvQL0Wer4yGfsFeCbzw
         JJe4gqnD6mVMUp7RpC5cGw/t5fiuu5VbLCYiRhrUDHSM7fbLyhPRhhkGXuhitr8OeIjJ
         /yWnDPIegkb3Y1uN4bsLRFxLWKgc6aPcvHeA5MmngWzp6Be1+U6SFFVEU+w9wDB3lmfU
         I3Hw==
X-Gm-Message-State: AOAM533mRzKe5R0VzHpCsHINWplu7giNst+lZ3UhEEAJcMAe7IueHKzE
	kRbmAXx21/fkA8DWvVncImE=
X-Google-Smtp-Source: ABdhPJysfjK85HqXAmx0IVGsIhpy+iuwL6GzcPwoaLzs0OSgqk7DiaxMXm6z6DRv3u7tB0iykp3olA==
X-Received: by 2002:a5d:634e:: with SMTP id b14mr30171587wrw.105.1642599821614;
        Wed, 19 Jan 2022 05:43:41 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id g15sm19733583wrm.2.2022.01.19.05.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 05:43:40 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch
Date: Wed, 19 Jan 2022 14:43:36 +0100
Message-Id: <20220119134339.3102-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: ZKHPKPNUHD3ANJOGFCTZYBEVDRNDKAEC
X-Message-ID-Hash: ZKHPKPNUHD3ANJOGFCTZYBEVDRNDKAEC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] dma-buf: consolidate dma_fence subclass checking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZKHPKPNUHD3ANJOGFCTZYBEVDRNDKAEC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q29uc29saWRhdGUgdGhlIHdyYXBwZXIgZnVuY3Rpb25zIHRvIGNoZWNrIGZvciBkbWFfZmVuY2UN
CnN1YmNsYXNzZXMgaW4gdGhlIGRtYV9mZW5jZSBoZWFkZXIuDQoNClRoaXMgbWFrZXMgaXQgZWFz
aWVyIHRvIGRvY3VtZW50IGFuZCBhbHNvIGNoZWNrIHRoZSBkaWZmZXJlbnQNCnJlcXVpcmVtZW50
cyBmb3IgZmVuY2UgY29udGFpbmVycyBpbiB0aGUgc3ViY2xhc3Nlcy4NCg0KU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaCB8IDE1ICstLS0tLS0tLS0tLS0NCiBpbmNsdWRl
L2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oIHwgIDMgKy0tDQogaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UuaCAgICAgICB8IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KIDMgZmls
ZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oIGIvaW5jbHVkZS9saW51eC9kbWEt
ZmVuY2UtYXJyYXkuaA0KaW5kZXggMzAzZGQ3MTIyMjBmLi5mZWMzNzRmNjllMTIgMTAwNjQ0DQot
LS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oDQorKysgYi9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS1hcnJheS5oDQpAQCAtNDUsMTkgKzQ1LDYgQEAgc3RydWN0IGRtYV9mZW5jZV9h
cnJheSB7DQogCXN0cnVjdCBpcnFfd29yayB3b3JrOw0KIH07DQogDQotZXh0ZXJuIGNvbnN0IHN0
cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5jZV9hcnJheV9vcHM7DQotDQotLyoqDQotICogZG1h
X2ZlbmNlX2lzX2FycmF5IC0gY2hlY2sgaWYgYSBmZW5jZSBpcyBmcm9tIHRoZSBhcnJheSBzdWJz
Y2xhc3MNCi0gKiBAZmVuY2U6IGZlbmNlIHRvIHRlc3QNCi0gKg0KLSAqIFJldHVybiB0cnVlIGlm
IGl0IGlzIGEgZG1hX2ZlbmNlX2FycmF5IGFuZCBmYWxzZSBvdGhlcndpc2UuDQotICovDQotc3Rh
dGljIGlubGluZSBib29sIGRtYV9mZW5jZV9pc19hcnJheShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSkNCi17DQotCXJldHVybiBmZW5jZS0+b3BzID09ICZkbWFfZmVuY2VfYXJyYXlfb3BzOw0KLX0N
Ci0NCiAvKioNCiAgKiB0b19kbWFfZmVuY2VfYXJyYXkgLSBjYXN0IGEgZmVuY2UgdG8gYSBkbWFf
ZmVuY2VfYXJyYXkNCiAgKiBAZmVuY2U6IGZlbmNlIHRvIGNhc3QgdG8gYSBkbWFfZmVuY2VfYXJy
YXkNCkBAIC02OCw3ICs1NSw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2VfaXNfYXJy
YXkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQogc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2Zl
bmNlX2FycmF5ICoNCiB0b19kbWFfZmVuY2VfYXJyYXkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Up
DQogew0KLQlpZiAoZmVuY2UtPm9wcyAhPSAmZG1hX2ZlbmNlX2FycmF5X29wcykNCisJaWYgKCFm
ZW5jZSB8fCAhZG1hX2ZlbmNlX2lzX2FycmF5KGZlbmNlKSkNCiAJCXJldHVybiBOVUxMOw0KIA0K
IAlyZXR1cm4gY29udGFpbmVyX29mKGZlbmNlLCBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5LCBiYXNl
KTsNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oIGIvaW5jbHVk
ZS9saW51eC9kbWEtZmVuY2UtY2hhaW4uaA0KaW5kZXggNTRmZTM0NDNmZDJjLi5lZTkwNmI2NTk2
OTQgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oDQorKysgYi9p
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oDQpAQCAtNDksNyArNDksNiBAQCBzdHJ1Y3Qg
ZG1hX2ZlbmNlX2NoYWluIHsNCiAJc3BpbmxvY2tfdCBsb2NrOw0KIH07DQogDQotZXh0ZXJuIGNv
bnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5jZV9jaGFpbl9vcHM7DQogDQogLyoqDQog
ICogdG9fZG1hX2ZlbmNlX2NoYWluIC0gY2FzdCBhIGZlbmNlIHRvIGEgZG1hX2ZlbmNlX2NoYWlu
DQpAQCAtNjEsNyArNjAsNyBAQCBleHRlcm4gY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1h
X2ZlbmNlX2NoYWluX29wczsNCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBkbWFfZmVuY2VfY2hhaW4g
Kg0KIHRvX2RtYV9mZW5jZV9jaGFpbihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCiB7DQotCWlm
ICghZmVuY2UgfHwgZmVuY2UtPm9wcyAhPSAmZG1hX2ZlbmNlX2NoYWluX29wcykNCisJaWYgKCFm
ZW5jZSB8fCAhZG1hX2ZlbmNlX2lzX2NoYWluKGZlbmNlKSkNCiAJCXJldHVybiBOVUxMOw0KIA0K
IAlyZXR1cm4gY29udGFpbmVyX29mKGZlbmNlLCBzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluLCBiYXNl
KTsNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51
eC9kbWEtZmVuY2UuaA0KaW5kZXggMWVhNjkxNzUzYmQzLi43NzVjZGMwYjRmMjQgMTAwNjQ0DQot
LS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1m
ZW5jZS5oDQpAQCAtNTg3LDQgKzU4Nyw0MiBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2Vf
Z2V0X3N0dWIodm9pZCk7DQogc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2FsbG9jYXRlX3By
aXZhdGVfc3R1Yih2b2lkKTsNCiB1NjQgZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2ModW5zaWduZWQg
bnVtKTsNCiANCitleHRlcm4gY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2ZlbmNlX2Fy
cmF5X29wczsNCitleHRlcm4gY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2ZlbmNlX2No
YWluX29wczsNCisNCisvKioNCisgKiBkbWFfZmVuY2VfaXNfYXJyYXkgLSBjaGVjayBpZiBhIGZl
bmNlIGlzIGZyb20gdGhlIGFycmF5IHN1YmNsYXNzDQorICogQGZlbmNlOiB0aGUgZmVuY2UgdG8g
dGVzdA0KKyAqDQorICogUmV0dXJuIHRydWUgaWYgaXQgaXMgYSBkbWFfZmVuY2VfYXJyYXkgYW5k
IGZhbHNlIG90aGVyd2lzZS4NCisgKi8NCitzdGF0aWMgaW5saW5lIGJvb2wgZG1hX2ZlbmNlX2lz
X2FycmF5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KK3sNCisJcmV0dXJuIGZlbmNlLT5vcHMg
PT0gJmRtYV9mZW5jZV9hcnJheV9vcHM7DQorfQ0KKw0KKy8qKg0KKyAqIGRtYV9mZW5jZV9pc19j
aGFpbiAtIGNoZWNrIGlmIGEgZmVuY2UgaXMgZnJvbSB0aGUgY2hhaW4gc3ViY2xhc3MNCisgKiBA
ZmVuY2U6IHRoZSBmZW5jZSB0byB0ZXN0DQorICoNCisgKiBSZXR1cm4gdHJ1ZSBpZiBpdCBpcyBh
IGRtYV9mZW5jZV9jaGFpbiBhbmQgZmFsc2Ugb3RoZXJ3aXNlLg0KKyAqLw0KK3N0YXRpYyBpbmxp
bmUgYm9vbCBkbWFfZmVuY2VfaXNfY2hhaW4oc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQorew0K
KwlyZXR1cm4gZmVuY2UtPm9wcyA9PSAmZG1hX2ZlbmNlX2NoYWluX29wczsNCit9DQorDQorLyoq
DQorICogZG1hX2ZlbmNlX2lzX2NvbnRhaW5lciAtIGNoZWNrIGlmIGEgZmVuY2UgaXMgYSBjb250
YWluZXIgZm9yIG90aGVyIGZlbmNlcw0KKyAqIEBmZW5jZTogdGhlIGZlbmNlIHRvIHRlc3QNCisg
Kg0KKyAqIFJldHVybiB0cnVlIGlmIHRoaXMgZmVuY2UgaXMgYSBjb250YWluZXIgZm9yIG90aGVy
IGZlbmNlcywgZmFsc2Ugb3RoZXJ3aXNlLg0KKyAqIFRoaXMgaXMgaW1wb3J0YW50IHNpbmNlIHdl
IGNhbid0IGJ1aWxkIHVwIGxhcmdlIGZlbmNlIHN0cnVjdHVyZSBvciBvdGhlcndpc2UNCisgKiB3
ZSBydW4gaW50byByZWN1cnNpb24gZHVyaW5nIG9wZXJhdGlvbiBvbiB0aG9zZSBmZW5jZXMuDQor
ICovDQorc3RhdGljIGlubGluZSBib29sIGRtYV9mZW5jZV9pc19jb250YWluZXIoc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UpDQorew0KKwlyZXR1cm4gZG1hX2ZlbmNlX2lzX2FycmF5KGZlbmNlKSB8
fCBkbWFfZmVuY2VfaXNfY2hhaW4oZmVuY2UpOw0KK30NCisNCiAjZW5kaWYgLyogX19MSU5VWF9E
TUFfRkVOQ0VfSCAqLw0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
