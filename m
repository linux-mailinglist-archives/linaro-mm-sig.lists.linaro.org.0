Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F532408C6E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B54D68641
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E1E366328C; Mon, 13 Sep 2021 13:18:23 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4E7963239;
	Mon, 13 Sep 2021 13:18:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9AB0F629CD
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DF8CE6085A; Mon, 13 Sep 2021 13:17:36 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id C4C5C6341F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:33 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id g16so14684620wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sKcmOjs+nnoTfTMzj1B5wwjzz9EHhzICWjOSUDa4Z8U=;
 b=nBPqCuTA/TC2qVnaVxCbTiYSf/S2Zb+rPI3NMesDDCkuCLK6GhnykrXk2iMYKdSdT1
 jvPsOLCrv2QnGCs4MxccvHdcgMir8VwtF8aB35eDL1jKIc2IhHVRj6bnTtWyN7WQV28X
 EXCaP1pbmof5OEUYC6IXxSI5P9/RjqqhzG0gvV09dp/aonbhLWGKRjt40FZ10nAA9aN0
 xEOyQS0g4JwN98ffF/JVBgZs6jXfF0J4uPfsjmHBggroCU5cHYtt1pPnadRl4cMs+W04
 Hg9Pfu7wtmSxrbMAlBBbwP74P3dl+SpST7alSOENKz66OCpJJQA8a5J5aELwnIkgm1h0
 vqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sKcmOjs+nnoTfTMzj1B5wwjzz9EHhzICWjOSUDa4Z8U=;
 b=Gi2lgMqRjT3u2Dzi6XEDWHEoLf/1JErExj9vSLKGiQrA5hcI07zgzsze5WANKsuRRT
 5Vo4Z0AkrZICWsHsAeHliuBK23tqFZYaTMsTfNTI3cFKmCsrwLmvS6iIpqP/jNDAIuh8
 sC8gZr7wb2+ewiHfIhFeaiEVnzgRVG8cjCtSWCi5mSSE0Z/NN0rbbd9rJfr5Bd4YP2vY
 as8I/fT7VBtXC7fIsnFbsCJ1DbZzUH9Kh2rWWUs6dE5fAdrS0nNPL5i2u0yfxWQHzjgB
 8/tXs4TkvyBIrDCjZMUEPDQXwSjpuV9dEvkNI4lse+km2o5FAe/4/0DPq7ZH8x4h8Esi
 ehOg==
X-Gm-Message-State: AOAM531GbbtsxTMJiHTaQ4GOFEqKncMgiihFyxzcQOoOjeAlOhkcVuBV
 3efikrNt4NCmNqiGpWKR1OQClROjcGZBUlfD
X-Google-Smtp-Source: ABdhPJxsd5NTCKCjaeMUfEJLxSPuesNlwu+JoEsLMfvIj+y4YAP3U29/E88Z+2CBo6RfJbhW863CUw==
X-Received: by 2002:adf:ce89:: with SMTP id r9mr9242218wrn.238.1631539052126; 
 Mon, 13 Sep 2021 06:17:32 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:31 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:56 +0200
Message-Id: <20210913131707.45639-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 15/26] drm/i915: use the new iterator in
 i915_request_await_object
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
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZXF1ZXN0LmMgfCAzNiArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYwppbmRleCAzN2FlZjEzMDg1NzMuLmI4MTA0NWNlYjYxOSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTE1ODMsMzggKzE1ODMsMTYgQEAgaTkxNV9y
ZXF1ZXN0X2F3YWl0X29iamVjdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICp0bywKIAkJCSAgc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAgYm9vbCB3cml0ZSkKIHsKLQlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpleGNsOworCXN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vyc29yOworCXN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlOwogCWludCByZXQgPSAwOwogCi0JaWYgKHdyaXRlKSB7Ci0JCXN0
cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQ7Ci0JCXVuc2lnbmVkIGludCBjb3VudCwgaTsKLQotCQly
ZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKG9iai0+YmFzZS5yZXN2LCAmZXhjbCwgJmNvdW50LAot
CQkJCQkgICZzaGFyZWQpOwotCQlpZiAocmV0KQotCQkJcmV0dXJuIHJldDsKLQotCQlmb3IgKGkg
PSAwOyBpIDwgY291bnQ7IGkrKykgewotCQkJcmV0ID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9m
ZW5jZSh0bywgc2hhcmVkW2ldKTsKLQkJCWlmIChyZXQpCi0JCQkJYnJlYWs7Ci0KLQkJCWRtYV9m
ZW5jZV9wdXQoc2hhcmVkW2ldKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChv
YmotPmJhc2UucmVzdiwgJmN1cnNvciwgd3JpdGUsIGZlbmNlKSB7CisJCXJldCA9IGk5MTVfcmVx
dWVzdF9hd2FpdF9kbWFfZmVuY2UodG8sIGZlbmNlKTsKKwkJaWYgKHJldCkgeworCQkJZG1hX2Zl
bmNlX3B1dChmZW5jZSk7CisJCQlicmVhazsKIAkJfQotCi0JCWZvciAoOyBpIDwgY291bnQ7IGkr
KykKLQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKLQkJa2ZyZWUoc2hhcmVkKTsKLQl9IGVs
c2UgewotCQlleGNsID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5iYXNlLnJlc3Yp
OwotCX0KLQotCWlmIChleGNsKSB7Ci0JCWlmIChyZXQgPT0gMCkKLQkJCXJldCA9IGk5MTVfcmVx
dWVzdF9hd2FpdF9kbWFfZmVuY2UodG8sIGV4Y2wpOwotCi0JCWRtYV9mZW5jZV9wdXQoZXhjbCk7
CiAJfQogCiAJcmV0dXJuIHJldDsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
