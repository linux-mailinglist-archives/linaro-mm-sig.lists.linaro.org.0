Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CE8408C75
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6048762D34
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C582C623DC; Mon, 13 Sep 2021 13:18:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BA046322E;
	Mon, 13 Sep 2021 13:18:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6149D63423
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5037D63258; Mon, 13 Sep 2021 13:17:39 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 7CB9362CF6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:36 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id t8so9616480wrq.4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UwL17ws4Cj5CpVM2J1DKtpxQdvIAu+7iFXWlMc3XdYk=;
 b=cI1+0bSkX70HMwya9WuZBP8r8rOXEE9AtiZYYqg1KaqnK4SFdTBcBle/XxUgsyhI0I
 m11TzRrr6J3E1Kc3u/1g1Jxp+L4919hjF9kdWEhOUsy6JMmBhIn5dkKU1Rr0TxqP4iDb
 7XSPOS8qVXORHnmhObg8SJQ3JYrgiVkdkueOCXFFi4SM/VfqkhAfZ58P2iJjRVYmsLUZ
 H3pKICOUzDxmVe/YVjBregqPlZXFNCoa7WK2n0IlHL+QtIabgPIPs6ffwfTzuep+tZ6L
 WbGPGYOUr3oGWu1uSqVAVpLf3Heq1/QSVIunkGNOpCM5cnbHWYxsfN0HAkEy4tKHBGw2
 IZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UwL17ws4Cj5CpVM2J1DKtpxQdvIAu+7iFXWlMc3XdYk=;
 b=WYfCqa6wpkE8+gOqTXOJ41dgAjFXgBf92s8ffeMcnGSW/IZ4Q/Z5srAAOzuLeRvMmz
 KVHtDYcBu3QlMWCphyh8YVCNNQ9nNXM6jO3IgDo2vfvDLG4F3ajmz+Kcim3u8UiSW5FA
 wRdkZIwQ2m+Zceu82Ydi57NBUFZxPYxUhOZVGq83gPWoWMIZmaamWwUw4YY4aYaRv4Tu
 rY3V/LdSSBLJ6VfXrVZUVekAvRDvq3ixo7Bk+tPiDfFEQ3j/mv+FJPOqLURzB/43QiDA
 bp+ocKkQC1xkks3jBuJAcPvLh2LvvQPsQOIUOMUWbn1PDLjWUr9N2rlgEtcAKR0Qc8ak
 N7Og==
X-Gm-Message-State: AOAM530IXIjNOQsFM4GR4XH+NcclOKLeubPRK+t1bXC/yRTnCHtJtk67
 s/60vTXOmD2/Ef2AXKZz6QDQ6zpVhtxyqgAx
X-Google-Smtp-Source: ABdhPJyBTaLGrf1lQ8fHQu0y5Qx4go6SxyETrhxHj6NCimrHFRCETpdmGEpMhxdYU0MD2gXT4dNbRQ==
X-Received: by 2002:a5d:4a4e:: with SMTP id v14mr12453466wrs.271.1631539054588; 
 Mon, 13 Sep 2021 06:17:34 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:34 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:58 +0200
Message-Id: <20210913131707.45639-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 17/26] drm/i915: use new iterator in
 i915_gem_object_wait_priority
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
Z2VtL2k5MTVfZ2VtX3dhaXQuYyB8IDI5ICsrKystLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKaW5kZXggMTMxNzQ1NDFmNmM4Li5lMjE3M2E1NWU1
MjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpAQCAtMTIwLDMx
ICsxMjAsMTIgQEAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcHJpb3JpdHkoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAgICAgIHVuc2lnbmVkIGludCBmbGFncywKIAkJCSAgICAg
IGNvbnN0IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgKmF0dHIpCiB7Ci0Jc3RydWN0IGRtYV9mZW5j
ZSAqZXhjbDsKLQotCWlmIChmbGFncyAmIEk5MTVfV0FJVF9BTEwpIHsKLQkJc3RydWN0IGRtYV9m
ZW5jZSAqKnNoYXJlZDsKLQkJdW5zaWduZWQgaW50IGNvdW50LCBpOwotCQlpbnQgcmV0OwotCi0J
CXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXMob2JqLT5iYXNlLnJlc3YsICZleGNsLCAmY291bnQs
Ci0JCQkJCSAgJnNoYXJlZCk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCWZvciAo
aSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Ci0JCQlpOTE1X2dlbV9mZW5jZV93YWl0X3ByaW9yaXR5
KHNoYXJlZFtpXSwgYXR0cik7Ci0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Ci0JCX0KLQot
CQlrZnJlZShzaGFyZWQpOwotCX0gZWxzZSB7Ci0JCWV4Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91
bmxvY2tlZChvYmotPmJhc2UucmVzdik7Ci0JfQorCXN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vy
c29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCi0JaWYgKGV4Y2wpIHsKLQkJaTkxNV9n
ZW1fZmVuY2Vfd2FpdF9wcmlvcml0eShleGNsLCBhdHRyKTsKLQkJZG1hX2ZlbmNlX3B1dChleGNs
KTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChvYmotPmJhc2UucmVzdiwgJmN1
cnNvciwKKwkJCQkJIGZsYWdzICYgSTkxNV9XQUlUX0FMTCwgZmVuY2UpIHsKKwkJaTkxNV9nZW1f
ZmVuY2Vfd2FpdF9wcmlvcml0eShmZW5jZSwgYXR0cik7CiAJfQogCXJldHVybiAwOwogfQotLSAK
Mi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
