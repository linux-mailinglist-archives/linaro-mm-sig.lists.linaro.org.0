Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9A140F7F4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:37:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A09069CED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:37:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1762969CEE; Fri, 17 Sep 2021 12:37:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 742F466702;
	Fri, 17 Sep 2021 12:37:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4F402677FF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0BA1D69CDD; Fri, 17 Sep 2021 12:35:45 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id 47B4F64AE0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:38 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id w29so14921084wra.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=ClzefoT8ZJqdUhLiTrPyn/tYDsZAUMp22rU6KvROHSGBst/72K19MsNlgZgPwNO7TW
 AzzYRDpFMvki1AWIpcB3SZIsVtHNlefi2C0rzgvLNY2ea7LGm7pyCHeorIzpd6z/PhVs
 Yg3bacdCLixtAitXPrJanpP7YNVwgDDRW+BjgRpPr2dluoppn1Anx7C2CpiYPQdRWBOx
 YhpsSFuvu0fHEtr9Io9x3aaRelwNL0ds1HpVg6Jwo/i2bglZSrqyknWPgpVo+NJ8siwr
 IheZXKe8bubdnLwaZiIbyC9G055EWnN2K3oamY6NP8jStkHOeNyf+cBn8KYiJgOBvGV6
 OAuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=PU6r8F7HjKLIrgWm5Bzup3V35L8XzTmYT6CWWQCD32i6Ias0oH8F25BTNY+QeQhiHe
 FXkzGTgwN1VOWVBGitM+qd0McZJvUygA8kqgPRY6/5IFqb4QzJaVoACfZLEpnANCL8gw
 HB+j6L8ik50rSLD8NDX5O4zksSauJq7Z1BEwVpHB36/f7ydwtmSSyfMqBGgY00Pre2v+
 yVdTzsgP3tEkrdBH0BzoZGOcCl9xsYtNKqN9QHGOVzXAwWJfRDUhVN3/uI3KuTeTClaK
 AuMDXeux5WOd1wciYYS1y9lDwWHuSCEabGN8D98RsVJKsa54opAHiwrTtmVy0pYoK4AN
 Pi8Q==
X-Gm-Message-State: AOAM532nvZfXiUlVgxB1j1tozUCPlyPiBWL0RDV/eVdnXAkFk3lZK5kv
 X9QICqtjONgg3TnYdkPTSMiEIjS5Y0o=
X-Google-Smtp-Source: ABdhPJzNtLWcjUTMHGl/9GN0PRbPfq18kIpBmMBWkzWXF+U+Lc7iVK6lvLbnj7xd/dMsUoLsX6t9Qg==
X-Received: by 2002:a5d:5981:: with SMTP id n1mr11976979wri.82.1631882137364; 
 Fri, 17 Sep 2021 05:35:37 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:37 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:12 +0200
Message-Id: <20210917123513.1106-26-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
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
Cc: daniel@ffwll.ch
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
