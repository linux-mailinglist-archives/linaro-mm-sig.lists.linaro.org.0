Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5413C1858
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Jul 2021 19:38:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63DEA634D7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Jul 2021 17:38:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0663466960; Thu,  8 Jul 2021 17:38:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 086B363564;
	Thu,  8 Jul 2021 17:38:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1EBE963565
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Jul 2021 17:38:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B026E6696A; Thu,  8 Jul 2021 17:38:19 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by lists.linaro.org (Postfix) with ESMTPS id 3CF776691A
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Jul 2021 17:38:17 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id w13so4607838wmc.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Jul 2021 10:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mls2ejKErj4+c/cv4r8BLVM3Y5XNHv+hyokEAjrvlQQ=;
 b=IIF9iyvY6exRnC2Tldk5pPDZhe3//qmZGbSZqZVy4/VVvTCp6g6CRT/VmThqsvLEUc
 orLhRYsA2UKPlNNwkZwpYweBJMqmvrqVyMT4i72pFQwnFVgEVDKjXxceQ18N7NNjHRko
 TxrnLU5FP7l84aSxsVgvPpnwu0IGIwtcmVWuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mls2ejKErj4+c/cv4r8BLVM3Y5XNHv+hyokEAjrvlQQ=;
 b=gjJCQhzpJYhsxuh8kC2nUt4mRFhFIaOwSvvVfNBfFsSyxUcC5jFG/fMzk4nzwVY158
 N+fBulimHidPKBj1YuZBT++4EddakKjx/lpdI/UV5VdL5ls8tulGLBawk/V/+qaZXZK+
 n46c/30lhz614PDlUWWi46pWIj/viQc2XMuXn2tpSPc3RswaeiFbkL0RjH0yj5tc7XQW
 Dofwj9k8e36ghkHC4LaYF1gfBZh/Mb9ilHJECSjiUHIzHOOemfQeZhd65ZeLJiAsmidC
 iNJVPZFCRFMOF7zo5ALNheXrHA9RNKg+hFvHc9pdA2AXZxeXo1fD8Hh7HZ01iTp24YmU
 B+mw==
X-Gm-Message-State: AOAM533waN98gSgLtJe8d4jU5CV/UcnRt1T4unPtB7VFCVhFf6L1wh/F
 mCuY1vP6ujelF7YWKf5rUbFToA==
X-Google-Smtp-Source: ABdhPJxYS1PxW6pEpvMukPEy2FkcrmGfCw1y8tVGm6EpHZsEKDmHQd/ZnKUJ5sKhK1zprMgVk0lvEA==
X-Received: by 2002:a7b:c955:: with SMTP id i21mr6605382wml.147.1625765896273; 
 Thu, 08 Jul 2021 10:38:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l4sm2521853wme.26.2021.07.08.10.38.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 10:38:15 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  8 Jul 2021 19:37:42 +0200
Message-Id: <20210708173754.3877540-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v3 08/20] drm/lima: use scheduler dependency
 tracking
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
Cc: lima@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Tm90aGluZyBzcGVjaWFsIGdvaW5nIG9uIGhlcmUuCgpBc2lkZSByZXZpZXdpbmcgdGhlIGNvZGUs
IGl0IHNlZW1zIGxpa2UgZHJtX3NjaGVkX2pvYl9hcm0oKSBzaG91bGQgYmUKbW92ZWQgaW50byBs
aW1hX3NjaGVkX2NvbnRleHRfcXVldWVfdGFzayBhbmQgcHV0IHVuZGVyIHNvbWUgbXV0ZXgKdG9n
ZXRoZXIgd2l0aCBkcm1fc2NoZWRfcHVzaF9qb2IoKS4gU2VlIHRoZSBrZXJuZWxkb2MgZm9yCmRy
bV9zY2hlZF9wdXNoX2pvYigpLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+CkNjOiBRaWFuZyBZdSA8eXVxODI1QGdtYWlsLmNvbT4KQ2M6IFN1
bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiAiQ2hyaXN0aWFuIEvDtm5p
ZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IGxpbWFAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMgICB8ICA0
ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuYyB8IDIxIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5oIHwgIDMgLS0tCiAz
IGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9s
aW1hL2xpbWFfZ2VtLmMKaW5kZXggYzUyOGY0MDk4MWJiLi5lNTRhODhkNTAzN2EgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2xpbWEvbGltYV9nZW0uYwpAQCAtMjY3LDcgKzI2Nyw3IEBAIHN0YXRpYyBpbnQgbGltYV9nZW1f
c3luY19ibyhzdHJ1Y3QgbGltYV9zY2hlZF90YXNrICp0YXNrLCBzdHJ1Y3QgbGltYV9ibyAqYm8s
CiAJaWYgKGV4cGxpY2l0KQogCQlyZXR1cm4gMDsKIAotCXJldHVybiBkcm1fZ2VtX2ZlbmNlX2Fy
cmF5X2FkZF9pbXBsaWNpdCgmdGFzay0+ZGVwcywgJmJvLT5iYXNlLmJhc2UsIHdyaXRlKTsKKwly
ZXR1cm4gZHJtX3NjaGVkX2pvYl9hd2FpdF9pbXBsaWNpdCgmdGFzay0+YmFzZSwgJmJvLT5iYXNl
LmJhc2UsIHdyaXRlKTsKIH0KIAogc3RhdGljIGludCBsaW1hX2dlbV9hZGRfZGVwcyhzdHJ1Y3Qg
ZHJtX2ZpbGUgKmZpbGUsIHN0cnVjdCBsaW1hX3N1Ym1pdCAqc3VibWl0KQpAQCAtMjg1LDcgKzI4
NSw3IEBAIHN0YXRpYyBpbnQgbGltYV9nZW1fYWRkX2RlcHMoc3RydWN0IGRybV9maWxlICpmaWxl
LCBzdHJ1Y3QgbGltYV9zdWJtaXQgKnN1Ym1pdCkKIAkJaWYgKGVycikKIAkJCXJldHVybiBlcnI7
CiAKLQkJZXJyID0gZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQoJnN1Ym1pdC0+dGFzay0+ZGVwcywg
ZmVuY2UpOworCQllcnIgPSBkcm1fc2NoZWRfam9iX2F3YWl0X2ZlbmNlKCZzdWJtaXQtPnRhc2st
PmJhc2UsIGZlbmNlKTsKIAkJaWYgKGVycikgewogCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7CiAJ
CQlyZXR1cm4gZXJyOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hl
ZC5jIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5jCmluZGV4IGU5NjhiNWE4ZjBi
MC4uOTlkNWY2ZjFhODgyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX3Nj
aGVkLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5jCkBAIC0xMzQsMjQg
KzEzNCwxNSBAQCBpbnQgbGltYV9zY2hlZF90YXNrX2luaXQoc3RydWN0IGxpbWFfc2NoZWRfdGFz
ayAqdGFzaywKIAl0YXNrLT5udW1fYm9zID0gbnVtX2JvczsKIAl0YXNrLT52bSA9IGxpbWFfdm1f
Z2V0KHZtKTsKIAotCXhhX2luaXRfZmxhZ3MoJnRhc2stPmRlcHMsIFhBX0ZMQUdTX0FMTE9DKTsK
LQogCXJldHVybiAwOwogfQogCiB2b2lkIGxpbWFfc2NoZWRfdGFza19maW5pKHN0cnVjdCBsaW1h
X3NjaGVkX3Rhc2sgKnRhc2spCiB7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Ci0JdW5zaWdu
ZWQgbG9uZyBpbmRleDsKIAlpbnQgaTsKIAogCWRybV9zY2hlZF9qb2JfY2xlYW51cCgmdGFzay0+
YmFzZSk7CiAKLQl4YV9mb3JfZWFjaCgmdGFzay0+ZGVwcywgaW5kZXgsIGZlbmNlKSB7Ci0JCWRt
YV9mZW5jZV9wdXQoZmVuY2UpOwotCX0KLQl4YV9kZXN0cm95KCZ0YXNrLT5kZXBzKTsKLQogCWlm
ICh0YXNrLT5ib3MpIHsKIAkJZm9yIChpID0gMDsgaSA8IHRhc2stPm51bV9ib3M7IGkrKykKIAkJ
CWRybV9nZW1fb2JqZWN0X3B1dCgmdGFzay0+Ym9zW2ldLT5iYXNlLmJhc2UpOwpAQCAtMTg2LDE3
ICsxNzcsNiBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpsaW1hX3NjaGVkX2NvbnRleHRfcXVldWVfdGFz
ayhzdHJ1Y3QgbGltYV9zY2hlZF90YXNrICp0YXNrKQogCXJldHVybiBmZW5jZTsKIH0KIAotc3Rh
dGljIHN0cnVjdCBkbWFfZmVuY2UgKmxpbWFfc2NoZWRfZGVwZW5kZW5jeShzdHJ1Y3QgZHJtX3Nj
aGVkX2pvYiAqam9iLAotCQkJCQkgICAgICAgc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0
eSkKLXsKLQlzdHJ1Y3QgbGltYV9zY2hlZF90YXNrICp0YXNrID0gdG9fbGltYV90YXNrKGpvYik7
Ci0KLQlpZiAoIXhhX2VtcHR5KCZ0YXNrLT5kZXBzKSkKLQkJcmV0dXJuIHhhX2VyYXNlKCZ0YXNr
LT5kZXBzLCB0YXNrLT5sYXN0X2RlcCsrKTsKLQotCXJldHVybiBOVUxMOwotfQotCiBzdGF0aWMg
aW50IGxpbWFfcG1fYnVzeShzdHJ1Y3QgbGltYV9kZXZpY2UgKmxkZXYpCiB7CiAJaW50IHJldDsK
QEAgLTQ3Miw3ICs0NTIsNiBAQCBzdGF0aWMgdm9pZCBsaW1hX3NjaGVkX2ZyZWVfam9iKHN0cnVj
dCBkcm1fc2NoZWRfam9iICpqb2IpCiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3NjaGVk
X2JhY2tlbmRfb3BzIGxpbWFfc2NoZWRfb3BzID0gewotCS5kZXBlbmRlbmN5ID0gbGltYV9zY2hl
ZF9kZXBlbmRlbmN5LAogCS5ydW5fam9iID0gbGltYV9zY2hlZF9ydW5fam9iLAogCS50aW1lZG91
dF9qb2IgPSBsaW1hX3NjaGVkX3RpbWVkb3V0X2pvYiwKIAkuZnJlZV9qb2IgPSBsaW1hX3NjaGVk
X2ZyZWVfam9iLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5o
IGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5oCmluZGV4IGFjNzAwMDZiMGUyNi4u
NmExMTc2NGQ4N2IzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX3NjaGVk
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5oCkBAIC0yMyw5ICsyMyw2
IEBAIHN0cnVjdCBsaW1hX3NjaGVkX3Rhc2sgewogCXN0cnVjdCBsaW1hX3ZtICp2bTsKIAl2b2lk
ICpmcmFtZTsKIAotCXN0cnVjdCB4YXJyYXkgZGVwczsKLQl1bnNpZ25lZCBsb25nIGxhc3RfZGVw
OwotCiAJc3RydWN0IGxpbWFfYm8gKipib3M7CiAJaW50IG51bV9ib3M7CiAKLS0gCjIuMzIuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
