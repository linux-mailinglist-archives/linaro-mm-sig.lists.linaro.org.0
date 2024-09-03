Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 897F996A5DC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Sep 2024 19:51:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 941BE43C12
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Sep 2024 17:51:16 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by lists.linaro.org (Postfix) with ESMTPS id 0C6673F370
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Sep 2024 17:50:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=PT5yTZEn;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.160.170 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-456871a4d8fso29501cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Sep 2024 10:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1725385817; x=1725990617; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JrFeVjsToed3Zl4nCqY+dKTT7Tnujwq6CI4PwJa2K18=;
        b=PT5yTZEnVrd4NAwgBGC8KBtg5j9C/DONcRpZqlH8VgMP21HXbeD21bTQ8fK4WJChNc
         nXMYOdVDX8BZWKAum/iIzHjkRQ8ZynmvuQJgS0g3w2EfqcO8BA2hOK/NKtTnUkZvxgwz
         9P4xxOU4CnHFMUPe7Uz1Qxu+KaSSRCTdXQObBFnyNOAJA6Jt8BWfDcOV71dYPQmwTrhQ
         oSruWYp1n7R0MS5DoU3RyTwhKETVEuJ/yqHJS2LNqpOToh6UPR+8ntTSvdDhhTeGly+s
         jmvYWevSaicAWpPlVhP60G/Ebf7bXocqoBrBV/hK0dwbUP2VF8F2B6bTf6YhIBadDyv/
         Ry+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725385817; x=1725990617;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JrFeVjsToed3Zl4nCqY+dKTT7Tnujwq6CI4PwJa2K18=;
        b=xRdwKDN1Cb8+GF0dibg3F/PVgnOqGWZ+QN8H0TiknicoLbC0iugKXQGmkbi7qJ7vjq
         D5RAPEs/4TmMMbi2aWeoWnAm7AcihNmDKB7sJB9UDZAgsZ5weAJQAX5np/0VkS1qC08E
         +iunuuYcUUoYlJLUbmlv8infE8vGO5TXuvGNmaAqGRq+UNb0e5l9tWcMJ9Pmx7G/QyaY
         lcE7sjA9YIjyXqLcDRNcaEfBGjm45tyy7Rat2nEfTiTi7hIM+O+mUh6hX+rlWGcLls4k
         TcjVk5zMIGmEzTdESDEMz/JuHZ8uWA0+LerrGcIrfBD2bKTOI7B4f3eyCI34wRJfUqrs
         tCHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWaWQyMowwk8rQEyoWZ2i62kk9W/2l4KT7zmZIbU51+qDf5lryyoPjsQcTFdTf2TVLr1uxxzb/zS5GkKcb@lists.linaro.org
X-Gm-Message-State: AOJu0Yyj59u+pwTDV9UXrsX90qZeOTVwJlE5ERsbhQW3BNxxvSJEWBDG
	KPjQiQ46jFPDd1swTG0GJ+W3bKA8alTOeh6hMQZtxfs6BJfXXCiFyDULrm9SpZ+tN+3JSp9UN7t
	WfSaJEjbydFJ+DESHVv0D4zPwA1pGXFL6hK6r
X-Google-Smtp-Source: AGHT+IFLN1lkdyhPhtJ7VV4yd4KAzRRhRDJbTZcdZABtsAuM+hteQRAQb6ynMiViAEg4qg+jaKvZxxEgZDrm35jdMxc=
X-Received: by 2002:a05:622a:155:b0:453:5b5a:e77c with SMTP id
 d75a77b69052e-457f622cbfbmr95461cf.10.1725385817316; Tue, 03 Sep 2024
 10:50:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org> <20240830070351.2855919-5-jens.wiklander@linaro.org>
In-Reply-To: <20240830070351.2855919-5-jens.wiklander@linaro.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 3 Sep 2024 10:50:03 -0700
Message-ID: <CABdmKX2KzswmiDY4oWw69_rPWs8d_Cqp7OXouSeMQaYX1SDSmw@mail.gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
X-Rspamd-Action: no action
X-Spamd-Bar: --
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0C6673F370
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.170:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.160.170:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: 6DIFRZ4MRQPLAZZKE57ZTDX6GIU6OMOZ
X-Message-ID-Hash: 6DIFRZ4MRQPLAZZKE57ZTDX6GIU6OMOZ
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 4/4] dma-buf: heaps: add Linaro restricted dmabuf heap support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6DIFRZ4MRQPLAZZKE57ZTDX6GIU6OMOZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBBdWcgMzAsIDIwMjQgYXQgMTI6MDTigK9BTSBKZW5zIFdpa2xhbmRlcg0KPGplbnMu
d2lrbGFuZGVyQGxpbmFyby5vcmc+IHdyb3RlOg0KPg0KPiBBZGQgYSBMaW5hcm8gcmVzdHJpY3Rl
ZCBoZWFwIHVzaW5nIHRoZSBsaW5hcm8scmVzdHJpY3RlZC1oZWFwIGJpbmRpbmdzDQo+IGltcGxl
bWVudGVkIGJhc2VkIG9uIHRoZSBnZW5lcmljIHJlc3RyaWN0ZWQgaGVhcC4NCj4NCj4gVGhlIGJp
bmRpbmdzIGRlZmluZXMgYSByYW5nZSBvZiBwaHlzaWNhbCByZXN0cmljdGVkIG1lbW9yeS4gVGhl
IGhlYXANCj4gbWFuYWdlcyB0aGlzIGFkZHJlc3MgcmFuZ2UgdXNpbmcgZ2VuYWxsb2MuIFRoZSBh
bGxvY2F0ZWQgZG1hLWJ1ZiBmaWxlDQo+IGRlc2NyaXB0b3IgY2FuIGxhdGVyIGJlIHJlZ2lzdGVy
ZWQgd2l0aCB0aGUgVEVFIHN1YnN5c3RlbSBmb3IgbGF0ZXIgdXNlDQo+IHZpYSBUcnVzdGVkIEFw
cGxpY2F0aW9ucyBpbiB0aGUgc2VjdXJlIHdvcmxkLg0KPg0KPiBDby1kZXZlbG9wZWQtYnk6IE9s
aXZpZXIgTWFzc2UgPG9saXZpZXIubWFzc2VAbnhwLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogT2xp
dmllciBNYXNzZSA8b2xpdmllci5tYXNzZUBueHAuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKZW5z
IFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJAbGluYXJvLm9yZz4NCj4gLS0tDQo+ICBkcml2ZXJz
L2RtYS1idWYvaGVhcHMvS2NvbmZpZyAgICAgICAgICAgICAgICAgfCAgMTAgKysNCj4gIGRyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZSAgICAgICAgICAgICAgICB8ICAgMSArDQo+ICAuLi4v
ZG1hLWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXBfbGluYXJvLmMgICAgfCAxNjUgKysrKysrKysr
KysrKysrKysrDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDE3NiBpbnNlcnRpb25zKCspDQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcF9saW5h
cm8uYw0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL0tjb25maWcgYi9k
cml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZw0KPiBpbmRleCA1ODkwM2JjNjJhYzguLjgyZTJj
NWQwOTI0MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL0tjb25maWcNCj4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL0tjb25maWcNCj4gQEAgLTI4LDMgKzI4LDEzIEBA
IGNvbmZpZyBETUFCVUZfSEVBUFNfUkVTVFJJQ1RFRF9NVEsNCj4gICAgICAgICBoZWxwDQo+ICAg
ICAgICAgICBFbmFibGUgcmVzdHJpY3RlZCBkbWEtYnVmIGhlYXBzIGZvciBNZWRpYVRlayBwbGF0
Zm9ybS4gVGhpcyBoZWFwIGlzIGJhY2tlZCBieQ0KPiAgICAgICAgICAgVEVFIGNsaWVudCBpbnRl
cmZhY2VzLiBJZiBpbiBkb3VidCwgc2F5IE4uDQo+ICsNCj4gK2NvbmZpZyBETUFCVUZfSEVBUFNf
UkVTVFJJQ1RFRF9MSU5BUk8NCj4gKyAgICAgICBib29sICJMaW5hcm8gRE1BLUJVRiBSZXN0cmlj
dGVkIEhlYXAiDQo+ICsgICAgICAgZGVwZW5kcyBvbiBETUFCVUZfSEVBUFNfUkVTVFJJQ1RFRA0K
PiArICAgICAgIGhlbHANCj4gKyAgICAgICAgIENob29zZSB0aGlzIG9wdGlvbiB0byBlbmFibGUg
dGhlIExpbmFybyByZXN0cmljdGVkIGRtYS1idWYgaGVhcC4NCj4gKyAgICAgICAgIFRoZSByZXN0
cmljdGVkIGhlYXAgcG9vbHMgYXJlIGRlZmluZWQgYWNjb3JkaW5nIHRvIHRoZSBEVC4gSGVhcHMN
Cj4gKyAgICAgICAgIGFyZSBhbGxvY2F0ZWQgaW4gdGhlIHBvb2xzIHVzaW5nIGdlbiBhbGxvY2F0
ZXIuDQo+ICsgICAgICAgICBJZiBpbiBkb3VidCwgc2F5IE4uDQo+ICsNCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZSBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9N
YWtlZmlsZQ0KPiBpbmRleCAwMDI4YWE5ZDg3NWYuLjY2YjJmNjdjNDdiNSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9NYWtlZmlsZQ0KPiBAQCAtMiw0ICsyLDUgQEANCj4gIG9iai0kKENPTkZJR19ETUFC
VUZfSEVBUFNfQ01BKSAgICAgICAgICs9IGNtYV9oZWFwLm8NCj4gIG9iai0kKENPTkZJR19ETUFC
VUZfSEVBUFNfUkVTVFJJQ1RFRCkgICs9IHJlc3RyaWN0ZWRfaGVhcC5vDQo+ICBvYmotJChDT05G
SUdfRE1BQlVGX0hFQVBTX1JFU1RSSUNURURfTVRLKSAgICAgICs9IHJlc3RyaWN0ZWRfaGVhcF9t
dGsubw0KPiArb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19SRVNUUklDVEVEX0xJTkFSTykgICAr
PSByZXN0cmljdGVkX2hlYXBfbGluYXJvLm8NCj4gIG9iai0kKENPTkZJR19ETUFCVUZfSEVBUFNf
U1lTVEVNKSAgICAgICs9IHN5c3RlbV9oZWFwLm8NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXBfbGluYXJvLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVh
cHMvcmVzdHJpY3RlZF9oZWFwX2xpbmFyby5jDQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGlu
ZGV4IDAwMDAwMDAwMDAwMC4uNGIwOGVkNTE0MDIzDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcF9saW5hcm8uYw0KPiBAQCAtMCww
ICsxLDE2NSBAQA0KPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjANCj4gKy8q
DQo+ICsgKiBETUFCVUYgc2VjdXJlIGhlYXAgZXhwb3J0ZXINCj4gKyAqDQo+ICsgKiBDb3B5cmln
aHQgMjAyMSBOWFAuDQo+ICsgKiBDb3B5cmlnaHQgMjAyNCBMaW5hcm8gTGltaXRlZC4NCj4gKyAq
Lw0KPiArDQo+ICsjZGVmaW5lIHByX2ZtdChmbXQpICAgICAicmhlYXBfbGluYXJvOiAiIGZtdA0K
PiArDQo+ICsjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L2Vy
ci5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L2dlbmFsbG9jLmg+DQo+ICsjaW5jbHVkZSA8bGludXgv
bW9kdWxlLmg+DQo+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9v
Zl9mZHQuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9vZl9yZXNlcnZlZF9tZW0uaD4NCj4gKyNpbmNs
dWRlIDxsaW51eC9zY2F0dGVybGlzdC5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4g
Kw0KPiArI2luY2x1ZGUgInJlc3RyaWN0ZWRfaGVhcC5oIg0KPiArDQo+ICsjZGVmaW5lIE1BWF9I
RUFQX0NPVU5UIDINCg0KQXJlIG11bHRpcGxlIHN1cHBvcnRlZCBiZWNhdXNlIG9mIHdoYXQgQ3ly
aWxsZSBtZW50aW9uZWQgaGVyZSBhYm91dCBwZXJtaXNzaW9ucz8NCmh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xrbWwvREJCUFIwNE1CNzUxNEUwMDY0NTVBRUE0MDcwNDFFNEY3ODg3MDlAREJCUFIw
NE1CNzUxNC5ldXJwcmQwNC5wcm9kLm91dGxvb2suY29tLw0KDQpTbyB0aGlzIGlzIGp1c3Qgc29t
ZSBhcmJpdHJhcnkgbGltaXQ/IEknZCBwcmVmZXIgdG8gaGF2ZSBzb21lIHNvcnQgb2YNCmRvY3Vt
ZW50YXRpb24gYWJvdXQgdGhpcy4NCg0KDQo+ICsjZGVmaW5lIEhFQVBfTkFNRV9MRU4gIDMyDQo+
ICsNCj4gK3N0cnVjdCByZXNtZW1fcmVzdHJpY3RlZCB7DQo+ICsgICAgICAgcGh5c19hZGRyX3Qg
YmFzZTsNCj4gKyAgICAgICBwaHlzX2FkZHJfdCBzaXplOw0KPiArDQo+ICsgICAgICAgY2hhciBu
YW1lW0hFQVBfTkFNRV9MRU5dOw0KPiArDQo+ICsgICAgICAgYm9vbCBub19tYXA7DQo+ICt9Ow0K
PiArDQo+ICtzdGF0aWMgc3RydWN0IHJlc21lbV9yZXN0cmljdGVkIHJlc3RyaWN0ZWRfZGF0YVtN
QVhfSEVBUF9DT1VOVF0gPSB7MH07DQo+ICtzdGF0aWMgdW5zaWduZWQgaW50IHJlc3RyaWN0ZWRf
ZGF0YV9jb3VudDsNCj4gKw0KPiArc3RhdGljIGludCBsaW5hcm9fcmVzdHJpY3RlZF9tZW1vcnlf
YWxsb2NhdGUoc3RydWN0IHJlc3RyaWN0ZWRfaGVhcCAqaGVhcCwNCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHJlc3RyaWN0ZWRfYnVmZmVyICpi
dWYpDQo+ICt7DQo+ICsgICAgICAgc3RydWN0IGdlbl9wb29sICpwb29sID0gaGVhcC0+cHJpdl9k
YXRhOw0KPiArICAgICAgIHVuc2lnbmVkIGxvbmcgcGE7DQo+ICsgICAgICAgaW50IHJldDsNCj4g
Kw0KPiArICAgICAgIGJ1Zi0+c2l6ZSA9IEFMSUdOKGJ1Zi0+c2l6ZSwgUEFHRV9TSVpFKTsNCj4g
KyAgICAgICBwYSA9IGdlbl9wb29sX2FsbG9jKHBvb2wsIGJ1Zi0+c2l6ZSk7DQo+ICsgICAgICAg
aWYgKCFwYSkNCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOw0KPiArDQo+ICsgICAg
ICAgcmV0ID0gc2dfYWxsb2NfdGFibGUoJmJ1Zi0+c2dfdGFibGUsIDEsIEdGUF9LRVJORUwpOw0K
PiArICAgICAgIGlmIChyZXQpIHsNCj4gKyAgICAgICAgICAgICAgIGdlbl9wb29sX2ZyZWUocG9v
bCwgcGEsIGJ1Zi0+c2l6ZSk7DQo+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiArICAg
ICAgIH0NCj4gKw0KPiArICAgICAgIHNnX3NldF9wYWdlKGJ1Zi0+c2dfdGFibGUuc2dsLCBwaHlz
X3RvX3BhZ2UocGEpLCBidWYtPnNpemUsIDApOw0KPiArDQo+ICsgICAgICAgcmV0dXJuIDA7DQo+
ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIGxpbmFyb19yZXN0cmljdGVkX21lbW9yeV9mcmVlKHN0
cnVjdCByZXN0cmljdGVkX2hlYXAgKmhlYXAsDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCByZXN0cmljdGVkX2J1ZmZlciAqYnVmKQ0KPiArew0KPiAr
ICAgICAgIHN0cnVjdCBnZW5fcG9vbCAqcG9vbCA9IGhlYXAtPnByaXZfZGF0YTsNCj4gKyAgICAg
ICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOw0KPiArICAgICAgIHVuc2lnbmVkIGludCBpOw0KPiAr
DQo+ICsgICAgICAgZm9yX2VhY2hfc2coYnVmLT5zZ190YWJsZS5zZ2wsIHNnLCBidWYtPnNnX3Rh
YmxlLm5lbnRzLCBpKQ0KPiArICAgICAgICAgICAgICAgZ2VuX3Bvb2xfZnJlZShwb29sLCBwYWdl
X3RvX3BoeXMoc2dfcGFnZShzZykpLCBzZy0+bGVuZ3RoKTsNCj4gKyAgICAgICBzZ19mcmVlX3Rh
YmxlKCZidWYtPnNnX3RhYmxlKTsNCj4gK30NCj4gKw0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBy
ZXN0cmljdGVkX2hlYXBfb3BzIGxpbmFyb19yZXN0cmljdGVkX2hlYXBfb3BzID0gew0KPiArICAg
ICAgIC5hbGxvYyA9IGxpbmFyb19yZXN0cmljdGVkX21lbW9yeV9hbGxvY2F0ZSwNCj4gKyAgICAg
ICAuZnJlZSA9IGxpbmFyb19yZXN0cmljdGVkX21lbW9yeV9mcmVlLA0KPiArfTsNCj4gKw0KPiAr
c3RhdGljIGludCBhZGRfaGVhcChzdHJ1Y3QgcmVzbWVtX3Jlc3RyaWN0ZWQgKm1lbSkNCj4gK3sN
Cj4gKyAgICAgICBzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFwOw0KPiArICAgICAgIHN0cnVj
dCBnZW5fcG9vbCAqcG9vbDsNCj4gKyAgICAgICBpbnQgcmV0Ow0KPiArDQo+ICsgICAgICAgaWYg
KG1lbS0+YmFzZSA9PSAwIHx8IG1lbS0+c2l6ZSA9PSAwKSB7DQo+ICsgICAgICAgICAgICAgICBw
cl9lcnIoInJlc3RyaWN0ZWRfZGF0YSBiYXNlIG9yIHNpemUgaXMgbm90IGNvcnJlY3RcbiIpOw0K
PiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+ICsgICAgICAgfQ0KPiArDQo+ICsg
ICAgICAgaGVhcCA9IGt6YWxsb2Moc2l6ZW9mKCpoZWFwKSwgR0ZQX0tFUk5FTCk7DQo+ICsgICAg
ICAgaWYgKCFoZWFwKQ0KPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ICsNCj4g
KyAgICAgICBwb29sID0gZ2VuX3Bvb2xfY3JlYXRlKFBBR0VfU0hJRlQsIC0xKTsNCj4gKyAgICAg
ICBpZiAoIXBvb2wpIHsNCj4gKyAgICAgICAgICAgICAgIHJldCA9IC1FTk9NRU07DQo+ICsgICAg
ICAgICAgICAgICBnb3RvIGVycl9mcmVlX2hlYXA7DQo+ICsgICAgICAgfQ0KPiArDQo+ICsgICAg
ICAgcmV0ID0gZ2VuX3Bvb2xfYWRkKHBvb2wsIG1lbS0+YmFzZSwgbWVtLT5zaXplLCAtMSk7DQo+
ICsgICAgICAgaWYgKHJldCkNCj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWVfcG9vbDsN
Cj4gKw0KPiArICAgICAgIGhlYXAtPm5vX21hcCA9IG1lbS0+bm9fbWFwOw0KPiArICAgICAgIGhl
YXAtPnByaXZfZGF0YSA9IHBvb2w7DQo+ICsgICAgICAgaGVhcC0+bmFtZSA9IG1lbS0+bmFtZTsN
Cj4gKyAgICAgICBoZWFwLT5vcHMgPSAmbGluYXJvX3Jlc3RyaWN0ZWRfaGVhcF9vcHM7DQo+ICsN
Cj4gKyAgICAgICByZXQgPSByZXN0cmljdGVkX2hlYXBfYWRkKGhlYXApOw0KPiArICAgICAgIGlm
IChyZXQpDQo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9mcmVlX3Bvb2w7DQo+ICsNCj4gKyAg
ICAgICByZXR1cm4gMDsNCj4gKw0KPiArZXJyX2ZyZWVfcG9vbDoNCj4gKyAgICAgICBnZW5fcG9v
bF9kZXN0cm95KHBvb2wpOw0KPiArZXJyX2ZyZWVfaGVhcDoNCj4gKyAgICAgICBrZnJlZShoZWFw
KTsNCj4gKw0KPiArICAgICAgIHJldHVybiByZXQ7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQg
X19pbml0IHJtZW1fcmVzdHJpY3RlZF9oZWFwX3NldHVwKHN0cnVjdCByZXNlcnZlZF9tZW0gKnJt
ZW0pDQo+ICt7DQo+ICsgICAgICAgc2l6ZV90IGxlbiA9IEhFQVBfTkFNRV9MRU47DQo+ICsgICAg
ICAgY29uc3QgY2hhciAqczsNCj4gKyAgICAgICBib29sIG5vX21hcDsNCj4gKw0KPiArICAgICAg
IGlmIChXQVJOX09OQ0UocmVzdHJpY3RlZF9kYXRhX2NvdW50ID49IE1BWF9IRUFQX0NPVU5ULA0K
PiArICAgICAgICAgICAgICAgICAgICAgIkNhbm5vdCBoYW5kbGUgbW9yZSB0aGFuICV1IHJlc3Ry
aWN0ZWQgaGVhcHNcbiIsDQo+ICsgICAgICAgICAgICAgICAgICAgICBNQVhfSEVBUF9DT1VOVCkp
DQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiArICAgICAgIG5vX21h
cCA9IG9mX2dldF9mbGF0X2R0X3Byb3Aocm1lbS0+ZmR0X25vZGUsICJuby1tYXAiLCBOVUxMKTsN
Cj4gKyAgICAgICBzID0gc3RyY2hyKHJtZW0tPm5hbWUsICdAJyk7DQo+ICsgICAgICAgaWYgKHMp
DQo+ICsgICAgICAgICAgICAgICBsZW4gPSB1bWluKHMgLSBybWVtLT5uYW1lICsgMSwgbGVuKTsN
Cj4gKw0KPiArICAgICAgIHJlc3RyaWN0ZWRfZGF0YVtyZXN0cmljdGVkX2RhdGFfY291bnRdLmJh
c2UgPSBybWVtLT5iYXNlOw0KPiArICAgICAgIHJlc3RyaWN0ZWRfZGF0YVtyZXN0cmljdGVkX2Rh
dGFfY291bnRdLnNpemUgPSBybWVtLT5zaXplOw0KPiArICAgICAgIHJlc3RyaWN0ZWRfZGF0YVty
ZXN0cmljdGVkX2RhdGFfY291bnRdLm5vX21hcCA9IG5vX21hcDsNCj4gKyAgICAgICBzdHJzY3B5
KHJlc3RyaWN0ZWRfZGF0YVtyZXN0cmljdGVkX2RhdGFfY291bnRdLm5hbWUsIHJtZW0tPm5hbWUs
IGxlbik7DQo+ICsNCj4gKyAgICAgICByZXN0cmljdGVkX2RhdGFfY291bnQrKzsNCj4gKyAgICAg
ICByZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArUkVTRVJWRURNRU1fT0ZfREVDTEFSRShsaW5hcm9f
cmVzdHJpY3RlZF9oZWFwLCAibGluYXJvLHJlc3RyaWN0ZWQtaGVhcCIsDQo+ICsgICAgICAgICAg
ICAgICAgICAgICAgcm1lbV9yZXN0cmljdGVkX2hlYXBfc2V0dXApOw0KPiArDQo+ICtzdGF0aWMg
aW50IGxpbmFyb19yZXN0cmljdGVkX2hlYXBfaW5pdCh2b2lkKQ0KPiArew0KPiArICAgICAgIHVu
c2lnbmVkIGludCBpOw0KPiArICAgICAgIGludCByZXQ7DQo+ICsNCj4gKyAgICAgICBmb3IgKGkg
PSAwOyBpIDwgcmVzdHJpY3RlZF9kYXRhX2NvdW50OyBpKyspIHsNCj4gKyAgICAgICAgICAgICAg
IHJldCA9IGFkZF9oZWFwKCZyZXN0cmljdGVkX2RhdGFbaV0pOw0KPiArICAgICAgICAgICAgICAg
aWYgKHJldCkNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4gKyAgICAg
ICB9DQo+ICsgICAgICAgcmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK21vZHVsZV9pbml0KGxpbmFy
b19yZXN0cmljdGVkX2hlYXBfaW5pdCk7DQo+ICtNT0RVTEVfREVTQ1JJUFRJT04oIkxpbmFybyBS
ZXN0cmljdGVkIEhlYXAgRHJpdmVyIik7DQo+ICtNT0RVTEVfTElDRU5TRSgiR1BMIik7DQo+IC0t
DQo+IDIuMzQuMQ0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
