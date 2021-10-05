Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5001742256A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:40:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5444C6300B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:40:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8ED2E60479; Tue,  5 Oct 2021 11:39:42 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 055C367036;
	Tue,  5 Oct 2021 11:39:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 88E2363296
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 984F26341D; Tue,  5 Oct 2021 11:38:10 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 4B8E161197
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:06 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id t2so13229586wrb.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=Q8EUxwvnAaw0KU8R9kZ0Sz+WeJ22WlDpfAEoJOb7XLrNnpTLSLMRzcx6RlGvoS/Amg
 i3Mi4/rvMmTh9KKheFN771iKJ1+xRJbTILtLHNdXPW3cS11jVXm47mQCeYaWdiO+5sVO
 sKDVxWqU+qfD8UunB/fwMoTsU+Fgpztynk9j3oeMaP8QNprsq+KTCS6BFDyZLOu93gjO
 N/WEvtA1iJuUkzHUCsvWtW/SQlUzENXrKHoBeZclFiDHnHV45eZnSnghl7YA5mCmQv5r
 o75JjeEVUbuiCw1MNgbszDij3OINaNWqYkFRiIE1lr780ie+fG8gB005VSQ0dxlJc789
 giiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=x3BfjKxrdGfDAHdtmr70jOgq3M+5uXurZ8R8L/aZzWmTx9Tnwd+pPGaJdFmigs5IyK
 PYbv6BSXCIDRXQ/YA50aturZBGp7fy7LCnSKg5WDcVChI8qj2Gc4U9PXrw3myxmgUSas
 kjnUu1zU846j2vuyQaqRmp+SyakY89gfNxwChHkudEnVjshaEq96q/0X9/7rPSHD6jap
 V675Q44ZtPUvAMIiqqr/p/31kG858I4Ond68qAwTtDwbHmHVxykK1DTo2s4vSOOcurj6
 ardTdwnbOLjOkVBHvGWatR3zDocEmczSgrLijDVnFurXhF2ecrbz4DiRyHaYzLChdVbb
 E1Gg==
X-Gm-Message-State: AOAM533/tkOmLq4wmkqTJHhoSlHSHGzP9xYOOAyQXCXKk6c6ii/3RKI+
 6gpOujWyPdb9+d5aa+kBBj68Ui7VOlk=
X-Google-Smtp-Source: ABdhPJxHAmrnhVoif7im+jImnXfY9tw0u6/XOS5J2l/2vyGHeMz9zAZjxIcwRbxfexG/MHiPmUURng==
X-Received: by 2002:adf:e8d2:: with SMTP id k18mr1176818wrn.219.1633433884867; 
 Tue, 05 Oct 2021 04:38:04 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:36 +0200
Message-Id: <20211005113742.1101-23-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 22/28] drm/i915: use new cursor in
 intel_prepare_plane_fb
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
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA3ICsrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAxMzRhNmFjYmQ4ZmIuLmQzMjEzN2E4NDY5NCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTExMjkw
LDYgKzExMjkwLDcgQEAgaW50ZWxfcHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpf
cGxhbmUsCiAJaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX2Zyb250YnVmZmVyKG9iaiwgT1JJR0lOX0RJ
UlRZRkIpOwogCiAJaWYgKCFuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmVuY2UpIHsgLyogaW1wbGlj
aXQgZmVuY2luZyAqLworCQlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CiAJCXN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlOwogCiAJCXJldCA9IGk5MTVfc3dfZmVuY2VfYXdhaXRfcmVzZXJ2YXRp
b24oJnN0YXRlLT5jb21taXRfcmVhZHksCkBAIC0xMTMwMCwxMiArMTEzMDEsMTIgQEAgaW50ZWxf
cHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJCWlmIChyZXQgPCAw
KQogCQkJZ290byB1bnBpbl9mYjsKIAotCQlmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9j
a2VkKG9iai0+YmFzZS5yZXN2KTsKLQkJaWYgKGZlbmNlKSB7CisJCWRtYV9yZXN2X2l0ZXJfYmVn
aW4oJmN1cnNvciwgb2JqLT5iYXNlLnJlc3YsIGZhbHNlKTsKKwkJZG1hX3Jlc3ZfZm9yX2VhY2hf
ZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKIAkJCWFkZF9ycHNfYm9vc3RfYWZ0ZXJf
dmJsYW5rKG5ld19wbGFuZV9zdGF0ZS0+aHcuY3J0YywKIAkJCQkJCSAgIGZlbmNlKTsKLQkJCWRt
YV9mZW5jZV9wdXQoZmVuY2UpOwogCQl9CisJCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwog
CX0gZWxzZSB7CiAJCWFkZF9ycHNfYm9vc3RfYWZ0ZXJfdmJsYW5rKG5ld19wbGFuZV9zdGF0ZS0+
aHcuY3J0YywKIAkJCQkJICAgbmV3X3BsYW5lX3N0YXRlLT51YXBpLmZlbmNlKTsKLS0gCjIuMjUu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
