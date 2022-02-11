Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D75094B2647
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:50:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15BC2401DE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:50:34 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id D49D43EE68
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:10 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id u20so18392064ejx.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=YfNrY+//r79cs+UAGc7GlGpicg5Di/TUEj40cJQiglM=;
        b=JUMjx0fM7wz+R2e/lMgycaU0CnPVsRTe3kG8+Ir+VE6TBgdUCFrKnC5726C5cOWsLj
         TsoeejHRply89SlMruPGVYT+k86JeeLhlwh5iMBj/edJByT3r+1KkjK9M7Vp0CC6ZoV6
         C46+Rz8wZwHe+B7ESrSoqnkzbSywj8HvFd/OAW9PVory1gWNBcOEvqVTKoK0C2Sa3AS4
         pCgfOyQiqhZD9rPiHw+jovGuEmkeNQXRS9Q92xS/b0fKu6iwHq5a8CRIiUmlnx81Pj73
         MIG+M1Itu/WG2uwRu1IYOxoA+6fmEuq73AXixHNwmrcdSzYnRvzldk7Q1iCYxhbb2Ama
         0zHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YfNrY+//r79cs+UAGc7GlGpicg5Di/TUEj40cJQiglM=;
        b=GR8xnZdBa6k6Bzevbk3aVfCsDpiF7cs4NYtGRoby/VSC7d/lmOr8NTWC8N8FO7HU7T
         grV5xXNuGU+PptUOeADgL3a4+X6lmJZ2ujiq9l43unzU1uqlA9M8yaNHjrsXW+pxaijq
         8bIJFDSfqi2vinQ7HXT+Yph2cSzdfmf6g2mykzTEDkrQnZ8ajbdzKU594HUEN1ZYp6ax
         8R0XwghtKn0BFk/elrqT8IORJjg2lVnpSDrpYgClNIfTdBFVmpVJ0Z69Wdmh/l0j6kF7
         O6SXvQQ3VrBl3WaY8cFFMhHgMDZkLWq+stYoFwOOfSGJU0z3vFoIz4jGyc2IgLvmC3V7
         KE1Q==
X-Gm-Message-State: AOAM532S0JnmauIO3IMsPfE4b37//wWZi10fiILRHPgcvxZOtDUyfYJ4
	xlMMv8lfnHxRKZuwV5EM5tE=
X-Google-Smtp-Source: ABdhPJxLR0+cXCa2zndDnGDBhO40hP0PrRd+bLr9w4b6YjoEiI7HvBHV9KG7ypp2x1ESHD0V726W3w==
X-Received: by 2002:a17:907:3e08:: with SMTP id hp8mr1301429ejc.366.1644583809949;
        Fri, 11 Feb 2022 04:50:09 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:09 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:43 +0100
Message-Id: <20220211125003.918447-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: OK23OXW4OEDZMP62WQBMYWCXGX3YMVTL
X-Message-ID-Hash: OK23OXW4OEDZMP62WQBMYWCXGX3YMVTL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 03/23] dma-buf: add dma_resv_get_singleton v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OK23OXW4OEDZMP62WQBMYWCXGX3YMVTL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkIGEgZnVuY3Rpb24gdG8gc2ltcGxpZnkgZ2V0dGluZyBhIHNpbmdsZSBmZW5jZSBmb3IgYWxs
IHRoZSBmZW5jZXMgaW4NCnRoZSBkbWFfcmVzdiBvYmplY3QuDQoNCnYyOiBmaXggcmVmIGxlYWsg
aW4gZXJyb3IgaGFuZGxpbmcNCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMg
fCA1MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KIGluY2x1ZGUvbGlu
dXgvZG1hLXJlc3YuaCAgIHwgIDIgKysNCiAyIGZpbGVzIGNoYW5nZWQsIDU0IGluc2VydGlvbnMo
KykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMNCmluZGV4IGJjNjUyY2U0ZTlhOS4uMDA1ZmJlNjExMDNlIDEwMDY0
NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtcmVzdi5jDQpAQCAtMzQsNiArMzQsNyBAQA0KICAqLw0KIA0KICNpbmNsdWRlIDxsaW51
eC9kbWEtcmVzdi5oPg0KKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UtYXJyYXkuaD4NCiAjaW5j
bHVkZSA8bGludXgvZXhwb3J0Lmg+DQogI2luY2x1ZGUgPGxpbnV4L21tLmg+DQogI2luY2x1ZGUg
PGxpbnV4L3NjaGVkL21tLmg+DQpAQCAtNjQ4LDYgKzY0OSw1NyBAQCBpbnQgZG1hX3Jlc3ZfZ2V0
X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3cml0ZSwNCiB9DQogRVhQT1JUX1NZ
TUJPTF9HUEwoZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyk7DQogDQorLyoqDQorICogZG1hX3Jlc3ZfZ2V0
X3NpbmdsZXRvbiAtIEdldCBhIHNpbmdsZSBmZW5jZSBmb3IgYWxsIHRoZSBmZW5jZXMNCisgKiBA
b2JqOiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0DQorICogQHdyaXRlOiB0cnVlIGlmIHdlIHNob3Vs
ZCByZXR1cm4gYWxsIGZlbmNlcw0KKyAqIEBmZW5jZTogdGhlIHJlc3VsdGluZyBmZW5jZQ0KKyAq
DQorICogR2V0IGEgc2luZ2xlIGZlbmNlIHJlcHJlc2VudGluZyBhbGwgdGhlIGZlbmNlcyBpbnNp
ZGUgdGhlIHJlc3Ygb2JqZWN0Lg0KKyAqIFJldHVybnMgZWl0aGVyIDAgZm9yIHN1Y2Nlc3Mgb3Ig
LUVOT01FTS4NCisgKg0KKyAqIFdhcm5pbmc6IFRoaXMgY2FuJ3QgYmUgdXNlZCBsaWtlIHRoaXMg
d2hlbiBhZGRpbmcgdGhlIGZlbmNlIGJhY2sgdG8gdGhlIHJlc3YNCisgKiBvYmplY3Qgc2luY2Ug
dGhhdCBjYW4gbGVhZCB0byBzdGFjayBjb3JydXB0aW9uIHdoZW4gZmluYWxpemluZyB0aGUNCisg
KiBkbWFfZmVuY2VfYXJyYXkuDQorICovDQoraW50IGRtYV9yZXN2X2dldF9zaW5nbGV0b24oc3Ry
dWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgd3JpdGUsDQorCQkJICAgc3RydWN0IGRtYV9mZW5jZSAq
KmZlbmNlKQ0KK3sNCisJc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqYXJyYXk7DQorCXN0cnVjdCBk
bWFfZmVuY2UgKipmZW5jZXM7DQorCXVuc2lnbmVkIGNvdW50Ow0KKwlpbnQgcjsNCisNCisJciA9
IGRtYV9yZXN2X2dldF9mZW5jZXMob2JqLCB3cml0ZSwgJmNvdW50LCAmZmVuY2VzKTsNCisgICAg
ICAgIGlmIChyKQ0KKwkJcmV0dXJuIHI7DQorDQorCWlmIChjb3VudCA9PSAwKSB7DQorCQkqZmVu
Y2UgPSBOVUxMOw0KKwkJcmV0dXJuIDA7DQorCX0NCisNCisJaWYgKGNvdW50ID09IDEpIHsNCisJ
CSpmZW5jZSA9IGZlbmNlc1swXTsNCisJCWtmcmVlKGZlbmNlcyk7DQorCQlyZXR1cm4gMDsNCisJ
fQ0KKw0KKwlhcnJheSA9IGRtYV9mZW5jZV9hcnJheV9jcmVhdGUoY291bnQsIGZlbmNlcywNCisJ
CQkJICAgICAgIGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKDEpLA0KKwkJCQkgICAgICAgMSwgZmFs
c2UpOw0KKwlpZiAoIWFycmF5KSB7DQorCQl3aGlsZSAoY291bnQtLSkNCisJCQlkbWFfZmVuY2Vf
cHV0KGZlbmNlc1tjb3VudF0pOw0KKwkJa2ZyZWUoZmVuY2VzKTsNCisJCXJldHVybiAtRU5PTUVN
Ow0KKwl9DQorDQorCSpmZW5jZSA9ICZhcnJheS0+YmFzZTsNCisJcmV0dXJuIDA7DQorfQ0KK0VY
UE9SVF9TWU1CT0xfR1BMKGRtYV9yZXN2X2dldF9zaW5nbGV0b24pOw0KKw0KIC8qKg0KICAqIGRt
YV9yZXN2X3dhaXRfdGltZW91dCAtIFdhaXQgb24gcmVzZXJ2YXRpb24ncyBvYmplY3RzDQogICog
c2hhcmVkIGFuZC9vciBleGNsdXNpdmUgZmVuY2VzLg0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KaW5kZXggMjAyY2M2NWQw
NjIxLi4wODUxMmMxZTIxNWQgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgN
CisrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KQEAgLTQ0OSw2ICs0NDksOCBAQCB2b2lk
IGRtYV9yZXN2X3JlcGxhY2VfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCB1aW50NjRfdCBj
b250ZXh0LA0KIHZvaWQgZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpv
YmosIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsNCiBpbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhz
dHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3cml0ZSwNCiAJCQl1bnNpZ25lZCBpbnQgKm51bV9m
ZW5jZXMsIHN0cnVjdCBkbWFfZmVuY2UgKioqZmVuY2VzKTsNCitpbnQgZG1hX3Jlc3ZfZ2V0X3Np
bmdsZXRvbihzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3cml0ZSwNCisJCQkgICBzdHJ1Y3Qg
ZG1hX2ZlbmNlICoqZmVuY2UpOw0KIGludCBkbWFfcmVzdl9jb3B5X2ZlbmNlcyhzdHJ1Y3QgZG1h
X3Jlc3YgKmRzdCwgc3RydWN0IGRtYV9yZXN2ICpzcmMpOw0KIGxvbmcgZG1hX3Jlc3Zfd2FpdF90
aW1lb3V0KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBib29sIHdhaXRfYWxsLCBib29sIGludHIsDQog
CQkJICAgdW5zaWduZWQgbG9uZyB0aW1lb3V0KTsNCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
