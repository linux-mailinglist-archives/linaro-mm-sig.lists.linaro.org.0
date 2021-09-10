Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E046B406876
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:27:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B409369CE2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:27:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 038A169CCE; Fri, 10 Sep 2021 08:27:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 886A8667EF;
	Fri, 10 Sep 2021 08:27:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CAAF862DEF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9E60166BC1; Fri, 10 Sep 2021 08:27:10 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by lists.linaro.org (Postfix) with ESMTPS id 2919663514
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:07 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 u15-20020a05600c19cf00b002f6445b8f55so797427wmq.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hvNXqtq5mdZJpJK7jpCUZ+hsh9G2TDoGYYpRx9Mul74=;
 b=A0kUPdgAC5+TWncOXFWh9Qfoaz4FqK6InBydLkzZ2x7lLAs7i9QFOntRXj7yX9qarp
 cUBcMzhKvr9jHJpHtBm+wJjchNGcL6IoCyzu9L483z8pzFqYV3B0KTH+6m9hAHIGKKtu
 0sgckvdf0Yj9lszW2BU2mwHEI+scDEg6bsDzdWehB+mB3EzrE6VcbsHrBHxYq4VFwR7v
 mYGnlldEKj2n5a/+SMQYOW/vloLUldESANOPycvU0UV/EFyvTlRYWZQqkEfmEORntF/m
 yXgusF9ccePSbKyYDC8ZP02wrj3GXK5P4bKvgooD7j9adhlK2j3q9aRhJUsWMqnKJ3Ph
 RHaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hvNXqtq5mdZJpJK7jpCUZ+hsh9G2TDoGYYpRx9Mul74=;
 b=jeaXgOCfZLdlNkhUUW6iUWroedvbzbJnV5v298b3SHBBe17QKpR36lxuNBrB0hKO/K
 Pn8BV40f21RlTtDgSS9EX3eRx8v12CimnIdWBNzK3s/BIKmViO8+Lj59OlepXyJ2Yu6P
 hFHllU3doKmPwji9JwhMFGWC1JnQy22UO/r23U/HUlyxZMx9KY5XSkeG/ear8GNGJwpk
 /Z4Xu4mhIT6aKTcRkr6BLsb+1kufzNwbPBqod2oJWhQw8nVfjsu7ymdIwutk3TWTsHAT
 xj52/eA9/JDPIfsOsZm3king2LwVaiO9wFO3zOdNMwoIjdTKSFEwsUDkqkT/hiTDcRwC
 smRQ==
X-Gm-Message-State: AOAM533zLAQjeGOCRajU9wVjFMq8XDwtZKcbeAdFHY4XaPFJLn9qM5q0
 PEICnnjWF2Sf260c6z4e7WnT9hHjDCrluJO+
X-Google-Smtp-Source: ABdhPJzCx/DlccM/dfWL6V5U0asbK2EJmgwOciOgRAKzlNGULrLLN3jCgvQVAzCAfYglVTL5xpoYmw==
X-Received: by 2002:a1c:cc16:: with SMTP id h22mr7144408wmb.117.1631262426227; 
 Fri, 10 Sep 2021 01:27:06 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.27.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:27:05 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:51 +0200
Message-Id: <20210910082655.82168-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/14] drm/amdgpu: use the new iterator in
 amdgpu_sync_resv
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3N5bmMuYyB8IDQ0ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jCmluZGV4IDg2MmViM2MxYzRjNS4uMDMxYmEyMGRl
YmI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMKQEAgLTI1Miw0
MSArMjUyLDI1IEBAIGludCBhbWRncHVfc3luY19yZXN2KHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LCBzdHJ1Y3QgYW1kZ3B1X3N5bmMgKnN5bmMsCiAJCSAgICAgc3RydWN0IGRtYV9yZXN2ICpy
ZXN2LCBlbnVtIGFtZGdwdV9zeW5jX21vZGUgbW9kZSwKIAkJICAgICB2b2lkICpvd25lcikKIHsK
LQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZmxpc3Q7CisJc3RydWN0IGRtYV9yZXN2X2N1cnNvciBj
dXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZjsKLQl1bnNpZ25lZCBpOwotCWludCByID0gMDsK
KwlpbnQgcjsKIAogCWlmIChyZXN2ID09IE5VTEwpCiAJCXJldHVybiAtRUlOVkFMOwogCi0JLyog
YWx3YXlzIHN5bmMgdG8gdGhlIGV4Y2x1c2l2ZSBmZW5jZSAqLwotCWYgPSBkbWFfcmVzdl9leGNs
X2ZlbmNlKHJlc3YpOwotCWRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaChmLCBmKSB7Ci0JCXN0cnVj
dCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluID0gdG9fZG1hX2ZlbmNlX2NoYWluKGYpOwotCi0JCWlm
IChhbWRncHVfc3luY190ZXN0X2ZlbmNlKGFkZXYsIG1vZGUsIG93bmVyLCBjaGFpbiA/Ci0JCQkJ
CSAgIGNoYWluLT5mZW5jZSA6IGYpKSB7Ci0JCQlyID0gYW1kZ3B1X3N5bmNfZmVuY2Uoc3luYywg
Zik7Ci0JCQlkbWFfZmVuY2VfcHV0KGYpOwotCQkJaWYgKHIpCi0JCQkJcmV0dXJuIHI7Ci0JCQli
cmVhazsKLQkJfQotCX0KLQotCWZsaXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3QocmVzdik7Ci0J
aWYgKCFmbGlzdCkKLQkJcmV0dXJuIDA7Ci0KLQlmb3IgKGkgPSAwOyBpIDwgZmxpc3QtPnNoYXJl
ZF9jb3VudDsgKytpKSB7Ci0JCWYgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZsaXN0LT5z
aGFyZWRbaV0sCi0JCQkJCSAgICAgIGRtYV9yZXN2X2hlbGQocmVzdikpOwotCi0JCWlmIChhbWRn
cHVfc3luY190ZXN0X2ZlbmNlKGFkZXYsIG1vZGUsIG93bmVyLCBmKSkgewotCQkJciA9IGFtZGdw
dV9zeW5jX2ZlbmNlKHN5bmMsIGYpOwotCQkJaWYgKHIpCi0JCQkJcmV0dXJuIHI7CisJZG1hX3Jl
c3ZfZm9yX2VhY2hfZmVuY2UocmVzdiwgJmN1cnNvciwgdHJ1ZSwgZikgeworCQlkbWFfZmVuY2Vf
Y2hhaW5fZm9yX2VhY2goZiwgZikgeworCQkJc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hhaW4g
PSB0b19kbWFfZmVuY2VfY2hhaW4oZik7CisKKwkJCWlmIChhbWRncHVfc3luY190ZXN0X2ZlbmNl
KGFkZXYsIG1vZGUsIG93bmVyLCBjaGFpbiA/CisJCQkJCQkgICBjaGFpbi0+ZmVuY2UgOiBmKSkg
eworCQkJCXIgPSBhbWRncHVfc3luY19mZW5jZShzeW5jLCBmKTsKKwkJCQlkbWFfZmVuY2VfcHV0
KGYpOworCQkJCWlmIChyKQorCQkJCQlyZXR1cm4gcjsKKwkJCQlicmVhazsKKwkJCX0KIAkJfQog
CX0KIAlyZXR1cm4gMDsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
