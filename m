Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B67746BB5D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FF5861EAF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 608C662167; Tue,  7 Dec 2021 12:35:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68D0A62D1F;
	Tue,  7 Dec 2021 12:35:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 594B662172
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3E77061ECD; Tue,  7 Dec 2021 12:34:37 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 8D99762D1A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:33 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id c4so29117282wrd.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=xR1nHIQR+HY5rurJTXhG523nepCCoi6AKz+ZxgPV9e4=;
 b=NyRHc2dOyMR8UYFZOds4WJULS6HB3ElXGKZ69Du75Uu7X8lwJw2c6YS3Lqqq76LaSo
 5g6ZRF6UN306GmoUH+2742aTkbVh4r/vdQkJ/GoIJ6d0HxpzBKH2FvxpborgKrRgsnis
 +en0SrdQGibK0Muu/NinBnCEBdqIvrBy5RthG7C/nwoGVP2FT7rjDk/9sjqnDGdES/Hk
 zYbsZH3yTb/6wjSXkDTkQKJMAJBt/aEyd5UnbR7jc+sUE7ySksV+2a8M7HH1K47RG6zA
 V+g/WWigMHFMNG7jdv0gJIt23gBLif/PjFswpFdWWYr9m7vkL7371FvkYilGiWQDYj1D
 Uw+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xR1nHIQR+HY5rurJTXhG523nepCCoi6AKz+ZxgPV9e4=;
 b=2gEkaIazdOiRxRZgieGpDFrf9oTjSXj3DoDj3CtiYwYEs2R3b97Rh5qwPHFyKLe2zI
 9tVaDDYzQoHoVR/uz3QUlrwli521uwISEfrUySDcAdD3+3uM134FDF7jE39wk9+U5RHb
 qvNJhzgo9xDDAPiVUF4fOvsI2068JGKoWoImUVmileLBLpyeg4EpwSo/OUMjd8DDa8i/
 ezY4v0UKVYkxiSYRPFmDURzIQmxSK3hhb66ALH+bLjo+4OALUFDaoXpYY319ditR8Vym
 +MD7rEye+JSN6fse00pr3FTNloUVpVzMf9hj2xSf5iZCOigeTDJ9S/7NnOzm+CXLaAGt
 NCfA==
X-Gm-Message-State: AOAM530ULTOlFtipxJ8hKrzOxSU2OudJrrpQfrMjdc81c4JUQJo60rrh
 V7u4NJXKUTsUkX4weYQup3ibH800AJwnaQ==
X-Google-Smtp-Source: ABdhPJy4tl8FIQpZCC9417zbGijuKU9nqOQh49XTjL+wYdTPclCUj4l3tT+GEq1uPihLl6SujlSYbQ==
X-Received: by 2002:adf:cc91:: with SMTP id p17mr51127729wrj.589.1638880472551; 
 Tue, 07 Dec 2021 04:34:32 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:32 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:34:02 +0100
Message-Id: <20211207123411.167006-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 15/24] drm: support more than one write
 fence in drm_gem_plane_helper_prepare_fb
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

VXNlIGRtYV9yZXN2X2dldF9zaW5nbGV0b24oKSBoZXJlIHRvIGV2ZW50dWFsbHkgZ2V0IG1vcmUg
dGhhbiBvbmUgd3JpdGUKZmVuY2UgYXMgc2luZ2xlIGZlbmNlLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYyB8IDE4ICsrKysrKystLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCmluZGV4IGMzMTg5YWZlMTBjYi4uOTMzOGRkYjdl
ZGZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCkBAIC0xNDMsMjUg
KzE0MywyMSBAQAogICovCiBpbnQgZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9mYihzdHJ1
Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUpCiB7Ci0J
c3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwogCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2Jq
OwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCWludCByZXQ7CiAKIAlpZiAoIXN0YXRlLT5m
YikKIAkJcmV0dXJuIDA7CiAKIAlvYmogPSBkcm1fZ2VtX2ZiX2dldF9vYmooc3RhdGUtPmZiLCAw
KTsKLQlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+cmVzdiwgZmFsc2UpOwotCWRt
YV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7Ci0JCS8qIFRP
RE86IEN1cnJlbnRseSB0aGVyZSBzaG91bGQgYmUgb25seSBvbmUgd3JpdGUgZmVuY2UsIHNvIHRo
aXMKLQkJICogaGVyZSB3b3JrcyBmaW5lLiBCdXQgZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3Bs
YW5lKCkgc2hvdWxkCi0JCSAqIGJlIGNoYW5nZWQgdG8gYmUgYWJsZSB0byBoYW5kbGUgbW9yZSBm
ZW5jZXMgaW4gZ2VuZXJhbCBmb3IKLQkJICogbXVsdGlwbGUgQk9zIHBlciBmYiBhbnl3YXkuICov
Ci0JCWRtYV9mZW5jZV9nZXQoZmVuY2UpOwotCQlicmVhazsKLQl9Ci0JZG1hX3Jlc3ZfaXRlcl9l
bmQoJmN1cnNvcik7CisJcmV0ID0gZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihvYmotPnJlc3YsIGZh
bHNlLCAmZmVuY2UpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CiAKKwkvKiBUT0RPOiBkcm1f
YXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoKSBzaG91bGQgYmUgY2hhbmdlZCB0byBiZSBhYmxl
CisJICogdG8gaGFuZGxlIG1vcmUgZmVuY2VzIGluIGdlbmVyYWwgZm9yIG11bHRpcGxlIEJPcyBw
ZXIgZmIuCisJICovCiAJZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRlLCBmZW5j
ZSk7CiAJcmV0dXJuIDA7CiB9Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
