Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CCE422565
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:39:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 320DE63391
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:39:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CC86B6068A; Tue,  5 Oct 2021 11:39:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5E7F69CE3;
	Tue,  5 Oct 2021 11:39:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6EAA260E41
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F24F2610C2; Tue,  5 Oct 2021 11:38:17 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id 9F4056300B
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:08 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id r18so9478089wrg.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/+r4v7UIazK0HaIgNf9t5Xden24q10DFKnoad4rknzc=;
 b=hBJOAL4dfMmkGwORlAx6thdAixCmACJcwxAh6lxA1dr/HFbJfPqIM8yhBHLoTZm5cX
 RabyEg9nbNetODRaRYA7Ofos5BqsIyXI/t5XzeavLaQ/jpVufxzMZrkKRaDvhifPxTz0
 gCc0pOd1Rjh1AdUO8l05w9s+OevbRe27fvFE/ltO3Q+SMHXmI9bBggiypVCiygDTZPj0
 5eJ5OBJQo1yaklWP68+gjHRU6vRXVFRNO+wrIjNjuFuhJDyFWA4MlwfrC6nuiBQM6TOk
 iRNNStQAd1aJ/XDvJLbEkyaMhsTh6Jwn+vXSWUSirLP3zt0mYKGCceFZMZVYM656bH+5
 gvbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/+r4v7UIazK0HaIgNf9t5Xden24q10DFKnoad4rknzc=;
 b=ekx34V9ODy1yDnecXrdiSlgwhBXTUW38L5rFzwHzIMeIQWJyJftVnbSdfIBj9BvwQC
 LIwpdvpFO6qHEOW5FskZmdXzoGvp8ZgPha8DXW7k1HsLjx6ELPnhVwNpXcWyahCU3zHo
 Oj8Alj46SMklVnJHywnMskVQTvtiYVGIFh5ALhCOSh8pNO82HUxA6to3/8JmgjgEcIY6
 JxFR9QlKvYzGf3k6OLrzQwzgKWx4Uu+MtqVaTlFxnRfptZw+HkOrkKAoFJ4A2cfcTBmO
 dtjmg+DB9KUyzaApfkdopQ1j+yPhv7iZZJLc0PoOzksbqi4WJCOngAPTw78MpoBwe+S+
 JPbw==
X-Gm-Message-State: AOAM533mobJDWhpYvJudwt+jJpRnXgkQCLH7E9V+50EChF3KNeKnGoZG
 a70ClyRUoOiCSRMJ2gJE3B950DCAkBI=
X-Google-Smtp-Source: ABdhPJxApiqsSEFGK2w+UXcwh1se1qIjU71xvk48Y7rm34ZDOgO6bjuWg2yVUMXU3Lt4Y+/RxVGBrA==
X-Received: by 2002:adf:aad7:: with SMTP id i23mr19790040wrc.209.1633433887720; 
 Tue, 05 Oct 2021 04:38:07 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:07 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:39 +0200
Message-Id: <20211005113742.1101-26-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
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
