Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B18A4144E4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A12846A926
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:12:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9601A618B8; Wed, 22 Sep 2021 09:12:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CC5567038;
	Wed, 22 Sep 2021 09:12:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 56D9363213
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D393661A47; Wed, 22 Sep 2021 09:11:09 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 707AA622E7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:05 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id q11so4617734wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hCpA+E2br43WJP4Y9CGTvHgISqNC0oMJe7QwHdjU6w8=;
 b=Y/kS/NftrpX0ijLcmSu6hcExyAyMR56qikqNimworP2eqSrP/qu8NCC29oax1MpWOU
 40oXjnsAR4Gwjl4BBJppo1OZIgBwsrGT7f9MwqCMeBANA6zntFEDap3cQNF9VEns6VnQ
 n/Y6KazzHP/Q+BsSFgUrvrLGQnb9zzYo6E5Z5+pM3jftNQqnZHxuvVdqJb3R0vgpRNLV
 LG+lW9FFwRH7+Jc4OhcwUJ4tHPBCizp/iqPanI9z43tUL9AMDDJiqaWuEcE8u81MldGW
 G8Qk+BL4XGSga0oCJT8e2qv/JgBV/wRAhh8mE76/Ryti0wgTZ0k3UA1E0gildRpXzZ3R
 Po7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hCpA+E2br43WJP4Y9CGTvHgISqNC0oMJe7QwHdjU6w8=;
 b=58kU26M7Lxarl1X55TbkshbdMvCEyHRJ55Gl8D6kyu1T438rmQlOTqyOpNTAdLeKDq
 yL2ka+AcbkU+1AgUlebwvzO8XW2OBEMhlncmxonAZld4knABZrHPmECmRYwKMBM9bDHB
 FPNCOxxXuUHznhIuTU8iNQJmDCjUz8Da2DpSKA4vqFCvxmr0v51Bba1T2pkSBx9NbPVv
 h3xQcfqthTZY/yfhj45uEmLp+11ykJxACkr0kY39Oh1LrEKp7kuiD+hrXkFMJxSjKEPZ
 24iiuVqRojIlSYlTka8rQKBosI35L7hNiWnlKcHskxgL5W6fHMxobVCur7IPO+9cIBhN
 aTBw==
X-Gm-Message-State: AOAM531qAKwNHbauF/3WHx/O1mFkSMMyIXNmhn3qXQgtSvML/r1IUTy8
 mF2BrXYCERGv2bLGuCi06WPBrTSf0YA=
X-Google-Smtp-Source: ABdhPJx9as+sEsCUrBNh/QCRLWGDtkLVpXctd0qhCAydZwgnZ5oFMKcX6dtRLBYNG54ifj4UEUNUzg==
X-Received: by 2002:a5d:510b:: with SMTP id s11mr39364292wrt.79.1632301864519; 
 Wed, 22 Sep 2021 02:11:04 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:36 +0200
Message-Id: <20210922091044.2612-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 18/26] drm/i915: use new iterator in
 i915_gem_object_last_write_engine
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

VGhpcyBpcyBtYXliZSBldmVuIGEgZml4IHNpbmNlIHRoZSBSQ1UgdXNhZ2UgaGVyZSBsb29rcyBp
bmNvcnJlY3QuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5oIHwgMTYgKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmgKaW5kZXggNDgxMTJiOWQ3NmRmLi5lMjBlZmZmY2UzYTkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKQEAgLTUwNywxNiArNTA3LDE2IEBAIHN0YXRp
YyBpbmxpbmUgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqCiBpOTE1X2dlbV9vYmplY3RfbGFzdF93
cml0ZV9lbmdpbmUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKIAlzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBOVUxMOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1
cnNvcjsKIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAotCXJjdV9yZWFkX2xvY2soKTsKLQlm
ZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKG9iai0+YmFzZS5yZXN2KTsKLQlyY3Vf
cmVhZF91bmxvY2soKTsKLQotCWlmIChmZW5jZSAmJiBkbWFfZmVuY2VfaXNfaTkxNShmZW5jZSkg
JiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpCi0JCWVuZ2luZSA9IHRvX3JlcXVlc3Qo
ZmVuY2UpLT5lbmdpbmU7Ci0JZG1hX2ZlbmNlX3B1dChmZW5jZSk7Ci0KKwlkbWFfcmVzdl9pdGVy
X2JlZ2luKCZjdXJzb3IsIG9iai0+YmFzZS5yZXN2LCBmYWxzZSk7CisJZG1hX3Jlc3ZfZm9yX2Vh
Y2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKKwkJaWYgKGZlbmNlICYmIGRtYV9m
ZW5jZV9pc19pOTE1KGZlbmNlKSAmJgorCQkgICAgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5j
ZSkpCisJCQllbmdpbmUgPSB0b19yZXF1ZXN0KGZlbmNlKS0+ZW5naW5lOworCX0KKwlkbWFfcmVz
dl9pdGVyX2VuZCgmY3Vyc29yKTsKIAlyZXR1cm4gZW5naW5lOwogfQogCi0tIAoyLjI1LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
