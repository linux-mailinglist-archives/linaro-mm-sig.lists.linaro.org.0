Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6AA41EA9F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:08:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5B46632E0
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:08:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5DC5163133; Fri,  1 Oct 2021 10:08:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5781862D53;
	Fri,  1 Oct 2021 10:08:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CB1BC61A27
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DCB0B62432; Fri,  1 Oct 2021 10:06:32 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id CCB056117A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:27 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 q127-20020a1ca785000000b0030cb71ea4d1so6367539wme.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IkVWp2cRgm41mlWFdiuPcdEqOEMHJpLCxm3yFN2dD0Q=;
 b=ggVb8tFWsym5tY2UFXYnp5/+wnnhdTTKklDhpXqU4dN2UZhBEMrcl7xcSW2VYnX7is
 umf7OVYBxPyMxyUR/5R2qTniROZiQo6IJrBeun7y5YjQZ/wYsR8EHazV7oevOeyxLRaA
 ilEl7koiJasAEhERC/Sd9DHlEAcbOxoeyRcAU2PH+ksfq9swgrHqYgV4/Rn7RhfWVkJu
 veQgyB7FNey0VjLsgPOiIn/ZIslZUF0fF+GPAK45UoERalsc1A1MPm7cpaudMkJjn+2A
 eWrNMlXvm6RvQDbesUW/VQdlMi+aEzSk+RVQdBcHw84Gg3IIc04fhqrwSe3KTRfICUID
 2b+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IkVWp2cRgm41mlWFdiuPcdEqOEMHJpLCxm3yFN2dD0Q=;
 b=e/1pGgdBTUpssxcQn+nDbBDCHJkNNWj1pGeEH2pmWwFuSCRsrBJxJU13cXrDtFEw+i
 HtVHU5S/H+WwU8ZPhL8WOtQjPWTHnNlakFH2masS2sHNASiys5xiABKupBtuAbfScTsS
 M0ygOQhzDHZDZa6d3Kq2heEpgqLwE8MX4sJbXGTsSUYLRJmfr0euqnfYwVvqpBVeB1ot
 2pxVAv5ZgOx5ltfCYdsN7ibJ0dzP+GwG6IbkSKwH0YR3VoLUFlhVQZ/PW/3XmSzMR7cv
 T4zdhd9ughl+wXGybTg83nwg+dKxFWRMJxA5fqUhhHD5vWl1sw9F5t+ksBH0EWQcTotR
 t6jA==
X-Gm-Message-State: AOAM530sdZMG3hIefSEfMy/mDfdi73BMIaCDq81rVMoJYuNWifDDW2nq
 +mH7ClaXV1MIeotaa8WvnkP/5Qsdp2Q=
X-Google-Smtp-Source: ABdhPJzFcEw39LPJdVp2bONu8d449hKR3YKtBopmWidnNRqiFqYpNm90jU1PdtiKjjOLulAqsyODpw==
X-Received: by 2002:a05:600c:a45:: with SMTP id
 c5mr3574645wmq.79.1633082786509; 
 Fri, 01 Oct 2021 03:06:26 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:26 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:05:57 +0200
Message-Id: <20211001100610.2899-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 15/28] drm/radeon: use new iterator in
 radeon_sync_resv
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yYWRlb25fc3luYy5jIHwgMjIgKysrLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fc3luYy5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fc3luYy5jCmluZGV4IDkyNTdiNjAxNDRjNC4uYjk5MWJhMWJjZDUxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9zeW5jLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JhZGVvbi9yYWRlb25fc3luYy5jCkBAIC05MSwzMyArOTEsMTcgQEAgaW50IHJhZGVvbl9z
eW5jX3Jlc3Yoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsCiAJCSAgICAgc3RydWN0IGRtYV9y
ZXN2ICpyZXN2LAogCQkgICAgIGJvb2wgc2hhcmVkKQogewotCXN0cnVjdCBkbWFfcmVzdl9saXN0
ICpmbGlzdDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1
cnNvcjsKIAlzdHJ1Y3QgcmFkZW9uX2ZlbmNlICpmZW5jZTsKLQl1bnNpZ25lZCBpOworCXN0cnVj
dCBkbWFfZmVuY2UgKmY7CiAJaW50IHIgPSAwOwogCi0JLyogYWx3YXlzIHN5bmMgdG8gdGhlIGV4
Y2x1c2l2ZSBmZW5jZSAqLwotCWYgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKHJlc3YpOwotCWZlbmNl
ID0gZiA/IHRvX3JhZGVvbl9mZW5jZShmKSA6IE5VTEw7Ci0JaWYgKGZlbmNlICYmIGZlbmNlLT5y
ZGV2ID09IHJkZXYpCi0JCXJhZGVvbl9zeW5jX2ZlbmNlKHN5bmMsIGZlbmNlKTsKLQllbHNlIGlm
IChmKQotCQlyID0gZG1hX2ZlbmNlX3dhaXQoZiwgdHJ1ZSk7Ci0KLQlmbGlzdCA9IGRtYV9yZXN2
X3NoYXJlZF9saXN0KHJlc3YpOwotCWlmIChzaGFyZWQgfHwgIWZsaXN0IHx8IHIpCi0JCXJldHVy
biByOwotCi0JZm9yIChpID0gMDsgaSA8IGZsaXN0LT5zaGFyZWRfY291bnQ7ICsraSkgewotCQlm
ID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmbGlzdC0+c2hhcmVkW2ldLAotCQkJCQkgICAg
ICBkbWFfcmVzdl9oZWxkKHJlc3YpKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29y
LCByZXN2LCBzaGFyZWQsIGYpIHsKIAkJZmVuY2UgPSB0b19yYWRlb25fZmVuY2UoZik7CiAJCWlm
IChmZW5jZSAmJiBmZW5jZS0+cmRldiA9PSByZGV2KQogCQkJcmFkZW9uX3N5bmNfZmVuY2Uoc3lu
YywgZmVuY2UpOwogCQllbHNlCiAJCQlyID0gZG1hX2ZlbmNlX3dhaXQoZiwgdHJ1ZSk7Ci0KIAkJ
aWYgKHIpCiAJCQlicmVhazsKIAl9Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
