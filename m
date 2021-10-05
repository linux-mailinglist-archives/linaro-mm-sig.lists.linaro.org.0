Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F1642256F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:40:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69D7560B35
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:40:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3714660561; Tue,  5 Oct 2021 11:39:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF5EE6070F;
	Tue,  5 Oct 2021 11:39:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4E95D60C29
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 802DD60B23; Tue,  5 Oct 2021 11:38:10 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 967F760A5F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:06 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id j8so6360063wro.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=99i5D3wyL80PzFY23pT70i10IrSlrn1OjZ/9oRLQj94=;
 b=HC0YUY7zostVVN6Uj/chvxuJpIrKKhTM3znTwTO6/QPx6LPdCN+6X6rDUjhM1/tt4a
 FiZV984VSAYawnWNeybqLyxlheeqH4dU79pmqJP9Js0CrRJxO+6RybK6NWy8KPi9Yp1c
 sPRUYFFRQlILyWRBZUaM36nc8+faJoXTV0RjyeRoWxXVr7NSqNKifbro7wrggy45TW/H
 nYtP4aQa9vj7Y78mdoog7KyOqKUeatEJPhJyQ7On5JcCrE0gcbXiG99hrUmgWvkbhdM/
 a4giukIvX9eDIuQQJb9xfvVtRfTOU9gid0IYuEY1DictnHP4cklGzVs7B/3Pihd6aDck
 /RGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=99i5D3wyL80PzFY23pT70i10IrSlrn1OjZ/9oRLQj94=;
 b=pHtukKjSO4+iZow4rpqqFnH/AEl06BSdp3Kp7hZGuyq07fLD/ngkU0WFDQly4jYaa6
 28YbUe/usN4fKgawy01XaL0iJhnWk/zvCZsFO9SWJsjri68yQzWOkCVQTnA6OsPK4Owu
 OVVSgFe1ZzKDlWYn6uD4LiYUf3DfnlPeUm3oNvKhjkO88ZLd9J9zkUQ5vSX12IkqVL+s
 u08Jt3Y7Hjze8d37dEw4KgQY3gVJooHXR4KatjJx4mHDUEaKsbAS2w4tD54FMHd650On
 UR9ja3aXYoIjUEULwJhZpEiIIYv1XEB2gDb4bR7WpF5C13WhSFO2hyN1uBOLchhcUr0q
 ihvA==
X-Gm-Message-State: AOAM531B23svi5eJOMQHJ2Yh5i0OUbM1/qKu1eE64eXuj8EyqjXObrfr
 OESkYnjhJFGKwoMW6CzLYGol9DMRoAc=
X-Google-Smtp-Source: ABdhPJxoIw+5xj4/957H3iLKItAuRkDyREWwpI72tdDYTCwpNUfsh8nl5b0khPgnl2+T0LZwN8Zw+A==
X-Received: by 2002:adf:f507:: with SMTP id q7mr21072954wro.7.1633433885717;
 Tue, 05 Oct 2021 04:38:05 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:05 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:37 +0200
Message-Id: <20211005113742.1101-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 23/28] drm: use new iterator in
 drm_gem_fence_array_add_implicit v3
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9j
aygpL3VubG9jaygpCnYzOiBzd2l0Y2ggdG8gbG9ja2VkIHZlcnNpb24KClNpZ25lZC1vZmYtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KUmV2aWV3ZWQtYnk6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2RybV9nZW0uYyB8IDI2ICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwppbmRl
eCAwOWM4MjAwNDU4NTkuLjRkY2RlYzY0ODdiYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2RybV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCkBAIC0xMzQwLDMxICsx
MzQwLDE1IEBAIGludCBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZF9pbXBsaWNpdChzdHJ1Y3QgeGFy
cmF5ICpmZW5jZV9hcnJheSwKIAkJCQkgICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAog
CQkJCSAgICAgYm9vbCB3cml0ZSkKIHsKLQlpbnQgcmV0OwotCXN0cnVjdCBkbWFfZmVuY2UgKipm
ZW5jZXM7Ci0JdW5zaWduZWQgaW50IGksIGZlbmNlX2NvdW50OwotCi0JaWYgKCF3cml0ZSkgewot
CQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9Ci0JCQlkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tl
ZChvYmotPnJlc3YpOwotCi0JCXJldHVybiBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZChmZW5jZV9h
cnJheSwgZmVuY2UpOwotCX0KKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2U7CisJaW50IHJldCA9IDA7CiAKLQlyZXQgPSBkbWFfcmVzdl9nZXRf
ZmVuY2VzKG9iai0+cmVzdiwgTlVMTCwKLQkJCQkJCSZmZW5jZV9jb3VudCwgJmZlbmNlcyk7Ci0J
aWYgKHJldCB8fCAhZmVuY2VfY291bnQpCi0JCXJldHVybiByZXQ7Ci0KLQlmb3IgKGkgPSAwOyBp
IDwgZmVuY2VfY291bnQ7IGkrKykgewotCQlyZXQgPSBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZChm
ZW5jZV9hcnJheSwgZmVuY2VzW2ldKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29y
LCBvYmotPnJlc3YsIHdyaXRlLCBmZW5jZSkgeworCQlyZXQgPSBkcm1fZ2VtX2ZlbmNlX2FycmF5
X2FkZChmZW5jZV9hcnJheSwgZmVuY2UpOwogCQlpZiAocmV0KQogCQkJYnJlYWs7CiAJfQotCi0J
Zm9yICg7IGkgPCBmZW5jZV9jb3VudDsgaSsrKQotCQlkbWFfZmVuY2VfcHV0KGZlbmNlc1tpXSk7
Ci0Ja2ZyZWUoZmVuY2VzKTsKIAlyZXR1cm4gcmV0OwogfQogRVhQT1JUX1NZTUJPTChkcm1fZ2Vt
X2ZlbmNlX2FycmF5X2FkZF9pbXBsaWNpdCk7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
