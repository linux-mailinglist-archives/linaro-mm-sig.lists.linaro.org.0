Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3154979A8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 08:41:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA544401D3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 07:41:01 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id EB1413ED94
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 07:40:48 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id k18so11816336wrg.11
        for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Jan 2022 23:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nkHC8QZFOIHT45+bm5mbkRLb4msTxzU2f5F+QSxdoAg=;
        b=Qj2yBp4MqQ7KNASeGTANOuELaoriQPEus+Y5WG9R1BeNlKfWpoIpNdldl25Dp739sv
         Az06vMnMIfiC9jcFemaGJdxt4ksPV3D8IgfABi+dTcLwDcZqSLP7Vwff05NY1nIIgwB7
         FsEk327TEn7KK6LOlZL9hEkNA5+JAXfVE2iVj5qvBHsgqjzsdkq1s8DqvXnR3vmUCKbR
         sKpTRuGMUEw5CVwsUHzceA0paF3lWmzHi84RljO6OMZlo15XXlrylqjBucdtB8Vnvt92
         6nI85ykpmGtgGonR1HfNg8as0g/v75cbSo+t5WzkOHO4sdrYNuW8HTIb651QRaqtDXTq
         LYGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nkHC8QZFOIHT45+bm5mbkRLb4msTxzU2f5F+QSxdoAg=;
        b=krAdxzPK8gIDtM2/x/IMruCxP6qtdATVcjrdfCQ/WRnPDYUlaBuS2ETAqoPRtkR8aW
         8k6bNFViiryFQSTkju8JvpSHTMu8/zP09+jfh1a6yKty82VVW+ng9kd584wBKR9eo3be
         RPYU877Tz0VFp2ovOp7aOFoH7z89FqVYvUluhrGbxOMLQp3/kAJ7/Bhs7/Q/6UWxBzFK
         1KFvt07nmBUvN1F/7/teOwY7PS+u7Of8sQfW8ILYxvJXdf9pg/4IZZAF03PxfZPUXxY4
         TzSnc0fXllqj3ThCFEcKNk2wmt5HxHPLpve0wrCkkmqOFWC0MyulIctpvvS1BeoGosOh
         OzZg==
X-Gm-Message-State: AOAM530Ax1OgSgbHLK3p0wLH4HlNpgmbvVVBsQIBcp468h6BLe2da+tO
	0iEgBj8PRKaqamqrfTQJUuE=
X-Google-Smtp-Source: ABdhPJzhRxuEYmrw3Ii07RY11RBs/o/Fq2cYVaEP6QMU32uHoHeBFsvH7w6OILGVbItZxRNvx2es8Q==
X-Received: by 2002:adf:d1c2:: with SMTP id b2mr6047282wrd.411.1643010047896;
        Sun, 23 Jan 2022 23:40:47 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id u15sm516370wrs.17.2022.01.23.23.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 23:40:47 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 24 Jan 2022 08:40:38 +0100
Message-Id: <20220124074046.4865-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: M4CGVSUV6CDRGNG24DYCTWKAPK7Z6OGC
X-Message-ID-Hash: M4CGVSUV6CDRGNG24DYCTWKAPK7Z6OGC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/9] dma-buf: consolidate dma_fence subclass checking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M4CGVSUV6CDRGNG24DYCTWKAPK7Z6OGC/>
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
