Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1829E4144C8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:11:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2053861A27
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:11:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A72DA63390; Wed, 22 Sep 2021 09:11:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0FBD618B8;
	Wed, 22 Sep 2021 09:11:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C925361731
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4CC3861A3C; Wed, 22 Sep 2021 09:11:00 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id C0A19603AB
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:10:57 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id q11so4616792wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xs3urb+CfK37NrDBLos1427ZQKhaGuo6xOveDYDdwk4=;
 b=p7WAnkjoVfQgL/EfL1Mpq6ylSS4qMkMDw2JPO+KstqU0ffx/A42eUDDzFGmiNAlLIy
 gVW+NMxVbw6bF8yJAd5zyJaMmVJB5BTOcFGXjTPUb+2l58MD6RBnH9Kdyh5jEFPjskc8
 3uJGAofPN1C0JqlcOj84GzjouzUbk1alFl5/6sddInbjNHR/2T/JfpF5+1afxf2/wfoO
 ln85lRvvxeWbb5npSV45JP2GeIgqU+/P/gZyVKjd4FYKWH9+2LsgEzMLOgx6JXRTeytM
 +ufhBejDCzE2tSDA6vEkyEhVbiZ/7IuRb0+I/tVFVyRQRJlj1M8D85PbBmpwurrtd6dQ
 Qvrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xs3urb+CfK37NrDBLos1427ZQKhaGuo6xOveDYDdwk4=;
 b=mVDA6tycaOStEj8Ff3RZ4dN/v/EghKsY1oX4LAjGOt9CqiMJY/DjuVDIREr0vygeXf
 ByG25NaMRIF89osxL+kVL6OEapLH5cgZx3+WtlPw476cOfI5//WNAYakSudoPDI/bNY3
 +b9IOFTpBPL18mbcf7u+2Jb5KO9GcRXZUWwahFp4lhGuF0egL3bGE+pdNoTnq8U7ISeu
 rbbV0MaUXVH3xg4/PWVdfdPhH3hQEavG8k6SAVGGGLpXSdGAmLJ/wvHyWEVcRXZPBb2m
 neCZ+N27dQYWcZfv9d517AO0fWWQzTtitjSvuyHMfh/qstfn0Lie0RSPMpKnIlwCJSeB
 LYkA==
X-Gm-Message-State: AOAM533XZvBhT23ZcqAqA9ySCCMQImOy13HiggzDD0ci7k3yMAO0w7JA
 A1wcLVEKqYJxT0fu7fbmmbsP/KN8K30=
X-Google-Smtp-Source: ABdhPJyVxLiD0ZQqAZZuVAbIuyKWPspNQoHWqmjtviHpXw7fP8OkMR4fQWvYU2Zmsx5B1WRQGFyX8A==
X-Received: by 2002:a1c:4e11:: with SMTP id g17mr8990009wmh.130.1632301856839; 
 Wed, 22 Sep 2021 02:10:56 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.10.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:10:56 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:28 +0200
Message-Id: <20210922091044.2612-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/26] drm/msm: use new iterator in
 msm_gem_describe
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuIEFsc28gZHJvcCB0aGUgUkNVIHJlYWQgc2lkZSBs
b2NrIHNpbmNlIHRoZQpvYmplY3QgaXMgbG9ja2VkIGFueXdheS4KClVudGVzdGVkIHNpbmNlIEkg
Y2FuJ3QgZ2V0IHRoZSBkcml2ZXIgdG8gY29tcGlsZSBvbiAhQVJNLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2dlbS5jIHwgMTkgKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0u
YwppbmRleCAyMjMwOGExYjY2ZmMuLjE0OTA3NjIyNzY5ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMK
QEAgLTg4MCw3ICs4ODAsNyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIHsKIAlzdHJ1Y3QgbXNtX2dlbV9vYmpl
Y3QgKm1zbV9vYmogPSB0b19tc21fYm8ob2JqKTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJvYmogPSBv
YmotPnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJc3RydWN0IGRtYV9yZXN2
X2l0ZXIgY3Vyc29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCXN0cnVjdCBtc21fZ2Vt
X3ZtYSAqdm1hOwogCXVpbnQ2NF90IG9mZiA9IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFf
bm9kZSk7CkBAIC05NTUsMjIgKzk1NSwxMyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIAkJc2VxX3B1dHMobSwg
IlxuIik7CiAJfQogCi0JcmN1X3JlYWRfbG9jaygpOwotCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRf
bGlzdChyb2JqKTsKLQlpZiAoZm9iaikgewotCQl1bnNpZ25lZCBpbnQgaSwgc2hhcmVkX2NvdW50
ID0gZm9iai0+c2hhcmVkX2NvdW50OwotCi0JCWZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7
IGkrKykgewotCQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKKwlk
bWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCByb2JqLCB0cnVlLCBmZW5jZSkgeworCQlp
ZiAoZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQlkZXNjcmliZV9mZW5j
ZShmZW5jZSwgIkV4Y2x1c2l2ZSIsIG0pOworCQllbHNlCiAJCQlkZXNjcmliZV9mZW5jZShmZW5j
ZSwgIlNoYXJlZCIsIG0pOwotCQl9CiAJfQogCi0JZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNl
KHJvYmopOwotCWlmIChmZW5jZSkKLQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUi
LCBtKTsKLQlyY3VfcmVhZF91bmxvY2soKTsKLQogCW1zbV9nZW1fdW5sb2NrKG9iaik7CiB9CiAK
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
