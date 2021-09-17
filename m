Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 316C240F7F1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:37:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE03269CDC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:37:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 322E469D11; Fri, 17 Sep 2021 12:36:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB35A6362B;
	Fri, 17 Sep 2021 12:36:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6E71664AD6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 63E0369CF6; Fri, 17 Sep 2021 12:35:37 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 8477F69CED
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:32 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 b21-20020a1c8015000000b003049690d882so9830493wmd.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BPSU1DXFCGE7WDMspzajAb5+e08n2RYsOOJEReWtL6U=;
 b=G7GZR/a3uftoZUOQE1c5/xOo1bxgEpGvghaVs/z0MIKYtjDRjokQ7n9avxKHenfJmP
 QJpAsdMHxHBym8ybMepqG99FkHP3tRqLVtRAzRFUZBypbd+VXJUStpFWHbDo5iiVCgn3
 Pbvps5yJ8rmr9efaFRBWkvaz8BarNd/aexogI9NPT7fHt/P6Dyl16sGMXHbZKkPWhT1L
 qFMnnDBkaCb+iz+HInXNKlKtuO9s1Apg9hXVe07nLBnntrGUmKflElYKOw7/qyMdOOOa
 r16gh0Q625ASoLJMdrsIWYI8ud+9xFbYuUCCUqSU9RwfLAo9dQiRgQb5UNk7i6huNurb
 cjqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BPSU1DXFCGE7WDMspzajAb5+e08n2RYsOOJEReWtL6U=;
 b=8F4EY0+RQK0g4G88ePiE8hAkVfBWir9J3XER2FdLE9S68/DOMLysU7rfwG4SqueUjR
 42NYTPfnHllhwcPAW7VR82/eAMOPWvNWsNTCISokR/tupguEJSRNchR4u1F58YILwNjO
 eIEut7bS1t9I2L+B+Ekc9rFASnciyelPvMnvzXAU6tAN6OY7Zq4QxKUsHCOnfQ20Kdiz
 Q++f46YAOd49M0H2yXMYWxDQfYdDvYpHLB7GR5ev+/AsuCXe47Pda+UDNRwrycgUPx/Q
 bNM2aKsMDBRFA1PXHc5wGshDnEcqpC0doJFiz7iM+eO1eNitq8Dd4oce4qcv2K9Wxxfk
 s0YQ==
X-Gm-Message-State: AOAM533jqGiCGiVOczjbkvtn12rZ9a7hStfIs+GSNGFksMwEA4oZQpZZ
 6cD2iIURsZRAFhHulLQxVNwZ1cZXxaY=
X-Google-Smtp-Source: ABdhPJyYZOZM3qHZmzmJADXhbU1qBTWv4kCQvYb25PVLMl4AWhnK4e6h1RUh9Oi/FX1k49dfTAyXWQ==
X-Received: by 2002:a7b:cbc4:: with SMTP id n4mr15128737wmi.93.1631882131496; 
 Fri, 17 Sep 2021 05:35:31 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:31 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:05 +0200
Message-Id: <20210917123513.1106-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 18/26] drm/i915: use new iterator in
 i915_gem_object_last_write_engine v2
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBpcyBtYXliZSBldmVuIGEgZml4IHNpbmNlIHRoZSBSQ1UgdXNhZ2UgaGVyZSBsb29rcyBp
bmNvcnJlY3QuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9jaygpL3VubG9jaygpCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIHwgMTQgKysrKysr
KystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCmluZGV4IDQ4MTEy
YjlkNzZkZi4uNDg3MzI5YTk2ZTkyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5oCkBAIC01MDcsMTYgKzUwNywxOCBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKgogaTkxNV9nZW1fb2JqZWN0X2xhc3Rfd3JpdGVfZW5naW5lKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lID0gTlVMTDsKKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CiAJc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2U7CiAKIAlyY3VfcmVhZF9sb2NrKCk7Ci0JZmVuY2UgPSBkbWFfcmVzdl9n
ZXRfZXhjbF91bmxvY2tlZChvYmotPmJhc2UucmVzdik7CisJZG1hX3Jlc3ZfaXRlcl9iZWdpbigm
Y3Vyc29yLCBvYmotPmJhc2UucmVzdiwgZmFsc2UpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNl
X3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7CisJCWlmIChmZW5jZSAmJiBkbWFfZmVuY2VfaXNf
aTkxNShmZW5jZSkgJiYKKwkJICAgICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQorCQkJ
ZW5naW5lID0gdG9fcmVxdWVzdChmZW5jZSktPmVuZ2luZTsKKwl9CisJZG1hX3Jlc3ZfaXRlcl9l
bmQoJmN1cnNvcik7CiAJcmN1X3JlYWRfdW5sb2NrKCk7Ci0KLQlpZiAoZmVuY2UgJiYgZG1hX2Zl
bmNlX2lzX2k5MTUoZmVuY2UpICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQotCQll
bmdpbmUgPSB0b19yZXF1ZXN0KGZlbmNlKS0+ZW5naW5lOwotCWRtYV9mZW5jZV9wdXQoZmVuY2Up
OwotCiAJcmV0dXJuIGVuZ2luZTsKIH0KIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
