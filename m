Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EB440D8DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 892F06685C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 66E0962DEF; Thu, 16 Sep 2021 11:32:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B161663424;
	Thu, 16 Sep 2021 11:32:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 94FB763523
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DA4A563413; Thu, 16 Sep 2021 11:31:11 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by lists.linaro.org (Postfix) with ESMTPS id 17EE369CD3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:08 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id s24so4540587wmh.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pzZPh7XEKFX9DQzQoersnh2LelUn+sP83XNXRaX1Isg=;
 b=cFKsiKGlG/f3eiSwtPbleVuyqrn0pPzIM4OcXD5nXC8MRfH2xZayXCNGMJwpidt5fn
 6sX7NSsk8TCwNLhVtDlNDcw0StcrF4OwN/6HX2VMcoCWr3psAdgH6pC0Ygvp94kGwsu/
 4t2USnodUSc3oGYa6Vf+hfWuL7AHuiDozepdTTZwOl5IpJ9ucTniOKAvXiUj+l+om43m
 2F/ajuVbIMAcrlI19avwyOly20KlNh3enijkzZZm5ICKBzayBJ4VF6g0+LfGUOBBe/s3
 c1oLkrvrxtIcVbnmjatuVIeBQxUThsN6ZyneT6OJP95VDQqgNB2n+rf8Rqq7ErYwF0eH
 xWWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pzZPh7XEKFX9DQzQoersnh2LelUn+sP83XNXRaX1Isg=;
 b=tq+c2WYQ9VxGZNndHQA/rG1u1ThOP9d4gQV93fx2hDtHBCMe5+zEBPaWbhzqRu/bs/
 oXRrt7TlmL1xIKAYbqXXD5UIwgeiAwX5i4sWAY8m5MAP4zg9j6ONt7IpwnYf66XxucSZ
 LAl7JCJor/dRhxJGhhouGnCOEbjZw4DyhOlQRtF0HV6g/QBnRRZIJwpJg7JSDGESVf4o
 CFZhigXESkRsFW60bC9dYxDnqn1j/Wv2a0x7+NyaUEZM4SzY8HA5zeDDQXrcjrUqQJed
 jxjMyB6GMOMahuAF9kQ89CV3r8jvw493yuKXauTLQlz81Zbc0jQiIYGKHn1nQUBI9lsw
 Rn/w==
X-Gm-Message-State: AOAM533AOOT3ssLE675U+RCsLAMkqzv867x6qdyC/h7uttm2v+RyAeFj
 CxDC7IC9h08VJRHTxpprheQPifg3TG8fn+EY
X-Google-Smtp-Source: ABdhPJyitUIgIRzXAmim8/WliKeWbdpvyqFeJqK2QTXfN7K8jT5S9EqdRoSfGLjOHSpocHOx1rsuzQ==
X-Received: by 2002:a05:600c:1c9e:: with SMTP id
 k30mr4429372wms.74.1631791866397; 
 Thu, 16 Sep 2021 04:31:06 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.31.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:31:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:39 +0200
Message-Id: <20210916113042.3631-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 23/26] drm/nouveau: use the new interator in
 nv50_wndw_prepare_fb v2
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
c3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52
NTAvd25kdy5jIHwgMTEgKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUv
ZGlzcG52NTAvd25kdy5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvd25kdy5j
CmluZGV4IDhkMDQ4YmFjZDZmMC4uMGY1Y2RiODk3ZjA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vbm91dmVhdS9kaXNwbnY1MC93bmR3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvZGlzcG52NTAvd25kdy5jCkBAIC01MzksNiArNTM5LDggQEAgbnY1MF93bmR3X3ByZXBhcmVf
ZmIoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRl
KQogCXN0cnVjdCBub3V2ZWF1X2JvICpudmJvOwogCXN0cnVjdCBudjUwX2hlYWRfYXRvbSAqYXN5
aDsKIAlzdHJ1Y3QgbnY1MF93bmR3X2N0eGRtYSAqY3R4ZG1hOworCXN0cnVjdCBkbWFfcmVzdl9p
dGVyIGN1cnNvcjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAlpbnQgcmV0OwogCiAJTlZf
QVRPTUlDKGRybSwgIiVzIHByZXBhcmU6ICVwXG4iLCBwbGFuZS0+bmFtZSwgZmIpOwpAQCAtNTYx
LDcgKzU2MywxNCBAQCBudjUwX3duZHdfcHJlcGFyZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFu
ZSwgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUpCiAJCQlhc3l3LT5pbWFnZS5oYW5kbGVb
MF0gPSBjdHhkbWEtPm9iamVjdC5oYW5kbGU7CiAJfQogCi0JYXN5dy0+c3RhdGUuZmVuY2UgPSBk
bWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChudmJvLT5iby5iYXNlLnJlc3YpOworCXJjdV9yZWFk
X2xvY2soKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChudmJvLT5iby5iYXNl
LnJlc3YsICZjdXJzb3IsIGZhbHNlLAorCQkJCQkgZmVuY2UpIHsKKwkJLyogVE9ETzogV2Ugb25s
eSB1c2UgdGhlIGZpcnN0IHdyaXRlciBoZXJlICovCisJCWFzeXctPnN0YXRlLmZlbmNlID0gZmVu
Y2U7CisJCWJyZWFrOworCX0KKwlyY3VfcmVhZF91bmxvY2soKTsKIAlhc3l3LT5pbWFnZS5vZmZz
ZXRbMF0gPSBudmJvLT5vZmZzZXQ7CiAKIAlpZiAod25kdy0+ZnVuYy0+cHJlcGFyZSkgewotLSAK
Mi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
