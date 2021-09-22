Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DAF4144E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AD9F63299
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:12:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 12E86618C3; Wed, 22 Sep 2021 09:12:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2C4B631B3;
	Wed, 22 Sep 2021 09:12:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EA80C629C7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 94C1E63221; Wed, 22 Sep 2021 09:11:11 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 6D50A61A49
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:06 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id g16so4728285wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=LqUJwJ5dTwz9Ccg3zxiCpRnEV/yA9uLawfa6FJiR/0RnWrkkuh4XjA6iKcDyOptDx1
 z92jkLWEozHSvUqtcXvUK5mF4aTZN8jqBuYlyn34Xw3W1209+5lTU6G9pCL4HRbCHgHJ
 oOkm+IAueTXTM13tQ0KhXsscI0rAEJtDzxfSzAEsDyf+/Inew/YDr4C0LVFog169GoRY
 ETL6HQ+XkIlBGqepCHPiLIMNusrSgmsqU04677rjaMpg8VPvVKAN7lPEEmRgIumKshDJ
 inB6Pw0ZBLsAsXYGsGUUR98oysMERXY80DjNyMNz1u8HHjnb6T8U3b7YUoOdLgOjllG7
 Aksg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=qqs3pWOe5DkEI4faIRh+Hcwi7Fw9YGpRh5B9DGI85pwrlqaErRfKcNkiBAL3AD+3CA
 VxHYmKwNscFnwNQnVL1njiicGBf+P26QWlR80ZrniSandUP7xFZ/9a7lm9soIq0D1csR
 GE4jM/GbES2GvG7f9HQJR8DRt04bMDX/xWhACn0QN7U91C0T3MnjrmFBOnfc1nSZdeTd
 cyAbKI8NqBtr1pmsanQTD5TnnV1p0MTzNzR7MannEKXjGnIsRGRPlU7m5M3c6ln02MIa
 NVSPv8QT/HNQWOlDzP9Q7I8xjDPOfT1SJfhiNT6hNWCL9KOVCSXikb1G9IzLSt4r4xyT
 Ih0g==
X-Gm-Message-State: AOAM533+43avV7fhEuPmnNoiRF4HHFkef1bA66v8usOSsqOdWKWuqTD/
 bu+UZlC5n+hh+1sBlI3P4lycogUezXI=
X-Google-Smtp-Source: ABdhPJyboeav3w2cn/8uy1T7X+6TV4gmd8exyOvXYiSyHGHiYKGpMjjhAgvC3dJNRa+PVsbBJcPqww==
X-Received: by 2002:adf:fb89:: with SMTP id a9mr9829560wrr.164.1632301865462; 
 Wed, 22 Sep 2021 02:11:05 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:05 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:37 +0200
Message-Id: <20210922091044.2612-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
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
