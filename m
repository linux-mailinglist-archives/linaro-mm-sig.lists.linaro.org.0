Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E03A40686F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:27:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F013E63514
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:27:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 376ED6362A; Fri, 10 Sep 2021 08:27:24 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB1AE63639;
	Fri, 10 Sep 2021 08:27:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E3AB263524
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A352663247; Fri, 10 Sep 2021 08:27:05 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id 694EB62631
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:02 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id q26so1446841wrc.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iv3iL4Al5MFxDujFTlhS5KAG1aDR1CSRZPf6sBHgzmk=;
 b=Yqzo7HG07zVVhXVU1Pt7gjvFnqhuaXnhZaPz5IBwfMJmjnqY3jL/EGOBvHw6xsNSHV
 Xh7Kt1ZYxdDl//EZRgG3MhNtDrNkvxrSGH+1khUDORwVypfH8EMYZlax9gQ3rkVbnSTm
 uWDBcg35eInF+K9AKkdcAI3SX3zjZe/+gNUMNu57O/JVqK58elyRqJVKE3zbSF1/d/GC
 bXlfwhNoQwRMoA1fWfuLve2JbbIDMW5yQo0u9EcKJ17UACE9AmWHom2Hi7Vg1im/d7eI
 NxrLLZf7Hwd3r4T24C2T7gGk15p2n+dMSBzcwVpJKos67lfXB2R76kAlEaV5rYJFr9eG
 8+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iv3iL4Al5MFxDujFTlhS5KAG1aDR1CSRZPf6sBHgzmk=;
 b=Dq12t0oSbolIsz81sIBmSGHJuFtfgVyJyi8ogb8Moc9AydxoG/DqNQECLXXTSUbv6F
 u2Lg8BqYMua1ztrMiOcIXd8QVEGZ5ZlXCZI+OJPhKqWeZj1KI7jj9Y5tvi5tvGlMp1yI
 oEY8D+jcpD+Rjot9xx2CJkoQLNTm+pwkqQxM2ZVGVUBL3F5VXk5t7KSqsaaBA+9dmEbA
 OYtIa495EasP5TL0c1shsGPS5g68kqoEsY0ZTzslDH8x5EcG9Fo5PlVt1UYoeeQrdHKL
 1tQDNceuZAaKW48efXeDBz6gSPqN/oBZTZOP/mT5u3e6OuYnVRIVvuAptRm8sHuYzI5K
 Iz7w==
X-Gm-Message-State: AOAM532XwRWEFzmfi3iYQQ+3szXcB7aXj5M4yykhSYfOkXdkO/oS7V9A
 Z1M8I6Ag7IxQNiM9TT9nwkEg82tH2gInSxOu
X-Google-Smtp-Source: ABdhPJwvkdWSjL3l6YyCllswNbQ1FNCp5nB/7SmqNLTNtMIAhMCUuwSEjPqPSPVvHJV0GqPjrH6zbQ==
X-Received: by 2002:adf:dc8a:: with SMTP id r10mr8348379wrj.371.1631262421539; 
 Fri, 10 Sep 2021 01:27:01 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.27.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:27:01 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:46 +0200
Message-Id: <20210910082655.82168-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 05/14] dma-buf: use new iterator in
 dma_resv_wait_timeout
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

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYyB8IDY0ICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1NyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
cmVzdi5jCmluZGV4IDJkZmIwNGU2YTYyZi4uNjQ1Y2Y1MmE2YTZjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpA
QCAtNTcxLDc0ICs1NzEsMjQgQEAgbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVvdXQoc3RydWN0IGRt
YV9yZXN2ICpvYmosIGJvb2wgd2FpdF9hbGwsIGJvb2wgaW50ciwKIAkJCSAgIHVuc2lnbmVkIGxv
bmcgdGltZW91dCkKIHsKIAlsb25nIHJldCA9IHRpbWVvdXQgPyB0aW1lb3V0IDogMTsKLQl1bnNp
Z25lZCBpbnQgc2VxLCBzaGFyZWRfY291bnQ7CisJc3RydWN0IGRtYV9yZXN2X2N1cnNvciBjdXJz
b3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Ci0JaW50IGk7CiAKLXJldHJ5OgotCXNoYXJl
ZF9jb3VudCA9IDA7Ci0Jc2VxID0gcmVhZF9zZXFjb3VudF9iZWdpbigmb2JqLT5zZXEpOwogCXJj
dV9yZWFkX2xvY2soKTsKLQlpID0gLTE7Ci0KLQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2Uo
b2JqKTsKLQlpZiAoZmVuY2UgJiYgIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJ
VCwgJmZlbmNlLT5mbGFncykpIHsKLQkJaWYgKCFkbWFfZmVuY2VfZ2V0X3JjdShmZW5jZSkpCi0J
CQlnb3RvIHVubG9ja19yZXRyeTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChv
YmosICZjdXJzb3IsIHdhaXRfYWxsLCBmZW5jZSkgeworCQlyY3VfcmVhZF91bmxvY2soKTsKIAot
CQlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkgeworCQlyZXQgPSBkbWFfZmVuY2Vf
d2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOworCQlpZiAocmV0IDw9IDApIHsKIAkJCWRt
YV9mZW5jZV9wdXQoZmVuY2UpOwotCQkJZmVuY2UgPSBOVUxMOworCQkJcmV0dXJuIHJldDsKIAkJ
fQogCi0JfSBlbHNlIHsKLQkJZmVuY2UgPSBOVUxMOwotCX0KLQotCWlmICh3YWl0X2FsbCkgewot
CQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iaik7
Ci0KLQkJaWYgKGZvYmopCi0JCQlzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Ci0K
LQkJZm9yIChpID0gMDsgIWZlbmNlICYmIGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewotCQkJc3Ry
dWN0IGRtYV9mZW5jZSAqbGZlbmNlOwotCi0JCQlsZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9i
ai0+c2hhcmVkW2ldKTsKLQkJCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9C
SVQsCi0JCQkJICAgICAmbGZlbmNlLT5mbGFncykpCi0JCQkJY29udGludWU7Ci0KLQkJCWlmICgh
ZG1hX2ZlbmNlX2dldF9yY3UobGZlbmNlKSkKLQkJCQlnb3RvIHVubG9ja19yZXRyeTsKLQotCQkJ
aWYgKGRtYV9mZW5jZV9pc19zaWduYWxlZChsZmVuY2UpKSB7Ci0JCQkJZG1hX2ZlbmNlX3B1dChs
ZmVuY2UpOwotCQkJCWNvbnRpbnVlOwotCQkJfQotCi0JCQlmZW5jZSA9IGxmZW5jZTsKLQkJCWJy
ZWFrOwotCQl9CisJCXJjdV9yZWFkX2xvY2soKTsKIAl9Ci0KIAlyY3VfcmVhZF91bmxvY2soKTsK
LQlpZiAoZmVuY2UpIHsKLQkJaWYgKHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEp
KSB7Ci0JCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQkJCWdvdG8gcmV0cnk7Ci0JCX0KIAotCQly
ZXQgPSBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOwotCQlkbWFfZmVu
Y2VfcHV0KGZlbmNlKTsKLQkJaWYgKHJldCA+IDAgJiYgd2FpdF9hbGwgJiYgKGkgKyAxIDwgc2hh
cmVkX2NvdW50KSkKLQkJCWdvdG8gcmV0cnk7Ci0JfQogCXJldHVybiByZXQ7Ci0KLXVubG9ja19y
ZXRyeToKLQlyY3VfcmVhZF91bmxvY2soKTsKLQlnb3RvIHJldHJ5OwogfQogRVhQT1JUX1NZTUJP
TF9HUEwoZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
