Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 71396979A8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 14:40:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 989016187B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 12:40:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 880686187F; Wed, 21 Aug 2019 12:40:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F231561846;
	Wed, 21 Aug 2019 12:36:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9596F61828
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:35:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8890B61841; Wed, 21 Aug 2019 12:35:36 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id B6CFD61828
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:31:52 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id f72so1923033wmf.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 05:31:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gEP1Eqz1ufX2Zh9MidlHV8n+9w6C1Ut7DiH3LFU9MtI=;
 b=GQ6hWO5QMvAkdp7QuT618K2Ug6vlptc1/yaYPdZb8/tbDXieMV4EzNnzSZColIcfet
 ipmdJk0FteJbp1NH4DuZQzG7e2Bo5rQ55mc4RIhP6JYJkSnXe+6oz2zc3mI94eOP8t3A
 G+cCqfhsa1BKA54zo8tTbV3EesQEDJVFxWqz2LMCDsRN7jtPs7Z0fSwMjNDNVZKQHDOT
 2dCpKlGq67d2yhWYUzNSGZdRLTn3I0fAS0AMIxnR4wuwfYa8QdfrgwUSd5kDNhNbVd69
 RrsjNbAEwZXlhjuaDOqMt6x1VdLVwspt+TCAi1s3P65obTQo9cB5gv+euPIsJgIPZCvF
 57xA==
X-Gm-Message-State: APjAAAWj5uZWmSaQJiergo9zteBSPjCS48cGY7mnZteG5QSEfRAWZgnf
 u1uDwSLi/fnc8JXDCAteoYumlqSQ
X-Google-Smtp-Source: APXvYqwx9pX44R+PFq43qthQnp/yMbCW+JvAOSh2ZSqYDCJ44j5cH765sJSCBDbSneJzpLWvbFGy1Q==
X-Received: by 2002:a05:600c:145:: with SMTP id
 w5mr5821281wmm.75.1566390711937; 
 Wed, 21 Aug 2019 05:31:51 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8189:dd33:a934:c4fa])
 by smtp.gmail.com with ESMTPSA id v3sm23084571wrq.34.2019.08.21.05.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 05:31:51 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Wed, 21 Aug 2019 14:31:40 +0200
Message-Id: <20190821123147.110736-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821123147.110736-1-christian.koenig@amd.com>
References: <20190821123147.110736-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 03/10] dma-buf: add dma_fence_array_recycle
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

VHJ5IHRvIHJlY3ljbGUgYW4gZG1hX2ZlbmNlX2FycmF5IG9iamVjdCBieSBkcm9wcGluZyB0aGUg
bGFzdApyZWZlcmVuY2UgdG8gaXQgd2l0aG91dCBmcmVlaW5nIGl0LgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KwogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaCAgIHwgIDEgKwogMiBmaWxlcyBjaGFu
Z2VkLCAyOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS1hcnJheS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jCmluZGV4IGU4
MmYzMDU1MWFhMS4uMzE0Y2YwZTg4MWQ5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jCkBA
IC0xODgsNiArMTg4LDMzIEBAIHZvaWQgZG1hX2ZlbmNlX2FycmF5X2luaXQoc3RydWN0IGRtYV9m
ZW5jZV9hcnJheSAqYXJyYXksIHU2NCBjb250ZXh0LAogfQogRVhQT1JUX1NZTUJPTChkbWFfZmVu
Y2VfYXJyYXlfaW5pdCk7CiAKKy8qKgorICogZG1hX2ZlbmNlX2FycmF5X3JldXNlIC0gZHVtbXkg
Zm9yIGRtYV9mZW5jZV9hcnJheV9yZWN5Y2xlCisgKi8KK3N0YXRpYyB2b2lkIGRtYV9mZW5jZV9h
cnJheV9yZXVzZShzdHJ1Y3Qga3JlZiAqa3JlZikKK3sKKwlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5
ICphcnJheSA9IGNvbnRhaW5lcl9vZihrcmVmLCB0eXBlb2YoKmFycmF5KSwKKwkJCQkJCSAgICAg
YmFzZS5yZWZjb3VudCk7CisKKwlXQVJOX09OX09OQ0UoIWxpc3RfZW1wdHkoJmFycmF5LT5iYXNl
LmNiX2xpc3QpKTsKK30KKworLyoqCisgKiBkbWFfZmVuY2VfYXJyYXlfdHJ5X3JldXNlIC0gdHJ5
IHRvIHJldXNlIGEgZG1hX2ZlbmNlX2FycmF5IG9iamVjdAorICogQGFycmF5OiBhcnJheSB3aGlj
aCB3ZSBzaG91bGQgdHJ5IHRvIHJldXNlCisgKgorICogVHJ5IHRvIGRyb3AgdGhlIGxhc3QgcmVm
ZXJlbmNlIHRvIGFuIGRtYV9mZW5jZV9hcnJheSBhbmQgc28gYWxsb3cgaXQgdG8gYmUKKyAqIHJl
dXNlZC4KKyAqCisgKiBSZXR1cm5zIHRydWUgaWYgdGhpcyB3YXMgdGhlIGxhc3QgcmVmZXJlbmNl
IHRoZW4gY2FsbGVyIGNhbiByZXVzZSB0aGUgYXJyYXkuCisgKiBJbiB0aGlzIGNhc2UgdGhlIGFy
cmF5IGlzIHJlc2V0IGludG8gYSBzdGF0ZSB3aGVyZSBpdCBjYW4gYmUgdXNlZCB3aXRoCisgKiBk
bWFfZmVuY2VfYXJyYXlfaW5pdCBhZ2Fpbi4KKyAqLworYm9vbCBkbWFfZmVuY2VfYXJyYXlfcmVj
eWNsZShzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheSkKK3sKKwlyZXR1cm4ga3JlZl9wdXQo
JmFycmF5LT5iYXNlLnJlZmNvdW50LCBkbWFfZmVuY2VfYXJyYXlfcmV1c2UpOworfQorCiAvKioK
ICAqIGRtYV9mZW5jZV9hcnJheV9mcmVlIC0gZnJlZSBhIGRtYV9mZW5jZV9hcnJheSBvYmplY3QK
ICAqIEBhcnJheTogdGhlIG9iamVjdCB0byBmcmVlCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS1hcnJheS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaAppbmRl
eCBiZTg1YzA2YjUyNGQuLjM1ZDFkMWU3YzkzYiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UtYXJyYXkuaAorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oCkBA
IC05Myw2ICs5Myw3IEBAIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmRtYV9mZW5jZV9hcnJheV9h
bGxvYyhpbnQgbnVtX2ZlbmNlcywKIAkJCQkJICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNl
cyk7CiB2b2lkIGRtYV9mZW5jZV9hcnJheV9pbml0KHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFy
cmF5LCB1NjQgY29udGV4dCwKIAkJCSAgdW5zaWduZWQgaW50IHNlcW5vLCBib29sIHNpZ25hbF9v
bl9hbnkpOworYm9vbCBkbWFfZmVuY2VfYXJyYXlfcmVjeWNsZShzdHJ1Y3QgZG1hX2ZlbmNlX2Fy
cmF5ICphcnJheSk7CiB2b2lkIGRtYV9mZW5jZV9hcnJheV9mcmVlKHN0cnVjdCBkbWFfZmVuY2Vf
YXJyYXkgKmFycmF5KTsKIAogLyoqCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
