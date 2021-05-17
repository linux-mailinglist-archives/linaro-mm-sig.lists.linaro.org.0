Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6303D382F28
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 16:13:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 938DA60E96
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 14:13:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B9C17607C8; Mon, 17 May 2021 14:13:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5539B61148;
	Mon, 17 May 2021 14:13:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5A154607C8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5659660B82; Mon, 17 May 2021 14:11:37 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by lists.linaro.org (Postfix) with ESMTPS id 3A47060B57
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:35 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id t15so7060707edr.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 07:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l4pSogmXrr1QfGx8sZLoGeTUykDMhAN7m5cUEpp5evE=;
 b=Ssxbaphk7IvZ0aGPx73MRiv0gYgzwY4nM6bKH4M8yoZ6avURhi1r4+zHoQ86bwVFTC
 CnnOLqF96R67wcWnoS6JrkqXyapvOj4Feet3uSxVxz6HpdLug2EZcgtYWRyCxD/Fn2Me
 Cy1RicUMUzvHrhz36raQd+/nKBYbc49+6vb7ueC7hM9em6uQJIu9qsgaymObsTCoR3c7
 spUZUTyxiGC5H0E7v7uIi7aazyBB9RiW6ea5Aeef8uqHo+0sBfwQWBuYfFcG+4Nm8qOe
 RwNpxiqhrb/ERkLyUnbb9zUR4f1cXc7ZSMWSqLgUG6NazKc8YJx1oHPsVCUt9mIo6SaD
 hvtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l4pSogmXrr1QfGx8sZLoGeTUykDMhAN7m5cUEpp5evE=;
 b=dmrOTSCrXjRlJKhyXn8QmS+/w7qDHCwOBDFqGdMC1HXiUsX0dA+f+BeCwu+Zt7Qkrn
 cNPhGMd4yWEzTIl2I2eVAD4cQ+zJycSdPLHZWrNox1WHXwQkd9uFowWFExp8XifLAhG/
 bCmNTTZ2jW8/eLWDFOED9hrPKd4wZtqMs4YwabeukjQYMf1XlOBx1EzXTxxVfrPfw35Y
 H4GXhifGRzCZrpOtuyPHBr0poMEg4wfzO+U7Xl+C84aKhmTIKbCUBRBzxop8ElfcVGSn
 nipsAsQSr7b1EfeuEJ/sjYKSPJj1LgKttLA2bd4oBHOUUIUqwFs0bo4Jnc3YlqNrQlF0
 xILA==
X-Gm-Message-State: AOAM531DEdHhfX8VkPlvuI3OCKJYAlPAB/9pkXvcqtWagANtojquwW66
 gjLdZbgf8zr69xFQA32+3WE=
X-Google-Smtp-Source: ABdhPJyFvybgqXNsHfHGdqDea96ArpVoArpj7dNe2OIgNCnJxxSoYAlTxioXAxkAWIzumgd28fxGlw==
X-Received: by 2002:aa7:c782:: with SMTP id n2mr245257eds.77.1621260694282;
 Mon, 17 May 2021 07:11:34 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:1df4:c5b6:b8fd:3c4b])
 by smtp.gmail.com with ESMTPSA id b9sm2419624edt.71.2021.05.17.07.11.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 07:11:33 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 17 May 2021 16:11:21 +0200
Message-Id: <20210517141129.2225-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210517141129.2225-1-christian.koenig@amd.com>
References: <20210517141129.2225-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 03/11] dma-buf: cleanup dma-resv shared
 fence debugging a bit
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

TWFrZSB0aGF0IGEgZnVuY3Rpb24gaW5zdGVhZCBvZiBpbmxpbmUuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMgfCAxOCArKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvbGludXgv
ZG1hLXJlc3YuaCAgIHwgMTUgKysrKysrKy0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDI1IGlu
c2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwppbmRleCA4N2Y1ZDgyZDk5
MmEuLjZjNjE5NTMxNWU5ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMK
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTIwOCw2ICsyMDgsMjQgQEAgaW50
IGRtYV9yZXN2X3Jlc2VydmVfc2hhcmVkKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCB1bnNpZ25lZCBp
bnQgbnVtX2ZlbmNlcykKIH0KIEVYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfcmVzZXJ2ZV9zaGFyZWQp
OwogCisjaWZkZWYgQ09ORklHX0RFQlVHX01VVEVYRVMKKy8qKgorICogZG1hX3Jlc3ZfcmVzZXRf
c2hhcmVkX21heCAtIHJlc2V0IHNoYXJlZCBmZW5jZXMgZm9yIGRlYnVnZ2luZworICogQG9iajog
dGhlIGRtYV9yZXN2IG9iamVjdCB0byByZXNldAorICoKKyAqIFJlc2V0IHRoZSBzaGFyZWRfbWF4
IHRvIHRlc3QgaWYgZHJpdmVycyBkbyBjb3JyZWN0IHNsb3QgYWxsb2NhdGlvbi4KKyAqLwordm9p
ZCBkbWFfcmVzdl9yZXNldF9zaGFyZWRfbWF4KHN0cnVjdCBkbWFfcmVzdiAqb2JqKQoreworCS8q
IFRlc3Qgc2hhcmVkIGZlbmNlIHNsb3QgcmVzZXJ2YXRpb24gKi8KKwlpZiAocmN1X2FjY2Vzc19w
b2ludGVyKG9iai0+ZmVuY2UpKSB7CisJCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmZW5jZSA9IGRt
YV9yZXN2X2dldF9saXN0KG9iaik7CisKKwkJZmVuY2UtPnNoYXJlZF9tYXggPSBmZW5jZS0+c2hh
cmVkX2NvdW50OworCX0KK30KKyNlbmRpZgorCiAvKioKICAqIGRtYV9yZXN2X2FkZF9zaGFyZWRf
ZmVuY2UgLSBBZGQgYSBmZW5jZSB0byBhIHNoYXJlZCBzbG90CiAgKiBAb2JqOiB0aGUgcmVzZXJ2
YXRpb24gb2JqZWN0CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggYi9pbmNs
dWRlL2xpbnV4L2RtYS1yZXN2LmgKaW5kZXggZDQ0YTc3ZThhN2UzLi5mMzJhM2QxNzY1MTMgMTAw
NjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAorKysgYi9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmgKQEAgLTkyLDYgKzkyLDEyIEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRtYV9yZXN2
X2xpc3QgKmRtYV9yZXN2X2dldF9saXN0KHN0cnVjdCBkbWFfcmVzdiAqb2JqKQogCQkJCQkgZG1h
X3Jlc3ZfaGVsZChvYmopKTsKIH0KIAorI2lmZGVmIENPTkZJR19ERUJVR19NVVRFWEVTCit2b2lk
IGRtYV9yZXN2X3Jlc2V0X3NoYXJlZF9tYXgoc3RydWN0IGRtYV9yZXN2ICpvYmopOworI2Vsc2UK
K3N0YXRpYyBpbmxpbmUgdm9pZCBkbWFfcmVzdl9yZXNldF9zaGFyZWRfbWF4KHN0cnVjdCBkbWFf
cmVzdiAqb2JqKSB7fQorI2VuZGlmCisKIC8qKgogICogZG1hX3Jlc3ZfbG9jayAtIGxvY2sgdGhl
IHJlc2VydmF0aW9uIG9iamVjdAogICogQG9iajogdGhlIHJlc2VydmF0aW9uIG9iamVjdApAQCAt
MjE1LDE0ICsyMjEsNyBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCB3d19hY3F1aXJlX2N0eCAqZG1h
X3Jlc3ZfbG9ja2luZ19jdHgoc3RydWN0IGRtYV9yZXN2ICpvYmopCiAgKi8KIHN0YXRpYyBpbmxp
bmUgdm9pZCBkbWFfcmVzdl91bmxvY2soc3RydWN0IGRtYV9yZXN2ICpvYmopCiB7Ci0jaWZkZWYg
Q09ORklHX0RFQlVHX01VVEVYRVMKLQkvKiBUZXN0IHNoYXJlZCBmZW5jZSBzbG90IHJlc2VydmF0
aW9uICovCi0JaWYgKHJjdV9hY2Nlc3NfcG9pbnRlcihvYmotPmZlbmNlKSkgewotCQlzdHJ1Y3Qg
ZG1hX3Jlc3ZfbGlzdCAqZmVuY2UgPSBkbWFfcmVzdl9nZXRfbGlzdChvYmopOwotCi0JCWZlbmNl
LT5zaGFyZWRfbWF4ID0gZmVuY2UtPnNoYXJlZF9jb3VudDsKLQl9Ci0jZW5kaWYKKwlkbWFfcmVz
dl9yZXNldF9zaGFyZWRfbWF4KG9iaik7CiAJd3dfbXV0ZXhfdW5sb2NrKCZvYmotPmxvY2spOwog
fQogCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
