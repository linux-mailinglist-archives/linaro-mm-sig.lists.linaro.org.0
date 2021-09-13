Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AD79F408C58
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEAD4623DB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7439A62630; Mon, 13 Sep 2021 13:17:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3899F61C3D;
	Mon, 13 Sep 2021 13:17:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2D18F6322A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8255062175; Mon, 13 Sep 2021 13:17:28 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 0303E61BD5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:25 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id g16so14684034wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E+vlHAHze2GbFEMjJ18FaF4XzFbDHKUq0E4VCOiUNuo=;
 b=cIaoNW7Pu71uAxZQrsu/xnmOwW4Bc5B869gtUROGkegEYgkxFg9VkD02qtnGbmKz0l
 r7HD1XwBYzQRvbt9qjF9ccsBOGjHtODOy1AGr44+JhyEb4vjHPFdomDedOEniYh8bB6V
 MdVentOMB0CkWNarQsEwl5Ru0CWRr4J+NntBzk7mFYxorok6dnYsv76Wg769nN/H20K/
 zStSwZi9jLzed5G+TRqiV2gHKeqm+0K5eGXNCgISkxmzGkQ4kdBAP6xnUdFrxpYAFHPh
 hGGEAXtwTeUE3L50+GZR/39vCe/CboqjmHuMMYpcZflJl0+JS7herysbSicpKlD1gBg0
 NloQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E+vlHAHze2GbFEMjJ18FaF4XzFbDHKUq0E4VCOiUNuo=;
 b=1hYUi78h0UlKvdVFlhfjPVieFquooi5ONbGw6ZARt6v+cE5vRuzhM2aQbYfvN878I1
 gamQduXuGPeXOa/4F89hMRzObXtm8T4hvjfhiIsU9y1Az/ecxvy+X+17HYil4BLJhbPg
 f6FiNhsOhvGe3Y/0u6ALN3WKsHd9Cy0O6UF6GioONQnF3HjMRZPX+R09SiwpdslrSWpa
 jCEoLJmfkTRYucpNV7aH20yHQJdil83ebY2F9Lx/spe8B8RlGOpYuLlQGLjNRWoAQ2HV
 vHIi7qQRqBGxB7R7xk/wrzSY0P4wKVHtedairzKn88ZNNiLuP//uHhU0wQs0mci55MtL
 v4eg==
X-Gm-Message-State: AOAM530Ka9V/6Fi3qo8f9bI/pOKbCbAAdKdUsbWCca58G0byZueJ7ngl
 uBy9Typ7wuBabVEUiLH9WR0J0094PVLSfkzk
X-Google-Smtp-Source: ABdhPJxLsXI8wPKkwytM0i7YOK1uTgTTkrkYfOP7JpKZmiofMgoeOrjtHMbPc5TauiHJ7pU4s2Wl/A==
X-Received: by 2002:a5d:4a4e:: with SMTP id v14mr12452364wrs.271.1631539044369; 
 Mon, 13 Sep 2021 06:17:24 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:24 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:50 +0200
Message-Id: <20210913131707.45639-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/26] drm/amdgpu: use new iterator in
 amdgpu_ttm_bo_eviction_valuable
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3R0bS5jIHwgMTQgKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV90dG0uYwppbmRleCA0ODllMjIxOTBlMjkuLjBhOTI3MDA2YmE5YyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwpAQCAtMTMzMiwxMCArMTMzMiw5IEBAIHN0
YXRpYyBib29sIGFtZGdwdV90dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0IHR0bV9idWZm
ZXJfb2JqZWN0ICpibywKIAkJCQkJICAgIGNvbnN0IHN0cnVjdCB0dG1fcGxhY2UgKnBsYWNlKQog
ewogCXVuc2lnbmVkIGxvbmcgbnVtX3BhZ2VzID0gYm8tPnJlc291cmNlLT5udW1fcGFnZXM7CisJ
c3RydWN0IGRtYV9yZXN2X2N1cnNvciByZXN2X2N1cnNvcjsKIAlzdHJ1Y3QgYW1kZ3B1X3Jlc19j
dXJzb3IgY3Vyc29yOwotCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmbGlzdDsKIAlzdHJ1Y3QgZG1h
X2ZlbmNlICpmOwotCWludCBpOwogCiAJLyogU3dhcG91dD8gKi8KIAlpZiAoYm8tPnJlc291cmNl
LT5tZW1fdHlwZSA9PSBUVE1fUExfU1lTVEVNKQpAQCAtMTM0OSwxNCArMTM0OCw5IEBAIHN0YXRp
YyBib29sIGFtZGdwdV90dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0IHR0bV9idWZmZXJf
b2JqZWN0ICpibywKIAkgKiBJZiB0cnVlLCB0aGVuIHJldHVybiBmYWxzZSBhcyBhbnkgS0ZEIHBy
b2Nlc3MgbmVlZHMgYWxsIGl0cyBCT3MgdG8KIAkgKiBiZSByZXNpZGVudCB0byBydW4gc3VjY2Vz
c2Z1bGx5CiAJICovCi0JZmxpc3QgPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChiby0+YmFzZS5yZXN2
KTsKLQlpZiAoZmxpc3QpIHsKLQkJZm9yIChpID0gMDsgaSA8IGZsaXN0LT5zaGFyZWRfY291bnQ7
ICsraSkgewotCQkJZiA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoZmxpc3QtPnNoYXJlZFtp
XSwKLQkJCQlkbWFfcmVzdl9oZWxkKGJvLT5iYXNlLnJlc3YpKTsKLQkJCWlmIChhbWRrZmRfZmVu
Y2VfY2hlY2tfbW0oZiwgY3VycmVudC0+bW0pKQotCQkJCXJldHVybiBmYWxzZTsKLQkJfQorCWRt
YV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKGJvLT5iYXNlLnJlc3YsICZyZXN2X2N1cnNvciwgdHJ1ZSwg
ZikgeworCQlpZiAoYW1ka2ZkX2ZlbmNlX2NoZWNrX21tKGYsIGN1cnJlbnQtPm1tKSkKKwkJCXJl
dHVybiBmYWxzZTsKIAl9CiAKIAlzd2l0Y2ggKGJvLT5yZXNvdXJjZS0+bWVtX3R5cGUpIHsKLS0g
CjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
