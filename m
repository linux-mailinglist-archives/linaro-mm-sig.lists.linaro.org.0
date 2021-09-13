Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D7D408C7A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D0BAB62CF6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CDB2469CE2; Mon, 13 Sep 2021 13:18:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 283FF69D42;
	Mon, 13 Sep 2021 13:18:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8665866BF0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7A50563425; Mon, 13 Sep 2021 13:17:41 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 0F8B562EA6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:37 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id x6so14629469wrv.13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yu+uANfSVtr9RYJDKCjIWM/agN/tBH1C9/EMJmqSKvI=;
 b=a+/bhKH0jW9epgYrHnpIdEsBMYm0jm1t0FDhEk9F7lXVcqgduaiSs+VnX8Np9p6AcU
 JvuZPm1F3lpM1dMVEcXSpeFaAeku0FYps9n7Zy7LIlAAr3rKIkLqgy/E46+CCIIFOu1+
 QChFR2z6JMS22sm5OdOYt834Y6HQXYt3z5k/Cnw1a0peu3zrKNoZNVrL4Mffaq/NFdu+
 7HXic7NNPAnaHDW5uTwUKceMM0UZGBcoyMsuTaYTrpxtRkVHg+xV5Xw8L69xuBtzQJQU
 rmKt57SYv1S5LrZETWQCTrp1s3m6ifWTysLqX+8BZwUoUYFc5Oc67bBx+18SUEspN+xo
 XcaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yu+uANfSVtr9RYJDKCjIWM/agN/tBH1C9/EMJmqSKvI=;
 b=CxVLL/rPDC1UwxrdSka1H9pTRvfCYbZqqT8p7yoAv3Etq8zPE8iGYVCwT19cKk9k1T
 v6vTxrXjeShnNBnsGPlsWxbit72qErrntTH5HEO4k6rOI4YQbyqEIYGy210nJfRxv9Af
 QrO9SotuZdrcOgD94TxXSmme9igKPA7FdzuaItPAhm7LqdywIBcK489fkmJH9wa371GX
 agCrrf6VucEYsjZ/IE6ay9DJtYW7wAvCCe79hYKjj0vGd2tGeMYVlafEps/GvX1FC+Vl
 Be1JUJTguwrAJJjBHo0LjsAu/Sqh1UsjifLlN3h06yaskf+RSWnLI4QX3eNhEflQq9NN
 kdJA==
X-Gm-Message-State: AOAM5333AqkGti+Z7kJDUvmYT2/WMo3MHOfmffNsyg8oDFGM89wD3hDh
 z7y+WoBObF1mjX8cwpJdl33vQv/RIfMwWpBA
X-Google-Smtp-Source: ABdhPJydXs0asWZpyrRJrMmjsSDul5X8jlQvC2GehIIYBg8yV+HU7Q1UFpMBJjKJ4JU1wkLZ+baPQA==
X-Received: by 2002:a5d:47a4:: with SMTP id 4mr12693618wrb.329.1631539055735; 
 Mon, 13 Sep 2021 06:17:35 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:35 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:59 +0200
Message-Id: <20210913131707.45639-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 18/26] drm/i915: use new iterator in
 i915_gem_object_last_write_engine
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBpcyBtYXliZSBldmVuIGEgZml4IHNpbmNlIHRoZSBSQ1UgdXNhZ2UgaGVyZSBsb29rcyBp
bmNvcnJlY3QuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5oIHwgMTUgKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3QuaAppbmRleCBlOWVlY2ViZjVjOWQuLjMzNDM5MjJhZjRkNiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtNTAwLDE2ICs1MDAsMTUgQEAgc3RhdGlj
IGlubGluZSBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICoKIGk5MTVfZ2VtX29iamVjdF9sYXN0X3dy
aXRlX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewogCXN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IE5VTEw7CisJc3RydWN0IGRtYV9yZXN2X2N1cnNvciBj
dXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAKLQlyY3VfcmVhZF9sb2NrKCk7Ci0J
ZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPmJhc2UucmVzdik7Ci0JcmN1
X3JlYWRfdW5sb2NrKCk7Ci0KLQlpZiAoZmVuY2UgJiYgZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2Up
ICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQotCQllbmdpbmUgPSB0b19yZXF1ZXN0
KGZlbmNlKS0+ZW5naW5lOwotCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCisJZG1hX3Jlc3ZfZm9y
X2VhY2hfZmVuY2VfdW5sb2NrZWQob2JqLT5iYXNlLnJlc3YsICZjdXJzb3IsIGZhbHNlLAorCQkJ
CQkgZmVuY2UpIHsKKwkJaWYgKGZlbmNlICYmIGRtYV9mZW5jZV9pc19pOTE1KGZlbmNlKSAmJgor
CQkgICAgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpCisJCQllbmdpbmUgPSB0b19yZXF1
ZXN0KGZlbmNlKS0+ZW5naW5lOworCX0KIAlyZXR1cm4gZW5naW5lOwogfQogCi0tIAoyLjI1LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
