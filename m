Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 278443919F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:21:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3D596147E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4F85F6167C; Wed, 26 May 2021 14:20:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAEC6614E0;
	Wed, 26 May 2021 14:20:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D4F8061179
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C213861178; Thu, 20 May 2021 12:03:43 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id 1F3FB61160
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:41 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id 62so7998248wmb.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jO7V0H98Qg2tMCIwDj4FeeKzGM5dSknTEV1LYii8u8w=;
 b=W4x0Pew/IdeVOzVWOMkZldd12omXYquCVkPlxohuHIUCvZ/BWTepLzjBlhhiblpmG0
 gUJwuwhnYvyv3Q3h88pNwzZmHXBXelFCn6KJjQLnX6ztOSiKbeLA8UQ59wDQB2zY9GaL
 QLs6gEfartIy6XZI2vtzV58nNt4DztnsXEvnC40J/30hlNC2OMHkkZA3dq9TFiT/N9Mf
 dd0Bp1pJrdlAv+FGpU8Ls1aO0UGpHh4ZR66obyMP/QvI82ONSDznjEddDWl0rdVuXqLV
 C58IkWCeCV0wiruzMSD8MyGAIL0W379+i/+Dm5F23398Yl+LZOo+S2CYDUorHkHYMCty
 sF3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jO7V0H98Qg2tMCIwDj4FeeKzGM5dSknTEV1LYii8u8w=;
 b=Rrp8PKz9K8jc5x0DFFQkNlyGu7V/Xn2bg9ju9vlgdbua4620lweaWEs+b/4fCTON/e
 dd2KG8stVBrSYdcLcpOd/JxiZ4DTJyi62SHs0TaNIdYktsliTEjafpM9YhHGb6QZa/H5
 p59jDuD/X1acpsRrlM+0q7eUbTGSZ97f7L31C2SpTVF9x1+J5CQzdqxRW2S1eKXfahwF
 YtJtRFaeeT3ia+Hjc8lZRWCbdi7sniQwShLDaoiVuEkAEKNrk5krFZrhNh3aZxZpyDH7
 8U1aRvnMSyiMXoYDkNHvOin1PAvfygvqVc9uF4+CorQKqv3/wRn+oSbt0dZMq7NWjEf+
 hoHw==
X-Gm-Message-State: AOAM532IPte7HNQ6P86UEyLiWgUnPUv8rWCPE4yvsHVFvi/jGCH4WwdE
 SFxXcdEKpQFmH1E9eZ/Nh3xsH0xI
X-Google-Smtp-Source: ABdhPJyV3+TJPHVMnYSdJETlXphndM0hvCrXSlYbuhpUFkSBWFHcg1oC7Whm3urACs0DpxdCMukdUQ==
X-Received: by 2002:a1c:cc12:: with SMTP id h18mr3238405wmb.141.1621512220189; 
 Thu, 20 May 2021 05:03:40 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:39 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:47 +0100
Message-Id: <20210520120248.3464013-38-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 37/38] drm/amd/amdgpu/gfx_v10_0: Demote
 kernel-doc abuse
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3YxMF8wLmM6NTE6IHdhcm5pbmc6IFRoaXMgY29tbWVu
dCBzdGFydHMgd2l0aCAnLyoqJywgYnV0IGlzbid0IGEga2VybmVsLWRvYyBjb21tZW50LiBSZWZl
ciBEb2N1bWVudGF0aW9uL2RvYy1ndWlkZS9rZXJuZWwtZG9jLnJzdAoKQ2M6IEFsZXggRGV1Y2hl
ciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4Lmll
PgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpDYzogU3VtaXQgU2Vtd2FsIDxz
dW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
CkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1tZWRpYUB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpTaWduZWQtb2Zm
LWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2dmeF92MTBfMC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvZ2Z4X3YxMF8wLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjEwXzAu
YwppbmRleCBmYzEyZTNjM2U5Y2FlLi5jODMzYmUzMWU0YWU2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjEwXzAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9nZnhfdjEwXzAuYwpAQCAtNDcsNyArNDcsNyBAQAogI2luY2x1ZGUgImdmeF92MTBf
MC5oIgogI2luY2x1ZGUgIm5iaW9fdjJfMy5oIgogCi0vKioKKy8qCiAgKiBOYXZpMTAgaGFzIHR3
byBncmFwaGljIHJpbmdzIHRvIHNoYXJlIGVhY2ggZ3JhcGhpYyBwaXBlLgogICogMS4gUHJpbWFy
eSByaW5nCiAgKiAyLiBBc3luYyByaW5nCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
