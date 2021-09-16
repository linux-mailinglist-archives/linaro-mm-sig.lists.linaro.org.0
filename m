Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4575140D8DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7FF06685C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8F91766807; Thu, 16 Sep 2021 11:32:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 030FF62630;
	Thu, 16 Sep 2021 11:32:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A348D69D12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 07FEA62CF7; Thu, 16 Sep 2021 11:31:11 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id 3661F69CF0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:09 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id s24so4540637wmh.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=YGi6nayBrATbkCwhODb20MMXGtroMBuKFMKiHSpJJV84T7YPBMkg7CwT9yPOmEzaMY
 trLLjeu0tg/oH00K/7iQvk8em2sGrsXzPB4IBR3t8l+Dd69D8w21E33PhiV4gQhBmjzy
 Jph7qutv+y2T98vsrK7Uo7w/nfNrugX8T5RmkYuye9s8Ak6lH5VFKB6o8jqn8puOwlEz
 8Q15+fJQdkq6urpvV6xJJ9VeyzP3TnE50YOUCXdy9EHKIZp92aNx2WY5sNW6hK54QFC9
 DnTzwBkF1fSezE/3okJ1u8g/dwnIbJAWe/5l6yaoEEz+69FFK6GtWy5iAWe9USzWdV18
 mAEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=prBzUF9u5gDJYA54ZAMH97HAjO9kLSRjDtb/U/hI4BtfOVi5Cr/22YC9C2Hbb09keE
 PNnW1BfLO2WxfZBfh6PUPIgUMtAPLW5shLy1m1dnhmAC0xhO7o3vQKbUesWcB5vXgjyT
 sKKdMSOiK32eassdBh1WcKnJ8DeR+4IemPZMSlOr8hmdGWXY0c9K0vXJBebG5lnAiyO5
 QtQrLEnK4i9Gea7fuFeyq5BQPtEIFhtvLnFgU9N3JSbYJaWh5wV+ls1Kzuaf1YrZRcHL
 I+yS56iZurcK/BToq4h+0c9ISltvn6BvKlX6K93d6C5MrAm7c2HoN1zFeDWq4lywybOe
 gIYw==
X-Gm-Message-State: AOAM530jFbU/mgSYKn/wbXrwhgGehN5xE4IovL41t3XwHDnnsaGrf669
 0w1HCzw8iSTnJZ2MvQMU4hy/nZ30POsONwA1
X-Google-Smtp-Source: ABdhPJwJty66BSyg38f1izgxVMtOw1rMBUp0M6VJ3qfJd8Pw1yVyfa9N0AZ9pcJVuwFRWddvkeyNxw==
X-Received: by 2002:a05:600c:4fd3:: with SMTP id
 o19mr4499247wmq.131.1631791868032; 
 Thu, 16 Sep 2021 04:31:08 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.31.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:31:07 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:41 +0200
Message-Id: <20210916113042.3631-26-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
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
