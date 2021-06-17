Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A700E3AB254
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A914263502
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A222061A29; Thu, 17 Jun 2021 11:17:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28C9D61A4D;
	Thu, 17 Jun 2021 11:17:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8FD30634FB
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 87970634FF; Thu, 17 Jun 2021 11:16:12 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by lists.linaro.org (Postfix) with ESMTPS id F04CF634FB
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:09 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id r7so3419096edv.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=hvNXqtq5mdZJpJK7jpCUZ+hsh9G2TDoGYYpRx9Mul74=;
 b=RIin5nZI/rpjSAo5R/hPF0Y/Mqr8Yq4tPJjB9KCgi1NwScGxumI9QfNhDpG/ocMPlL
 V7hyyE1Ne0mYBRkKYqDLJqQ49roJLNg12GRTc1V/jLkh5BFfQ+jkoD4unN0oWK/yOGAd
 PHI7FvSo4kzHBf30s/Bi/pVIkUaoSRle68FxqzlpGnpscWmkKNiGyfzMewTAOpBLjGYT
 yItfwLjrITYcM5owdPmOyrInM6mVSDokQr4zOWs/AGvg/Bzjl+ufk39yZtsvOxk4qRkj
 BLA3zb7Shrql6XGErODXjemVG5dWF3rolFdDfJSX3qPyLYLHmgqDgj05csKa2J/0ZTfq
 SI+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hvNXqtq5mdZJpJK7jpCUZ+hsh9G2TDoGYYpRx9Mul74=;
 b=W0i+O5ZJnboaiD0aCui9tUOQGEFH3a30xJwGaR7dzvLFd5mkzJpxKAm8f8xAWbNPvH
 qME9dv412kU2aCdZnZ0kxs6TwsDuYSBi9ZDFhv50evDre63CU4Y6QXEjNN5QQ1DDLNxp
 OdCJUFZXOw7QRhBbcs+HjgkgwXSHbDi2sjlT7XD2yk9CASICkyVMotyJldplO8znwNPd
 8s9TrZoNOpMqv0EfqP307Ovl14aW/hT8bFNiuU0/rhLNksWYQzjsg71AchcS9+M5S7iS
 54VFm0O2pWnTNZjtFdfGABhh7wfI/OnFnrJdo+pHEQA3fRY5Yi8aRQybmbRXRpTzMx4M
 PiSA==
X-Gm-Message-State: AOAM530/+V+AbA3MC3tRCK8mrNuKkgJU+CdYUrjjdTz1kWfi9qtLXR0R
 sriuXGVbmuSZzsRnh8L77sQ=
X-Google-Smtp-Source: ABdhPJxdqm0xly694XIcLjrbZ9A76Y59S2aejU4bGXP1xl8mBcHQH3xduN5/LfUZEksy/oiQuJIoCA==
X-Received: by 2002:a05:6402:51:: with SMTP id
 f17mr5633820edu.359.1623928568856; 
 Thu, 17 Jun 2021 04:16:08 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:08 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:53 +0200
Message-Id: <20210617111558.28486-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 11/16] drm/amdgpu: use the new iterator in
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
