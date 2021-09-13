Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DC3408C79
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB04669D3B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 43E4161C55; Mon, 13 Sep 2021 13:18:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B28169CE1;
	Mon, 13 Sep 2021 13:18:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 58ADC69D0F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C5EDC64ADE; Mon, 13 Sep 2021 13:17:47 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id CF21763636
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:44 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 v20-20020a1cf714000000b002e71f4d2026so5217337wmh.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=eHafF1f4FLFyeSseJox98EKzdW/NnA3X0UYxAFaxI+XPciSSmj6wQ09p6tfWaRe9BA
 5oHi4ptPueYeEreNPjT6ULrzsv9VlMM/dwlG85SexbAhpY5IUXDZEJgPHeCgHoDbjcmX
 KcWw61VD0RFMAyW05WFocLI4jQHuj7VDcoQlnn8fSmtuM734OCej2gphI3Ix/mEOYTi5
 zdHT9TDf1lOb7GPGgl3whmL3TxWiql8plQ4swPhNVg2Tk+V0+OBVVj4E7GzFgQm0QlMc
 091Suem5M/RFy5c9Q1Uqr+7DEXvRXHa1Us9FP9CHOc1mUPXDtJI5Auxg4tkyGwfMyJc8
 BBLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=XuPrB+FP6mBrwZDjuqD4qOdknPodJvoqDWNislyH0M1NDdl8yQzFy6A3U62q1hLTiG
 xmGv87vWQFzpt342wjgfvasxmctaVo8l/yo8eCjFrYSdxeu2Srf8ytdct3lrGatZiw+U
 fcRLZao8EudZZvNz+5YUvHzF8mHvXMOHz3qV+M0uWMZty3SHLHP6WNzCY1LBRTWoKv0J
 6zOZg8E0aGJdJ8ACVroJ+cIUEpwC5gFcb4O06TWbKxUYVnIZQRNutDCbrOzf9rnEv0kF
 VaBZTr/IXU0Y1co6fRhLGjnE9U00kkjthJqdqU00SDhKfCSDVVxYTnJ7VXwC6q6351hc
 kELQ==
X-Gm-Message-State: AOAM533ZHjz6WmabvcS4azJh4BoWP50oyQQvch28ldXf2SYeYcIAiOOp
 oelbJeKF0Ex2xVhugDzs6lLFzZjRKtMZFSdU
X-Google-Smtp-Source: ABdhPJzzX3f036I5MetbYr7KHLTBrIz3UM2p+tS9h5Jr8u0cPVGaEVuQyigmNaQb4tUhcP23EwO2xA==
X-Received: by 2002:a05:600c:4f53:: with SMTP id
 m19mr11110088wmq.2.1631539063899; 
 Mon, 13 Sep 2021 06:17:43 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:43 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:17:06 +0200
Message-Id: <20210913131707.45639-26-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 25/26] drm/etnaviv: replace
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
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
