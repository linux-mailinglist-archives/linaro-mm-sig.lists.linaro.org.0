Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDF39D22D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 16:59:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 188DB60756
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 14:59:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0B795607EC; Mon, 26 Aug 2019 14:59:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C56BE618B2;
	Mon, 26 Aug 2019 14:57:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D1EC5617FC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C10F56186D; Mon, 26 Aug 2019 14:57:40 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 4E598617FC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:37 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id p17so15629008wrf.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 07:57:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GefcgZIGi5vsG6C57y1gbEiNAKDUmLjbeYvTQElZ2d8=;
 b=KZHgXjkV+Gx96M3OcT7VATaxGGcufjBSkdmKPXRT+DaXlWd5SEkQum6gKpH1Tpc43F
 RWzBWexbhLXE4ndjBKI5KQEnMP09H0tX/cv7C4i2I+Tud0RwCN8U18Ojysi4Bhy6pmON
 hqhF9VsNbMkbMVk0cA7ymyYQk9UN0bKB8HyaT1AlZPa2KfmfZuuUtEm49yy9dB0xBKAS
 EeuVwkQ75KclZNZmXdFAsJWkYeQd2qaDXKRLDgiRo3Mh6w4zMR3jHKjn12ltmlrAicAQ
 laA5e5bOdUuKH/1r0Rh4hX/noDeLI+uOdGdHAHYyJ1dV8T7bxG6IXAI8qjvQI0CKw9RW
 SsjQ==
X-Gm-Message-State: APjAAAVm7NbXNEHE307oBTzAnJvWFyKuMSUaz7aY1wJ5KjNKrgiUW9uq
 /cY9/IMzQoCXBNOep2Pv/1Y=
X-Google-Smtp-Source: APXvYqxbtIvVlf0LU8sBoH1O7i1a5htrmWUBLD1TBbgGDi1pOovTAaMRMU/7OanU/acQYDQTx8LqPw==
X-Received: by 2002:adf:fc87:: with SMTP id g7mr22435677wrr.319.1566831456491; 
 Mon, 26 Aug 2019 07:57:36 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:b0e3:7a12:98e5:ca6])
 by smtp.gmail.com with ESMTPSA id z8sm9865624wmi.7.2019.08.26.07.57.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 07:57:36 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Mon, 26 Aug 2019 16:57:26 +0200
Message-Id: <20190826145731.1725-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826145731.1725-1-christian.koenig@amd.com>
References: <20190826145731.1725-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 4/9] dma-buf: add dma_fence_array_recycle v2
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VHJ5IHRvIHJlY3ljbGUgYW4gZG1hX2ZlbmNlX2FycmF5IG9iamVjdCBieSBkcm9wcGluZyB0aGUg
bGFzdApyZWZlcmVuY2UgdG8gaXQgd2l0aG91dCBmcmVlaW5nIGl0LgoKdjI6IGZpeCB0aGUgV0FS
Tl9PTl9PTkNFIHJlY3ljbGUgdGVzdCBhZnRlciByZWJhc2UKClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLWFycmF5LmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBp
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oICAgfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQs
IDI5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LWFycmF5LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKaW5kZXggNDY2NDYw
N2YwYWJjLi5lYTc3MTNiNDA1MTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UtYXJyYXkuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKQEAgLTE5
OCw2ICsxOTgsMzQgQEAgdm9pZCBkbWFfZmVuY2VfYXJyYXlfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNl
X2FycmF5ICphcnJheSwgdTY0IGNvbnRleHQsCiB9CiBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9h
cnJheV9pbml0KTsKIAorLyoqCisgKiBkbWFfZmVuY2VfYXJyYXlfcmV1c2UgLSBkdW1teSBmb3Ig
ZG1hX2ZlbmNlX2FycmF5X3JlY3ljbGUKKyAqLworc3RhdGljIHZvaWQgZG1hX2ZlbmNlX2FycmF5
X3JldXNlKHN0cnVjdCBrcmVmICprcmVmKQoreworCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFy
cmF5ID0gY29udGFpbmVyX29mKGtyZWYsIHR5cGVvZigqYXJyYXkpLAorCQkJCQkJICAgICBiYXNl
LnJlZmNvdW50KTsKKworCWlmICghdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklU
LCAmYXJyYXktPmJhc2UuZmxhZ3MpKQorCQlXQVJOX09OX09OQ0UoIWxpc3RfZW1wdHkoJmFycmF5
LT5iYXNlLmNiX2xpc3QpKTsKK30KKworLyoqCisgKiBkbWFfZmVuY2VfYXJyYXlfdHJ5X3JldXNl
IC0gdHJ5IHRvIHJldXNlIGEgZG1hX2ZlbmNlX2FycmF5IG9iamVjdAorICogQGFycmF5OiBhcnJh
eSB3aGljaCB3ZSBzaG91bGQgdHJ5IHRvIHJldXNlCisgKgorICogVHJ5IHRvIGRyb3AgdGhlIGxh
c3QgcmVmZXJlbmNlIHRvIGFuIGRtYV9mZW5jZV9hcnJheSBhbmQgc28gYWxsb3cgaXQgdG8gYmUK
KyAqIHJldXNlZC4KKyAqCisgKiBSZXR1cm5zIHRydWUgaWYgdGhpcyB3YXMgdGhlIGxhc3QgcmVm
ZXJlbmNlIHRoZW4gY2FsbGVyIGNhbiByZXVzZSB0aGUgYXJyYXkuCisgKiBJbiB0aGlzIGNhc2Ug
dGhlIGFycmF5IGlzIHJlc2V0IGludG8gYSBzdGF0ZSB3aGVyZSBpdCBjYW4gYmUgdXNlZCB3aXRo
CisgKiBkbWFfZmVuY2VfYXJyYXlfaW5pdCBhZ2Fpbi4KKyAqLworYm9vbCBkbWFfZmVuY2VfYXJy
YXlfcmVjeWNsZShzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheSkKK3sKKwlyZXR1cm4ga3Jl
Zl9wdXQoJmFycmF5LT5iYXNlLnJlZmNvdW50LCBkbWFfZmVuY2VfYXJyYXlfcmV1c2UpOworfQor
CiAvKioKICAqIGRtYV9mZW5jZV9hcnJheV9mcmVlIC0gZnJlZSBhIGRtYV9mZW5jZV9hcnJheSBv
YmplY3QKICAqIEBhcnJheTogdGhlIG9iamVjdCB0byBmcmVlCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXku
aAppbmRleCBiZTg1YzA2YjUyNGQuLjM1ZDFkMWU3YzkzYiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtYXJyYXkuaAorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJh
eS5oCkBAIC05Myw2ICs5Myw3IEBAIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmRtYV9mZW5jZV9h
cnJheV9hbGxvYyhpbnQgbnVtX2ZlbmNlcywKIAkJCQkJICAgICAgc3RydWN0IGRtYV9mZW5jZSAq
KmZlbmNlcyk7CiB2b2lkIGRtYV9mZW5jZV9hcnJheV9pbml0KHN0cnVjdCBkbWFfZmVuY2VfYXJy
YXkgKmFycmF5LCB1NjQgY29udGV4dCwKIAkJCSAgdW5zaWduZWQgaW50IHNlcW5vLCBib29sIHNp
Z25hbF9vbl9hbnkpOworYm9vbCBkbWFfZmVuY2VfYXJyYXlfcmVjeWNsZShzdHJ1Y3QgZG1hX2Zl
bmNlX2FycmF5ICphcnJheSk7CiB2b2lkIGRtYV9mZW5jZV9hcnJheV9mcmVlKHN0cnVjdCBkbWFf
ZmVuY2VfYXJyYXkgKmFycmF5KTsKIAogLyoqCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
