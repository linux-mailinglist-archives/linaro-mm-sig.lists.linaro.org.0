Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6609141EAAA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:09:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D02563524
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:09:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0092B6328C; Fri,  1 Oct 2021 10:09:00 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EE4966904;
	Fri,  1 Oct 2021 10:08:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D907D6328E
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 20CBB610C3; Fri,  1 Oct 2021 10:06:47 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id 93CF463294
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:42 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 t16-20020a1c7710000000b003049690d882so10759992wmi.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=PXH8tk9DNBtLaZwDDHnKup32VEbpBQdrjnSXIPz0PW/dyKbkTSjIKHVTAC+gmlyDuj
 wOAsN80WpUYrWHZo1ChOZ5tQC/9V7NFyqsQvdfIhpUyYSYzeOGDWq2Ab9U2HzyPAQOmb
 lT2BL5MBr+q3BTqhoCKyW1GTdauzxNRnK9dr3J8fFlHFxp1kh1vJLBaeaB6cc2ba1Et9
 32HQ5EfNMdB/gf9+hKRYIQxYReupUwsW70EDr32L6Np0ef8uBgpmnH18fmZva2PhJ9f5
 1iddLO3Wz1BxBZ+fc9dpTP2RwYIcZb2YV9BnvM8ASO30hzVRAqXskgB6BkfF7bx/+XHt
 v7+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=xwq7sRgtXsKoA6pefHX8X+kxfXQ9hzaOJCLcV0MXADU+tA08PZ/KB/eCOrTUxpRPvn
 Y91RjjeSoZIsjr/P/ONIJnTy8V89rFEK2hwWz+MtL0/Xif9alQR0npNJtTdQpq36yYec
 7L8HSh+LZTYudP09v/y8C4MyNCjk6JSmRKdC2yxUG5sjpIijJgBTHYjXD5Sy5eiCTYHk
 wOaiSgVc8bdsWhVOyEKwdR+LRFcOJ2mxDg8h4L7jVws9CSUggjXWUwzl5dJJCtpsSBPW
 AB/rt0cMcNzZnPv7rDSZyZ0pl0mfHaN6s7fJnHk+RoDz/nYmBU0iCfJoMvWWG50QmTlC
 mRgw==
X-Gm-Message-State: AOAM532exshHVYsQ+HeMQ//YT0V4DH2s8jO6rNUKiM6eMqTPuEoJLncS
 BiaxGEsTrRnYImF0EebAmzjKO7CSK38=
X-Google-Smtp-Source: ABdhPJx7qiKtQqciPHO0by0iLKqUhwG5jjzzHPN8NAGU+x7I7V5LqtDnXG25PcpZlk3SIHVxGLVmAQ==
X-Received: by 2002:a05:600c:35c6:: with SMTP id
 r6mr3635692wmq.24.1633082797663; 
 Fri, 01 Oct 2021 03:06:37 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:37 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:06:10 +0200
Message-Id: <20211001100610.2899-29-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 28/28] drm/etnaviv: replace
 dma_resv_get_excl_unlocked
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

V2UgY2VydGFpbmx5IGhvbGQgdGhlIHJlc2VydmF0aW9uIGxvY2sgaGVyZSwgbm8gbmVlZCBmb3Ig
dGhlIFJDVSBkYW5jZS4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dl
bV9zdWJtaXQuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2Vt
X3N1Ym1pdC5jIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fc3VibWl0LmMK
aW5kZXggNGRkN2Q5ZDU0MWMwLi43ZTE3YmMyYjVkZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jCkBAIC0xOTUsNyArMTk1LDcgQEAgc3RhdGljIGlu
dCBzdWJtaXRfZmVuY2Vfc3luYyhzdHJ1Y3QgZXRuYXZpdl9nZW1fc3VibWl0ICpzdWJtaXQpCiAJ
CQlpZiAocmV0KQogCQkJCXJldHVybiByZXQ7CiAJCX0gZWxzZSB7Ci0JCQliby0+ZXhjbCA9IGRt
YV9yZXN2X2dldF9leGNsX3VubG9ja2VkKHJvYmopOworCQkJYm8tPmV4Y2wgPSBkbWFfZmVuY2Vf
Z2V0KGRtYV9yZXN2X2V4Y2xfZmVuY2Uocm9iaikpOwogCQl9CiAKIAl9Ci0tIAoyLjI1LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
