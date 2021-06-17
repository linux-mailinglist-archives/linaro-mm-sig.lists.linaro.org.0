Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C09F3AB24C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:16:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D98F6350F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:16:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 261F263520; Thu, 17 Jun 2021 11:16:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1740D63501;
	Thu, 17 Jun 2021 11:16:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 51BF4634FD
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1AEF3634FF; Thu, 17 Jun 2021 11:16:08 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by lists.linaro.org (Postfix) with ESMTPS id E88FA61A28
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:05 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id w21so3473494edv.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=f39rGZT5veqFjxPrNuWB2TiXiQPmiaT54Z6hZqWOR7o=;
 b=RNe0rSmGaU+5s+VrIHUQqg4naOJSdYobgxmh7WvqRqImdOpANraMgE5pu/oy4P8pYT
 M9zK4r41DUTtvR0QXRj0RanQYmkhu22PvsweGK4dPehIuBZ3ns+fzANw46807M+d7SpY
 GTtclYSaKX1Sp7dcLITRI2MvZVdQ2/cOo1M32uYF13zwvEv9XBjPycR0nUIzvE+wRMo+
 IishIVHeVMElBcs3PrPppAxpaoClrphTrgInFhNwL+cFAdOce3ddFuE/ROgqzY+dT2W9
 JWDY6fvVKR/JgWStdtSQrdYXTw4doKPqXEOrGzZ/SwYCNReYAEFlhTg+8GuEZcWF9UOo
 dXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f39rGZT5veqFjxPrNuWB2TiXiQPmiaT54Z6hZqWOR7o=;
 b=ixkvkJyLKS33KjdA69q7T6uBlRPZUwhOwRbF9alvMvfUTsjK4fdQCPy1tq5+o5wAr6
 //q/y2HjsaCWFtk5OQ554B45hMHalAE53e7sM9QwxxB8k/T5QkOkIa4JufyxeKq1lNfH
 dVjhtIbXZZ0E0w7P46WSyhXfC90+PebN5tbvclCUIpihLmznO2zLE4KP8o9TOUwy9Iji
 dGgFhr2730AdPxeB2xlV4FPezHS6b3eg2njbso8U8gRzVHUSCuIVJc1mE+iBk+/UfIqP
 TevwzvWb8Mf3Ic8eg5J0JJHNESa7NJ15Jzo8b0MpxG+0Yr3G79jONFiEYaPO9p/8Q8BL
 /0JQ==
X-Gm-Message-State: AOAM5315NHFkYv11GfqdIJZkoCZtO6i2YNBG31Hoh/b+N12YobhDBPgM
 hj+Gid72glBpqHrSh0A42DQ=
X-Google-Smtp-Source: ABdhPJzAxNQq7o0c8Az9z4kWtTT6sk40psjeZ0p7jq+xVfK4Wgh4poK36RFnx2T6ZmZk0Jy7KIbgzw==
X-Received: by 2002:a05:6402:190a:: with SMTP id
 e10mr5759983edz.160.1623928564796; 
 Thu, 17 Jun 2021 04:16:04 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:47 +0200
Message-Id: <20210617111558.28486-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 05/16] dma-buf: use new iterator in
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
cmVzdi5jCmluZGV4IGI3N2JmNDZjMGY0OC4uNTE5MmNmNDI3MWFjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpA
QCAtNTY0LDc0ICs1NjQsMjQgQEAgbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVvdXQoc3RydWN0IGRt
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
