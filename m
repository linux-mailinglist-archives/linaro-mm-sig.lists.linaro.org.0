Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3933AB24F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1BB256350A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0C5796350D; Thu, 17 Jun 2021 11:17:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0869763527;
	Thu, 17 Jun 2021 11:16:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C710C634FF
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9638C61A28; Thu, 17 Jun 2021 11:16:08 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by lists.linaro.org (Postfix) with ESMTPS id 5B674634F3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:06 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id t3so3451428edc.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Xa2i71Ri2eK/e91UCCTXEAoquyui6jF43BKEv04gN4g=;
 b=J4G7oyFYVe/U+4ZAFn6M8m4z7Y24tHmXJPLZkUlymA1ekUAOM4VnvwV19yW7Txo/C/
 QyY271dLeV6GK7cz/0wNgveeMKZFxeAZQrV06VU2lAkmNimfAEpwfO+VlsNHaQDGi12X
 AgXYTEEOUY/JngrYoedtySNu2ZdWifo4EEkT9FLZmdDORsDbYui0QKIwJ6P5ACcRJj4i
 TVddfMXrm+Y9dBDb0TWnfAmB1LcWfUhYkKsUlUekwaEZpNVH5v6z7vUxMq4+S9P9kx2i
 rP/SD+UDsKrOr6Xgr3Y2g/U+4w735YyPIZOho+WV5a9e0TphJPeR2PrLciTY1cGZ060a
 etwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xa2i71Ri2eK/e91UCCTXEAoquyui6jF43BKEv04gN4g=;
 b=kXeZNwfsDYpmSnNoXI0XjLKAALnlgUbLQiX8JfsGqariMgFaZrb7bMvDCaitQMbRvg
 Yd+V9047hBHUxlQe2PqvDynq40iMvYwN2Aw3EBS8Ky2QdUFdI++d2B18mwUvmYIQxGgq
 YcOjWx2SktBD3xsgt7cUVLNkiuXN+o/RissrodE2FcthpiFuLPFNoq/OdYv+Hj1GzCvS
 bFdSzU9jBzBsHpIyHno5Fa0Q0HSXwVAtImB2l4Wpz5rHBd0MuuoNtBlzMBGvkxNu5OeZ
 NLVlRhTh4btzg7LIXkZc7V6v9KDBdEeRmwHPNsKe9+A6UT2345azMpDq4gYBPji3Vr1L
 CG4w==
X-Gm-Message-State: AOAM530K5hrq5i7rUDnRxhdOyQ26BJcJTaPICvU6nKGf3UGbCqQ0FIT1
 iQJQhO0QV7838ckU5vHYZi0=
X-Google-Smtp-Source: ABdhPJwtK+PmMG0EvZiApB5Ui9GYadZi0QPgMNTTpHdQN5LAPkkC9DhaLZn5j6xJ1lZxbulacF4yYQ==
X-Received: by 2002:aa7:ce03:: with SMTP id d3mr5732594edv.360.1623928565462; 
 Thu, 17 Jun 2021 04:16:05 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:05 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:48 +0200
Message-Id: <20210617111558.28486-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/16] dma-buf: use new iterator in
 dma_resv_test_signaled
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

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYyB8IDU0ICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0NyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
cmVzdi5jCmluZGV4IDUxOTJjZjQyNzFhYy4uODVlMDdiZWNkYjkzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpA
QCAtNTg2LDIyICs1ODYsNiBAQCBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1h
X3Jlc3YgKm9iaiwgYm9vbCB3YWl0X2FsbCwgYm9vbCBpbnRyLAogRVhQT1JUX1NZTUJPTF9HUEwo
ZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KTsKIAogCi1zdGF0aWMgaW5saW5lIGludCBkbWFfcmVzdl90
ZXN0X3NpZ25hbGVkX3NpbmdsZShzdHJ1Y3QgZG1hX2ZlbmNlICpwYXNzZWRfZmVuY2UpCi17Ci0J
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsICpsZmVuY2UgPSBwYXNzZWRfZmVuY2U7Ci0JaW50IHJl
dCA9IDE7Ci0KLQlpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmxm
ZW5jZS0+ZmxhZ3MpKSB7Ci0JCWZlbmNlID0gZG1hX2ZlbmNlX2dldF9yY3UobGZlbmNlKTsKLQkJ
aWYgKCFmZW5jZSkKLQkJCXJldHVybiAtMTsKLQotCQlyZXQgPSAhIWRtYV9mZW5jZV9pc19zaWdu
YWxlZChmZW5jZSk7Ci0JCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCX0KLQlyZXR1cm4gcmV0Owot
fQotCiAvKioKICAqIGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWQgLSBUZXN0IGlmIGEgcmVzZXJ2YXRp
b24gb2JqZWN0J3MgZmVuY2VzIGhhdmUgYmVlbgogICogc2lnbmFsZWQuCkBAIC02MTYsNDMgKzYw
MCwxOSBAQCBzdGF0aWMgaW5saW5lIGludCBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkX3NpbmdsZShz
dHJ1Y3QgZG1hX2ZlbmNlICpwYXNzZWRfZmVuY2UpCiAgKi8KIGJvb2wgZG1hX3Jlc3ZfdGVzdF9z
aWduYWxlZChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB0ZXN0X2FsbCkKIHsKKwlzdHJ1Y3Qg
ZG1hX3Jlc3ZfY3Vyc29yIGN1cnNvcjsKIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKLQl1bnNp
Z25lZCBpbnQgc2VxOwotCWludCByZXQ7CiAKIAlyY3VfcmVhZF9sb2NrKCk7Ci1yZXRyeToKLQly
ZXQgPSB0cnVlOwotCXNlcSA9IHJlYWRfc2VxY291bnRfYmVnaW4oJm9iai0+c2VxKTsKLQotCWlm
ICh0ZXN0X2FsbCkgewotCQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZm9iaiA9IGRtYV9yZXN2X3No
YXJlZF9saXN0KG9iaik7Ci0JCXVuc2lnbmVkIGludCBpLCBzaGFyZWRfY291bnQ7Ci0KLQkJc2hh
cmVkX2NvdW50ID0gZm9iaiA/IGZvYmotPnNoYXJlZF9jb3VudCA6IDA7Ci0JCWZvciAoaSA9IDA7
IGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewotCQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9i
ai0+c2hhcmVkW2ldKTsKLQkJCXJldCA9IGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWRfc2luZ2xlKGZl
bmNlKTsKLQkJCWlmIChyZXQgPCAwKQotCQkJCWdvdG8gcmV0cnk7Ci0JCQllbHNlIGlmICghcmV0
KQotCQkJCWJyZWFrOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKG9iaiwgJmN1
cnNvciwgdGVzdF9hbGwsIGZlbmNlKSB7CisJCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZl
bmNlKSkgeworCQkJcmN1X3JlYWRfdW5sb2NrKCk7CisJCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsK
KwkJCXJldHVybiBmYWxzZTsKIAkJfQogCX0KLQotCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5j
ZShvYmopOwotCWlmIChyZXQgJiYgZmVuY2UpIHsKLQkJcmV0ID0gZG1hX3Jlc3ZfdGVzdF9zaWdu
YWxlZF9zaW5nbGUoZmVuY2UpOwotCQlpZiAocmV0IDwgMCkKLQkJCWdvdG8gcmV0cnk7Ci0KLQl9
Ci0KLQlpZiAocmVhZF9zZXFjb3VudF9yZXRyeSgmb2JqLT5zZXEsIHNlcSkpCi0JCWdvdG8gcmV0
cnk7Ci0KIAlyY3VfcmVhZF91bmxvY2soKTsKLQlyZXR1cm4gcmV0OworCXJldHVybiB0cnVlOwog
fQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZCk7CiAKLS0gCjIuMjUu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
