Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8E740D8D3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AF8163524
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 365FB63231; Thu, 16 Sep 2021 11:31:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 943B164AD8;
	Thu, 16 Sep 2021 11:31:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2DDAA69CEE
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1FC8863542; Thu, 16 Sep 2021 11:31:03 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 938AC6682C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:58 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id i3so4547599wmq.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=619EAz9TvrXlFEEg1bXuHi1QdjRBbwVPPanVgBf3wcw=;
 b=eIOI2c8bvusaWxzxUusQ8CJabg6fj2kTwK1gPAobaKP6AFAu/5cx08fiSmduHcJHq3
 p7bCajLfrsbum4xAKMfk4Vi2QioxbtN2m8tO8blw0v2OvP9XGDiy8HIDN+p3KLcyPwzd
 dYnOJZXDpKrUFMIaSmwj5xygzcLUxKfyAsEckA063l4JTBjCuWm1JUi/wLr2r46wMOqv
 8DUjD1YILD7zccxDi1BJBkwhiOEzIomt3yTgwVo5jdQlv2P93jblrUFm8mN5vWDyUaiR
 AyPcHl6yOXcB8NZnppTApPT324tIsxF6uRR83kvHLE4uVDsFBUCw9TsGgKVxVVtz4qmV
 VZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=619EAz9TvrXlFEEg1bXuHi1QdjRBbwVPPanVgBf3wcw=;
 b=qm+FwmUVNrBWqMpNj3dqnPWNjGdtG9+NScyJFe2yZUK5+vrI75nc4OjmDY9w/wZXC3
 IH6/n8OokCjR1tcXiL2jUe+Tb2S3wg9nXr8bdsT+TTEeGRdxA7g9ElSTLlqPXWZ2B31A
 rhdrF5XuopKouYkAl6KLN/VCdtysivpQETMt1FKsVI3gsYMQMODKRsxaxtQSbHn8YrdC
 wwBjh1fEbVnaiNpT4kZr8b3a79BwBi6fnlQLfhdgZkXhV40CcfJy77PqjYV6uaNVE+rz
 TY4wB4KNVTftk0DiPKa/KF1kOwCUeUG0EaLyP58KQW8aIjfQR3Prgfiri1/nY3nb05tO
 PkYw==
X-Gm-Message-State: AOAM532WnXcKVus0e1fWPn0bgaTq3+n1iPWuezA5Yt+RWJPAEvIU+0Cy
 BSP/3VUlHCkaCtXbRJXyxAfbjbRkj2g+o0+h
X-Google-Smtp-Source: ABdhPJx+LVHV0RoCdRxrz79zGczQwIUfnEDaV9mE/KpbaDXh/TdYi9OVCpLSSb6QOCq+D3ep2yVHPQ==
X-Received: by 2002:a05:600c:2057:: with SMTP id
 p23mr9530967wmg.25.1631791857611; 
 Thu, 16 Sep 2021 04:30:57 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:57 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:29 +0200
Message-Id: <20210916113042.3631-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 13/26] drm/i915: use the new iterator in
 i915_gem_busy_ioctl
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
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2Ugd2hlcmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyB8IDMwICsrKysrKystLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKaW5kZXggNjIzNGUxNzI1OWMxLi5h
ZGY5YTg0MTM0NDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9idXN5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwpA
QCAtODIsOCArODIsOCBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHZvaWQgKmRhdGEsCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9idXN5ICphcmdzID0gZGF0
YTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwotCXN0cnVjdCBkbWFfcmVzdl9s
aXN0ICpsaXN0OwotCXVuc2lnbmVkIGludCBzZXE7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vy
c29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCWludCBlcnI7CiAKIAllcnIgPSAtRU5P
RU5UOwpAQCAtMTA5LDI4ICsxMDksMTYgQEAgaTkxNV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCSAqIHRvIHJlcG9ydCB0aGUgb3ZlcmFsbCBidXN5
bmVzcy4gVGhpcyBpcyB3aGF0IHRoZSB3YWl0LWlvY3RsIGRvZXMuCiAJICoKIAkgKi8KLXJldHJ5
OgotCXNlcSA9IHJhd19yZWFkX3NlcWNvdW50KCZvYmotPmJhc2UucmVzdi0+c2VxKTsKLQotCS8q
IFRyYW5zbGF0ZSB0aGUgZXhjbHVzaXZlIGZlbmNlIHRvIHRoZSBSRUFEICphbmQqIFdSSVRFIGVu
Z2luZSAqLwotCWFyZ3MtPmJ1c3kgPSBidXN5X2NoZWNrX3dyaXRlcihkbWFfcmVzdl9leGNsX2Zl
bmNlKG9iai0+YmFzZS5yZXN2KSk7Ci0KLQkvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBS
RUFEIHNldCBvZiBlbmdpbmVzICovCi0JbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iai0+
YmFzZS5yZXN2KTsKLQlpZiAobGlzdCkgewotCQl1bnNpZ25lZCBpbnQgc2hhcmVkX2NvdW50ID0g
bGlzdC0+c2hhcmVkX2NvdW50LCBpOwotCi0JCWZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7
ICsraSkgewotCQkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPQotCQkJCXJjdV9kZXJlZmVyZW5j
ZShsaXN0LT5zaGFyZWRbaV0pOwotCisJYXJncy0+YnVzeSA9IGZhbHNlOworCWRtYV9yZXN2X2Zv
cl9lYWNoX2ZlbmNlX3VubG9ja2VkKG9iai0+YmFzZS5yZXN2LCAmY3Vyc29yLCB0cnVlLCBmZW5j
ZSkgeworCQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQkvKiBU
cmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSBlbmdp
bmUgKi8KKwkJCWFyZ3MtPmJ1c3kgPSBidXN5X2NoZWNrX3dyaXRlcihmZW5jZSk7CisJCWVsc2UK
KwkJCS8qIFRyYW5zbGF0ZSBzaGFyZWQgZmVuY2VzIHRvIFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8K
IAkJCWFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja19yZWFkZXIoZmVuY2UpOwotCQl9CiAJfQogCi0J
aWYgKGFyZ3MtPmJ1c3kgJiYgcmVhZF9zZXFjb3VudF9yZXRyeSgmb2JqLT5iYXNlLnJlc3YtPnNl
cSwgc2VxKSkKLQkJZ290byByZXRyeTsKLQogCWVyciA9IDA7CiBvdXQ6CiAJcmN1X3JlYWRfdW5s
b2NrKCk7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
