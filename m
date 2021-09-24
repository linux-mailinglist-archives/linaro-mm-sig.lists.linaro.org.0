Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 714AE4177BC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:32:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CF94631AB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:32:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 40EE26242B; Fri, 24 Sep 2021 15:32:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93311631AB;
	Fri, 24 Sep 2021 15:31:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A961962EA6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3B03862631; Fri, 24 Sep 2021 15:31:24 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 1419961C4A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:22 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id t8so28819814wri.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bdxDl1m+8XOXTzKq7WnyxAATGKOR0ud+UbtwoDgVbbc=;
 b=ODU69SvYQBoe73ZOhuuTO6W6+86702JL7nwv1wqbUR1w7nhw4trtrpe4xaxe7Hnt4A
 HcLneQPCTnIJfN0FR0Jg1clTtbm37v+F9b7x12WzhGbvsbie++Qz4gB156cwcr3RjrIb
 ZjrMr9Nuu+z84nIImNVRg7WjDASFyFS2syrInI67L0kZf2Go+wp97NCJ332XpnXTWkV0
 QPv7d+ZIkM/qny9xCwMiy3BypuJsaE9AXX8b4l9tFdSY7JESSO3rh9YyGJS9yqmMw8Js
 h7caAt9bRbN11FDnDe+CA/9QzS3OErtFKSN+PEWEdpaAu7ETImdUzfA5EDt2XzCYSxPH
 vqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bdxDl1m+8XOXTzKq7WnyxAATGKOR0ud+UbtwoDgVbbc=;
 b=ZpmxzejWs/I/3muFAnFbbAZKGOHJkAy5VjOS0d1xBHU959Nfh2f5CGWji2HU1NVjkL
 lwvs778bVYDCM8iOZ5438RM/00/UiuFJ0LkxsIHPpYtZsRovlLbQNCsZHsONZAutewCL
 rrTtIzI/+9plnx+rdIfcqVpLjx82oK+9YzZygBQMaZh4kp2a+haiJZv2bPKZCbLHqjXs
 92vrmo3HoEWSjEPw09vRktYnDf9o5j9Aa5YpXBSuOWr9QBPAJyLoDxDfYCIAVcgsQ+UQ
 ou0j7THkuBvYshguLESuXcjU/FtOVlIis+UGn6HSoP55Ig0XutPmpOQOaXMjso9E8dOc
 3ixQ==
X-Gm-Message-State: AOAM533oreGogargqzAH0nhpRrf4cQvFzjwwVKa0uCrw2ledizJRid8/
 PQvs6Vm7/Vso6nSmL1ZWyHHKrS5/NcI=
X-Google-Smtp-Source: ABdhPJzBcYtkQo3Wyfd0nFGOnH0pHsA6d0aPb408PLKgYO3fGWVqda/NXtNrnrTfn+xSdzFZXxhBMw==
X-Received: by 2002:a1c:2246:: with SMTP id i67mr2712664wmi.157.1632497481199; 
 Fri, 24 Sep 2021 08:31:21 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:20 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:30:52 +0200
Message-Id: <20210924153113.2159-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/27] dma-buf: use new iterator in
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMgfCA2OSArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YwppbmRleCAzOWEzZWFjMjg4MzQuLmNlNmQwYWM0MzkxMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTYw
OSw3NCArNjA5LDIxIEBAIGxvbmcgZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KHN0cnVjdCBkbWFfcmVz
diAqb2JqLCBib29sIHdhaXRfYWxsLCBib29sIGludHIsCiAJCQkgICB1bnNpZ25lZCBsb25nIHRp
bWVvdXQpCiB7CiAJbG9uZyByZXQgPSB0aW1lb3V0ID8gdGltZW91dCA6IDE7Ci0JdW5zaWduZWQg
aW50IHNlcSwgc2hhcmVkX2NvdW50OworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKLQlpbnQgaTsKLQotcmV0cnk6Ci0Jc2hhcmVkX2NvdW50
ID0gMDsKLQlzZXEgPSByZWFkX3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7Ci0JcmN1X3JlYWRf
bG9jaygpOwotCWkgPSAtMTsKLQotCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmopOwot
CWlmIChmZW5jZSAmJiAhdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVu
Y2UtPmZsYWdzKSkgewotCQlpZiAoIWRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlKSkKLQkJCWdvdG8g
dW5sb2NrX3JldHJ5OwotCi0JCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKSB7Ci0J
CQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQkJCWZlbmNlID0gTlVMTDsKLQkJfQotCi0JfSBlbHNl
IHsKLQkJZmVuY2UgPSBOVUxMOwotCX0KLQotCWlmICh3YWl0X2FsbCkgewotCQlzdHJ1Y3QgZG1h
X3Jlc3ZfbGlzdCAqZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iaik7Ci0KLQkJaWYgKGZv
YmopCi0JCQlzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Ci0KLQkJZm9yIChpID0g
MDsgIWZlbmNlICYmIGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewotCQkJc3RydWN0IGRtYV9mZW5j
ZSAqbGZlbmNlOwotCi0JCQlsZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ld
KTsKLQkJCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsCi0JCQkJICAg
ICAmbGZlbmNlLT5mbGFncykpCi0JCQkJY29udGludWU7CiAKLQkJCWlmICghZG1hX2ZlbmNlX2dl
dF9yY3UobGZlbmNlKSkKLQkJCQlnb3RvIHVubG9ja19yZXRyeTsKLQotCQkJaWYgKGRtYV9mZW5j
ZV9pc19zaWduYWxlZChsZmVuY2UpKSB7Ci0JCQkJZG1hX2ZlbmNlX3B1dChsZmVuY2UpOwotCQkJ
CWNvbnRpbnVlOwotCQkJfQorCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB3YWl0
X2FsbCk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2Up
IHsKIAotCQkJZmVuY2UgPSBsZmVuY2U7Ci0JCQlicmVhazsKKwkJcmV0ID0gZG1hX2ZlbmNlX3dh
aXRfdGltZW91dChmZW5jZSwgaW50ciwgcmV0KTsKKwkJaWYgKHJldCA8PSAwKSB7CisJCQlkbWFf
cmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKKwkJCXJldHVybiByZXQ7CiAJCX0KIAl9CisJZG1hX3Jl
c3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAKLQlyY3VfcmVhZF91bmxvY2soKTsKLQlpZiAoZmVuY2Up
IHsKLQkJaWYgKHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEpKSB7Ci0JCQlkbWFf
ZmVuY2VfcHV0KGZlbmNlKTsKLQkJCWdvdG8gcmV0cnk7Ci0JCX0KLQotCQlyZXQgPSBkbWFfZmVu
Y2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOwotCQlkbWFfZmVuY2VfcHV0KGZlbmNl
KTsKLQkJaWYgKHJldCA+IDAgJiYgd2FpdF9hbGwgJiYgKGkgKyAxIDwgc2hhcmVkX2NvdW50KSkK
LQkJCWdvdG8gcmV0cnk7Ci0JfQogCXJldHVybiByZXQ7Ci0KLXVubG9ja19yZXRyeToKLQlyY3Vf
cmVhZF91bmxvY2soKTsKLQlnb3RvIHJldHJ5OwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jl
c3Zfd2FpdF90aW1lb3V0KTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
