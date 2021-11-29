Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9D2461489
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:07:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C2AB61A36
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:07:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B687E61A3A; Mon, 29 Nov 2021 12:07:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D92B61902;
	Mon, 29 Nov 2021 12:07:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A57246090F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A0B4B60B20; Mon, 29 Nov 2021 12:07:06 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id 7BC4E6090F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:04 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 g191-20020a1c9dc8000000b0032fbf912885so12232743wme.4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=geVPPhgHjz1swIil7f1f6R6mX3W1srW0yGMjQgdInFA=;
 b=V4/7YprZvPKdpTMMlvWiQCsm7Rsuv1lmsiqUAu/sI9d0vWKYVdAZrJzK6/IsX29crU
 rtTqDeNZ1SKzYK0GOv5Ps6/D1EG4SXK/OmnX0s+4YI9GNYEnovv+AQv3DVBEspGhzxAi
 vEuVKuQjgbkepSwV5zqkVLIi2ljjQr7dtB4Pu6jVdF9TxOE9jrtJMzvHeYXZQWsVrsLG
 fqJWL0TXoq6CwDAJk/ULJBaObnUOODYNJ5PVFuHKacSD4G3/UxYOmaAnCw9hu3Jhri5v
 ar9mCsN0cOLhQjhm5D6ZiofNp4ywsVQCC+MbBvWnZSwG1d6RAXJdb16/X4DMeAmNZjmn
 igxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=geVPPhgHjz1swIil7f1f6R6mX3W1srW0yGMjQgdInFA=;
 b=VdSEgtVOHAqSdFCwnX5udO7rhzjqSfggD6u1b1lwBg0Q+D4JOLFs4YZy+WFpwPfO1M
 wpgUe7Pm6u5tuudywfe75p2G2ff4+VPdu+yFjogPo3hAOUo6kzFsh6c4sTbR0zLRtikt
 Mtc711x3sKZhpG9ribAgj313XSqv0UWtkKb0lwhV6rRX3XyaYLHB1Nb4POaKmuvfCU3i
 cd9PoNBHsCfRj17FpjEAdY50pYOu+5ch4QxNn5HhCPOZDtouviOinyjrK6ihVxTjFPnE
 zZrOOPL5ej9I1gNw/XF5X9OFooIT/bPw4Vxa9B1bFcJ1MlfisX063omCVVy+T69tWPtV
 UIvg==
X-Gm-Message-State: AOAM532eGTI1ORZkIqLPF7wIf14teegixJdC60lH89F92uv+v37MwxMX
 RlBLtWP/mLuTJwQiF5m5bADJoPh/dUo=
X-Google-Smtp-Source: ABdhPJwF2F9DwX3DXfnuONALNiR60hKlsexxxFdKpXGs2X9nnbOVlqOmLesP14ncSVKZyrPv1v12Xw==
X-Received: by 2002:a05:600c:17c3:: with SMTP id
 y3mr35244547wmo.136.1638187623531; 
 Mon, 29 Nov 2021 04:07:03 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:03 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:32 +0100
Message-Id: <20211129120659.1815-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 01/28] drm/i915: Remove dma_resv_prune
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KClRoZSBzaWduYWxlZCBiaXQgaXMgYWxyZWFkeSB1c2VkIGZvciBxdWljayB0ZXN0aW5nIGlm
IGEgZmVuY2UgaXMgc2lnbmFsZWQuCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpBY2tlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlICAgICAgICAgICAgICAgIHwgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZG1h
X3Jlc3ZfdXRpbHMuYyAgICAgICAgfCAxNyAtLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZG1hX3Jlc3ZfdXRpbHMuaCAgICAgICAgfCAxMyAtLS0tLS0tLS0tLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYyB8ICAzIC0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyAgICAgfCAgOCAtLS0tLS0tLQogNSBm
aWxlcyBjaGFuZ2VkLCA0MiBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kbWFfcmVzdl91dGlscy5jCiBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZG1hX3Jlc3ZfdXRpbHMuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXgg
NjYwYmIwM2RlNmZjLi41YzFhZjEzMGNiNmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC02MCw3
ICs2MCw2IEBAIGk5MTUteSArPSBpOTE1X2Rydi5vIFwKIAogIyBjb3JlIGxpYnJhcnkgY29kZQog
aTkxNS15ICs9IFwKLQlkbWFfcmVzdl91dGlscy5vIFwKIAlpOTE1X21lbWNweS5vIFwKIAlpOTE1
X21tLm8gXAogCWk5MTVfc3dfZmVuY2UubyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kbWFfcmVzdl91dGlscy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZG1hX3Jlc3ZfdXRp
bHMuYwpkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggN2RmOTFiN2U0Y2E4Li4wMDAwMDAw
MDAwMDAKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZG1hX3Jlc3ZfdXRpbHMuYworKysgL2Rl
di9udWxsCkBAIC0xLDE3ICswLDAgQEAKLS8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQK
LS8qCi0gKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgotICovCi0KLSNpbmNs
dWRlIDxsaW51eC9kbWEtcmVzdi5oPgotCi0jaW5jbHVkZSAiZG1hX3Jlc3ZfdXRpbHMuaCIKLQot
dm9pZCBkbWFfcmVzdl9wcnVuZShzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YpCi17Ci0JaWYgKGRtYV9y
ZXN2X3RyeWxvY2socmVzdikpIHsKLQkJaWYgKGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWQocmVzdiwg
dHJ1ZSkpCi0JCQlkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShyZXN2LCBOVUxMKTsKLQkJZG1hX3Jl
c3ZfdW5sb2NrKHJlc3YpOwotCX0KLX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2RtYV9yZXN2X3V0aWxzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kbWFfcmVzdl91dGlscy5o
CmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCBiOWQ4ZmI1ZjgzNjcuLjAwMDAwMDAwMDAw
MAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kbWFfcmVzdl91dGlscy5oCisrKyAvZGV2L251
bGwKQEAgLTEsMTMgKzAsMCBAQAotLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwot
LyoKLSAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCi0gKi8KLQotI2lmbmRl
ZiBETUFfUkVTVl9VVElMU19ICi0jZGVmaW5lIERNQV9SRVNWX1VUSUxTX0gKLQotc3RydWN0IGRt
YV9yZXN2OwotCi12b2lkIGRtYV9yZXN2X3BydW5lKHN0cnVjdCBkbWFfcmVzdiAqcmVzdik7Ci0K
LSNlbmRpZiAvKiBETUFfUkVTVl9VVElMU19IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9zaHJpbmtlci5jCmluZGV4IDVhYjEzNmZmZGViMi4uYWYzZWI3ZmQ5NTFkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYwpAQCAtMTUs
NyArMTUsNiBAQAogCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuaCIKIAotI2luY2x1
ZGUgImRtYV9yZXN2X3V0aWxzLmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgogCiBzdGF0aWMg
Ym9vbCBzd2FwX2F2YWlsYWJsZSh2b2lkKQpAQCAtMjI5LDggKzIyOCw2IEBAIGk5MTVfZ2VtX3No
cmluayhzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dywKIAkJCQkJaTkxNV9nZW1fb2JqZWN0X3Vu
bG9jayhvYmopOwogCQkJfQogCi0JCQlkbWFfcmVzdl9wcnVuZShvYmotPmJhc2UucmVzdik7Ci0K
IAkJCXNjYW5uZWQgKz0gb2JqLT5iYXNlLnNpemUgPj4gUEFHRV9TSElGVDsKIHNraXA6CiAJCQlp
OTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fd2FpdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3dhaXQuYwppbmRleCBmMTEzMjU0ODQxMTAuLmNkMTQ5YWE5OTM2NCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCkBAIC0xMCw3ICsxMCw2IEBACiAKICNpbmNsdWRl
ICJndC9pbnRlbF9lbmdpbmUuaCIKIAotI2luY2x1ZGUgImRtYV9yZXN2X3V0aWxzLmgiCiAjaW5j
bHVkZSAiaTkxNV9nZW1faW9jdGxzLmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0LmgiCiAK
QEAgLTUyLDEzICs1MSw2IEBAIGk5MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9uKHN0cnVj
dCBkbWFfcmVzdiAqcmVzdiwKIAl9CiAJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAKLQkv
KgotCSAqIE9wcG9ydHVuaXN0aWNhbGx5IHBydW5lIHRoZSBmZW5jZXMgaWZmIHdlIGtub3cgdGhl
eSBoYXZlICphbGwqIGJlZW4KLQkgKiBzaWduYWxlZC4KLQkgKi8KLQlpZiAodGltZW91dCA+IDAp
Ci0JCWRtYV9yZXN2X3BydW5lKHJlc3YpOwotCiAJcmV0dXJuIHJldDsKIH0KIAotLSAKMi4yNS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
