Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD52408C7F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:19:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFFBF66807
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:19:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BF85269CFE; Mon, 13 Sep 2021 13:18:49 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7277B61020;
	Mon, 13 Sep 2021 13:18:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 23DDB61900
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 45D6A63249; Mon, 13 Sep 2021 13:17:48 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id B4DBB61020
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:43 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id i3so6648496wmq.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y/imVMS+E7ZynWw7iSiIjDs1SxBWXyWjuW715+Mfo5c=;
 b=GBU21soDZeX9Q0JI33LLV4oWf0MjVKn6RiAxRYhJ8wUhpQUX9YGPqIsqVGX/2LZ/UX
 UcT/MOIAQ+RVizElzcVAKkgKY/0HANAiUOnjE9QtXxWVjOwG6niuoKQVP+M9qrYBr8u5
 2Ctzb+HUIXF25yIgJR4etOUapUz2wH0m56qM8qPm6rnjCNvjGHTEqseXquMSLGnu5cmw
 AHSFC1ANuh8J5ba8jFq3fyWKRAYi6fBxopE1svXT4Jt/QzPOuoiZzZ1KZhY/zPtlwrTd
 UY8KLonqI/fxlcusZkTe2Xc6yu08DXMJU0SgBUvEYyaaoBH1DNb/4lv1s9lYGb/+UwaG
 SGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y/imVMS+E7ZynWw7iSiIjDs1SxBWXyWjuW715+Mfo5c=;
 b=Pvbp8OuBV1jN6kE54caGo/z/R++ZPTDiiDk2ldiHZRFxxNX55JLsGWLiEEY/hDVGPW
 hu0bSCOLUV+WS8t3QJ3tUllKwuwdXlfrZ0fDLSavkJ2XZzPBI/7KmHAea4CF6QpJklZw
 p29gs2Wuu6YM4Vk0NixU/LlcQhyveMGugbDOxq7/VOIGZgaif5M7dVr+TSlYRFbml39b
 ZhIhTHZjsCewOLM2ass+YJfWnMQMBOWnAPNk0ojLnZRc/EHvMuCtyvMCBdB/Ky06Bq9e
 2mo3LUkcvRApRjFWMAKjWdx/AhLiA339Ys4opah45bLztr1XaycTAN99ElqxIMPEmExX
 zFXA==
X-Gm-Message-State: AOAM532WpYSrDvZ6/LRli6MOs1XqO6SSiQhAme9Fmn/LyRe8z7CsFpiH
 RXpQRoLEcwaOWQ2wCYWP3S1U76vmnveLnj8f
X-Google-Smtp-Source: ABdhPJzPOBw9wFbcsxPQomuaL1kkRsP/z4UMlhWhu5zy3IvXjpysXjtU3LpY/CU8j9RDf5Hi6OD0aQ==
X-Received: by 2002:a1c:7714:: with SMTP id t20mr10752303wmi.163.1631539062774; 
 Mon, 13 Sep 2021 06:17:42 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:42 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:17:05 +0200
Message-Id: <20210913131707.45639-25-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 24/26] drm/etnaviv: use new iterator in
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
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
