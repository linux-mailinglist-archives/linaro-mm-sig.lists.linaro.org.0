Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4EE4614A5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9B0362168
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7AC3760C0C; Mon, 29 Nov 2021 12:08:08 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2123562F9E;
	Mon, 29 Nov 2021 12:08:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BA3956216F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9661961A45; Mon, 29 Nov 2021 12:07:19 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 796EB60BA1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:16 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id a18so36285829wrn.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IRN4qp5Iqo3k44JzsPUytvzY07JybWV7N7oXbJsRX+E=;
 b=GNCy9OAidh99/qEk1zKxyw4ypwtKj8LdbT2qsAqoTvD4EFB+BauBwFE+qGkDlWqECB
 8TdYZiIKmH7NT3lkZw0ykvvAfRrkLuoG3bkjH4IIWaQH5veBzyS+4jxm6HTktp59r5Ij
 73IrqDDmcSL2Pznrd2yP23du5MKuhuw4bGgTdiYjf+g/aEabrozTJfTNPLEkmpQtJDLa
 y/eI5q51uizdJ58MlsovowQ3dD51AKQYK1eJMFFIcT2cgzqhYY9YnNDdpG+N3FW5A5rg
 Qpv/HqAY/ySZjMPLap699LVMY1n0yhuMcP8x1uUME4T4PrYc0AI+baPCYmgvztsE1GYf
 KILA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IRN4qp5Iqo3k44JzsPUytvzY07JybWV7N7oXbJsRX+E=;
 b=00Cy6WddrRn9R6qN6u/evh1gY1kfj4lHqXjnez9oy3kV8nJ3Zk9TDsr7ln/0iYfsXb
 QLVyhhsSlaltPtc51lNvNYAMYCdzHoNz+V879WnnudCURB/zxbeDsdK+c5oxDHRDtSzt
 WWSWZRL00oIvUATQ3OESZ0wDc8ULhkVkJXcaP/CNCdAvkOLQIa6pEGdH7GyOPizWZJYO
 Oo6+1LPN9uUCRd8/meOfd7MqOdxuumPiGzc7LG3aA50pcZQxmLC2n70k1P9uMHTX+wDv
 gDOZe7RAS36RSmr2z2BxqCLx9GIjvECAaC9D4WVto6j0Tw2MbrIK3G7yakshISha64O+
 lJlw==
X-Gm-Message-State: AOAM5325C5xYDggsRdYzU1RAFB1pourG7znkEct9pNf9QPWJVi3pmHwp
 qu/rQR1NKxAnAYOlzxmGBB534KBTvQI=
X-Google-Smtp-Source: ABdhPJyBF+tlFX4VwvgGat3TR86DCM4R3QSZ1WW22O70tCZn2dZIPBlsIfogSx0kdHmK5dtWChU2+A==
X-Received: by 2002:a05:6000:2a3:: with SMTP id
 l3mr33033215wry.415.1638187635333; 
 Mon, 29 Nov 2021 04:07:15 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:14 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:43 +0100
Message-Id: <20211129120659.1815-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/28] drm/vmwgfx: stop using
 dma_resv_excl_fence
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

SW5zdGVhZCB1c2UgdGhlIG5ldyBkbWFfcmVzdl9nZXRfc2luZ2xldG9uIGZ1bmN0aW9uLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3Jlc291cmNlLmMgfCA2ICsrKystLQog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9yZXNvdXJjZS5jIGIvZHJpdmVycy9n
cHUvZHJtL3Ztd2dmeC92bXdnZnhfcmVzb3VyY2UuYwppbmRleCA4ZDFlODY5Y2MxOTYuLjIzYzNm
YzJjYmYxMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfcmVzb3Vy
Y2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9yZXNvdXJjZS5jCkBAIC0x
MTY4LDggKzExNjgsMTAgQEAgaW50IHZtd19yZXNvdXJjZXNfY2xlYW4oc3RydWN0IHZtd19idWZm
ZXJfb2JqZWN0ICp2Ym8sIHBnb2ZmX3Qgc3RhcnQsCiAJCXZtd19ib19mZW5jZV9zaW5nbGUoYm8s
IE5VTEwpOwogCQlpZiAoYm8tPm1vdmluZykKIAkJCWRtYV9mZW5jZV9wdXQoYm8tPm1vdmluZyk7
Ci0JCWJvLT5tb3ZpbmcgPSBkbWFfZmVuY2VfZ2V0Ci0JCQkoZG1hX3Jlc3ZfZXhjbF9mZW5jZShi
by0+YmFzZS5yZXN2KSk7CisKKwkJLyogVE9ETzogVGhpcyBpcyBhY3R1YWxseSBhIG1lbW9yeSBt
YW5hZ2VtZW50IGRlcGVuZGVuY3kgKi8KKwkJcmV0dXJuIGRtYV9yZXN2X2dldF9zaW5nbGV0b24o
Ym8tPmJhc2UucmVzdiwgZmFsc2UsCisJCQkJCSAgICAgICZiby0+bW92aW5nKTsKIAl9CiAKIAly
ZXR1cm4gMDsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
