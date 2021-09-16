Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 356AC40D8D8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C3C963423
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 035AF64AD6; Thu, 16 Sep 2021 11:32:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B9186362E;
	Thu, 16 Sep 2021 11:32:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A07CE64ADA
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 501F5667BF; Thu, 16 Sep 2021 11:31:01 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id CE8CF63631
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:57 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id 140so4591504wma.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k0OTgPLj5/kZbUOkhqk9NSO3/CkxGkvCYnJw/k/qjCI=;
 b=TI5K0ilOVbnZM/XwAm/seTvTSzhbru89RUBDeeOE7/Vy9vUHojENTRDsrem5Q4/L0U
 /b5vMg12+v4RnZTZLmN1f+GYz2ojB8iFwntOwn3u6TAhGxT5n42xFOD8vYgyiW+Fe7YX
 NSkWnkXd8d16uA8MYyJu7Gx435UyeXK/9TvgzYISQuiqCwMlaiGIiKQgvrml+PsXzjun
 PzAQy4yYX93oYlBMWvKEG0L7NMBSbAfsZE3rGpJ5EHP8kj0SjndyeyQg024VjUCctMFn
 XDT0IPz7dYR2vzsgiGZBndm2nafL4KSG7qOTX/kBOAxWPJfvAybRog5+o1XDdh349b/J
 TUIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k0OTgPLj5/kZbUOkhqk9NSO3/CkxGkvCYnJw/k/qjCI=;
 b=IjfOlQlU7OrMHsuxTQrbqHUnC5m/Q3q3uJq2cEkhiy2/9FVdQSklE1g/2tS4bTNEgc
 FSyJUsqUF/BoixMhnwa3mdaFnSxwyP2mprcpdjCtVjKiYgZMANOWdFVBN6g3AMa4sYax
 14w2k7HeQtbuNBT18iR3AhNhyX7fmogB/aHOnS2HbIFPk+ZzM2J+FB6FfuxCmwb6g96k
 2Nkac6fwaPAkDrpX465BY7FDOAcpy2r93bvSzx2joZ3248/Y2posii9nwomkq3qdPfvI
 wHV+J2AQnVYcOPmrw1/8/MoaWkwIeej2TgBDfiWSx8oqS2OPvhpXk+/Q7kdf/plBQjA1
 N7lQ==
X-Gm-Message-State: AOAM532AVP4Qt9tu4cxK5IoptObK3VKGB7PRUCOre5rrh4PpPFRJT2hM
 G95Wx1pxrB0GJOZaGmBaWgbF5C3msFgIAPCg
X-Google-Smtp-Source: ABdhPJwLEl2QmPWQ2LggYqWGMl4Nkr4hC1T9Yq1jkr6BsuBkMjrwe0T4qkJGOxUAntZijUG5Ih1f0Q==
X-Received: by 2002:a1c:800e:: with SMTP id b14mr9700962wmd.54.1631791856706; 
 Thu, 16 Sep 2021 04:30:56 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:56 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:28 +0200
Message-Id: <20210916113042.3631-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/26] drm/scheduler: use new iterator in
 drm_sched_job_add_implicit_dependencies v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogdXNlIGRtYV9yZXN2X2Zvcl9lYWNoX2Zl
bmNlCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgfCAyNiAr
KysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYwpp
bmRleCAwNDJjMTZiNWQ1NGEuLmVlMmZlMzdlZTcyNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9tYWluLmMKQEAgLTY5OSwzMCArNjk5LDE2IEBAIGludCBkcm1fc2NoZWRfam9iX2Fk
ZF9pbXBsaWNpdF9kZXBlbmRlbmNpZXMoc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiwKIAkJCQkJ
ICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAogCQkJCQkgICAgYm9vbCB3cml0ZSkKIHsK
KwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7
CiAJaW50IHJldDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOwotCXVuc2lnbmVkIGludCBp
LCBmZW5jZV9jb3VudDsKLQotCWlmICghd3JpdGUpIHsKLQkJc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPnJlc3YpOwotCi0JCXJldHVybiBk
cm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5KGpvYiwgZmVuY2UpOwotCX0KLQotCXJldCA9IGRt
YV9yZXN2X2dldF9mZW5jZXMob2JqLT5yZXN2LCBOVUxMLCAmZmVuY2VfY291bnQsICZmZW5jZXMp
OwotCWlmIChyZXQgfHwgIWZlbmNlX2NvdW50KQotCQlyZXR1cm4gcmV0OwogCi0JZm9yIChpID0g
MDsgaSA8IGZlbmNlX2NvdW50OyBpKyspIHsKLQkJcmV0ID0gZHJtX3NjaGVkX2pvYl9hZGRfZGVw
ZW5kZW5jeShqb2IsIGZlbmNlc1tpXSk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2Uob2JqLT5y
ZXN2LCAmY3Vyc29yLCB3cml0ZSwgZmVuY2UpIHsKKwkJcmV0ID0gZHJtX3NjaGVkX2pvYl9hZGRf
ZGVwZW5kZW5jeShqb2IsIGZlbmNlKTsKIAkJaWYgKHJldCkKLQkJCWJyZWFrOworCQkJcmV0dXJu
IHJldDsKIAl9Ci0KLQlmb3IgKDsgaSA8IGZlbmNlX2NvdW50OyBpKyspCi0JCWRtYV9mZW5jZV9w
dXQoZmVuY2VzW2ldKTsKLQlrZnJlZShmZW5jZXMpOwotCXJldHVybiByZXQ7CisJcmV0dXJuIDA7
CiB9CiBFWFBPUlRfU1lNQk9MKGRybV9zY2hlZF9qb2JfYWRkX2ltcGxpY2l0X2RlcGVuZGVuY2ll
cyk7CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
