Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A69940D8DA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF9DE63538
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A9A556242B; Thu, 16 Sep 2021 11:32:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 190F664ADA;
	Thu, 16 Sep 2021 11:32:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6E2E463525
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0E4FA69CD4; Thu, 16 Sep 2021 11:31:10 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id A1B7F6323D
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:05 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id w17so781582wrv.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kyOleDVWOJBAX5Al9bzCsD71zDRQwDAxTJRFXlsx32E=;
 b=nH6Fv1srD6vAMImVhu4qkDwJ1DeJ6EHRkTvSHSAiPq1DizBUmg4INVBj7TmvQfN1wk
 s7JN6sTZIm9dz1n5q79HkQJgPRvUic/5SWooR9JTzKPBxkDlM4Vu2E0wd7EDNJkKmJ98
 /M06J8x2kU/X6HhpeOZSK0dF3w7YFWt8WWEhC4a5m4CTDdw7rQ+PzbYLb3TURDnZVYWj
 SXCw6wK6rWrnT1EsKBXe/c6HbppvFPKhPqIgS7EC50/Vy/0lcQW+ToemKTfL2OTQMGO2
 55aVzZQxbqGneo9E5u/wZv2butWkkQeDIumjyOWFVcIzxmesLz+XSneo4DPscDGkAtT4
 o7uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kyOleDVWOJBAX5Al9bzCsD71zDRQwDAxTJRFXlsx32E=;
 b=KX+eW1D96Xc9WS1WTmGxQ8bOYrenX3Co1ao+vT49wGGItIgeNAw/ROPJZ8YCxU66i4
 eXjgCeGK6iv2U5wDn5GQuEX3h+7Kjwux+EaRTfVXaC+fMX1XsHclKW39cJNOkZo0vTVz
 8SDf4h1rvvr2tGenKy6RwN4/LieP+HGKuhl+UZD/L9XnTeTELMfGXnkdfxscu/7KHHk+
 AA9MaWftXJ25IAO5TFLTvWCU5HmTfCD5HO/kSdqIKd3ecOIt7Lr2JqiODIqW9e+KwZEt
 nnOp01j5Jm21TP3kKwVBvPCJX4oB+wcf3AEHlTdI43D+6vE+usroSCpM0r3cQqxw4Avb
 8poA==
X-Gm-Message-State: AOAM530QofcbfxyTakdJJ9a/DrDe00oIZVX+AIDcYrxaSOng7+arvU8k
 MFPXqVnmhFr1Dth5BpSFi04+ks9/IC4BItCr
X-Google-Smtp-Source: ABdhPJy866PHT8ShEH7QsAqiVUda4amf1rPNdv5LwqdkBFidDrfgrIhuDY1ULhqtsFASvUk9b2bsHg==
X-Received: by 2002:adf:e406:: with SMTP id g6mr5582396wrm.172.1631791864748; 
 Thu, 16 Sep 2021 04:31:04 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.31.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:31:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:37 +0200
Message-Id: <20210916113042.3631-22-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 21/26] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb v2
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

TWFrZXMgdGhlIGhhbmRsaW5nIGEgYml0IG1vcmUgY29tcGxleCwgYnV0IGF2b2lkcyB0aGUgdXNl
IG9mCmRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKCkuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3Jl
YWRfbG9jaygpL3VubG9jaygpCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWlj
X2hlbHBlci5jIHwgMTIgKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dl
bV9hdG9taWNfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVy
LmMKaW5kZXggZTU3MDM5OGFiZDc4Li44NmRmNzViMmY4ZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X2dlbV9hdG9taWNfaGVscGVyLmMKQEAgLTE0Myw2ICsxNDMsNyBAQAogICovCiBpbnQgZHJtX2dl
bV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0
IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUpCiB7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29y
OwogCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
OwogCkBAIC0xNTAsOSArMTUxLDE2IEBAIGludCBkcm1fZ2VtX3BsYW5lX2hlbHBlcl9wcmVwYXJl
X2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5lX3N0CiAJCXJldHVy
biAwOwogCiAJb2JqID0gZHJtX2dlbV9mYl9nZXRfb2JqKHN0YXRlLT5mYiwgMCk7Ci0JZmVuY2Ug
PSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPnJlc3YpOwotCWRybV9hdG9taWNfc2V0
X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVuY2UpOworCXJjdV9yZWFkX2xvY2soKTsKKwlkbWFf
cmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChvYmotPnJlc3YsICZjdXJzb3IsIGZhbHNlLCBm
ZW5jZSkgeworCQlyY3VfcmVhZF91bmxvY2soKTsKKwkJLyogVE9ETzogV2Ugb25seSB1c2UgdGhl
IGZpcnN0IHdyaXRlIGZlbmNlIGhlcmUgKi8KKwkJZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3Bs
YW5lKHN0YXRlLCBmZW5jZSk7CisJCXJldHVybiAwOworCX0KKwlyY3VfcmVhZF91bmxvY2soKTsK
IAorCWRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgTlVMTCk7CiAJcmV0dXJu
IDA7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChkcm1fZ2VtX3BsYW5lX2hlbHBlcl9wcmVwYXJlX2Zi
KTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
