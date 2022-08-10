Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7748E58F0CC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 18:54:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3BC847995
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 16:54:23 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by lists.linaro.org (Postfix) with ESMTPS id 76C4C402CE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 16:54:20 +0000 (UTC)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-10ee900cce0so18488118fac.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 09:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=qFnJPiXDvt/QHoeruEwgeFRhpkmY0PFXPqpe6g3wZZU=;
        b=LGhbnsxjx1/X15rJRc0TYcL1bz4qxZfDA2Evnfl2dumzGeP5+uqclcPWWmr/pf+jWb
         a4q19+5rDTQRmTrwwOl5SL5ABIXsJEwP49UKG1Mnw7/1TubflBVQvJ/UKCoMuxwMVJ78
         CjY+vhp6n/JsSPT0OQ9Vmb/wDzQpj3whSVHBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=qFnJPiXDvt/QHoeruEwgeFRhpkmY0PFXPqpe6g3wZZU=;
        b=vPiTQGwj2MiZaxSrEeqUpIT2hGss3+TEIoL4NYVrL5MLUdmUYrhU6poCUAezNQZshl
         BagnrSCwFbdLEiG/SsAmmfkPdIx6rszbupcD4PQM/oZRuu2CnM05bgp+3/qtVvdrtBk9
         Gxcfrdq63eADMk1nGc17HStT6yP/PdkDzl1+uSmphchxO4s1Od5YAkQ1OP6HwGRklgjP
         7oz95kqlt7nthTZSlxKJ4ZmmUg99nl0lECIx/REG0QFSdMQTSQ7ntG/gY7wJjPGzUXVe
         Bft/Bp5PG2LVi6HZG6TrfOGv7ea8D0j2pU0jcKGWwVpV7InLjurwLDpwNhJQ2ceRljaK
         1vcQ==
X-Gm-Message-State: ACgBeo1nr8sC3TyqZRV4jDNNVFcs4J8rmag/dOj5FcAca3+wVF9tjxBC
	NzKJOovig3QJ27I+Yjbf0cFhQG8tMvrKnPYqaeD+pw==
X-Google-Smtp-Source: AA6agR5BxNAMgR0BbKjTGtTiiGxByAbsJkt0nZFvCCcqLD64Pb/P4Ac5rjVwhlwBfdom5d2UrFzbBCj6QDIiYW0WqaE=
X-Received: by 2002:a05:6870:a90a:b0:10d:9e83:98a6 with SMTP id
 eq10-20020a056870a90a00b0010d9e8398a6mr1769155oab.228.1660150458375; Wed, 10
 Aug 2022 09:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220712102849.1562-1-christian.koenig@amd.com>
In-Reply-To: <20220712102849.1562-1-christian.koenig@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 10 Aug 2022 18:54:07 +0200
Message-ID: <CAKMK7uFnMSKXcU+v_g-Sh62O5MB1uY=K2H-Fq7-5UYtmmjCZ_w@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID-Hash: PFLFBIYD3NKXQHZLQ3B7H6YM5FJEXEGY
X-Message-ID-Hash: PFLFBIYD3NKXQHZLQ3B7H6YM5FJEXEGY
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: karolina.drobnik@intel.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH] dma-buf: revert "return only unsignaled fences in dma_fence_unwrap_for_each v3"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PFLFBIYD3NKXQHZLQ3B7H6YM5FJEXEGY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAxMiBKdWwgMjAyMiBhdCAxMjoyOCwgQ2hyaXN0aWFuIEvDtm5pZw0KPGNrb2VuaWcu
bGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToNCj4NCj4gVGhpcyByZXZlcnRzIGNvbW1p
dCA4ZjYxOTczNzE4NDg1ZjNlODliYzRmNDA4ZjkyOTA0OGI3YjQ3YzgzLg0KPg0KPiBJdCB0dXJu
ZWQgb3V0IHRoYXQgdGhpcyBpcyBub3QgY29ycmVjdC4gRXNwZWNpYWxseSB0aGUgc3luY19maWxl
IGluZm8NCj4gSU9DVEwgbmVlZHMgdG8gc2VlIGV2ZW4gc2lnbmFsZWQgZmVuY2VzIHRvIGNvcnJl
Y3RseSByZXBvcnQgYmFjayB0aGVpcg0KPiBzdGF0dXMgdG8gdXNlcnNwYWNlLg0KPg0KPiBJbnN0
ZWFkIGFkZCB0aGUgZmlsdGVyIGluIHRoZSBtZXJnZSBmdW5jdGlvbiBhZ2FpbiB3aGVyZSBpdCBt
YWtlcyBzZW5zZS4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Ut
dW53cmFwLmMgfCAzICsrLQ0KPiAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmggICB8
IDYgKy0tLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFw
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQo+IGluZGV4IDUwMmE2NWVh
NmQ0NC4uNzAwMmJjYTc5MmZmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLXVud3JhcC5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMN
Cj4gQEAgLTcyLDcgKzcyLDggQEAgc3RydWN0IGRtYV9mZW5jZSAqX19kbWFfZmVuY2VfdW53cmFw
X21lcmdlKHVuc2lnbmVkIGludCBudW1fZmVuY2VzLA0KPiAgICAgICAgIGNvdW50ID0gMDsNCj4g
ICAgICAgICBmb3IgKGkgPSAwOyBpIDwgbnVtX2ZlbmNlczsgKytpKSB7DQo+ICAgICAgICAgICAg
ICAgICBkbWFfZmVuY2VfdW53cmFwX2Zvcl9lYWNoKHRtcCwgJml0ZXJbaV0sIGZlbmNlc1tpXSkN
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgKytjb3VudDsNCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWQodG1wKSkNCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICArK2NvdW50Ow0KPiAgICAgICAgIH0NCj4NCj4gICAgICAgICBpZiAo
Y291bnQgPT0gMCkNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3Jh
cC5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCj4gaW5kZXggMzkwZGUxZWU5
ZDM1Li42NmIxZTU2ZmJiODEgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LXVud3JhcC5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+IEBA
IC00MywxNCArNDMsMTAgQEAgc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX3Vud3JhcF9uZXh0
KHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwICpjdXJzb3IpOw0KPiAgICogVW53cmFwIGRtYV9mZW5j
ZV9jaGFpbiBhbmQgZG1hX2ZlbmNlX2FycmF5IGNvbnRhaW5lcnMgYW5kIGRlZXAgZGl2ZSBpbnRv
IGFsbA0KPiAgICogcG90ZW50aWFsIGZlbmNlcyBpbiB0aGVtLiBJZiBAaGVhZCBpcyBqdXN0IGEg
bm9ybWFsIGZlbmNlIG9ubHkgdGhhdCBvbmUgaXMNCj4gICAqIHJldHVybmVkLg0KPiAtICoNCj4g
LSAqIE5vdGUgdGhhdCBzaWduYWxsZWQgZmVuY2VzIGFyZSBvcHBvcnR1bmlzdGljYWxseSBmaWx0
ZXJlZCBvdXQsIHdoaWNoDQo+IC0gKiBtZWFucyB0aGUgaXRlcmF0aW9uIGlzIHBvdGVudGlhbGx5
IG92ZXIgbm8gZmVuY2UgYXQgYWxsLg0KPiAgICovDQo+ICAjZGVmaW5lIGRtYV9mZW5jZV91bndy
YXBfZm9yX2VhY2goZmVuY2UsIGN1cnNvciwgaGVhZCkgICAgICAgICAgICAgICAgIFwNCj4gICAg
ICAgICBmb3IgKGZlbmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9maXJzdChoZWFkLCBjdXJzb3IpOyBm
ZW5jZTsgICAgICAgXA0KPiAtICAgICAgICAgICAgZmVuY2UgPSBkbWFfZmVuY2VfdW53cmFwX25l
eHQoY3Vyc29yKSkgICAgICAgICAgICAgICAgICAgICBcDQo+IC0gICAgICAgICAgICAgICBpZiAo
IWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpDQo+ICsgICAgICAgICAgICBmZW5jZSA9IGRt
YV9mZW5jZV91bndyYXBfbmV4dChjdXJzb3IpKQ0KDQpOb3Qgc3VyZSBpdCdzIHdvcnRoIGl0LCBi
dXQgY291bGQgd2Ugc3RpbGwgZmlsdGVyIGJ1dCBrZWVwIHRoZSBmZW5jZQ0KaWYgdGhlcmUncyBh
biBlcnJvcj8NCg0KSSdtIGhvbmVzdGx5IGFsc28gbm90IGVudGlyZWx5IHN1cmUgd2hldGhlciBl
cnJvciBwcm9wYWdhdGlvbiBpcyBhDQp0ZXJyaWZpYyBpZGVhLCBzaW5jZSBldmVyeSBzaW5nbGUg
dXNlLWNhc2UgSSd2ZSBzZWVuIGluIGk5MTUgd2FzIGENCm1pcy1kZXNpZ24gYW5kIG5vdCBnb29k
IGF0IGFsbC4gU28gYnVybmluZyBpdCBhbGwgZG93biBhbmQgZGVjbGFyaW5nDQp0aGUgdGVzdGNh
c2VzIGludmFsaWQgbWlnaHQgYmUgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvIGhlcmUuDQotRGFuaWVs
DQoNCj4NCj4gIHN0cnVjdCBkbWFfZmVuY2UgKl9fZG1hX2ZlbmNlX3Vud3JhcF9tZXJnZSh1bnNp
Z25lZCBpbnQgbnVtX2ZlbmNlcywNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXMsDQo+IC0tDQo+IDIuMjUuMQ0KPg0K
DQoNCi0tIA0KRGFuaWVsIFZldHRlcg0KU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0
aW9uDQpodHRwOi8vYmxvZy5mZndsbC5jaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
