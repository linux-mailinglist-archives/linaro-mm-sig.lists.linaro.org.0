Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BEF382F26
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 16:13:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BD6B61082
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 14:13:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 91C7661031; Mon, 17 May 2021 14:13:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD1A560B83;
	Mon, 17 May 2021 14:12:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DD474607C8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D4FDF60B82; Mon, 17 May 2021 14:11:35 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id B53A1608ED
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:33 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id s6so7064091edu.10
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 07:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gn9n1CRWcynBJZ+ZbJ5qdWJBZgGNYvGrzX9b9xb/C9U=;
 b=jsH7DtkUOG3mSu/xsOqnceNM8D0RYfH2NOLhWVBbOIsiCYn9Ieq1own5Hdhtukbhvs
 WhBLHPiaxtajZznrVUwkLxufaD5GS7oVrN3VenzI0HoHpalMW2tsqk/ple9aBkiteZPc
 bU8pNVZtKf6iVobiky7HvH1jKAEmhQOw1pUX59skfFNLR4AzoRJTq7Z0h2Bss0VmsgK3
 IWSsDXNFLOnIs3R13qZh9essbZeLcFoij4uQr1QUckQF+Mne4UZ63C/RqB+jwTwYExZV
 R4dBHhJPOXuAlTWlDPEyFuAIyA4HlBGUDbpZ2+xqmSvQtovIzcnHaqdAfwEgBjA4dh9m
 JbmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gn9n1CRWcynBJZ+ZbJ5qdWJBZgGNYvGrzX9b9xb/C9U=;
 b=Un9ABIyvp+XRquwiJ3BU7ilp5pIdsAjj6w0VPQAX2W9iPp0zqxjW2GtQ9geuP4Z8cd
 Q4CjT+f9lyH503898uMAbszLxz7uZV0e/BWRZugVWXoQQX0p7+DeFJF53tbH3OGBAtXN
 YkYigLhezS2ri9c7J0ZXzATbAp+c01KwwIoczJF95KRY4+vDLkiiKYIISnSf3YpN1dJb
 layqC6RNJXofDd3Mx6ssUptPUhM36a87lgLW5s3lnaayFL6XArfvP/znIeieJJ5EUROO
 WKkIJb2DpDXz/cVpecGgKL6BLn1vIjXtSZvVP8sM7E5SOggDz1J//WvXeIAOLl9vxQED
 z/Lg==
X-Gm-Message-State: AOAM532pHtiL+YFMcjDEsmriO2xH3u/3lRZy9yBUFrp6p5MlD62RVmfv
 GMYsaQjwYKTcP6lR/OqI2DQ=
X-Google-Smtp-Source: ABdhPJxMUGFTk+WZNErNHcw3JxBYEeRmZ5u9qkNiHIc9NaZccxBoFIVEdRwQ0lWb8N715Av6V1xnmg==
X-Received: by 2002:a05:6402:1649:: with SMTP id
 s9mr244521edx.35.1621260692877; 
 Mon, 17 May 2021 07:11:32 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:1df4:c5b6:b8fd:3c4b])
 by smtp.gmail.com with ESMTPSA id b9sm2419624edt.71.2021.05.17.07.11.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 07:11:32 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 17 May 2021 16:11:19 +0200
Message-Id: <20210517141129.2225-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210517141129.2225-1-christian.koenig@amd.com>
References: <20210517141129.2225-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 01/11] dma-buf: fix invalid debug print
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

VGhlIGNvZGUgdHJpZXMgdG8gYWNxdWlyZSB0aGUgcmN1IHByb3RlY3RlZCBmZW5jZSBsaXN0LCBi
dXQgdGhlbiBpZ25vcmVzCmluZGl2aWR1YWwgZmVuY2VzIHdoaWNoIGhhcyBiZWVuIG1vZGlmaWVk
IHdoaWxlIGhvbGRpbmcgdGhlIHJjdS4KClN0b3AgdGhhdCBtYWRuZXNzIGFuZCBqdXN0IG5vdGUg
Y2xlYW5seSB0aGF0CnRoZSBsaXN0IHdhcyBjb25jdXJyZW50bHkgbW9kaWZpZWQuCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQog
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDE5ICsrKysrKysrLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCmlu
ZGV4IGYyNjRiNzBjMzgzZS4uNDY4YzI4MmI4YTA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTEzODMsMjIg
KzEzODMsMTcgQEAgc3RhdGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3coc3RydWN0IHNlcV9maWxl
ICpzLCB2b2lkICp1bnVzZWQpCiAJCQkJYnVmX29iai0+bmFtZSA/OiAiIik7CiAKIAkJcm9iaiA9
IGJ1Zl9vYmotPnJlc3Y7Ci0JCXdoaWxlICh0cnVlKSB7Ci0JCQlzZXEgPSByZWFkX3NlcWNvdW50
X2JlZ2luKCZyb2JqLT5zZXEpOwotCQkJcmN1X3JlYWRfbG9jaygpOwotCQkJZm9iaiA9IHJjdV9k
ZXJlZmVyZW5jZShyb2JqLT5mZW5jZSk7Ci0JCQlzaGFyZWRfY291bnQgPSBmb2JqID8gZm9iai0+
c2hhcmVkX2NvdW50IDogMDsKLQkJCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlKHJvYmotPmZlbmNl
X2V4Y2wpOwotCQkJaWYgKCFyZWFkX3NlcWNvdW50X3JldHJ5KCZyb2JqLT5zZXEsIHNlcSkpCi0J
CQkJYnJlYWs7Ci0JCQlyY3VfcmVhZF91bmxvY2soKTsKLQkJfQotCisJCXNlcSA9IHJlYWRfc2Vx
Y291bnRfYmVnaW4oJnJvYmotPnNlcSk7CisJCXJjdV9yZWFkX2xvY2soKTsKKwkJZmVuY2UgPSBy
Y3VfZGVyZWZlcmVuY2Uocm9iai0+ZmVuY2VfZXhjbCk7CiAJCWlmIChmZW5jZSkKIAkJCXNlcV9w
cmludGYocywgIlx0RXhjbHVzaXZlIGZlbmNlOiAlcyAlcyAlc3NpZ25hbGxlZFxuIiwKIAkJCQkg
ICBmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpLAogCQkJCSAgIGZlbmNlLT5vcHMt
PmdldF90aW1lbGluZV9uYW1lKGZlbmNlKSwKIAkJCQkgICBkbWFfZmVuY2VfaXNfc2lnbmFsZWQo
ZmVuY2UpID8gIiIgOiAidW4iKTsKKworCQlmb2JqID0gcmN1X2RlcmVmZXJlbmNlKHJvYmotPmZl
bmNlKTsKKwkJc2hhcmVkX2NvdW50ID0gZm9iaiA/IGZvYmotPnNoYXJlZF9jb3VudCA6IDA7CiAJ
CWZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7IGkrKykgewogCQkJZmVuY2UgPSByY3VfZGVy
ZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKIAkJCWlmICghZG1hX2ZlbmNlX2dldF9yY3UoZmVu
Y2UpKQpAQCAtMTQxMCw2ICsxNDA1LDggQEAgc3RhdGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3co
c3RydWN0IHNlcV9maWxlICpzLCB2b2lkICp1bnVzZWQpCiAJCQlkbWFfZmVuY2VfcHV0KGZlbmNl
KTsKIAkJfQogCQlyY3VfcmVhZF91bmxvY2soKTsKKwkJaWYgKHJlYWRfc2VxY291bnRfcmV0cnko
JnJvYmotPnNlcSwgc2VxKSkKKwkJCXNlcV9wcmludGYocywgIlx0RmVuY2VzIGNvbmN1cnJlbnRs
eSBtb2RpZmllZFxuIik7CiAKIAkJc2VxX3B1dHMocywgIlx0QXR0YWNoZWQgRGV2aWNlczpcbiIp
OwogCQlhdHRhY2hfY291bnQgPSAwOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
