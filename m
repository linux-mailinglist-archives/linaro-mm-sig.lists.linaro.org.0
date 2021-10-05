Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF62422576
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:40:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C4F060431
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:40:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 129FE60ADB; Tue,  5 Oct 2021 11:40:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D2D16A93D;
	Tue,  5 Oct 2021 11:40:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7251163249
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1DCA060F1E; Tue,  5 Oct 2021 11:38:20 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 5C28C60694
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:10 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id o20so18738579wro.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jIUir/k9ok0mhA9lZLcDk0nsv9skwzmV2ts7X5dBo9o=;
 b=AFfVS3EWatdXDmvJKODPj1SdKmMBygV+2zYjnLRZQm4t+YFtQDSrgbUnoeiH9a6g6X
 dwfOR6wkZyjnKeNPdc2BdrrO9p+BzhqCIBhwLchvosIffnY7GB+KWgcfZ2v6aNKyiIbd
 TZSOvmrcMR8UvL87/pPXVb3PS3j/TpMiB50HocpnnPcXh3+guH5zyU6KFEZQdxZZttvV
 8qaNiT3MBBc4Vx5LsNo2HG/KOStQkWdObfMGxWeGmB74/MaPfRVHPBasKMc5252g9FmJ
 kxcD9i/J/Zk2E8mlWm23J1x69Wi8O/AaiPwzlEw0DouCNUewcPcqHTAUqTNajSCO/5IS
 P9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jIUir/k9ok0mhA9lZLcDk0nsv9skwzmV2ts7X5dBo9o=;
 b=aj+De+vPL1t1zSHbjXWVCslSXfkVirTdE8KC416vC3us0M/tvtPzJebj+al/BWvfAF
 b2TS2sigloHC7k32wgo9aV0pzkgFQldTSOFdtQhPHjwMzWUbkZ7M3sZOM7hugie1wGCz
 Diy9ahCKzo95atGe/pH5EFLfl2btX4eCacNW37XCjK8ThozbYyrr3W1d/jlWK/AtVvO1
 47ORRBJS8dBhPK1M4SbJBnfIg2E70KD8LQf9G38y9aPchdsCE+0bA60ufE5Q5HkuBSUw
 A5brq6MCP0gzwVTLhd57YgChpq9vIW8WEPbd2/7nVvuB0x+OguTBmXjkW9dX4GhkAiDZ
 rXbw==
X-Gm-Message-State: AOAM531g9dUVBYVnGrxC8cCfY1gUfHKUKyl7T++4lfTdNyj+BAaJoeYU
 h8GTAyLYNPy1XMdKXFOJxHry3qWvjjM=
X-Google-Smtp-Source: ABdhPJyQsKTgszTwklwG0r3ygsT3n1ok04hVt8J1DHvwjaVGb8x9pAazd6kfJucPcvgKD6pbZRW4SQ==
X-Received: by 2002:adf:8bcf:: with SMTP id w15mr21725807wra.144.1633433889373; 
 Tue, 05 Oct 2021 04:38:09 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:09 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:41 +0200
Message-Id: <20211005113742.1101-28-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 27/28] drm/etnaviv: use new iterator in
 etnaviv_gem_describe
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

SW5zdGVhZCBvZiBoYW5kIHJvbGxpbmcgdGhlIGxvZ2ljLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMgfCAzMSArKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwppbmRleCA4ZjFiNWFmNDdkZDYuLjBlZWIzM2Rl
MmZmNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCkBAIC00MjgsMTkgKzQy
OCwxNyBAQCBpbnQgZXRuYXZpdl9nZW1fd2FpdF9ibyhzdHJ1Y3QgZXRuYXZpdl9ncHUgKmdwdSwg
c3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCiBzdGF0aWMgdm9pZCBldG5hdml2X2dlbV9kZXNj
cmliZV9mZW5jZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKIAljb25zdCBjaGFyICp0eXBlLCBz
dHJ1Y3Qgc2VxX2ZpbGUgKm0pCiB7Ci0JaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdO
QUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQotCQlzZXFfcHJpbnRmKG0sICJcdCU5czogJXMgJXMg
c2VxICVsbHVcbiIsCi0JCQkgICB0eXBlLAotCQkJICAgZmVuY2UtPm9wcy0+Z2V0X2RyaXZlcl9u
YW1lKGZlbmNlKSwKLQkJCSAgIGZlbmNlLT5vcHMtPmdldF90aW1lbGluZV9uYW1lKGZlbmNlKSwK
LQkJCSAgIGZlbmNlLT5zZXFubyk7CisJc2VxX3ByaW50ZihtLCAiXHQlOXM6ICVzICVzIHNlcSAl
bGx1XG4iLCB0eXBlLAorCQkgICBmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpLAor
CQkgICBmZW5jZS0+b3BzLT5nZXRfdGltZWxpbmVfbmFtZShmZW5jZSksCisJCSAgIGZlbmNlLT5z
ZXFubyk7CiB9CiAKIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX2Rlc2NyaWJlKHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pCiB7CiAJc3RydWN0IGV0bmF2aXZf
Z2VtX29iamVjdCAqZXRuYXZpdl9vYmogPSB0b19ldG5hdml2X2JvKG9iaik7CiAJc3RydWN0IGRt
YV9yZXN2ICpyb2JqID0gb2JqLT5yZXN2OwotCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmb2JqOwor
CXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsK
IAl1bnNpZ25lZCBsb25nIG9mZiA9IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSk7
CiAKQEAgLTQ0OSwyMSArNDQ3LDE0IEBAIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX2Rlc2NyaWJl
KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pCiAJCQlvYmot
Pm5hbWUsIGtyZWZfcmVhZCgmb2JqLT5yZWZjb3VudCksCiAJCQlvZmYsIGV0bmF2aXZfb2JqLT52
YWRkciwgb2JqLT5zaXplKTsKIAotCXJjdV9yZWFkX2xvY2soKTsKLQlmb2JqID0gZG1hX3Jlc3Zf
c2hhcmVkX2xpc3Qocm9iaik7Ci0JaWYgKGZvYmopIHsKLQkJdW5zaWduZWQgaW50IGksIHNoYXJl
ZF9jb3VudCA9IGZvYmotPnNoYXJlZF9jb3VudDsKLQotCQlmb3IgKGkgPSAwOyBpIDwgc2hhcmVk
X2NvdW50OyBpKyspIHsKLQkJCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlKGZvYmotPnNoYXJlZFtp
XSk7CisJZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCByb2JqLCB0cnVlKTsKKwlkbWFfcmVz
dl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgeworCQlpZiAoZG1hX3Jl
c3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQlldG5hdml2X2dlbV9kZXNjcmliZV9m
ZW5jZShmZW5jZSwgIkV4Y2x1c2l2ZSIsIG0pOworCQllbHNlCiAJCQlldG5hdml2X2dlbV9kZXNj
cmliZV9mZW5jZShmZW5jZSwgIlNoYXJlZCIsIG0pOwotCQl9CiAJfQotCi0JZmVuY2UgPSBkbWFf
cmVzdl9leGNsX2ZlbmNlKHJvYmopOwotCWlmIChmZW5jZSkKLQkJZXRuYXZpdl9nZW1fZGVzY3Jp
YmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUiLCBtKTsKLQlyY3VfcmVhZF91bmxvY2soKTsKKwlk
bWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKIH0KIAogdm9pZCBldG5hdml2X2dlbV9kZXNjcmli
ZV9vYmplY3RzKHN0cnVjdCBldG5hdml2X2RybV9wcml2YXRlICpwcml2LAotLSAKMi4yNS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
