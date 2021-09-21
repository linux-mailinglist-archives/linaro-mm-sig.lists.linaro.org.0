Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 977D74138A7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:38:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D68361655
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:38:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 05C4B61417; Tue, 21 Sep 2021 17:38:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 324AC61417;
	Tue, 21 Sep 2021 17:37:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9886E6129E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 640BC619C2; Tue, 21 Sep 2021 17:37:17 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 987696328E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:13 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id w29so41597547wra.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IkVWp2cRgm41mlWFdiuPcdEqOEMHJpLCxm3yFN2dD0Q=;
 b=QzMA/MJYLzsk3fKoS93pNaqQULxZ7tIKjhecJyxX+My31cSMztTOIDiNKFaGZu7+sM
 Zz2XQj3G6rwGASa6eUmy9UpTfIJX0YfdpjEFLFo4EM4rmP/K/ixcmqwT/Ud16sk/+Zgq
 igUcslde55qLgyiVrjiQ3Omt3sKzUkX24IEpoqYCLDc6x9J0bY7Ktw2kEYc6Cf+Ke21m
 0FkxYIuv34lA9y1RDhJHy8/pINXoD8JHA+CD0OrOLATne9Aj63mB4C6sJKkY0lrpG6Xd
 IaNto0v0qYmSGP5zQ8aSvcGp0/wlfB2aMtYqNeGNtxqK1PTeNyApddXNQZfOJbK1sUXT
 iZJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IkVWp2cRgm41mlWFdiuPcdEqOEMHJpLCxm3yFN2dD0Q=;
 b=AwKRafLNDP+SLaxbALEIXyaSyJ2lz0vuVeyV8oBOlehU4GmFIXtD1JOcCA+BU69QEA
 wqfdG4EHMbyRWQK7wa1THShc//W6Dl4HIQ873UQSltsCKLRcYF2LjBJtJf3pbNz9EWQe
 WHq/BeH1U4vwHz2sXjEwK2GHI6j1MoFRsAca30PeB2VrE8slundAQ8/s3jGxqI0pEwGk
 poQYGS3WTXS+p2SWzF/bo95n/9r1cUwYB0LaT88KAfKUyPKZ6aKLd0Xn9vdjko14dIJM
 AUrOEXMUM2cjn5MVWuHxAs77skqZgCNas/rPpB0qog866rTxQT9tGPGvFUh/S8AfIA33
 8ROw==
X-Gm-Message-State: AOAM530RifoavKZExMGiV+9BaPonPjh3ZpWqQiUBsoGYPtdPgqzceUvn
 8CcxUQCnE6045bRHXK5CWBNBnmTX/0o=
X-Google-Smtp-Source: ABdhPJx9BSlIPy12vMo8UwZ/k1sZ2Iu5q5ti+N/kgo5j7w4UmBjHDnDHWN7dwqPuLhZdrHpzyicmVw==
X-Received: by 2002:a05:6000:105:: with SMTP id
 o5mr36265102wrx.413.1632245832661; 
 Tue, 21 Sep 2021 10:37:12 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:12 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:44 +0200
Message-Id: <20210921173659.246165-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 11/26] drm/radeon: use new iterator in
 radeon_sync_resv
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
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yYWRlb25fc3luYy5jIHwgMjIgKysrLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fc3luYy5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fc3luYy5jCmluZGV4IDkyNTdiNjAxNDRjNC4uYjk5MWJhMWJjZDUxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9zeW5jLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JhZGVvbi9yYWRlb25fc3luYy5jCkBAIC05MSwzMyArOTEsMTcgQEAgaW50IHJhZGVvbl9z
eW5jX3Jlc3Yoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsCiAJCSAgICAgc3RydWN0IGRtYV9y
ZXN2ICpyZXN2LAogCQkgICAgIGJvb2wgc2hhcmVkKQogewotCXN0cnVjdCBkbWFfcmVzdl9saXN0
ICpmbGlzdDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1
cnNvcjsKIAlzdHJ1Y3QgcmFkZW9uX2ZlbmNlICpmZW5jZTsKLQl1bnNpZ25lZCBpOworCXN0cnVj
dCBkbWFfZmVuY2UgKmY7CiAJaW50IHIgPSAwOwogCi0JLyogYWx3YXlzIHN5bmMgdG8gdGhlIGV4
Y2x1c2l2ZSBmZW5jZSAqLwotCWYgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKHJlc3YpOwotCWZlbmNl
ID0gZiA/IHRvX3JhZGVvbl9mZW5jZShmKSA6IE5VTEw7Ci0JaWYgKGZlbmNlICYmIGZlbmNlLT5y
ZGV2ID09IHJkZXYpCi0JCXJhZGVvbl9zeW5jX2ZlbmNlKHN5bmMsIGZlbmNlKTsKLQllbHNlIGlm
IChmKQotCQlyID0gZG1hX2ZlbmNlX3dhaXQoZiwgdHJ1ZSk7Ci0KLQlmbGlzdCA9IGRtYV9yZXN2
X3NoYXJlZF9saXN0KHJlc3YpOwotCWlmIChzaGFyZWQgfHwgIWZsaXN0IHx8IHIpCi0JCXJldHVy
biByOwotCi0JZm9yIChpID0gMDsgaSA8IGZsaXN0LT5zaGFyZWRfY291bnQ7ICsraSkgewotCQlm
ID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmbGlzdC0+c2hhcmVkW2ldLAotCQkJCQkgICAg
ICBkbWFfcmVzdl9oZWxkKHJlc3YpKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29y
LCByZXN2LCBzaGFyZWQsIGYpIHsKIAkJZmVuY2UgPSB0b19yYWRlb25fZmVuY2UoZik7CiAJCWlm
IChmZW5jZSAmJiBmZW5jZS0+cmRldiA9PSByZGV2KQogCQkJcmFkZW9uX3N5bmNfZmVuY2Uoc3lu
YywgZmVuY2UpOwogCQllbHNlCiAJCQlyID0gZG1hX2ZlbmNlX3dhaXQoZiwgdHJ1ZSk7Ci0KIAkJ
aWYgKHIpCiAJCQlicmVhazsKIAl9Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
