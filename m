Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC203919F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:21:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6146566928
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:21:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A108E66930; Wed, 26 May 2021 14:20:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 766DA61440;
	Wed, 26 May 2021 14:20:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E6CE0605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C43FE61174; Thu, 20 May 2021 12:03:40 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 863AB61161
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:38 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id y14so15304416wrm.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tJTJtfpMV/J/H+YFu2v39vUwU64txzJ+siPwQcxgUUI=;
 b=mDFB9RE1bc0Vqz3kk4DPBdJ9UZ/aMsd+rUlwA7frOrSPKA4J5EOky+7+ysl+VIeslx
 VnuHUou9Hz0olWToCaUysglK/ryHBbFYTG1zdzpfEsRKX2oKSczKuKDc2NZI/0vROlwG
 nFEFSbfmg6XBybX7YhaVP+Tr/LE1gctAgIP1HLMc0JcMywAitb0spISUg8E4IOPhaaJJ
 Kqq4h1v8Gm03ZOYI1kvz7TzyM67/zNMNzWIRm1646/gx9rl1Tvfm9CQGE6wVv488bsYO
 r6S8oUrYDtO3fYI5BS7HPcNxS2VKfxQLPJABQ3qYCqjXM6uEPjbehPB4X9i5wQ+XUa3x
 o/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tJTJtfpMV/J/H+YFu2v39vUwU64txzJ+siPwQcxgUUI=;
 b=CVBtNgsbRsqKtA6SkzZDRHovBmZ1RTXf37Xtat5uNAI8Ocl2YgltczBxwzm/E679F9
 SbnSxFRFCU6hp3vNfxBWbqpB5+IB7pBc9hOhLMoKxSap5dRmRxj8Vd81rxNwKtm2TJmG
 yIGWvQkkNp5QDwGS730MgGZunJ//cHqS7hNC+0WGWnSspawscOevKeiwgpOg+UUktDTZ
 YwdubFiRvUk0JCnc0vKUu2sAhmE7QocGLbTB+lH5qbJ/vsg+cI36kdKhLW5g1NA2ujGx
 LfW3Pr7ADk13XBIQ7Wj3uM08sbZzVtKAh88aHcK0zcAaDaVGzbSgxJ0ac7bwas3XsFsJ
 20jQ==
X-Gm-Message-State: AOAM5327nI+hlDg1COkB8mJ+p4ttMug/IJLHE64u/HJdnEG26L+L4T6c
 X07Nm70ScPCeevQGFRGmHKMhi6u5
X-Google-Smtp-Source: ABdhPJwhOZLLUHKejvhGLkMhKQ561C0i0iSobmuqHgR5qbq460hZZkBpBeFxX4iu+mRWKCqZF6aUVQ==
X-Received: by 2002:adf:e0c6:: with SMTP id m6mr4107882wri.66.1621512217735;
 Thu, 20 May 2021 05:03:37 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:37 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:45 +0100
Message-Id: <20210520120248.3464013-36-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 35/38] drm/amd/amdgpu/sdma_v5_2: Repair typo
 in function name
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
cy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NV8yLmM6NTAxOiB3YXJuaW5nOiBleHBlY3Rpbmcg
cHJvdG90eXBlIGZvciBzZG1hX3ZfMF9jdHhfc3dpdGNoX2VuYWJsZSgpLiBQcm90b3R5cGUgd2Fz
IGZvciBzZG1hX3Y1XzJfY3R4X3N3aXRjaF9lbmFibGUoKSBpbnN0ZWFkCgpDYzogQWxleCBEZXVj
aGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXgu
aWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGxpbnV4LW1lZGlhQHZn
ZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClNpZ25lZC1v
ZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvc2RtYV92NV8yLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9zZG1hX3Y1XzIuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVf
Mi5jCmluZGV4IGVjYjgyYzM5YjEwNjIuLmRlYjkwN2Y5NjA5MDYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVfMi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L3NkbWFfdjVfMi5jCkBAIC01MTcsNyArNTE3LDcgQEAgc3RhdGljIHZvaWQgc2Rt
YV92NV8yX3JsY19zdG9wKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2KQogfQogCiAvKioKLSAq
IHNkbWFfdl8wX2N0eF9zd2l0Y2hfZW5hYmxlIC0gc3RvcCB0aGUgYXN5bmMgZG1hIGVuZ2luZXMg
Y29udGV4dCBzd2l0Y2gKKyAqIHNkbWFfdjVfMl9jdHhfc3dpdGNoX2VuYWJsZSAtIHN0b3AgdGhl
IGFzeW5jIGRtYSBlbmdpbmVzIGNvbnRleHQgc3dpdGNoCiAgKgogICogQGFkZXY6IGFtZGdwdV9k
ZXZpY2UgcG9pbnRlcgogICogQGVuYWJsZTogZW5hYmxlL2Rpc2FibGUgdGhlIERNQSBNRXMgY29u
dGV4dCBzd2l0Y2guCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
