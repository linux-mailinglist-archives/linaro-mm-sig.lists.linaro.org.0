Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF1292D12C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 13:59:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE28A41252
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 11:59:02 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by lists.linaro.org (Postfix) with ESMTPS id 5DE5F3F392
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jul 2024 11:59:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=B5pztcRx;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.167.175) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3d92baccd41so301582b6e.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jul 2024 04:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1720612740; x=1721217540; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8YwSacl49HZikhh7TpAVL5zSZM2Ig9YohILbbUy5PtM=;
        b=B5pztcRx6EAHNK46FDXxGu0OEbpPLtp2PsaOHFAcGusXDEAoDCk3jSUE/qHHnyMTBh
         tD7vrPknGDmFwnLCr/soDMsIB58jvOmRWYvwSkSxLR7IDnOlT+ZjhpDqG2fgYJFHT3tU
         udf4vOrJZuO5pViYdWRBoZdKJQ89jvZ2pUUY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720612740; x=1721217540;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8YwSacl49HZikhh7TpAVL5zSZM2Ig9YohILbbUy5PtM=;
        b=FlpJDhj6ASCizSNfqHr/0AUUQMg6+RK2gBAVtZgCi+6JHE/xeUrGnG+/LbqtK9Vuty
         63VmcNKEXEKYRGMeOYri0nMnV0aImYCtk5fae16LN2JFok5mhBnR8XndqWszBdcL6CYn
         GNGJar65c6QTFIqp/AeYI7IzzIWc+Zdp3PmoGT3AYkDKEKYLaf9lwST3F5NJQEhieXfX
         UGd9hJiu3jXt1OkRO1HSXUdbS1nEDmLwlhWaen7Urr2QUBasv8YV0fD4UbZHFMa85Ax0
         pLglUAYOMPoF+nzPVcvmxDg6z7NvAD5uyeG8WYiCVbXZ/bvXg34UgOeJXhoyDW18VXVA
         Ictg==
X-Forwarded-Encrypted: i=1; AJvYcCVrT2BY0yQKCUYDdiEBJn4YLxwnAy3uU25oxfT22p5lpNo1tNbtO1SfTXNL+KPFDI6rshjsApkHlvOMuT5iUshi5dBO+Mh+j0ybztCBYqw=
X-Gm-Message-State: AOJu0Yw3eiaZV4gnYPnbapdnQY+gIU0EoDbf1tTZ6xFC+dvs2a4j2udF
	eUV87u0SjnirY2XzYhD+v5xNAg24aFe6MAdQDfJ4lkWU3p8nmtwpQ+9zJQT1uxv37e8PXEUvxx5
	/NojqCAibNNEBqiusym4VCNjzjqW8yVYI4Mm/lQ==
X-Google-Smtp-Source: AGHT+IEDb4E4R4JLvPaGkcDd2e1PnOfOAi8hfE4Q9IQEkktLnUcIxOmoAJGlW/KgY1cJtU5AbP/Am5hiG+biuNY4XSw=
X-Received: by 2002:a05:6870:82a4:b0:25e:14d9:da27 with SMTP id
 586e51a60fabf-25eae2f200fmr5688757fac.0.1720612739640; Wed, 10 Jul 2024
 04:58:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240710093120.732208-1-daniel.vetter@ffwll.ch> <03f7e2ad-fd5c-4da7-a14c-34c2c158c513@amd.com>
In-Reply-To: <03f7e2ad-fd5c-4da7-a14c-34c2c158c513@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 10 Jul 2024 13:58:48 +0200
Message-ID: <CAKMK7uFvCr2qcHun06LC-ON3GBqj8=mCpPGHuAOh9BEyr60fiQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 5DE5F3F392
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.175:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DWL_DNSWL_BLOCKED(0.00)[ffwll.ch:dkim];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.167.175:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BL6Q73CDONIBDCJ5RWT5GS2PPHOBYCRS
X-Message-ID-Hash: BL6Q73CDONIBDCJ5RWT5GS2PPHOBYCRS
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DRI Development <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] drm: Add might_fault to drm_modeset_lock priming
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BL6Q73CDONIBDCJ5RWT5GS2PPHOBYCRS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAxMCBKdWwgMjAyNCBhdCAxMzozOSwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMTAuMDcuMjQgdW0gMTE6MzEgc2Nocmll
YiBEYW5pZWwgVmV0dGVyOg0KPiA+IFdlIGFscmVhZHkgdGVhY2ggbG9ja2RlcCB0aGF0IGRtYV9y
ZXN2IG5lc3RzIHdpdGhpbiBkcm1fbW9kZXNldF9sb2NrLA0KPiA+IGJ1dCB0aGVyZSdzIGEgbG90
IG1vcmU6IEFsbCBkcm0ga21zIGlvY3RsIHJlbHkgb24gYmVpbmcgYWJsZSB0bw0KPiA+IHB1dC9n
ZXRfdXNlciB3aGlsZSBob2xkaW5nIG1vZGVzZXQgbG9ja3MsIHNvIHdlIHJlYWxseSBuZWVkIGEN
Cj4gPiBtaWdodF9mYXVsdCBpbiB0aGVyZSB0b28gdG8gY29tcGxldGUgdGhlIHBpY3R1cmUuIEFk
ZCBpdC4NCj4NCj4gTWhtLCBsb2NrZGVwIHNob3VsZCBiZSBhYmxlIHRvIGRlZHVjZSB0aGF0IHdo
ZW4gdGhlcmUgbWlnaHQgYmUgZmF1bHRzDQo+IHVuZGVyIHRoZSBkbWFfcmVzdiBsb2NrIHRoZXJl
IG1pZ2h0IGFsc28gYmUgZmF1bHRzIHVuZGVyIHRoZQ0KPiBkcm1fbW9kZXNldF9sb2NrLg0KDQpZ
b3UncmUgbm90IGFsbG93ZWQgdG8gdGFrZSBhIGZhdWx0IHVuZGVyIGRtYV9yZXN2LCBiZWNhdXNl
IGRyaXZlcnMNCm1pZ2h0IG5lZWQgdG8gdGFrZSB0aGF0IGxvY2sgdG8gaGFuZGxlIGZhdWx0cy4g
U28gdW5mb3J0dW5hdGVseSBpbiBvdXINCmNvbWJpbmVkIGxvY2tkZXAgcHJpbWluZywgdGhlcmUg
cmVhbGx5IHNlZW1zIHRvIGJlIG5vIGNoYWluIHlldCB0aGF0DQp0ZWFjaGVzIGFib3V0IGZhdWx0
cyBwb3NzaWJseSBoYXBwZW5pbmcgd2hpbGUgaG9sZGluZw0KZHJtX21vZGVzZXRfbG9jay4NCi1T
aW1hDQoNCj4NCj4gPg0KPiA+IE1vdGl2YXRlZCBieSBhIHN5emJvdCByZXBvcnQgdGhhdCBibGV3
IHVwIG9uIGJjYWNoZWZzIGRvaW5nIGFuDQo+ID4gdW5jb25kaXRpb25hbCBjb25zb2xlX2xvY2sg
d2F5IGRlZXAgaW4gdGhlIGxvY2tpbmcgaGllcmFyY2h5LCBhbmQNCj4gPiBsb2NrZGVwIG9ubHkg
bm90aWNpbmcgdGhlIGRlcGVuY3kgbG9vcCBpbiBhIGRybSBpb2N0bCBpbnN0ZWFkIG9mIG11Y2gN
Cj4gPiBlYXJsaWVyLiBUaGlzIGFubm90YXRpb24gd2lsbCBtYWtlIHN1cmUgc3VjaCBpc3N1ZXMg
aGF2ZSBhIG11Y2ggaGFyZGVyDQo+ID4gdGltZSBlc2NhcGluZy4NCj4gPg0KPiA+IFJlZmVyZW5j
ZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8wMDAwMDAwMDAwMDA3M2RiOGIw
NjFjZDQzNDk2QGdvb2dsZS5jb20vDQo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+DQo+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IE1heGltZSBSaXBhcmQgPG1y
aXBhcmRAa2VybmVsLm9yZz4NCj4gPiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5u
QHN1c2UuZGU+DQo+ID4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+
DQo+ID4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
PiA+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiBDYzogbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnDQo+DQo+IE9uIHRoZSBvdGhlciBoYW5kIHBvaW50aW5nIGl0IG91
dCBleHBsaWNpdGx5IGRvZXNuJ3QgaHVydHMgdXMgYXQgYWxsLCBzbw0KPiBSZXZpZXdlZC1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPi4NCj4NCj4gUmVnYXJk
cywNCj4gQ2hyaXN0aWFuLg0KPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9t
b2RlX2NvbmZpZy5jIHwgMiArKw0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9jb25maWcu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9jb25maWcuYw0KPiA+IGluZGV4IDU2ODk3MjI1
ODIyMi4uMzdkMmUwYTRlZjRiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
bW9kZV9jb25maWcuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9jb25maWcu
Yw0KPiA+IEBAIC00NTYsNiArNDU2LDggQEAgaW50IGRybW1fbW9kZV9jb25maWdfaW5pdChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2KQ0KPiA+ICAgICAgICAgICAgICAgaWYgKHJldCA9PSAtRURFQURM
SykNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgcmV0ID0gZHJtX21vZGVzZXRfYmFja29mZigm
bW9kZXNldF9jdHgpOw0KPiA+DQo+ID4gKyAgICAgICAgICAgICBtaWdodF9mYXVsdCgpOw0KPiA+
ICsNCj4gPiAgICAgICAgICAgICAgIHd3X2FjcXVpcmVfaW5pdCgmcmVzdl9jdHgsICZyZXNlcnZh
dGlvbl93d19jbGFzcyk7DQo+ID4gICAgICAgICAgICAgICByZXQgPSBkbWFfcmVzdl9sb2NrKCZy
ZXN2LCAmcmVzdl9jdHgpOw0KPiA+ICAgICAgICAgICAgICAgaWYgKHJldCA9PSAtRURFQURMSykN
Cj4NCg0KDQotLSANCkRhbmllbCBWZXR0ZXINClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jw
b3JhdGlvbg0KaHR0cDovL2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
