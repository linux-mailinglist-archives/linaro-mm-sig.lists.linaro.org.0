Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 138E04614A3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0668C61A49
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B127362CFC; Mon, 29 Nov 2021 12:08:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6ED4B61E5C;
	Mon, 29 Nov 2021 12:08:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 996BC62C9E
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 812AB60A79; Mon, 29 Nov 2021 12:07:22 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id A940F62003
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:18 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id q3so13409465wru.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pldTMC4RaLfk2VlDsi1M7JoBSDyFXLyiGqqy6PtuOhM=;
 b=NXIfDAaQ1BF3hKDmfKrx0LttajQYL6RtJf+1p4ZsPv5RL37K0ane91/wkNiQgVwuhL
 or7BDdF/S85jyaKQwg1yNxzqZ/0f1mULxLUk47jbvZ2rA6+6J9/b8ECML9A5Wg+bifpR
 /gyWBOFGUNo8PGVwHJdqSBeD3J0Bivf4n9LwUsrI6AqDmDQrCJAKjXAGdSJnp8pPa8WE
 6TZPEya5D9AAeLQVuOqwZXm43sTfKcmWtWs8UfTvEZVOv5F5g+ZtKdjBrE7DmWoYhjjQ
 iH7OMOnACRfw/KyjPgkjqEnsuA6qrI/ltnYGlaXZkyayoCzpcnq+kmy9Y5h161C6AwM1
 c/ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pldTMC4RaLfk2VlDsi1M7JoBSDyFXLyiGqqy6PtuOhM=;
 b=yyf7PtLzKCyNEKFx9tG+6GJalyEHUItStkg7kMC7aT+6Y6U83/krIXrRUOoIIggZQI
 Dj3SDOzcbkPhLWxZgdcJM6FBMNRjDpTXZ4HXwx3gJsvYZc4q81aq96AsKehox3pbfZ4h
 EOl0YNQDmk/FFRMKWNqQioRimwmOFScekObF4Bg0CnDHOn7b/SjMPTWH6AigaZ3xoFFT
 Bw4aR0zwG0zArUYpaSQ+A5c139wGq93Ez9L5Yg22xBzRGEL+oNKN3DhTx5jVGGDaRWP5
 iBZ3ssJ8l05YLg/OiYeFyJjwNdMPTntjB9bNVt4g8rMuE2GDqZi0/ttzEZg48OTqd1Wz
 Rc0A==
X-Gm-Message-State: AOAM531mi+m8gZthAU2NcQA6vuQQ/4Nztl0GvTEvfsI/S5dJWkx/Ks6B
 orCEGh+3lZ2KjnEzRztzgu0=
X-Google-Smtp-Source: ABdhPJyh5pEO5g2mwwyaLStXH0XC8zZcDrYA7MtxctYQ2fN21UoLzY9IpgPMs/eB69iqJMqY5fnNeg==
X-Received: by 2002:a5d:4343:: with SMTP id u3mr34055061wrr.450.1638187637034; 
 Mon, 29 Nov 2021 04:07:17 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:16 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:45 +0100
Message-Id: <20211129120659.1815-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 14/28] drm/amdgpu: remove excl as shared
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
