Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A036974A00
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Sep 2024 07:58:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E999C44AE3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Sep 2024 05:58:50 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	by lists.linaro.org (Postfix) with ESMTPS id 92EB54008F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Sep 2024 05:58:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=YNYK8gsF;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.50 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-277c861d9f6so3489084fac.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Sep 2024 22:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726034328; x=1726639128; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NQuYmmGkZQSTH3xLGsMnzwcqDZfFYWN76TvS9W1XNG8=;
        b=YNYK8gsFShBJqhUHDYbxGlp8Izv/lqvXWyexgmbdNWl4YPLljWcBuqwCs7ffF3LK5v
         SlDNIpROmblzF/TfckNTgZsbnT1pSZCQykpH9yxH7VnxWrblTyYupOdM6Ev81H9doJVu
         6zInDUE5IUcEsnjXkRbNUKkwRVOxGh5ozTV6izlir7X0TQbJQpFlAgdJoPFUo/MVA+aT
         rMDloZQ6gV8pEM+IaMH5sDxgyf0u/XUIt4SVjkEbvJgf4x2z5CXkEQgp0Kmk/4rfTw0J
         R/KbkgAeT0dlEOAMBsTvzvdFsLwaqj7GIe46StBdnBGwWkbGYyib2UfjSFMUu8Kk0wo+
         wchw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726034328; x=1726639128;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NQuYmmGkZQSTH3xLGsMnzwcqDZfFYWN76TvS9W1XNG8=;
        b=cR/zWlFyaL/6l1Ip6dKl8vHo52SWvjR9wWhlVn9vhlL3J2jFpjY+A39o4fHj000+Ej
         siTkBEbPH1Ag3UVpcVbBZ1M534gPlBGQh/JOrPFk5lg1V305D1C4zwgH0sRdrMmL7ZWp
         cYbBNQ/4QJlzo2VUdwvkcl53PMAulM09X1txTVMH5mnyrU1OB+MWbflbiiS3Few5UB/g
         kOJza9LGTLmW5dpViW3NUPHHNj4pmCtBTRYQR1DFMHyxA1ghhYMNXUKZLfrDc95y3Mp/
         R+KwEr+FVOZZjzWV50JDeqcOx6JMyKI+fK5HvHPDx5Qss/MBaDpA4SUs5o0A/gPgG+4Q
         pWdA==
X-Forwarded-Encrypted: i=1; AJvYcCUbTB5+9M3gzTKTIeeC7QcOuFR0QcCPyxjklQUBgSliTr61klVlJJo0iwdHTqSGgTXBLGIsmuu9T9jwUTTu@lists.linaro.org
X-Gm-Message-State: AOJu0YxROT3sla1TKSY/gmv8Qj7rApjWGZLRt2tSKJiiZfzwEhrE5xTc
	yfqktqRJbFBOLPh+le+RddUU9m3gplDnU0qHre+jpY/+GZPz1PZLEKljy/gn3XjTLeO5g1QH41K
	l8lE/GRv/jPPelCPZC63/a3/nNqD1oTRHQU9Vfm95
X-Google-Smtp-Source: AGHT+IGW84UWOA5xC2203pkvht57DpEX0/BC3BhwlaltfaRSJeBxnIuKEFhXcRdVK9MgL8mADdwKjHbUJPQhBWPPeEQ=
X-Received: by 2002:a05:6870:469e:b0:277:ca2f:905 with SMTP id
 586e51a60fabf-27b82fab148mr16719695fac.29.1726034327791; Tue, 10 Sep 2024
 22:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <20240830070351.2855919-5-jens.wiklander@linaro.org> <CABdmKX2KzswmiDY4oWw69_rPWs8d_Cqp7OXouSeMQaYX1SDSmw@mail.gmail.com>
 <CAHUa44FYYFVQWf0DGUXNHoOVQEC0-HRyYa0386dHNjo4y1qSiQ@mail.gmail.com>
 <CABdmKX0qd0RoTn2TBQTs9zdf=_JP8pW8hFRUR_7n_t-sfxsGdg@mail.gmail.com>
 <CAHUa44E-7UMseWSEeneYYnAPyhH___=a1YYR6uaOVTNZytzg7g@mail.gmail.com> <CABdmKX2Tsp-KG6_Lth7VUcZcxCfgbsBYqZ5N2h574J+sNP2SxA@mail.gmail.com>
In-Reply-To: <CABdmKX2Tsp-KG6_Lth7VUcZcxCfgbsBYqZ5N2h574J+sNP2SxA@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Wed, 11 Sep 2024 07:58:36 +0200
Message-ID: <CAHUa44G9j4rOZHX+XCQyM+mkru12Hy01iyj=USHHiD0raTDfZA@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Rspamd-Action: no action
X-Spamd-Bar: ------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 92EB54008F
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.50:from];
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
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: VUXP7UNHQA5F6BAWAMNAP3ZD4LPC66ZC
X-Message-ID-Hash: VUXP7UNHQA5F6BAWAMNAP3ZD4LPC66ZC
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 4/4] dma-buf: heaps: add Linaro restricted dmabuf heap support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VUXP7UNHQA5F6BAWAMNAP3ZD4LPC66ZC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBTZXAgMTAsIDIwMjQgYXQgNTowOOKAr1BNIFQuSi4gTWVyY2llciA8dGptZXJjaWVy
QGdvb2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBNb24sIFNlcCA5LCAyMDI0IGF0IDExOjA24oCv
UE0gSmVucyBXaWtsYW5kZXINCj4gPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+IHdyb3RlOg0K
PiA+DQo+ID4gT24gV2VkLCBTZXAgNCwgMjAyNCBhdCAxMTo0MuKAr1BNIFQuSi4gTWVyY2llciA8
dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3RlOg0KPiA+ID4NCj4gPiA+IE9uIFdlZCwgU2VwIDQs
IDIwMjQgYXQgMjo0NOKAr0FNIEplbnMgV2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8u
b3JnPiB3cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4gT24gVHVlLCBTZXAgMywgMjAyNCBhdCA3OjUw
4oCvUE0gVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4gPiA+
ID4NCj4gPiA+ID4gPiBPbiBGcmksIEF1ZyAzMCwgMjAyNCBhdCAxMjowNOKAr0FNIEplbnMgV2lr
bGFuZGVyDQo+ID4gPiA+ID4gPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+IHdyb3RlOg0KPiA+
ID4gPiA+ID4NCj4gPiA+ID4gPiA+IEFkZCBhIExpbmFybyByZXN0cmljdGVkIGhlYXAgdXNpbmcg
dGhlIGxpbmFybyxyZXN0cmljdGVkLWhlYXAgYmluZGluZ3MNCj4gPiA+ID4gPiA+IGltcGxlbWVu
dGVkIGJhc2VkIG9uIHRoZSBnZW5lcmljIHJlc3RyaWN0ZWQgaGVhcC4NCj4gPiA+ID4gPiA+DQo+
ID4gPiA+ID4gPiBUaGUgYmluZGluZ3MgZGVmaW5lcyBhIHJhbmdlIG9mIHBoeXNpY2FsIHJlc3Ry
aWN0ZWQgbWVtb3J5LiBUaGUgaGVhcA0KPiA+ID4gPiA+ID4gbWFuYWdlcyB0aGlzIGFkZHJlc3Mg
cmFuZ2UgdXNpbmcgZ2VuYWxsb2MuIFRoZSBhbGxvY2F0ZWQgZG1hLWJ1ZiBmaWxlDQo+ID4gPiA+
ID4gPiBkZXNjcmlwdG9yIGNhbiBsYXRlciBiZSByZWdpc3RlcmVkIHdpdGggdGhlIFRFRSBzdWJz
eXN0ZW0gZm9yIGxhdGVyIHVzZQ0KPiA+ID4gPiA+ID4gdmlhIFRydXN0ZWQgQXBwbGljYXRpb25z
IGluIHRoZSBzZWN1cmUgd29ybGQuDQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gQ28tZGV2ZWxv
cGVkLWJ5OiBPbGl2aWVyIE1hc3NlIDxvbGl2aWVyLm1hc3NlQG54cC5jb20+DQo+ID4gPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBPbGl2aWVyIE1hc3NlIDxvbGl2aWVyLm1hc3NlQG54cC5jb20+DQo+
ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZW5zIFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJA
bGluYXJvLm9yZz4NCj4gPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ID4gIGRyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9LY29uZmlnICAgICAgICAgICAgICAgICB8ICAxMCArKw0KPiA+ID4gPiA+ID4gIGRy
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZSAgICAgICAgICAgICAgICB8ICAgMSArDQo+ID4g
PiA+ID4gPiAgLi4uL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwX2xpbmFyby5jICAgIHwg
MTY1ICsrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTc2
IGluc2VydGlvbnMoKykNCj4gPiA+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9k
bWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcF9saW5hcm8uYw0KPiA+ID4gPiA+ID4NCj4gPiA+
ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZyBiL2RyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnDQo+ID4gPiA+ID4gPiBpbmRleCA1ODkwM2JjNjJhYzgu
LjgyZTJjNWQwOTI0MiAxMDA2NDQNCj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9o
ZWFwcy9LY29uZmlnDQo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvS2Nv
bmZpZw0KPiA+ID4gPiA+ID4gQEAgLTI4LDMgKzI4LDEzIEBAIGNvbmZpZyBETUFCVUZfSEVBUFNf
UkVTVFJJQ1RFRF9NVEsNCj4gPiA+ID4gPiA+ICAgICAgICAgaGVscA0KPiA+ID4gPiA+ID4gICAg
ICAgICAgIEVuYWJsZSByZXN0cmljdGVkIGRtYS1idWYgaGVhcHMgZm9yIE1lZGlhVGVrIHBsYXRm
b3JtLiBUaGlzIGhlYXAgaXMgYmFja2VkIGJ5DQo+ID4gPiA+ID4gPiAgICAgICAgICAgVEVFIGNs
aWVudCBpbnRlcmZhY2VzLiBJZiBpbiBkb3VidCwgc2F5IE4uDQo+ID4gPiA+ID4gPiArDQo+ID4g
PiA+ID4gPiArY29uZmlnIERNQUJVRl9IRUFQU19SRVNUUklDVEVEX0xJTkFSTw0KPiA+ID4gPiA+
ID4gKyAgICAgICBib29sICJMaW5hcm8gRE1BLUJVRiBSZXN0cmljdGVkIEhlYXAiDQo+ID4gPiA+
ID4gPiArICAgICAgIGRlcGVuZHMgb24gRE1BQlVGX0hFQVBTX1JFU1RSSUNURUQNCj4gPiA+ID4g
PiA+ICsgICAgICAgaGVscA0KPiA+ID4gPiA+ID4gKyAgICAgICAgIENob29zZSB0aGlzIG9wdGlv
biB0byBlbmFibGUgdGhlIExpbmFybyByZXN0cmljdGVkIGRtYS1idWYgaGVhcC4NCj4gPiA+ID4g
PiA+ICsgICAgICAgICBUaGUgcmVzdHJpY3RlZCBoZWFwIHBvb2xzIGFyZSBkZWZpbmVkIGFjY29y
ZGluZyB0byB0aGUgRFQuIEhlYXBzDQo+ID4gPiA+ID4gPiArICAgICAgICAgYXJlIGFsbG9jYXRl
ZCBpbiB0aGUgcG9vbHMgdXNpbmcgZ2VuIGFsbG9jYXRlci4NCj4gPiA+ID4gPiA+ICsgICAgICAg
ICBJZiBpbiBkb3VidCwgc2F5IE4uDQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlIGIvZHJpdmVycy9kbWEtYnVmL2hl
YXBzL01ha2VmaWxlDQo+ID4gPiA+ID4gPiBpbmRleCAwMDI4YWE5ZDg3NWYuLjY2YjJmNjdjNDdi
NSAxMDA2NDQNCj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmls
ZQ0KPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlDQo+ID4g
PiA+ID4gPiBAQCAtMiw0ICsyLDUgQEANCj4gPiA+ID4gPiA+ICBvYmotJChDT05GSUdfRE1BQlVG
X0hFQVBTX0NNQSkgICAgICAgICArPSBjbWFfaGVhcC5vDQo+ID4gPiA+ID4gPiAgb2JqLSQoQ09O
RklHX0RNQUJVRl9IRUFQU19SRVNUUklDVEVEKSAgKz0gcmVzdHJpY3RlZF9oZWFwLm8NCj4gPiA+
ID4gPiA+ICBvYmotJChDT05GSUdfRE1BQlVGX0hFQVBTX1JFU1RSSUNURURfTVRLKSAgICAgICs9
IHJlc3RyaWN0ZWRfaGVhcF9tdGsubw0KPiA+ID4gPiA+ID4gK29iai0kKENPTkZJR19ETUFCVUZf
SEVBUFNfUkVTVFJJQ1RFRF9MSU5BUk8pICAgKz0gcmVzdHJpY3RlZF9oZWFwX2xpbmFyby5vDQo+
ID4gPiA+ID4gPiAgb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19TWVNURU0pICAgICAgKz0gc3lz
dGVtX2hlYXAubw0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9yZXN0cmljdGVkX2hlYXBfbGluYXJvLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJp
Y3RlZF9oZWFwX2xpbmFyby5jDQo+ID4gPiA+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+
ID4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi40YjA4ZWQ1MTQwMjMNCj4gPiA+ID4gPiA+IC0t
LSAvZGV2L251bGwNCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9yZXN0
cmljdGVkX2hlYXBfbGluYXJvLmMNCj4gPiA+ID4gPiA+IEBAIC0wLDAgKzEsMTY1IEBADQo+ID4g
PiA+ID4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjANCj4gPiA+ID4gPiA+
ICsvKg0KPiA+ID4gPiA+ID4gKyAqIERNQUJVRiBzZWN1cmUgaGVhcCBleHBvcnRlcg0KPiA+ID4g
PiA+ID4gKyAqDQo+ID4gPiA+ID4gPiArICogQ29weXJpZ2h0IDIwMjEgTlhQLg0KPiA+ID4gPiA+
ID4gKyAqIENvcHlyaWdodCAyMDI0IExpbmFybyBMaW1pdGVkLg0KPiA+ID4gPiA+ID4gKyAqLw0K
PiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gKyNkZWZpbmUgcHJfZm10KGZtdCkgICAgICJyaGVh
cF9saW5hcm86ICIgZm10DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArI2luY2x1ZGUgPGxp
bnV4L2RtYS1idWYuaD4NCj4gPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+ID4g
PiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2dlbmFsbG9jLmg+DQo+ID4gPiA+ID4gPiArI2luY2x1
ZGUgPGxpbnV4L21vZHVsZS5oPg0KPiA+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPg0K
PiA+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9mZHQuaD4NCj4gPiA+ID4gPiA+ICsjaW5j
bHVkZSA8bGludXgvb2ZfcmVzZXJ2ZWRfbWVtLmg+DQo+ID4gPiA+ID4gPiArI2luY2x1ZGUgPGxp
bnV4L3NjYXR0ZXJsaXN0Lmg+DQo+ID4gPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4N
Cj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICsjaW5jbHVkZSAicmVzdHJpY3RlZF9oZWFwLmgi
DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArI2RlZmluZSBNQVhfSEVBUF9DT1VOVCAyDQo+
ID4gPiA+ID4NCj4gPiA+ID4gPiBBcmUgbXVsdGlwbGUgc3VwcG9ydGVkIGJlY2F1c2Ugb2Ygd2hh
dCBDeXJpbGxlIG1lbnRpb25lZCBoZXJlIGFib3V0IHBlcm1pc3Npb25zPw0KPiA+ID4gPiA+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvREJCUFIwNE1CNzUxNEUwMDY0NTVBRUE0MDcwNDFF
NEY3ODg3MDlAREJCUFIwNE1CNzUxNC5ldXJwcmQwNC5wcm9kLm91dGxvb2suY29tLw0KPiA+ID4g
Pg0KPiA+ID4gPiBZZXMsIEkga2VwdCB0aGF0IGFzIGlzLg0KPiA+ID4NCj4gPiA+IE9rIHRoYW5r
cy4NCj4gPiA+DQo+ID4gPiA+ID4gU28gdGhpcyBpcyBqdXN0IHNvbWUgYXJiaXRyYXJ5IGxpbWl0
PyBJJ2QgcHJlZmVyIHRvIGhhdmUgc29tZSBzb3J0IG9mDQo+ID4gPiA+ID4gZG9jdW1lbnRhdGlv
biBhYm91dCB0aGlzLg0KPiA+ID4gPg0KPiA+ID4gPiBIb3cgYWJvdXQgcmVtb3ZpbmcgdGhlIGxp
bWl0IGFuZCB1c2luZyBkeW5hbWljIGFsbG9jYXRpb24gaW5zdGVhZD8NCj4gPiA+DQo+ID4gPiBU
aGF0IHdvcmtzIHRvbyENCj4gPg0KPiA+IEl0IHR1cm5zIG91dCB0aGF0IHdhcyBlYXNpZXIgc2Fp
ZCB0aGFuIGRvbmUuIFRoZSBsaW1pdCBpcyBoYXJkY29kZWQNCj4gPiBiZWNhdXNlIGR5bmFtaWMg
bWVtb3J5IGFsbG9jYXRpb24gaXNuJ3QgYXZhaWxhYmxlIGF0IHRoYXQgc3RhZ2UgZHVyaW5nDQo+
ID4gYm9vdC4gV2UgaGF2ZSBhIHNob3J0IGRlc2NyaXB0aW9uIG9mIHRoaXMgaGVhcCBpbiBLY29u
ZmlnLiBJJ2xsIGFkZA0KPiA+IHNvbWV0aGluZyBhYm91dCB0aGUgbGltaXQgdGhlcmUgaWYgdGhh
dCBtYWtlcyBzZW5zZS4NCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBKZW5zDQo+DQo+IEFoIG9rIHNv
dW5kcyBnb29kLg0KPg0KPiBJIG5vdGljZWQgb25lIG90aGVyIHRoaW5nLCBsaW5hcm9fcmVzdHJp
Y3RlZF9oZWFwX2luaXQgYW5kIGFkZF9oZWFwDQo+IHNob3VsZCBwcm9iYWJseSBoYXZlIF9faW5p
dC4gTGFzdCB3ZWVrIEkgc2VudCBhIHBhdGNoIHRvIGFkZCB0aGF0IGZvcg0KPiB0aGUgQ01BIGFu
ZCBzeXN0ZW0gaGVhcHMuDQoNClRoYW5rcywgSSdsbCBhZGQgaXQuDQoNCkNoZWVycywNCkplbnMN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
