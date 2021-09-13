Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CDB408C70
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D922162D35
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CCD956242B; Mon, 13 Sep 2021 13:18:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB5ED69CF4;
	Mon, 13 Sep 2021 13:18:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4472063629
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 32AE361ED8; Mon, 13 Sep 2021 13:17:37 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 8F1F861F45
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:34 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id u15so8600877wru.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bKAQHY4Xeuziw06SdV33IAa0ClPBsmLs4nux6eiiOrw=;
 b=CrnHSbYi6TvXO5lyMKh7RJfU3Xa4s0V+wY9O40UQWrxQBNnV7bD4hXyK2p1hIC9rYk
 7FxtXuAkUYTfh7shO5V+xDy7Ax4GAFM8Ps+fcjqRTBZxSbWoRNUx/k9EUsgpOZaenLVn
 ddpY1dVyOrNV6fjc/YSnA46byJWTsv340oQef/C/9QjoW4DKGi8IFe2hZLU/nhiuInux
 /5TKpnJMexJOyl7Wd1laH0hLAeEpuZYS6yhyGy6Z0S0UdTQ8VbGXAUYSRHQ5YrS/E3Q8
 hME3/Se/UrnIFuomu6ZRPO4Fjr8oZZ0Hrqe/QAhzy4WURj5vuMc5pw9+s2NW42uWopjn
 fI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bKAQHY4Xeuziw06SdV33IAa0ClPBsmLs4nux6eiiOrw=;
 b=WrYiNFvt62GSjm/ptRwzTEjqmNRpc4wdNx7fP5HcosdogWGYc1MDIMLo3uaMEq3f85
 ZFL/PA0laEOKMBGNAUTh9fqpdlVXcIY2SkstJcbu8mcaJ7u88+j7+iXup1Id+NIv5tQM
 RZdZ288TYTXFm1jwRHS5gKkqXP1M771mi5z23jTrKgOmR5NxEGlgYQCxfbqGeJzcAviq
 abGLkl3kRIAtrMLmKsXRmJsuan7E63I4CVr+bVcfLuK7FER9DgG2Pr7V4llKW+sQeClX
 lK/XlMfpT3/Zi1mLdpxyhfUVT/njWc7KJI0jD0YcjAK8STBusr0vCrlsnjtvXO30RTKt
 EcDA==
X-Gm-Message-State: AOAM533uppDqgJckp854f77HpLRR9mMzJJao3dMJq3Q9ZgbAZ8NB5Yhs
 tHqFrPTLM/6T/83ZLdxhLCdTk3N6M9JtFIcI
X-Google-Smtp-Source: ABdhPJz7WNMbXswxujEpSHrQYGaaxUUrUs6tHCs/mUGI2195wSxF+ircdolil7LhOv9eq1jdr1QwYg==
X-Received: by 2002:adf:f084:: with SMTP id n4mr12386191wro.362.1631539053358; 
 Mon, 13 Sep 2021 06:17:33 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:32 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:57 +0200
Message-Id: <20210913131707.45639-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3dhaXQuYyB8IDQ5ICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKaW5kZXggMWU5NzUyMGM2MmIyLi4xMzE3NDU0MWY2
YzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpAQCAtMzcsNTUg
KzM3LDI0IEBAIGk5MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCBkbWFfcmVz
diAqcmVzdiwKIAkJCQkgdW5zaWduZWQgaW50IGZsYWdzLAogCQkJCSBsb25nIHRpbWVvdXQpCiB7
Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZXhjbDsKLQlib29sIHBydW5lX2ZlbmNlcyA9IGZhbHNlOwor
CXN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
OwogCi0JaWYgKGZsYWdzICYgSTkxNV9XQUlUX0FMTCkgewotCQlzdHJ1Y3QgZG1hX2ZlbmNlICoq
c2hhcmVkOwotCQl1bnNpZ25lZCBpbnQgY291bnQsIGk7Ci0JCWludCByZXQ7CisJZG1hX3Jlc3Zf
Zm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQocmVzdiwgJmN1cnNvciwgZmxhZ3MgJiBJOTE1X1dBSVRf
QUxMLAorCQkJCQkgZmVuY2UpIHsKIAotCQlyZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKHJlc3Ys
ICZleGNsLCAmY291bnQsICZzaGFyZWQpOwotCQlpZiAocmV0KQotCQkJcmV0dXJuIHJldDsKLQot
CQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgewotCQkJdGltZW91dCA9IGk5MTVfZ2VtX29i
amVjdF93YWl0X2ZlbmNlKHNoYXJlZFtpXSwKLQkJCQkJCQkgICAgIGZsYWdzLCB0aW1lb3V0KTsK
LQkJCWlmICh0aW1lb3V0IDwgMCkKLQkJCQlicmVhazsKLQotCQkJZG1hX2ZlbmNlX3B1dChzaGFy
ZWRbaV0pOworCQl0aW1lb3V0ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXRfZmVuY2UoZmVuY2UsIGZs
YWdzLCB0aW1lb3V0KTsKKwkJaWYgKHRpbWVvdXQgPCAwKSB7CisJCQlkbWFfZmVuY2VfcHV0KGZl
bmNlKTsKKwkJCWJyZWFrOwogCQl9Ci0KLQkJZm9yICg7IGkgPCBjb3VudDsgaSsrKQotCQkJZG1h
X2ZlbmNlX3B1dChzaGFyZWRbaV0pOwotCQlrZnJlZShzaGFyZWQpOwotCi0JCS8qCi0JCSAqIElm
IGJvdGggc2hhcmVkIGZlbmNlcyBhbmQgYW4gZXhjbHVzaXZlIGZlbmNlIGV4aXN0LAotCQkgKiB0
aGVuIGJ5IGNvbnN0cnVjdGlvbiB0aGUgc2hhcmVkIGZlbmNlcyBtdXN0IGJlIGxhdGVyCi0JCSAq
IHRoYW4gdGhlIGV4Y2x1c2l2ZSBmZW5jZS4gSWYgd2Ugc3VjY2Vzc2Z1bGx5IHdhaXQgZm9yCi0J
CSAqIGFsbCB0aGUgc2hhcmVkIGZlbmNlcywgd2Uga25vdyB0aGF0IHRoZSBleGNsdXNpdmUgZmVu
Y2UKLQkJICogbXVzdCBhbGwgYmUgc2lnbmFsZWQuIElmIGFsbCB0aGUgc2hhcmVkIGZlbmNlcyBh
cmUKLQkJICogc2lnbmFsZWQsIHdlIGNhbiBwcnVuZSB0aGUgYXJyYXkgYW5kIHJlY292ZXIgdGhl
Ci0JCSAqIGZsb2F0aW5nIHJlZmVyZW5jZXMgb24gdGhlIGZlbmNlcy9yZXF1ZXN0cy4KLQkJICov
Ci0JCXBydW5lX2ZlbmNlcyA9IGNvdW50ICYmIHRpbWVvdXQgPj0gMDsKLQl9IGVsc2UgewotCQll
eGNsID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQocmVzdik7CiAJfQogCi0JaWYgKGV4Y2wg
JiYgdGltZW91dCA+PSAwKQotCQl0aW1lb3V0ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXRfZmVuY2Uo
ZXhjbCwgZmxhZ3MsIHRpbWVvdXQpOwotCi0JZG1hX2ZlbmNlX3B1dChleGNsKTsKLQogCS8qCiAJ
ICogT3Bwb3J0dW5pc3RpY2FsbHkgcHJ1bmUgdGhlIGZlbmNlcyBpZmYgd2Uga25vdyB0aGV5IGhh
dmUgKmFsbCogYmVlbgogCSAqIHNpZ25hbGVkLgogCSAqLwotCWlmIChwcnVuZV9mZW5jZXMpCisJ
aWYgKHRpbWVvdXQgPiAwKQogCQlkbWFfcmVzdl9wcnVuZShyZXN2KTsKIAogCXJldHVybiB0aW1l
b3V0OwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
