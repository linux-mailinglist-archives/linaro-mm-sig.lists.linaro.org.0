Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5B0494F03
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 14:29:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56CFD3EEA0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 13:29:17 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 52D3B3EE99
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 13:27:54 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id i187-20020a1c3bc4000000b0034d2ed1be2aso20480051wma.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 05:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=hl1UMcxmP8FLB7cw6V/gbH+Ejf4SrQDiUJfaKHttF6Q=;
        b=Txl7wMMQ3BoEO4cPZl65D2wlNQrEaK4pg0+zuA1PPU6G2IraDAOZgenSijzgUfH8ch
         hH4J7nAzlyeNUQ76HSSrQrMW+YztkehT47S4LVl30rX+9pAwQmt8OyQcxh7XyIs2akct
         O6hn5yQm+C/OwbBpSMipNOf0ovonJdoQWRTjij8cj1SiouhPengkWdEX4nrLtFCs6r57
         JpDRp0jBrEU9i7x5uxV+ze4zk3iZ7SX8sHAQ+xmz2+rqF0gn5eWBnFhIusL1EJveprxE
         +PAHBejnZeM/34u3Cn6xt++/px/V6XbWxIeMvwwGpFl6+QLqWiVBhUMIHklmONALkKIj
         a9qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hl1UMcxmP8FLB7cw6V/gbH+Ejf4SrQDiUJfaKHttF6Q=;
        b=G7so8//XoJaVQ3XYdInXY9ypTTGUsDPeyKWKQIgY4RhlJs++A8jS6vbutwC0t8Jjao
         nVQIf9iF/w9IEasWyIlJcldKV0SFQNDRB4/3IcfIEC/Ojf5B6R8+PJzTc1aEt+Jek1RI
         p2XaWaJRfrpxPdxL5LS10nZ+eIUnr6MzYCHpUnc7z4UC0Pi0OhyPnxBigeh7FISaXdi4
         V3UOp8fOJcjtGqz5kteRP7lA58GM2+Rr9myjWo+AL3BMw8+AwO/W862q6lL3y8JlofGP
         kI5J9uk3sm7lMzLgY64fmd/An4j8uCCs7YaDFnsWY3jN4w6ZY72F1lHJ49TyLo98UZJX
         6Etg==
X-Gm-Message-State: AOAM531vtQDkpk8Xo8giy/SD5pD+5QUkDnuqAHy/4J0fQZPbSrprAi0j
	JAsLdk2YjNS7MlSCkmgvUww=
X-Google-Smtp-Source: ABdhPJwUUA420JOIPmLu0OB5fMKudNXZNoroit0+VxJhZJ3dVkASmGV6wlLZ7btbcydXz4OaXnNu5w==
X-Received: by 2002:a05:6000:1886:: with SMTP id a6mr29359225wri.158.1642685273502;
        Thu, 20 Jan 2022 05:27:53 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id a9sm2658454wmm.32.2022.01.20.05.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 05:27:53 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 20 Jan 2022 14:27:43 +0100
Message-Id: <20220120132747.2348-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220120132747.2348-1-christian.koenig@amd.com>
References: <20220120132747.2348-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: PEY2265DOJEQ2B6ZFTAZBVGZO6HVXJVD
X-Message-ID-Hash: PEY2265DOJEQ2B6ZFTAZBVGZO6HVXJVD
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/9] dma-buf: Add dma_fence_array_for_each (v2)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PEY2265DOJEQ2B6ZFTAZBVGZO6HVXJVD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+
DQoNCkFkZCBhIGhlbHBlciB0byBpdGVyYXRlIG92ZXIgYWxsIGZlbmNlcyBpbiBhIGRtYV9mZW5j
ZV9hcnJheSBvYmplY3QuDQoNCnYyIChKYXNvbiBFa3N0cmFuZCkNCiAtIFJldHVybiBOVUxMIGZy
b20gZG1hX2ZlbmNlX2FycmF5X2ZpcnN0IGlmIGhlYWQgPT0gTlVMTC4gIFRoaXMgbWF0Y2hlcw0K
ICAgdGhlIGl0ZXJhdG9yIGJlaGF2aW9yIG9mIGRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaCBpbiB0
aGF0IGl0IGl0ZXJhdGVzDQogICB6ZXJvIHRpbWVzIGlmIGhlYWQgPT0gTlVMTC4NCiAtIFJldHVy
biBOVUxMIGZyb20gZG1hX2ZlbmNlX2FycmF5X25leHQgaWYgaW5kZXggPiBhcnJheS0+bnVtX2Zl
bmNlcy4NCg0KU2lnbmVkLW9mZi1ieTogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQu
bmV0Pg0KUmV2aWV3ZWQtYnk6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4N
ClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCkNjOiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KLS0tDQogZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysr
KysrKysrDQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaCAgIHwgMTcgKysrKysrKysr
KysrKysrKysNCiAyIGZpbGVzIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UtYXJyYXkuYw0KaW5kZXggNGJmYmNiODg1YmJjLi5lYjUxN2IzOTE0ZjcgMTAwNjQ0
DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCisrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KQEAgLTIxOCwzICsyMTgsMzAgQEAgYm9vbCBkbWFf
ZmVuY2VfbWF0Y2hfY29udGV4dChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgdTY0IGNvbnRleHQp
DQogCXJldHVybiB0cnVlOw0KIH0NCiBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9tYXRjaF9jb250
ZXh0KTsNCisNCitzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfYXJyYXlfZmlyc3Qoc3RydWN0
IGRtYV9mZW5jZSAqaGVhZCkNCit7DQorCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5Ow0K
Kw0KKwlpZiAoIWhlYWQpDQorCQlyZXR1cm4gTlVMTDsNCisNCisJYXJyYXkgPSB0b19kbWFfZmVu
Y2VfYXJyYXkoaGVhZCk7DQorCWlmICghYXJyYXkpDQorCQlyZXR1cm4gaGVhZDsNCisNCisJcmV0
dXJuIGFycmF5LT5mZW5jZXNbMF07DQorfQ0KK0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2FycmF5
X2ZpcnN0KTsNCisNCitzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfYXJyYXlfbmV4dChzdHJ1
Y3QgZG1hX2ZlbmNlICpoZWFkLA0KKwkJCQkgICAgICAgdW5zaWduZWQgaW50IGluZGV4KQ0KK3sN
CisJc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqYXJyYXkgPSB0b19kbWFfZmVuY2VfYXJyYXkoaGVh
ZCk7DQorDQorCWlmICghYXJyYXkgfHwgaW5kZXggPj0gYXJyYXktPm51bV9mZW5jZXMpDQorCQly
ZXR1cm4gTlVMTDsNCisNCisJcmV0dXJuIGFycmF5LT5mZW5jZXNbaW5kZXhdOw0KK30NCitFWFBP
UlRfU1lNQk9MKGRtYV9mZW5jZV9hcnJheV9uZXh0KTsNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS1hcnJheS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaA0K
aW5kZXggZmVjMzc0ZjY5ZTEyLi5lMzRkY2IwYmI0NjIgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS1hcnJheS5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJh
eS5oDQpAQCAtNjEsNiArNjEsMTkgQEAgdG9fZG1hX2ZlbmNlX2FycmF5KHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKQ0KIAlyZXR1cm4gY29udGFpbmVyX29mKGZlbmNlLCBzdHJ1Y3QgZG1hX2ZlbmNl
X2FycmF5LCBiYXNlKTsNCiB9DQogDQorLyoqDQorICogZG1hX2ZlbmNlX2FycmF5X2Zvcl9lYWNo
IC0gaXRlcmF0ZSBvdmVyIGFsbCBmZW5jZXMgaW4gYXJyYXkNCisgKiBAZmVuY2U6IGN1cnJlbnQg
ZmVuY2UNCisgKiBAaW5kZXg6IGluZGV4IGludG8gdGhlIGFycmF5DQorICogQGhlYWQ6IHBvdGVu
dGlhbCBkbWFfZmVuY2VfYXJyYXkgb2JqZWN0DQorICoNCisgKiBUZXN0IGlmIEBhcnJheSBpcyBh
IGRtYV9mZW5jZV9hcnJheSBvYmplY3QgYW5kIGlmIHllcyBpdGVyYXRlIG92ZXIgYWxsIGZlbmNl
cw0KKyAqIGluIHRoZSBhcnJheS4gSWYgbm90IGp1c3QgaXRlcmF0ZSBvdmVyIHRoZSBmZW5jZSBp
biBAYXJyYXkgaXRzZWxmLg0KKyAqLw0KKyNkZWZpbmUgZG1hX2ZlbmNlX2FycmF5X2Zvcl9lYWNo
KGZlbmNlLCBpbmRleCwgaGVhZCkJCQlcDQorCWZvciAoaW5kZXggPSAwLCBmZW5jZSA9IGRtYV9m
ZW5jZV9hcnJheV9maXJzdChoZWFkKTsgZmVuY2U7CVwNCisJICAgICArKyhpbmRleCksIGZlbmNl
ID0gZG1hX2ZlbmNlX2FycmF5X25leHQoaGVhZCwgaW5kZXgpKQ0KKw0KIHN0cnVjdCBkbWFfZmVu
Y2VfYXJyYXkgKmRtYV9mZW5jZV9hcnJheV9jcmVhdGUoaW50IG51bV9mZW5jZXMsDQogCQkJCQkg
ICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlcywNCiAJCQkJCSAgICAgICB1NjQgY29udGV4
dCwgdW5zaWduZWQgc2Vxbm8sDQpAQCAtNjgsNCArODEsOCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX2Fy
cmF5ICpkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKGludCBudW1fZmVuY2VzLA0KIA0KIGJvb2wgZG1h
X2ZlbmNlX21hdGNoX2NvbnRleHQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHU2NCBjb250ZXh0
KTsNCiANCitzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfYXJyYXlfZmlyc3Qoc3RydWN0IGRt
YV9mZW5jZSAqaGVhZCk7DQorc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2FycmF5X25leHQo
c3RydWN0IGRtYV9mZW5jZSAqaGVhZCwNCisJCQkJICAgICAgIHVuc2lnbmVkIGludCBpbmRleCk7
DQorDQogI2VuZGlmIC8qIF9fTElOVVhfRE1BX0ZFTkNFX0FSUkFZX0ggKi8NCi0tIA0KMi4yNS4x
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
