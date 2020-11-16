Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2812B5150
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 20:38:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21A0C666ED
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 19:38:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 169A6666EF; Mon, 16 Nov 2020 19:38:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E433665FA;
	Mon, 16 Nov 2020 19:38:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 13658666ED
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 19:38:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0587B666E1; Mon, 16 Nov 2020 19:38:29 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 6E384666E1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 19:38:05 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 10so418625wml.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 11:38:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ru267PQGlQsOc+0AqYwg/UBJuZfw/k56sykTs1YsbnQ=;
 b=qiMHJm/YUVSb+DFUJhgohUc8WJCsYanUJdmRRhra/d0K6K1yWfXLR67rRTuJbTKUff
 A0w1WimsA78hyCV37t112+RhRofu5dhTPpEFnQmJaw3LEaVbMEmQNVsD0VH/Y4nafMFo
 QgJfxb8J/g6MALKwv6gWhmqQcdPuM8NXKfBX3bCgDqDEVBxzwnN4s0kOgSd0eLpwpO0Z
 VOiU9phSz+aqeAJCkZ+cdIdOazIPM5NOdnjqYhxWoNOqrJQouowyuRSXYmXxL5Ni2g0C
 ajU/G2eXPHj57J43Kz70VdQcP5QxV58SVKoLnbVdW098mf7i6dU4oSmcV8w45nP20vis
 tkzw==
X-Gm-Message-State: AOAM53033s4p6Hl+Q+R2l18pgyDH4E2VeNLup+hlt/e0e26UOwJSfiAs
 FwR007Ylb1aUY9bjYA3tCdGXcLzXub9Xy4DxtdA=
X-Google-Smtp-Source: ABdhPJyMgacwGcd6wHE/yIyAqYEiQMiFccSiB9vSGlLV/9TGRb68+QG4qy5jDO+PYPEM/kBTSoIrKEzfMnTOtCHaBUg=
X-Received: by 2002:a7b:c157:: with SMTP id z23mr498985wmi.70.1605555484652;
 Mon, 16 Nov 2020 11:38:04 -0800 (PST)
MIME-Version: 1.0
References: <20201116173005.1825880-1-lee.jones@linaro.org>
 <20201116173005.1825880-8-lee.jones@linaro.org>
In-Reply-To: <20201116173005.1825880-8-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Nov 2020 14:37:53 -0500
Message-ID: <CADnq5_MtKsXUf3d5z3m4x+HwPYt5yDpbAvgN0W__m+fbbKuxVA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 07/43]
 drm/radeon/radeon_legacy_encoders: Move 'radeon_add_legacy_encoder's
 prototype to shared location
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

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMTI6MzAgUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5nIFc9MSBrZXJuZWwgYnVpbGQg
d2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9sZWdhY3lfZW5j
b2RlcnMuYzoxNzQ2OjE6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYcmFk
ZW9uX2FkZF9sZWdhY3lfZW5jb2RlcuKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCj4gIDE3NDYg
fCByYWRlb25fYWRkX2xlZ2FjeV9lbmNvZGVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVpbnQz
Ml90IGVuY29kZXJfZW51bSwgdWludDMyX3Qgc3VwcG9ydGVkX2RldmljZSkKPiAgfCBefn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+Cj4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hl
ckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2Fs
QGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGRy
aS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYt
Ynk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+CgpBcHBsaWVkLiAgVGhhbmtzIQoK
QWxleAoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fYXRvbWJpb3MuYyAg
ICAgICAgfCA2ICstLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jb21iaW9z
LmMgICAgICAgICB8IDYgKy0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2xl
Z2FjeV9lbmNvZGVycy5oIHwgMiArKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMTAgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yYWRlb25fYXRvbWJpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2F0b21i
aW9zLmMKPiBpbmRleCA3MWJmMmVkMTcyNjk3Li5jYzgwNjUxYjI1NzczIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2F0b21iaW9zLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9hdG9tYmlvcy5jCj4gQEAgLTM1LDE2ICszNSwxMiBAQAo+
ICAjaW5jbHVkZSAiYXRvbS1iaXRzLmgiCj4gICNpbmNsdWRlICJyYWRlb25fYXNpYy5oIgo+ICAj
aW5jbHVkZSAicmFkZW9uX2F0b21iaW9zLmgiCj4gKyNpbmNsdWRlICJyYWRlb25fbGVnYWN5X2Vu
Y29kZXJzLmgiCj4KPiAgZXh0ZXJuIHZvaWQKPiAgcmFkZW9uX2FkZF9hdG9tX2VuY29kZXIoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdWludDMyX3QgZW5jb2Rlcl9lbnVtLAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIHVpbnQzMl90IHN1cHBvcnRlZF9kZXZpY2UsIHUxNiBjYXBzKTsKPgo+IC0v
KiBmcm9tIHJhZGVvbl9sZWdhY3lfZW5jb2Rlci5jICovCj4gLWV4dGVybiB2b2lkCj4gLXJhZGVv
bl9hZGRfbGVnYWN5X2VuY29kZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdWludDMyX3QgZW5j
b2Rlcl9lbnVtLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3Qgc3VwcG9ydGVk
X2RldmljZSk7Cj4gLQo+ICB1bmlvbiBhdG9tX3N1cHBvcnRlZF9kZXZpY2VzIHsKPiAgICAgICAg
IHN0cnVjdCBfQVRPTV9TVVBQT1JURURfREVWSUNFU19JTkZPIGluZm87Cj4gICAgICAgICBzdHJ1
Y3QgX0FUT01fU1VQUE9SVEVEX0RFVklDRVNfSU5GT18yIGluZm9fMjsKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fY29tYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yYWRlb25fY29tYmlvcy5jCj4gaW5kZXggZDNjMDRkZjdlNzVkNy4uZmYyMTM1MDU5
YzA3MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jb21iaW9z
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jb21iaW9zLmMKPiBAQCAt
MzEsNiArMzEsNyBAQAo+ICAjaW5jbHVkZSA8ZHJtL3JhZGVvbl9kcm0uaD4KPgo+ICAjaW5jbHVk
ZSAicmFkZW9uLmgiCj4gKyNpbmNsdWRlICJyYWRlb25fbGVnYWN5X2VuY29kZXJzLmgiCj4gICNp
bmNsdWRlICJhdG9tLmgiCj4KPiAgI2lmZGVmIENPTkZJR19QUENfUE1BQwo+IEBAIC00MCwxMSAr
NDEsNiBAQAo+ICAjaW5jbHVkZSA8YXNtL3Byb20uaD4KPiAgI2VuZGlmIC8qIENPTkZJR19QUENf
UE1BQyAqLwo+Cj4gLS8qIGZyb20gcmFkZW9uX2xlZ2FjeV9lbmNvZGVyLmMgKi8KPiAtZXh0ZXJu
IHZvaWQKPiAtcmFkZW9uX2FkZF9sZWdhY3lfZW5jb2RlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB1aW50MzJfdCBlbmNvZGVyX2VudW0sCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICB1aW50
MzJfdCBzdXBwb3J0ZWRfZGV2aWNlKTsKPiAtCj4gIC8qIG9sZCBsZWdhY3kgQVRJIEJJT1Mgcm91
dGluZXMgKi8KPgo+ICAvKiBDT01CSU9TIHRhYmxlIG9mZnNldHMgKi8KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fbGVnYWN5X2VuY29kZXJzLmggYi9kcml2ZXJz
L2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9sZWdhY3lfZW5jb2RlcnMuaAo+IGluZGV4IGE4MGIzODc1
NTlkNGQuLmY0Yzc0MzIyNjdlNjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yYWRlb25fbGVnYWN5X2VuY29kZXJzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L3JhZGVvbl9sZWdhY3lfZW5jb2RlcnMuaAo+IEBAIC0zMCw1ICszMCw3IEBACj4KPiAgdm9pZCBy
YWRlb25fbGVnYWN5X2JhY2tsaWdodF9pbml0KHN0cnVjdCByYWRlb25fZW5jb2RlciAqcmFkZW9u
X2VuY29kZXIsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpkcm1fY29ubmVjdG9yKTsKPiArdm9pZCByYWRlb25fYWRkX2xlZ2FjeV9lbmNv
ZGVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVpbnQzMl90IGVuY29kZXJfZW51bSwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3Qgc3VwcG9ydGVkX2RldmljZSk7Cj4K
PiAgI2VuZGlmICAgICAgICAgICAgICAgICAgICAgICAgIC8qIF9fUkFERU9OX0xFR0FDWV9FTkNP
REVSU19IX18gKi8KPiAtLQo+IDIuMjUuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
