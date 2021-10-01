Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DCA41EAA6
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:08:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85576634D0
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:08:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6EFFB60EFF; Fri,  1 Oct 2021 10:08:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BC36617DA;
	Fri,  1 Oct 2021 10:08:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EF0FE63424
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 187896242A; Fri,  1 Oct 2021 10:06:43 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id A0FE662D34
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:33 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 j10-20020a1c230a000000b0030d523b6693so220381wmj.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=QZ7jIyUtRkqWi3/s0K0fbEd02lkzUinpljPHbXZlqpmhMVHLiSbCFHJYGGybWrA8Jm
 HmlcLkCjz/B3Fueg7T2MO5A8CIU/W5rd4QtclWoBYabjupoj8UeoRe+umMh0ARSQw0/u
 LfYvx0aumLyVdqSznnKPD5m3G2+hL4QJPRT3HnfhrMe6+oTZBmZ1CCYjBgEaNjOExPEA
 sLEBaYfijWq74Ou5RZjifErnWjzojo2EBTlbg1IhoybYLlE2at/N66Jh/qcjIUH8RRmk
 LIs88T6grbCdFtMQCcdovIRrzZPeQToDAmDTSo6MlGwmippZzNCB4Ffi/D6qJipiYHLB
 +p9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=SaH6En2s+mOjWqheiSWzdwr7CkL8ohu7snjud2VDBfiePh0Jh68cckSmA4QhrnVuqX
 NYf0uPiM7/OyNWEs9P4MqtJi4+ZZ1y8iTZT49FhAAEUxzuqg99yDr/ijktr5RAkY5hsW
 1CPjtZgdUbL1klcuY9Q01c6MTMueMOs1iwY38sO5mq61p0q2/tL0jkk8pbuFefbxtDHr
 KthTHyTxs0hPdWdo0aljClYyDANN/GJyUZP1C5EUeNb6bKSnIQFGskQEcsutq2OThZ0a
 qvfysbUsvqg1sF3UbFddlio5yiXjbzNqTSlxT90uWhvISsMa8SVibGnQMBlIVoDm82E1
 9iqA==
X-Gm-Message-State: AOAM532w3CG2g6hxjQEWLm2ZUUgvER5pN19WazgEJajzj5B1dDRTBr5p
 U0otRRdxtYoeWBqYQea5ubo7T+ppawI=
X-Google-Smtp-Source: ABdhPJwnczMK6QJ2ymumuKHZRC/JtWjIcbjAHbL+u7jejn8qlHzl8dTw34Cn0jdZd2kK2n/HjgmQuw==
X-Received: by 2002:a1c:f609:: with SMTP id w9mr3585301wmc.24.1633082792628;
 Fri, 01 Oct 2021 03:06:32 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:32 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:06:04 +0200
Message-Id: <20211001100610.2899-23-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
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
