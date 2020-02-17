Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE5516169D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Feb 2020 16:49:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EA6F60F43
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Feb 2020 15:49:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 816AB618DF; Mon, 17 Feb 2020 15:49:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4240619E6;
	Mon, 17 Feb 2020 15:45:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 206DB619B6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2020 15:45:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0EF1B619CC; Mon, 17 Feb 2020 15:45:33 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id B2194619A9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2020 15:45:18 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id y11so20290037wrt.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2020 07:45:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hlgB5Y1sz7wUV4gQ0dL77L8hf8c+eZoNbZE43csgmz0=;
 b=gVNxObUx3127bZDA/WWN9arv+7SZrjuxHgoOzSAHjlqAf/tYXarCWhZRDt1LKC1rQ8
 uv1Hx75Jpy5s/f8LtOdacR94dexEE7SGMj56I3TiCdJpRzaenfDgmZ8zvnrpvuU/z3h1
 u0x8oQnhugXdYXE0qCjrMwfLlStfLPREJILpCWzjH8O3f/+Lho7MbcQgLHVKudvPn3nn
 270U3yWQth51jS6diWJh0ADMZMZcRyNdQCHXVfVv54ehndHvgioZTJtfNE7B6NCmj2aS
 C96hyjt/c1v2nlxaBqkhzkP3eDdO/H+6LWC83XOeETXfRL/l4pU+kYpTD+EmtLOjEegp
 TAtA==
X-Gm-Message-State: APjAAAUK2CZGaWFXJVLFSPsKvIqZq8fTNGcaRpj2zePGWcjEyvzxWFM0
 yhKYfLTolmDxo5qKvq5/oJxco8Ty
X-Google-Smtp-Source: APXvYqwFiRcVFKuVgqcs304KA6K8ArQ5mPs070Ei1YCTDpIpCzFYCT/g6ibVr0D41bLqEYT3+L4s+A==
X-Received: by 2002:adf:f1d0:: with SMTP id z16mr22276621wro.209.1581954317869; 
 Mon, 17 Feb 2020 07:45:17 -0800 (PST)
Received: from abel.fritz.box ([2a02:908:1252:fb60:180d:d2d6:6ff9:a6cb])
 by smtp.gmail.com with ESMTPSA id r6sm1372658wrq.92.2020.02.17.07.45.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 07:45:17 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Date: Mon, 17 Feb 2020 16:45:09 +0100
Message-Id: <20200217154509.2265-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200217154509.2265-1-christian.koenig@amd.com>
References: <20200217154509.2265-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 5/5] drm/amdgpu: implement
	amdgpu_gem_prime_move_notify v2
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

SW1wbGVtZW50IHRoZSBpbXBvcnRlciBzaWRlIG9mIHVucGlubmVkIERNQS1idWYgaGFuZGxpbmcu
Cgp2MjogdXBkYXRlIHBhZ2UgdGFibGVzIGltbWVkaWF0ZWx5CgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8IDY2ICsrKysrKysrKysrKysrKysrKysr
LQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jICB8ICA2ICsrCiAy
IGZpbGVzIGNoYW5nZWQsIDcxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYwppbmRleCA3NzBiYWJhNjIxYjMu
LjQ4ZGU3NjI0ZDQ5YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2RtYV9idWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1h
X2J1Zi5jCkBAIC00NTMsNyArNDUzLDcxIEBAIGFtZGdwdV9kbWFfYnVmX2NyZWF0ZV9vYmooc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRtYV9idWYgKmRtYV9idWYpCiAJcmV0dXJuIEVS
Ul9QVFIocmV0KTsKIH0KIAorLyoqCisgKiBhbWRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeSAtICZh
dHRhY2gubW92ZV9ub3RpZnkgaW1wbGVtZW50YXRpb24KKyAqCisgKiBAYXR0YWNoOiB0aGUgRE1B
LWJ1ZiBhdHRhY2htZW50CisgKgorICogSW52YWxpZGF0ZSB0aGUgRE1BLWJ1ZiBhdHRhY2htZW50
LCBtYWtpbmcgc3VyZSB0aGF0IHRoZSB3ZSByZS1jcmVhdGUgdGhlCisgKiBtYXBwaW5nIGJlZm9y
ZSB0aGUgbmV4dCB1c2UuCisgKi8KK3N0YXRpYyB2b2lkCithbWRncHVfZG1hX2J1Zl9tb3ZlX25v
dGlmeShzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCit7CisJc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmogPSBhdHRhY2gtPmltcG9ydGVyX3ByaXY7CisJc3RydWN0IHd3X2FjcXVp
cmVfY3R4ICp0aWNrZXQgPSBkbWFfcmVzdl9sb2NraW5nX2N0eChvYmotPnJlc3YpOworCXN0cnVj
dCBhbWRncHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOworCXN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7CisJc3RydWN0IHR0
bV9vcGVyYXRpb25fY3R4IGN0eCA9IHsgZmFsc2UsIGZhbHNlIH07CisJc3RydWN0IHR0bV9wbGFj
ZW1lbnQgcGxhY2VtZW50ID0ge307CisJc3RydWN0IGFtZGdwdV92bV9ib19iYXNlICpib19iYXNl
OworCWludCByOworCisJaWYgKGJvLT50Ym8ubWVtLm1lbV90eXBlID09IFRUTV9QTF9TWVNURU0p
CisJCXJldHVybjsKKworCXIgPSB0dG1fYm9fdmFsaWRhdGUoJmJvLT50Ym8sICZwbGFjZW1lbnQs
ICZjdHgpOworCWlmIChyKSB7CisJCURSTV9FUlJPUigiRmFpbGVkIHRvIGludmFsaWRhdGUgRE1B
LWJ1ZiBpbXBvcnQgKCVkKSlcbiIsIHIpOworCQlyZXR1cm47CisJfQorCisJZm9yIChib19iYXNl
ID0gYm8tPnZtX2JvOyBib19iYXNlOyBib19iYXNlID0gYm9fYmFzZS0+bmV4dCkgeworCQlzdHJ1
Y3QgYW1kZ3B1X3ZtICp2bSA9IGJvX2Jhc2UtPnZtOworCQlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3Yg
PSB2bS0+cm9vdC5iYXNlLmJvLT50Ym8uYmFzZS5yZXN2OworCisJCWlmICh0aWNrZXQpIHsKKwkJ
CS8qIFdoZW4gd2UgZ2V0IGFuIGVycm9yIGhlcmUgaXQgbWVhbnMgdGhhdCBzb21lYm9keQorCQkJ
ICogZWxzZSBpcyBob2xkaW5nIHRoZSBWTSBsb2NrIGFuZCB1cGRhdGluZyBwYWdlIHRhYmxlcwor
CQkJICogU28gd2UgY2FuIGp1c3QgY29udGludWUgaGVyZS4KKwkJCSAqLworCQkJciA9IGRtYV9y
ZXN2X2xvY2socmVzdiwgdGlja2V0KTsKKwkJCWlmIChyKQorCQkJCWNvbnRpbnVlOworCisJCX0g
ZWxzZSB7CisJCQkvKiBUT0RPOiBUaGlzIGlzIG1vcmUgcHJvYmxlbWF0aWMgYW5kIHdlIGFjdHVh
bGx5IG5lZWQKKwkJCSAqIHRvIGFsbG93IHBhZ2UgdGFibGVzIHVwZGF0ZXMgd2l0aG91dCBob2xk
aW5nIHRoZQorCQkJICogbG9jay4KKwkJCSAqLworCQkJaWYgKCFkbWFfcmVzdl90cnlsb2NrKHJl
c3YpKQorCQkJCWNvbnRpbnVlOworCQl9CisKKwkJciA9IGFtZGdwdV92bV9jbGVhcl9mcmVlZChh
ZGV2LCB2bSwgTlVMTCk7CisJCWlmICghcikKKwkJCXIgPSBhbWRncHVfdm1faGFuZGxlX21vdmVk
KGFkZXYsIHZtKTsKKworCQlpZiAociAmJiByICE9IC1FQlVTWSkKKwkJCURSTV9FUlJPUigiRmFp
bGVkIHRvIGludmFsaWRhdGUgVk0gcGFnZSB0YWJsZXMgKCVkKSlcbiIsCisJCQkJICByKTsKKwor
CQlkbWFfcmVzdl91bmxvY2socmVzdik7CisJfQorfQorCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRt
YV9idWZfYXR0YWNoX29wcyBhbWRncHVfZG1hX2J1Zl9hdHRhY2hfb3BzID0geworCS5tb3ZlX25v
dGlmeSA9IGFtZGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5CiB9OwogCiAvKioKQEAgLTQ4OSw3ICs1
NTMsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmFtZGdwdV9nZW1fcHJpbWVfaW1wb3J0KHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCXJldHVybiBvYmo7CiAKIAlhdHRhY2ggPSBkbWFfYnVm
X2R5bmFtaWNfYXR0YWNoKGRtYV9idWYsIGRldi0+ZGV2LAotCQkJCQkmYW1kZ3B1X2RtYV9idWZf
YXR0YWNoX29wcywgTlVMTCk7CisJCQkJCSZhbWRncHVfZG1hX2J1Zl9hdHRhY2hfb3BzLCBvYmop
OwogCWlmIChJU19FUlIoYXR0YWNoKSkgewogCQlkcm1fZ2VtX29iamVjdF9wdXQob2JqKTsKIAkJ
cmV0dXJuIEVSUl9DQVNUKGF0dGFjaCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfb2JqZWN0LmMKaW5kZXggOGFlMjYwODIyOTA4Li44YzQ4MGM4OThiMGQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMKQEAgLTkyNiw2ICs5MjYsOSBAQCBp
bnQgYW1kZ3B1X2JvX3Bpbl9yZXN0cmljdGVkKHN0cnVjdCBhbWRncHVfYm8gKmJvLCB1MzIgZG9t
YWluLAogCQlyZXR1cm4gMDsKIAl9CiAKKwlpZiAoYm8tPnRiby5iYXNlLmltcG9ydF9hdHRhY2gp
CisJCWRtYV9idWZfcGluKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKTsKKwogCWJvLT5mbGFn
cyB8PSBBTURHUFVfR0VNX0NSRUFURV9WUkFNX0NPTlRJR1VPVVM7CiAJLyogZm9yY2UgdG8gcGlu
IGludG8gdmlzaWJsZSB2aWRlbyByYW0gKi8KIAlpZiAoIShiby0+ZmxhZ3MgJiBBTURHUFVfR0VN
X0NSRUFURV9OT19DUFVfQUNDRVNTKSkKQEAgLTEwMDksNiArMTAxMiw5IEBAIGludCBhbWRncHVf
Ym9fdW5waW4oc3RydWN0IGFtZGdwdV9ibyAqYm8pCiAKIAlhbWRncHVfYm9fc3VidHJhY3RfcGlu
X3NpemUoYm8pOwogCisJaWYgKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKQorCQlkbWFfYnVm
X3VucGluKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKTsKKwogCWZvciAoaSA9IDA7IGkgPCBi
by0+cGxhY2VtZW50Lm51bV9wbGFjZW1lbnQ7IGkrKykgewogCQliby0+cGxhY2VtZW50c1tpXS5s
cGZuID0gMDsKIAkJYm8tPnBsYWNlbWVudHNbaV0uZmxhZ3MgJj0gflRUTV9QTF9GTEFHX05PX0VW
SUNUOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
