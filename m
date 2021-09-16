Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CD76C40D8CB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:31:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42CD36341D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:31:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CECC76314A; Thu, 16 Sep 2021 11:31:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EACD6325F;
	Thu, 16 Sep 2021 11:31:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 987266338E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0911968641; Thu, 16 Sep 2021 11:30:59 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by lists.linaro.org (Postfix) with ESMTPS id DB5BD665EE
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:55 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id 70so1630689wme.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FIxvi6EFxqBABKYJnzo5Lw9hfwCaC7HFX+lvVcywepM=;
 b=oKsgdiKsr96XgM3JmAFofC5/0vuipaAwfX9jsgxGyMZ3fTV8A9VyvR/ScjKqxr1iJt
 bducrdb5jL9zm0RZEOVKInM+FZ16fL2q9KOmuRy9n1CIFugnd0OyJ6ZCJ7ba3wVOuIJ1
 B8OWSgFXztchdu/RS5naKpaoWKrhf4BhMJFEF8A9UMwPZssg0n7ERFOnwOCNGB5rqH/k
 S9yDBL4FuIDgwIzfgi+kYaO52GxXcd/kfYvz/1DYl413ZbuqKxaKfJnwMBT2nUwrA65Q
 Rj742F0Dv0ZZw5Gv5z/DJkI1HjLlDzUB+WrprlPlzlYbeV+PJLJaINKpSPpELYuxiERy
 RkQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FIxvi6EFxqBABKYJnzo5Lw9hfwCaC7HFX+lvVcywepM=;
 b=vlT414orKWasXG2JWV166545mcESlCFyHt21uTilXW6/hkxeeL+Y1KyKqasRnhLWGK
 UTlrdqgwH8RasZPySuiMKLWHSWiXgTb7hRxQoWmQZRJeGNPecxsIf+DmtirnjYo+sSHd
 gKgeJHgXiMT2Q5YElKTgjSSII+9KHh7tlvUQAVZSRC5OQqSWC7reiPLcmEuKlR+u6rKZ
 0yhSCvGXIZrQ4NcgUxCgBnWyOaixtwOWM87vDog88QX7hOAJpdHSyYfuLm2bpkLCyqhM
 UR3VORneau9grP5cuWtJpu4F6N1Qnb+ZDh+FwWS7Krq3VN9kuKS1Ce/3Oao18MzOPoA7
 iL/w==
X-Gm-Message-State: AOAM532L2DsEC9t7k7UVqMKJp3kc5E63l1Sp/ysOgyhqOde3KDUq7esC
 1z0RwzhO1/6ux/L+1hKdAsApyfKyVlKNL/WO
X-Google-Smtp-Source: ABdhPJy7b3HQjHDebWAfW7eXMzch47xtmYEOMmPyzkWSnIxSlRLBJJzUeYWwqGoNs1xMajeq93ccIw==
X-Received: by 2002:a1c:3b41:: with SMTP id i62mr9483249wma.38.1631791854892; 
 Thu, 16 Sep 2021 04:30:54 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:54 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:26 +0200
Message-Id: <20210916113042.3631-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/26] drm/msm: use new iterator in
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
YwppbmRleCAyMjMwOGExYjY2ZmMuLjViZWNlNDYwMGU0MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
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
bWFfcmVzdl9mb3JfZWFjaF9mZW5jZShyb2JqLCAmY3Vyc29yLCB0cnVlLCBmZW5jZSkgeworCQlp
ZiAoZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQlkZXNjcmliZV9mZW5j
ZShmZW5jZSwgIkV4Y2x1c2l2ZSIsIG0pOworCQllbHNlCiAJCQlkZXNjcmliZV9mZW5jZShmZW5j
ZSwgIlNoYXJlZCIsIG0pOwotCQl9CiAJfQogCi0JZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNl
KHJvYmopOwotCWlmIChmZW5jZSkKLQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUi
LCBtKTsKLQlyY3VfcmVhZF91bmxvY2soKTsKLQogCW1zbV9nZW1fdW5sb2NrKG9iaik7CiB9CiAK
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
