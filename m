Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D6F3919E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:20:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D2CD614E0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 731EE616B8; Wed, 26 May 2021 14:20:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3AAC6116F;
	Wed, 26 May 2021 14:20:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7DADD605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7855E61160; Thu, 20 May 2021 12:03:38 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 6029E61161
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:36 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id p7so13654919wru.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yuvzJ7XKyB2J8XQ1p95NuNGQFyxLRMRhEwI7C8RcNw8=;
 b=KyloU0Voex0hBA1Vx66+tEWWQZSCdnxYcCTC9umTlXk2zRxDTFsqFUwWYcXMI55fpw
 ENKGyXCKnhBGEV7Dp0TCokF1f7aFF3VqhQ8JHMJb8TCCO7bG5a29KxxBijKLRur7EiWk
 TxQoHuk1+XSmKHRK/beFAE08KhwcQNYY/Nh6/KbpAeHraYFF6nQIVAdVrj8qay8qdJOe
 vac1Q+oLGtJH/WukRqAUD4Dq6aKwi9vX0isP8Rhb/LuvpCeG0ju/5erm5eesC0yaV/cG
 LSBgbZrY3r05ZoFaJPbh6jdbqCB2Lhg5D2/LZD6itG6VLVoOavS+G5pLuI21bl23jZ/B
 M0NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yuvzJ7XKyB2J8XQ1p95NuNGQFyxLRMRhEwI7C8RcNw8=;
 b=ScK2/BW4IJpAtQPzDdAFNNaQTL5S4j+jxWkYHcw5R5TSER8NcnWVs0kCS6lczUiF7k
 fbMZ/FIL4UZi9FUWLBSj0mMC4wvB+mvt6PsEf5vEvXKlAhmiAaC2uu9btdon3RyrgT8j
 HRuy5JmT0h5SHfR/fmtbrJdc+cfHYX0WIMyz+AchTrVpgJCMuBBvB8Ok4/pkNmSnPwcQ
 r54MlMIyyB0D8hR5+dc0/uwFIewNFhZfIXfdhHV6OsB657N9NLrOkn1XMuiFtPEx+skM
 icaTaSJuir/ce+z7ZvCK5wc4y11dFKRvgQRn8dgPNAN3vwPFbGoCIe2LJohjT7gJ4Mum
 cVLQ==
X-Gm-Message-State: AOAM5304S/L8FQgm0UF6Pw76AyQmjT9odDPTqj75lE/6/hiWUl/LqHkF
 2g8hux7gcbFjCGMQk8zcp18rFoo4
X-Google-Smtp-Source: ABdhPJy0xmbVP0jsnJYQuIk/ot8CWGqLOEp/599UQ2CXy8d5CQ9PYnIIK35Er7h+2CYObNbUZS63DQ==
X-Received: by 2002:a5d:4536:: with SMTP id j22mr3889313wra.329.1621512215520; 
 Thu, 20 May 2021 05:03:35 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:34 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:43 +0100
Message-Id: <20210520120248.3464013-34-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 33/38] drm/amd/amdgpu/sdma_v5_0: Fix typo in
 function name
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
cy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NV8wLmM6NTYzOiB3YXJuaW5nOiBleHBlY3Rpbmcg
cHJvdG90eXBlIGZvciBzZG1hX3ZfMF9jdHhfc3dpdGNoX2VuYWJsZSgpLiBQcm90b3R5cGUgd2Fz
IGZvciBzZG1hX3Y1XzBfY3R4X3N3aXRjaF9lbmFibGUoKSBpbnN0ZWFkCgpDYzogQWxleCBEZXVj
aGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXgu
aWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGxpbnV4LW1lZGlhQHZn
ZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClNpZ25lZC1v
ZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvc2RtYV92NV8wLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9zZG1hX3Y1XzAuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVf
MC5jCmluZGV4IDc1ZDczMTBmODQzOTIuLjJhMmI5ZDUwYWZiNzAgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVfMC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L3NkbWFfdjVfMC5jCkBAIC01NzEsNyArNTcxLDcgQEAgc3RhdGljIHZvaWQgc2Rt
YV92NV8wX3JsY19zdG9wKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2KQogfQogCiAvKioKLSAq
IHNkbWFfdl8wX2N0eF9zd2l0Y2hfZW5hYmxlIC0gc3RvcCB0aGUgYXN5bmMgZG1hIGVuZ2luZXMg
Y29udGV4dCBzd2l0Y2gKKyAqIHNkbWFfdjVfMF9jdHhfc3dpdGNoX2VuYWJsZSAtIHN0b3AgdGhl
IGFzeW5jIGRtYSBlbmdpbmVzIGNvbnRleHQgc3dpdGNoCiAgKgogICogQGFkZXY6IGFtZGdwdV9k
ZXZpY2UgcG9pbnRlcgogICogQGVuYWJsZTogZW5hYmxlL2Rpc2FibGUgdGhlIERNQSBNRXMgY29u
dGV4dCBzd2l0Y2guCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
