Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6331546148A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:07:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23BCF60E15
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:07:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 655F161A3D; Mon, 29 Nov 2021 12:07:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C35FE62D18;
	Mon, 29 Nov 2021 12:07:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D21E860A45
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CD38360BC6; Mon, 29 Nov 2021 12:07:07 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id B13BA60A45
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:05 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 r9-20020a7bc089000000b00332f4abf43fso10816593wmh.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OOCzCCGRhx0Yd+XBoLOb3ENe6v2ley+rjFyWG7N2LJU=;
 b=Q6X8MelaozaQwJKcGk9PhwHDUcDD0804yBPKlQUpU1WahVImfNpIKG/OejgeytkrVR
 A3wNCR3VBtNfSkPSL8va2GAnQvspMA6Veaw52bQrGuFdVnEJxM3Mg//xlVyVog2LNH6N
 u3PuAcHbhNX4JVUslAoJDcdMWtA7GeefmOIWvi0al+OncC5jRO0s2lR331gCBS2BpUaO
 7QA/1eafmE1MIbH5CacqhElctbQZD4c+EoiPi/xvpWyC8rGSlA5xIaFqjlNz5k7BoY7L
 SNDc+sadmIsANRckOh362ojch30ULQgLgSzba+Pmp3jkOdz90y6AOUNnKBRFSa51v0ZC
 ksVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OOCzCCGRhx0Yd+XBoLOb3ENe6v2ley+rjFyWG7N2LJU=;
 b=2yJLCMhl8LMTuiG8nWRCqx5Jl+4VGWmiKw2jvApuwUc6uDIcbOOzYpB7V2zLJggLtx
 W4gW0I5fF1WOaXyiPHxuU0ON+Kr27r2/XgdFCDongO/1qNmiTpWLlOXCUDDe2SwUJHxQ
 XPFCGH03mbHuWOhTtXPR5mxRAcNUlCZ8Cw1PbdgKk99XUGx3CJev7ujuCEN94CaZ6+FB
 +rp8/Jm88wSSBlrt+wdI2NxG7S/wECRL8OpETjbU3OS+SzPtQHTLQREhFrFDzRvsziB3
 IaMBoH+br51MfYykQ/JGIbTc0XJctLUMFBZuBv8hGSx0vRPRVaq27FzPlysnOQzjZ5/C
 9pww==
X-Gm-Message-State: AOAM531SZk4R0r0D5fy7zNNWMsfZORhIs8QhqVsLfq0IvVrxT0HgPw8Y
 cse9TKhdmOK+KhBJs53eqh0=
X-Google-Smtp-Source: ABdhPJwP9DcyaVQ4UYDvEecjYzTaOmhgzoezNR1SawExuKjdgJBNc8PjMSFTpKkeIGvBtMZEVrk4eQ==
X-Received: by 2002:a05:600c:3494:: with SMTP id
 a20mr36318388wmq.195.1638187624754; 
 Mon, 29 Nov 2021 04:07:04 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:04 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:33 +0100
Message-Id: <20211129120659.1815-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 02/28] drm/ttm: stop pruning fences after
 wait
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

VGhpcyBpcyBqdXN0IGFidXNpbmcgaW50ZXJuYWxzIG9mIHRoZSBkbWFfcmVzdiBvYmplY3QuCgpT
aWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQs
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5j
IGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwppbmRleCBlNGEyMGEzYTVkMTYuLmZjMTI0
NDU3YmEyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCkBAIC0xMDg2LDcgKzEwODYsNiBAQCBpbnQgdHRt
X2JvX3dhaXQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKIAlpZiAodGltZW91dCA9PSAw
KQogCQlyZXR1cm4gLUVCVVNZOwogCi0JZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2UoYm8tPmJhc2Uu
cmVzdiwgTlVMTCk7CiAJcmV0dXJuIDA7CiB9CiBFWFBPUlRfU1lNQk9MKHR0bV9ib193YWl0KTsK
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
