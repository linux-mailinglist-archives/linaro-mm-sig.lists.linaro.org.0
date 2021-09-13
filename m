Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D51408C71
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0B8868646
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 527ED61BD5; Mon, 13 Sep 2021 13:18:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE4A6667BF;
	Mon, 13 Sep 2021 13:18:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0718C62DEF
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DA0AF6242A; Mon, 13 Sep 2021 13:17:36 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 9D77162EA6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:32 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id q11so14635460wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rra4xyyjcasAg6ZlFYF7J0CFdUiNG1F5+45b95OFcSo=;
 b=F2VCkKNgS3/ntznKYeL0uVjzZrdrvnAYfaXfMrjLUIb25/2fg3bmcLfhyHFocl3Ec4
 OmLl2YEZNjo2hqWqJt9V29zKL/+BkfPOcVCUUsYVRqOJ8WC0qKJh218VIjLurv4aMiPd
 8imGKKd0+7fhQ/dRbXXWRXnlFLhijI79EYAMtsHHVfOsMKViRmp9zjZN2Eyw/NZ4xhW4
 GeXqbhXq1NSWCfVFTnBSf23pFsOtL10oFE4Q2onEVeRbzfJvbHnO8wOeoGBAd1QVdTrx
 tcnX3WO4evFT+STKW64j9+uMLeV0CxKJ1eGwANLo8g+Qpzi9GElTLBrOCuvDvI0M+Ctd
 XOmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rra4xyyjcasAg6ZlFYF7J0CFdUiNG1F5+45b95OFcSo=;
 b=3VWe4olozumweiMjc5mKDJRdcqizJagM5EXTzTkfrZT7H7m1wRncw0h1+ELYQRalco
 Nlmuf93XupZTq0Dnlq7dWltV5EssSUnojBwjFN4XMBcq17carqhKLIVIFyVqACNe+Y8h
 t5OTHpyFnVpuooMWcC0qm8m85eStLKSUN1VqNCL963CqmYkOVQcUTQTGbwYZRosRBi/K
 TxSn02fZ1GChrSkIZzs0QamdaT/ldnlxp8dd74DIrP4Oypi0w4lBrw+uPsGbLsfaYvyL
 KcCEPyHHbRj4uLrBYdS1mn7zpPIQiMgndwPo7xWe9ssHUkhLyHPL2059hsXSVaFh59eu
 XD0w==
X-Gm-Message-State: AOAM5301l87rz7xwQnnxEqS9r+G8fEVaOuIich6kM/UiUcVfLvifTLO+
 xvpT/GhgyJmKX0vB6z0BmuNt4Jvobi7g7ElB
X-Google-Smtp-Source: ABdhPJwHC8/YYowut4uEWvJhicHR005YlLSPuJF8DC6fA642PetzlqaMz4t70TkmU4LYpXSzvBFoAg==
X-Received: by 2002:a5d:58e2:: with SMTP id f2mr12386562wrd.272.1631539050800; 
 Mon, 13 Sep 2021 06:17:30 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:30 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:55 +0200
Message-Id: <20210913131707.45639-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 14/26] drm/i915: use the new iterator in
 i915_sw_fence_await_reservation
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9zd19mZW5jZS5jIHwgNTIgKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfc3dfZmVuY2UuYwppbmRleCBjNTg5YTY4MWRhNzcuLjA5ZDJjOWY5NmM1MiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYwpAQCAtNTcyLDU2ICs1NzIsMjQgQEAgaW50
IGk5MTVfc3dfZmVuY2VfYXdhaXRfcmVzZXJ2YXRpb24oc3RydWN0IGk5MTVfc3dfZmVuY2UgKmZl
bmNlLAogCQkJCSAgICB1bnNpZ25lZCBsb25nIHRpbWVvdXQsCiAJCQkJICAgIGdmcF90IGdmcCkK
IHsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpleGNsOworCXN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vy
c29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmY7CiAJaW50IHJldCA9IDAsIHBlbmRpbmc7CiAKIAlk
ZWJ1Z19mZW5jZV9hc3NlcnQoZmVuY2UpOwogCW1pZ2h0X3NsZWVwX2lmKGdmcGZsYWdzX2FsbG93
X2Jsb2NraW5nKGdmcCkpOwogCi0JaWYgKHdyaXRlKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKipz
aGFyZWQ7Ci0JCXVuc2lnbmVkIGludCBjb3VudCwgaTsKLQotCQlyZXQgPSBkbWFfcmVzdl9nZXRf
ZmVuY2VzKHJlc3YsICZleGNsLCAmY291bnQsICZzaGFyZWQpOwotCQlpZiAocmV0KQotCQkJcmV0
dXJuIHJldDsKLQotCQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgewotCQkJaWYgKHNoYXJl
ZFtpXS0+b3BzID09IGV4Y2x1ZGUpCi0JCQkJY29udGludWU7Ci0KLQkJCXBlbmRpbmcgPSBpOTE1
X3N3X2ZlbmNlX2F3YWl0X2RtYV9mZW5jZShmZW5jZSwKLQkJCQkJCQkJc2hhcmVkW2ldLAotCQkJ
CQkJCQl0aW1lb3V0LAotCQkJCQkJCQlnZnApOwotCQkJaWYgKHBlbmRpbmcgPCAwKSB7Ci0JCQkJ
cmV0ID0gcGVuZGluZzsKLQkJCQlicmVhazsKLQkJCX0KLQotCQkJcmV0IHw9IHBlbmRpbmc7Ci0J
CX0KLQotCQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykKLQkJCWRtYV9mZW5jZV9wdXQoc2hh
cmVkW2ldKTsKLQkJa2ZyZWUoc2hhcmVkKTsKLQl9IGVsc2UgewotCQlleGNsID0gZG1hX3Jlc3Zf
Z2V0X2V4Y2xfdW5sb2NrZWQocmVzdik7Ci0JfQotCi0JaWYgKHJldCA+PSAwICYmIGV4Y2wgJiYg
ZXhjbC0+b3BzICE9IGV4Y2x1ZGUpIHsKLQkJcGVuZGluZyA9IGk5MTVfc3dfZmVuY2VfYXdhaXRf
ZG1hX2ZlbmNlKGZlbmNlLAotCQkJCQkJCWV4Y2wsCi0JCQkJCQkJdGltZW91dCwKKwlkbWFfcmVz
dl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChyZXN2LCAmY3Vyc29yLCB3cml0ZSwgZikgeworCQlw
ZW5kaW5nID0gaTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2UoZmVuY2UsIGYsIHRpbWVvdXQs
CiAJCQkJCQkJZ2ZwKTsKLQkJaWYgKHBlbmRpbmcgPCAwKQorCQlpZiAocGVuZGluZyA8IDApIHsK
IAkJCXJldCA9IHBlbmRpbmc7Ci0JCWVsc2UKLQkJCXJldCB8PSBwZW5kaW5nOwotCX0KLQotCWRt
YV9mZW5jZV9wdXQoZXhjbCk7CisJCQlkbWFfZmVuY2VfcHV0KGYpOworCQkJYnJlYWs7CisJCX0K
IAorCQlyZXQgfD0gcGVuZGluZzsKKwl9CiAJcmV0dXJuIHJldDsKIH0KIAotLSAKMi4yNS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
