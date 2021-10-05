Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 416C542256B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:40:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23EF6605E1
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:40:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AA53867E40; Tue,  5 Oct 2021 11:40:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8A836051A;
	Tue,  5 Oct 2021 11:39:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8870362CF6
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8538660B35; Tue,  5 Oct 2021 11:38:10 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 2AF3561840
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:05 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id o20so18738094wro.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=LOkDrX5kmHlbm47kFr5l0RkVNK4shdMdXMUe+U3Svea0mwFo58mjd8xTPgXVfdc1ZX
 2AYZjw8P+oSRc0bGJn/9sDrNJ7ZQgFl/F13iLjnOi4ncnuzkUP37mnK8FBcpZRxQuPGN
 mpg//UNV/5G4H9TWYyUljcJ1ML6hWeEnNVsvUrbucCH1+/cl1M3Rko6sByUUz5957pe4
 TtjoLJtoox7JFTX+UhXj/rhJihxU+MOPIwmQ4BkGmjrY2gEZQfqwSXo0QEVe/Fa6Pwxi
 I+zPizL+p1u3EcCMVAe8cO5TX9w13JrxntgzdlNE61PGOmm2ShYISCT+RJ4+x0FSvZaR
 qdtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=VqgfnHGXqA2lTWa7nO5JBDNytV2Ud7tXhpbE/oPoq9WxDpI0HJBvgqTz+4xlCvLaMm
 Ma1QtGtjewEvXk2+f6KBEBQiE8AcqrMuJwHPaGJ0zRBkD/qLBAXGQ7x4FgmPvpIE5A5u
 y+TdfPLFTrIVm4y6rhJMG/2FuR8xhBS+/dIY24Jebu/bVSi6A5JkeHvyOoYlQ31GWyIU
 kRetrovHFBFS9XCvs9ka7RaoKrVxFlL5rfPX8MlNH8SpGqPmcWkpl92SYa/qZr91TxXk
 D9NE192tkb/yo0XyBA/8rPEIRUIJ/k6HxBDptTGmIWSTrCM8cybJU4WvHZSKnLxtlZFu
 r8iA==
X-Gm-Message-State: AOAM5307B+HIW2nbOSGW33nS4Vw79Iivnq4oNp6sRQq0+kVTjz+RVPbA
 jDvjjdzETWdPKavbHha5NNrzz2ICFfI=
X-Google-Smtp-Source: ABdhPJxtTxnwjKovdU0Rjv3RbUzLJkRjACt0BpWwHhqBj/MwXIZsKIw7vGrNqBD7rqtyxYiTJkOO5g==
X-Received: by 2002:a5d:6c6e:: with SMTP id r14mr21116706wrz.264.1633433883965; 
 Tue, 05 Oct 2021 04:38:03 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:35 +0200
Message-Id: <20211005113742.1101-22-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 21/28] drm/i915: use new iterator in
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
