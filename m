Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4109740F7ED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:37:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FA6763426
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:37:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 05C2269D12; Fri, 17 Sep 2021 12:36:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C354169D48;
	Fri, 17 Sep 2021 12:36:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1165C6341F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5259F69CCE; Fri, 17 Sep 2021 12:35:37 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by lists.linaro.org (Postfix) with ESMTPS id 5EF1A63636
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:33 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 z184-20020a1c7ec1000000b003065f0bc631so9874225wmc.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kXKjeGBADw7OkfdzhZSt4MyIYI/kiJUFDi8gqE27MEk=;
 b=XGeEkOBDKSxjLIr9h/2LXxg9b9Qp9nQ1jeAbxOHQ+Y2aKqPLBmAEgc5hv8ZllcOneH
 SXLXD4Mlufs09lr7ateqOtcrvkmEeRMotR+E4NhWQCyLAYRPsfbdDJ8QfQihjOVRtBb/
 xCd1cQ8thLx5ZidjLtsClZ4an9qRTn3z+LA+qfuFiJJKwZSMcLebr9doAJ8QSVJK5CHz
 ygSW/dgDvOCbV2ZTz9v5mgMlKmTm9mWcPKxCldkP9CEENogrstu9w/h1Qn7IC1T6zdFi
 OQhQVLbMuZCAhuj0EXJXdrqUBXxpexyAaR3qsYU9TGdqdQHnqbdisIfWYbgmHxzCrgBG
 0UBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kXKjeGBADw7OkfdzhZSt4MyIYI/kiJUFDi8gqE27MEk=;
 b=crEdYmlKpzYaitlxZ5f04ddK882azZkGQUw76W11j1jAYyjcpYnItquWK4mFqWr9qW
 Khj9uS50uGy9GQqxVRTyrRZTyczQShK6VxguulEM9iwRPGbJ1skE/sywDHAE23yTP6cg
 5DOuuluvzyQeRSTsSx469vAjiaKUZweyE1ShJQkthheR8+r1Ta9JpfEfkRdeIzXGK1rh
 jX3pt6B6IXITU0nwjyQ3BUztITQONQ2+bPRNYGuAZCBYzmmC8qQJ1pySnvGmUWuJCCpJ
 TkNm7HOvHYLcsr+LpxTsPGOaJgDZxSoC8SarQodQThSVN42Zt4dnf+MYUbt6dUz+XrSt
 p29A==
X-Gm-Message-State: AOAM533Iy2w4eLgIOPRxrwGrgTJtj+qob8LYqBVAY47NSpL+aE5F1CXy
 L0Do+I5VJsS9mpN5sTCeorFrqismiCw=
X-Google-Smtp-Source: ABdhPJxnRPxEMk2FxBtoUnZidz/iVaBR9QM19ZzVdBgpzDZjd+/cY+u8xzzlOzFvnY7JyZ0eNQMvpQ==
X-Received: by 2002:a7b:cc96:: with SMTP id p22mr10074382wma.83.1631882132299; 
 Fri, 17 Sep 2021 05:35:32 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:32 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:06 +0200
Message-Id: <20210917123513.1106-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 19/26] drm/i915: use new cursor in
 intel_prepare_plane_fb v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIHJjdV9yZWFkX2xvY2soKS91bmxv
Y2soKQoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgMTEgKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwppbmRleCAxMzRhNmFjYmQ4ZmIuLjUxZTNkZjBkZTFjZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTExMjkwLDYgKzExMjkwLDcgQEAgaW50
ZWxfcHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJaTkxNV9nZW1f
b2JqZWN0X2ZsdXNoX2Zyb250YnVmZmVyKG9iaiwgT1JJR0lOX0RJUlRZRkIpOwogCiAJaWYgKCFu
ZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmVuY2UpIHsgLyogaW1wbGljaXQgZmVuY2luZyAqLworCQlz
dHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CiAJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwog
CiAJCXJldCA9IGk5MTVfc3dfZmVuY2VfYXdhaXRfcmVzZXJ2YXRpb24oJnN0YXRlLT5jb21taXRf
cmVhZHksCkBAIC0xMTMwMCwxMiArMTEzMDEsMTYgQEAgaW50ZWxfcHJlcGFyZV9wbGFuZV9mYihz
dHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJCWlmIChyZXQgPCAwKQogCQkJZ290byB1bnBpbl9m
YjsKIAotCQlmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKG9iai0+YmFzZS5yZXN2
KTsKLQkJaWYgKGZlbmNlKSB7CisJCXJjdV9yZWFkX2xvY2soKTsKKwkJZG1hX3Jlc3ZfaXRlcl9i
ZWdpbigmY3Vyc29yLCBvYmotPmJhc2UucmVzdiwgZmFsc2UpOworCQlkbWFfcmVzdl9mb3JfZWFj
aF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgeworCQkJcmN1X3JlYWRfdW5sb2NrKCk7
CiAJCQlhZGRfcnBzX2Jvb3N0X2FmdGVyX3ZibGFuayhuZXdfcGxhbmVfc3RhdGUtPmh3LmNydGMs
CiAJCQkJCQkgICBmZW5jZSk7Ci0JCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwkJCXJjdV9yZWFk
X2xvY2soKTsKIAkJfQorCQlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKKwkJcmN1X3JlYWRf
dW5sb2NrKCk7CiAJfSBlbHNlIHsKIAkJYWRkX3Jwc19ib29zdF9hZnRlcl92YmxhbmsobmV3X3Bs
YW5lX3N0YXRlLT5ody5jcnRjLAogCQkJCQkgICBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmVuY2Up
OwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
