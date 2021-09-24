Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 785C4416CC1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 09:18:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9042161A43
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 07:18:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7CC85617D8; Fri, 24 Sep 2021 07:18:49 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3C1F62079;
	Fri, 24 Sep 2021 07:18:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4080C607A0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 07:18:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3C89A609C0; Fri, 24 Sep 2021 07:18:08 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 16860609C0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 07:18:06 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id t8so24470464wri.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 00:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zdiCR57I2VQ9UbAgMh1ATN9FWtSQnQ+P4kUe0ofzWJM=;
 b=WspNFDBd3YguRCkegjfpIkoKi4mAXUIwY99A+hOeTdLBMvPRUA9/jI58DgAO/njnJY
 ii/ubXUaX2Qn8rRaIyWHkgcv8Kkwiw2ZK1z9c4a8WgZBD/Aqp1vzvUkYPlHE02QtcLqA
 +Jv6C15obv9SgvSg/+Kw/S17D+QfEOaCxsBA1H88TKwIwKQ05a7r8JHgqaGiKgGWiDIw
 tg357eFJuakgqnK87Fh7KGLUVQO/gENGj7NJi5QSFNUliujrUKjxhaqA9+V6gGjp4MG+
 BflL7igpt/0w98+v14C/TwblWBJyW2n/PVOkTn+IITMcrj5MRHf+pfOiQkDsCmCiciRs
 Yjgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zdiCR57I2VQ9UbAgMh1ATN9FWtSQnQ+P4kUe0ofzWJM=;
 b=5IkuEoIiDLUqPgcLYD3Xf99fC6y5EAXcHNZt20LmjCWlTthpCoaEtYZB4haRz46k4j
 gySLB8TP0HtObfxq5B1//ORsI/kKiwnK2jJciOepSZkDl1GdGLHj86/pG599pZoAtngo
 nKSIp1rkfmSgsboDML1zV7RY7TG7WlOvFs+QUwXJFedCCMSlwzu3PxSeV5PgMqTRm9kc
 g37MP8hEIZqz/L9M/OLj0AmAgQIBHiugtgUaU6FgiN+rchABiCuDAN9A3Q5Ufd+TrabU
 p6WNI0gUBwQ8YIAWBr/Amqru5euycdbXCq2Osa3LTafRDKq9kyiRCHbfx6tsOuRg6fEm
 SKmw==
X-Gm-Message-State: AOAM530L9mJMUX46mvrs530gfYPKB90I4I/yu/b/MPbA0KwWaNFqiGR7
 yqo2XQNBsUm0cvoGinfiPoU=
X-Google-Smtp-Source: ABdhPJztLdLXtRY+dHAnQxKC62ECEE/JQBUNN3kIlTaempf7aLIH0KHkHYPSRCQaVQiQyzq2faqTlA==
X-Received: by 2002:adf:cf04:: with SMTP id o4mr9280410wrj.352.1632467885212; 
 Fri, 24 Sep 2021 00:18:05 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 b7sm9200070wrm.9.2021.09.24.00.18.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 00:18:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, etnaviv@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Date: Fri, 24 Sep 2021 09:17:59 +0200
Message-Id: <20210924071759.22659-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924071759.22659-1-christian.koenig@amd.com>
References: <20210924071759.22659-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 4/4] drm/etnaviv: use dma_resv_describe
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
Cc: christian.gmeiner@gmail.com, linux+etnaviv@armlinux.org.uk, sean@poorly.run,
 robdclark@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SW5zdGVhZCBvZiBkdW1waW5nIHRoZSBmZW5jZSBpbmZvIG1hbnVhbGx5LgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMgfCAyNiArKysrKysrLS0tLS0tLS0tLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMKaW5kZXggMGVlYjMzZGUyZmY0Li4z
MDRiMDA2ZTg2YmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZf
Z2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwpAQCAtNDI1
LDM2ICs0MjUsMjQgQEAgaW50IGV0bmF2aXZfZ2VtX3dhaXRfYm8oc3RydWN0IGV0bmF2aXZfZ3B1
ICpncHUsIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAogfQogCiAjaWZkZWYgQ09ORklHX0RF
QlVHX0ZTCi1zdGF0aWMgdm9pZCBldG5hdml2X2dlbV9kZXNjcmliZV9mZW5jZShzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZSwKLQljb25zdCBjaGFyICp0eXBlLCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pCi17
Ci0Jc2VxX3ByaW50ZihtLCAiXHQlOXM6ICVzICVzIHNlcSAlbGx1XG4iLCB0eXBlLAotCQkgICBm
ZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpLAotCQkgICBmZW5jZS0+b3BzLT5nZXRf
dGltZWxpbmVfbmFtZShmZW5jZSksCi0JCSAgIGZlbmNlLT5zZXFubyk7Ci19Ci0KIHN0YXRpYyB2
b2lkIGV0bmF2aXZfZ2VtX2Rlc2NyaWJlKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1
Y3Qgc2VxX2ZpbGUgKm0pCiB7CiAJc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqZXRuYXZpdl9v
YmogPSB0b19ldG5hdml2X2JvKG9iaik7CiAJc3RydWN0IGRtYV9yZXN2ICpyb2JqID0gb2JqLT5y
ZXN2OwotCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZTsKIAl1bnNpZ25lZCBsb25nIG9mZiA9IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFf
bm9kZSk7CisJaW50IHI7CiAKIAlzZXFfcHJpbnRmKG0sICIlMDh4OiAlYyAlMmQgKCUyZCkgJTA4
bHggJXAgJXpkXG4iLAogCQkJZXRuYXZpdl9vYmotPmZsYWdzLCBpc19hY3RpdmUoZXRuYXZpdl9v
YmopID8gJ0EnIDogJ0knLAogCQkJb2JqLT5uYW1lLCBrcmVmX3JlYWQoJm9iai0+cmVmY291bnQp
LAogCQkJb2ZmLCBldG5hdml2X29iai0+dmFkZHIsIG9iai0+c2l6ZSk7CiAKLQlkbWFfcmVzdl9p
dGVyX2JlZ2luKCZjdXJzb3IsIHJvYmosIHRydWUpOwotCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNl
X3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7Ci0JCWlmIChkbWFfcmVzdl9pdGVyX2lzX2V4Y2x1
c2l2ZSgmY3Vyc29yKSkKLQkJCWV0bmF2aXZfZ2VtX2Rlc2NyaWJlX2ZlbmNlKGZlbmNlLCAiRXhj
bHVzaXZlIiwgbSk7Ci0JCWVsc2UKLQkJCWV0bmF2aXZfZ2VtX2Rlc2NyaWJlX2ZlbmNlKGZlbmNl
LCAiU2hhcmVkIiwgbSk7Ci0JfQotCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOworCXIgPSBk
bWFfcmVzdl9sb2NrKHJvYmosIE5VTEwpOworCWlmIChyKQorCQlyZXR1cm47CisKKwlkbWFfcmVz
dl9kZXNjcmliZShyb2JqLCBtKTsKKwlkbWFfcmVzdl91bmxvY2socm9iaik7CiB9CiAKIHZvaWQg
ZXRuYXZpdl9nZW1fZGVzY3JpYmVfb2JqZWN0cyhzdHJ1Y3QgZXRuYXZpdl9kcm1fcHJpdmF0ZSAq
cHJpdiwKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
