Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE7840F7CD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:36:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 71B5D69CFC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:36:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6034D69CE0; Fri, 17 Sep 2021 12:36:00 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C229769CFB;
	Fri, 17 Sep 2021 12:35:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1F51163629
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6E15B66807; Fri, 17 Sep 2021 12:35:26 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 2800663631
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:23 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id w29so14919852wra.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ia/BXArBzSo5qPiEzEa5zvEcCQIRTZj8N0lxekHwmwI=;
 b=l28NLQta/6LZmjFira6x6hBmN6dKFHo7l6S1OF757Ag7zBeYzOXOsbRDVoH9q3pmet
 GQTZnUoFNuuvtSD0iw9zqZP37/cwS3phSK+KTnF6sorAGcHMW+GndrCOAKz4cYq9X7Jf
 OeMnQqOV1SRqHKiLk0Btb1BXLMaZBUfmd4pwbtcuwnyype7KzVElH9kas883I0JAwcaP
 rVPBkUoA8qv+rfFeUjAAbfsngIphcbZjIQLcAp2+Cli24cVheLpMjfWrD5Op2CxuUTNs
 nzQKXUWRfytQFFccG1fwHnWQD3zL0fGcdMvVrxiO8iWvADAW87EQZel//vYrwzU0fLcx
 KqRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ia/BXArBzSo5qPiEzEa5zvEcCQIRTZj8N0lxekHwmwI=;
 b=AJ36gZST88Sx6n9l1Jw6qDWZmxwEkjNAB0ZgxsKxiFsMQ4sJkIUTYSRy8xS5kXP061
 Xx43sQxvmRlqnH3VKj6MmcjmyVJKrybH00vfDSuYp0EgrLwTo7g5nQyqegLOGgipRkJm
 GGZfpwadVgcfyOF54O9Er71BvAAYzristIq6vw4+GeZ98UvVzxwYjnI+wjKrZICuKSyw
 OHE3RwYJkSkmetvV6ROLtQKPD9+SEhYWuhYFElGB/wbWvf6dDofCNMP858xY6WfPRyo7
 Ru4X2h6/vqlCRfgOTMgqEu2T9y/K1WaYBglWhm+WT8MwWvfXd5+5B/GgPeNXNS6KSBuj
 KE5g==
X-Gm-Message-State: AOAM533ozAuFsSTAxNqdfHQPKvnSPxEmG6sP2lvjecjj28K3AU2d1Iqc
 HMDuupRf76zT5boAXqWKa/L6aKf27Z8=
X-Google-Smtp-Source: ABdhPJwHB/pYnsex5U2dINaNbU/mxD0mYLE7uWX0oUu8MqBCU7Lxq9wRahgOXOsody97PreA7tSz0w==
X-Received: by 2002:adf:f884:: with SMTP id u4mr11415641wrp.411.1631882122116; 
 Fri, 17 Sep 2021 05:35:22 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:21 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:34:54 +0200
Message-Id: <20210917123513.1106-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBpcyBwcm9iYWJseSBhIGZpeCBzaW5jZSB3ZSBkaWRuJ3QgZXZlbiBncmFiZWQgYSByZWZl
cmVuY2UgdG8gdGhlCmZlbmNlcy4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5j
IHwgMTQgKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEw
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCmluZGV4IDNiMjJjMDAxM2RiZi4uN2Q4MDRj
MGM2OWIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKQEAgLTI2OSwyMiArMjY5LDE2IEBAIHN0YXRpYyBp
bnQgdHRtX2JvX2luZGl2aWR1YWxpemVfcmVzdihzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJv
KQogc3RhdGljIHZvaWQgdHRtX2JvX2ZsdXNoX2FsbF9mZW5jZXMoc3RydWN0IHR0bV9idWZmZXJf
b2JqZWN0ICpibykKIHsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YgPSAmYm8tPmJhc2UuX3Jlc3Y7
Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vy
c29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCWludCBpOwogCiAJcmN1X3JlYWRfbG9j
aygpOwotCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChyZXN2KTsKLQlmZW5jZSA9IGRtYV9y
ZXN2X2V4Y2xfZmVuY2UocmVzdik7Ci0JaWYgKGZlbmNlICYmICFmZW5jZS0+b3BzLT5zaWduYWxl
ZCkKLQkJZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcoZmVuY2UpOwotCi0JZm9yIChpID0g
MDsgZm9iaiAmJiBpIDwgZm9iai0+c2hhcmVkX2NvdW50OyArK2kpIHsKLQkJZmVuY2UgPSByY3Vf
ZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKLQorCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1
cnNvciwgcmVzdiwgdHJ1ZSk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1
cnNvciwgZmVuY2UpIHsKIAkJaWYgKCFmZW5jZS0+b3BzLT5zaWduYWxlZCkKIAkJCWRtYV9mZW5j
ZV9lbmFibGVfc3dfc2lnbmFsaW5nKGZlbmNlKTsKIAl9CisJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1
cnNvcik7CiAJcmN1X3JlYWRfdW5sb2NrKCk7CiB9CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
