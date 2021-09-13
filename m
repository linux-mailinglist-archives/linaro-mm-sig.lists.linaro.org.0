Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 91272408C7D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AA9B6362A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 01F2E60591; Mon, 13 Sep 2021 13:18:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A370B69CF7;
	Mon, 13 Sep 2021 13:18:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6712669CDF
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 350AF6338E; Mon, 13 Sep 2021 13:17:45 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id 7F12761C3D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:42 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 b21-20020a1c8015000000b003049690d882so4125424wmd.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ywYiPBqYLCJ23trq34bYRpm7rnat1pMXJ6GgV3mhHgc=;
 b=A5lNs2MC/N0NsksmvdHX/ybghY3pb390BUp8YGF91muqiTAho89imbSUvtWtO0svRP
 lYstGtNDVY0ikAKhwKuM11qNKiVdYZXbzOXpPwzXc4Jt5UukYV8PjLou6zK/l+uM0VOX
 Klb+hmB2u2G9Ub8UPA54IoiUjp2mw2qMaeYHvzWPStvc11BtCIQ1QcL4bfpsiRJ+zaSp
 0bSz0Agre+2HiHecyk1hrShlKkVwNHREX9GV/EYX1oz4tO1xwlAmPTGbDZBBjrtpj4H6
 2Ls+so7KMHz/GW6GQS+NTXewXWkWmrYoGLMRM0WvO/ZuWl/ejbKnI16r4OhxSNXvzcik
 q3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ywYiPBqYLCJ23trq34bYRpm7rnat1pMXJ6GgV3mhHgc=;
 b=3FXBtFzxAHJHV/DrqKZOxdZehkGMkOm7Xni6txxM9+ffqTH4uRojsApBRKLLf+2+kL
 axrBVacWG0urAKLbtjqfoyAzcptmaHbmCR/6kupmPctuSRodTSwwEuIwudEoOC1LBRqd
 //IAnDbgk3nEjSDtRIdTGrOMHZ4Oz06lUzbJ90sBesgBLORhUKsDrk2aLA/AvCNF93aA
 +lkFuryVyScyP7VXNTX55vP5mRcHHYzd8gOFCGUbf77RvOmB0srSh64ZHy6PPxCqNbd0
 jXBstH6BUEe0Oza3dRALrz1rl2Q8Z56hP1wp6nalFb7bwwwTkPctMJmzZJgX42hxZfh5
 J9cQ==
X-Gm-Message-State: AOAM533qw85KeRyvdGPOU72k9DUw6edlNgOAXtIYxikhaFhiSPBAkZvP
 6+e3Bo3H828CDNtjokEWJyEhelRQzy0Tj2O1
X-Google-Smtp-Source: ABdhPJzqAAz9usdIPSG+fQU4iIicyc4vSAGCAFCzdcYdUrhMteKzMJM6QOeBvNhZH9MSD7CZy4OBOg==
X-Received: by 2002:a05:600c:2259:: with SMTP id
 a25mr4541562wmm.133.1631539061673; 
 Mon, 13 Sep 2021 06:17:41 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:41 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:17:04 +0200
Message-Id: <20210913131707.45639-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 23/26] drm/nouveau: use the new interator in
 nv50_wndw_prepare_fb
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

TWFrZXMgdGhlIGhhbmRsaW5nIGEgYml0IG1vcmUgY29tcGxleCwgYnV0IGF2b2lkcyB0aGUgdXNl
IG9mCmRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKCkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvZGlzcG52NTAvd25kdy5jIHwgOSArKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vbm91dmVhdS9kaXNwbnY1MC93bmR3LmMgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9kaXNw
bnY1MC93bmR3LmMKaW5kZXggOGQwNDhiYWNkNmYwLi45YTBjNDJkMzhhNDcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vbm91dmVhdS9kaXNwbnY1MC93bmR3LmMKQEAgLTUzOSw2ICs1MzksOCBAQCBudjUwX3du
ZHdfcHJlcGFyZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9wbGFuZV9z
dGF0ZSAqc3RhdGUpCiAJc3RydWN0IG5vdXZlYXVfYm8gKm52Ym87CiAJc3RydWN0IG52NTBfaGVh
ZF9hdG9tICphc3loOwogCXN0cnVjdCBudjUwX3duZHdfY3R4ZG1hICpjdHhkbWE7CisJc3RydWN0
IGRtYV9yZXN2X2N1cnNvciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJaW50
IHJldDsKIAogCU5WX0FUT01JQyhkcm0sICIlcyBwcmVwYXJlOiAlcFxuIiwgcGxhbmUtPm5hbWUs
IGZiKTsKQEAgLTU2MSw3ICs1NjMsMTIgQEAgbnY1MF93bmR3X3ByZXBhcmVfZmIoc3RydWN0IGRy
bV9wbGFuZSAqcGxhbmUsIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlKQogCQkJYXN5dy0+
aW1hZ2UuaGFuZGxlWzBdID0gY3R4ZG1hLT5vYmplY3QuaGFuZGxlOwogCX0KIAotCWFzeXctPnN0
YXRlLmZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQobnZiby0+Ym8uYmFzZS5yZXN2
KTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChudmJvLT5iby5iYXNlLnJlc3Ys
ICZjdXJzb3IsIGZhbHNlLAorCQkJCQkgZmVuY2UpIHsKKwkJLyogVE9ETzogV2Ugb25seSB1c2Ug
dGhlIGZpcnN0IHdyaXRlciBoZXJlICovCisJCWFzeXctPnN0YXRlLmZlbmNlID0gZmVuY2U7CisJ
CWJyZWFrOworCX0KIAlhc3l3LT5pbWFnZS5vZmZzZXRbMF0gPSBudmJvLT5vZmZzZXQ7CiAKIAlp
ZiAod25kdy0+ZnVuYy0+cHJlcGFyZSkgewotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
