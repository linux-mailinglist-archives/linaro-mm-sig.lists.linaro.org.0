Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3D74138AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:38:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8D0F61667
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:38:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B033D617DA; Tue, 21 Sep 2021 17:38:08 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1032E61805;
	Tue, 21 Sep 2021 17:38:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 44A8B61A22
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1833661236; Tue, 21 Sep 2021 17:37:21 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 4D2C362631
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:18 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id t8so41613278wrq.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QNte/ZxHyZbzH1TCe5eQqnVIdZH6R4S8//YNPJMBVTc=;
 b=a9krJ2t/4rCoMhY2ba+hYXGDEbzVtrs8Qj2S/sJU/giM1RRFDlXUhGqEGGWqh3gxVC
 ywhbXfyTJq1kqLNWeE/8ovcJyT8m19gmoD8q9Rf7+7Yiohbd7ZuN7lcXjDJEqwzroWuk
 arTVuKVf9WrFjmxzWrQmBd4OPMYLYcma5qZvytiZDRhwx9qVgtqahgKK9NWEbVfnQ9d5
 OhyR1XWliiM3a62uVGN+bF+VzWn1goIFpDHkaCoqxm6RA3hZL1T8m5KB6+X1NI7g+A6c
 /H+D9820Uhdb/dvS9F3m2YJzay3HxwcpZCLcGhB+37riCACel85YoFThg66ae0icSBvI
 mGNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QNte/ZxHyZbzH1TCe5eQqnVIdZH6R4S8//YNPJMBVTc=;
 b=GmnHaYNWLY3c9mbBis9jCgdTnS2CIk1icwp/Mop24NJm9rIa+o1MCLjinPToiekw6+
 RNHIw7oTwTVL/6Uhgxih4esfuZkiPKBCTaz2thxNPG0+oE0g/s9AXHu0UY6WW00geeDi
 dn7JLhYCo+UEQoODa4HzEePUo0kPxoLzQqThWwcWxOHYn9iqaVVmc8/IaYQ1r9C4rjtm
 2rd/9PptQmI06gD+8tXCV+fG1n/pOTdi4RYsz5aYnABTYKsBOC8IQ66qBb9fIFwSk6mb
 vpWRJPqMKamhI4S2QrVwty7D6r5xDThVzKJeHHNDX6vFmpYPiSHpyuizKfcGEaicxd51
 wMfQ==
X-Gm-Message-State: AOAM530YvxIaH/yk/FNQyDV9X2dEJF7/0s07B0VqJfWoyQJaV9XVvuk/
 G4R23VmMuL/et6hOK81eF6k=
X-Google-Smtp-Source: ABdhPJxxIOl/g5v3YleZbdawmAqTWqcWJi+qApO8EQQP+Y3T5XpYP1wzfMUxh7iazzCQ+tMH/GX+Iw==
X-Received: by 2002:a1c:f314:: with SMTP id q20mr5837379wmq.154.1632245837417; 
 Tue, 21 Sep 2021 10:37:17 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:17 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:49 +0200
Message-Id: <20210921173659.246165-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 16/26] drm/i915: use new iterator in
 i915_gem_object_wait_reservation
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
Z2VtL2k5MTVfZ2VtX3dhaXQuYyB8IDUxICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKaW5kZXggZjkwOWFhYTA5ZDljLi5hMTMxOTNkYjFk
YmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpAQCAtMzcsNTUg
KzM3LDIyIEBAIGk5MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCBkbWFfcmVz
diAqcmVzdiwKIAkJCQkgdW5zaWduZWQgaW50IGZsYWdzLAogCQkJCSBsb25nIHRpbWVvdXQpCiB7
Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZXhjbDsKLQlib29sIHBydW5lX2ZlbmNlcyA9IGZhbHNlOwot
Ci0JaWYgKGZsYWdzICYgSTkxNV9XQUlUX0FMTCkgewotCQlzdHJ1Y3QgZG1hX2ZlbmNlICoqc2hh
cmVkOwotCQl1bnNpZ25lZCBpbnQgY291bnQsIGk7Ci0JCWludCByZXQ7CisJc3RydWN0IGRtYV9y
ZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCi0JCXJldCA9IGRt
YV9yZXN2X2dldF9mZW5jZXMocmVzdiwgJmV4Y2wsICZjb3VudCwgJnNoYXJlZCk7Ci0JCWlmIChy
ZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Ci0J
CQl0aW1lb3V0ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXRfZmVuY2Uoc2hhcmVkW2ldLAotCQkJCQkJ
CSAgICAgZmxhZ3MsIHRpbWVvdXQpOwotCQkJaWYgKHRpbWVvdXQgPCAwKQotCQkJCWJyZWFrOwot
Ci0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Ci0JCX0KLQotCQlmb3IgKDsgaSA8IGNvdW50
OyBpKyspCi0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Ci0JCWtmcmVlKHNoYXJlZCk7Ci0K
LQkJLyoKLQkJICogSWYgYm90aCBzaGFyZWQgZmVuY2VzIGFuZCBhbiBleGNsdXNpdmUgZmVuY2Ug
ZXhpc3QsCi0JCSAqIHRoZW4gYnkgY29uc3RydWN0aW9uIHRoZSBzaGFyZWQgZmVuY2VzIG11c3Qg
YmUgbGF0ZXIKLQkJICogdGhhbiB0aGUgZXhjbHVzaXZlIGZlbmNlLiBJZiB3ZSBzdWNjZXNzZnVs
bHkgd2FpdCBmb3IKLQkJICogYWxsIHRoZSBzaGFyZWQgZmVuY2VzLCB3ZSBrbm93IHRoYXQgdGhl
IGV4Y2x1c2l2ZSBmZW5jZQotCQkgKiBtdXN0IGFsbCBiZSBzaWduYWxlZC4gSWYgYWxsIHRoZSBz
aGFyZWQgZmVuY2VzIGFyZQotCQkgKiBzaWduYWxlZCwgd2UgY2FuIHBydW5lIHRoZSBhcnJheSBh
bmQgcmVjb3ZlciB0aGUKLQkJICogZmxvYXRpbmcgcmVmZXJlbmNlcyBvbiB0aGUgZmVuY2VzL3Jl
cXVlc3RzLgotCQkgKi8KLQkJcHJ1bmVfZmVuY2VzID0gY291bnQgJiYgdGltZW91dCA+PSAwOwot
CX0gZWxzZSB7Ci0JCWV4Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChyZXN2KTsKKwlk
bWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIHJlc3YsIGZsYWdzICYgSTkxNV9XQUlUX0FMTCk7
CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKKwkJ
dGltZW91dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0X2ZlbmNlKGZlbmNlLCBmbGFncywgdGltZW91
dCk7CisJCWlmICh0aW1lb3V0IDwgMCkKKwkJCWJyZWFrOwogCX0KLQotCWlmIChleGNsICYmIHRp
bWVvdXQgPj0gMCkKLQkJdGltZW91dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0X2ZlbmNlKGV4Y2ws
IGZsYWdzLCB0aW1lb3V0KTsKLQotCWRtYV9mZW5jZV9wdXQoZXhjbCk7CisJZG1hX3Jlc3ZfaXRl
cl9lbmQoJmN1cnNvcik7CiAKIAkvKgogCSAqIE9wcG9ydHVuaXN0aWNhbGx5IHBydW5lIHRoZSBm
ZW5jZXMgaWZmIHdlIGtub3cgdGhleSBoYXZlICphbGwqIGJlZW4KIAkgKiBzaWduYWxlZC4KIAkg
Ki8KLQlpZiAocHJ1bmVfZmVuY2VzKQorCWlmICh0aW1lb3V0ID4gMCkKIAkJZG1hX3Jlc3ZfcHJ1
bmUocmVzdik7CiAKIAlyZXR1cm4gdGltZW91dDsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
