Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D55145A587
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:23:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1783762DC2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:23:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E833162CA3; Tue, 23 Nov 2021 14:22:56 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B100062D4A;
	Tue, 23 Nov 2021 14:22:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C5E28622CD
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 06FCD62C9A; Tue, 23 Nov 2021 14:21:54 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by lists.linaro.org (Postfix) with ESMTPS id 8164962172
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:52 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id 133so18934171wme.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZA3eVOgXYF/5OpQnArz1+ZTX63Lsh0HMT2Me6ubTWAg=;
 b=TEEklyYpr4YJqPs69chmgb+yzwP1mQMdy5K778Nj1w/9iJe9GLbIj0hWFq/Lky/vUz
 H5mXDRlrL24KotjypM4vV77fCZ/aNpEUXvwcIt7+4bDCHKl4+AyLCL5tvPu4qyErGWhg
 O2F8V7bw6W6rUapXS1ogoyimjwoghSKK7XmycBAlxrhKnZ2WY7jJrupkejqsgn8TroYT
 u4RvOoRTQT8pTkxDjwDcWw+mLs8zkr9UBlyQS340kc6PcE9b7LgckVhg+rDGeOdhC/cX
 zfJb8n2ThmkuaqRkKH5WMaimkI323FelfWs1DadGdSevM24tTmT1jfY4VpjABMXc25DD
 9E/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZA3eVOgXYF/5OpQnArz1+ZTX63Lsh0HMT2Me6ubTWAg=;
 b=3bwvlO5/TTvFHtRDPszqGbWU0Xg56SLICAC0FABXImHxJs9P2kdiu3G/eQ5uWihAcM
 gFvYFd0tI9+Q1tgR6fqHn6bswyjFsMV2B+mohFg30gMFnDINRaUDxkFJkNR7+xvZp2eo
 Rgv45lO4GOvL8z06M5XhfdojVzHRGrCOD3Voppug4oBgCbAKOVW10EWq4pcyZFca+f5l
 ry26lLa9Ut0hi7+HqhA0QMmwCvIrqhtyrh/7sFmEUVmyVT9ZX4t/npwxmONM0M9mxP5w
 l4YluhxNw/H6u9xV9YYvJBQQ0wnRf6w8DG2QgDdKlz9GUvren4dfflIAm7QFYV35WWTZ
 knGQ==
X-Gm-Message-State: AOAM533GJcHCEoCRyuwFqLfpH9OiQQat/SMXoNvjtkhd39Qp7E9avYdR
 niOP6RWVwikfGxXZWFZliC0=
X-Google-Smtp-Source: ABdhPJyjlMjyW4yKQFiqSqmTSpZBQ8JHZc2WoFrzLFwWHowvF5mfVuCgRsFk6nGHySXsRcT3UMN0fA==
X-Received: by 2002:a1c:f418:: with SMTP id z24mr3644229wma.95.1637677311585; 
 Tue, 23 Nov 2021 06:21:51 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:51 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:21:06 +0100
Message-Id: <20211123142111.3885-22-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 21/26] drm/amdgpu: use
 dma_resv_get_singleton in amdgpu_pasid_free_cb
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

TWFrZXMgdGhlIGNvZGUgYSBiaXQgbW9yZSBzaW1wbGVyLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMKaW5kZXggYmU0ODQ4N2UyY2E3Li44ODhkOTcx
NDMxNzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMKQEAgLTEwNywz
NiArMTA3LDE5IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9wYXNpZF9mcmVlX2NiKHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlLAogdm9pZCBhbWRncHVfcGFzaWRfZnJlZV9kZWxheWVkKHN0cnVjdCBkbWFf
cmVzdiAqcmVzdiwKIAkJCSAgICAgICB1MzIgcGFzaWQpCiB7Ci0Jc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UsICoqZmVuY2VzOwogCXN0cnVjdCBhbWRncHVfcGFzaWRfY2IgKmNiOwotCXVuc2lnbmVk
IGNvdW50OworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCWludCByOwogCi0JciA9IGRtYV9y
ZXN2X2dldF9mZW5jZXMocmVzdiwgdHJ1ZSwgJmNvdW50LCAmZmVuY2VzKTsKKwlyID0gZG1hX3Jl
c3ZfZ2V0X3NpbmdsZXRvbihyZXN2LCB0cnVlLCAmZmVuY2UpOwogCWlmIChyKQogCQlnb3RvIGZh
bGxiYWNrOwogCi0JaWYgKGNvdW50ID09IDApIHsKKwlpZiAoIWZlbmNlKSB7CiAJCWFtZGdwdV9w
YXNpZF9mcmVlKHBhc2lkKTsKIAkJcmV0dXJuOwogCX0KIAotCWlmIChjb3VudCA9PSAxKSB7Ci0J
CWZlbmNlID0gZmVuY2VzWzBdOwotCQlrZnJlZShmZW5jZXMpOwotCX0gZWxzZSB7Ci0JCXVpbnQ2
NF90IGNvbnRleHQgPSBkbWFfZmVuY2VfY29udGV4dF9hbGxvYygxKTsKLQkJc3RydWN0IGRtYV9m
ZW5jZV9hcnJheSAqYXJyYXk7Ci0KLQkJYXJyYXkgPSBkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKGNv
dW50LCBmZW5jZXMsIGNvbnRleHQsCi0JCQkJCSAgICAgICAxLCBmYWxzZSk7Ci0JCWlmICghYXJy
YXkpIHsKLQkJCWtmcmVlKGZlbmNlcyk7Ci0JCQlnb3RvIGZhbGxiYWNrOwotCQl9Ci0JCWZlbmNl
ID0gJmFycmF5LT5iYXNlOwotCX0KLQogCWNiID0ga21hbGxvYyhzaXplb2YoKmNiKSwgR0ZQX0tF
Uk5FTCk7CiAJaWYgKCFjYikgewogCQkvKiBMYXN0IHJlc29ydCB3aGVuIHdlIGFyZSBPT00gKi8K
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
