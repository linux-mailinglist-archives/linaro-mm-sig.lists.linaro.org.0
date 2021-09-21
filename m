Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BD44138BB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:38:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7641D631D0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:38:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0098E6141B; Tue, 21 Sep 2021 17:38:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 71E1F62CF8;
	Tue, 21 Sep 2021 17:38:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 06D2861945
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C27B46242C; Tue, 21 Sep 2021 17:37:25 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id A0D4061418
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:20 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id t18so41547580wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hCpA+E2br43WJP4Y9CGTvHgISqNC0oMJe7QwHdjU6w8=;
 b=B56OpWSJxDJSmXRdA3znPhFcOHH9qgPRhamp/ajhbXWIKt19u8xNRcK8wMwFEMgJob
 phirQpWLn2OO6EF5hmb14FMkKYG1dOmvADSOvH2QaqdetbmoHVlu6ARer9fMjoAZrjdZ
 z1Uru51F1zcCGFW4uDsZuJCC/pOUvYNITfcnD+FJO0muNhg80KN2A7sJnG1ilLvAfMu3
 X3QJKtpy7/pcnrtmed+7/1dT+Fg+6PMjXV3a/xbqjUvRBV1/cJong5OznosmKeyvCZtE
 rBhqb0WMsyp5+bxvcHth+5XttCjl1k3dUPfOx9yZnmD80qJKrnk2faWGgtLPoBK1v7Ze
 jUfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hCpA+E2br43WJP4Y9CGTvHgISqNC0oMJe7QwHdjU6w8=;
 b=3xOgtocEynL6ELEvNpcqzPfQavqwsBzRNeolH1/i8uUg09i9SY0e9uHHnm8i1wojod
 4jIMgJ1jwg+qXpGlzeTnDWGNJPIbGqENurL8QLlmVVtcvutqvJD+LqJ62u+LApbznnW5
 O4R7Fp1DUhDdUIULOrsS7EHxvt0cyZkeuP26ryVCpd/CijAZdGHEI8r/7oIvihvrtiiS
 VA3Py+tdIlSYdoLaauNLPGqTeu0UsU7PwyvAtM7P6ejD2RlQKumkYcx3d60m4su7xk8j
 YKNFZBppKeGUo6Uet4UhX0XGV1ZRA3XD3Ttg7d2j7G9Qj0mxkkk3CNJNmHsqFQDkHMDt
 h9FA==
X-Gm-Message-State: AOAM530m3R62sH+sEv57qYBUTr/Yznac3GlMzwVJXyJkpgNu0mqiV5Yz
 1vCWuWAklrq3ydRTvRkzF+0=
X-Google-Smtp-Source: ABdhPJyYSyjjuGb1tYtiMOCLyKPymW+VUjeVQaofYEkaqbVm39NN+2lth5M4PVJUFa/V9hxpjfPnVw==
X-Received: by 2002:adf:fe08:: with SMTP id n8mr36472508wrr.246.1632245839391; 
 Tue, 21 Sep 2021 10:37:19 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:18 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:51 +0200
Message-Id: <20210921173659.246165-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
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
