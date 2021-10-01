Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACDB41EAA4
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:08:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47E256A93D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:08:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CE94862433; Fri,  1 Oct 2021 10:08:24 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B23263295;
	Fri,  1 Oct 2021 10:08:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EE83F63421
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A8D1960B91; Fri,  1 Oct 2021 10:06:38 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id F0F3A6242A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:32 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id m22so9154720wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=Ea4WSe15oLwwlNdQvSBetjw7fNJ7A/u0TCKXwUS2Vcmu5XZOlo48VdQej41rFjqpqq
 eYUy0mXBw/fut1muWHXT9+1hqksgRHF+THgYMqbL9k5FUlMmOi1T+aRUA1Y1EWNB8nIg
 14CRVkMV35yMz083mG8awueAhh/p0mRuRB4+OW1j7FsMBVOz/VzCd2taDBnx1lfH3izG
 5TK658+MW+NsmHWlVc8ztktPuQFIk70ARmz3/5rbvmNDPfiI3J3VHWVzUx8kG/9pz4Og
 ukqvNwGCE7yyRFAz7fTKND4foPrqoPRCRq5PcO4qzShXhX+PCfN3hn7VHPM1PjmU7din
 RG8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=rVv2P1dtnh/xrqawH7HKi7aE3FCBXuvHnLcQhW9XXo5u3tDdCjHqz9TyE2wGOUykLd
 YKDRvAw6iOFwcBNByeyJ2x8ag7GbWyIfEx6f2mYczne4nb4tAzcBxdd2gXlZ7IBM4Uqq
 w8h/m2QQi2hnuKTms4+pixfQtuZjNzLEEKB0kLeRcf9Ndcu1ZYlM0RzaISh9EpLQFT6c
 KZhJbziKILfLVp1pTnHqcyLPICKt8trE7IlrJ6ZVbx8jIqUuCMmcJz7dkCW1ATGvDWQj
 5QVQGGPtOXdykAglMBB+PxpTTdm8HAaShLa28lxjxvTlkveN8YIsczdAb3M7RnoCNXwL
 JeUA==
X-Gm-Message-State: AOAM532tvuc2e7WPkk1UeZF6X7bKooK9lLp9DH8xTm8XDOzJ0hcbzIoT
 XcgMnfTKZ5XpgLUWmcBpm6UufSct1dA=
X-Google-Smtp-Source: ABdhPJyhTV6eK+nXojv3NtgnfpImqFkB7246DJKrxQRsA2i58ql61cG9cmL2nAfe56n6teyJszJRNw==
X-Received: by 2002:adf:a4cf:: with SMTP id h15mr11320275wrb.56.1633082791648; 
 Fri, 01 Oct 2021 03:06:31 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:31 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:06:03 +0200
Message-Id: <20211001100610.2899-22-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
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
