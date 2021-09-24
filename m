Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B70354177C9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:32:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D19EC62631
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:32:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C12CD61A4B; Fri, 24 Sep 2021 15:32:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 999B162169;
	Fri, 24 Sep 2021 15:32:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6482F61E96
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3ED0161ECD; Fri, 24 Sep 2021 15:31:27 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 035BB6263A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:25 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id u18so28724010wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=12q+kmLcqrOLQ+PRaX5+iil+oP7YjLgyfMuSdQvd75Y=;
 b=XVCAHX80yj7fOOVhGmDrldDzQ+tZU1P01Ey6y5LZO1bhqLritw4vRboSKw9v1ZiVkJ
 +Qq+Im9zUJGVqrUWGXSAA9IcemqPtfIo/wr7WwzzeRFMun+hksrMaP7yBhACzRkr0q1L
 egGSvjFbf21ceOxwJWa+XiU6iUda0TyWJZsf3rLkzV0VznYvWfe8uDzuQO+dMPQe7fQ4
 ttTwD8bIXQTG9D5hbaNC92Nmi1nT54rn/RbHFH4CvhxiR546Lxo1jSzsooQoQzggRUXC
 hYKln3uM44d2NgLl0u8LlqS79zw1VeOXTkn+7LUEddNRZVB8Wze6nUkK+ZnFZlEl03c+
 xinA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=12q+kmLcqrOLQ+PRaX5+iil+oP7YjLgyfMuSdQvd75Y=;
 b=LN5BEYFoia8bizYH/y3Ha/CdCcb60kNc5dP98W/3ZkhhAlY5A7DPSisqKjjWULL2Lr
 /Y2iB/jzslfiYfduv3F0xaqkY75sTfpAPZehdlmPvH7/4EPUO4Cx22nMQ+J1qkFP0p+Q
 pPqLd72vdPH6HIogrgVC5Izipub+LteLvb2EXqM+fkGi/A3iCX23g0lWby8UKCin3IKN
 8m2ynJcOfVEieALgcpot8fsuT4Y0Ies4EWEgEEihlq+yjWeXRpBbGtzGRJl6h7TK3v0T
 cCYH08vDi4fU14O1j02nt78++EM+DDa0pqdxrO6xcndt90sAS/Le5e4SKeb0riDF0Qq7
 naYQ==
X-Gm-Message-State: AOAM532Uo00uQRYiwkcg043wKdQdmyuy6iPzTeo82RfOZRVart1v8wAq
 6tuW+RexLBcdwNPqFYxyYhCk0Iss3gg=
X-Google-Smtp-Source: ABdhPJxfVU2ZRGajuHbNqSwwhLNc1V+itYxHz7cNctZZYqzXr+vVdmnmCGw1zqkJ6hJhq4Oo9BoeSg==
X-Received: by 2002:a1c:8096:: with SMTP id b144mr2680834wmd.189.1632497483876; 
 Fri, 24 Sep 2021 08:31:23 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:23 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:30:55 +0200
Message-Id: <20210924153113.2159-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/27] drm/ttm: use the new iterator in
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
