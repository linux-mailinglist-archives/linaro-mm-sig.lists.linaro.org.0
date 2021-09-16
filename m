Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0920940D8DD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85FA064AE0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D234863631; Thu, 16 Sep 2021 11:32:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CAEB69CEA;
	Thu, 16 Sep 2021 11:32:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 04A32667EF
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0C46069CD2; Thu, 16 Sep 2021 11:31:08 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id 4990B63221
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:03 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id
 g19-20020a1c9d13000000b003075062d4daso4276046wme.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nKJGab4KxNdwiRXb5cOBKKfaCdcTidREjaK9cb7+I50=;
 b=faC9MiRQTffUsa9jeg4wzjIR+8ziw8LUSd/l7eg45cOhMU4ErUSfimwL4tqzjPghpt
 LuNCyQJ86XDUiv+5Uexn+RL9LYs+ixfFp+aQXprFunAoIjC728oe5hmkbPzORbc5aD6k
 zfJkmBLyOW5jOYVf0reUr8LNw4MG983Jav4CMltaJ7frH+X9l5n9SeKDtNNK2cT3UrtQ
 FEOCUn/wY3v0dlMDfc5T8F7dOp/P67KWFS0kUBgeVRKp85tOk+VRKJC2ORsXTcr42GZi
 mk/0ZpbauxL0WZjXi9PDG/BuoT2MjcPXnMCwmPLWkBDLbo7sgUtclt0pl5onmRKZWK32
 JynA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nKJGab4KxNdwiRXb5cOBKKfaCdcTidREjaK9cb7+I50=;
 b=rXiasIbPd76Yn4GrU/Z0zkEDR5j1E4oVBuxUUcxp0yHNaIN7jIOGwxKploOOD/2ccU
 xFOyPFv/2SZPDwHciV2l1aA6bAUfaziIFH1ddglgBpsXYL+t902I0W071OTkezIOuYkk
 tQLJ3JqdzZJrn24GnNaQEx4ZKJDZF8w8Z8LqUFHO6rLxjFaJQt/lLe0urzT9uHXhrgJv
 B4Q1cK/G4eIAsgPzegOb6xMt5i3IKnqWPBoSnUSF9CICYnXOhMvwwXth66//FSzrN5Tp
 K3iQe5KQroScwE8fzCe4Mrw0gEb4C/8uUFf8IY/7kfFUMWvU0p9En3Jxf8SZ3JnX4rHd
 QmNw==
X-Gm-Message-State: AOAM530Hz52mK/Mi9SlH+uoKX79u6udBvcnPLkg8x2AZ4NNwWBwQXWWM
 FhhhjKfaTFxYvGKTdSOF8EtCwYIovi+WvD1l
X-Google-Smtp-Source: ABdhPJyZjUH4DtJZeezkSkAZ1UqJnFkp/cGf8pQdOoCFKn3HbozqyHhH6ejvkAZtKawfIwM534rzUQ==
X-Received: by 2002:a1c:4c14:: with SMTP id z20mr9530127wmf.82.1631791862006; 
 Thu, 16 Sep 2021 04:31:02 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.31.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:31:01 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:34 +0200
Message-Id: <20210916113042.3631-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 18/26] drm/i915: use new iterator in
 i915_gem_object_last_write_engine v2
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

VGhpcyBpcyBtYXliZSBldmVuIGEgZml4IHNpbmNlIHRoZSBSQ1UgdXNhZ2UgaGVyZSBsb29rcyBp
bmNvcnJlY3QuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9jaygpL3VubG9jaygpCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIHwgMTMgKysrKysr
Ky0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKaW5kZXggNDgxMTJi
OWQ3NmRmLi43ZmYwMDI3YWY3ZDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmgKQEAgLTUwNywxNiArNTA3LDE3IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqCiBpOTE1X2dlbV9vYmplY3RfbGFzdF93cml0ZV9lbmdpbmUoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUgPSBOVUxMOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZTsKIAogCXJjdV9yZWFkX2xvY2soKTsKLQlmZW5jZSA9IGRtYV9yZXN2X2dl
dF9leGNsX3VubG9ja2VkKG9iai0+YmFzZS5yZXN2KTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5j
ZV91bmxvY2tlZChvYmotPmJhc2UucmVzdiwgJmN1cnNvciwgZmFsc2UsCisJCQkJCSBmZW5jZSkg
eworCQlpZiAoZmVuY2UgJiYgZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2UpICYmCisJCSAgICAhZG1h
X2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkKKwkJCWVuZ2luZSA9IHRvX3JlcXVlc3QoZmVuY2Up
LT5lbmdpbmU7CisJfQogCXJjdV9yZWFkX3VubG9jaygpOwotCi0JaWYgKGZlbmNlICYmIGRtYV9m
ZW5jZV9pc19pOTE1KGZlbmNlKSAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkKLQkJ
ZW5naW5lID0gdG9fcmVxdWVzdChmZW5jZSktPmVuZ2luZTsKLQlkbWFfZmVuY2VfcHV0KGZlbmNl
KTsKLQogCXJldHVybiBlbmdpbmU7CiB9CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
