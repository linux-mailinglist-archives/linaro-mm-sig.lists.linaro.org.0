Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D0E3A94FF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 10:27:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C0A26356E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 08:27:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E06F566716; Wed, 16 Jun 2021 08:27:23 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20EEF66518;
	Wed, 16 Jun 2021 08:27:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2519D606D6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 22CDE61A29; Wed, 16 Jun 2021 08:27:05 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id 12A0D606D6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:03 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id dj8so1542585edb.6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 01:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ND7KwC2J9bqQZCM3dXcypP939eYSZ8A7ifwwevA1684=;
 b=unqs/raZ1t5J4i0tVMb8sZRh9eQVDcU+0zh4oyD9beiUYRJFxM0B6pk7bdOaSRv6pz
 ALXYdvQLZ6aV6zWNTRTeW/y/XkFlFbPJ+A9EIeBHMK5zR760JaTihUqsgb8FecRjuHKc
 A2YBF7tB3TSkCzFPDmcwzeuZ9+OX1ZbomPk3SV/kzWe6/vS2HO3oOQGTTunKbCvELRoP
 K0cPNjiWbjaJHsNkgwAjFWGMGjoOoSQ+wfkoncM4ivOQWAqmL7fRrqMuWYYpVW+NvLKh
 daOem2XyiML/PNHiudTUm5y7hyCDxNpTx92LDOX7Yoxw6ingJzlFpSiPeDrHJOqSFQ+N
 40Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ND7KwC2J9bqQZCM3dXcypP939eYSZ8A7ifwwevA1684=;
 b=SblDUJL4bqkLJ870LvVCVW6S1ceATJ2l1fQWDsIsVoJeAYCjRKse5XY2t0J61i0DzX
 vJHlHUKsjtMDpCFMhsxJlXwi1KLNYDcuLJ1XhCFCIY/HpvVdszzQ4utokqUlHXQLPMZL
 ISqttiHKYdTkabszetHM/fRA5sigqyjjk1h1IXIRNykEpZ49Z1n+9ycOzoBt8JMM1C91
 0dt6hjveAPSL7uLydkDj2rIyaCBAum9XB3amiMGHffGZfbrV55Ou0t7u4xdRXRDcBM3Y
 SCO76GoROn3JzPkCOgKFET+vF0B8Afp8BTphsBfqLqBury0Dep83tEjUMSvAZ+vusgfL
 ILLw==
X-Gm-Message-State: AOAM533XWAtqMuPt0XwhQ2OUhfdQ31lSZeVOIPfhYdZLLmFxVL9wuq30
 Sbu8PK/vPzke3ORoS1r59MS6r4RE7uo=
X-Google-Smtp-Source: ABdhPJxW25RCxGgBd4Rp2bAkplsJ1rs8Gw3ttP6+9OZanazszl0LNYDwjaUxdetHpXeEzpHYeOcshQ==
X-Received: by 2002:a05:6402:520c:: with SMTP id
 s12mr2753961edd.304.1623832022213; 
 Wed, 16 Jun 2021 01:27:02 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8b88:17a4:582b:121f])
 by smtp.gmail.com with ESMTPSA id v7sm1152639edx.38.2021.06.16.01.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 01:27:01 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
Date: Wed, 16 Jun 2021 10:26:52 +0200
Message-Id: <20210616082655.111001-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210616082655.111001-1-christian.koenig@amd.com>
References: <20210616082655.111001-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 4/7] drm/nouveau: always wait for the
 exclusive fence
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RHJpdmVycyBhbHNvIG5lZWQgdG8gdG8gc3luYyB0byB0aGUgZXhjbHVzaXZlIGZlbmNlIHdoZW4K
YSBzaGFyZWQgb25lIGlzIHByZXNlbnQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUv
bm91dmVhdV9mZW5jZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVh
dV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jCmluZGV4
IDZiNDM5MTgwMzVkZi4uMDVkMGIzZWIzNjkwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
bm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91
dmVhdV9mZW5jZS5jCkBAIC0zNTgsNyArMzU4LDcgQEAgbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVj
dCBub3V2ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGUK
IAlmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3QocmVzdik7CiAJZmVuY2UgPSBkbWFfcmVzdl9l
eGNsX2ZlbmNlKHJlc3YpOwogCi0JaWYgKGZlbmNlICYmICghZXhjbHVzaXZlIHx8ICFmb2JqIHx8
ICFmb2JqLT5zaGFyZWRfY291bnQpKSB7CisJaWYgKGZlbmNlKSB7CiAJCXN0cnVjdCBub3V2ZWF1
X2NoYW5uZWwgKnByZXYgPSBOVUxMOwogCQlib29sIG11c3Rfd2FpdCA9IHRydWU7CiAKLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
