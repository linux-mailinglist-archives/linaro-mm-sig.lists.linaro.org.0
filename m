Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F6A46BB5C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 738E361A36
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1CDD161478; Tue,  7 Dec 2021 12:35:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EAA162D32;
	Tue,  7 Dec 2021 12:35:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 707F662CA5
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CDA3462164; Tue,  7 Dec 2021 12:34:30 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id B8FB76207C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:25 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id c4so29116544wrd.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=pldTMC4RaLfk2VlDsi1M7JoBSDyFXLyiGqqy6PtuOhM=;
 b=c+0NOkdT/QqTSQAF6PmNLtGkrvVqf+24DUlL1C3JcbL8Qs+qC6YwzNQduLJK3ZfIf5
 GcOpat2T1/SRP1c8qU4mjI5+IKr+4kd2/y9GDiVCm+8HPFLLkxs1ed8K8OvY+HwB3zki
 Wxc349MPcU3SG+HM3jHs5nblFHwvw99+hHfopGVRkoJXg010FKnqAHvHGCNT1/MLpQk6
 nba4ogHEcTJvbUxcMFsOEuKfwXPaHrIT/3I2sDtll5QAg+J+wQbkURhT7iawRz2p1eJW
 zfJJ1LVAviH5illjT6HwVXi1+0fK9XNj5zSF2qTc63oaFdZ5Dn4KIC25PqKbUd2JF2yb
 778w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pldTMC4RaLfk2VlDsi1M7JoBSDyFXLyiGqqy6PtuOhM=;
 b=hkXqviPrpskv6O09QJkkrbaqqFZNMNcfRv1R2OOOY03L59NNFPV1q9AjdOP49zXgpY
 4qzN0bR8Gyn2cc+cdD8hHeDvYcp1uQeOvzkuN+3uJdrPSNnZEt4r4Op3xKih4LCU5iT6
 qCpS0HHyEC3pUPUaw4wgKBgZw52tZkF8Tjg7GwOFYvAHuL6sRNilurhjwF+w6sRqUIva
 YIJS+T99bRRfoz/k9e4HbODMrx503kEYkHyun4v0PKOViT0GGD4Dm6GIxewAr4Fd4NnM
 CkWGogzNmyVZtCGBtxRMaSu5fXSC8foVT1xTw7z9FiXYe9+a50gP0ocUiJOeLUdDavBa
 YprA==
X-Gm-Message-State: AOAM530KshIbh9KxRya/n2k18bTYGMwxxksyXRx0TxSD7iohW8nzlMbb
 XA5SKJGxHzOdPiQ6k9DMiZk=
X-Google-Smtp-Source: ABdhPJxJpHkmDeikHdyonzJqnlmZZkB+TfvfV4pk5/CeTV94ATIJ+fr695BoYYJjI0oxRSz04MIjGA==
X-Received: by 2002:adf:dd46:: with SMTP id u6mr52747900wrm.280.1638880464586; 
 Tue, 07 Dec 2021 04:34:24 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:23 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:33:57 +0100
Message-Id: <20211207123411.167006-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/24] drm/amdgpu: remove excl as shared
 workarounds
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyB3YXMgYWRkZWQgYmVjYXVzZSBvZiB0aGUgbm93IGRyb3BwZWQgc2hhcmVkIG9uIGV4Y2wg
ZGVwZW5kZW5jeS4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3Mu
YyAgfCA1ICstLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMgfCA2
IC0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTAgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYwppbmRleCAwMzExZDc5OWEwMTAu
LjUzZTQwN2VhNGM4OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMKQEAg
LTEyNzUsMTQgKzEyNzUsMTEgQEAgc3RhdGljIGludCBhbWRncHVfY3Nfc3VibWl0KHN0cnVjdCBh
bWRncHVfY3NfcGFyc2VyICpwLAogCQkvKgogCQkgKiBXb3JrIGFyb3VuZCBkbWFfcmVzdiBzaG9y
dGNvbW1pbmdzIGJ5IHdyYXBwaW5nIHVwIHRoZQogCQkgKiBzdWJtaXNzaW9uIGluIGEgZG1hX2Zl
bmNlX2NoYWluIGFuZCBhZGQgaXQgYXMgZXhjbHVzaXZlCi0JCSAqIGZlbmNlLCBidXQgZmlyc3Qg
YWRkIHRoZSBzdWJtaXNzaW9uIGFzIHNoYXJlZCBmZW5jZSB0byBtYWtlCi0JCSAqIHN1cmUgdGhh
dCBzaGFyZWQgZmVuY2VzIG5ldmVyIHNpZ25hbCBiZWZvcmUgdGhlIGV4Y2x1c2l2ZQotCQkgKiBv
bmUuCisJCSAqIGZlbmNlLgogCQkgKi8KIAkJZG1hX2ZlbmNlX2NoYWluX2luaXQoY2hhaW4sIGRt
YV9yZXN2X2V4Y2xfZmVuY2UocmVzdiksCiAJCQkJICAgICBkbWFfZmVuY2VfZ2V0KHAtPmZlbmNl
KSwgMSk7CiAKLQkJZG1hX3Jlc3ZfYWRkX3NoYXJlZF9mZW5jZShyZXN2LCBwLT5mZW5jZSk7CiAJ
CXJjdV9hc3NpZ25fcG9pbnRlcihyZXN2LT5mZW5jZV9leGNsLCAmY2hhaW4tPmJhc2UpOwogCQll
LT5jaGFpbiA9IE5VTEw7CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2dlbS5j
CmluZGV4IGExZTYzYmE0YzU0YS4uODVkMzFkODVjMzg0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2dlbS5jCkBAIC0yMjYsMTIgKzIyNiw2IEBAIHN0YXRpYyB2b2lkIGFtZGdw
dV9nZW1fb2JqZWN0X2Nsb3NlKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAogCWlmICghYW1k
Z3B1X3ZtX3JlYWR5KHZtKSkKIAkJZ290byBvdXRfdW5sb2NrOwogCi0JZmVuY2UgPSBkbWFfcmVz
dl9leGNsX2ZlbmNlKGJvLT50Ym8uYmFzZS5yZXN2KTsKLQlpZiAoZmVuY2UpIHsKLQkJYW1kZ3B1
X2JvX2ZlbmNlKGJvLCBmZW5jZSwgdHJ1ZSk7Ci0JCWZlbmNlID0gTlVMTDsKLQl9Ci0KIAlyID0g
YW1kZ3B1X3ZtX2NsZWFyX2ZyZWVkKGFkZXYsIHZtLCAmZmVuY2UpOwogCWlmIChyIHx8ICFmZW5j
ZSkKIAkJZ290byBvdXRfdW5sb2NrOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
