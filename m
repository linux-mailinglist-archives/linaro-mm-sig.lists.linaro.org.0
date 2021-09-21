Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 879DB4138C1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:39:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F4FA61A28
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:39:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1818D62EA2; Tue, 21 Sep 2021 17:38:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDA6E622E7;
	Tue, 21 Sep 2021 17:38:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AFD5863133
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2451161A4B; Tue, 21 Sep 2021 17:37:30 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id C2A7862CF8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:26 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id g16so41544753wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=ZbGWfdMXL2oZ3jJfLUlEKjlo5sciwCxCL/Zz3DA2kRjAKpBRXeZFEAo/lnXVSt2FAP
 OnoiaNvIXwD7e7pHubQV3zrtjaTWlLwxLZp81p5ngZ0AMIVVwwTCyYc8GE8qjWfXwihC
 fr+cqGceSprO//VxFGPKwiUo4hDePgfQZpncMi4ev1Ex7IItQKhL0ni14i+xSz5DdJBL
 ha3DD3EFeXbEd8ZXDidrY0m1DmP4TwVkcEgSpSopE91BtAmOw9asi25rhmtl+XG2w/DL
 2PV7C0uXXTwLo9Y/ulHZYNFChEImVADkT4Y7WQHviWZEWlBTxyPxBECbfxyQup2lOt4+
 4J4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=NEibdz03U+oypuT69nLn/W8+An7IiUnP6kQ2NtipNHIm/S3QXPRP/Gq3KbLk3GGWLu
 Z8S5xahmvAaBKHG5JLT+P75eNaa3s7Mi7V7SW08qWHIO7cGLffAcoJvAXqQ6lix96Wls
 RnYRgSDRweBdex3kA23nbuskrXLaWsRfS1sNBatC3RBPms+lGSud3CIQvrqJtlLR9bPd
 a37a3MEOIomwQM/G8KukCgYX9P94zG6PGq1QwMi4MBdvUrMwml8HZ5BIsEDKpEOAVKM6
 EFNJf9jUCZRZA3prLOpvB5Jk3v2CSKGZ3cRAca5HPqZi2gxekYl53TNoFDC8wYKnjBnk
 eMog==
X-Gm-Message-State: AOAM532z169Fq3U9vAmz6KjI5Cfm1xNVARZVC/YiYpBXh8Tv3i6eFFuE
 0Mf561SEKx9t+weqxM/VcBb4guD4sRM=
X-Google-Smtp-Source: ABdhPJyWkM8K/gJ6bhFn7K8e+c1a6QlrTv1uAdG0zR3KN2txs1/j18y5D9GJnziqvsqC4k6zxzli8A==
X-Received: by 2002:a1c:7304:: with SMTP id d4mr6028803wmb.125.1632245845783; 
 Tue, 21 Sep 2021 10:37:25 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:25 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:58 +0200
Message-Id: <20210921173659.246165-25-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
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
