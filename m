Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AF21644EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Feb 2020 14:02:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76386618D2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Feb 2020 13:02:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6B0C5619B2; Wed, 19 Feb 2020 13:02:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8364619DB;
	Wed, 19 Feb 2020 12:59:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 05C8161945
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 12:59:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ED85B619A8; Wed, 19 Feb 2020 12:59:17 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 496B761945
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 12:59:15 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id g3so365711wrs.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 04:59:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L4Q/3oQgwK0gy+FT05AGDGX84O8UR+MiHQosGOKcELg=;
 b=I97c9ynzOCMT6gJuMe9hBoRlo8wA+h+2YbFNN+JZgyrS2dpHlfvFI5lFOFii8BR1h5
 4yT01houwHI2tvuqRLKr3G1J7aHq2Xsfg48kVjRWIj38OOu6FCMFONin5IDVbN65cQGE
 prqwmay0cGjQ9eUaqQwdxGmmfZhGpkynVxsuJDEnRZxSFgxQzddtoXAaGVdB64a9/gGx
 w00l51r9PNd1bB1idhkMAs7GFzaoBOIBMMoe16itYCWDEJxZF4rJMkI6KyX+b5WHS65c
 HvOwmX1IowCTCe2cfDMr3YNVD5kAUKxLwV3H1ariaHVEiJHN9blosZqysiCE3D0FtXVv
 9Dow==
X-Gm-Message-State: APjAAAXLxJ40SNSK+6ZZvrME2/wi7PWGFyCqTpBYDKf88a2S4VrTNAmT
 mgbREQAnyK4SHaw2oEMipLgUadgw
X-Google-Smtp-Source: APXvYqzpPRKe4aTBgdEvsOC7KBRfOYRIWa91GiCQmxAKibydi60pfA01AKZSEWCmw2Bi+N2RdKUYMg==
X-Received: by 2002:a5d:638f:: with SMTP id p15mr35502478wru.402.1582117154365; 
 Wed, 19 Feb 2020 04:59:14 -0800 (PST)
Received: from abel.fritz.box ([2a02:908:1252:fb60:90ea:9d7:18a3:895e])
 by smtp.gmail.com with ESMTPSA id h2sm3079024wrt.45.2020.02.19.04.59.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 04:59:13 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Date: Wed, 19 Feb 2020 13:59:07 +0100
Message-Id: <20200219125910.89147-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219125910.89147-1-christian.koenig@amd.com>
References: <20200219125910.89147-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 4/7] drm/amdgpu: add
	amdgpu_dma_buf_pin/unpin v2
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

VGhpcyBpbXBsZW1lbnRzIHRoZSBleHBvcnRlciBzaWRlIG9mIHVucGlubmVkIERNQS1idWYgaGFu
ZGxpbmcuCgp2MjogZml4IG1pbm9yIGNvZGluZyBzdHlsZSBpc3N1ZXMKClNpZ25lZC1vZmYtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgNTMgKysrKysrKysrKysrKysr
KysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgIHwgIDUg
KysKIDIgZmlsZXMgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYwppbmRleCA3Y2FmYzY1
ZmQ3NmEuLjg2MDAwYzc1YjEzMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2RtYV9idWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZG1hX2J1Zi5jCkBAIC0yMjIsNiArMjIyLDM3IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbWFf
YnVmX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAogCQliby0+cHJpbWVfc2hhcmVkX2Nv
dW50LS07CiB9CiAKKy8qKgorICogYW1kZ3B1X2RtYV9idWZfcGluIC0gJmRtYV9idWZfb3BzLnBp
biBpbXBsZW1lbnRhdGlvbgorICoKKyAqIEBhdHRhY2g6IGF0dGFjaG1lbnQgdG8gcGluIGRvd24K
KyAqCisgKiBQaW4gdGhlIEJPIHdoaWNoIGlzIGJhY2tpbmcgdGhlIERNQS1idWYgc28gdGhhdCBp
dCBjYW4ndCBtb3ZlIGFueSBtb3JlLgorICovCitzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX3Bp
bihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCit7CisJc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmogPSBhdHRhY2gtPmRtYWJ1Zi0+cHJpdjsKKwlzdHJ1Y3QgYW1kZ3B1X2JvICpi
byA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsKKworCS8qIHBpbiBidWZmZXIgaW50byBHVFQgKi8K
KwlyZXR1cm4gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dFTV9ET01BSU5fR1RUKTsKK30KKwor
LyoqCisgKiBhbWRncHVfZG1hX2J1Zl91bnBpbiAtICZkbWFfYnVmX29wcy51bnBpbiBpbXBsZW1l
bnRhdGlvbgorICoKKyAqIEBhdHRhY2g6IGF0dGFjaG1lbnQgdG8gdW5waW4KKyAqCisgKiBVbnBp
biBhIHByZXZpb3VzbHkgcGlubmVkIEJPIHRvIG1ha2UgaXQgbW92YWJsZSBhZ2Fpbi4KKyAqLwor
c3RhdGljIHZvaWQgYW1kZ3B1X2RtYV9idWZfdW5waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqYXR0YWNoKQoreworCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gYXR0YWNoLT5kbWFi
dWYtPnByaXY7CisJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7
CisKKwlhbWRncHVfYm9fdW5waW4oYm8pOworfQorCiAvKioKICAqIGFtZGdwdV9kbWFfYnVmX21h
cCAtICZkbWFfYnVmX29wcy5tYXBfZG1hX2J1ZiBpbXBsZW1lbnRhdGlvbgogICogQGF0dGFjaDog
RE1BLWJ1ZiBhdHRhY2htZW50CkBAIC0yNDQsOSArMjc1LDE5IEBAIHN0YXRpYyBzdHJ1Y3Qgc2df
dGFibGUgKmFtZGdwdV9kbWFfYnVmX21hcChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRh
Y2gsCiAJc3RydWN0IHNnX3RhYmxlICpzZ3Q7CiAJbG9uZyByOwogCi0JciA9IGFtZGdwdV9ib19w
aW4oYm8sIEFNREdQVV9HRU1fRE9NQUlOX0dUVCk7Ci0JaWYgKHIpCi0JCXJldHVybiBFUlJfUFRS
KHIpOworCWlmICghYm8tPnBpbl9jb3VudCkgeworCQkvKiBtb3ZlIGJ1ZmZlciBpbnRvIEdUVCAq
LworCQlzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggY3R4ID0geyBmYWxzZSwgZmFsc2UgfTsKKwor
CQlhbWRncHVfYm9fcGxhY2VtZW50X2Zyb21fZG9tYWluKGJvLCBBTURHUFVfR0VNX0RPTUFJTl9H
VFQpOworCQlyID0gdHRtX2JvX3ZhbGlkYXRlKCZiby0+dGJvLCAmYm8tPnBsYWNlbWVudCwgJmN0
eCk7CisJCWlmIChyKQorCQkJcmV0dXJuIEVSUl9QVFIocik7CisKKwl9IGVsc2UgaWYgKCEoYW1k
Z3B1X21lbV90eXBlX3RvX2RvbWFpbihiby0+dGJvLm1lbS5tZW1fdHlwZSkgJgorCQkgICAgIEFN
REdQVV9HRU1fRE9NQUlOX0dUVCkpIHsKKwkJcmV0dXJuIEVSUl9QVFIoLUVCVVNZKTsKKwl9CiAK
IAlzZ3QgPSBkcm1fcHJpbWVfcGFnZXNfdG9fc2coYm8tPnRiby50dG0tPnBhZ2VzLCBiby0+dGJv
Lm51bV9wYWdlcyk7CiAJaWYgKElTX0VSUihzZ3QpKQpAQCAtMjc3LDEzICszMTgsOSBAQCBzdGF0
aWMgdm9pZCBhbWRncHVfZG1hX2J1Zl91bm1hcChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICph
dHRhY2gsCiAJCQkJIHN0cnVjdCBzZ190YWJsZSAqc2d0LAogCQkJCSBlbnVtIGRtYV9kYXRhX2Rp
cmVjdGlvbiBkaXIpCiB7Ci0Jc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBhdHRhY2gtPmRt
YWJ1Zi0+cHJpdjsKLQlzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8ob2Jq
KTsKLQogCWRtYV91bm1hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRp
cik7CiAJc2dfZnJlZV90YWJsZShzZ3QpOwogCWtmcmVlKHNndCk7Ci0JYW1kZ3B1X2JvX3VucGlu
KGJvKTsKIH0KIAogLyoqCkBAIC0zMzAsNiArMzY3LDggQEAgY29uc3Qgc3RydWN0IGRtYV9idWZf
b3BzIGFtZGdwdV9kbWFidWZfb3BzID0gewogCS5keW5hbWljX21hcHBpbmcgPSB0cnVlLAogCS5h
dHRhY2ggPSBhbWRncHVfZG1hX2J1Zl9hdHRhY2gsCiAJLmRldGFjaCA9IGFtZGdwdV9kbWFfYnVm
X2RldGFjaCwKKwkucGluID0gYW1kZ3B1X2RtYV9idWZfcGluLAorCS51bnBpbiA9IGFtZGdwdV9k
bWFfYnVmX3VucGluLAogCS5tYXBfZG1hX2J1ZiA9IGFtZGdwdV9kbWFfYnVmX21hcCwKIAkudW5t
YXBfZG1hX2J1ZiA9IGFtZGdwdV9kbWFfYnVmX3VubWFwLAogCS5yZWxlYXNlID0gZHJtX2dlbV9k
bWFidWZfcmVsZWFzZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3Qu
YwppbmRleCBlM2YxNmI0OWU5NzAuLjlkZTgzNzRiYmJhYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYwpAQCAtMzEsNiArMzEsNyBAQAogICovCiAjaW5jbHVk
ZSA8bGludXgvbGlzdC5oPgogI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KKyNpbmNsdWRlIDxsaW51
eC9kbWEtYnVmLmg+CiAKICNpbmNsdWRlIDxkcm0vYW1kZ3B1X2RybS5oPgogI2luY2x1ZGUgPGRy
bS9kcm1fY2FjaGUuaD4KQEAgLTEyNzQsNiArMTI3NSwxMCBAQCB2b2lkIGFtZGdwdV9ib19tb3Zl
X25vdGlmeShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogCiAJYW1kZ3B1X2JvX2t1bm1h
cChhYm8pOwogCisJaWYgKGFiby0+dGJvLmJhc2UuZG1hX2J1ZiAmJiAhYWJvLT50Ym8uYmFzZS5p
bXBvcnRfYXR0YWNoICYmCisJICAgIGJvLT5tZW0ubWVtX3R5cGUgIT0gVFRNX1BMX1NZU1RFTSkK
KwkJZG1hX2J1Zl9tb3ZlX25vdGlmeShhYm8tPnRiby5iYXNlLmRtYV9idWYpOworCiAJLyogcmVt
ZW1iZXIgdGhlIGV2aWN0aW9uICovCiAJaWYgKGV2aWN0KQogCQlhdG9taWM2NF9pbmMoJmFkZXYt
Pm51bV9ldmljdGlvbnMpOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
