Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E3A7CF7B9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:58:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16C4140C23
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:58:22 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id E65323EC22
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Oct 2023 19:11:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=qWBZT3PB;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.175 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1c9c145bb5bso23855ad.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Oct 2023 12:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697224269; x=1697829069; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OIApqMtAf+eEfCsXpXLPAMDeUbkWbPlPHXxQvDgA8ZU=;
        b=qWBZT3PBtscxvzTVKeXrECr9iWs/x+KzqlX6ZGSIj7vocmcMPNm4LQ+3sQ6si34Top
         duLhVcyC6UWs20q2gcvu0lt3qBx4mvcpOvF33fjJSe7YNJSxjK1r73t1slmUNdUoTQwl
         0lnxED8nIRQp32Hz7TMNBvgsrNkcGc4jnGwE6+c9Wxp/iWK5Gse0znAhZ5w8KVMUNj5o
         AVd/HHE8XFmFTE6vxlLfGubGNSjBq378vwmQuiowWRo3KQgKMbaPdsFEvZCNUb05QYlQ
         k4FX6OL0XbaoB2nz+2ku7KMgnpRrHYI5Uc8pbjcTPEsHm0DVhfdzaG0l3qGy1Spzxwue
         Cpqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697224269; x=1697829069;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OIApqMtAf+eEfCsXpXLPAMDeUbkWbPlPHXxQvDgA8ZU=;
        b=jykQdtT2Z/YGRbWctTKLQpovzoPug1AInOfIT9AbLMdyOixHbjhYisIoWBUDlociOz
         /pa8XQD+B4jVtg9pZsmm16KDmjXaadNtczkw6Bm49ambFojHpOugXWrsHe1XFediTkgX
         s6lW/kqKn//ucnn3y5bfxXmmDV93JmA7j67v5loUwpYMFJhJ5SVeC0uFxVgCOiWSw9Cc
         gwt1otO1Hvf7cz+MTHcFYsSZVmB5MWgM0qco8SGZQNO0DI9M2xob13ECZoxQI0x6u6Iw
         xlt6VCg6i1W7eZylMZphNrc5dJ4UBuQ7+5S9RjxqjPrqdhbd1dQM+xGnigUftzebXuYV
         MUQg==
X-Gm-Message-State: AOJu0Yy9XHdoMV6o5F+h27ueF+/GOC+GAMwFUasHD1QUxVEmXQC0AHgb
	Mj0/dmcxYZVbkx2/5M+1CUp0Z1wykqbLJX2B3PDz
X-Google-Smtp-Source: AGHT+IEbp+zs59rwJa1MDe1tv5wsWi8dFryOgKdUJ954CEvyw0oPHsE6G9aZGZSlQ2dzDzA0ijsFPKGAHWeYvLgdlco=
X-Received: by 2002:a17:902:d544:b0:1c5:ca8d:136b with SMTP id
 z4-20020a170902d54400b001c5ca8d136bmr14874plf.14.1697224268678; Fri, 13 Oct
 2023 12:11:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230911023038.30649-1-yong.wu@mediatek.com> <20230911023038.30649-6-yong.wu@mediatek.com>
 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com> <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
 <d798b15b-6f35-96db-e3f7-5c0bcc5d46a2@collabora.com> <a4ecc2792f3a4d3159e34415be984ff7d5f5e263.camel@mediatek.com>
 <20230927134614.kp27moxdw72jiu4y@pop-os.localdomain> <3aaafe47-3733-a4d5-038d-a7e439309282@collabora.com>
 <CA+ddPcP4=p37cV5Tbn5zTUbiL4ou+Yqb=5rS+O_ff8ZUw64D3Q@mail.gmail.com>
 <80695726-1a98-12d4-ad7d-d731f2f3caeb@collabora.com> <CA+ddPcPES=4FcQRkvVnW=C9mL6hCxVfCcoLDJSjb58UiDmS_Mg@mail.gmail.com>
 <32e515e1-b7a2-de3c-723b-ade3ec760b4d@collabora.com>
In-Reply-To: <32e515e1-b7a2-de3c-723b-ade3ec760b4d@collabora.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Fri, 13 Oct 2023 12:10:56 -0700
Message-ID: <CA+ddPcNMBhXPNie3XUzbnCME_KccOxsNsWREmO80nwhSskN7JQ@mail.gmail.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.175:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,mediatek.com,gmail.com,amd.com,collabora.com,kernel.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,arm.com,lists.freedesktop.org];
	URIBL_BLOCKED(0.00)[mediatek.com:email];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E65323EC22
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 37XA7DUG6TUEYPE7NKO7T57YQGZNMDT3
X-Message-ID-Hash: 37XA7DUG6TUEYPE7NKO7T57YQGZNMDT3
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:51:53 +0000
CC: Joakim Bech <joakim.bech@linaro.org>, =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm
 .com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/37XA7DUG6TUEYPE7NKO7T57YQGZNMDT3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29ycnkgZm9yIHRoZSBkZWxheWVkIHJlcGx5LCBuZWVkZWQgdG8gZ2V0IHNvbWUgbW9yZSBpbmZv
LiBUaGlzIHJlYWxseQ0Kd291bGRuJ3QgYmUgcG9zc2libGUgZHVlIHRvIHRoZSBsaW1pdGF0aW9u
IG9uIHRoZSBudW1iZXIgb2YNCnJlZ2lvbnMuLi5mb3IgZXhhbXBsZSBvbmx5IDMyIHJlZ2lvbnMg
Y2FuIGJlIGRlZmluZWQgb24gc29tZSBTb0NzLCBhbmQNCnlvdSdkIHJ1biBvdXQgb2YgcmVnaW9u
cyByZWFsbHkgZmFzdCB0cnlpbmcgdG8gZG8gdGhpcy4gVGhhdCdzIHdoeQ0KdGhpcyBpcyBjcmVh
dGluZyBoZWFwcyBmb3IgdGhvc2UgcmVnaW9ucyBhbmQgdGhlbiBhbGxvY2F0aW9ucyBhcmUNCnBl
cmZvcm1lZCB3aXRoaW4gdGhlIGRlZmluZWQgcmVnaW9uIGlzIHRoZSBwcmVmZXJyZWQgc3RyYXRl
Z3kuDQoNCg0KT24gVGh1LCBTZXAgMjgsIDIwMjMgYXQgMTE6NTTigK9QTSBCZW5qYW1pbiBHYWln
bmFyZA0KPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPg0KPg0KPiBM
ZSAyOC8wOS8yMDIzIMOgIDE5OjQ4LCBKZWZmcmV5IEthcmRhdHprZSBhIMOpY3JpdCA6DQo+ID4g
T24gVGh1LCBTZXAgMjgsIDIwMjMgYXQgMTozMOKAr0FNIEJlbmphbWluIEdhaWduYXJkDQo+ID4g
PGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPiA+Pg0KPiA+PiBMZSAy
Ny8wOS8yMDIzIMOgIDIwOjU2LCBKZWZmcmV5IEthcmRhdHprZSBhIMOpY3JpdCA6DQo+ID4+PiBP
biBXZWQsIFNlcCAyNywgMjAyMyBhdCA4OjE44oCvQU0gQmVuamFtaW4gR2FpZ25hcmQNCj4gPj4+
IDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4gPj4+PiBMZSAyNy8w
OS8yMDIzIMOgIDE1OjQ2LCBKb2FraW0gQmVjaCBhIMOpY3JpdCA6DQo+ID4+Pj4+IE9uIE1vbiwg
U2VwIDI1LCAyMDIzIGF0IDEyOjQ5OjUwUE0gKzAwMDAsIFlvbmcgV3UgKOWQtOWLhykgd3JvdGU6
DQo+ID4+Pj4+PiBPbiBUdWUsIDIwMjMtMDktMTIgYXQgMTE6MzIgKzAyMDAsIEFuZ2Vsb0dpb2Fj
Y2hpbm8gRGVsIFJlZ25vIHdyb3RlOg0KPiA+Pj4+Pj4+IElsIDEyLzA5LzIzIDA4OjE3LCBZb25n
IFd1ICjlkLTli4cpIGhhIHNjcml0dG86DQo+ID4+Pj4+Pj4+IE9uIE1vbiwgMjAyMy0wOS0xMSBh
dCAxMToyOSArMDIwMCwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8NCj4gPj4+Pj4+Pj4gd3Jv
dGU6DQo+ID4+Pj4+Pj4+PiBJbCAxMS8wOS8yMyAwNDozMCwgWW9uZyBXdSBoYSBzY3JpdHRvOg0K
PiA+Pj4+Pj4+Pj4+IFRoZSBURUUgcHJvYmUgbGF0ZXIgdGhhbiBkbWEtYnVmIGhlYXAsIGFuZCBQ
Uk9CRV9ERURFUiBkb2Vzbid0DQo+ID4+Pj4+Pj4+Pj4gd29yaw0KPiA+Pj4+Pj4+Pj4+IGhlcmUg
c2luY2UgdGhpcyBpcyBub3QgYSBwbGF0Zm9ybSBkcml2ZXIsIHRoZXJlZm9yZSBpbml0aWFsaXNl
DQo+ID4+Pj4+Pj4+Pj4gdGhlDQo+ID4+Pj4+Pj4+Pj4gVEVFDQo+ID4+Pj4+Pj4+Pj4gY29udGV4
dC9zZXNzaW9uIHdoaWxlIHdlIGFsbG9jYXRlIHRoZSBmaXJzdCBzZWN1cmUgYnVmZmVyLg0KPiA+
Pj4+Pj4+Pj4+DQo+ID4+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53dUBt
ZWRpYXRlay5jb20+DQo+ID4+Pj4+Pj4+Pj4gLS0tDQo+ID4+Pj4+Pj4+Pj4gICAgICAgZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jIHwgNjENCj4gPj4+Pj4+Pj4+PiArKysr
KysrKysrKysrKysrKysrKysrKysrDQo+ID4+Pj4+Pj4+Pj4gICAgICAgMSBmaWxlIGNoYW5nZWQs
IDYxIGluc2VydGlvbnMoKykNCj4gPj4+Pj4+Pj4+Pg0KPiA+Pj4+Pj4+Pj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMNCj4gPj4+Pj4+Pj4+PiBi
L2RyaXZlcnMvZG1hLQ0KPiA+Pj4+Pj4+Pj4+IGJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYw0K
PiA+Pj4+Pj4+Pj4+IGluZGV4IGJiZjFjOGRjZTIzZS4uZTNkYTMzYTNkMDgzIDEwMDY0NA0KPiA+
Pj4+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYw0K
PiA+Pj4+Pj4+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAu
Yw0KPiA+Pj4+Pj4+Pj4+IEBAIC0xMCw2ICsxMCwxMiBAQA0KPiA+Pj4+Pj4+Pj4+ICAgICAgICNp
bmNsdWRlIDxsaW51eC9lcnIuaD4NCj4gPj4+Pj4+Pj4+PiAgICAgICAjaW5jbHVkZSA8bGludXgv
bW9kdWxlLmg+DQo+ID4+Pj4+Pj4+Pj4gICAgICAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4g
Pj4+Pj4+Pj4+PiArI2luY2x1ZGUgPGxpbnV4L3RlZV9kcnYuaD4NCj4gPj4+Pj4+Pj4+PiArI2lu
Y2x1ZGUgPGxpbnV4L3V1aWQuaD4NCj4gPj4+Pj4+Pj4+PiArDQo+ID4+Pj4+Pj4+Pj4gKyNkZWZp
bmUgVFpfVEFfTUVNX1VVSUQgICAgICAgICAgIjQ0Nzc1ODhhLTg0NzYtMTFlMi1hZDE1LQ0KPiA+
Pj4+Pj4+Pj4+IGU0MWYxMzkwZDY3NiINCj4gPj4+Pj4+Pj4+PiArDQo+ID4+Pj4+Pj4+PiBJcyB0
aGlzIFVVSUQgdGhlIHNhbWUgZm9yIGFsbCBTb0NzIGFuZCBhbGwgVFogdmVyc2lvbnM/DQo+ID4+
Pj4+Pj4+IFllcy4gSXQgaXMgdGhlIHNhbWUgZm9yIGFsbCBTb0NzIGFuZCBhbGwgVFogdmVyc2lv
bnMgY3VycmVudGx5Lg0KPiA+Pj4+Pj4+Pg0KPiA+Pj4+Pj4+IFRoYXQncyBnb29kIG5ld3MhDQo+
ID4+Pj4+Pj4NCj4gPj4+Pj4+PiBJcyB0aGlzIFVVSUQgdXNlZCBpbiBhbnkgdXNlcnNwYWNlIGNv
bXBvbmVudD8gKGV4YW1wbGU6IEFuZHJvaWQNCj4gPj4+Pj4+PiBIQUxzPykNCj4gPj4+Pj4+IE5v
LiBVc2Vyc3BhY2UgbmV2ZXIgdXNlIGl0LiBJZiB1c2Vyc3BhY2Ugd291bGQgbGlrZSB0byBhbGxv
Y2F0ZSB0aGlzDQo+ID4+Pj4+PiBzZWN1cmUgYnVmZmVyLCBpdCBjYW4gYWNoaWV2ZSB0aHJvdWdo
IHRoZSBleGlzdGluZyBkbWFidWYgSU9DVEwgdmlhDQo+ID4+Pj4+PiAvZGV2L2RtYV9oZWFwL210
a19zdnAgbm9kZS4NCj4gPj4+Pj4+DQo+ID4+Pj4+IEluIGdlbmVyYWwgSSB0aGluayBhcyBtZW50
aW9uZWQgZWxzZXdoZXJlIGluIGNvbW1lbnRzLCB0aGF0IHRoZXJlIGlzbid0DQo+ID4+Pj4+IHRo
YXQgbXVjaCBoZXJlIHRoYXQgc2VlbXMgdG8gYmUgdW5pcXVlIGZvciBNZWRpYVRlayBpbiB0aGlz
IHBhdGNoDQo+ID4+Pj4+IHNlcmllcywgc28gSSB0aGluayBpdCB3b3J0aCB0byBzZWUgd2hldGhl
ciB0aGlzIHdob2xlIHBhdGNoIHNldCBjYW4gYmUNCj4gPj4+Pj4gbWFkZSBtb3JlIGdlbmVyaWMu
IEhhdmluZyBzYWlkIHRoYXQsIHRoZSBVVUlEIGlzIGFsd2F5cyB1bmlxdWUgZm9yIGENCj4gPj4+
Pj4gY2VydGFpbiBUcnVzdGVkIEFwcGxpY2F0aW9uLiBTbywgaXQncyBub3QgZW50aXJlbHkgdHJ1
ZSBzYXlpbmcgdGhhdCB0aGUNCj4gPj4+Pj4gVVVJRCBpcyB0aGUgc2FtZSBmb3IgYWxsIFNvQ3Mg
YW5kIGFsbCBUcnVzdFpvbmUgdmVyc2lvbnMuIEl0IG1pZ2h0IGJlDQo+ID4+Pj4+IHRydWUgZm9y
IGEgZmFtaWx5IG9mIE1lZGlhVGVrIGRldmljZXMgYW5kIHRoZSBURUUgaW4gdXNlLCBidXQgbm90
DQo+ID4+Pj4+IGdlbmVyaWNhbGx5Lg0KPiA+Pj4+Pg0KPiA+Pj4+PiBTbywgaWYgd2UgbmVlZCB0
byBkaWZmZXJlbnRpYXRlIGJldHdlZW4gZGlmZmVyZW50IFRBIGltcGxlbWVudGF0aW9ucywNCj4g
Pj4+Pj4gdGhlbiB3ZSBuZWVkIGRpZmZlcmVudCBVVUlEcy4gSWYgaXQgd291bGQgYmUgcG9zc2li
bGUgdG8gbWFrZSB0aGlzIHBhdGNoDQo+ID4+Pj4+IHNldCBnZW5lcmljLCB0aGVuIGl0IHNvdW5k
cyBsaWtlIGEgc2luZ2xlIFVVSUQgd291bGQgYmUgc3VmZmljaWVudCwgYnV0DQo+ID4+Pj4+IHRo
YXQgd291bGQgaW1wbHkgdGhhdCBhbGwgVEEncyBzdXBwb3J0aW5nIHN1Y2ggYSBnZW5lcmljIFVV
SUQgd291bGQgYmUNCj4gPj4+Pj4gaW1wbGVtZW50ZWQgdGhlIHNhbWUgZnJvbSBhbiBBUEkgcG9p
bnQgb2Ygdmlldy4gV2hpY2ggYWxzbyBtZWFucyB0aGF0DQo+ID4+Pj4+IGZvciBleGFtcGxlIFRy
dXN0ZWQgQXBwbGljYXRpb24gZnVuY3Rpb24gSUQncyBuZWVkcyB0byBiZSB0aGUgc2FtZSBldGMu
DQo+ID4+Pj4+IE5vdCBpbXBvc3NpYmxlIHRvIGFjaGlldmUsIGJ1dCBzdGlsbCBub3QgZWFzeSAo
ZGlmZmVyZW50IFRFRSBmb2xsb3dzDQo+ID4+Pj4+IGRpZmZlcmVudCBzcGVjaWZpY2F0aW9ucykg
YW5kIGl0J3Mgbm90IHR5cGljYWxseSBzb21ldGhpbmcgd2UndmUgZG9uZSBpbg0KPiA+Pj4+PiB0
aGUgcGFzdC4NCj4gPj4+Pj4NCj4gPj4+Pj4gVW5mb3J0dW5hdGVseSB0aGVyZSBpcyBubyBzdGFu
ZGFyZGl6ZWQgZGF0YWJhc2Ugb2YgVEEncyBkZXNjcmliaW5nIHdoYXQNCj4gPj4+Pj4gdGhleSBp
bXBsZW1lbnQgYW5kIHN1cHBvcnQuDQo+ID4+Pj4+DQo+ID4+Pj4+IEFzIGFuIGFsdGVybmF0aXZl
LCB3ZSBjb3VsZCBpbXBsZW1lbnQgYSBxdWVyeSBjYWxsIGluIHRoZSBURUUgYW5zd2VyaW5nLA0K
PiA+Pj4+PiAiV2hhdCBVVUlEIGRvZXMgeW91ciBUQSBoYXZlIHRoYXQgaW1wbGVtZW50cyBzZWN1
cmUgdW5tYXBwZWQgaGVhcD8iLg0KPiA+Pj4+PiBJLmUuLCBzb21ldGhpbmcgdGhhdCByZW1pbmRz
IG9mIGEgbG9va3VwIHRhYmxlLiBUaGVuIHdlIHdvdWxkbid0IGhhdmUgdG8NCj4gPj4+Pj4gY2Fy
cnkgdGhpcyBpbiBVQVBJLCBEVCBvciBhbnl3aGVyZSBlbHNlLg0KPiA+Pj4+IEpvYWtpbSBkb2Vz
IGEgVEEgY291bGQgb2ZmZXIgYSBnZW5lcmljIEFQSSBhbmQgaGlkZSB0aGUgaGFyZHdhcmUgc3Bl
Y2lmaWMNCj4gPj4+PiBkZXRhaWxzIChsaWtlIGtlcm5lbCB1QVBJIGRvZXMgZm9yIGRyaXZlcnMp
ID8NCj4gPj4+IEl0IHdvdWxkIGhhdmUgdG8gZ28gdGhyb3VnaCBhbm90aGVyIGxheWVyIChsaWtl
IHRoZSB0ZWUgZHJpdmVyKSB0byBiZQ0KPiA+Pj4gYSBnZW5lcmljIEFQSS4gVGhlIG1haW4gaXNz
dWUgd2l0aCBUQXMgaXMgdGhhdCB0aGV5IGhhdmUgVVVJRHMgeW91DQo+ID4+PiBuZWVkIHRvIGNv
bm5lY3QgdG8gYW5kIHNwZWNpZmljIGNvZGVzIGZvciBlYWNoIGZ1bmN0aW9uOyBzbyB3ZSBzaG91
bGQNCj4gPj4+IGFic3RyYWN0IGF0IGEgbGF5ZXIgYWJvdmUgd2hlcmUgdGhvc2UgZXhpc3QgaW4g
dGhlIGRtYS1oZWFwIGNvZGUuDQo+ID4+Pj4gQXNpZGUgdGhhdCBxdWVzdGlvbiBJIHdvbmRlciB3
aGF0IGFyZSB0aGUgbmVlZHMgdG8gcGVyZm9ybSBhICdzZWN1cmUnIHBsYXliYWNrLg0KPiA+Pj4+
IEkgaGF2ZSBpbiBtaW5kIDIgcmVxdWlyZW1lbnRzOg0KPiA+Pj4+IC0gc2VjdXJlIG1lbW9yeSBy
ZWdpb25zLCB3aGljaCBtZWFucyBjb25maWd1cmUgdGhlIGhhcmR3YXJlIHRvIGVuc3VyZSB0aGF0
IG9ubHkNCj4gPj4+PiBkZWRpY2F0ZWQgaGFyZHdhcmUgYmxvY2tzIGFuZCByZWFkIG9yIHdyaXRl
IGludG8gaXQuDQo+ID4+Pj4gLSBzZXQgaGFyZHdhcmUgYmxvY2tzIGluIHNlY3VyZSBtb2RlcyBz
byB0aGV5IGFjY2VzcyB0byBzZWN1cmUgbWVtb3J5Lg0KPiA+Pj4+IERvIHlvdSBzZWUgc29tZXRo
aW5nIGVsc2UgPw0KPiA+Pj4gVGhpcyBpcyBtb3JlIG9yIGxlc3Mgd2hhdCBpcyByZXF1aXJlZCwg
YnV0IHRoaXMgaXMgb3V0IG9mIHNjb3BlIGZvcg0KPiA+Pj4gdGhlIExpbnV4IGtlcm5lbCBzaW5j
ZSBpdCBjYW4ndCBiZSB0cnVzdGVkIHRvIGRvIHRoZXNlIHRoaW5ncy4uLnRoaXMNCj4gPj4+IGlz
IGFsbCBkb25lIGluIGZpcm13YXJlIG9yIHRoZSBURUUgaXRzZWxmLg0KPiA+PiBZZXMga2VybmVs
IGNhbid0IGJlIHRydXN0ZWQgdG8gZG8gdGhlc2UgdGhpbmdzIGJ1dCBrbm93IHdoYXQgd2UgbmVl
ZCBjb3VsZCBoZWxwDQo+ID4+IHRvIGRlZmluZSBhIEFQSSBmb3IgYSBnZW5lcmljIFRBLg0KPiA+
Pg0KPiA+PiBKdXN0IHRvIGJyYWluc3Rvcm0gb24gbWFpbGluZyBsaXN0Og0KPiA+PiBXaGF0IGFi
b3V0IGEgVEEgQVBJIGxpa2UNCj4gPj4gVEFfc2VjdXJlX21lbW9yeV9yZWdpb24oKSBhbmQgVEFf
dW5zZWN1cmVfbWVtb3J5X3JlZ2lvbigpIHdpdGggcGFyYW1ldGVycyBsaWtlOg0KPiA+PiAtIGRl
dmljZSBpZGVudGlmaWVyIChhbiBJRCBvciBjb21wYXRpYmxlIHN0cmluZyBtYXliZSkNCj4gPj4g
LSBtZW1vcnkgcmVnaW9uIChwaHlzaWNhbCBhZGRyZXNzLCBzaXplLCBvZmZzZXQpDQo+ID4+IC0g
cmVxdWVzdGVkIGFjY2VzcyByaWdodHMgKHJlYWQsIHdyaXRlKQ0KPiA+Pg0KPiA+PiBhbmQgb24g
a2VybmVsIHNpZGUgYSBJT01NVSBkcml2ZXIgYmVjYXVzZSBpdCBiYXNpY2FsbHkgaGF2ZSBhbGwg
dGhpcyBpbmZvcm1hdGlvbiBhbHJlYWR5DQo+ID4+IChkZXZpY2UgYXR0YWNobWVudCwga2VybmVs
IG1hcC91bm1hcCkuDQo+ID4+DQo+ID4+IEluIG15IG1pbmQgaXQgc291bmQgbGlrZSBhIHNvbHV0
aW9uIHRvIGxpbWl0IHRoZSBpbXBhY3QgKG5ldyBjb250cm9scywgbmV3IG1lbW9yeSB0eXBlKQ0K
PiA+PiBpbnNpZGUgdjRsMi4gUHJvYmFibHkgd2Ugd29uJ3QgbmVlZCBuZXcgaGVhcCBlaXRoZXIu
DQo+ID4+IEFsbCBoYXJkd2FyZSBkZWRpY2F0ZWQgaW1wbGVtZW50YXRpb25zIGNvdWxkIGxpdmUg
aW5zaWRlIHRoZSBUQSB3aGljaCBjYW4gb2ZmZXIgYSBnZW5lcmljDQo+ID4+IEFQSS4NCj4gPiBU
aGUgbWFpbiBwcm9ibGVtIHdpdGggdGhhdCB0eXBlIG9mIGRlc2lnbiBpcyB0aGUgbGltaXRhdGlv
bnMgb2YNCj4gPiBUcnVzdFpvbmUgbWVtb3J5IHByb3RlY3Rpb24uIFVzdWFsbHkgdGhlcmUgaXMg
YSBsaW1pdCB0byB0aGUgbnVtYmVyIG9mDQo+ID4gcmVnaW9ucyB5b3UgY2FuIGRlZmluZSBmb3Ig
bWVtb3J5IHByb3RlY3Rpb24gKGFuZCB0aGVyZSBpcyBvbg0KPiA+IE1lZGlhdGVrKS4gU28geW91
IGNhbid0IHBhc3MgYW4gYXJiaXRyYXJ5IG1lbW9yeSByZWdpb24gYW5kIG1hcmsgaXQNCj4gPiBw
cm90ZWN0ZWQvdW5wcm90ZWN0ZWQgYXQgYSBnaXZlbiB0aW1lLiBZb3UgbmVlZCB0byBlc3RhYmxp
c2ggdGhlc2UNCj4gPiByZWdpb25zIGluIHRoZSBmaXJtd2FyZSBpbnN0ZWFkIGFuZCB0aGVuIGNv
bmZpZ3VyZSB0aG9zZSByZWdpb25zIGZvcg0KPiA+IHByb3RlY3Rpb24gaW4gdGhlIGZpcm13YXJl
IG9yIHRoZSBURUUuDQo+DQo+IFRoZSBURUUgaW9tbXUgY291bGQgYmUgYXdhcmUgb2YgdGhlc2Ug
bGltaXRhdGlvbnMgYW5kIG1lcmdlIHRoZSByZWdpb25zIHdoZW4gcG9zc2libGUNCj4gcGx1cyB3
ZSBjYW4gZGVmaW5lIGEgQ01BIHJlZ2lvbiBmb3IgZWFjaCBkZXZpY2UgdG8gbGltaXQgdGhlIHNl
Y3VyZWQgbWVtb3J5IGZyYWdtZW50YXRpb24uDQo+DQo+ID4NCj4gPj4+PiBSZWdhcmRzLA0KPiA+
Pj4+IEJlbmphbWluDQo+ID4+Pj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
