Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C5342256D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:40:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8838362072
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:40:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3B30B6055A; Tue,  5 Oct 2021 11:39:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4BFC96A8BB;
	Tue,  5 Oct 2021 11:39:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8FC5060D48
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8D1A860C3A; Tue,  5 Oct 2021 11:38:09 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by lists.linaro.org (Postfix) with ESMTPS id 22BA360D48
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:01 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 a11-20020a7bc1cb000000b0030d6aae48b5so2634486wmj.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IkVWp2cRgm41mlWFdiuPcdEqOEMHJpLCxm3yFN2dD0Q=;
 b=pTVG+71nd7hFTAn7vT8ADHpYkOAwXoN7alL2V8B/B8XRtr68wMKD760W8IsjROzTjf
 daOoQI+w3mQp4okffCYLdwFeEdI4Kww51diGSgF5KK/AlV5F1NEanftJ3tHe2UEwxnd2
 yrM/cfyq7SKNYs8aa47E+kV6ewR+K2i6tGHTMWKOh3XZGPoqa+f9i0AU9U8OrLUqkPZe
 wXrmPWPNEwQIBk+e/b160ZhPHO6eRZAqBtv3RZPsBLwaqdglP9vd5yPzYGy+GwuKlKoU
 Wf4d5XDskZSjB5eNkjweClkhhPJQWMfYzudDKHjZRdEK+YLwun95vH6RR3L/i9OsU7FP
 MQfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IkVWp2cRgm41mlWFdiuPcdEqOEMHJpLCxm3yFN2dD0Q=;
 b=q8dZYRYAZJI+MD1hQAImRFbfgr1itunada1hjThOj7K5jC2bViTyk9Xgvw+oLq7uWS
 4kj/NfcrL1egoEomlRb5kBzSD2pRoX9JFPwVoDezdu2XLLlaj1f7ISvrLvS4lPeykpSF
 c4ODpWl+OYLTbtQvBr70uAr/ekH5XxgGuGMNSjGAaqxj5PFCUH7mp5V+pxbYOtbYRNjT
 wWMynZVeJOq4NIo2LcEtGVbooduBxqZvG/VDwRmjFFPWfmk3WcWUtebUtKb7ilBgjyLI
 n8sowfVEQ23gQzL01Nllfb2q37VbzIkhToftgFEN/KiMOfPlRCf1DvlA3fzlMTMHNB3w
 rdVQ==
X-Gm-Message-State: AOAM530CZ46U1fAO7HIBuyyBaf8G4Bq7pNwG8X1l+qKlHFrRxdSRgvIL
 9MGsbtY+GRgvURrCCJ4H3+WnDDMQv9Y=
X-Google-Smtp-Source: ABdhPJxtMhb11FqUzAvg+4vPZuCSefKCT26RL7LZnDsiEtcSoWAVGR4pB8VkqMa0acsjIkWXJKnJ/w==
X-Received: by 2002:a7b:ce8c:: with SMTP id q12mr2854002wmj.14.1633433878659; 
 Tue, 05 Oct 2021 04:37:58 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:58 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:29 +0200
Message-Id: <20211005113742.1101-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
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
