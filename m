Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EF73AB24B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:16:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44F86634FB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:16:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 16E1663512; Thu, 17 Jun 2021 11:16:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EEE5861451;
	Thu, 17 Jun 2021 11:16:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5564F61451
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4A005634FD; Thu, 17 Jun 2021 11:16:07 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by lists.linaro.org (Postfix) with ESMTPS id 2480C61451
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:05 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id t3so3451297edc.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=lLXrCyq505g6km4qhQf/vGJa05DrxTvpnpKRUMRAvpc=;
 b=XGtZK5xYCuwAprrbgPE1Fy0sborX5AJhSD4DchxUWFwhJ2SAeD/FZQoFzhGUF5EK4c
 AHx/pGcgYZDIuU2x/XELWJRJSvL6UfLPFb6/CttNQmPy1attYnpa1nd/1NXXMdc4ETLt
 3eaCjQ3DslfJSxMD5Wsvydzbx9BZc19E2FSHHhBd8xCN2GRK2UjExVpXJdVI2IKz4XCQ
 NKxkEUXQwc2ZgKXJZOYZrjz+vBfnhXKsjnIXmOtEyI4HbE5uRp9Y4AjFc4uum94ZlniV
 oY9zmjkhtqenbBFr30dnUsLa2Gc+D7fd5uwxOF46u1U9+Quzu1LRiNg+/hHpNjp1M1W9
 bPfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lLXrCyq505g6km4qhQf/vGJa05DrxTvpnpKRUMRAvpc=;
 b=JXTreeK1xII17ldfKaA8JvGISeWA+1R4c5zRr90xwRxx64Oy6EWqKaG6i+AZZHafEo
 xdfA8t0cwc2cemg2UYXhYjcRpWxRMfgzjZzuEeXFlJ+TdLPrh1nLSkbbvSQhVTT9o4uv
 E3SzNbZH++oBb+L41WQVKr1Ue0bBjEvH3ET8badVPQr/nqhgpN1TkjCjJu6f9SUrg+gX
 w5sT/Q+XRDpOJ7RXXsCd+/zyc4sIQHQ8cpazZzLXwwf94b9KAdaGNLESE03zHpDheYck
 9/V2Pa37fLGI5ookQoRVXtDhITvmxIXBrgiIU4IScsz6Lh59vY8dOtLPJtEyNfWet8XN
 2oTg==
X-Gm-Message-State: AOAM531C6M6Ss/JAgaqjiARKAKzE1VOhzRo1CRfml/92QO58z9R+xAcs
 QV3siM/dHms6T9+oph97jTo=
X-Google-Smtp-Source: ABdhPJyVkHEfyieNGPqpKK4GumqUK2OI/OWpE8p33ZvKU144WvZIK9enpZidGXxO6/KnBkmIUQGnJQ==
X-Received: by 2002:a50:eb8f:: with SMTP id y15mr5733269edr.285.1623928564138; 
 Thu, 17 Jun 2021 04:16:04 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:46 +0200
Message-Id: <20210617111558.28486-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 04/16] dma-buf: use new iterator in
 dma_resv_get_fences
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
dWYvZG1hLXJlc3YuYyB8IDExMCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwgNzMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LXJlc3YuYwppbmRleCBhNWQ3OGJmNDAxYjUuLmI3N2JmNDZjMGY0OCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMK
QEAgLTQ4Niw5OSArNDg2LDYzIEBAIEVYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfY29weV9mZW5jZXMp
OwogICogZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyAtIEdldCBhbiBvYmplY3QncyBzaGFyZWQgYW5kIGV4
Y2x1c2l2ZQogICogZmVuY2VzIHdpdGhvdXQgdXBkYXRlIHNpZGUgbG9jayBoZWxkCiAgKiBAb2Jq
OiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0Ci0gKiBAcGZlbmNlX2V4Y2w6IHRoZSByZXR1cm5lZCBl
eGNsdXNpdmUgZmVuY2UgKG9yIE5VTEwpCi0gKiBAcHNoYXJlZF9jb3VudDogdGhlIG51bWJlciBv
ZiBzaGFyZWQgZmVuY2VzIHJldHVybmVkCi0gKiBAcHNoYXJlZDogdGhlIGFycmF5IG9mIHNoYXJl
ZCBmZW5jZSBwdHJzIHJldHVybmVkIChhcnJheSBpcyBrcmVhbGxvYydkIHRvCisgKiBAZmVuY2Vf
ZXhjbDogdGhlIHJldHVybmVkIGV4Y2x1c2l2ZSBmZW5jZSAob3IgTlVMTCkKKyAqIEBzaGFyZWRf
Y291bnQ6IHRoZSBudW1iZXIgb2Ygc2hhcmVkIGZlbmNlcyByZXR1cm5lZAorICogQHNoYXJlZDog
dGhlIGFycmF5IG9mIHNoYXJlZCBmZW5jZSBwdHJzIHJldHVybmVkIChhcnJheSBpcyBrcmVhbGxv
YydkIHRvCiAgKiB0aGUgcmVxdWlyZWQgc2l6ZSwgYW5kIG11c3QgYmUgZnJlZWQgYnkgY2FsbGVy
KQogICoKICAqIFJldHJpZXZlIGFsbCBmZW5jZXMgZnJvbSB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0
LiBJZiB0aGUgcG9pbnRlciBmb3IgdGhlCiAgKiBleGNsdXNpdmUgZmVuY2UgaXMgbm90IHNwZWNp
ZmllZCB0aGUgZmVuY2UgaXMgcHV0IGludG8gdGhlIGFycmF5IG9mIHRoZQogICogc2hhcmVkIGZl
bmNlcyBhcyB3ZWxsLiBSZXR1cm5zIGVpdGhlciB6ZXJvIG9yIC1FTk9NRU0uCiAgKi8KLWludCBk
bWFfcmVzdl9nZXRfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNl
ICoqcGZlbmNlX2V4Y2wsCi0JCQl1bnNpZ25lZCBpbnQgKnBzaGFyZWRfY291bnQsCi0JCQlzdHJ1
Y3QgZG1hX2ZlbmNlICoqKnBzaGFyZWQpCitpbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhzdHJ1Y3Qg
ZG1hX3Jlc3YgKm9iaiwgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlX2V4Y2wsCisJCQl1bnNpZ25l
ZCBpbnQgKnNoYXJlZF9jb3VudCwgc3RydWN0IGRtYV9mZW5jZSAqKipzaGFyZWQpCiB7Ci0Jc3Ry
dWN0IGRtYV9mZW5jZSAqKnNoYXJlZCA9IE5VTEw7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Vf
ZXhjbDsKLQl1bnNpZ25lZCBpbnQgc2hhcmVkX2NvdW50OwotCWludCByZXQgPSAxOwotCi0JZG8g
ewotCQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZm9iajsKLQkJdW5zaWduZWQgaW50IGksIHNlcTsK
LQkJc2l6ZV90IHN6ID0gMDsKLQotCQlzaGFyZWRfY291bnQgPSBpID0gMDsKLQotCQlyY3VfcmVh
ZF9sb2NrKCk7Ci0JCXNlcSA9IHJlYWRfc2VxY291bnRfYmVnaW4oJm9iai0+c2VxKTsKLQotCQlm
ZW5jZV9leGNsID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmopOwotCQlpZiAoZmVuY2VfZXhjbCAm
JiAhZG1hX2ZlbmNlX2dldF9yY3UoZmVuY2VfZXhjbCkpCi0JCQlnb3RvIHVubG9jazsKKwlzdHJ1
Y3QgZG1hX3Jlc3ZfY3Vyc29yIGN1cnNvcjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAot
CQlmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqKTsKLQkJaWYgKGZvYmopCi0JCQlzeiAr
PSBzaXplb2YoKnNoYXJlZCkgKiBmb2JqLT5zaGFyZWRfbWF4OworCSpzaGFyZWRfY291bnQgPSAw
OworCSpzaGFyZWQgPSBOVUxMOwogCi0JCWlmICghcGZlbmNlX2V4Y2wgJiYgZmVuY2VfZXhjbCkK
LQkJCXN6ICs9IHNpemVvZigqc2hhcmVkKTsKKwlpZiAoZmVuY2VfZXhjbCkKKwkJKmZlbmNlX2V4
Y2wgPSBOVUxMOwogCi0JCWlmIChzeikgewotCQkJc3RydWN0IGRtYV9mZW5jZSAqKm5zaGFyZWQ7
CisJcmN1X3JlYWRfbG9jaygpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKG9i
aiwgJmN1cnNvciwgdHJ1ZSwgZmVuY2UpIHsKIAotCQkJbnNoYXJlZCA9IGtyZWFsbG9jKHNoYXJl
ZCwgc3osCi0JCQkJCSAgIEdGUF9OT1dBSVQgfCBfX0dGUF9OT1dBUk4pOwotCQkJaWYgKCFuc2hh
cmVkKSB7Ci0JCQkJcmN1X3JlYWRfdW5sb2NrKCk7CisJCWlmIChjdXJzb3IuaXNfZmlyc3QpIHsK
KwkJCXVuc2lnbmVkIGludCBjb3VudDsKIAotCQkJCWRtYV9mZW5jZV9wdXQoZmVuY2VfZXhjbCk7
Ci0JCQkJZmVuY2VfZXhjbCA9IE5VTEw7CisJCQl3aGlsZSAoKnNoYXJlZF9jb3VudCkKKwkJCQlk
bWFfZmVuY2VfcHV0KCgqc2hhcmVkKVstLSgqc2hhcmVkX2NvdW50KV0pOwogCi0JCQkJbnNoYXJl
ZCA9IGtyZWFsbG9jKHNoYXJlZCwgc3osIEdGUF9LRVJORUwpOwotCQkJCWlmIChuc2hhcmVkKSB7
Ci0JCQkJCXNoYXJlZCA9IG5zaGFyZWQ7Ci0JCQkJCWNvbnRpbnVlOwotCQkJCX0KKwkJCWlmIChm
ZW5jZV9leGNsKQorCQkJCWRtYV9mZW5jZV9wdXQoKmZlbmNlX2V4Y2wpOwogCi0JCQkJcmV0ID0g
LUVOT01FTTsKLQkJCQlicmVhazsKLQkJCX0KLQkJCXNoYXJlZCA9IG5zaGFyZWQ7Ci0JCQlzaGFy
ZWRfY291bnQgPSBmb2JqID8gZm9iai0+c2hhcmVkX2NvdW50IDogMDsKLQkJCWZvciAoaSA9IDA7
IGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewotCQkJCXNoYXJlZFtpXSA9IHJjdV9kZXJlZmVyZW5j
ZShmb2JqLT5zaGFyZWRbaV0pOwotCQkJCWlmICghZG1hX2ZlbmNlX2dldF9yY3Uoc2hhcmVkW2ld
KSkKLQkJCQkJYnJlYWs7Ci0JCQl9Ci0JCX0KKwkJCWNvdW50ID0gY3Vyc29yLmZlbmNlcyA/IGN1
cnNvci5mZW5jZXMtPnNoYXJlZF9jb3VudCA6IDA7CisJCQljb3VudCArPSBmZW5jZV9leGNsID8g
MCA6IDE7CisJCQlyY3VfcmVhZF91bmxvY2soKTsKIAotCQlpZiAoaSAhPSBzaGFyZWRfY291bnQg
fHwgcmVhZF9zZXFjb3VudF9yZXRyeSgmb2JqLT5zZXEsIHNlcSkpIHsKLQkJCXdoaWxlIChpLS0p
Ci0JCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwotCQkJZG1hX2ZlbmNlX3B1dChmZW5jZV9l
eGNsKTsKLQkJCWdvdG8gdW5sb2NrOworCQkJLyogRXZlbnR1YWxseSByZS1hbGxvY2F0ZSB0aGUg
YXJyYXkgKi8KKwkJCSpzaGFyZWQgPSBrcmVhbGxvY19hcnJheSgqc2hhcmVkLCBjb3VudCwKKwkJ
CQkJCSBzaXplb2YoKnNoYXJlZCksCisJCQkJCQkgR0ZQX0tFUk5FTCk7CisJCQlpZiAoY291bnQg
JiYgISpzaGFyZWQpCisJCQkJcmV0dXJuIC1FTk9NRU07CisJCQlyY3VfcmVhZF9sb2NrKCk7CiAJ
CX0KIAotCQlyZXQgPSAwOwotdW5sb2NrOgotCQlyY3VfcmVhZF91bmxvY2soKTsKLQl9IHdoaWxl
IChyZXQpOwotCi0JaWYgKHBmZW5jZV9leGNsKQotCQkqcGZlbmNlX2V4Y2wgPSBmZW5jZV9leGNs
OwotCWVsc2UgaWYgKGZlbmNlX2V4Y2wpCi0JCXNoYXJlZFtzaGFyZWRfY291bnQrK10gPSBmZW5j
ZV9leGNsOworCQlpZiAoY3Vyc29yLmlzX2V4Y2x1c2l2ZSAmJiBmZW5jZV9leGNsKQorCQkJKmZl
bmNlX2V4Y2wgPSBmZW5jZTsKKwkJZWxzZQorCQkJKCpzaGFyZWQpWygqc2hhcmVkX2NvdW50KSsr
XSA9IGZlbmNlOwogCi0JaWYgKCFzaGFyZWRfY291bnQpIHsKLQkJa2ZyZWUoc2hhcmVkKTsKLQkJ
c2hhcmVkID0gTlVMTDsKKwkJLyogRG9uJ3QgZHJvcCB0aGUgcmVmZXJlbmNlICovCisJCWZlbmNl
ID0gTlVMTDsKIAl9CisJcmN1X3JlYWRfdW5sb2NrKCk7CiAKLQkqcHNoYXJlZF9jb3VudCA9IHNo
YXJlZF9jb3VudDsKLQkqcHNoYXJlZCA9IHNoYXJlZDsKLQlyZXR1cm4gcmV0OworCXJldHVybiAw
OwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyk7CiAKLS0gCjIuMjUu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
