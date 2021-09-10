Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 843FE406878
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:27:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E24563247
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:27:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4D5D769CFE; Fri, 10 Sep 2021 08:27:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 517D364ADC;
	Fri, 10 Sep 2021 08:27:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3B2CA6341F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0E3866338E; Fri, 10 Sep 2021 08:27:06 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 64BC86322C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:03 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id b6so1430265wrh.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qW+9yeXWdgQdV+++wShEfX/2r8PdvtzgR8RKF6D1Slo=;
 b=VzzUsjk0AEIRSeBRpV5cyDCOrSGL9w5QUkSlFheWQB/c9xHxQsZAqclnL/JGB+y3f3
 zNlWhIVVhqLTN9AavwmJJX6ADnNHQSgb7fRU7qce20FAYUwXFWg0UAU9jTWQY+Cl4CYO
 2YLJ1N16KKzW9x3EX/jZdoz7MuR6qttw2RAIuhNpqu6AbZYJUxJaE95SsgrG33RETAGY
 50fLxqhx462/l/nQ1eTKo9DdOkrYojZQ6Omp67DNoMlrD5WYtdLwypEiewKYWCoHRkp9
 BL5mr0+r4s1KMlm9PN5WAeBPWk8+Pg4lURDG/3QSNbTXDmHeiqct6Y5bU4BGVhYEQCNF
 XOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qW+9yeXWdgQdV+++wShEfX/2r8PdvtzgR8RKF6D1Slo=;
 b=rAQjKpyvtRLTnt3ytbYgz2mjky5AJ2nzKbLhf/DybOueR2JFR2iwJ/kuRvRzKsNz9e
 s9zPqBqG6mTO3FCtZKSbi5JTS4k3XUNtVw2V5vxriQE69wLpBXbdeEV9i7yyzvSicZCH
 1S8XNrw2/JieKawvCWkopjyb8n4i8lUPKUxPwSFFW553qQGnwh7eOs4KLg7zj+RXhyMK
 RZjmGrvgTpahhmrelLeFr7Hl7D5A/308o91fOro1zvWwpjCiyi2sd8Rjz7uSxGGz9Bal
 8UcE4McnWJM64OlmwLY5JdkFEo/4Qz7w4Zn/gI81l8ARz+GWrlY7eLYFsBYwnZjaRlkP
 rLgQ==
X-Gm-Message-State: AOAM532vQ0vmLPjjHSD1XBcFIcthSNdc0hE5bXPbn0mUGqVQ9ICfUw0Q
 Svn1+bFV6+muVEaZND75I3bA3Sn0hxOlOTx3
X-Google-Smtp-Source: ABdhPJzEW++4UtO+2/WEXjNR4ZrvyQisPxmWGmjCsRmLMya0Yo65UWWhGodkfXL8zjWWriaK+QFhFw==
X-Received: by 2002:adf:fb09:: with SMTP id c9mr8111801wrr.93.1631262422437;
 Fri, 10 Sep 2021 01:27:02 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:27:02 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:47 +0200
Message-Id: <20210910082655.82168-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/14] dma-buf: use new iterator in
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
Cc: daniel@ffwll.ch
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
cmVzdi5jCmluZGV4IDY0NWNmNTJhNmE2Yy4uY2RlNWQ0NDhkMDI5IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpA
QCAtNTkzLDIyICs1OTMsNiBAQCBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1h
X3Jlc3YgKm9iaiwgYm9vbCB3YWl0X2FsbCwgYm9vbCBpbnRyLAogRVhQT1JUX1NZTUJPTF9HUEwo
ZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KTsKIAogCi1zdGF0aWMgaW5saW5lIGludCBkbWFfcmVzdl90
ZXN0X3NpZ25hbGVkX3NpbmdsZShzdHJ1Y3QgZG1hX2ZlbmNlICpwYXNzZWRfZmVuY2UpCi17Ci0J
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsICpsZmVuY2UgPSBwYXNzZWRfZmVuY2U7Ci0JaW50IHJl
dCA9IDE7Ci0KLQlpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmxm
ZW5jZS0+ZmxhZ3MpKSB7Ci0JCWZlbmNlID0gZG1hX2ZlbmNlX2dldF9yY3UobGZlbmNlKTsKLQkJ
aWYgKCFmZW5jZSkKLQkJCXJldHVybiAtMTsKLQotCQlyZXQgPSAhIWRtYV9mZW5jZV9pc19zaWdu
YWxlZChmZW5jZSk7Ci0JCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCX0KLQlyZXR1cm4gcmV0Owot
fQotCiAvKioKICAqIGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWQgLSBUZXN0IGlmIGEgcmVzZXJ2YXRp
b24gb2JqZWN0J3MgZmVuY2VzIGhhdmUgYmVlbgogICogc2lnbmFsZWQuCkBAIC02MjUsNDMgKzYw
OSwxOSBAQCBzdGF0aWMgaW5saW5lIGludCBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkX3NpbmdsZShz
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
