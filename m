Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E7B408C7E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:19:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EEA7D69CDD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:19:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9F9DA69CCD; Mon, 13 Sep 2021 13:18:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8D4269D95;
	Mon, 13 Sep 2021 13:18:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9511169CEC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:18:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5193A61016; Mon, 13 Sep 2021 13:17:48 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id E42E869CCC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:45 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id i23so14677127wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FH+1Y8etpSt7hl5BvOARvtVNTQnEKf9GJ8OSstB4GW0=;
 b=IRBEB/Z+uCUNNkQZrfkgIhbJIwP2pgNtoD3UDZYc9GFrjVoQemzgAWzQdNEiefvCsz
 m+RqoK9rB+6LydBB1G3ol89TFYhzaY7Bb4sa64uo8qbrvDefpdvIsxUzX3ZIEfsThCA5
 ek5ExJ2wiqx56JaMtXcPYSTx/Aw4FNMYlT0j5MryEIkdVskf5OJfvtRNYw44LkB8l42t
 7XV3py4qEvmh+Y0Jgzrp887rBfbHzMqPUPHHqZqofhp113bYW6ArPbRTfgWGfoL2weGh
 cohH5f3H0eB9Amw5/roZlGNzi7lIWlKHktTiOqbBZB2OaTE0gVdDa81MH8PvGeYLgdKP
 02Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FH+1Y8etpSt7hl5BvOARvtVNTQnEKf9GJ8OSstB4GW0=;
 b=vwD7wd9cC7DL11Iy8WHl6QZ+w+scG3g1Itim8K+Zmy5w8VnrpvYOgX9cAQfI4U3sO6
 nOB9/5rdgL1ZxOYfN7UA1I2oLCcJ1/DWqhQpwZuS3sOF0/l4aPArhuH8TVGL69sFqdIU
 +Mri2vz+35Ms4Z3nGRq5ULZcBxh6BJLeEYzIiYoMMfAJWcYgEPEOlKLEeADm5fz4g6i2
 aV/Dh+xR50eBLRVvVn2LJFic0VA90Zf4esQV+i6hcCYdNGhBsx4Ho1Uh781QRtvsKi0Q
 iNqX1iLEKS+9iX2tdo5zXmWkr8OenU+76Z+8HGXjzIUfI6X9KOtEUN5Ri8872z1hTjld
 +wcw==
X-Gm-Message-State: AOAM5311bX7vLlDlCLP0/9C5SGamECQ37z1c6BHiokA7NzaxDGWXm19s
 tDp4oi8i/zioGpXQMG1kKUS91Y2F9d8leqgE
X-Google-Smtp-Source: ABdhPJzDBDz9n7p6FviVglwiX9to5ht8Ev+V3kXammh1L6gotOGiN99UxVy/CWUMpe7mH0cAtrMT0A==
X-Received: by 2002:adf:8b52:: with SMTP id v18mr7251297wra.1.1631539065006;
 Mon, 13 Sep 2021 06:17:45 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:44 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:17:07 +0200
Message-Id: <20210913131707.45639-27-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 26/26] dma-buf: nuke
 dma_resv_get_excl_unlocked
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGV1cmVrYSwgdGhhdCdzIGZpbmFsbHkgbm90IHVzZWQgYW55IG1vcmUuCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oIHwgMjYgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKaW5kZXggNmY5YmI3ZTRjNTM4Li45
MGMxNWNiZTdkOTIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAorKysgYi9p
bmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKQEAgLTM3MCwzMiArMzcwLDYgQEAgZG1hX3Jlc3ZfZXhj
bF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKIAlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX2No
ZWNrKG9iai0+ZmVuY2VfZXhjbCwgZG1hX3Jlc3ZfaGVsZChvYmopKTsKIH0KIAotLyoqCi0gKiBk
bWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZCAtIGdldCB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0J3MK
LSAqIGV4Y2x1c2l2ZSBmZW5jZSwgd2l0aG91dCBsb2NrIGhlbGQuCi0gKiBAb2JqOiB0aGUgcmVz
ZXJ2YXRpb24gb2JqZWN0Ci0gKgotICogSWYgdGhlcmUgaXMgYW4gZXhjbHVzaXZlIGZlbmNlLCB0
aGlzIGF0b21pY2FsbHkgaW5jcmVtZW50cyBpdCdzCi0gKiByZWZlcmVuY2UgY291bnQgYW5kIHJl
dHVybnMgaXQuCi0gKgotICogUkVUVVJOUwotICogVGhlIGV4Y2x1c2l2ZSBmZW5jZSBvciBOVUxM
IGlmIG5vbmUKLSAqLwotc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2ZlbmNlICoKLWRtYV9yZXN2
X2dldF9leGNsX3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdiAqb2JqKQotewotCXN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlOwotCi0JaWYgKCFyY3VfYWNjZXNzX3BvaW50ZXIob2JqLT5mZW5jZV9leGNs
KSkKLQkJcmV0dXJuIE5VTEw7Ci0KLQlyY3VfcmVhZF9sb2NrKCk7Ci0JZmVuY2UgPSBkbWFfZmVu
Y2VfZ2V0X3JjdV9zYWZlKCZvYmotPmZlbmNlX2V4Y2wpOwotCXJjdV9yZWFkX3VubG9jaygpOwot
Ci0JcmV0dXJuIGZlbmNlOwotfQotCiAvKioKICAqIGRtYV9yZXN2X3NoYXJlZF9saXN0IC0gZ2V0
IHRoZSByZXNlcnZhdGlvbiBvYmplY3QncyBzaGFyZWQgZmVuY2UgbGlzdAogICogQG9iajogdGhl
IHJlc2VydmF0aW9uIG9iamVjdAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
