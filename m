Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B1576406875
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:27:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3600862630
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:27:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AE7D66325F; Fri, 10 Sep 2021 08:27:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44E0969CEE;
	Fri, 10 Sep 2021 08:27:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B533662CF6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B016363631; Fri, 10 Sep 2021 08:27:08 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 2F65264AE2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:06 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id m9so1469514wrb.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AQf+EG1LqOYQqT40zZYv5ISTQOpig8QPja/gK5mvSkk=;
 b=KWztHsb21w2it84cyHjC8FeFPLylec8BzPNdnnOAyMTcQFQvrL3Iphclm4QJJZDNY3
 USh7eCwk5QhBrruugl+vnG0zMSXsO13CTBLDKslniTxOaJVtfYs7rKOKsYErSqvPcjD4
 TB/wXN0YbSOQ+jJolf3+e/xGFvb9UzZ4renfdtmpogVZD1t2tDKSbOw7Eic3v95/zTYT
 ksVo+L5+rZQLvXxkicZlQmoPI3Cjb4segzer8T6r6MsO1LAJMapEIRAAqBov5nmivbbn
 r7RfobGfU50paoaXQ3qhW9fD4cxFkPOOkM1wprcyGTEMWGK404bnGwZ7L+wvx76UF0AX
 6tAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AQf+EG1LqOYQqT40zZYv5ISTQOpig8QPja/gK5mvSkk=;
 b=ZSZaON0i11VA+8JfZQ40a5wZ7qHqbDkDO/ewg3VKy25PzEAtjdguFSfMQ4KACVU3BG
 EgDp1MrFSzE5InNKU5k4+hPzbIPM/CvBSbT+tfImVNpX2HknLblObSvBJ8S5caiN+VYj
 z7MQlugnvK52lr3h+7YE9C4xZotgLQzKAWH0ReSMhXxANDXxHO+4IyNMSDHNhm2Nse20
 1XrRqxN5d/ScPDNKIUk3CBQXTti22aCKjHXRSnjtx/7jskTwYwx5TMy6xSrQ1QAWtdEz
 QDYZHwipWnKYi/tO2tZZyBHOZL/siH9hYtldqt0vMlfclG23VfGl3qM2hnH9HP/0HUBh
 Rgaw==
X-Gm-Message-State: AOAM533cqkS0FcVNtfnq7e76P46WXWgCN0gdPsbTqtdsvuNrX8LBRSee
 07mYPKHpRu8Vi0E1XYeDVitJtRNhHwWnGt+e
X-Google-Smtp-Source: ABdhPJy68Z8lYN7Y274ina8jZFGUbeYevbUiZ29MIqcoqNjsNlZswRucR0lzTahDGThht/diqI0B7w==
X-Received: by 2002:adf:eb4c:: with SMTP id u12mr8424261wrn.111.1631262424189; 
 Fri, 10 Sep 2021 01:27:04 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:27:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:49 +0200
Message-Id: <20210910082655.82168-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/14] drm/ttm: use the new iterator in
 ttm_bo_flush_all_fences
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

VGhpcyBpcyBwcm9iYWJseSBhIGZpeCBzaW5jZSB3ZSBkaWRuJ3QgZXZlbiBncmFiZWQgYSByZWZl
cmVuY2UgdG8gdGhlCmZlbmNlcy4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5j
IHwgMTIgKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxMCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jIGIv
ZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwppbmRleCAwYTMxMjc0MzZmNjEuLjVkZDBjM2Rm
ZWMzYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCkBAIC0yNjksMTkgKzI2OSwxMSBAQCBzdGF0aWMgaW50
IHR0bV9ib19pbmRpdmlkdWFsaXplX3Jlc3Yoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykK
IHN0YXRpYyB2b2lkIHR0bV9ib19mbHVzaF9hbGxfZmVuY2VzKHN0cnVjdCB0dG1fYnVmZmVyX29i
amVjdCAqYm8pCiB7CiAJc3RydWN0IGRtYV9yZXN2ICpyZXN2ID0gJmJvLT5iYXNlLl9yZXN2Owot
CXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmb2JqOworCXN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vy
c29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCWludCBpOwogCiAJcmN1X3JlYWRfbG9j
aygpOwotCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChyZXN2KTsKLQlmZW5jZSA9IGRtYV9y
ZXN2X2V4Y2xfZmVuY2UocmVzdik7Ci0JaWYgKGZlbmNlICYmICFmZW5jZS0+b3BzLT5zaWduYWxl
ZCkKLQkJZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcoZmVuY2UpOwotCi0JZm9yIChpID0g
MDsgZm9iaiAmJiBpIDwgZm9iai0+c2hhcmVkX2NvdW50OyArK2kpIHsKLQkJZmVuY2UgPSByY3Vf
ZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKLQorCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNl
X3VubG9ja2VkKHJlc3YsICZjdXJzb3IsIHRydWUsIGZlbmNlKSB7CiAJCWlmICghZmVuY2UtPm9w
cy0+c2lnbmFsZWQpCiAJCQlkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZyhmZW5jZSk7CiAJ
fQotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
