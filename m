Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E74445A57A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:22:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5909C6337B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 07A1262C93; Tue, 23 Nov 2021 14:22:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 425CD62D49;
	Tue, 23 Nov 2021 14:22:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 46E9062C99
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E61A262421; Tue, 23 Nov 2021 14:21:44 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by lists.linaro.org (Postfix) with ESMTPS id 26B6462CA1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:40 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id
 j140-20020a1c2392000000b003399ae48f58so2399178wmj.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pldTMC4RaLfk2VlDsi1M7JoBSDyFXLyiGqqy6PtuOhM=;
 b=Bj8VXu498aYHYw2Lu4AJkw2hjKPHM004v59aCYY/c412UQ+F9D+lBFy88aNGRE64Zm
 W/f+lajYacxiR9UAXH4vKn6KnNaDN8gPGNG0imzR0ICVxtOQmIct0SC2g42pam0pOnGT
 VWFNJquTH06BhLX2NWLSW3uk5nOkmzONn9jHG9ymLVvGmVyODCSdNbbKiMglKBeHL0Ks
 90orZdqnAW0//9BUybqCSVg8hEWNH0vGH0tQ7knBclRM2BWYPWUd0pPIjM6fkCU7WzM+
 PK5xtlMzKxjROS9h7K+ahT0AKrwoGarqDvgE59PB4dnmzRTGJm5d76tKIEKX2lh5NrvT
 Qtaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pldTMC4RaLfk2VlDsi1M7JoBSDyFXLyiGqqy6PtuOhM=;
 b=U4Jo8tb1pGfXQxyr5ItZKUCAo8oOhu4UM7tUX9XOQi7jkfjTB+UJ7C5nakhr5qVvwd
 dGe9BmL+fLTIklwj88IXwwQSIKMMWbtH4uqkIJQodiS9HPIwCwXl7R6vJqrHzN44geaw
 cyhGk5/OjxYdTJL645M365e94DHhOE9+RZFey46jwBC6EamoG0+CTdRER0cNnrMI36jv
 o/D3JvJg3dftYC606T3rPB9+XeGSWDqL1YgpGduALgSxPJn8uXuyl/F+qhbZyTRmJnT3
 onNBIw2NMfddm2vhCri9RbkAD7CoNLwXp5kjuAVvLxUxnvlwpWMvzKH1L4ZaSiOuR+oE
 4Ekg==
X-Gm-Message-State: AOAM532J6xs0+N8h6P3Mqju+bXxPDcKW8I2urAw7u+qynyTGdCcYemjM
 8ZsykuAHzvk+r2vFOLKynqM=
X-Google-Smtp-Source: ABdhPJz911F8IY9Y0VBvle8G+wVlmlq4mcVedn/iG/AUr/XpKjKYgEubS8eqreLXD4JqwGaF9cPBEw==
X-Received: by 2002:a05:600c:c1:: with SMTP id
 u1mr3426832wmm.163.1637677299261; 
 Tue, 23 Nov 2021 06:21:39 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:38 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:59 +0100
Message-Id: <20211123142111.3885-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 14/26] drm/amdgpu: remove excl as shared
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
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
