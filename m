Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A66A41EAA5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:08:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D60096A8BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:08:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 45EFD6A8F4; Fri,  1 Oct 2021 10:08:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E377A62EA0;
	Fri,  1 Oct 2021 10:08:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C88E56323B
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4BCAE611AF; Fri,  1 Oct 2021 10:06:33 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by lists.linaro.org (Postfix) with ESMTPS id D9C4861A27
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:26 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 r11-20020a1c440b000000b0030cf0f01fbaso3282316wma.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=svmFiiyBNTOLlFWjgaUjcSSYX7QcL0TbCV34MdRHULg=;
 b=SeWOp56Q+stkLUfrHU+2IN8GGPWI9v1emdLlba9y3G4/qG92EwRdVpi2uAIWU+0DN6
 EVoVMrpMAxdjoglRFSNcpEEM/fv+jlA3dibG7wUY8366mWI6CtSw7bF3AVicHInB4SLC
 hi47/Gi3XKBpCOQgoU6ELW1dEEFfAxpmvYaU7cvHPKq9suz0BKa7m7RgcY/ky/vpljRi
 k3wYL9r9sVEZY8wKHtV7Kzz6qu2ZwBYzalr4o/MGG+VB2XrDJa0zYBPdnovfLxA8FzRt
 n2Evxx85irE8Z9DNmafJ/7sKk6PBj1woVZvlrBj+Srb0Ge9s8hSk/F5BvqA3X7vvc+Cv
 tlUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=svmFiiyBNTOLlFWjgaUjcSSYX7QcL0TbCV34MdRHULg=;
 b=BUmRFyYHclDjrx3aP8Q0rZdkSs5M69kpnr2ZhPxeZcNxtwpUxssH/dKD6K48ZkcSh4
 AnK/IkmL7mmAqunjukMgdQFArC5yLhtlzIFIW/O9DSNyGJWQssQ3z5Gj09NBU+MttKN4
 JVBALFgLCZ6gp+nX+d4pk8SpCxjLUp8S3Gfc9LLU1MMwyk14yJbVpV5yR1YG7ne2bnhR
 QT3mS6aWaqBKnP9L+Ir9wP1cW5tLkICWRbUthyUS2kljfAafWgF3ieTRMcsnqYI/QaM8
 DccNPgXVAirtJleGI/B+HFhSfw0x6gc1G8+4gc93LyI3wduWfuPLYH7VuUHN9KWI0HP5
 MsBQ==
X-Gm-Message-State: AOAM532V39XuHvCnf3ptWbabPwx+0sbOkXyLfy1a0ISMq2PWxHamE90c
 qT68tE8TxfG7w6fACGzVTyCc5XhNyXs=
X-Google-Smtp-Source: ABdhPJz5GdBwInX0HcHiq4cY5DrVsDDxvKbmevZjVBxvxPTmRIsT0zcitxa6m+x6ZMvly0w9A57eQQ==
X-Received: by 2002:a1c:a387:: with SMTP id m129mr3546114wme.181.1633082785686; 
 Fri, 01 Oct 2021 03:06:25 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:25 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:05:56 +0200
Message-Id: <20211001100610.2899-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 14/28] drm/msm: use new iterator in
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
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
YwppbmRleCA0MGE5ODYzZjU5NTEuLjViZDUxMWYwN2MwNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMK
QEAgLTg4MCw3ICs4ODAsNyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIHsKIAlzdHJ1Y3QgbXNtX2dlbV9vYmpl
Y3QgKm1zbV9vYmogPSB0b19tc21fYm8ob2JqKTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJvYmogPSBv
YmotPnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJc3RydWN0IGRtYV9yZXN2
X2l0ZXIgY3Vyc29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCXN0cnVjdCBtc21fZ2Vt
X3ZtYSAqdm1hOwogCXVpbnQ2NF90IG9mZiA9IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFf
bm9kZSk7CkBAIC05NTUsMjIgKzk1NSwxMyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIAkJc2VxX3B1dHMobSwg
IlxuIik7CiAJfQogCi0JcmN1X3JlYWRfbG9jaygpOwotCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRf
bGlzdChyb2JqKTsKLQlpZiAoZm9iaikgewotCQl1bnNpZ25lZCBpbnQgaSwgc2hhcmVkX2NvdW50
ID0gZm9iai0+c2hhcmVkX2NvdW50OwotCi0JCWZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7
IGkrKykgewotCQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKKwlk
bWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCByb2JqLCB0cnVlLCBmZW5jZSkgeworCQlp
ZiAoZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQlkZXNjcmliZV9mZW5j
ZShmZW5jZSwgIkV4Y2x1c2l2ZSIsIG0pOworCQllbHNlCiAJCQlkZXNjcmliZV9mZW5jZShmZW5j
ZSwgIlNoYXJlZCIsIG0pOwotCQl9CiAJfQogCi0JZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNl
KHJvYmopOwotCWlmIChmZW5jZSkKLQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUi
LCBtKTsKLQlyY3VfcmVhZF91bmxvY2soKTsKLQogCW1zbV9nZW1fdW5sb2NrKG9iaik7CiB9CiAK
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
