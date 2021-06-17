Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FD23AB252
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A90E7634FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 545A466756; Thu, 17 Jun 2021 11:17:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C537763CA0;
	Thu, 17 Jun 2021 11:17:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E8A1E61A4D
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C1FB863509; Thu, 17 Jun 2021 11:16:10 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by lists.linaro.org (Postfix) with ESMTPS id 5F59563500
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:08 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id i13so3441722edb.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0rYVC8GXBvPHta5OQekqQaFTSxF/VrC5pz+9u8ViMZg=;
 b=Zm8qe0yqyJBtIYxx3yuZlWXCq7HjCj79xa6qOLkjBQ0ny6jlNUSeRumUFr5yLlW/eP
 t9MIUL1gtlbyyxx5LXxBlTZxfwwCCCRJwLlMmyObBGpNu3dVMAIFP6DFnEN1umkjFLk1
 qfBqYYLAaTa6qXninH7jyFhqCqABPSCaTAKpLqKJWduNzIApctuezdpbHyUBe7ESPOc1
 IsXe8/WJgv+CmJpRPzoGj5hr+paO4xWKnrd9GSqdBWGnPVXC5LP4uSSZ06djxIz4Ax6w
 qRhm2Urf5kYXD64HOixSMCdg+hXtC8lsvFXkkW+9u2EIz3pftnahDxTTUGp45qwQP1Bl
 TdxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0rYVC8GXBvPHta5OQekqQaFTSxF/VrC5pz+9u8ViMZg=;
 b=QriPTYK9/ZfBSG2XJ7o+x8fRUMYFZCsrc6EDgCbK4GH0dWuzZNZdSK4XtR3Fw1s2c7
 DnmLYuPHaz7p4xXPznLLuUmdL//fJULqMS2SAkeC41PeJKD1PMB2iwyq0x0caoOz4Lyo
 5OefLFXKMaL/RL1a14SRi05fR6NtYVQ6I8Hk2mQ7FKZ7vn6f8uXc4QD27FoE7high73P
 aPNzNYzq/j8nodFFO5Vuj3qqlM43+QI5e6bi4tNFJwEoYgJ/f5IggSVRadMF2Hd+HAGL
 wqXtHc3+i7jX5o80B/JmUDRi81oDqlOGhJfPHMhPkM27bG4d+i02o0nW1WRfv6iup3Np
 Ui2A==
X-Gm-Message-State: AOAM531i/piiT5ZEY8IdjCG5BGDRSw7dVOnC8EIUH7Sa+PdwWaaJxYQV
 LO3O7tnbVcU7J+ytyumrGao=
X-Google-Smtp-Source: ABdhPJwMPY8wEtDDMVVnoIX7OfvIzuomuMkBFiT0fIuMQDUKJLRIJm09Yp32F0OTRw91VHHDmWIhVw==
X-Received: by 2002:a05:6402:1713:: with SMTP id
 y19mr5689376edu.346.1623928567467; 
 Thu, 17 Jun 2021 04:16:07 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:07 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:51 +0200
Message-Id: <20210617111558.28486-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/16] drm/ttm: use the new iterator in
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
ZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwppbmRleCBkYjUzZmVjY2E2OTYuLjE1ZWRiMzA4
ZTVhOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCkBAIC0yNTYsMTkgKzI1NiwxMSBAQCBzdGF0aWMgaW50
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
