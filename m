Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2591B41EAAB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:09:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C23862631
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:09:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F3E3860B91; Fri,  1 Oct 2021 10:08:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADFB96A921;
	Fri,  1 Oct 2021 10:08:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D57A5629C7
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1D4066322A; Fri,  1 Oct 2021 10:06:47 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 76C8C631AE
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:38 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 t16-20020a1c7710000000b003049690d882so10759873wmi.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/+r4v7UIazK0HaIgNf9t5Xden24q10DFKnoad4rknzc=;
 b=GEIzzdUFcSKpvoIwIy/MzrJapJAKZntSukZ5p6roG1d5bVF3FTwA+A/81iLTZfDJm7
 B14RDR0mktQK41PBvkpcUZEYZaPZ6hyZsZHjxZde46wLYQqRqlTECjtWvnAMkk9RlrL4
 PlQRRB85sJS8tCJhNJhAljJg8zPFWdayIFN+7h/y+N1mXlaA5i8uxoUphxVnv25weZp2
 z7EeR6gOksmOb2HpP8Nd21+iaqaQycJfOPfM7dJ7g2MRLIQxGhaSBQa1PhmHR4VMqIip
 Fszd2ATa+I3mGa0kyJb6vrgPEoG/1mKQxtiPPz3rosU18N7AchmnH74E9obNFjBS3I3k
 6OdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/+r4v7UIazK0HaIgNf9t5Xden24q10DFKnoad4rknzc=;
 b=vgHQCz9ul7ktSUsxtRSP4ncVXBkGDJEfO6K0B7eYgtycCeJL7q4kWD/pB0q8IRnYdO
 2F1AaIlvxdCSRAKwkxQTklWJl5PDHqhIk+Jgwe18lmPXtGoTiTx+ZBnp+4x1nDXt0Wk0
 CQeO8tkHLMOuiV/sm6YIx7dHeRXNXx9Yp2UpnJKXh9kDVwmftdAb2eZf0DkqozpSwURp
 w6EB9u5ZO/DGQMAb5HKc3d5Imv3dRIEXyx/HDLUjXIWcQHgBvKmNJ6p9KT9i5RZQE08L
 zilhl+T6lOrx16opBi+SGEZih13DhHE8B+Fr2Pi0UFtKuC5y5kdVrDk4g81LAhoHkzNE
 3RJQ==
X-Gm-Message-State: AOAM5319pCineIk1IJUje5Jp4Hsbnuq/OtGGIaMvzsNAK3FOe8wxNkDd
 QVixWlstB/R5G1WM7Lq5mOCOhi0IoSg=
X-Google-Smtp-Source: ABdhPJweZo3sMdXN2Yo33ydRmQ3ZjHih+i0AoWONKI3PwdRb0YyzMGRwcws91yM/HxU4EVObzQH2FA==
X-Received: by 2002:a1c:48c:: with SMTP id 134mr3537527wme.137.1633082795149; 
 Fri, 01 Oct 2021 03:06:35 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:34 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:06:07 +0200
Message-Id: <20211001100610.2899-26-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 25/28] drm/nouveau: use the new iterator in
 nouveau_fence_sync
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
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvbm91dmVhdV9mZW5jZS5jIHwgNDggKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwppbmRleCAwNWQwYjNlYjM2OTAuLjI2ZjkyOTlkZjg4
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwpAQCAtMzM5LDE0ICsz
MzksMTUgQEAgbm91dmVhdV9mZW5jZV93YWl0KHN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmZW5jZSwg
Ym9vbCBsYXp5LCBib29sIGludHIpCiB9CiAKIGludAotbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVj
dCBub3V2ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGV4
Y2x1c2l2ZSwgYm9vbCBpbnRyKQorbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBub3V2ZWF1X2Jv
ICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLAorCQkgICBib29sIGV4Y2x1c2l2
ZSwgYm9vbCBpbnRyKQogewogCXN0cnVjdCBub3V2ZWF1X2ZlbmNlX2NoYW4gKmZjdHggPSBjaGFu
LT5mZW5jZTsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJl
c3YgPSBudmJvLT5iby5iYXNlLnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJ
c3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwog
CXN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmOwotCWludCByZXQgPSAwLCBpOworCWludCByZXQ7CiAK
IAlpZiAoIWV4Y2x1c2l2ZSkgewogCQlyZXQgPSBkbWFfcmVzdl9yZXNlcnZlX3NoYXJlZChyZXN2
LCAxKTsKQEAgLTM1NSwxMCArMzU2LDcgQEAgbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBub3V2
ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGUKIAkJCXJl
dHVybiByZXQ7CiAJfQogCi0JZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHJlc3YpOwotCWZl
bmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShyZXN2KTsKLQotCWlmIChmZW5jZSkgeworCWRtYV9y
ZXN2X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIHJlc3YsIGV4Y2x1c2l2ZSwgZmVuY2UpIHsKIAkJ
c3RydWN0IG5vdXZlYXVfY2hhbm5lbCAqcHJldiA9IE5VTEw7CiAJCWJvb2wgbXVzdF93YWl0ID0g
dHJ1ZTsKIApAQCAtMzY2LDQxICszNjQsMTkgQEAgbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBu
b3V2ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGUKIAkJ
aWYgKGYpIHsKIAkJCXJjdV9yZWFkX2xvY2soKTsKIAkJCXByZXYgPSByY3VfZGVyZWZlcmVuY2Uo
Zi0+Y2hhbm5lbCk7Ci0JCQlpZiAocHJldiAmJiAocHJldiA9PSBjaGFuIHx8IGZjdHgtPnN5bmMo
ZiwgcHJldiwgY2hhbikgPT0gMCkpCisJCQlpZiAocHJldiAmJiAocHJldiA9PSBjaGFuIHx8CisJ
CQkJICAgICBmY3R4LT5zeW5jKGYsIHByZXYsIGNoYW4pID09IDApKQogCQkJCW11c3Rfd2FpdCA9
IGZhbHNlOwogCQkJcmN1X3JlYWRfdW5sb2NrKCk7CiAJCX0KIAotCQlpZiAobXVzdF93YWl0KQor
CQlpZiAobXVzdF93YWl0KSB7CiAJCQlyZXQgPSBkbWFfZmVuY2Vfd2FpdChmZW5jZSwgaW50cik7
Ci0KLQkJcmV0dXJuIHJldDsKLQl9Ci0KLQlpZiAoIWV4Y2x1c2l2ZSB8fCAhZm9iaikKLQkJcmV0
dXJuIHJldDsKLQotCWZvciAoaSA9IDA7IGkgPCBmb2JqLT5zaGFyZWRfY291bnQgJiYgIXJldDsg
KytpKSB7Ci0JCXN0cnVjdCBub3V2ZWF1X2NoYW5uZWwgKnByZXYgPSBOVUxMOwotCQlib29sIG11
c3Rfd2FpdCA9IHRydWU7Ci0KLQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZv
YmotPnNoYXJlZFtpXSwKLQkJCQkJCWRtYV9yZXN2X2hlbGQocmVzdikpOwotCi0JCWYgPSBub3V2
ZWF1X2xvY2FsX2ZlbmNlKGZlbmNlLCBjaGFuLT5kcm0pOwotCQlpZiAoZikgewotCQkJcmN1X3Jl
YWRfbG9jaygpOwotCQkJcHJldiA9IHJjdV9kZXJlZmVyZW5jZShmLT5jaGFubmVsKTsKLQkJCWlm
IChwcmV2ICYmIChwcmV2ID09IGNoYW4gfHwgZmN0eC0+c3luYyhmLCBwcmV2LCBjaGFuKSA9PSAw
KSkKLQkJCQltdXN0X3dhaXQgPSBmYWxzZTsKLQkJCXJjdV9yZWFkX3VubG9jaygpOworCQkJaWYg
KHJldCkKKwkJCQlyZXR1cm4gcmV0OwogCQl9Ci0KLQkJaWYgKG11c3Rfd2FpdCkKLQkJCXJldCA9
IGRtYV9mZW5jZV93YWl0KGZlbmNlLCBpbnRyKTsKIAl9Ci0KLQlyZXR1cm4gcmV0OworCXJldHVy
biAwOwogfQogCiB2b2lkCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
