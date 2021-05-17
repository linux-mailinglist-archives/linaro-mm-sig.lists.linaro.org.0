Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3380A382F40
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 16:13:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC2F460BF0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 14:13:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AD91F61145; Mon, 17 May 2021 14:13:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D306A60B35;
	Mon, 17 May 2021 14:13:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0D28360B35
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F25A860B83; Mon, 17 May 2021 14:11:39 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id DC64C60B57
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:37 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id v5so7065093edc.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 07:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1zNbi6Zov5OYz29vP/UsO9tmrckTut+qHanO+zcMqco=;
 b=V+YrANUYUxA9c50Gf9575OacevsMRuvTkCvptwSpMvXe/ph6GQvQulfxJYdgZd4elh
 u+RyRrxLLHyRnoxpyPRTCJtTpwvE264nsh+1Rju9SUte82wQbSlqxzZbRcAiDn6EkDdz
 a2S57n13tsjdahBwdkJl2Pi/RAirbIcHiYY+ZUfZ5XrwweVU/a7lBaerv+vY9LB7durO
 Lt5r3FLPDpdBqQPxQcjG6V+TtlH8Enm9RBf6auN9Hq77y5ixUEDcJFXEUvJwSCBnT+PE
 J8kE9SBsJ4l9DsHYGedcMqkONY/YqgYr1UWCQrgn7ETgIagIPkpEfdfWjoP/V3WPTrJX
 2m9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1zNbi6Zov5OYz29vP/UsO9tmrckTut+qHanO+zcMqco=;
 b=ceMJSzxCnMrmGKjM8yJCvJFKq+Fj9ErZtrQqWTIDmK0krbgbyc9ut4you3k+28KyIr
 jJoUJF0KPz8bGAqjoiT/t1kPfwLMC0mm1GhCbU9ylz6EFDvHLckg5ki/FJNaCJqMsmQi
 yLDTI0dyA8sMQhO/F99bvCA4jNTqucQfkP7YtMQJWHxb5f0AWab6OG2Y7TjefpOFkOUO
 GIgolQpIUx+sRJg+ndSKm1lh7uJZQsjmlQ48GNDEu6HIYOMxLSpfl5jXitTeEpa0+LnX
 zVo2rpqCDOp8b4Ev1FPkmkAXeo5YwvBFoDqiNWRifVRJuudSX4Yw5tWFncTboa2TYaPj
 Ggfg==
X-Gm-Message-State: AOAM530JWNHC4dRQwkdJ8PC9rL0z1TE0fMkzh6wcaW1NBJAClA1zcBDA
 jErcinoNR0k4oZR9enDjnfg=
X-Google-Smtp-Source: ABdhPJwo8xhvc8W4MpvI1YqHJWCvCeVqxiVKMDwnP49ZcwDru0vLad3g1Dr8OWskPCHxsSYJ3yxqXw==
X-Received: by 2002:aa7:c84a:: with SMTP id g10mr251078edt.326.1621260696552; 
 Mon, 17 May 2021 07:11:36 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:1df4:c5b6:b8fd:3c4b])
 by smtp.gmail.com with ESMTPSA id b9sm2419624edt.71.2021.05.17.07.11.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 07:11:36 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 17 May 2021 16:11:24 +0200
Message-Id: <20210517141129.2225-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210517141129.2225-1-christian.koenig@amd.com>
References: <20210517141129.2225-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/11] dma-buf: add dma_resv_list_fence
 helper
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

SW5zdGVhZCBvZiByZXBlYXRpbmcgdGhlIGFjY2VzcyBjaGVjayBvdmVyIGFuZCBvdmVyIGFnYWlu
LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgNDIgKysrKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCsp
LCAxNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4IGIxYTFhMzFkYzAwOS4uNDlmM2Mx
MDA5ODIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpAQCAtOTMsNiArOTMsMjIgQEAgc3RhdGljIHZvaWQgZG1h
X3Jlc3ZfbGlzdF9mcmVlKHN0cnVjdCBkbWFfcmVzdl9saXN0ICpsaXN0KQogCWtmcmVlX3JjdShs
aXN0LCByY3UpOwogfQogCisvKioKKyAqIGRtYV9yZXN2X2xpc3RfZmVuY2UgLSByZXR1cm4gZmVu
Y2UgZm9yIGluZGV4CisgKiBAb2JqOiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0CisgKiBAbGlzdDog
bGlzdCB0byBnZXQgdGhlIGZlbmNlIGZyb20KKyAqIEBpZHg6IGluZGV4IGludG8gdGhlIGZlbmNl
IGFycmF5CisgKgorICogUmV0dXJuIHRoZSBmZW5jZSBhdCB0aGUgc3BlY2lmaWVkIGluZGV4IGRv
dWJsZSBjaGVja2luZyB0aGF0IGVpdGhlciB0aGUgcmN1CisgKiByZWFkIHNpZGUgb3IgdGhlIGRt
YV9yZXN2IG9iamVjdCBpcyBoZWxkLgorICovCitzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqZG1h
X3Jlc3ZfbGlzdF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwKKwkJCQkJICAgICBzdHJ1Y3Qg
ZG1hX3Jlc3ZfbGlzdCAqbGlzdCwKKwkJCQkJICAgICB1bnNpZ25lZCBpbnQgaWR4KQoreworCXJl
dHVybiByY3VfZGVyZWZlcmVuY2VfY2hlY2sobGlzdC0+c2hhcmVkW2lkeF0sIGRtYV9yZXN2X2hl
bGQob2JqKSk7Cit9CisKIC8qKgogICogZG1hX3Jlc3ZfaW5pdCAtIGluaXRpYWxpemUgYSByZXNl
cnZhdGlvbiBvYmplY3QKICAqIEBvYmo6IHRoZSByZXNlcnZhdGlvbiBvYmplY3QKQEAgLTE3MSw4
ICsxODcsNyBAQCBpbnQgZG1hX3Jlc3ZfcmVzZXJ2ZV9zaGFyZWQoc3RydWN0IGRtYV9yZXN2ICpv
YmosIHVuc2lnbmVkIGludCBudW1fZmVuY2VzKQogCWZvciAoaSA9IDAsIGogPSAwLCBrID0gbWF4
OyBpIDwgKG9sZCA/IG9sZC0+c2hhcmVkX2NvdW50IDogMCk7ICsraSkgewogCQlzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZTsKIAotCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQob2xk
LT5zaGFyZWRbaV0sCi0JCQkJCQkgIGRtYV9yZXN2X2hlbGQob2JqKSk7CisJCWZlbmNlID0gZG1h
X3Jlc3ZfbGlzdF9mZW5jZShvYmosIG9sZCwgaSk7CiAJCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFs
ZWQoZmVuY2UpKQogCQkJUkNVX0lOSVRfUE9JTlRFUihuZXctPnNoYXJlZFstLWtdLCBmZW5jZSk7
CiAJCWVsc2UKQEAgLTE5NCwxMyArMjA5LDggQEAgaW50IGRtYV9yZXN2X3Jlc2VydmVfc2hhcmVk
KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCB1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcykKIAkJcmV0dXJu
IDA7CiAKIAkvKiBEcm9wIHRoZSByZWZlcmVuY2VzIHRvIHRoZSBzaWduYWxlZCBmZW5jZXMgKi8K
LQlmb3IgKGkgPSBrOyBpIDwgbWF4OyArK2kpIHsKLQkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7
Ci0KLQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKG5ldy0+c2hhcmVkW2ldLAot
CQkJCQkJICBkbWFfcmVzdl9oZWxkKG9iaikpOwotCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQl9
CisJZm9yIChpID0gazsgaSA8IG1heDsgKytpKQorCQlkbWFfZmVuY2VfcHV0KGRtYV9yZXN2X2xp
c3RfZmVuY2Uob2JqLCBuZXcsIGkpKTsKIAlrZnJlZV9yY3Uob2xkLCByY3UpOwogCiAJcmV0dXJu
IDA7CkBAIC0yNTEsOCArMjYxLDcgQEAgdm9pZCBkbWFfcmVzdl9hZGRfc2hhcmVkX2ZlbmNlKHN0
cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKIAogCWZvciAoaSA9
IDA7IGkgPCBjb3VudDsgKytpKSB7CiAKLQkJb2xkID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3Rl
ZChmb2JqLT5zaGFyZWRbaV0sCi0JCQkJCQlkbWFfcmVzdl9oZWxkKG9iaikpOworCQlvbGQgPSBk
bWFfcmVzdl9saXN0X2ZlbmNlKG9iaiwgZm9iaiwgaSk7CiAJCWlmIChvbGQtPmNvbnRleHQgPT0g
ZmVuY2UtPmNvbnRleHQgfHwKIAkJICAgIGRtYV9mZW5jZV9pc19zaWduYWxlZChvbGQpKQogCQkJ
Z290byByZXBsYWNlOwpAQCAtMzAzLDggKzMxMiw3IEBAIHZvaWQgZG1hX3Jlc3ZfYWRkX2V4Y2xf
ZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQogCiAJ
LyogaW5wbGFjZSB1cGRhdGUsIG5vIHNoYXJlZCBmZW5jZXMgKi8KIAl3aGlsZSAoaS0tKQotCQlk
bWFfZmVuY2VfcHV0KHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQob2xkLT5zaGFyZWRbaV0sCi0J
CQkJCQlkbWFfcmVzdl9oZWxkKG9iaikpKTsKKwkJZG1hX2ZlbmNlX3B1dChkbWFfcmVzdl9saXN0
X2ZlbmNlKG9iaiwgb2xkLCBpKSk7CiAKIAlkbWFfZmVuY2VfcHV0KG9sZF9mZW5jZSk7CiB9CkBA
IC0zNTAsNyArMzU4LDcgQEAgaW50IGRtYV9yZXN2X2NvcHlfZmVuY2VzKHN0cnVjdCBkbWFfcmVz
diAqZHN0LCBzdHJ1Y3QgZG1hX3Jlc3YgKnNyYykKIAkJCXN0cnVjdCBkbWFfZmVuY2UgX19yY3Ug
Kipkc3Q7CiAJCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAotCQkJZmVuY2UgPSByY3VfZGVy
ZWZlcmVuY2Uoc3JjX2xpc3QtPnNoYXJlZFtpXSk7CisJCQlmZW5jZSA9IGRtYV9yZXN2X2xpc3Rf
ZmVuY2Uoc3JjLCBzcmNfbGlzdCwgaSk7CiAJCQlpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdf
U0lHTkFMRURfQklULAogCQkJCSAgICAgJmZlbmNlLT5mbGFncykpCiAJCQkJY29udGludWU7CkBA
IC00NTksNyArNDY3LDcgQEAgaW50IGRtYV9yZXN2X2dldF9mZW5jZXNfcmN1KHN0cnVjdCBkbWFf
cmVzdiAqb2JqLAogCQkJc2hhcmVkID0gbnNoYXJlZDsKIAkJCXNoYXJlZF9jb3VudCA9IGZvYmog
PyBmb2JqLT5zaGFyZWRfY291bnQgOiAwOwogCQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3Vu
dDsgKytpKSB7Ci0JCQkJc2hhcmVkW2ldID0gcmN1X2RlcmVmZXJlbmNlKGZvYmotPnNoYXJlZFtp
XSk7CisJCQkJc2hhcmVkW2ldID0gZG1hX3Jlc3ZfbGlzdF9mZW5jZShvYmosIGZvYmosIGkpOwog
CQkJCWlmICghZG1hX2ZlbmNlX2dldF9yY3Uoc2hhcmVkW2ldKSkKIAkJCQkJYnJlYWs7CiAJCQl9
CkBAIC01NDMsNyArNTUxLDcgQEAgbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVvdXRfcmN1KHN0cnVj
dCBkbWFfcmVzdiAqb2JqLAogCQlmb3IgKGkgPSAwOyAhZmVuY2UgJiYgaSA8IHNoYXJlZF9jb3Vu
dDsgKytpKSB7CiAJCQlzdHJ1Y3QgZG1hX2ZlbmNlICpsZmVuY2U7CiAKLQkJCWxmZW5jZSA9IHJj
dV9kZXJlZmVyZW5jZShmb2JqLT5zaGFyZWRbaV0pOworCQkJbGZlbmNlID0gZG1hX3Jlc3ZfbGlz
dF9mZW5jZShvYmosIGZvYmosIGkpOwogCQkJaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJ
R05BTEVEX0JJVCwKIAkJCQkgICAgICZsZmVuY2UtPmZsYWdzKSkKIAkJCQljb250aW51ZTsKQEAg
LTYyOSw3ICs2MzcsNyBAQCBib29sIGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWRfcmN1KHN0cnVjdCBk
bWFfcmVzdiAqb2JqLCBib29sIHRlc3RfYWxsKQogCQlmb3IgKGkgPSAwOyBpIDwgc2hhcmVkX2Nv
dW50OyArK2kpIHsKIAkJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCi0JCQlmZW5jZSA9IHJj
dV9kZXJlZmVyZW5jZShmb2JqLT5zaGFyZWRbaV0pOworCQkJZmVuY2UgPSBkbWFfcmVzdl9saXN0
X2ZlbmNlKG9iaiwgZm9iaiwgaSk7CiAJCQlyZXQgPSBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkX3Np
bmdsZShmZW5jZSk7CiAJCQlpZiAocmV0IDwgMCkKIAkJCQlnb3RvIHJldHJ5OwotLSAKMi4yNS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
