Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 343D051DA12
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 16:10:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22A8147FC0
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 14:10:18 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id 399C43EBB2
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 May 2022 14:10:12 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id n10so14726666ejk.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 06 May 2022 07:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rUhOQoaS8SryVGFS1WVsHEEI67ebg1mSAumxdSxJz/U=;
        b=lU6nT6ElU5a9Th7b6Bn2x9KOLSBH7B7mSLKE7pKyrmRgMIaHNgq2zz0aFTEAlGOttX
         kpY8D84zbO19AF7lXnZvSFOFmK+IBUuwQ924WTEVf6umK10BLyka+fW2mcGp9xN63Zi9
         bBiZtjErKEuXQs/3tb6WNN5o8dISboR0iuqGTRafUoya0clsmL1VboqnnlTe3yz6cK1i
         4EjOXVrlSpa7Sc7+cMkNsmL8OU34Qrmz+ne+GbNsrUph67HucHwAkMsSB6/Z1xCf2xXL
         dYTJ6OlmMIhWPzXa7wqOWgnzAoMS9gUgVGWc4Cg9LIXNL5wu2bjr8oqeFPF2X9WYrKJ9
         eAeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rUhOQoaS8SryVGFS1WVsHEEI67ebg1mSAumxdSxJz/U=;
        b=7eH5O+REoXmvjlX3/EBg/s/7dFduBGWEdbay0rS4Qmfnl33awnNXo7dsOZ+9VS3uA8
         Cdsyi7GRbdPGF0gy7f0s1j3VifdLCyv/tEGZoHudkyDY9StvHJMlh1lHw9kETmAxCbgP
         2HmQDW8k87x6VD4gIiebMhfWnP6RQKCV6XPNd5JWsVyFdMAmF3HsMiGKMooXALt7pWiY
         xcowSWMC8z2m/34KSYcVEcHksXCNYMQqLnTv8/c+/AE3QodFgegMKAi1LnJNlRo21B0F
         mUZDLXmM1vIWJp4Ryd4hP3pccEVnKq5QaL2KkIs8Bzjvknx5cdXIpfA4TZweh2ANx2D8
         QI9A==
X-Gm-Message-State: AOAM530qQPwY5WxdNkrW3kEh6GK5kny94VUZQc/aHc3HX/nuNJkCBwC7
	d2I9xM9Wkl0sQfE69IN5hBk=
X-Google-Smtp-Source: ABdhPJwfiYF4mHA4H/ZVUKgDdWYM9v4yXITGNIkKMRFFj2u6HGVFd3YbG9zdc7rsAPj4vSK+80OBjQ==
X-Received: by 2002:a17:907:72ce:b0:6f4:d139:c2b1 with SMTP id du14-20020a17090772ce00b006f4d139c2b1mr3117722ejc.563.1651846211215;
        Fri, 06 May 2022 07:10:11 -0700 (PDT)
Received: from able.fritz.box (p57b0b3fd.dip0.t-ipconnect.de. [87.176.179.253])
        by smtp.gmail.com with ESMTPSA id jx3-20020a170907760300b006f3ef214e22sm1915415ejc.136.2022.05.06.07.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:10:10 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	linaro-mm-sig@lists.linaro.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org
Date: Fri,  6 May 2022 16:10:05 +0200
Message-Id: <20220506141009.18047-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: MOGQN3TBLB5ZRRF5VEVBPCWDM3AJXIXR
X-Message-ID-Hash: MOGQN3TBLB5ZRRF5VEVBPCWDM3AJXIXR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/5] dma-buf: cleanup dma_fence_unwrap selftest v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MOGQN3TBLB5ZRRF5VEVBPCWDM3AJXIXR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHNlbGZ0ZXN0cywgZml4IHRoZSBlcnJvciBoYW5kbGluZywgcmVtb3ZlIHVudXNlZCBmdW5j
dGlvbnMgYW5kIHN0b3ANCmxlYWtpbmcgbWVtb3J5IGluIGZhaWxlZCB0ZXN0cy4NCg0KdjI6IGZp
eCB0aGUgbWVtb3J5IGxlYWsgY29ycmVjdGx5Lg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYv
c3QtZG1hLWZlbmNlLXVud3JhcC5jIHwgNDggKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tDQog
MSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQ0KDQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMNCmluZGV4IDAzOWYwMTZiNTdiZS4uZTIwYzVh
N2RjZmU0IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAu
Yw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYw0KQEAgLTQsMjcg
KzQsMTkgQEANCiAgKiBDb3B5cmlnaHQgKEMpIDIwMjIgQWR2YW5jZWQgTWljcm8gRGV2aWNlcywg
SW5jLg0KICAqLw0KIA0KKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UuaD4NCisjaW5jbHVkZSA8
bGludXgvZG1hLWZlbmNlLWFycmF5Lmg+DQorI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS1jaGFp
bi5oPg0KICNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UtdW53cmFwLmg+DQotI2lmIDANCi0jaW5j
bHVkZSA8bGludXgva2VybmVsLmg+DQotI2luY2x1ZGUgPGxpbnV4L2t0aHJlYWQuaD4NCi0jaW5j
bHVkZSA8bGludXgvbW0uaD4NCi0jaW5jbHVkZSA8bGludXgvc2NoZWQvc2lnbmFsLmg+DQotI2lu
Y2x1ZGUgPGxpbnV4L3NsYWIuaD4NCi0jaW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4NCi0jaW5j
bHVkZSA8bGludXgvcmFuZG9tLmg+DQotI2VuZGlmDQogDQogI2luY2x1ZGUgInNlbGZ0ZXN0Lmgi
DQogDQogI2RlZmluZSBDSEFJTl9TWiAoNCA8PCAxMCkNCiANCi1zdGF0aWMgaW5saW5lIHN0cnVj
dCBtb2NrX2ZlbmNlIHsNCitzdHJ1Y3QgbW9ja19mZW5jZSB7DQogCXN0cnVjdCBkbWFfZmVuY2Ug
YmFzZTsNCiAJc3BpbmxvY2tfdCBsb2NrOw0KLX0gKnRvX21vY2tfZmVuY2Uoc3RydWN0IGRtYV9m
ZW5jZSAqZikgew0KLQlyZXR1cm4gY29udGFpbmVyX29mKGYsIHN0cnVjdCBtb2NrX2ZlbmNlLCBi
YXNlKTsNCi19DQorfTsNCiANCiBzdGF0aWMgY29uc3QgY2hhciAqbW9ja19uYW1lKHN0cnVjdCBk
bWFfZmVuY2UgKmYpDQogew0KQEAgLTQ1LDcgKzM3LDggQEAgc3RhdGljIHN0cnVjdCBkbWFfZmVu
Y2UgKm1vY2tfZmVuY2Uodm9pZCkNCiAJCXJldHVybiBOVUxMOw0KIA0KIAlzcGluX2xvY2tfaW5p
dCgmZi0+bG9jayk7DQotCWRtYV9mZW5jZV9pbml0KCZmLT5iYXNlLCAmbW9ja19vcHMsICZmLT5s
b2NrLCAwLCAwKTsNCisJZG1hX2ZlbmNlX2luaXQoJmYtPmJhc2UsICZtb2NrX29wcywgJmYtPmxv
Y2ssDQorCQkgICAgICAgZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2MoMSksIDEpOw0KIA0KIAlyZXR1
cm4gJmYtPmJhc2U7DQogfQ0KQEAgLTU5LDcgKzUyLDcgQEAgc3RhdGljIHN0cnVjdCBkbWFfZmVu
Y2UgKm1vY2tfYXJyYXkodW5zaWduZWQgaW50IG51bV9mZW5jZXMsIC4uLikNCiANCiAJZmVuY2Vz
ID0ga2NhbGxvYyhudW1fZmVuY2VzLCBzaXplb2YoKmZlbmNlcyksIEdGUF9LRVJORUwpOw0KIAlp
ZiAoIWZlbmNlcykNCi0JCXJldHVybiBOVUxMOw0KKwkJZ290byBlcnJvcl9wdXQ7DQogDQogCXZh
X3N0YXJ0KHZhbGlzdCwgbnVtX2ZlbmNlcyk7DQogCWZvciAoaSA9IDA7IGkgPCBudW1fZmVuY2Vz
OyArK2kpDQpAQCAtNzAsMTMgKzYzLDE3IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlICptb2Nr
X2FycmF5KHVuc2lnbmVkIGludCBudW1fZmVuY2VzLCAuLi4pDQogCQkJCSAgICAgICBkbWFfZmVu
Y2VfY29udGV4dF9hbGxvYygxKSwNCiAJCQkJICAgICAgIDEsIGZhbHNlKTsNCiAJaWYgKCFhcnJh
eSkNCi0JCWdvdG8gY2xlYW51cDsNCisJCWdvdG8gZXJyb3JfZnJlZTsNCiAJcmV0dXJuICZhcnJh
eS0+YmFzZTsNCiANCi1jbGVhbnVwOg0KLQlmb3IgKGkgPSAwOyBpIDwgbnVtX2ZlbmNlczsgKytp
KQ0KLQkJZG1hX2ZlbmNlX3B1dChmZW5jZXNbaV0pOw0KK2Vycm9yX2ZyZWU6DQogCWtmcmVlKGZl
bmNlcyk7DQorDQorZXJyb3JfcHV0Og0KKwl2YV9zdGFydCh2YWxpc3QsIG51bV9mZW5jZXMpOw0K
Kwlmb3IgKGkgPSAwOyBpIDwgbnVtX2ZlbmNlczsgKytpKQ0KKwkJZG1hX2ZlbmNlX3B1dCh2YV9h
cmcodmFsaXN0LCB0eXBlb2YoKmZlbmNlcykpKTsNCisJdmFfZW5kKHZhbGlzdCk7DQogCXJldHVy
biBOVUxMOw0KIH0NCiANCkBAIC0xMTMsNyArMTEwLDYgQEAgc3RhdGljIGludCBzYW5pdHljaGVj
ayh2b2lkICphcmcpDQogCWlmICghY2hhaW4pDQogCQlyZXR1cm4gLUVOT01FTTsNCiANCi0JZG1h
X2ZlbmNlX3NpZ25hbChmKTsNCiAJZG1hX2ZlbmNlX3B1dChjaGFpbik7DQogCXJldHVybiBlcnI7
DQogfQ0KQEAgLTE1NCwxMCArMTUwLDggQEAgc3RhdGljIGludCB1bndyYXBfYXJyYXkodm9pZCAq
YXJnKQ0KIAkJZXJyID0gLUVJTlZBTDsNCiAJfQ0KIA0KLQlkbWFfZmVuY2Vfc2lnbmFsKGYxKTsN
Ci0JZG1hX2ZlbmNlX3NpZ25hbChmMik7DQogCWRtYV9mZW5jZV9wdXQoYXJyYXkpOw0KLQlyZXR1
cm4gMDsNCisJcmV0dXJuIGVycjsNCiB9DQogDQogc3RhdGljIGludCB1bndyYXBfY2hhaW4odm9p
ZCAqYXJnKQ0KQEAgLTE5NiwxMCArMTkwLDggQEAgc3RhdGljIGludCB1bndyYXBfY2hhaW4odm9p
ZCAqYXJnKQ0KIAkJZXJyID0gLUVJTlZBTDsNCiAJfQ0KIA0KLQlkbWFfZmVuY2Vfc2lnbmFsKGYx
KTsNCi0JZG1hX2ZlbmNlX3NpZ25hbChmMik7DQogCWRtYV9mZW5jZV9wdXQoY2hhaW4pOw0KLQly
ZXR1cm4gMDsNCisJcmV0dXJuIGVycjsNCiB9DQogDQogc3RhdGljIGludCB1bndyYXBfY2hhaW5f
YXJyYXkodm9pZCAqYXJnKQ0KQEAgLTI0MiwxMCArMjM0LDggQEAgc3RhdGljIGludCB1bndyYXBf
Y2hhaW5fYXJyYXkodm9pZCAqYXJnKQ0KIAkJZXJyID0gLUVJTlZBTDsNCiAJfQ0KIA0KLQlkbWFf
ZmVuY2Vfc2lnbmFsKGYxKTsNCi0JZG1hX2ZlbmNlX3NpZ25hbChmMik7DQogCWRtYV9mZW5jZV9w
dXQoY2hhaW4pOw0KLQlyZXR1cm4gMDsNCisJcmV0dXJuIGVycjsNCiB9DQogDQogaW50IGRtYV9m
ZW5jZV91bndyYXAodm9pZCkNCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
