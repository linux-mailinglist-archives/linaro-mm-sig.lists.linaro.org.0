Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 077C84138BC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:38:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C8616129E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:38:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6026A61516; Tue, 21 Sep 2021 17:38:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55CE26171E;
	Tue, 21 Sep 2021 17:38:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2572363523
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2EDF36143B; Tue, 21 Sep 2021 17:37:24 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 3B97161456
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:19 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id d6so41376312wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=ASeqxfhV9w2u70s80hnfGNFnU5dmjRz2YBiQ7UHNSa6DuGjH6nEjSaGOFwjoGr3Ngk
 OsF6e8rljOOHzPaM6Uqo+nNAkMenqie0UR85wYUOMF2itNkuiZxgp+PcNuoFkh0uAR+o
 JCO5W25qt9EiZ5MAlAbwfVhOeHFAIs82EXwXLh9sZwVM1cqEmD0rX+cEsi4gFtAOpmIN
 And+T7i3omYCqT/+l4z0ZAG7LaYrj9oxsxh1FiKcpQXNHbQV65w2ipTVrRwtcNYWNkI6
 6uD9G0l6ICgnEPEYBG3H7aMWoIFirlglUQZrYgEFE++swyz3i5KTGb+NpmtqgIOSwgBW
 3nIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=SOw+rcZKCZZAnJvye2yrpCW7xTj/Lngfd36gtX9uSQ8A6V9RZyJgOkg/4m/pb7cKUz
 XCZyyuExd5HznGoJwlAO+6py7qDKmd2YukwWkZtRLTJPsSPGdduxZikKQDmdgfMtSIen
 ghOh3cqaELhLByU2fBKPQ4poHFDAu5W8P3NQjgDGplCrq+31rUj8KEB7kcQxSUenic9E
 CCeR5E+qU65On9W4wD/PYutdrn7kOH47qWuRas1g/iyHUsPeQOYti1De02rp6iqLjfJK
 zjzRj1kXQE+MHoMn4F3WuJ4liJbdj6csrI9pE7HHyrcK7axI1TVO4D5PeIgtVS7o3wyE
 iG1g==
X-Gm-Message-State: AOAM531JmhhG4GHQE3YAGdr1nIcOiYwo+161Q8P1FH3ylF8r7SIkZuLF
 lmx1SzBRBLBeS9rU25342og=
X-Google-Smtp-Source: ABdhPJwlzB0biUHAG3WLi9lDLjR+cNGbXPohCdHBMasqxBhW5gM4Vorg44beBvytvEnF/f+/0iN96g==
X-Received: by 2002:adf:e44f:: with SMTP id t15mr36944797wrm.394.1632245838354; 
 Tue, 21 Sep 2021 10:37:18 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:18 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:50 +0200
Message-Id: <20210921173659.246165-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
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
