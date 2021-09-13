Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BCA408C59
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC53062630
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BCDF763639; Mon, 13 Sep 2021 13:17:59 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A02B6322A;
	Mon, 13 Sep 2021 13:17:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5062D63523
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3E979623DB; Mon, 13 Sep 2021 13:17:30 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 525FB6085A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:26 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id 140so3218846wma.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SoAGyzr0AFHKUUA0vh6k3hC1t95HnGfzvSeL9OXTB3o=;
 b=Kh0OGoeXjzmmCZ0zjFYjMjhcLCSGakXHyJFBtgqCTcmXpUKYZV5H0OOwlCfY6fe9UW
 jh/OKomca4DKpPuZ/+ovaBWY2PF6EfRl8Y+h5iNUuQV0BoP4mjshAyuW4DuLQEGXQHrx
 hnNwydun9hTXd4TlI4ZGsZQ03xedApkQQCxHXuyBwGyAzmb8uOvNvdAW/crG/MKfLvnz
 vTA0nZdzBuax3McLso8eGXFQuQhsiF7nlUMrHxGBZNYOLwJT4xCvQ2mMnlRRNMDysznP
 Uks1ETS8osqd9cSSXZ1WuKsAOqw0/zBAnTXB9ox4c2fMgnBTAtM20DkT6qQhR/sLYZq/
 KwyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SoAGyzr0AFHKUUA0vh6k3hC1t95HnGfzvSeL9OXTB3o=;
 b=ichaMIB7BavbACJDGQoZiWSq1dko1SpW9NHBXCHPtbihVlLNjREZmJMnkg7rTBxlDy
 W8fskqLh55Q/Xs5dXb6D+5i18V7KfmGV+vx/brOHvTU1eNe8oaMIRI6DXZrFx2D29MzS
 XDaOTzn6OrOzij7LvyAOjbP5JXOh9sM+mA2yfRh4mXZNULYOfGEYx5CUUy0WZ38H3kCc
 KqgJXDcWdfoWblrW3V19bPzS0HcYvqL3286iznq2hJt7gyNPb1FZRr/y6+b+wCGDP6Es
 wynz2tH38EE7ZpSuXkGg2HxnKf2xt6MrYmFjDxO75x7olW/1WZdCHw+d8zY9JbpJnrzY
 2rUQ==
X-Gm-Message-State: AOAM530fuBAvmilECLLK/ihtof/sPjuc61xP56J+l+getJxymt+OEKMy
 ArLiQ+bY3s4Th8M9ERlYyOOL9yqOjDT+JJZL
X-Google-Smtp-Source: ABdhPJzx3GYjZUiC7y9zv3TKie29kMObPXC3Pqr0OxTxbCQd7waFVUuKw2gckGGdNYEhwXhRnzNeWg==
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr11295003wmk.135.1631539045407; 
 Mon, 13 Sep 2021 06:17:25 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:25 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:51 +0200
Message-Id: <20210913131707.45639-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/26] drm/msm: use new iterator in
 msm_gem_describe
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuIEFsc28gZHJvcCB0aGUgUkNVIHJlYWQgc2lkZSBs
b2NrIHNpbmNlIHRoZQpvYmplY3QgaXMgbG9ja2VkIGFueXdheS4KClVudGVzdGVkIHNpbmNlIEkg
Y2FuJ3QgZ2V0IHRoZSBkcml2ZXIgdG8gY29tcGlsZSBvbiAhQVJNLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2dlbS5jIHwgMTkgKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0u
YwppbmRleCA1ZGIwN2ZjMjg3YWQuLjhlZTRlODg4MWIwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMK
QEAgLTkwNiw3ICs5MDYsNyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIHsKIAlzdHJ1Y3QgbXNtX2dlbV9vYmpl
Y3QgKm1zbV9vYmogPSB0b19tc21fYm8ob2JqKTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJvYmogPSBv
YmotPnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJc3RydWN0IGRtYV9yZXN2
X2N1cnNvciBjdXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJc3RydWN0IG1zbV9n
ZW1fdm1hICp2bWE7CiAJdWludDY0X3Qgb2ZmID0gZHJtX3ZtYV9ub2RlX3N0YXJ0KCZvYmotPnZt
YV9ub2RlKTsKQEAgLTk4MSwyMiArOTgxLDEzIEBAIHZvaWQgbXNtX2dlbV9kZXNjcmliZShzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHNlcV9maWxlICptLAogCQlzZXFfcHV0cyht
LCAiXG4iKTsKIAl9CiAKLQlyY3VfcmVhZF9sb2NrKCk7Ci0JZm9iaiA9IGRtYV9yZXN2X3NoYXJl
ZF9saXN0KHJvYmopOwotCWlmIChmb2JqKSB7Ci0JCXVuc2lnbmVkIGludCBpLCBzaGFyZWRfY291
bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Ci0KLQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3Vu
dDsgaSsrKSB7Ci0JCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZShmb2JqLT5zaGFyZWRbaV0pOwor
CWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKHJvYmosICZjdXJzb3IsIHRydWUsIGZlbmNlKSB7CisJ
CWlmIChjdXJzb3IuaXNfZXhjbHVzaXZlKQorCQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNs
dXNpdmUiLCBtKTsKKwkJZWxzZQogCQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJTaGFyZWQiLCBt
KTsKLQkJfQogCX0KIAotCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShyb2JqKTsKLQlpZiAo
ZmVuY2UpCi0JCWRlc2NyaWJlX2ZlbmNlKGZlbmNlLCAiRXhjbHVzaXZlIiwgbSk7Ci0JcmN1X3Jl
YWRfdW5sb2NrKCk7Ci0KIAltc21fZ2VtX3VubG9jayhvYmopOwogfQogCi0tIAoyLjI1LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
