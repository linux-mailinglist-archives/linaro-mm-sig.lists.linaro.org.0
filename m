Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE19A77683
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 10:33:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E78C3F66E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 08:33:51 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	by lists.linaro.org (Postfix) with ESMTPS id 0C9E63F66E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 08:33:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=dgHsAldj;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.45 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2c82007eaadso1606783fac.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Apr 2025 01:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743496396; x=1744101196; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/CPeJtNEQsuzyZj1LWzpLz2qGETWIvRqRfnm4VRDQlo=;
        b=dgHsAldjaCFiGA7iBGyqc74Oc/4XSdCs1XCPdEEOTEbZu/rq8jZBjO/gZLzceZgmfn
         4HnbbOyK4XUmo4T1vuuHAR6koF6kw+rlYVohUMgSZ4Zavh9Slr8Bp6/kmS6Gk0by42tX
         fbZ2Gt/bH70k0UuMF3Egue8g5I5Y2zgTfsg3Y4hktfZlnm4U4Ipzrx6suiQhvWyTEVUB
         Wqa8muJIQ+kABFqBtzdF8UWMaHqY1q2J4BPUiwMpyLzRjRhlk3ZlVq/5DklFpLSg1hTn
         tbGzUHvDNwObyiplK1XzZfQGVR41lPXyqDABpaluJGYMY+UgFaLCTxd1b+XIXVYBaMe+
         g6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743496396; x=1744101196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CPeJtNEQsuzyZj1LWzpLz2qGETWIvRqRfnm4VRDQlo=;
        b=trajpC3YUDKPDc4Fn35PDmD1NSDVv7treyOeslgoaRW9oEY350klhGD8x39LgNSkaV
         XCwnY5orMhkEBkhBQ4lKWzZlvH7/c0wuVBvQmXzbUmbsjZyEYEXLtnG0LSZCxEXc5kch
         A18y/loWw5eGXUJwm+6rcOc0kfhC2/fGVCSlCrbbcgeW3xr4CF7dACcHMylMdcJZVC3F
         CjN5hkj5wfgRcIBFMgjZydhXBpklTrHACZJN4f0XyuoDilvzCSHW3ALrS1MbdvqpwZCT
         6Eqn8aNu0IEU+oB72fqkoGBQy9WphMj8nVlzCVlX/y7Wmr0jCB7x7/yAL+bHuMfdvDx9
         FPcA==
X-Forwarded-Encrypted: i=1; AJvYcCUnF9SfQYOFqQjnri6do4n8U0uOR8F7IU+dWlT9Egj0TZuzFu5zdBAHhF7nT5DU9uyrYlaACjlT+xqWvVDI@lists.linaro.org
X-Gm-Message-State: AOJu0YwEviZTkwWORtc8SgknnfkdcKQC/hW4j1Q0A008mTXcCFnr+SDA
	B/OTnZN7coyocEnZJHTU5e/Umod3MCfE2rox2EoSnwgw0QocS8/uKMDUtbsfNaOFLBDX9m7M88O
	X+BgI/0uFRD60vtPXUomP6MQxEzbHYOAOWS6kHCVT
X-Gm-Gg: ASbGncuK9iIAp7IMFUbmE4xKzxBNoucgZl2dm05kg3BPLOZI2Ognq8pAlCdQICuJO2s
	tSElkUjQOTc/4EwPxi7IwR145TyTo/1qjBfXpAkDwUXFn+ECIA05Vo1j9bLw+LCZJggJzDrMDTA
	uXH9/BOUxRAUMRqKnyQ9YLKAwb0cs=
X-Google-Smtp-Source: AGHT+IH9KoU4vUjjPFFl/HpklAnLrv8QnpnI/vnq7QrGKUOSlwBJn74UzBQjYlMDiU71pl/whujtfshDhL1bJanCT0o=
X-Received: by 2002:a05:6870:7815:b0:2c1:9a53:83c4 with SMTP id
 586e51a60fabf-2cbcf755a40mr7187474fac.26.1743496396402; Tue, 01 Apr 2025
 01:33:16 -0700 (PDT)
MIME-Version: 1.0
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
 <20250305130634.1850178-6-jens.wiklander@linaro.org> <Z-JOPgcWlpTlskgd@sumit-X1>
 <CAHUa44GjpHT5Nqo+Ar5jNYNPV-YJQYpLTCf=7oJ1o0VjP-t0nA@mail.gmail.com> <Z-ucuPzwz4IqVTgb@sumit-X1>
In-Reply-To: <Z-ucuPzwz4IqVTgb@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 1 Apr 2025 10:33:04 +0200
X-Gm-Features: AQ5f1JrwSW9AJKXv4JPdCzTC-p9MDUHywS1_JUmGEaiaPvfsks0gIEo3VJPjUog
Message-ID: <CAHUa44FpsCVrbwj1=nsJVJFVJSF1kzKdWAkAMXRu6EdLrLvh8g@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0C9E63F66E
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.160.45:from];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.45:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: LGYHKNAAWLC3UWJCAAYOH2V4N72V3KKE
X-Message-ID-Hash: LGYHKNAAWLC3UWJCAAYOH2V4N72V3KKE
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 05/10] tee: implement restricted DMA-heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LGYHKNAAWLC3UWJCAAYOH2V4N72V3KKE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMSwgMjAyNSBhdCA5OjU44oCvQU0gU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0Br
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gT24gVHVlLCBNYXIgMjUsIDIwMjUgYXQgMTE6NTU6NDZB
TSArMDEwMCwgSmVucyBXaWtsYW5kZXIgd3JvdGU6DQo+ID4gSGkgU3VtaXQsDQo+ID4NCj4NCj4g
PHNuaXA+DQo+DQo+ID4NCj4gPiA+DQo+ID4gPiA+ICsNCj4gPiA+ID4gKyNpbmNsdWRlICJ0ZWVf
cHJpdmF0ZS5oIg0KPiA+ID4gPiArDQo+ID4gPiA+ICtzdHJ1Y3QgdGVlX2RtYV9oZWFwIHsNCj4g
PiA+ID4gKyAgICAgc3RydWN0IGRtYV9oZWFwICpoZWFwOw0KPiA+ID4gPiArICAgICBlbnVtIHRl
ZV9kbWFfaGVhcF9pZCBpZDsNCj4gPiA+ID4gKyAgICAgc3RydWN0IHRlZV9yc3RtZW1fcG9vbCAq
cG9vbDsNCj4gPiA+ID4gKyAgICAgc3RydWN0IHRlZV9kZXZpY2UgKnRlZWRldjsNCj4gPiA+ID4g
KyAgICAgLyogUHJvdGVjdHMgcG9vbCBhbmQgdGVlZGV2IGFib3ZlICovDQo+ID4gPiA+ICsgICAg
IHN0cnVjdCBtdXRleCBtdTsNCj4gPiA+ID4gK307DQo+ID4gPiA+ICsNCj4gPiA+ID4gK3N0cnVj
dCB0ZWVfaGVhcF9idWZmZXIgew0KPiA+ID4gPiArICAgICBzdHJ1Y3QgdGVlX3JzdG1lbV9wb29s
ICpwb29sOw0KPiA+ID4gPiArICAgICBzdHJ1Y3QgdGVlX2RldmljZSAqdGVlZGV2Ow0KPiA+ID4g
PiArICAgICBzaXplX3Qgc2l6ZTsNCj4gPiA+ID4gKyAgICAgc2l6ZV90IG9mZnM7DQo+ID4gPiA+
ICsgICAgIHN0cnVjdCBzZ190YWJsZSB0YWJsZTsNCj4gPiA+ID4gK307DQo+ID4gPiA+ICsNCj4g
PiA+ID4gK3N0cnVjdCB0ZWVfaGVhcF9hdHRhY2htZW50IHsNCj4gPiA+ID4gKyAgICAgc3RydWN0
IHNnX3RhYmxlIHRhYmxlOw0KPiA+ID4gPiArICAgICBzdHJ1Y3QgZGV2aWNlICpkZXY7DQo+ID4g
PiA+ICt9Ow0KPiA+ID4gPiArDQo+ID4gPiA+ICtzdHJ1Y3QgdGVlX3JzdG1lbV9zdGF0aWNfcG9v
bCB7DQo+ID4gPiA+ICsgICAgIHN0cnVjdCB0ZWVfcnN0bWVtX3Bvb2wgcG9vbDsNCj4gPiA+ID4g
KyAgICAgc3RydWN0IGdlbl9wb29sICpnZW5fcG9vbDsNCj4gPiA+ID4gKyAgICAgcGh5c19hZGRy
X3QgcGFfYmFzZTsNCj4gPiA+ID4gK307DQo+ID4gPiA+ICsNCj4gPiA+ID4gKyNpZiAhSVNfTU9E
VUxFKENPTkZJR19URUUpICYmIElTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9IRUFQUykNCj4gPiA+
DQo+ID4gPiBDYW4gdGhpcyBkZXBlbmRlbmN5IHJhdGhlciBiZSBiZXR0ZXIgbWFuYWdlZCB2aWEg
S2NvbmZpZz8NCj4gPg0KPiA+IFRoaXMgd2FzIHRoZSBlYXNpZXN0IHlldCBzb21ld2hhdCBmbGV4
aWJsZSBzb2x1dGlvbiBJIGNvdWxkIGZpbmQuIElmDQo+ID4geW91IGhhdmUgc29tZXRoaW5nIGJl
dHRlciwgbGV0J3MgdXNlIHRoYXQgaW5zdGVhZC4NCj4gPg0KPg0KPiAtLS0gYS9kcml2ZXJzL3Rl
ZS9vcHRlZS9LY29uZmlnDQo+ICsrKyBiL2RyaXZlcnMvdGVlL29wdGVlL0tjb25maWcNCj4gQEAg
LTUsNiArNSw3IEBAIGNvbmZpZyBPUFRFRQ0KPiAgICAgICAgIGRlcGVuZHMgb24gSEFWRV9BUk1f
U01DQ0MNCj4gICAgICAgICBkZXBlbmRzIG9uIE1NVQ0KPiAgICAgICAgIGRlcGVuZHMgb24gUlBN
QiB8fCAhUlBNQg0KPiArICAgICAgIHNlbGVjdCBETUFCVUZfSEVBUFMNCj4gICAgICAgICBoZWxw
DQo+ICAgICAgICAgICBUaGlzIGltcGxlbWVudHMgdGhlIE9QLVRFRSBUcnVzdGVkIEV4ZWN1dGlv
biBFbnZpcm9ubWVudCAoVEVFKQ0KPiAgICAgICAgICAgZHJpdmVyLg0KDQpJIHdhbnRlZCB0byBh
dm9pZCB0aGF0IHNpbmNlIHRoZXJlIGFyZSBwbGVudHkgb2YgdXNlIGNhc2VzIHdoZXJlDQpETUFC
VUZfSEVBUFMgYXJlbid0IG5lZWRlZC4gVGhpcyBzZWVtcyB0byBkbyB0aGUgam9iOg0KK2NvbmZp
ZyBURUVfRE1BQlVGX0hFQVANCisgYm9vbA0KKyBkZXBlbmRzIG9uIFRFRSA9IHkgJiYgRE1BQlVG
X0hFQVBTDQoNCldlIGNhbiBvbmx5IHVzZSBETUFCVUZfSEVBUFMgaWYgdGhlIFRFRSBzdWJzeXN0
ZW0gaXMgY29tcGlsZWQgaW50byB0aGUga2VybmVsLg0KDQpDaGVlcnMsDQpKZW5zDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
