Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEF04138A2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:37:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C512619CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:37:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 333D561415; Tue, 21 Sep 2021 17:37:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CE3661982;
	Tue, 21 Sep 2021 17:37:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5D7F96164A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 492F2619B0; Tue, 21 Sep 2021 17:37:13 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 43DDA61A23
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:11 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id d6so41374874wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RSipxlf8Rt1aqHkUOElk7qKJcjfTHCxexIhn6lnwGw0=;
 b=f90LXtFRXtKJDn4uKSQnEBW8D1SlWElg5O4xeEUOqGVkwdBPNP/q8LJYXvMSmVlEmT
 qVgkUrV2iqSXc3JyfSV1HGVZSR+HEO4zuaoP0pGWlse9f3W9Hdscnt3CO+gqpv5lc1aL
 9bfbs4m1hfr4lHxxkaBlmX5+SOoJFNh68TG3f4pg62cltvOsYtxOewJjWhOL/BgrHRnp
 Lw7YgzjP9T4Mp82ESB1ImssdMR3uou+yDcLky9LWguv9W+5TQzFVJSjzFVRuvUt1nTX/
 dciLLbCqC+IX2tyabgMUWY1pnfnhdfClexC4voHBtSqFfd4V1aMvxgNSK5JRdLWAdSAt
 DJbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RSipxlf8Rt1aqHkUOElk7qKJcjfTHCxexIhn6lnwGw0=;
 b=T5oQC+Nq4vFb346rXIF2rGCL3iPtm9M7jIggy6XPDP2mh1OqHvk/pgiOKgmCpF3wPQ
 Y2eIP4kAaddo88JEdrOqnPaVCabp5HSAqhpfjpbqdeUGNx1+FeL9suDtd+FI4mziAddB
 QwPYxrrVqZ1zbPjbHg8nfXqYE2E5DH/Y0ZX4riRL5lpWRzYfDOAel5YQNt+mJVjFTV6+
 c1Sb0U14iXa/OtWDqnpDU3cx1dvzi1I5PwlKn8BaazvzPxGrTUTRffLwxcwC6PJw7SVp
 RXcKUtGO6JwQsc9A3MPEECAHkz415r4k2B3vBS0uFAzz7r9j1XuJL6Ow4LO095KHbJdr
 b+QA==
X-Gm-Message-State: AOAM53122x2t47K/zY+yyCF8f1Xpdvu8h0Ch0ILk6iyGhNyIohzz3UPe
 SG4QFI/OmhI2ur5BMQXviJE=
X-Google-Smtp-Source: ABdhPJwjPZB/DU++bulTsI5pVdxKg1lMKPfow8+x4fcDYyYQLiGzaVVz3OqzT+5zXi11WvQ7Em1M0Q==
X-Received: by 2002:a1c:1dcd:: with SMTP id d196mr5795434wmd.9.1632245829165; 
 Tue, 21 Sep 2021 10:37:09 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:08 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:41 +0200
Message-Id: <20210921173659.246165-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/26] drm/amdgpu: use the new iterator in
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
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
cm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jCmluZGV4IDg2MmViM2MxYzRjNS4uZjdkODQ4Nzc5
OWIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMKQEAgLTI1Miw0
MSArMjUyLDI1IEBAIGludCBhbWRncHVfc3luY19yZXN2KHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LCBzdHJ1Y3QgYW1kZ3B1X3N5bmMgKnN5bmMsCiAJCSAgICAgc3RydWN0IGRtYV9yZXN2ICpy
ZXN2LCBlbnVtIGFtZGdwdV9zeW5jX21vZGUgbW9kZSwKIAkJICAgICB2b2lkICpvd25lcikKIHsK
LQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZmxpc3Q7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vy
c29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmY7Ci0JdW5zaWduZWQgaTsKLQlpbnQgciA9IDA7CisJ
aW50IHI7CiAKIAlpZiAocmVzdiA9PSBOVUxMKQogCQlyZXR1cm4gLUVJTlZBTDsKIAotCS8qIGFs
d2F5cyBzeW5jIHRvIHRoZSBleGNsdXNpdmUgZmVuY2UgKi8KLQlmID0gZG1hX3Jlc3ZfZXhjbF9m
ZW5jZShyZXN2KTsKLQlkbWFfZmVuY2VfY2hhaW5fZm9yX2VhY2goZiwgZikgewotCQlzdHJ1Y3Qg
ZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9IHRvX2RtYV9mZW5jZV9jaGFpbihmKTsKLQotCQlpZiAo
YW1kZ3B1X3N5bmNfdGVzdF9mZW5jZShhZGV2LCBtb2RlLCBvd25lciwgY2hhaW4gPwotCQkJCQkg
ICBjaGFpbi0+ZmVuY2UgOiBmKSkgewotCQkJciA9IGFtZGdwdV9zeW5jX2ZlbmNlKHN5bmMsIGYp
OwotCQkJZG1hX2ZlbmNlX3B1dChmKTsKLQkJCWlmIChyKQotCQkJCXJldHVybiByOwotCQkJYnJl
YWs7Ci0JCX0KLQl9Ci0KLQlmbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHJlc3YpOwotCWlm
ICghZmxpc3QpCi0JCXJldHVybiAwOwotCi0JZm9yIChpID0gMDsgaSA8IGZsaXN0LT5zaGFyZWRf
Y291bnQ7ICsraSkgewotCQlmID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmbGlzdC0+c2hh
cmVkW2ldLAotCQkJCQkgICAgICBkbWFfcmVzdl9oZWxkKHJlc3YpKTsKLQotCQlpZiAoYW1kZ3B1
X3N5bmNfdGVzdF9mZW5jZShhZGV2LCBtb2RlLCBvd25lciwgZikpIHsKLQkJCXIgPSBhbWRncHVf
c3luY19mZW5jZShzeW5jLCBmKTsKLQkJCWlmIChyKQotCQkJCXJldHVybiByOworCWRtYV9yZXN2
X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIHJlc3YsIHRydWUsIGYpIHsKKwkJZG1hX2ZlbmNlX2No
YWluX2Zvcl9lYWNoKGYsIGYpIHsKKwkJCXN0cnVjdCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluID0g
dG9fZG1hX2ZlbmNlX2NoYWluKGYpOworCisJCQlpZiAoYW1kZ3B1X3N5bmNfdGVzdF9mZW5jZShh
ZGV2LCBtb2RlLCBvd25lciwgY2hhaW4gPworCQkJCQkJICAgY2hhaW4tPmZlbmNlIDogZikpIHsK
KwkJCQlyID0gYW1kZ3B1X3N5bmNfZmVuY2Uoc3luYywgZik7CisJCQkJZG1hX2ZlbmNlX3B1dChm
KTsKKwkJCQlpZiAocikKKwkJCQkJcmV0dXJuIHI7CisJCQkJYnJlYWs7CisJCQl9CiAJCX0KIAl9
CiAJcmV0dXJuIDA7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
