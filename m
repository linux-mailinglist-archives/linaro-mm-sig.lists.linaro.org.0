Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0879A96C9A4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Sep 2024 23:42:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB5C1441C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Sep 2024 21:42:43 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by lists.linaro.org (Postfix) with ESMTPS id 939AB40D56
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Sep 2024 21:42:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=vHujHyal;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.160.170 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4567fe32141so42261cf.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Sep 2024 14:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1725486161; x=1726090961; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XUOw5lMiHDw0MiG7UAI15FhQeJ9HSg6Beuvp398enyw=;
        b=vHujHyalD2FMgO9vI5mSKrfw4TgVYvocCHFimP7rzsiur8lKnfe6pBY1tGj23/E6Gn
         aUFa+7Y+LP04c0oMKss8guatqV3XG7Vldtx5slDEvVZ0Tkua5AE+DhvAA3L6ygCBX6zQ
         ccpJ0tPQ5b+fyldHG/RDuBgWfVxX8tfmTB2vq0Q0uL0jHaPhmJLSDUCZtV6b3FZO4Fgo
         HkC52pSHZUdewYKPpZjbcxhMAv471KjorOEcEheir1eorGzq0DYToJ8sX9WaD97LY7hy
         nUbiNZtMMq0xI9t4IyJlA5/uYky3NXKT4+WptYWR2/kkk+UTIybNRlFkiVxj3sInqPKk
         vlkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725486161; x=1726090961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XUOw5lMiHDw0MiG7UAI15FhQeJ9HSg6Beuvp398enyw=;
        b=uqAmh7jAuVVsxNE9LhSKuJ5y/NsZ2osfG4d0agFh30eTnd2LRtcJRDwtccm0M80g4/
         QZHMp/CnLujFhnUVI2fy47kJHvSPmTm0zzw9d0+OeX+kpfTaN05tOIlPzxdOxqaFbFMb
         N3a3IjPmlu6EXx4pMWyiO22Zj/qomGgaHean3pdqpGQpQEOPjrn63MzJyBlAmKeKww7V
         tydynsEl+KLakRm5it16fRXjDDYZwM1mFzGkjl15rkWEiMXjMWCSxNe9Nn8kw6Nvo8WX
         9pmEyBQ9tpWTR+anYfrnsj8r/zUmi6XxNpqAk7zbAamwRgW57xihGMBVWEcdqXyOSdbK
         1RXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtwqNs1V+HpQ9d+FhV7sCoMtuwwa3R2sF0jS4dx/AxnCVf2orMrTED9wZQXge0Fh2L1oyw23Kc544yKKG5@lists.linaro.org
X-Gm-Message-State: AOJu0YwQ26yn/wC8DRYf+ifqnY4i7SEBY16k5CgHhKIDhqPTlcPlrdVI
	ZyGH0NeDKA+Dm1H7GH6hmYfRzhUUNcNcaMhkZFem08eWnaApYrGscC5t0SZfFswMLokFqKVaTsJ
	a4zxD7XOn8pELRJ4l5u9lQ5x7f3srBbkbb0vC
X-Google-Smtp-Source: AGHT+IEpGF7+WsKzz/JrGdpbLM/PeRMTZKHHeKwab0nvhh64NIvNlNBwZyTBj3hwa0VujqMyfqFoFxJtF/XvbPvKPO0=
X-Received: by 2002:a05:622a:6790:b0:456:7d9f:2af8 with SMTP id
 d75a77b69052e-458033f9c82mr245311cf.7.1725486160847; Wed, 04 Sep 2024
 14:42:40 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <20240830070351.2855919-5-jens.wiklander@linaro.org> <CABdmKX2KzswmiDY4oWw69_rPWs8d_Cqp7OXouSeMQaYX1SDSmw@mail.gmail.com>
 <CAHUa44FYYFVQWf0DGUXNHoOVQEC0-HRyYa0386dHNjo4y1qSiQ@mail.gmail.com>
In-Reply-To: <CAHUa44FYYFVQWf0DGUXNHoOVQEC0-HRyYa0386dHNjo4y1qSiQ@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 4 Sep 2024 14:42:28 -0700
Message-ID: <CABdmKX0qd0RoTn2TBQTs9zdf=_JP8pW8hFRUR_7n_t-sfxsGdg@mail.gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
X-Rspamd-Action: no action
X-Spamd-Bar: ------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 939AB40D56
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.170:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: U6A3L4OLGISQOF3BG4QPPV6W5GUQPHM2
X-Message-ID-Hash: U6A3L4OLGISQOF3BG4QPPV6W5GUQPHM2
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 4/4] dma-buf: heaps: add Linaro restricted dmabuf heap support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U6A3L4OLGISQOF3BG4QPPV6W5GUQPHM2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBTZXAgNCwgMjAyNCBhdCAyOjQ04oCvQU0gSmVucyBXaWtsYW5kZXIgPGplbnMud2lr
bGFuZGVyQGxpbmFyby5vcmc+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIFNlcCAzLCAyMDI0IGF0IDc6
NTDigK9QTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90ZToNCj4gPg0K
PiA+IE9uIEZyaSwgQXVnIDMwLCAyMDI0IGF0IDEyOjA04oCvQU0gSmVucyBXaWtsYW5kZXINCj4g
PiA8amVucy53aWtsYW5kZXJAbGluYXJvLm9yZz4gd3JvdGU6DQo+ID4gPg0KPiA+ID4gQWRkIGEg
TGluYXJvIHJlc3RyaWN0ZWQgaGVhcCB1c2luZyB0aGUgbGluYXJvLHJlc3RyaWN0ZWQtaGVhcCBi
aW5kaW5ncw0KPiA+ID4gaW1wbGVtZW50ZWQgYmFzZWQgb24gdGhlIGdlbmVyaWMgcmVzdHJpY3Rl
ZCBoZWFwLg0KPiA+ID4NCj4gPiA+IFRoZSBiaW5kaW5ncyBkZWZpbmVzIGEgcmFuZ2Ugb2YgcGh5
c2ljYWwgcmVzdHJpY3RlZCBtZW1vcnkuIFRoZSBoZWFwDQo+ID4gPiBtYW5hZ2VzIHRoaXMgYWRk
cmVzcyByYW5nZSB1c2luZyBnZW5hbGxvYy4gVGhlIGFsbG9jYXRlZCBkbWEtYnVmIGZpbGUNCj4g
PiA+IGRlc2NyaXB0b3IgY2FuIGxhdGVyIGJlIHJlZ2lzdGVyZWQgd2l0aCB0aGUgVEVFIHN1YnN5
c3RlbSBmb3IgbGF0ZXIgdXNlDQo+ID4gPiB2aWEgVHJ1c3RlZCBBcHBsaWNhdGlvbnMgaW4gdGhl
IHNlY3VyZSB3b3JsZC4NCj4gPiA+DQo+ID4gPiBDby1kZXZlbG9wZWQtYnk6IE9saXZpZXIgTWFz
c2UgPG9saXZpZXIubWFzc2VAbnhwLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE9saXZpZXIg
TWFzc2UgPG9saXZpZXIubWFzc2VAbnhwLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEplbnMg
V2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPg0KPiA+ID4gLS0tDQo+ID4gPiAg
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL0tjb25maWcgICAgICAgICAgICAgICAgIHwgIDEwICsrDQo+
ID4gPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlICAgICAgICAgICAgICAgIHwgICAx
ICsNCj4gPiA+ICAuLi4vZG1hLWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXBfbGluYXJvLmMgICAg
fCAxNjUgKysrKysrKysrKysrKysrKysrDQo+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNzYgaW5z
ZXJ0aW9ucygrKQ0KPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RtYS1idWYvaGVh
cHMvcmVzdHJpY3RlZF9oZWFwX2xpbmFyby5jDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL0tjb25m
aWcNCj4gPiA+IGluZGV4IDU4OTAzYmM2MmFjOC4uODJlMmM1ZDA5MjQyIDEwMDY0NA0KPiA+ID4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL0tjb25maWcNCj4gPiA+ICsrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9LY29uZmlnDQo+ID4gPiBAQCAtMjgsMyArMjgsMTMgQEAgY29uZmlnIERN
QUJVRl9IRUFQU19SRVNUUklDVEVEX01USw0KPiA+ID4gICAgICAgICBoZWxwDQo+ID4gPiAgICAg
ICAgICAgRW5hYmxlIHJlc3RyaWN0ZWQgZG1hLWJ1ZiBoZWFwcyBmb3IgTWVkaWFUZWsgcGxhdGZv
cm0uIFRoaXMgaGVhcCBpcyBiYWNrZWQgYnkNCj4gPiA+ICAgICAgICAgICBURUUgY2xpZW50IGlu
dGVyZmFjZXMuIElmIGluIGRvdWJ0LCBzYXkgTi4NCj4gPiA+ICsNCj4gPiA+ICtjb25maWcgRE1B
QlVGX0hFQVBTX1JFU1RSSUNURURfTElOQVJPDQo+ID4gPiArICAgICAgIGJvb2wgIkxpbmFybyBE
TUEtQlVGIFJlc3RyaWN0ZWQgSGVhcCINCj4gPiA+ICsgICAgICAgZGVwZW5kcyBvbiBETUFCVUZf
SEVBUFNfUkVTVFJJQ1RFRA0KPiA+ID4gKyAgICAgICBoZWxwDQo+ID4gPiArICAgICAgICAgQ2hv
b3NlIHRoaXMgb3B0aW9uIHRvIGVuYWJsZSB0aGUgTGluYXJvIHJlc3RyaWN0ZWQgZG1hLWJ1ZiBo
ZWFwLg0KPiA+ID4gKyAgICAgICAgIFRoZSByZXN0cmljdGVkIGhlYXAgcG9vbHMgYXJlIGRlZmlu
ZWQgYWNjb3JkaW5nIHRvIHRoZSBEVC4gSGVhcHMNCj4gPiA+ICsgICAgICAgICBhcmUgYWxsb2Nh
dGVkIGluIHRoZSBwb29scyB1c2luZyBnZW4gYWxsb2NhdGVyLg0KPiA+ID4gKyAgICAgICAgIElm
IGluIGRvdWJ0LCBzYXkgTi4NCj4gPiA+ICsNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvaGVhcHMvTWFrZWZpbGUgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvTWFrZWZpbGUNCj4g
PiA+IGluZGV4IDAwMjhhYTlkODc1Zi4uNjZiMmY2N2M0N2I1IDEwMDY0NA0KPiA+ID4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlDQo+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1i
dWYvaGVhcHMvTWFrZWZpbGUNCj4gPiA+IEBAIC0yLDQgKzIsNSBAQA0KPiA+ID4gIG9iai0kKENP
TkZJR19ETUFCVUZfSEVBUFNfQ01BKSAgICAgICAgICs9IGNtYV9oZWFwLm8NCj4gPiA+ICBvYmot
JChDT05GSUdfRE1BQlVGX0hFQVBTX1JFU1RSSUNURUQpICArPSByZXN0cmljdGVkX2hlYXAubw0K
PiA+ID4gIG9iai0kKENPTkZJR19ETUFCVUZfSEVBUFNfUkVTVFJJQ1RFRF9NVEspICAgICAgKz0g
cmVzdHJpY3RlZF9oZWFwX210ay5vDQo+ID4gPiArb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19S
RVNUUklDVEVEX0xJTkFSTykgICArPSByZXN0cmljdGVkX2hlYXBfbGluYXJvLm8NCj4gPiA+ICBv
YmotJChDT05GSUdfRE1BQlVGX0hFQVBTX1NZU1RFTSkgICAgICArPSBzeXN0ZW1faGVhcC5vDQo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcF9s
aW5hcm8uYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXBfbGluYXJvLmMN
Cj4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjRi
MDhlZDUxNDAyMw0KPiA+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ID4gKysrIGIvZHJpdmVycy9kbWEt
YnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcF9saW5hcm8uYw0KPiA+ID4gQEAgLTAsMCArMSwxNjUg
QEANCj4gPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0KPiA+ID4gKy8q
DQo+ID4gPiArICogRE1BQlVGIHNlY3VyZSBoZWFwIGV4cG9ydGVyDQo+ID4gPiArICoNCj4gPiA+
ICsgKiBDb3B5cmlnaHQgMjAyMSBOWFAuDQo+ID4gPiArICogQ29weXJpZ2h0IDIwMjQgTGluYXJv
IExpbWl0ZWQuDQo+ID4gPiArICovDQo+ID4gPiArDQo+ID4gPiArI2RlZmluZSBwcl9mbXQoZm10
KSAgICAgInJoZWFwX2xpbmFybzogIiBmbXQNCj4gPiA+ICsNCj4gPiA+ICsjaW5jbHVkZSA8bGlu
dXgvZG1hLWJ1Zi5oPg0KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9lcnIuaD4NCj4gPiA+ICsjaW5j
bHVkZSA8bGludXgvZ2VuYWxsb2MuaD4NCj4gPiA+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+
DQo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L29mLmg+DQo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L29m
X2ZkdC5oPg0KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9yZXNlcnZlZF9tZW0uaD4NCj4gPiA+
ICsjaW5jbHVkZSA8bGludXgvc2NhdHRlcmxpc3QuaD4NCj4gPiA+ICsjaW5jbHVkZSA8bGludXgv
c2xhYi5oPg0KPiA+ID4gKw0KPiA+ID4gKyNpbmNsdWRlICJyZXN0cmljdGVkX2hlYXAuaCINCj4g
PiA+ICsNCj4gPiA+ICsjZGVmaW5lIE1BWF9IRUFQX0NPVU5UIDINCj4gPg0KPiA+IEFyZSBtdWx0
aXBsZSBzdXBwb3J0ZWQgYmVjYXVzZSBvZiB3aGF0IEN5cmlsbGUgbWVudGlvbmVkIGhlcmUgYWJv
dXQgcGVybWlzc2lvbnM/DQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9EQkJQUjA0
TUI3NTE0RTAwNjQ1NUFFQTQwNzA0MUU0Rjc4ODcwOUBEQkJQUjA0TUI3NTE0LmV1cnByZDA0LnBy
b2Qub3V0bG9vay5jb20vDQo+DQo+IFllcywgSSBrZXB0IHRoYXQgYXMgaXMuDQoNCk9rIHRoYW5r
cy4NCg0KPiA+IFNvIHRoaXMgaXMganVzdCBzb21lIGFyYml0cmFyeSBsaW1pdD8gSSdkIHByZWZl
ciB0byBoYXZlIHNvbWUgc29ydCBvZg0KPiA+IGRvY3VtZW50YXRpb24gYWJvdXQgdGhpcy4NCj4N
Cj4gSG93IGFib3V0IHJlbW92aW5nIHRoZSBsaW1pdCBhbmQgdXNpbmcgZHluYW1pYyBhbGxvY2F0
aW9uIGluc3RlYWQ/DQoNClRoYXQgd29ya3MgdG9vIQ0KDQo+DQo+IFRoYW5rcywNCj4gSmVucw0K
Pg0KPiA+DQo+ID4NCj4gPiA+ICsjZGVmaW5lIEhFQVBfTkFNRV9MRU4gIDMyDQo+ID4gPiArDQo+
ID4gPiArc3RydWN0IHJlc21lbV9yZXN0cmljdGVkIHsNCj4gPiA+ICsgICAgICAgcGh5c19hZGRy
X3QgYmFzZTsNCj4gPiA+ICsgICAgICAgcGh5c19hZGRyX3Qgc2l6ZTsNCj4gPiA+ICsNCj4gPiA+
ICsgICAgICAgY2hhciBuYW1lW0hFQVBfTkFNRV9MRU5dOw0KPiA+ID4gKw0KPiA+ID4gKyAgICAg
ICBib29sIG5vX21hcDsNCj4gPiA+ICt9Ow0KPiA+ID4gKw0KPiA+ID4gK3N0YXRpYyBzdHJ1Y3Qg
cmVzbWVtX3Jlc3RyaWN0ZWQgcmVzdHJpY3RlZF9kYXRhW01BWF9IRUFQX0NPVU5UXSA9IHswfTsN
Cj4gPiA+ICtzdGF0aWMgdW5zaWduZWQgaW50IHJlc3RyaWN0ZWRfZGF0YV9jb3VudDsNCj4gPiA+
ICsNCj4gPiA+ICtzdGF0aWMgaW50IGxpbmFyb19yZXN0cmljdGVkX21lbW9yeV9hbGxvY2F0ZShz
dHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFwLA0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHJlc3RyaWN0ZWRfYnVmZmVyICpidWYpDQo+
ID4gPiArew0KPiA+ID4gKyAgICAgICBzdHJ1Y3QgZ2VuX3Bvb2wgKnBvb2wgPSBoZWFwLT5wcml2
X2RhdGE7DQo+ID4gPiArICAgICAgIHVuc2lnbmVkIGxvbmcgcGE7DQo+ID4gPiArICAgICAgIGlu
dCByZXQ7DQo+ID4gPiArDQo+ID4gPiArICAgICAgIGJ1Zi0+c2l6ZSA9IEFMSUdOKGJ1Zi0+c2l6
ZSwgUEFHRV9TSVpFKTsNCj4gPiA+ICsgICAgICAgcGEgPSBnZW5fcG9vbF9hbGxvYyhwb29sLCBi
dWYtPnNpemUpOw0KPiA+ID4gKyAgICAgICBpZiAoIXBhKQ0KPiA+ID4gKyAgICAgICAgICAgICAg
IHJldHVybiAtRU5PTUVNOw0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICByZXQgPSBzZ19hbGxvY190
YWJsZSgmYnVmLT5zZ190YWJsZSwgMSwgR0ZQX0tFUk5FTCk7DQo+ID4gPiArICAgICAgIGlmIChy
ZXQpIHsNCj4gPiA+ICsgICAgICAgICAgICAgICBnZW5fcG9vbF9mcmVlKHBvb2wsIHBhLCBidWYt
PnNpemUpOw0KPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+ID4gPiArICAgICAg
IH0NCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgc2dfc2V0X3BhZ2UoYnVmLT5zZ190YWJsZS5zZ2ws
IHBoeXNfdG9fcGFnZShwYSksIGJ1Zi0+c2l6ZSwgMCk7DQo+ID4gPiArDQo+ID4gPiArICAgICAg
IHJldHVybiAwOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+ICtzdGF0aWMgdm9pZCBsaW5hcm9f
cmVzdHJpY3RlZF9tZW1vcnlfZnJlZShzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFwLA0KPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHJlc3Ry
aWN0ZWRfYnVmZmVyICpidWYpDQo+ID4gPiArew0KPiA+ID4gKyAgICAgICBzdHJ1Y3QgZ2VuX3Bv
b2wgKnBvb2wgPSBoZWFwLT5wcml2X2RhdGE7DQo+ID4gPiArICAgICAgIHN0cnVjdCBzY2F0dGVy
bGlzdCAqc2c7DQo+ID4gPiArICAgICAgIHVuc2lnbmVkIGludCBpOw0KPiA+ID4gKw0KPiA+ID4g
KyAgICAgICBmb3JfZWFjaF9zZyhidWYtPnNnX3RhYmxlLnNnbCwgc2csIGJ1Zi0+c2dfdGFibGUu
bmVudHMsIGkpDQo+ID4gPiArICAgICAgICAgICAgICAgZ2VuX3Bvb2xfZnJlZShwb29sLCBwYWdl
X3RvX3BoeXMoc2dfcGFnZShzZykpLCBzZy0+bGVuZ3RoKTsNCj4gPiA+ICsgICAgICAgc2dfZnJl
ZV90YWJsZSgmYnVmLT5zZ190YWJsZSk7DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+ID4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwX29wcyBsaW5hcm9fcmVzdHJpY3RlZF9oZWFw
X29wcyA9IHsNCj4gPiA+ICsgICAgICAgLmFsbG9jID0gbGluYXJvX3Jlc3RyaWN0ZWRfbWVtb3J5
X2FsbG9jYXRlLA0KPiA+ID4gKyAgICAgICAuZnJlZSA9IGxpbmFyb19yZXN0cmljdGVkX21lbW9y
eV9mcmVlLA0KPiA+ID4gK307DQo+ID4gPiArDQo+ID4gPiArc3RhdGljIGludCBhZGRfaGVhcChz
dHJ1Y3QgcmVzbWVtX3Jlc3RyaWN0ZWQgKm1lbSkNCj4gPiA+ICt7DQo+ID4gPiArICAgICAgIHN0
cnVjdCByZXN0cmljdGVkX2hlYXAgKmhlYXA7DQo+ID4gPiArICAgICAgIHN0cnVjdCBnZW5fcG9v
bCAqcG9vbDsNCj4gPiA+ICsgICAgICAgaW50IHJldDsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAg
aWYgKG1lbS0+YmFzZSA9PSAwIHx8IG1lbS0+c2l6ZSA9PSAwKSB7DQo+ID4gPiArICAgICAgICAg
ICAgICAgcHJfZXJyKCJyZXN0cmljdGVkX2RhdGEgYmFzZSBvciBzaXplIGlzIG5vdCBjb3JyZWN0
XG4iKTsNCj4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPiA+ICsgICAg
ICAgfQ0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICBoZWFwID0ga3phbGxvYyhzaXplb2YoKmhlYXAp
LCBHRlBfS0VSTkVMKTsNCj4gPiA+ICsgICAgICAgaWYgKCFoZWFwKQ0KPiA+ID4gKyAgICAgICAg
ICAgICAgIHJldHVybiAtRU5PTUVNOw0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICBwb29sID0gZ2Vu
X3Bvb2xfY3JlYXRlKFBBR0VfU0hJRlQsIC0xKTsNCj4gPiA+ICsgICAgICAgaWYgKCFwb29sKSB7
DQo+ID4gPiArICAgICAgICAgICAgICAgcmV0ID0gLUVOT01FTTsNCj4gPiA+ICsgICAgICAgICAg
ICAgICBnb3RvIGVycl9mcmVlX2hlYXA7DQo+ID4gPiArICAgICAgIH0NCj4gPiA+ICsNCj4gPiA+
ICsgICAgICAgcmV0ID0gZ2VuX3Bvb2xfYWRkKHBvb2wsIG1lbS0+YmFzZSwgbWVtLT5zaXplLCAt
MSk7DQo+ID4gPiArICAgICAgIGlmIChyZXQpDQo+ID4gPiArICAgICAgICAgICAgICAgZ290byBl
cnJfZnJlZV9wb29sOw0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICBoZWFwLT5ub19tYXAgPSBtZW0t
Pm5vX21hcDsNCj4gPiA+ICsgICAgICAgaGVhcC0+cHJpdl9kYXRhID0gcG9vbDsNCj4gPiA+ICsg
ICAgICAgaGVhcC0+bmFtZSA9IG1lbS0+bmFtZTsNCj4gPiA+ICsgICAgICAgaGVhcC0+b3BzID0g
JmxpbmFyb19yZXN0cmljdGVkX2hlYXBfb3BzOw0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICByZXQg
PSByZXN0cmljdGVkX2hlYXBfYWRkKGhlYXApOw0KPiA+ID4gKyAgICAgICBpZiAocmV0KQ0KPiA+
ID4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWVfcG9vbDsNCj4gPiA+ICsNCj4gPiA+ICsg
ICAgICAgcmV0dXJuIDA7DQo+ID4gPiArDQo+ID4gPiArZXJyX2ZyZWVfcG9vbDoNCj4gPiA+ICsg
ICAgICAgZ2VuX3Bvb2xfZGVzdHJveShwb29sKTsNCj4gPiA+ICtlcnJfZnJlZV9oZWFwOg0KPiA+
ID4gKyAgICAgICBrZnJlZShoZWFwKTsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgcmV0dXJuIHJl
dDsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4gPiArc3RhdGljIGludCBfX2luaXQgcm1lbV9yZXN0
cmljdGVkX2hlYXBfc2V0dXAoc3RydWN0IHJlc2VydmVkX21lbSAqcm1lbSkNCj4gPiA+ICt7DQo+
ID4gPiArICAgICAgIHNpemVfdCBsZW4gPSBIRUFQX05BTUVfTEVOOw0KPiA+ID4gKyAgICAgICBj
b25zdCBjaGFyICpzOw0KPiA+ID4gKyAgICAgICBib29sIG5vX21hcDsNCj4gPiA+ICsNCj4gPiA+
ICsgICAgICAgaWYgKFdBUk5fT05DRShyZXN0cmljdGVkX2RhdGFfY291bnQgPj0gTUFYX0hFQVBf
Q09VTlQsDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgIkNhbm5vdCBoYW5kbGUgbW9yZSB0
aGFuICV1IHJlc3RyaWN0ZWQgaGVhcHNcbiIsDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
TUFYX0hFQVBfQ09VTlQpKQ0KPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0K
PiA+ID4gKw0KPiA+ID4gKyAgICAgICBub19tYXAgPSBvZl9nZXRfZmxhdF9kdF9wcm9wKHJtZW0t
PmZkdF9ub2RlLCAibm8tbWFwIiwgTlVMTCk7DQo+ID4gPiArICAgICAgIHMgPSBzdHJjaHIocm1l
bS0+bmFtZSwgJ0AnKTsNCj4gPiA+ICsgICAgICAgaWYgKHMpDQo+ID4gPiArICAgICAgICAgICAg
ICAgbGVuID0gdW1pbihzIC0gcm1lbS0+bmFtZSArIDEsIGxlbik7DQo+ID4gPiArDQo+ID4gPiAr
ICAgICAgIHJlc3RyaWN0ZWRfZGF0YVtyZXN0cmljdGVkX2RhdGFfY291bnRdLmJhc2UgPSBybWVt
LT5iYXNlOw0KPiA+ID4gKyAgICAgICByZXN0cmljdGVkX2RhdGFbcmVzdHJpY3RlZF9kYXRhX2Nv
dW50XS5zaXplID0gcm1lbS0+c2l6ZTsNCj4gPiA+ICsgICAgICAgcmVzdHJpY3RlZF9kYXRhW3Jl
c3RyaWN0ZWRfZGF0YV9jb3VudF0ubm9fbWFwID0gbm9fbWFwOw0KPiA+ID4gKyAgICAgICBzdHJz
Y3B5KHJlc3RyaWN0ZWRfZGF0YVtyZXN0cmljdGVkX2RhdGFfY291bnRdLm5hbWUsIHJtZW0tPm5h
bWUsIGxlbik7DQo+ID4gPiArDQo+ID4gPiArICAgICAgIHJlc3RyaWN0ZWRfZGF0YV9jb3VudCsr
Ow0KPiA+ID4gKyAgICAgICByZXR1cm4gMDsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4gPiArUkVT
RVJWRURNRU1fT0ZfREVDTEFSRShsaW5hcm9fcmVzdHJpY3RlZF9oZWFwLCAibGluYXJvLHJlc3Ry
aWN0ZWQtaGVhcCIsDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgIHJtZW1fcmVzdHJpY3Rl
ZF9oZWFwX3NldHVwKTsNCj4gPiA+ICsNCj4gPiA+ICtzdGF0aWMgaW50IGxpbmFyb19yZXN0cmlj
dGVkX2hlYXBfaW5pdCh2b2lkKQ0KPiA+ID4gK3sNCj4gPiA+ICsgICAgICAgdW5zaWduZWQgaW50
IGk7DQo+ID4gPiArICAgICAgIGludCByZXQ7DQo+ID4gPiArDQo+ID4gPiArICAgICAgIGZvciAo
aSA9IDA7IGkgPCByZXN0cmljdGVkX2RhdGFfY291bnQ7IGkrKykgew0KPiA+ID4gKyAgICAgICAg
ICAgICAgIHJldCA9IGFkZF9oZWFwKCZyZXN0cmljdGVkX2RhdGFbaV0pOw0KPiA+ID4gKyAgICAg
ICAgICAgICAgIGlmIChyZXQpDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4g
cmV0Ow0KPiA+ID4gKyAgICAgICB9DQo+ID4gPiArICAgICAgIHJldHVybiAwOw0KPiA+ID4gK30N
Cj4gPiA+ICsNCj4gPiA+ICttb2R1bGVfaW5pdChsaW5hcm9fcmVzdHJpY3RlZF9oZWFwX2luaXQp
Ow0KPiA+ID4gK01PRFVMRV9ERVNDUklQVElPTigiTGluYXJvIFJlc3RyaWN0ZWQgSGVhcCBEcml2
ZXIiKTsNCj4gPiA+ICtNT0RVTEVfTElDRU5TRSgiR1BMIik7DQo+ID4gPiAtLQ0KPiA+ID4gMi4z
NC4xDQo+ID4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
