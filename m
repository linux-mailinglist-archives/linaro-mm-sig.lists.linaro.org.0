Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AD1413890
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:37:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3836619D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:37:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6AA7D612A3; Tue, 21 Sep 2021 17:37:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89D1961A3D;
	Tue, 21 Sep 2021 17:37:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 620F061731
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AA17A62EA0; Tue, 21 Sep 2021 17:37:13 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 7032D6164A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:09 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id q11so41605812wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=12q+kmLcqrOLQ+PRaX5+iil+oP7YjLgyfMuSdQvd75Y=;
 b=VePXpSNXCwTK5NQ0fCHN0VvxQK/RJqR8uuQ+7WinkOk4JnqT4ta3E4ePLIcwg5K1gG
 Un7iqimOrX8S/QtaB6twwiic17xykFh68tj8EcjBBrYjZBdgG3TQT89RtNBlaYZ9WprC
 hEX7NmJtWqpb6IUdhuKLhrmP5gOcsItiqcZodcdLctFKGDSNsxIWgPwhVa/jCMCtAHgc
 +pAIXpLxIUSq1izgp14q+0rIhzS2/CkJE65YKYBdQ5VeTMI4ZJG1Pw4zi9uT1pYxlk8x
 wcTp1ZjYNCAwPy8mK1WaNbPK3wmz/8+TT6OvZOugu63a2TBHOv6qMoutROi2Q965Ft4T
 IhYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=12q+kmLcqrOLQ+PRaX5+iil+oP7YjLgyfMuSdQvd75Y=;
 b=Nv8UVV+w176SsubEw6t6VlHut6e/fW59NUaxVkvwqRFrc46BOzgGdmPQNHHutSX04b
 870XWtiURonLIboWNeVcMFUaLSjGtpdXBUylEpgHmmoiy3Fopg13dS70pP08BxtrV5nY
 bNVycb4vo+FuERtnbb+dXr98umIHbULH5DmrpyDgThFH5bQGuVrBsQKGfsrLGpmjIsWH
 X49POZu0KjxcyFzA3aq4g5epBnhQmpP3hrWlO0Z7AJADDdaH7gFrUCw3pt7LQ38kkPiM
 YugURJ0bPQJkwiXvYRW4fjF7ZcyoAgFkR+Okx0Ayu0f6yiJrDV3XpxV7aCazSaj+ZlS0
 lTjQ==
X-Gm-Message-State: AOAM532kiq+Dng/lcMYgHvW8aj6AXB1zYwM7FlR4rCB5RgIep7F8Rb1R
 +im39Vfo3a9QT5Gxf27fOs0=
X-Google-Smtp-Source: ABdhPJwZXkcoOGg52wUstyhEmW0SBl14bNG6ygc2+W4Cn9IQUk6lNLl53rNUcP3WtzLBLwOzwiXawQ==
X-Received: by 2002:a1c:7fd0:: with SMTP id a199mr6202904wmd.20.1632245828252; 
 Tue, 21 Sep 2021 10:37:08 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:07 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:40 +0200
Message-Id: <20210921173659.246165-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBpcyBwcm9iYWJseSBhIGZpeCBzaW5jZSB3ZSBkaWRuJ3QgZXZlbiBncmFiZWQgYSByZWZl
cmVuY2UgdG8gdGhlCmZlbmNlcy4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyB8IDE2
ICsrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgYi9k
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCmluZGV4IDNiMjJjMDAxM2RiZi4uMzAxYjBiNGIw
ODJlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKQEAgLTI2OSwyMyArMjY5LDE1IEBAIHN0YXRpYyBpbnQg
dHRtX2JvX2luZGl2aWR1YWxpemVfcmVzdihzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQog
c3RhdGljIHZvaWQgdHRtX2JvX2ZsdXNoX2FsbF9mZW5jZXMoc3RydWN0IHR0bV9idWZmZXJfb2Jq
ZWN0ICpibykKIHsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YgPSAmYm8tPmJhc2UuX3Jlc3Y7Ci0J
c3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29y
OwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCWludCBpOwotCi0JcmN1X3JlYWRfbG9jaygp
OwotCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChyZXN2KTsKLQlmZW5jZSA9IGRtYV9yZXN2
X2V4Y2xfZmVuY2UocmVzdik7Ci0JaWYgKGZlbmNlICYmICFmZW5jZS0+b3BzLT5zaWduYWxlZCkK
LQkJZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcoZmVuY2UpOwotCi0JZm9yIChpID0gMDsg
Zm9iaiAmJiBpIDwgZm9iai0+c2hhcmVkX2NvdW50OyArK2kpIHsKLQkJZmVuY2UgPSByY3VfZGVy
ZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKIAorCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNv
ciwgcmVzdiwgdHJ1ZSk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNv
ciwgZmVuY2UpIHsKIAkJaWYgKCFmZW5jZS0+b3BzLT5zaWduYWxlZCkKIAkJCWRtYV9mZW5jZV9l
bmFibGVfc3dfc2lnbmFsaW5nKGZlbmNlKTsKIAl9Ci0JcmN1X3JlYWRfdW5sb2NrKCk7CisJZG1h
X3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CiB9CiAKIC8qKgotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
