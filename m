Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 301093AB257
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FBE565FD1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B92E960497; Thu, 17 Jun 2021 11:17:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE3486675C;
	Thu, 17 Jun 2021 11:17:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C049B634FF
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 40E996350A; Thu, 17 Jun 2021 11:16:15 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by lists.linaro.org (Postfix) with ESMTPS id 7F79F63504
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:11 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id n20so3452658edv.8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=vA0rvCYA+88SSxxA+oXw2xjoeTV7dLie4dtS+00yakw=;
 b=uN5Zx0cBca5DbQUlMYKzChSxSUBt3pn1rgGuo0oxUeskZlsiUgrLTk1HaliRHo0Vt/
 jUyRiJx13d8nIltoW1+jfOTmrJpVeFCXq/T/GcF0juZQtkb11l7QNLmy9OsowxL5qPFY
 BnZfkZ81GDkhMR/fI9SUrwMou7NIVlD+9wtooYY3QmRvCgkOIesuMSZ1l0GHZp102i9g
 t4jbSCh/PkxMqnR1n80TUyGonzXFsP9dr42hODlxnNdrdDo4046NaEixY5Z/nPernKeW
 dhby/aGpuFR8ksEB0/1yv4/tRhKhPkT6BEaxVIKLR5TWRqaQX1KbtqMPOiF/JFr5Cff8
 oGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vA0rvCYA+88SSxxA+oXw2xjoeTV7dLie4dtS+00yakw=;
 b=V7BWNvgZAjt8nAXY/sjZBlTxqEXBuSU/XXkzxqiHm5Glms44bgcqTwIECexlcN20QA
 CuxFhWmWjfPD8I3/Vb29fnH0Xr5VgT7GD04ZsSsF1LPJtBulvqYNnFwzBYYuUFn5Ug2u
 1mQMhHcUamtFwS13eXtbChRpH7aCoGKA+ldATFDaYKOhxCZFytBYofh/MB4glMmI/xiK
 m23SCvLtaMAT3w1UdwJZ+zh40PrA2gW3dwUO3CvUpKhN/CPEx36X6EQCaJBfhXFV0TJN
 py53a0cZ7HYZedH8cnwTeuft1t+39ACDmRO+BLUOJQxHjSFxMSZFI5XNLasA/f6dShJH
 rp7w==
X-Gm-Message-State: AOAM533aHL9wA7iJZPwAeF8z/yq+hh31VAhOJ1IER2xWsDArfaeN564n
 9vPeFtfvAVfKoXJCdbHLkOI=
X-Google-Smtp-Source: ABdhPJxdliDVqYsrZ036wK0ckaoMVPasvaJSER1iToDyEGkiVZdtlysHJiBnomX9yz33uPLT55iTRg==
X-Received: by 2002:a05:6402:885:: with SMTP id
 e5mr5889036edy.248.1623928570233; 
 Thu, 17 Jun 2021 04:16:10 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:09 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:55 +0200
Message-Id: <20210617111558.28486-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 13/16] drm/msm: use new iterator in
 msm_gem_sync_object
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpVbnRlc3RlZCBzaW5jZSBJIGNhbid0IGdldCB0
aGUgZHJpdmVyIHRvIGNvbXBpbGUgb24gIUFSTS4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9nZW0uYyB8IDIwICsrKy0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jCmluZGV4IDcy
YTA3ZTMxMWRlMy4uMjRmOGMwNjAzMzg1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwpAQCAtODEzLDI1
ICs4MTMsMTEgQEAgdm9pZCBtc21fZ2VtX3Z1bm1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9i
aikKIGludCBtc21fZ2VtX3N5bmNfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAog
CQlzdHJ1Y3QgbXNtX2ZlbmNlX2NvbnRleHQgKmZjdHgsIGJvb2wgZXhjbHVzaXZlKQogewotCXN0
cnVjdCBkbWFfcmVzdl9saXN0ICpmb2JqOworCXN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vyc29y
OwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCWludCBpLCByZXQ7Ci0KLQlmZW5jZSA9IGRt
YV9yZXN2X2V4Y2xfZmVuY2Uob2JqLT5yZXN2KTsKLQkvKiBkb24ndCBuZWVkIHRvIHdhaXQgb24g
b3VyIG93biBmZW5jZXMsIHNpbmNlIHJpbmcgaXMgZmlmbyAqLwotCWlmIChmZW5jZSAmJiAoZmVu
Y2UtPmNvbnRleHQgIT0gZmN0eC0+Y29udGV4dCkpIHsKLQkJcmV0ID0gZG1hX2ZlbmNlX3dhaXQo
ZmVuY2UsIHRydWUpOwotCQlpZiAocmV0KQotCQkJcmV0dXJuIHJldDsKLQl9Ci0KLQlmb2JqID0g
ZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqLT5yZXN2KTsKLQlpZiAoIWV4Y2x1c2l2ZSB8fCAhZm9i
aikKLQkJcmV0dXJuIDA7CisJaW50IHJldDsKIAotCWZvciAoaSA9IDA7IGkgPCBmb2JqLT5zaGFy
ZWRfY291bnQ7IGkrKykgewotCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoZm9i
ai0+c2hhcmVkW2ldLAotCQkJCQkJZG1hX3Jlc3ZfaGVsZChvYmotPnJlc3YpKTsKKwlkbWFfcmVz
dl9mb3JfZWFjaF9mZW5jZShvYmotPnJlc3YsICZjdXJzb3IsIGV4Y2x1c2l2ZSwgZmVuY2UpIHsK
IAkJaWYgKGZlbmNlLT5jb250ZXh0ICE9IGZjdHgtPmNvbnRleHQpIHsKIAkJCXJldCA9IGRtYV9m
ZW5jZV93YWl0KGZlbmNlLCB0cnVlKTsKIAkJCWlmIChyZXQpCi0tIAoyLjI1LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
