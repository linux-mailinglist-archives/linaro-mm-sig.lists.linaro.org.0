Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E82FD40D8B7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:31:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E80376338E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:31:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 823B76242B; Thu, 16 Sep 2021 11:31:23 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24C5469CD8;
	Thu, 16 Sep 2021 11:31:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BDE1469CE9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5501962630; Thu, 16 Sep 2021 11:30:56 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by lists.linaro.org (Postfix) with ESMTPS id 48E386323B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:53 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 j17-20020a05600c1c1100b002e754875260so4223423wms.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fH2la9ERLn922MNwdjpBzucxgwCx4MWLLwnxQZAkV2A=;
 b=QygDHeC9HsVEtELC3djbtZW6/0UMFEgNYKIXOY5ItCyz+1xafW/q/R2sJcJb8+Cn3O
 GDSnKG+cFou9ZzvIbvJgDf1cAdsyAfisFunb9pfcUc5n6/XNpVTLLAhflx62HXJPijos
 H8pEY1imBFv+eRQxkBc6uyflXxV9Hv75wsQO5fDKxRoZwh8TUQxjYufMBqg7q0msEavO
 Kn/oD58ImLwQbjh2Fwidp3TA4A9EBP1CSdGQQIV/dL15JPxPyPV3RxLOoovLApguCDB2
 NIH/Tz7fjTf8crcBPzJgv7LxbG0EBJoS3iJJYocFx8kkGyz6sM/LMSgTG16LRnJqBXIh
 sV3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fH2la9ERLn922MNwdjpBzucxgwCx4MWLLwnxQZAkV2A=;
 b=vzkoIk8QkrbTwLd/z9o77qMi22YSF2K7gXIJ7E/NlvZKCtSpuaJgWqLqwmHcY0rknm
 i6HzqnooFvu4cmx+D0uDWMiJjmE2e/3IGWJBDVwtPTNkPb3094xzH023/urjFK9chzfR
 3jXsKNi3MPI0vnhlYtPxXdvARtprV+mYAcPGZ0GIh0cGm9k6Ythmn6BshJLbbLL721Uo
 ZxOC+V86KDSazTvgpQARdeYtx6rhXlE4q+vrau5mDIxQbteYNUrcs3ptVAPlihyI1NvE
 W7a8pOwc30K9y7hMbZql0t6tmHHgixTMrpRCaV9OmJ4LROKNGXh7nz5bU5QJQBt1TYS1
 EuAg==
X-Gm-Message-State: AOAM530Sw67UXfBoCOdeRdCnbsgpJMojCG0lrN5xfs/sEfsgAcVPHIUp
 N6Vtk5rzrjfj9be2Y67Vgtfr0ZjhlYG/xDYX
X-Google-Smtp-Source: ABdhPJx8rGNiCUwWUC8lksSU3s2LHyKP4S7ovy1WxAHJ8ow8lfQ9S4SfWYyXUenSQuBU1zVE92+Rwg==
X-Received: by 2002:a1c:d2:: with SMTP id 201mr4420740wma.67.1631791852124;
 Thu, 16 Sep 2021 04:30:52 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:51 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:23 +0200
Message-Id: <20210916113042.3631-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 07/26] drm/ttm: use the new iterator in
 ttm_bo_flush_all_fences
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

VGhpcyBpcyBwcm9iYWJseSBhIGZpeCBzaW5jZSB3ZSBkaWRuJ3QgZXZlbiBncmFiZWQgYSByZWZl
cmVuY2UgdG8gdGhlCmZlbmNlcy4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5j
IHwgMTIgKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxMCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jIGIv
ZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwppbmRleCAzYjIyYzAwMTNkYmYuLmQ1OTEyZjVi
NTk1MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCkBAIC0yNjksMTkgKzI2OSwxMSBAQCBzdGF0aWMgaW50
IHR0bV9ib19pbmRpdmlkdWFsaXplX3Jlc3Yoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykK
IHN0YXRpYyB2b2lkIHR0bV9ib19mbHVzaF9hbGxfZmVuY2VzKHN0cnVjdCB0dG1fYnVmZmVyX29i
amVjdCAqYm8pCiB7CiAJc3RydWN0IGRtYV9yZXN2ICpyZXN2ID0gJmJvLT5iYXNlLl9yZXN2Owot
CXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmb2JqOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNv
cjsKIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKLQlpbnQgaTsKIAogCXJjdV9yZWFkX2xvY2so
KTsKLQlmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3QocmVzdik7Ci0JZmVuY2UgPSBkbWFfcmVz
dl9leGNsX2ZlbmNlKHJlc3YpOwotCWlmIChmZW5jZSAmJiAhZmVuY2UtPm9wcy0+c2lnbmFsZWQp
Ci0JCWRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKGZlbmNlKTsKLQotCWZvciAoaSA9IDA7
IGZvYmogJiYgaSA8IGZvYmotPnNoYXJlZF9jb3VudDsgKytpKSB7Ci0JCWZlbmNlID0gcmN1X2Rl
cmVmZXJlbmNlKGZvYmotPnNoYXJlZFtpXSk7Ci0KKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91
bmxvY2tlZChyZXN2LCAmY3Vyc29yLCB0cnVlLCBmZW5jZSkgewogCQlpZiAoIWZlbmNlLT5vcHMt
PnNpZ25hbGVkKQogCQkJZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcoZmVuY2UpOwogCX0K
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
