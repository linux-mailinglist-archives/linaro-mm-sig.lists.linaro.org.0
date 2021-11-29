Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3894614AF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA55160C0C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EC2A862D4E; Mon, 29 Nov 2021 12:08:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 40DDB622CD;
	Mon, 29 Nov 2021 12:08:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C049462CA6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 12BE261A27; Mon, 29 Nov 2021 12:07:29 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 3DF5762DB0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:24 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id a18so36286745wrn.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qBmtGbBu1QXhKmWazU6APumSvKhR6nIEoW+jVAv5tCQ=;
 b=jIfLMHNOyiH6re4iFPVufnCfjZ8Ud/UjDFcuL3gUDJeKvCM3UbtrY8kJmmEmlsP5fV
 qlkSfwlaxZrJ+hCkSFVi/Id51YS65GNfGxlg7bw0kaRcDf7z9wWRCGWpm9nzwAXxXL+J
 no7IQqLrmVVIJ640E/VKVEF8UmEu2dn7tN+19wYQsgmbQKe+1YuP0xWowOHfgt4Ph/Tg
 R7QhEXs/XbU207fAX082CPBlQn+6j+5NUBqUpu2Q5vN24e4U6UIC4zvqjZiTzjrx/Gz9
 xtM2FG/o1ejpyR4pKBuaQY5WJZptHaHbTWteWv5yFjf60qykyI5582jbvDZ+UmNsUesC
 K5jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qBmtGbBu1QXhKmWazU6APumSvKhR6nIEoW+jVAv5tCQ=;
 b=xNT0rDKRLlX4jPLXX00BGTlsNuN+MybpNowdltp37OCkG/vq7yWodokUpLJPpuxLag
 s1JS8cOinHAjCnPGCAXRZa3LEn/7uEixxo07ZLNPeodANtc9xvCPXIllzlJWw38y9slS
 XsQUkccptvkkgKkd7tRQ+XLlFeHmJI1JltUcslpA7WFLEBPFWsGAuEmaDnQy2HkH/1z2
 qxF6X/xxFVIUGEpnkyuR/cCQrVDIsnwlG1HOcGlQ04CKYMwOIeY9eWUMkDVwJ/8pcCgv
 cOM8yoRYBxmFnJxCHHvO288tTpFjJCPCgrqb06bAFUjbE+B3EFvm+Y5hEETwSczdjIUO
 CnYw==
X-Gm-Message-State: AOAM530N4/vvuYYgPfUlL/GYlUaC5Se2fiuusgo3kQoLgGLE07YWy7Ly
 NgVnNhkxxxWxBiWN+y4b9Ic=
X-Google-Smtp-Source: ABdhPJzkgIuWSPb21nIZ1tZEj2iYSO3+RCOYkVkqHCgSj/4koXRSCMg5iIXTa5h0RyArWlxqmIB4ww==
X-Received: by 2002:a05:6000:1813:: with SMTP id
 m19mr32676183wrh.51.1638187637874; 
 Mon, 29 Nov 2021 04:07:17 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:17 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:46 +0100
Message-Id: <20211129120659.1815-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 15/28] drm/amdgpu: use
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
