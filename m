Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E3940D8C4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:31:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C9866322E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:31:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4FE826338E; Thu, 16 Sep 2021 11:31:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D42E46242B;
	Thu, 16 Sep 2021 11:31:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2D46F6322C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 210A2629CD; Thu, 16 Sep 2021 11:30:59 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 43E0B62DEF
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:57 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id g16so8935806wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KcGBgTqPip6/dZ1AoQyg0Edp54HfoO6axaUUT+kNZpA=;
 b=m+pyF6jf44i4RFjZqLoivuaADocbP/v5QWB06GPgd1/roGp9WvfNytXzKBle2L6Zg+
 mXyqPQlUVZyn0Tdrle2F+DVwrvdzCxUtK0OykRLWv+xUYlynlOx+zb44EcfwYz08Nzql
 547FX8c15NPftjpGuJdDtv2A3mDNnPbwuFkk4dQdYh+Yy0wV2b6Ruqsqi3nqJzWJE6XD
 u5fMcQuxLDZvK2qot1O5pzPZFlu9OvFq2BE+GEldPNlXvOrlP3dmgIyQoEhRbfBpONgZ
 z3xM4JTg6fRcIB55W+je3nazucPxWZqTLDtOQfMEBWvnUFiN8fjc3GJ5qqB1Kk3a+7Ry
 fwVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KcGBgTqPip6/dZ1AoQyg0Edp54HfoO6axaUUT+kNZpA=;
 b=IL0/wV46SRWxJEXFB2lkdiA0RDa3I6YfIXcFR6+hIrJsVkLImHY6KUMwLNmzQQxpic
 swDiEAc7sZuCiGMo1vHlzT8P/Avlq8dQgMCiAJuSmYicGXxiczEYh+c00magYC6tQPCq
 T9b4x9nMDuVDFBsc8Yjhgjdw1tBpQBRqi1khTOIsZxbvp6eHaIrAH2LhZUeRv1LvZ3/C
 6viRMBU/HDhGtzLknwa63lKLozFj7V6qf1dNaL29KR3A/2lixepiAzsQ7xW/bYEO8J+i
 /OwC0KsELTNlPKUJ412pG5+2mVDbbojUjySHLhWszN2J/VajofWcq6aRPMpGn7iuJ6lu
 JlbQ==
X-Gm-Message-State: AOAM532XHlDo9Ip9bqdgKw1BXJa5QTJv62DTeZ/wRxKQXpNh+94rg1xN
 gRowQhDM72AIr2DW579qn3NZYtd1MDe0hTvC
X-Google-Smtp-Source: ABdhPJzituzq4pK7OzQD32lgKLYW+PH2DCitMAhYPsU+lk7Ipv+2utGYpP1F4S0XgzV0ZuuuDedxMQ==
X-Received: by 2002:a5d:6283:: with SMTP id k3mr5550180wru.324.1631791855784; 
 Thu, 16 Sep 2021 04:30:55 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:55 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:27 +0200
Message-Id: <20210916113042.3631-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
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
YWRlb25fc3luYy5jCmluZGV4IDkyNTdiNjAxNDRjNC4uMjNmYTk4ZGZlMDRiIDEwMDY0NAotLS0g
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
ICBkbWFfcmVzdl9oZWxkKHJlc3YpKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZShyZXN2LCAm
Y3Vyc29yLCBzaGFyZWQsIGYpIHsKIAkJZmVuY2UgPSB0b19yYWRlb25fZmVuY2UoZik7CiAJCWlm
IChmZW5jZSAmJiBmZW5jZS0+cmRldiA9PSByZGV2KQogCQkJcmFkZW9uX3N5bmNfZmVuY2Uoc3lu
YywgZmVuY2UpOwogCQllbHNlCiAJCQlyID0gZG1hX2ZlbmNlX3dhaXQoZiwgdHJ1ZSk7Ci0KIAkJ
aWYgKHIpCiAJCQlicmVhazsKIAl9Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
