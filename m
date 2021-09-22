Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 645004144DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86A41629CD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:12:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0E99567E2A; Wed, 22 Sep 2021 09:12:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0C2461A22;
	Wed, 22 Sep 2021 09:12:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 791446056F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4B8BA61951; Wed, 22 Sep 2021 09:11:08 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 883EB619D7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:04 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id t7so4541461wrw.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=UEJYZHOyM5FWBh9nFOlDTSRbwlHNw/8R8L9nK56tUJVXe7V/Ima+jW2VZw79JO7ka5
 cwoWdjIm9cs5G6xD0D6y8VuS/watKoxa8d/UNOMfg8GszX4sOsfkzjzV0XYC9fIWclKK
 /P4nvvEmmNMAqQnYiexWsKOfznTEAwGPGPyhPkzbsoyqxZOp99fDoYBBQIiTwOC4MF0O
 /IgJEPAeTiCKfmLDL7RT4EPLT0Z4AgjvVCNNGf5R2ubbC8ncoiGYIa/OB2vc/GGgJNzM
 BohW0I5Vi6ffGgY6Lx4WV6D9P/vqlF1qFv5p+BkHL/TXYoSUowrshpIl9weAL3duuDBo
 wjkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=AkFUThS8x+dHdeZb/02J3Kv9fXzRoMiqhdY/cYk5XmkYK5Xd+BGaeiaiy306pZdTqv
 hMKaBptTzWbW/1Vm31fh6m65iDg8F3wuEfBMBIQ8SmWz1/ygmJULsXueNUUCXn+9oNTW
 GxM4dudByHNQfn4KQECTJiuxF8s3K1o00FFiGGcT8GC+aQPUt54DhQNAi4Nfe3qjvkP8
 j7KqKkzr54h3sTnxndDZsIQb/YQyX0RoC8+tYrSGu+Tm9Vyi3OU0cyqzK+EZJx/OXR/H
 wZYUFfO+pVbEqT/vpHstCUcVD4MhNrrPMvu1f8GUriifGXfPyYrl8SIllW6mb0RCkqVY
 ks/w==
X-Gm-Message-State: AOAM530WGkyFTnxRcMF4nzhjxLTl0zpPowp7iI00UBUIMGDGM/v+eBEZ
 CBy1EgiIKDqJetiTi5vVHEJn9/y91sA=
X-Google-Smtp-Source: ABdhPJz1tDCj/P5Xzak0LokdOWDqixMC4Hm+RqE58sLy9CPecXzeoWkCE/IuZQKIb8Y1zBAL+6TWYg==
X-Received: by 2002:a05:6000:18a4:: with SMTP id
 b4mr33406906wri.96.1632301863666; 
 Wed, 22 Sep 2021 02:11:03 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:35 +0200
Message-Id: <20210922091044.2612-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 17/26] drm/i915: use new iterator in
 i915_gem_object_wait_priority
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3dhaXQuYyB8IDMxICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKaW5kZXggYTEzMTkzZGIxZGJhLi41Njk2NThjNzg1
OWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpAQCAtMTE4LDMy
ICsxMTgsMTMgQEAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcHJpb3JpdHkoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAgICAgIHVuc2lnbmVkIGludCBmbGFncywKIAkJCSAgICAg
IGNvbnN0IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgKmF0dHIpCiB7Ci0Jc3RydWN0IGRtYV9mZW5j
ZSAqZXhjbDsKLQotCWlmIChmbGFncyAmIEk5MTVfV0FJVF9BTEwpIHsKLQkJc3RydWN0IGRtYV9m
ZW5jZSAqKnNoYXJlZDsKLQkJdW5zaWduZWQgaW50IGNvdW50LCBpOwotCQlpbnQgcmV0OwotCi0J
CXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXMob2JqLT5iYXNlLnJlc3YsICZleGNsLCAmY291bnQs
Ci0JCQkJCSAgJnNoYXJlZCk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCWZvciAo
aSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Ci0JCQlpOTE1X2dlbV9mZW5jZV93YWl0X3ByaW9yaXR5
KHNoYXJlZFtpXSwgYXR0cik7Ci0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Ci0JCX0KLQot
CQlrZnJlZShzaGFyZWQpOwotCX0gZWxzZSB7Ci0JCWV4Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91
bmxvY2tlZChvYmotPmJhc2UucmVzdik7Ci0JfQorCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNv
cjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAotCWlmIChleGNsKSB7Ci0JCWk5MTVfZ2Vt
X2ZlbmNlX3dhaXRfcHJpb3JpdHkoZXhjbCwgYXR0cik7Ci0JCWRtYV9mZW5jZV9wdXQoZXhjbCk7
Ci0JfQorCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLT5iYXNlLnJlc3YsIGZsYWdz
ICYgSTkxNV9XQUlUX0FMTCk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1
cnNvciwgZmVuY2UpCisJCWk5MTVfZ2VtX2ZlbmNlX3dhaXRfcHJpb3JpdHkoZmVuY2UsIGF0dHIp
OworCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwogCXJldHVybiAwOwogfQogCi0tIAoyLjI1
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
