Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDF94138B7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:38:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF1E2632E0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:38:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8364B6171E; Tue, 21 Sep 2021 17:38:39 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E3B2619C2;
	Tue, 21 Sep 2021 17:38:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C562861793
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3D51361418; Tue, 21 Sep 2021 17:37:25 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 3DA9A6242C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:21 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id u18so39819279wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=QhCKrDzPfcfEU0KtJvi1gojE6N+/J83swBeOpDwU3RnRQYCM5FjQMnzSWCWOE2sA67
 XgVLmnm0pruKqhf5pyxpjN5oQ1Nx99Hp1OmIhp1BB0y6IEAekIA4YkclBroqS6GfBPPV
 r5CvBvgposNwBuJ6DxZunG37NHd+9LQh+NyEt2PfvZi3v5t/fMvtCGgGr2AqKHLKZNox
 slesdiklcO5UmcbA0OtgiVGygFvSauR6WWVk2fVZ4nfeozVEmZepK5VU7pCJPydCS0cw
 IxTCo3Ho7q/eBUaImRIQYxgp23nVkoE9069kHfqIyxdOgCAXSmO9CQPYQRJlyv0gReaR
 +SAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=JBVWE88wTmbrI7D+LisisR+wPh5IQjwuIEI3IzvF9XeFRbY2xj5/WbnInO1JyiIrBG
 Td+5PV/Dyt65GprIcv61TXfdw11X2ZzMagXVG8HkaMzTusEfLNdX4Wf/CF8CJe6G8UQl
 KYyBHiHeIheoqmlgq+msmdIG5N2OjYULgLhYF2pOk/3oLmaCkvaLAF7C/InHpD6xvwBU
 7teTIDum+8GYRwHM3Himh3dJRBSyy8WlYaehlBdaj0bPUcSN2e87ib0Pr7gHeuNt8z6S
 yNVamudqo+XTAQl/IU3azpI4f+8Oa6dsAuFK/2QfCULyLsnJ8ht8phqk+Lg27iWnMTbP
 Lifg==
X-Gm-Message-State: AOAM533jV8SJYN6gck+KzrKOCEtbTdSc1Jd94nNnqLlUZCn7CeoyY1Y8
 axfRdGGbXKEzk3MrUFJxdDo=
X-Google-Smtp-Source: ABdhPJylGvEYr8kt+PxFanhf0YCoo/262g+dhG0tZ/kg118lPNrqeIl8pVy5RsNKsDS4Y5A66FprQQ==
X-Received: by 2002:a5d:46c7:: with SMTP id g7mr35888328wrs.316.1632245840393; 
 Tue, 21 Sep 2021 10:37:20 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:20 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:52 +0200
Message-Id: <20210921173659.246165-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 19/26] drm/i915: use new cursor in
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
