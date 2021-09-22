Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9684144D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66DA1667C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:12:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 773BC62164; Wed, 22 Sep 2021 09:11:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82D3A6A8B4;
	Wed, 22 Sep 2021 09:11:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 05C6262002
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9A11361945; Wed, 22 Sep 2021 09:11:02 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 08DFC619C8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:10:59 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id d6so4582525wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IkVWp2cRgm41mlWFdiuPcdEqOEMHJpLCxm3yFN2dD0Q=;
 b=NZTcio66H20o4+aUG46IMbNGw/gsR2MLvFXmQmrJ1OvckTnHYUtbx4r0nCCpJ9Y/dz
 8BKfVinC47zlJHH6rS8n3bD9UN7mY7dVjy9mtZhsCbvB7pOdK+u5UVa6moyghTviVXty
 JKWpDYxOO97TlVUvPZ+JverRMrAH6NJVttL14cvQr0t4Ep3DnIzH9wWEx3WFkKtpikou
 qak0OwH3VMEabNYCOUN9WhPoCO4hzX9ziRvsBq9k/tc41rqmVm/wPn1FgKIKYV+Mr4Wj
 hdSTPEeOHlQy4LcT3krw4byAtBl0DBxq+7ZwIGKifvVu4P2T3fHDvO80to/Aa9HvoJho
 Tlfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IkVWp2cRgm41mlWFdiuPcdEqOEMHJpLCxm3yFN2dD0Q=;
 b=IXjW+7ctqW70TAN5rFVUT0iLwUwmjRd/ec7E1jjbmUAcVHeMj0An2Tm4/eACE7fffk
 r3UgQk0hHPGXQMPpU5Dl3QcILzrO4fGfArxaBJOosBxuNZaKX1vWROrlCc0F2Ks2W07v
 Tqzvgr3SeNPMLSqOwAmy89RqGOlb8j1Cos+WSM3dweNvVznGGqdNP0AzPpO+hIljWJxa
 noGKV+B/P7GwbdAMEGvLJwcv0SHcv2zCydFGI6BzLRmwZe0SgZRgkf00vxGbjnZc5iIY
 jJHfxqq8gYawwIyeEM2L2jaRPXV4qv1yK0rUc1Z6PR/S9htMN5rRHwOvVyB6TzXj+g/7
 RxKg==
X-Gm-Message-State: AOAM531NtvPHuQvBUfI66C36xOzf9bZk4Ora+fpQiB6J0hLkp1dDbd0F
 unan6KduzLpKGfcyCJ6G4PlK2l64IbM=
X-Google-Smtp-Source: ABdhPJz88bvnw0jC1PGYz8LxLw5TlE7TvUYTgbj0Klim7fWgvO2htMt4CDF1oeNQCrfg3JzBmHIM4w==
X-Received: by 2002:a05:600c:35d0:: with SMTP id
 r16mr9147612wmq.26.1632301858176; 
 Wed, 22 Sep 2021 02:10:58 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.10.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:10:57 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:29 +0200
Message-Id: <20210922091044.2612-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 11/26] drm/radeon: use new iterator in
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
