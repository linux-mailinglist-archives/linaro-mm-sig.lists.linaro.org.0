Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D30E63A9500
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 10:27:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD01C63527
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 08:27:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B8FD36600D; Wed, 16 Jun 2021 08:27:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08BC3634FF;
	Wed, 16 Jun 2021 08:27:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 086A3634FF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ED37D63542; Wed, 16 Jun 2021 08:27:07 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by lists.linaro.org (Postfix) with ESMTPS id BB19960A09
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:04 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id n20so1536182edv.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 01:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=eOLQYHUi8EbWMSyj8fpL7+TUOhuUkdVsm2sbvIBW7rQ=;
 b=peIJ6pH3RtosgHbcBzthWIHp5Ht3/i9wko21RYQ4Wwjat8wwNDxFQLd+PS9YmzbNn6
 zYW9IB3T/spJ9QbFwbV1eQFf0KyS1qSyk/N2KYypvl3q+WP6vULhFB6zQ/r4/8pBgIlx
 nCD3ORHu2xcgasBZuy2uKg9TdsycDRBe0Ooqre8wVRqK27vy9bx/meJJciYH9ebkUC61
 7CdfbPXBFbuzxTxe7HGoqdktglROg90cs7h7L1O/vT1vHc/Tp4AIPeMeQ/Gi/jd/8BS6
 wilmsl8Et949y7ZreBxhqO+RmJgtPtm+V3RK4bpOAziaE/HSriApWjAfJNqWKk3OOzDB
 c4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eOLQYHUi8EbWMSyj8fpL7+TUOhuUkdVsm2sbvIBW7rQ=;
 b=RKdRbkvmkUneaZEdCU4yCMsPlepuPJwJdM6SFpdgkBIi03Gl5sbh+LSmyi+dKG38Tw
 60LbFnWynJY4YcbnaL3oUG6q3X5fa4803AzG0ZrWF5VenHsso6OJEg/6UGQqyg67D4yO
 dWHdMY2f5y1aOUNPZAQAD3P3V2xB6bCAKYBeRVjhNnZWNWM2DGBuq4ZfOeHNeyRORrwb
 /Lc/6RZdRCYy11rWbe3DHPGvNFWFW4JB/xNafI6dWdTKorzMLUdfsqlfBz4hSFzCVl0K
 6ShGeZIyT4y3uLQJ7/3+Aey7ZQWlyis839TItxzZwpQpQFy42WEl/t08UhFYrPf8fe2F
 rwFA==
X-Gm-Message-State: AOAM530u+1ydrHZpC70f+1U9mv6bSlCEtpNo5yU7qUOb7Q8FzVx+hIG2
 O63bnfwfB0/2+V1wT7jTBpc=
X-Google-Smtp-Source: ABdhPJxTFpqW21OrNereNEfws2tTVm4Wn0Se9rWNC+9t5y4vIFlD5DkHnDgU/63ucoG65cOJGMdm8A==
X-Received: by 2002:a05:6402:54f:: with SMTP id
 i15mr2671173edx.339.1623832023875; 
 Wed, 16 Jun 2021 01:27:03 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8b88:17a4:582b:121f])
 by smtp.gmail.com with ESMTPSA id v7sm1152639edx.38.2021.06.16.01.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 01:27:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
Date: Wed, 16 Jun 2021 10:26:54 +0200
Message-Id: <20210616082655.111001-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210616082655.111001-1-christian.koenig@amd.com>
References: <20210616082655.111001-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 6/7] drm/amdgpu: drop workaround for adding
 page table clears as shared fence
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

V2Ugbm8gbG9uZ2VyIG5lZWQgdG8gYWRkIHRoZSBleGNsdXNpdmUgZmVuY2UgYXMgc2hhcmVkIGZl
bmNlIGFzCndlbGxkcm0vYW1kZ3B1OiBkcm9wIHdvcmthcm91bmQgZm9yIGFkZGluZyBwYWdlIHRh
YmxlIGNsZWFycyBhcyBzaGFyZWQKZmVuY2UKCldlIG5vIGxvbmdlciBuZWVkIHRvIGFkZCB0aGUg
ZXhjbHVzaXZlIGZlbmNlIGFzIHNoYXJlZCBmZW5jZSBhcyB3ZWxsLi4KClNpZ25lZC1vZmYtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMgfCA4ICstLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2dlbS5jCmluZGV4IDA3ODBlOGQxODk5Mi4uZDdiYWEyMDdmMzkxIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2dlbS5jCkBAIC0yMDcsNyArMjA3LDcgQEAg
c3RhdGljIHZvaWQgYW1kZ3B1X2dlbV9vYmplY3RfY2xvc2Uoc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmosCiAJSU5JVF9MSVNUX0hFQUQoJmR1cGxpY2F0ZXMpOwogCiAJdHYuYm8gPSAmYm8tPnRi
bzsKLQl0di5udW1fc2hhcmVkID0gMjsKKwl0di5udW1fc2hhcmVkID0gMTsKIAlsaXN0X2FkZCgm
dHYuaGVhZCwgJmxpc3QpOwogCiAJYW1kZ3B1X3ZtX2dldF9wZF9ibyh2bSwgJmxpc3QsICZ2bV9w
ZCk7CkBAIC0yMjYsMTIgKzIyNiw2IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9nZW1fb2JqZWN0X2Ns
b3NlKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAogCWlmICghYW1kZ3B1X3ZtX3JlYWR5KHZt
KSkKIAkJZ290byBvdXRfdW5sb2NrOwogCi0JZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKGJv
LT50Ym8uYmFzZS5yZXN2KTsKLQlpZiAoZmVuY2UpIHsKLQkJYW1kZ3B1X2JvX2ZlbmNlKGJvLCBm
ZW5jZSwgdHJ1ZSk7Ci0JCWZlbmNlID0gTlVMTDsKLQl9Ci0KIAlyID0gYW1kZ3B1X3ZtX2NsZWFy
X2ZyZWVkKGFkZXYsIHZtLCAmZmVuY2UpOwogCWlmIChyIHx8ICFmZW5jZSkKIAkJZ290byBvdXRf
dW5sb2NrOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
