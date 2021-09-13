Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E7D408C52
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:17:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AB2863523
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:17:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EF3A666C2F; Mon, 13 Sep 2021 13:17:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B522063223;
	Mon, 13 Sep 2021 13:17:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 53BBB618BC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2870F61C55; Mon, 13 Sep 2021 13:17:26 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 3DC3A63261
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:23 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id t18so14700722wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AQf+EG1LqOYQqT40zZYv5ISTQOpig8QPja/gK5mvSkk=;
 b=o0FiPQTwN18HlAj3IMAzdpZhNgUkwaOWPzbtIBRFMInNJnGiYMOctX9OPqVk1DHHO9
 SKmb4SZfoQ4HOdQdPSOiojjB8PWUv4WR6fD8Q1FdZYGF3ah0eMfncDKfOk4qD/h7uCci
 HcT7QlmrhxFCtre14LVVCzq+5DpaCtTHb5crySwbNhzxiZ0Z18kXpYA5tTuFgGddeoJ9
 SP4RZGJYTxpm/Xyi8pakNrIgAqDih5R7gcNHjtOU1KVvi/yjTUQNBpU6ov9jb3wfzYAg
 KckU3VW/kwn85Ht0hLjiRhezQ9wf3ZTuUzrzQjiDQWDU+JUPyARlVMjLNEVzSLgtft2Z
 gdeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AQf+EG1LqOYQqT40zZYv5ISTQOpig8QPja/gK5mvSkk=;
 b=cVIK7bOMi1uTGVEPB2jmjjao3KMD+nxVkAoWajMYkamE7Z/+QlougR5MjTpbVK27+X
 /XribD7b+Jt3uoXAP81O+xZ4EcEXULHPO2wVWF4wnOwH/FqCeimzQR8BnDoUGqS4/afk
 UkCCoHMLQfDKLyMdudJ2mp/oIwFwFmvn7koBjgzNehCNew0ytRmlknI+iOlHIfaOF2cb
 Yy+FH4lodbiAPWfJKhJN7EjP7fOMkw9oGyEe59Fr2zcBIDs7tlS2MwGCTV8IJRCow4zU
 s/VGdsWKJLtuhbZobzrCxwCgxr6RZXR3gut8+fbytfFP66DEtguCfQqv7zz06laRCqGK
 EqLA==
X-Gm-Message-State: AOAM530ggmlNVzP7vSLk6XJG1Ik1VuzN7n+mO0sIWpVHdAO3SnewbAND
 2/FuELj4BM1onyR8YK3VauULvFYVgVuaGhEQ
X-Google-Smtp-Source: ABdhPJyVv83AoFCYbid5KVzm+8jM4rad/1rkOdsJV57v03IVN4TJUfiogyz91xsQU0YnKxNdMe/pUA==
X-Received: by 2002:a5d:4e47:: with SMTP id r7mr12627007wrt.417.1631539042306; 
 Mon, 13 Sep 2021 06:17:22 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:21 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:48 +0200
Message-Id: <20210913131707.45639-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 07/26] drm/ttm: use the new iterator in
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
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
