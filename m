Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D94382F45
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 16:14:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 170C560EE1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 14:14:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9E44A61170; Mon, 17 May 2021 14:14:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BA2061009;
	Mon, 17 May 2021 14:14:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 19FF960B57
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 11DE460B8C; Mon, 17 May 2021 14:11:43 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by lists.linaro.org (Postfix) with ESMTPS id AF06460B8D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:40 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id b25so9453486eju.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 07:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W11mXKWcsgX7hWec6U/7bPN1TKPKud+OdiigSRcXfK8=;
 b=He0km0T8PG5bF9jFbUshFNXZUiPiReALyoCGvydRtBKi5Z8+z2nuJJP7s7j7lIcTRF
 yTYnr3Tnu2s4KPwoKKcs16/+TVSOZxuy0CIQjqk3hm9GuEcAL6EsyWu15Zf/b1CdRbyV
 wn/YQOUUw5rG5FrwR9A5Le+L8LoVXNO5EQBky4qX0D5z2YPygvgedasn7LddlZbhzfNH
 9mw+gh3rOdNMGQ/z78dE16Xo/V3+vdcFS0U3zWrcXgt3/8HFi3Rvb0Yv5vagrK4PjToP
 Pbdijzq7OoopKdRax35zB9yAJkbvaNnFwyMx3yNfcbRNaQJFx6DOWSOI59N7Eu+I9GJb
 aHWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W11mXKWcsgX7hWec6U/7bPN1TKPKud+OdiigSRcXfK8=;
 b=dj+F596o2wVp+NFt6/xUtHqkPA2awyoOr7qa8rqRFtw8T4WCUfHsuWpsZ/Pu7XxNTc
 ZI6BukTVphafxdUgmnlXzEMo6v7DOXw3iJ1GIeMkgZ2FylvOHzCo22UrZiuS2WJK+0qA
 +eI+9RVOZ2TTx/Pnog8YV4RTiNdcje0ulbgEM8ZVmctWyH3bdsdHCMjz8ZUWyMZESftH
 5ctyKi+K876zT7+vDre7r2DSiCnrSFwJxZAwN8kKCaKtokPPHSZ3PZKtSRg3nceli5Ed
 EA1muVwxuruu/79qZVkp/UtkdDJ2v2fiRINSp4WN7Eisti8SEcG/JQxIoIAuyy4kkmyK
 36sA==
X-Gm-Message-State: AOAM532fJiRFO5vndhqeXYdMh5WN7oKH2e7m5A+bOad3Sn8YUsE8vTXa
 kVD52qlEZg558EJIQw2mTvE=
X-Google-Smtp-Source: ABdhPJzRWeSaDKKkFZR0BZaXUbSfYv/mAUa7X5vF2DL/3XGxR7b0Ar6NJ26P4Ii0eSpaXEbofkUpNQ==
X-Received: by 2002:a17:907:161e:: with SMTP id
 hb30mr117019ejc.360.1621260699812; 
 Mon, 17 May 2021 07:11:39 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:1df4:c5b6:b8fd:3c4b])
 by smtp.gmail.com with ESMTPSA id b9sm2419624edt.71.2021.05.17.07.11.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 07:11:39 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 17 May 2021 16:11:28 +0200
Message-Id: <20210517141129.2225-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210517141129.2225-1-christian.koenig@amd.com>
References: <20210517141129.2225-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/11] drm/i915: also wait for shared dmabuf
 fences before flip
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QWRkIGRlcGVuZGVuY2llcyBmb3IgaW1wbGljaXQgc3luYyB0byBzaGFyZWQgZmVuY2VzIGFzIHdl
bGwgdG8gaTkxNS4KClRoaXMgd2FzIGxlbmd0aHkgZGlzY3Vzc2VkIGFib3V0IGZvdXIgeWVhcnMg
YWdvLCBidXQgc2luY2UgdGhlIHdvcmthcm91bmQgd2UKZGlkIGluIGFtZGdwdSBpcyBub3cgY2F1
c2luZyBtb3JlIGFuZCBtb3JlIHByb2JsZW1zIHdlIG5lZWQgdG8gZml4IHRoaXMKcHJvcGVybHku
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAx
NiArKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggOWI5YjUz
OGIwY2I2Li4xOTdiNTRmZGVmYTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCkBAIC0xMDY0MCw2ICsxMDY0MCw3IEBAIGludGVsX3ByZXBhcmVfcGxh
bmVfZmIoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLAogCWk5MTVfZ2VtX29iamVjdF9mbHVzaF9m
cm9udGJ1ZmZlcihvYmosIE9SSUdJTl9ESVJUWUZCKTsKIAogCWlmICghbmV3X3BsYW5lX3N0YXRl
LT51YXBpLmZlbmNlKSB7IC8qIGltcGxpY2l0IGZlbmNpbmcgKi8KKwkJc3RydWN0IGRtYV9yZXN2
X2N1cnNvciBjdXJzb3I7CiAJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCiAJCXJldCA9IGk5
MTVfc3dfZmVuY2VfYXdhaXRfcmVzZXJ2YXRpb24oJnN0YXRlLT5jb21taXRfcmVhZHksCkBAIC0x
MDY1Niw2ICsxMDY1NywyMSBAQCBpbnRlbF9wcmVwYXJlX3BsYW5lX2ZiKHN0cnVjdCBkcm1fcGxh
bmUgKl9wbGFuZSwKIAkJCQkJCSAgIGZlbmNlKTsKIAkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwog
CQl9CisKK3JldHJ5OgorCQlkbWFfcmVzdl9mb3JfZWFjaF9zaGFyZWQob2JqLT5iYXNlLnJlc3Ys
ICZjdXJzb3IsIGZlbmNlKSB7CisJCQlpZiAoIShjdXJzb3IudXNhZ2UgJiBETUFfUkVTVl9VU0FH
RV9XUklURSkpCisJCQkJY29udGludWU7CisKKwkJCWlmICghZG1hX2ZlbmNlX2dldF9yY3UoZmVu
Y2UpKQorCQkJCWdvdG8gcmV0cnk7CisKKwkJCWFkZF9ycHNfYm9vc3RfYWZ0ZXJfdmJsYW5rKG5l
d19wbGFuZV9zdGF0ZS0+aHcuY3J0YywKKwkJCQkJCSAgIGZlbmNlKTsKKwkJCWRtYV9mZW5jZV9w
dXQoZmVuY2UpOworCQl9CisKKwogCX0gZWxzZSB7CiAJCWFkZF9ycHNfYm9vc3RfYWZ0ZXJfdmJs
YW5rKG5ld19wbGFuZV9zdGF0ZS0+aHcuY3J0YywKIAkJCQkJICAgbmV3X3BsYW5lX3N0YXRlLT51
YXBpLmZlbmNlKTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
