Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D91AE45A57E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:23:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C01E262FCB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 045B662FDF; Tue, 23 Nov 2021 14:22:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7CA8062D49;
	Tue, 23 Nov 2021 14:22:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E61446216C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BEA6F62169; Tue, 23 Nov 2021 14:21:46 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by lists.linaro.org (Postfix) with ESMTPS id 0FDEB620CA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:42 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 ay10-20020a05600c1e0a00b0033aa12cdd33so2034189wmb.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qBmtGbBu1QXhKmWazU6APumSvKhR6nIEoW+jVAv5tCQ=;
 b=aEZ/5Co18nmkp4u62saEitAQxChSJWjNnhcmwRyA7HJWR3C3GTieWR2z66rxkMFfq+
 tS4X5c47nYBWxBnijFMqa9zD0nNrtGgqN+EOxv92Fi7QkseSFSHXuT3xv6kWnOAzPbDV
 4zy4ec69l7ELE9julXZ/0CnQijZK4TNtcZjHH/YagK1wCHMCLtM80e6mc8qroihM/xYt
 +aBvAZ7f1373MuUiM2oZ9wjxQ2g7tfmrnh+eybJqnpzG56xXtCGv+qr8VbtplHFlj3vL
 pkhUgI2D5Lk+le3R0J9UE94THxI2DlHtKNlmmKKHVsbbpcMjL9kPE9tczUyAHjCcZJpL
 R35Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qBmtGbBu1QXhKmWazU6APumSvKhR6nIEoW+jVAv5tCQ=;
 b=bcNPqqDP18Qu17BUqqy8EeblTHuICQ+INhm420H/eS9oefhNTW591+6fd8IuQLfXRC
 KMyC9mBsJlkbKJVsXn4nFPlG+8QvZdzgJ9pKAh33pWdKZJU9keU4W4zvbZe7jMg/dkwd
 AlRa52k10OtWhh/n+sTEAZ0y94HHL+tBmPuxVRrnI7sid6JkD3TLgpt+ElkSuDepmrdQ
 ZvYxICmisD1eA9xohh8pLhuyZRNMUAPp+ZGt/4KhbAWY2w/IbEsuMvEeBsCIbzCZUrCB
 MW69FfD6aXIjBViEg9NP2jGldUrbSwoscEyNBR37mp9bg+z4tuONR7okR0EbioSBc8gI
 kFAg==
X-Gm-Message-State: AOAM533X94XZ1YRXtbt4el8o6WY/W/NOGJjNsSP+Hxf0fcdkHJNIHl+0
 IZJoPXkX1dOz1f61RoJ4PuIZvzD7oeo=
X-Google-Smtp-Source: ABdhPJwU5ehlAAReHLP8vmHUQVVd0ybuX/CrJukp6q5v77UxVmI5GfpdLM8DWJnlQ9mVR3h91d45Bg==
X-Received: by 2002:a05:600c:4e8d:: with SMTP id
 f13mr3661249wmq.7.1637677300824; 
 Tue, 23 Nov 2021 06:21:40 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:40 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:21:00 +0100
Message-Id: <20211123142111.3885-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 15/26] drm/amdgpu: use
 dma_resv_for_each_fence for CS workaround
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

R2V0IHRoZSB3cml0ZSBmZW5jZSB1c2luZyBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSBpbnN0ZWFk
IG9mIGFjY2Vzc2luZwppdCBtYW51YWxseS4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfY3MuYyB8IDkgKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Nz
LmMKaW5kZXggNTNlNDA3ZWE0Yzg5Li43ZmFjZDYxNGU1MGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9jcy5jCkBAIC0xMjY4LDYgKzEyNjgsOCBAQCBzdGF0aWMgaW50IGFtZGdw
dV9jc19zdWJtaXQoc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAsCiAJYW1kZ3B1X2JvX2xpc3Rf
Zm9yX2VhY2hfZW50cnkoZSwgcC0+Ym9fbGlzdCkgewogCQlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3Yg
PSBlLT50di5iby0+YmFzZS5yZXN2OwogCQlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9
IGUtPmNoYWluOworCQlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJCXN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlOwogCiAJCWlmICghY2hhaW4pCiAJCQljb250aW51ZTsKQEAgLTEyNzcsOSAr
MTI3OSwxMCBAQCBzdGF0aWMgaW50IGFtZGdwdV9jc19zdWJtaXQoc3RydWN0IGFtZGdwdV9jc19w
YXJzZXIgKnAsCiAJCSAqIHN1Ym1pc3Npb24gaW4gYSBkbWFfZmVuY2VfY2hhaW4gYW5kIGFkZCBp
dCBhcyBleGNsdXNpdmUKIAkJICogZmVuY2UuCiAJCSAqLwotCQlkbWFfZmVuY2VfY2hhaW5faW5p
dChjaGFpbiwgZG1hX3Jlc3ZfZXhjbF9mZW5jZShyZXN2KSwKLQkJCQkgICAgIGRtYV9mZW5jZV9n
ZXQocC0+ZmVuY2UpLCAxKTsKLQorCQlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCBy
ZXN2LCBmYWxzZSwgZmVuY2UpIHsKKwkJCWJyZWFrOworCQl9CisJCWRtYV9mZW5jZV9jaGFpbl9p
bml0KGNoYWluLCBmZW5jZSwgZG1hX2ZlbmNlX2dldChwLT5mZW5jZSksIDEpOwogCQlyY3VfYXNz
aWduX3BvaW50ZXIocmVzdi0+ZmVuY2VfZXhjbCwgJmNoYWluLT5iYXNlKTsKIAkJZS0+Y2hhaW4g
PSBOVUxMOwogCX0KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
