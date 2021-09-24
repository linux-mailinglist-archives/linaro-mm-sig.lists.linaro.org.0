Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 877E44177D4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:33:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B9F961E96
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:33:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 82AAC63239; Fri, 24 Sep 2021 15:33:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4281760F1F;
	Fri, 24 Sep 2021 15:33:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1A1B36197F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 82389623EB; Fri, 24 Sep 2021 15:31:36 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 29D4863291
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:32 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id t8so28821310wri.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xs3urb+CfK37NrDBLos1427ZQKhaGuo6xOveDYDdwk4=;
 b=RzWuZAIMOpiub0i7yP5lKCR61AHclgo7MbaIOB/YpUBnGhJeWQb8Q5AqotPExpFYQQ
 dy6t/eBKl6/M2Gz6wG86VOYRcceKsTWJLtjW2eGl01Pml8yspK/aeE/nrYwwXWngv1Yk
 3nz0SdDKu8c3EI+2GsAl9PQBLtP85YPiOXp4jmBPoi1UM14B9eXN6wnLRJF/DOY1N8du
 efRUA4Ijkq9U2mF8o02NZZ7XQBSHJ3QWSnauZ4R3il+/l3bkxuxLYh6+WacVk2XVwwT+
 /5PXoEMf7oiQXnDwz0ne1WQlDb2jKN2JsMfy5PyhjwamiIQOnq1B4UeeFBF6J6NJeECz
 vf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xs3urb+CfK37NrDBLos1427ZQKhaGuo6xOveDYDdwk4=;
 b=Tga/MS1Pg+7zF5cQeMJWE7M33mznZpupPtJYII5mLXsaD8neIp1HcE20IMdLCxrqTe
 Ab4dG+tpV86HwoTf+P738xlF3QMkwqaHym2RlJ8SOo6sepqPuMxkdxBLGaLopeo8TKD2
 lsaPsdLjRIyFrFqYsHMAGi6gQ0tCABQWWbpr1q0jqUj0izCoCXJ+rVyMfwmvsH18f77W
 AprWBr0mLi8KeetRrPPAA+/fkPvsj38fS1mBWDzo3/eMkG6XUXpy/5CXuT0fqq6/DXob
 1dkQTLCqoTw667yJChy94en+Bvf2vKVVjYO76rNj4Pb1f53q6ob6JcfWKcGdAbmvArkO
 k+Cg==
X-Gm-Message-State: AOAM532DCt26TZcHwVEhxfzkfetMRHU91GeOV2F2RKVUDsbeWmLLBUCT
 Yng0x7ZCLLnQFlE0tvthZLMRVD3fi84=
X-Google-Smtp-Source: ABdhPJw9rc8OiQvJzlLG/fsJFsT7Qo05foEBmvzgcuYqLtl+aLiMxcLcARExzXnhKjvfu2LBv5YmCA==
X-Received: by 2002:adf:ce84:: with SMTP id r4mr12371922wrn.107.1632497489685; 
 Fri, 24 Sep 2021 08:31:29 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:29 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:30:59 +0200
Message-Id: <20210924153113.2159-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 13/27] drm/msm: use new iterator in
 msm_gem_describe
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuIEFsc28gZHJvcCB0aGUgUkNVIHJlYWQgc2lkZSBs
b2NrIHNpbmNlIHRoZQpvYmplY3QgaXMgbG9ja2VkIGFueXdheS4KClVudGVzdGVkIHNpbmNlIEkg
Y2FuJ3QgZ2V0IHRoZSBkcml2ZXIgdG8gY29tcGlsZSBvbiAhQVJNLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2dlbS5jIHwgMTkgKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0u
YwppbmRleCAyMjMwOGExYjY2ZmMuLjE0OTA3NjIyNzY5ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMK
QEAgLTg4MCw3ICs4ODAsNyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIHsKIAlzdHJ1Y3QgbXNtX2dlbV9vYmpl
Y3QgKm1zbV9vYmogPSB0b19tc21fYm8ob2JqKTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJvYmogPSBv
YmotPnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJc3RydWN0IGRtYV9yZXN2
X2l0ZXIgY3Vyc29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCXN0cnVjdCBtc21fZ2Vt
X3ZtYSAqdm1hOwogCXVpbnQ2NF90IG9mZiA9IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFf
bm9kZSk7CkBAIC05NTUsMjIgKzk1NSwxMyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIAkJc2VxX3B1dHMobSwg
IlxuIik7CiAJfQogCi0JcmN1X3JlYWRfbG9jaygpOwotCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRf
bGlzdChyb2JqKTsKLQlpZiAoZm9iaikgewotCQl1bnNpZ25lZCBpbnQgaSwgc2hhcmVkX2NvdW50
ID0gZm9iai0+c2hhcmVkX2NvdW50OwotCi0JCWZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7
IGkrKykgewotCQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKKwlk
bWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCByb2JqLCB0cnVlLCBmZW5jZSkgeworCQlp
ZiAoZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQlkZXNjcmliZV9mZW5j
ZShmZW5jZSwgIkV4Y2x1c2l2ZSIsIG0pOworCQllbHNlCiAJCQlkZXNjcmliZV9mZW5jZShmZW5j
ZSwgIlNoYXJlZCIsIG0pOwotCQl9CiAJfQogCi0JZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNl
KHJvYmopOwotCWlmIChmZW5jZSkKLQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUi
LCBtKTsKLQlyY3VfcmVhZF91bmxvY2soKTsKLQogCW1zbV9nZW1fdW5sb2NrKG9iaik7CiB9CiAK
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
