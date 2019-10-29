Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F459E8600
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Oct 2019 11:44:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6A6D6195D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Oct 2019 10:44:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9604F61963; Tue, 29 Oct 2019 10:44:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25C2661969;
	Tue, 29 Oct 2019 10:41:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4A3B160ED1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 10:41:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3D47D61966; Tue, 29 Oct 2019 10:41:00 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 4C21660ED1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 10:40:56 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id w9so1815703wmm.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 03:40:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=afa9t+VsqFHDuya8zvtChwbhfZZ4SJZY0fGLtCU45oo=;
 b=D+HykNCzfcwZF2kb5CMf1gmNGJlr5bfy76gxTqmHwfHTt8+EdwQavuCI4II1B9nveg
 wTB98MZAQMICPpj2WrjdmXNw4u/fcsDaphvH2FX3Q295IaIQoha9eTQop9Lc3DqkCjNT
 BoSJvoUtxbStBdC9iuvBByvHaj1eVJNiwT5BgoJICO6vTEMDkRmZbDZpdz+gp4WqkzaP
 RH+4pKScRzB39Zo+UAL7U8vgoLlZ4wabqVnaMbDLe21/yJ9pYRdiTPGVsF5pn7P2fQEW
 I2Oh80rGm74QZMqOtcoUDMsaVKQBCcQ12+mKeltqxfbObywLfP5jKMvzBc5G8viFKgQr
 SYJw==
X-Gm-Message-State: APjAAAWJPbW2h6rbl710pCOcWsgjhgycmQhD8J6WPQfOlybCl9u02Ix1
 NMnZdNfJj13ZzdfawcmOLSK85S3G
X-Google-Smtp-Source: APXvYqxfQYoOJ87HtigJtrvgBEC3c0qj7kFOVbYr4kAAazHcLZwlVHbEYqOuR9qoVhuBoaj/orONRQ==
X-Received: by 2002:a1c:c912:: with SMTP id f18mr3649733wmb.168.1572345655483; 
 Tue, 29 Oct 2019 03:40:55 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:c5d9:7998:9ca6:452])
 by smtp.gmail.com with ESMTPSA id v10sm2910210wmg.48.2019.10.29.03.40.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 03:40:55 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 11:40:48 +0100
Message-Id: <20191029104049.9011-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029104049.9011-1-christian.koenig@amd.com>
References: <20191029104049.9011-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 4/5] drm/amdgpu: add amdgpu_dma_buf_pin/unpin
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
ZGxpbmcuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYu
YyB8IDU1ICsrKysrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X29iamVjdC5jICB8ICA1ICsrCiAyIGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
bWFfYnVmLmMKaW5kZXggOGU1YTY4MTA3NTU2Li4zNjI5Y2ZlNTNhYWQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYwpAQCAtMjIyLDYgKzIyMiwzNyBAQCBz
dGF0aWMgdm9pZCBhbWRncHVfZG1hX2J1Zl9kZXRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwK
IAkJYm8tPnByaW1lX3NoYXJlZF9jb3VudC0tOwogfQogCisvKioKKyAqIGFtZGdwdV9kbWFfYnVm
X3BpbiAtICZkbWFfYnVmX29wcy5waW4gaW1wbGVtZW50YXRpb24KKyAqCisgKiBAYXR0YWNoOiBh
dHRhY2htZW50IHRvIHBpbiBkb3duCisgKgorICogUGluIHRoZSBCTyB3aGljaCBpcyBiYWNraW5n
IHRoZSBETUEtYnVmIHNvIHRoYXQgaXQgY2FuJ3QgbW92ZSBhbnkgbW9yZS4KKyAqLworc3RhdGlj
IGludCBhbWRncHVfZG1hX2J1Zl9waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
KQoreworCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gYXR0YWNoLT5kbWFidWYtPnByaXY7
CisJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7CisKKwkvKiBw
aW4gYnVmZmVyIGludG8gR1RUICovCisJcmV0dXJuIGFtZGdwdV9ib19waW4oYm8sIEFNREdQVV9H
RU1fRE9NQUlOX0dUVCk7Cit9CisKKy8qKgorICogYW1kZ3B1X2RtYV9idWZfdW5waW4gLSAmZG1h
X2J1Zl9vcHMudW5waW4gaW1wbGVtZW50YXRpb24KKyAqCisgKiBAYXR0YWNoOiBhdHRhY2htZW50
IHRvIHVucGluCisgKgorICogVW5waW4gYSBwcmV2aW91c2x5IHBpbm5lZCBCTyB0byBtYWtlIGl0
IG1vdmFibGUgYWdhaW4uCisgKi8KK3N0YXRpYyB2b2lkIGFtZGdwdV9kbWFfYnVmX3VucGluKHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKK3sKKwlzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iaiA9IGF0dGFjaC0+ZG1hYnVmLT5wcml2OworCXN0cnVjdCBhbWRncHVfYm8gKmJvID0g
Z2VtX3RvX2FtZGdwdV9ibyhvYmopOworCisJYW1kZ3B1X2JvX3VucGluKGJvKTsKK30KKwogLyoq
CiAgKiBhbWRncHVfZG1hX2J1Zl9tYXAgLSAmZG1hX2J1Zl9vcHMubWFwX2RtYV9idWYgaW1wbGVt
ZW50YXRpb24KICAqIEBhdHRhY2g6IERNQS1idWYgYXR0YWNobWVudApAQCAtMjQ0LDkgKzI3NSwy
MSBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICphbWRncHVfZG1hX2J1Zl9tYXAoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCXN0cnVjdCBzZ190YWJsZSAqc2d0OwogCWxvbmcg
cjsKIAotCXIgPSBhbWRncHVfYm9fcGluKGJvLCBBTURHUFVfR0VNX0RPTUFJTl9HVFQpOwotCWlm
IChyKQotCQlyZXR1cm4gRVJSX1BUUihyKTsKKwlpZiAoIWJvLT5waW5fY291bnQpIHsKKwkJLyog
bW92ZSBidWZmZXIgaW50byBHVFQgKi8KKwkJc3RydWN0IHR0bV9vcGVyYXRpb25fY3R4IGN0eCA9
IHsgZmFsc2UsIGZhbHNlIH07CisKKwkJYW1kZ3B1X2JvX3BsYWNlbWVudF9mcm9tX2RvbWFpbihi
bywgQU1ER1BVX0dFTV9ET01BSU5fR1RUKTsKKwkJciA9IHR0bV9ib192YWxpZGF0ZSgmYm8tPnRi
bywgJmJvLT5wbGFjZW1lbnQsICZjdHgpOworCQlpZiAocikKKwkJCXJldHVybiBFUlJfUFRSKHIp
OworCisJfSBlbHNlIGlmICghKGFtZGdwdV9tZW1fdHlwZV90b19kb21haW4oYm8tPnRiby5tZW0u
bWVtX3R5cGUpICYKKwkJICAgICBBTURHUFVfR0VNX0RPTUFJTl9HVFQpKSB7CisJCQlyZXR1cm4g
RVJSX1BUUigtRUJVU1kpOworCX0KKworCiAKIAlzZ3QgPSBkcm1fcHJpbWVfcGFnZXNfdG9fc2co
Ym8tPnRiby50dG0tPnBhZ2VzLCBiby0+dGJvLm51bV9wYWdlcyk7CiAJaWYgKElTX0VSUihzZ3Qp
KQpAQCAtMjc3LDEzICszMjAsOSBAQCBzdGF0aWMgdm9pZCBhbWRncHVfZG1hX2J1Zl91bm1hcChz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCiAJCQkJIHN0cnVjdCBzZ190YWJsZSAq
c2d0LAogCQkJCSBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpCiB7Ci0Jc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmogPSBhdHRhY2gtPmRtYWJ1Zi0+cHJpdjsKLQlzdHJ1Y3QgYW1kZ3B1X2Jv
ICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsKLQogCWRtYV91bm1hcF9zZyhhdHRhY2gtPmRl
diwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRpcik7CiAJc2dfZnJlZV90YWJsZShzZ3QpOwogCWtm
cmVlKHNndCk7Ci0JYW1kZ3B1X2JvX3VucGluKGJvKTsKIH0KIAogLyoqCkBAIC0zMzAsNiArMzY5
LDggQEAgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGFtZGdwdV9kbWFidWZfb3BzID0gewogCS5k
eW5hbWljX21hcHBpbmcgPSB0cnVlLAogCS5hdHRhY2ggPSBhbWRncHVfZG1hX2J1Zl9hdHRhY2gs
CiAJLmRldGFjaCA9IGFtZGdwdV9kbWFfYnVmX2RldGFjaCwKKwkucGluID0gYW1kZ3B1X2RtYV9i
dWZfcGluLAorCS51bnBpbiA9IGFtZGdwdV9kbWFfYnVmX3VucGluLAogCS5tYXBfZG1hX2J1ZiA9
IGFtZGdwdV9kbWFfYnVmX21hcCwKIAkudW5tYXBfZG1hX2J1ZiA9IGFtZGdwdV9kbWFfYnVmX3Vu
bWFwLAogCS5yZWxlYXNlID0gZHJtX2dlbV9kbWFidWZfcmVsZWFzZSwKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYwppbmRleCA2ZjBiNzg5YTBiNDkuLmFjNzc2ZDI2
MjBlYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVj
dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYwpAQCAt
MzEsNiArMzEsNyBAQAogICovCiAjaW5jbHVkZSA8bGludXgvbGlzdC5oPgogI2luY2x1ZGUgPGxp
bnV4L3NsYWIuaD4KKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+CiAKICNpbmNsdWRlIDxkcm0v
YW1kZ3B1X2RybS5oPgogI2luY2x1ZGUgPGRybS9kcm1fY2FjaGUuaD4KQEAgLTEyMDksNiArMTIx
MCwxMCBAQCB2b2lkIGFtZGdwdV9ib19tb3ZlX25vdGlmeShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmpl
Y3QgKmJvLAogCiAJYW1kZ3B1X2JvX2t1bm1hcChhYm8pOwogCisJaWYgKGFiby0+dGJvLmJhc2Uu
ZG1hX2J1ZiAmJiAhYWJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoICYmCisJICAgIGJvLT5tZW0u
bWVtX3R5cGUgIT0gVFRNX1BMX1NZU1RFTSkKKwkJZG1hX2J1Zl9tb3ZlX25vdGlmeShhYm8tPnRi
by5iYXNlLmRtYV9idWYpOworCiAJLyogcmVtZW1iZXIgdGhlIGV2aWN0aW9uICovCiAJaWYgKGV2
aWN0KQogCQlhdG9taWM2NF9pbmMoJmFkZXYtPm51bV9ldmljdGlvbnMpOwotLSAKMi4xNy4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
