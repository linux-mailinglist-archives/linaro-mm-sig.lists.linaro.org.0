Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 382704B2676
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:52:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69D1D401C5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:51:59 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id 9D90D3EEA2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:25 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id b13so16496333edn.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=c/qkFCHvzHPX7E3ZHwZBUbVbbsZQppRk5q1UJfjX894=;
        b=cq3fEJc++tDzdeeG3rr6ZaVneGq9aDGPt+MEv8lHcKmA6a6g1gCzfTOMlrLMkD6jNf
         VZTME1DPv5YNWBsD/4Y4srPSPOJV59hkt81KkZetSM+oG5a0stztfDbnI4Uscz/ukDZ4
         t3jrVkQDX8kFindUGeDvDDQhO0YuX0dT/57c9ZKsaix7NGJ/ogTUGNYYTaAq3P5ZeAzE
         RsmTB3Cs27eXtQztOlEigkacmRPtz/sxq3DM+s0TjTF/QB4jqaeofPaa9QmhxLdk7Tu5
         vgIS1Rz9tQqOdfze/aRuXWxCAQCkVKLVKnMlnF4TgLNLKFUCMJ6EgT1PMn6y2nLZOTwe
         91Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c/qkFCHvzHPX7E3ZHwZBUbVbbsZQppRk5q1UJfjX894=;
        b=shCY7qo9OlGy/WMW4+l/RW0p4Uvmqf82P9biQJqHkQmu5RCFBJpdH12uB580222kXP
         K1KqTKH8+ER6l0FUm1wmvTlBjm5oCOghvIdwyFcfrSnP6HeDrA8Vrh+XBMz9o92TXe41
         depzBScGwMs1irv2ADK0sosOE8FpXCUlBqxe0vQ0aDis6p+RgYNnpYmCP/FROkSeyv7V
         fHb4FhUExfJ1IkF4d8VPZla0AeUD+LkkgS8AOe173ZOvkgwpN7fti0ai7R6Eb36P9RVM
         ySOz1+464xTL8Zv1vrrhEgsQKKbvbYzBH9oDsoGrOP+2MkEg0t2+r0ntK/RUZEVW67VC
         DUOQ==
X-Gm-Message-State: AOAM530sXXG/d3dBBe/DZvjzZ+DVm88tqZBv0LvzRxtc/14/nHnKhXXN
	BFHaA9eZFCJWTgvesGF8yrc5OI2Z9nc=
X-Google-Smtp-Source: ABdhPJxt5TWB8ADo1NwjbMsZpA3ni8O9j91qJ/zL1BiSf9KqOuKcsizFX0w/sb6XUtgFshha5qlLtQ==
X-Received: by 2002:a05:6402:d0d:: with SMTP id eb13mr1693272edb.83.1644583824768;
        Fri, 11 Feb 2022 04:50:24 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:24 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:50:01 +0100
Message-Id: <20220211125003.918447-22-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: ENK7WTZTYYTLZ5E4EJQDOLICDTPITLCS
X-Message-ID-Hash: ENK7WTZTYYTLZ5E4EJQDOLICDTPITLCS
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 21/23] dma-buf: wait for map to complete for static attachments
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ENK7WTZTYYTLZ5E4EJQDOLICDTPITLCS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2UgaGF2ZSBwcmV2aW91c2x5IGRvbmUgdGhhdCBpbiB0aGUgaW5kaXZpZHVhbCBkcml2ZXJzIGJ1
dCBpdCBpcw0KbW9yZSBkZWZlbnNpdmUgdG8gbW92ZSB0aGF0IGludG8gdGhlIGNvbW1vbiBjb2Rl
Lg0KDQpEeW5hbWljIGF0dGFjaG1lbnRzIHNob3VsZCB3YWl0IGZvciBtYXAgb3BlcmF0aW9ucyB0
byBjb21wbGV0ZSBieSB0aGVtc2VsdmVzLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jICAgICAgICAgICAgICAgICAgIHwgMTggKysrKysrKysrKysrKysrLS0tDQogZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8IDE0ICstLS0tLS0tLS0tLS0t
DQogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9wcmltZS5jICAgICB8IDE3ICstLS0t
LS0tLS0tLS0tLS0tDQogZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fcHJpbWUuYyAgICAg
ICB8IDE2ICsrKy0tLS0tLS0tLS0tLS0NCiA0IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMo
KyksIDQ1IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IDUyODk4M2QzYmE2NC4uZDNk
ZDYwMmM0NzUzIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTY2MCwxMiArNjYwLDI0IEBAIHN0YXRpYyBz
dHJ1Y3Qgc2dfdGFibGUgKiBfX21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQg
KmF0dGFjaCwNCiAJCQkJICAgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikN
CiB7DQogCXN0cnVjdCBzZ190YWJsZSAqc2dfdGFibGU7DQorCXNpZ25lZCBsb25nIHJldDsNCiAN
CiAJc2dfdGFibGUgPSBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT5tYXBfZG1hX2J1ZihhdHRhY2gsIGRp
cmVjdGlvbik7DQorCWlmIChJU19FUlJfT1JfTlVMTChzZ190YWJsZSkpDQorCQlyZXR1cm4gc2df
dGFibGU7DQorDQorCWlmICghZG1hX2J1Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMoYXR0YWNoKSkg
ew0KKwkJcmV0ID0gZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KGF0dGFjaC0+ZG1hYnVmLT5yZXN2LA0K
KwkJCQkJICAgIERNQV9SRVNWX1VTQUdFX0tFUk5FTCwgdHJ1ZSwNCisJCQkJCSAgICBNQVhfU0NI
RURVTEVfVElNRU9VVCk7DQorCQlpZiAocmV0IDwgMCkgew0KKwkJCWF0dGFjaC0+ZG1hYnVmLT5v
cHMtPnVubWFwX2RtYV9idWYoYXR0YWNoLCBzZ190YWJsZSwNCisJCQkJCQkJICAgZGlyZWN0aW9u
KTsNCisJCQlyZXR1cm4gRVJSX1BUUihyZXQpOw0KKwkJfQ0KKwl9DQogDQotCWlmICghSVNfRVJS
X09SX05VTEwoc2dfdGFibGUpKQ0KLQkJbWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxlKTsNCi0NCisJ
bWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxlKTsNCiAJcmV0dXJuIHNnX3RhYmxlOw0KIH0NCiANCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYw0KaW5kZXggNTc5YWRm
YWZlNGQwLi43ODJjYmNhMzc1MzggMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZG1hX2J1Zi5jDQpAQCAtMTAyLDIxICsxMDIsOSBAQCBzdGF0aWMgaW50IGFtZGdwdV9k
bWFfYnVmX3BpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQogew0KIAlzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiA9IGF0dGFjaC0+ZG1hYnVmLT5wcml2Ow0KIAlzdHJ1Y3Qg
YW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsNCi0JaW50IHI7DQogDQogCS8q
IHBpbiBidWZmZXIgaW50byBHVFQgKi8NCi0JciA9IGFtZGdwdV9ib19waW4oYm8sIEFNREdQVV9H
RU1fRE9NQUlOX0dUVCk7DQotCWlmIChyKQ0KLQkJcmV0dXJuIHI7DQotDQotCWlmIChiby0+dGJv
Lm1vdmluZykgew0KLQkJciA9IGRtYV9mZW5jZV93YWl0KGJvLT50Ym8ubW92aW5nLCB0cnVlKTsN
Ci0JCWlmIChyKSB7DQotCQkJYW1kZ3B1X2JvX3VucGluKGJvKTsNCi0JCQlyZXR1cm4gcjsNCi0J
CX0NCi0JfQ0KLQlyZXR1cm4gMDsNCisJcmV0dXJuIGFtZGdwdV9ib19waW4oYm8sIEFNREdQVV9H
RU1fRE9NQUlOX0dUVCk7DQogfQ0KIA0KIC8qKg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L25vdXZlYXVfcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZl
YXVfcHJpbWUuYw0KaW5kZXggNjAwMTlkMDUzMmZjLi4zNDc0ODg2ODVmNzQgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X3ByaW1lLmMNCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfcHJpbWUuYw0KQEAgLTkzLDIyICs5Myw3IEBAIGludCBu
b3V2ZWF1X2dlbV9wcmltZV9waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQogCWlmIChy
ZXQpDQogCQlyZXR1cm4gLUVJTlZBTDsNCiANCi0JcmV0ID0gdHRtX2JvX3Jlc2VydmUoJm52Ym8t
PmJvLCBmYWxzZSwgZmFsc2UsIE5VTEwpOw0KLQlpZiAocmV0KQ0KLQkJZ290byBlcnJvcjsNCi0N
Ci0JaWYgKG52Ym8tPmJvLm1vdmluZykNCi0JCXJldCA9IGRtYV9mZW5jZV93YWl0KG52Ym8tPmJv
Lm1vdmluZywgdHJ1ZSk7DQotDQotCXR0bV9ib191bnJlc2VydmUoJm52Ym8tPmJvKTsNCi0JaWYg
KHJldCkNCi0JCWdvdG8gZXJyb3I7DQotDQotCXJldHVybiByZXQ7DQotDQotZXJyb3I6DQotCW5v
dXZlYXVfYm9fdW5waW4obnZibyk7DQotCXJldHVybiByZXQ7DQorCXJldHVybiAwOw0KIH0NCiAN
CiB2b2lkIG5vdXZlYXVfZ2VtX3ByaW1lX3VucGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2Jq
KQ0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3ByaW1lLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9wcmltZS5jDQppbmRleCA0YTkwODA3MzUxZTcu
LjQyYTg3OTQ4ZTI4YyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9u
X3ByaW1lLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3ByaW1lLmMNCkBA
IC03NywxOSArNzcsOSBAQCBpbnQgcmFkZW9uX2dlbV9wcmltZV9waW4oc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmopDQogDQogCS8qIHBpbiBidWZmZXIgaW50byBHVFQgKi8NCiAJcmV0ID0gcmFk
ZW9uX2JvX3BpbihibywgUkFERU9OX0dFTV9ET01BSU5fR1RULCBOVUxMKTsNCi0JaWYgKHVubGlr
ZWx5KHJldCkpDQotCQlnb3RvIGVycm9yOw0KLQ0KLQlpZiAoYm8tPnRiby5tb3ZpbmcpIHsNCi0J
CXJldCA9IGRtYV9mZW5jZV93YWl0KGJvLT50Ym8ubW92aW5nLCBmYWxzZSk7DQotCQlpZiAodW5s
aWtlbHkocmV0KSkgew0KLQkJCXJhZGVvbl9ib191bnBpbihibyk7DQotCQkJZ290byBlcnJvcjsN
Ci0JCX0NCi0JfQ0KLQ0KLQliby0+cHJpbWVfc2hhcmVkX2NvdW50Kys7DQotZXJyb3I6DQorCWlm
IChsaWtlbHkocmV0ID09IDApKQ0KKwkJYm8tPnByaW1lX3NoYXJlZF9jb3VudCsrOw0KKw0KIAly
YWRlb25fYm9fdW5yZXNlcnZlKGJvKTsNCiAJcmV0dXJuIHJldDsNCiB9DQotLSANCjIuMjUuMQ0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
