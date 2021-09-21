Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D89F4138B3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:38:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E068631AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:38:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 28F42631AA; Tue, 21 Sep 2021 17:38:24 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E7756143B;
	Tue, 21 Sep 2021 17:38:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 790DE61A3C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 546D5619D4; Tue, 21 Sep 2021 17:37:21 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 6C012631AB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:17 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id w29so41598184wra.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lPdZK7BIOkQEWY2TG92V49o75qXMdIlfGURkWq4Gvi0=;
 b=AjeurPfq1kDkLVDNKEyzA3ic/0uRfkVU3vaodCkkrhN9y5sx05fMEcuv0WmWPJC0mD
 2o1dniadW8xHw4DAigWerfaPMteZ3aVI7pFvc8SgWLloolksf6oKP8gELsmoXjFRRWlD
 W+xhfE+G92fi3bgSnxt+zlairoiVxKhFUnk2ekt14KIyV3mUrnY4qWKEn+01u1/+a2BR
 ZY3hzs0yuCBkDBOQ0iTAjFy6LEK4e/WQz5a3pIpQv2fox4plAzgkCVWmBfGa0o0lbZQp
 HsghcopUUGW91yRDrDATfKzkdwpyNBv3xiTtpWqSOo34jQI8RX+Aw+pgUsrjKxMmGtl4
 0hsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lPdZK7BIOkQEWY2TG92V49o75qXMdIlfGURkWq4Gvi0=;
 b=qIZ35l7DMwHpdP7aCjzWITCLXmtdSp4X+n6IzEyMZqcJOdLhZrdCaylYyBLPO1mDR6
 8bNjpW+JqKHEKpHhKrOrbtWsZ++twVrdYux/LgIlRkxemxLPLg7mVeQ+AAYON28TxVl5
 +I3booOpRL0sVPQKKHdA+uAglkBmqsXratHG7wd3y5nYz3cV9ERGJRhRK+sa50iLnb59
 cJNVgtcRi/Glh3fY3QqYcionNeTsAcLrqU8z4VS9t5l2ccMEnySi2/oCaFnRakeGmBHE
 1q3SZphYJGYtXyXUwrwd7abWV411FzS7z4eN359anssdXr4Fz55lK0mZLjfzHi9Zp7Je
 n9kQ==
X-Gm-Message-State: AOAM531E1+A+2xCmjMvo8y6GA/iLlEATkuQMpGpAjCHdaZbd+stpt56B
 EkQETRf7hidOUPwf7/Ws4JY=
X-Google-Smtp-Source: ABdhPJz/cKujCdBuVcET0U2UeOJWQuLnRk9AfHRKg6pCYMW7TFRNoUoGHUOJg/PJazf5hBSLJ8Eikg==
X-Received: by 2002:a5d:6292:: with SMTP id k18mr36810602wru.110.1632245836491; 
 Tue, 21 Sep 2021 10:37:16 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:16 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:48 +0200
Message-Id: <20210921173659.246165-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 15/26] drm/i915: use the new iterator in
 i915_request_await_object v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9j
aygpL3JjdV9yZWFkX3VubG9jaygpCnYzOiB1c2UgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UgaW5z
dGVhZAoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgMzQgKysr
KystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDI5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKaW5kZXgg
Y2U0NDY3MTZkMDkyLi4zODM5NzEyZWJkMjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jCkBAIC0xNTA5LDM4ICsxNTA5LDE0IEBAIGk5MTVfcmVxdWVzdF9hd2FpdF9vYmplY3Qoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqdG8sCiAJCQkgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCiAJCQkgIGJvb2wgd3JpdGUpCiB7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZXhjbDsKKwlzdHJ1
Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJaW50
IHJldCA9IDA7CiAKLQlpZiAod3JpdGUpIHsKLQkJc3RydWN0IGRtYV9mZW5jZSAqKnNoYXJlZDsK
LQkJdW5zaWduZWQgaW50IGNvdW50LCBpOwotCi0JCXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXMo
b2JqLT5iYXNlLnJlc3YsICZleGNsLCAmY291bnQsCi0JCQkJCSAgJnNoYXJlZCk7CisJZG1hX3Jl
c3ZfZm9yX2VhY2hfZmVuY2UoJmN1cnNvciwgb2JqLT5iYXNlLnJlc3YsIHdyaXRlLCBmZW5jZSkg
eworCQlyZXQgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRvLCBmZW5jZSk7CiAJCWlm
IChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7
Ci0JCQlyZXQgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRvLCBzaGFyZWRbaV0pOwot
CQkJaWYgKHJldCkKLQkJCQlicmVhazsKLQotCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwot
CQl9Ci0KLQkJZm9yICg7IGkgPCBjb3VudDsgaSsrKQotCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRb
aV0pOwotCQlrZnJlZShzaGFyZWQpOwotCX0gZWxzZSB7Ci0JCWV4Y2wgPSBkbWFfcmVzdl9nZXRf
ZXhjbF91bmxvY2tlZChvYmotPmJhc2UucmVzdik7Ci0JfQotCi0JaWYgKGV4Y2wpIHsKLQkJaWYg
KHJldCA9PSAwKQotCQkJcmV0ID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZSh0bywgZXhj
bCk7Ci0KLQkJZG1hX2ZlbmNlX3B1dChleGNsKTsKKwkJCWJyZWFrOwogCX0KIAogCXJldHVybiBy
ZXQ7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
