Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E1E4614B7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:09:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFF8962DB0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B5B8662D3C; Mon, 29 Nov 2021 12:08:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF52562173;
	Mon, 29 Nov 2021 12:08:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 017A060557
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E050761A3A; Mon, 29 Nov 2021 12:07:35 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id D72C962C9A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:29 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id d24so36329156wra.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZA3eVOgXYF/5OpQnArz1+ZTX63Lsh0HMT2Me6ubTWAg=;
 b=Ls9pyYYC4IRtynWGVv7PST9jgW7xhHwCKudS7fmE4huulke2dfwzeuE9o1LWLYWfEw
 bInGt1reT+dqSlIgkYPeb8xP2J1aHcx60QtRar3gElqtczG8bS83M9BgVkswP8ij1SgN
 t8hHVP+QFxyCwPUpbm+j8f7qVEjtovxSxo9uqbFAAcpO1Z2xqk3CQpBCvd5vx0TQiYoy
 c8p9/qmUrqySlCTEuUG3wAOwNrsjG7WfyGMjP/6RcKyj1OBAGvYvBS5+GP6CV11DsJvW
 xsqBA1QvJoJDxH/rB0F/HLPjMbty4ybd9cZP8SuwnapTs21ZTkg34GNbgv9KpH6v5Vf4
 NtXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZA3eVOgXYF/5OpQnArz1+ZTX63Lsh0HMT2Me6ubTWAg=;
 b=AHDk38t1HU7igtenybp05aRMDD7IxcpBrWq4OSkKC86Ati69R9lLHtoETl3HTBB4lT
 aEaHF8r0BwJQ8G1y63IraD+WKHgFLJSF0W16LX+6IMMChGyj/7ZMG/4zkv96SobUH7Vj
 arBOXHjcD9qoyFUUekvGuGLEeYPyqVmFhETi3BuPkgHrPm8F/b/P2O4iN4YSmVkIycui
 /u89tf4ndOOyu/VyQV3N9ri0N7O1aANfnuDMeto6g0XMKoFy8/01XHAyc/619P8vY2gZ
 Ho94u1bZbT8ol3c8wPHymfc2A/3tGBTcUltTt66d2zxlRupgh7J8ibFNtbP6zgKSS1nl
 dXoQ==
X-Gm-Message-State: AOAM532PUdS/dihY/0G+mV0pAy7c68NuD/klTtQeKpqUgY53cr2ULUuk
 1lBfHRtCMXgg7wIJaKaeY5o=
X-Google-Smtp-Source: ABdhPJwLYqaPOW2nguhOPYGXqO3qoZ4hZ/r8fLTEY5IhxAz1jmeW2jZMMnQjf5rdot0FcpgeR5ne5g==
X-Received: by 2002:a5d:4ed1:: with SMTP id s17mr34904053wrv.310.1638187648289; 
 Mon, 29 Nov 2021 04:07:28 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:27 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:52 +0100
Message-Id: <20211129120659.1815-22-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 21/28] drm/amdgpu: use
 dma_resv_get_singleton in amdgpu_pasid_free_cb
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

TWFrZXMgdGhlIGNvZGUgYSBiaXQgbW9yZSBzaW1wbGVyLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMKaW5kZXggYmU0ODQ4N2UyY2E3Li44ODhkOTcx
NDMxNzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMKQEAgLTEwNywz
NiArMTA3LDE5IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9wYXNpZF9mcmVlX2NiKHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlLAogdm9pZCBhbWRncHVfcGFzaWRfZnJlZV9kZWxheWVkKHN0cnVjdCBkbWFf
cmVzdiAqcmVzdiwKIAkJCSAgICAgICB1MzIgcGFzaWQpCiB7Ci0Jc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UsICoqZmVuY2VzOwogCXN0cnVjdCBhbWRncHVfcGFzaWRfY2IgKmNiOwotCXVuc2lnbmVk
IGNvdW50OworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCWludCByOwogCi0JciA9IGRtYV9y
ZXN2X2dldF9mZW5jZXMocmVzdiwgdHJ1ZSwgJmNvdW50LCAmZmVuY2VzKTsKKwlyID0gZG1hX3Jl
c3ZfZ2V0X3NpbmdsZXRvbihyZXN2LCB0cnVlLCAmZmVuY2UpOwogCWlmIChyKQogCQlnb3RvIGZh
bGxiYWNrOwogCi0JaWYgKGNvdW50ID09IDApIHsKKwlpZiAoIWZlbmNlKSB7CiAJCWFtZGdwdV9w
YXNpZF9mcmVlKHBhc2lkKTsKIAkJcmV0dXJuOwogCX0KIAotCWlmIChjb3VudCA9PSAxKSB7Ci0J
CWZlbmNlID0gZmVuY2VzWzBdOwotCQlrZnJlZShmZW5jZXMpOwotCX0gZWxzZSB7Ci0JCXVpbnQ2
NF90IGNvbnRleHQgPSBkbWFfZmVuY2VfY29udGV4dF9hbGxvYygxKTsKLQkJc3RydWN0IGRtYV9m
ZW5jZV9hcnJheSAqYXJyYXk7Ci0KLQkJYXJyYXkgPSBkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKGNv
dW50LCBmZW5jZXMsIGNvbnRleHQsCi0JCQkJCSAgICAgICAxLCBmYWxzZSk7Ci0JCWlmICghYXJy
YXkpIHsKLQkJCWtmcmVlKGZlbmNlcyk7Ci0JCQlnb3RvIGZhbGxiYWNrOwotCQl9Ci0JCWZlbmNl
ID0gJmFycmF5LT5iYXNlOwotCX0KLQogCWNiID0ga21hbGxvYyhzaXplb2YoKmNiKSwgR0ZQX0tF
Uk5FTCk7CiAJaWYgKCFjYikgewogCQkvKiBMYXN0IHJlc29ydCB3aGVuIHdlIGFyZSBPT00gKi8K
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
