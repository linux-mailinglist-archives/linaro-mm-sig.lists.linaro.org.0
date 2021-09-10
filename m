Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 66450406870
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:27:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B2806322A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:27:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E397E62630; Fri, 10 Sep 2021 08:27:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E21DF64ADA;
	Fri, 10 Sep 2021 08:27:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C00E963639
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A1A88623DB; Fri, 10 Sep 2021 08:27:09 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id E6A0462DEF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:06 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id y132so623485wmc.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y/imVMS+E7ZynWw7iSiIjDs1SxBWXyWjuW715+Mfo5c=;
 b=WtZaZ8lTrzJYkzKuB+d6ATVa2C6k5r+VXR9fkvKSv7zY3+Wpt9lWHA1pwqPZlayoft
 TEa8zcAd84lNsM7gKRlyqKdfBV74rX2zlmk9xfsqP03pWCwl3GJC56Qkn1idmJdF1Lg7
 s8WJvVtgv+lT7Orxk1R/z7jCJD5m/s4KJ1UbtU7Fe/er9HCRKjBAV/uicmyDXGLLUKws
 78FVl2AsmhWdmtCwnn03bFgTiNBOeOxsKjKi2ZC2OZI/rM8wVNxgsr5wxM3mjFqUOZiQ
 CUhI+LEJufmj4NPth0Oi6nUMzKDO/3IGhc7ZbdTxoVRpsJkHRpYbU6mBGxdQeMFRIqAS
 08eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y/imVMS+E7ZynWw7iSiIjDs1SxBWXyWjuW715+Mfo5c=;
 b=SEKuZHjGWnQQ93HE3Cq7Dit9MW/k24kt7vDSOym3HiDIeRl0MTMuj60AwdsTagnG/e
 PlaJ/YfXEXGjW/p5km/AJGqKGYJxnjyDfRPmXnnZuO/McHVEeeWJ8Ok91hHDzByECNtR
 4mvaqRozSsuTWruKWv6QnoUHz8TveIWxbyV21F/pmqrkHp2c5mqL+eSqqzx4nf7LxaR+
 34Ggjh2hL+L/NvPwQ8UqfwnphywpOPrZUt2Csg5TFh5NTmr4Vl3LYgbmAdsC3dhV8usY
 qdPr+0ekbsnUmCo+acLbL95TaPfX8bdnYsc2fsPHb7LGgKZZtNBcIUVloYntRGbQlLRH
 KJjQ==
X-Gm-Message-State: AOAM533ptmdBdy6jO8oeNZknbch9S69/mdSUQGsu6Yw68pmSWndvUuRO
 eVx6w/le/45p3u+gtcH7oX61KOWK3L0rnYre
X-Google-Smtp-Source: ABdhPJyz6KtB+9SFHXD6Ag3BbTzhdxjn4oJj/Wy4PIb7F55aitZHvqm3vDWMLYmLb9u7fpDLGo1GpA==
X-Received: by 2002:a7b:cd92:: with SMTP id y18mr7165760wmj.78.1631262425147; 
 Fri, 10 Sep 2021 01:27:05 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.27.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:27:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:50 +0200
Message-Id: <20210910082655.82168-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/14] drm/etnaviv: use new iterator in
 etnaviv_gem_describe
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

SW5zdGVhZCBvZiBoYW5kIHJvbGxpbmcgdGhlIGxvZ2ljLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMgfCAyNyArKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMgYi9kcml2ZXJzL2dw
dS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCmluZGV4IGI4ZmE2ZWQzZGQ3My4uNjgwOGRiZWY1
Yzc5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMKQEAgLTQzNywxOSArNDM3
LDE3IEBAIGludCBldG5hdml2X2dlbV93YWl0X2JvKHN0cnVjdCBldG5hdml2X2dwdSAqZ3B1LCBz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX2Rlc2Ny
aWJlX2ZlbmNlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAogCWNvbnN0IGNoYXIgKnR5cGUsIHN0
cnVjdCBzZXFfZmlsZSAqbSkKIHsKLQlpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05B
TEVEX0JJVCwgJmZlbmNlLT5mbGFncykpCi0JCXNlcV9wcmludGYobSwgIlx0JTlzOiAlcyAlcyBz
ZXEgJWxsdVxuIiwKLQkJCSAgIHR5cGUsCi0JCQkgICBmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25h
bWUoZmVuY2UpLAotCQkJICAgZmVuY2UtPm9wcy0+Z2V0X3RpbWVsaW5lX25hbWUoZmVuY2UpLAot
CQkJICAgZmVuY2UtPnNlcW5vKTsKKwlzZXFfcHJpbnRmKG0sICJcdCU5czogJXMgJXMgc2VxICVs
bHVcbiIsIHR5cGUsCisJCSAgIGZlbmNlLT5vcHMtPmdldF9kcml2ZXJfbmFtZShmZW5jZSksCisJ
CSAgIGZlbmNlLT5vcHMtPmdldF90aW1lbGluZV9uYW1lKGZlbmNlKSwKKwkJICAgZmVuY2UtPnNl
cW5vKTsKIH0KIAogc3RhdGljIHZvaWQgZXRuYXZpdl9nZW1fZGVzY3JpYmUoc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSkKIHsKIAlzdHJ1Y3QgZXRuYXZpdl9n
ZW1fb2JqZWN0ICpldG5hdml2X29iaiA9IHRvX2V0bmF2aXZfYm8ob2JqKTsKIAlzdHJ1Y3QgZG1h
X3Jlc3YgKnJvYmogPSBvYmotPnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJ
c3RydWN0IGRtYV9yZXN2X2N1cnNvciBjdXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7
CiAJdW5zaWduZWQgbG9uZyBvZmYgPSBkcm1fdm1hX25vZGVfc3RhcnQoJm9iai0+dm1hX25vZGUp
OwogCkBAIC00NTksMTkgKzQ1NywxMiBAQCBzdGF0aWMgdm9pZCBldG5hdml2X2dlbV9kZXNjcmli
ZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHNlcV9maWxlICptKQogCQkJb2Zm
LCBldG5hdml2X29iai0+dmFkZHIsIG9iai0+c2l6ZSk7CiAKIAlyY3VfcmVhZF9sb2NrKCk7Ci0J
Zm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHJvYmopOwotCWlmIChmb2JqKSB7Ci0JCXVuc2ln
bmVkIGludCBpLCBzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Ci0KLQkJZm9yIChp
ID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgaSsrKSB7Ci0JCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5j
ZShmb2JqLT5zaGFyZWRbaV0pOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKHJv
YmosICZjdXJzb3IsIHRydWUsIGZlbmNlKSB7CisJCWlmIChjdXJzb3IuaXNfZXhjbHVzaXZlKQor
CQkJZXRuYXZpdl9nZW1fZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUiLCBtKTsKKwkJ
ZWxzZQogCQkJZXRuYXZpdl9nZW1fZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJTaGFyZWQiLCBtKTsK
LQkJfQogCX0KLQotCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShyb2JqKTsKLQlpZiAoZmVu
Y2UpCi0JCWV0bmF2aXZfZ2VtX2Rlc2NyaWJlX2ZlbmNlKGZlbmNlLCAiRXhjbHVzaXZlIiwgbSk7
CiAJcmN1X3JlYWRfdW5sb2NrKCk7CiB9CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
