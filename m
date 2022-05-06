Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2EE51D773
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 14:19:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 555F63EBB2
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 12:19:47 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id CFFDC480A4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 May 2022 12:19:27 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id d6so8480758ede.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 06 May 2022 05:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uor/OSN0V9/XbNXb0bXHUuU21mNXIEqrRD93g0dLk70=;
        b=YqfMDIJsa/maZ7Sx2H2c73CZbDo+r1bNAPaYbBMm/Zmb44ecutTACLa+U09vvnWaWj
         VH83m7uEOPZprJMzps5O1LbdTtsDKBEl3ox/DMdYBjtWFpoz0aH8Q7a/ni8+5zIBb0/d
         j01a/ZK1tiGtmVRorxwVkc55jXTbtY1oadwr3V/Ku4eE9rNL42+OK5+D+DbVIPMrl6IJ
         RB6Ajc8CS+yvWwe89Y2Esuf+mDV4XpF2w4zJyu5ErCTsLyrm9tYebqDL5AAKwRi6w87d
         N0+E5cLKDfYz4iHiNf24uFAK9Ih9jenrl2uObPzXNaWeZBL0C/CyE+DhjHb07rTv718X
         ms2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uor/OSN0V9/XbNXb0bXHUuU21mNXIEqrRD93g0dLk70=;
        b=IiW/zHbRCDvXqwbG7Cg3uym7e2Md9Ss1XuEaLry26xMj1WfKbCYkN0YH5nZSfAyaDI
         56mgbZcw3HwYbjM/mpIARj09Isdl+0xFqp4kSjgAt97qr1SUerBhymJF9LFibwRq1WK/
         HYx3lhusv/56kEGab6LK+VHW7TnJ9L10EbGhWKSp3m/Je959Wr5xygZzrfi5H4i8tBeU
         yYrVovTgWiJ40C4wWX9XGvS9c9/bm0ZrnHfQvD2MgSPQS4ri5wj0bDuxSG3BmRUrDpCI
         Rkc/kW0CC3ln0St2nzd4//ITmfqH1S+QogvaPnM39H8bzowxfRPKt02FiAqvQJi+Ti3S
         rfWw==
X-Gm-Message-State: AOAM5320aT6wOd/Yc/4wXotiDOKcRkCZIBkuOTpMfWXdROtx80eZVl9U
	Q3IvQ9yb9N2A4yDVB9gTt3w=
X-Google-Smtp-Source: ABdhPJykSWzOReW28boKFO2NTbByoPPnRmZdvluaIq3KMLMOpDP+vP6FV0IEt2sEq5NAipefuQXccA==
X-Received: by 2002:a05:6402:4383:b0:427:b18b:a1b with SMTP id o3-20020a056402438300b00427b18b0a1bmr3233444edc.80.1651839566927;
        Fri, 06 May 2022 05:19:26 -0700 (PDT)
Received: from able.fritz.box (p57b0b3fd.dip0.t-ipconnect.de. [87.176.179.253])
        by smtp.gmail.com with ESMTPSA id jl27-20020a17090775db00b006f3ef214e63sm1874445ejc.201.2022.05.06.05.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 05:19:26 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	linaro-mm-sig@lists.linaro.org
Date: Fri,  6 May 2022 14:19:20 +0200
Message-Id: <20220506121920.1410-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506121920.1410-1-christian.koenig@amd.com>
References: <20220506121920.1410-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: PI4OFNEOCBVUHGH76NAXP35NC2OKQ5YW
X-Message-ID-Hash: PI4OFNEOCBVUHGH76NAXP35NC2OKQ5YW
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/5] drm: use dma_fence_unwrap_merge() in drm_syncobj
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PI4OFNEOCBVUHGH76NAXP35NC2OKQ5YW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHVud3JhcCBtZXJnZSBmdW5jdGlvbiBpcyBub3cgaW50ZW5kZWQgZm9yIHRoaXMgdXNlIGNh
c2UuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NClJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgfCA1NyArKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDUwIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9z
eW5jb2JqLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KaW5kZXggN2U0OGRjZDFi
ZWU0Li5iYmFkOWU0Njk2ZTcgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNv
YmouYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCkBAIC0xODQsNiArMTg0
LDcgQEANCiAgKi8NCiANCiAjaW5jbHVkZSA8bGludXgvYW5vbl9pbm9kZXMuaD4NCisjaW5jbHVk
ZSA8bGludXgvZG1hLWZlbmNlLXVud3JhcC5oPg0KICNpbmNsdWRlIDxsaW51eC9maWxlLmg+DQog
I2luY2x1ZGUgPGxpbnV4L2ZzLmg+DQogI2luY2x1ZGUgPGxpbnV4L3NjaGVkL3NpZ25hbC5oPg0K
QEAgLTg1Myw1NyArODU0LDEyIEBAIGRybV9zeW5jb2JqX2ZkX3RvX2hhbmRsZV9pb2N0bChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KIAkJCQkJJmFyZ3MtPmhhbmRsZSk7DQog
fQ0KIA0KLQ0KLS8qDQotICogVHJ5IHRvIGZsYXR0ZW4gYSBkbWFfZmVuY2VfY2hhaW4gaW50byBh
IGRtYV9mZW5jZV9hcnJheSBzbyB0aGF0IGl0IGNhbiBiZQ0KLSAqIGFkZGVkIGFzIHRpbWVsaW5l
IGZlbmNlIHRvIGEgY2hhaW4gYWdhaW4uDQotICovDQotc3RhdGljIGludCBkcm1fc3luY29ial9m
bGF0dGVuX2NoYWluKHN0cnVjdCBkbWFfZmVuY2UgKipmKQ0KLXsNCi0Jc3RydWN0IGRtYV9mZW5j
ZV9jaGFpbiAqY2hhaW4gPSB0b19kbWFfZmVuY2VfY2hhaW4oKmYpOw0KLQlzdHJ1Y3QgZG1hX2Zl
bmNlICp0bXAsICoqZmVuY2VzOw0KLQlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheTsNCi0J
dW5zaWduZWQgaW50IGNvdW50Ow0KLQ0KLQlpZiAoIWNoYWluKQ0KLQkJcmV0dXJuIDA7DQotDQot
CWNvdW50ID0gMDsNCi0JZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoKHRtcCwgJmNoYWluLT5iYXNl
KQ0KLQkJKytjb3VudDsNCi0NCi0JZmVuY2VzID0ga21hbGxvY19hcnJheShjb3VudCwgc2l6ZW9m
KCpmZW5jZXMpLCBHRlBfS0VSTkVMKTsNCi0JaWYgKCFmZW5jZXMpDQotCQlyZXR1cm4gLUVOT01F
TTsNCi0NCi0JY291bnQgPSAwOw0KLQlkbWFfZmVuY2VfY2hhaW5fZm9yX2VhY2godG1wLCAmY2hh
aW4tPmJhc2UpDQotCQlmZW5jZXNbY291bnQrK10gPSBkbWFfZmVuY2VfZ2V0KHRtcCk7DQotDQot
CWFycmF5ID0gZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZShjb3VudCwgZmVuY2VzLA0KLQkJCQkgICAg
ICAgZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2MoMSksDQotCQkJCSAgICAgICAxLCBmYWxzZSk7DQot
CWlmICghYXJyYXkpDQotCQlnb3RvIGZyZWVfZmVuY2VzOw0KLQ0KLQlkbWFfZmVuY2VfcHV0KCpm
KTsNCi0JKmYgPSAmYXJyYXktPmJhc2U7DQotCXJldHVybiAwOw0KLQ0KLWZyZWVfZmVuY2VzOg0K
LQl3aGlsZSAoY291bnQtLSkNCi0JCWRtYV9mZW5jZV9wdXQoZmVuY2VzW2NvdW50XSk7DQotDQot
CWtmcmVlKGZlbmNlcyk7DQotCXJldHVybiAtRU5PTUVNOw0KLX0NCi0NCiBzdGF0aWMgaW50IGRy
bV9zeW5jb2JqX3RyYW5zZmVyX3RvX3RpbWVsaW5lKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2
YXRlLA0KIAkJCQkJICAgIHN0cnVjdCBkcm1fc3luY29ial90cmFuc2ZlciAqYXJncykNCiB7DQog
CXN0cnVjdCBkcm1fc3luY29iaiAqdGltZWxpbmVfc3luY29iaiA9IE5VTEw7DQorCXN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCAqdG1wOw0KIAlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbjsN
Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7DQogCWludCByZXQ7DQogDQogCXRpbWVsaW5lX3N5
bmNvYmogPSBkcm1fc3luY29ial9maW5kKGZpbGVfcHJpdmF0ZSwgYXJncy0+ZHN0X2hhbmRsZSk7
DQpAQCAtOTEyLDEzICs4NjgsMTQgQEAgc3RhdGljIGludCBkcm1fc3luY29ial90cmFuc2Zlcl90
b190aW1lbGluZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCiAJfQ0KIAlyZXQgPSBk
cm1fc3luY29ial9maW5kX2ZlbmNlKGZpbGVfcHJpdmF0ZSwgYXJncy0+c3JjX2hhbmRsZSwNCiAJ
CQkJICAgICBhcmdzLT5zcmNfcG9pbnQsIGFyZ3MtPmZsYWdzLA0KLQkJCQkgICAgICZmZW5jZSk7
DQorCQkJCSAgICAgJnRtcCk7DQogCWlmIChyZXQpDQogCQlnb3RvIGVycl9wdXRfdGltZWxpbmU7
DQogDQotCXJldCA9IGRybV9zeW5jb2JqX2ZsYXR0ZW5fY2hhaW4oJmZlbmNlKTsNCi0JaWYgKHJl
dCkNCi0JCWdvdG8gZXJyX2ZyZWVfZmVuY2U7DQorCWZlbmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9t
ZXJnZSh0bXApOw0KKwlkbWFfZmVuY2VfcHV0KHRtcCk7DQorCWlmICghZmVuY2UpDQorCQlnb3Rv
IGVycl9wdXRfdGltZWxpbmU7DQogDQogCWNoYWluID0gZG1hX2ZlbmNlX2NoYWluX2FsbG9jKCk7
DQogCWlmICghY2hhaW4pIHsNCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
