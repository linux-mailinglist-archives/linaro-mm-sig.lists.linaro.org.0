Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EB77C40F7F5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:37:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E9956362A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:37:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 934E064AE0; Fri, 17 Sep 2021 12:37:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5792369D17;
	Fri, 17 Sep 2021 12:36:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6D46569D0A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D954169CF7; Fri, 17 Sep 2021 12:35:40 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by lists.linaro.org (Postfix) with ESMTPS id 0F6B869D06
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:34 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 f62-20020a1c1f41000000b0030b42643f72so1776986wmf.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j7dWmZ5SavrHHTbVPyl3pWrCBr/RL2bOHTMMTnJ649k=;
 b=DvS8f4lkWP+ukbTxyx8NLbmQo0JecP0yTi8V9mwXk8o/IbJTNYe2YlDalIWzkkzPUw
 04+S2IxOxKqG1cfDvcj3sEGgbOCb291u4pgMCfHuRqCVqUG8OoCwrsAbfoR/BR8IJN7z
 g9E9N681nC+EN7/SGXphQws8tHfev5dO8iyAgUq5vQol3HZodnKlyXikemRwLbfkjmd4
 AjQQaIGoSUiEbLxMScL5evZgyevkbC1uRjJXdRgPQ0Al8ohm0ldx5WcB0ebTbS3HiKkJ
 aLqd6Fj6y7lK2tBtIBe/ZN6pznqMKkycu1wWp3NfPEeiok7Ge0yHY+cvWnC8jTEVCoTq
 ktpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j7dWmZ5SavrHHTbVPyl3pWrCBr/RL2bOHTMMTnJ649k=;
 b=3Cg8Xm7DCOcc6xJRgsdbs3HyOen/ZLOtxZVVEaKboQ7qMCdxPwqjzVUSazf+zwxC5V
 iu4s3+8RLAlOCkGWtvFNltBeAbXm3VNDSjye4HkR5+1s5dYiJiXLfyCUJpcbCu2zLoft
 KgJ85eHhSbuEr4AUxjZBi6dulzFsYJcd0o1F3tSd83zCsbmkBEJbQdaVOsFOfd05vsfj
 e45ar82nKMXGmKjZf+JXLW69JfwruUTfViQHiXPNFBokdRPxXAfVdABjS1TItN8RIDgZ
 fH54dt0THovPhTfg6mEP4CmxUmGFsMAyfc2fi3lAFidoyjg54g9iKE75vFrpujOf8wZd
 IS/w==
X-Gm-Message-State: AOAM530DkFizYZz1gmXMENsitExHAipuBY3IBC7TL+Mqa3MwRElPFzb3
 M/7chWb8igHP0gF8LY3j7vX20h3qPUU=
X-Google-Smtp-Source: ABdhPJyUPm27pFXNdl4Rlzw33QBSbUFZ4QLV1vHG8Ty6t+fL7l1sHDIbj5v4mOUBXGv6CbVZZrTv8g==
X-Received: by 2002:a05:600c:4154:: with SMTP id
 h20mr14745069wmm.172.1631882133129; 
 Fri, 17 Sep 2021 05:35:33 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:32 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:07 +0200
Message-Id: <20210917123513.1106-21-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 20/26] drm: use new iterator in
 drm_gem_fence_array_add_implicit v2
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9j
aygpL3VubG9jaygpCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyB8IDM0ICsrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRp
b25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwppbmRleCAwOWM4MjAwNDU4NTkuLmMy
YzQxYjY2OGY0MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCkBAIC0xMzQwLDMxICsxMzQwLDIxIEBAIGludCBkcm1f
Z2VtX2ZlbmNlX2FycmF5X2FkZF9pbXBsaWNpdChzdHJ1Y3QgeGFycmF5ICpmZW5jZV9hcnJheSwK
IAkJCQkgICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAogCQkJCSAgICAgYm9vbCB3cml0
ZSkKIHsKLQlpbnQgcmV0OwotCXN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXM7Ci0JdW5zaWduZWQg
aW50IGksIGZlbmNlX2NvdW50OwotCi0JaWYgKCF3cml0ZSkgewotCQlzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSA9Ci0JCQlkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPnJlc3YpOwotCi0J
CXJldHVybiBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZChmZW5jZV9hcnJheSwgZmVuY2UpOwotCX0K
LQotCXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXMob2JqLT5yZXN2LCBOVUxMLAotCQkJCQkJJmZl
bmNlX2NvdW50LCAmZmVuY2VzKTsKLQlpZiAocmV0IHx8ICFmZW5jZV9jb3VudCkKLQkJcmV0dXJu
IHJldDsKLQotCWZvciAoaSA9IDA7IGkgPCBmZW5jZV9jb3VudDsgaSsrKSB7Ci0JCXJldCA9IGRy
bV9nZW1fZmVuY2VfYXJyYXlfYWRkKGZlbmNlX2FycmF5LCBmZW5jZXNbaV0pOworCXN0cnVjdCBk
bWFfcmVzdl9pdGVyIGN1cnNvcjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwlpbnQgcmV0
ID0gMDsKKworCXJjdV9yZWFkX2xvY2soKTsKKwlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3Is
IG9iai0+cmVzdiwgd3JpdGUpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZj
dXJzb3IsIGZlbmNlKSB7CisJCXJjdV9yZWFkX3VubG9jaygpOworCQlyZXQgPSBkcm1fZ2VtX2Zl
bmNlX2FycmF5X2FkZChmZW5jZV9hcnJheSwgZmVuY2UpOworCQlyY3VfcmVhZF9sb2NrKCk7CiAJ
CWlmIChyZXQpCiAJCQlicmVhazsKIAl9Ci0KLQlmb3IgKDsgaSA8IGZlbmNlX2NvdW50OyBpKysp
Ci0JCWRtYV9mZW5jZV9wdXQoZmVuY2VzW2ldKTsKLQlrZnJlZShmZW5jZXMpOworCWRtYV9yZXN2
X2l0ZXJfZW5kKCZjdXJzb3IpOworCXJjdV9yZWFkX3VubG9jaygpOwogCXJldHVybiByZXQ7CiB9
CiBFWFBPUlRfU1lNQk9MKGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0KTsKLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
