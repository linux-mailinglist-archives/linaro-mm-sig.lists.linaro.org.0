Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BA60C6361BC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 15:28:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4D443EE6D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 14:28:48 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id 823FF3E80E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 14:28:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=WT7aZnir;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.218.53) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f53.google.com with SMTP id ha10so6824622ejb.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 06:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ucQTvmzn91rzZAss19wwLVdxDJtfMPnU+ZLD4q4UOr4=;
        b=WT7aZnirqlfHwqauYBvMMtrVy5bo2pha0DsZfPUcmWaiXhqbaeij/6ndqYkdegeckT
         THXjqnLDQxeZ28AXp9/umwOtWDLa7NQTMzqXphjm/QmIlNqvR/sbxc45IoMrQwWQHEe6
         x7BOJapEwYbv+NuKJL+8sIorhR2MAi9iVY21A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ucQTvmzn91rzZAss19wwLVdxDJtfMPnU+ZLD4q4UOr4=;
        b=fKgLzigicuTMMHjohfjp7Si+FF340lucKRBQOxcuHdtjcpKT4lNqlzuK4cnjSaBDYo
         giah8OR6fQq1txRa9Hm30JjrIoJxJ62Ve1zonsHtfbdXEiIazheBJMBXTc1VsBRZOPMD
         JytsJvcqdjbWi7NzNZ5fEpGNBEHRHf2eGBfx63LdjQ1eOCYFO6a0mM316zF7XTDEORJt
         gLxjTd0CWYURlq2ErXRxsUp4kB5kASxNdkGoaH9MP8VBjWyP/Hyq1atuBokyibW+3nuy
         DF0fSQrE0USQn5Acnzj6iGbKb1kwKSv7KPVpAN5meS7kC1RfrWk80Z5ec62rRnGfP41U
         p1mQ==
X-Gm-Message-State: ANoB5pmADlB4hNTzL9BV3qR8yWAq9Q+xU6G3EolocI5d3NwuzWGSRPty
	K4ENBXK2n/cMtB7pIeHQRpi2f0CWsTpbtv17Zga70Q==
X-Google-Smtp-Source: AA0mqf6sZXWpHY0T6gpoVbuWg6Vf1JsDzG60PWxm05j3xQNGNGz1hoLjG6usYDq1yrMl9GvAUb1dUEr3/2FVoMO3p44=
X-Received: by 2002:a17:907:8197:b0:7b8:eae2:716a with SMTP id
 iy23-20020a170907819700b007b8eae2716amr5545863ejc.516.1669213718576; Wed, 23
 Nov 2022 06:28:38 -0800 (PST)
MIME-Version: 1.0
References: <Y30kK6dsssSLJVgp@ziepe.ca> <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com> <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com> <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca> <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca> <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com> <Y34gBUl0m+j1JdFk@ziepe.ca>
In-Reply-To: <Y34gBUl0m+j1JdFk@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Nov 2022 15:28:27 +0100
Message-ID: <CAKMK7uHWyOcZ77-+GY7hxFUA65uQYFe0fw2rww6Y-rLXvHFAYw@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Rspamd-Queue-Id: 823FF3E80E
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.53:from];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,suse.de,google.com,infradead.org,linaro.org,intel.com,vger.kernel.org,lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-ej1-f53.google.com:rdns,mail-ej1-f53.google.com:helo,intel.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:dkim,nvidia.com:email];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6C4SNFDZHH43NWXTRYXFGGPFGKQ4QOYG
X-Message-ID-Hash: 6C4SNFDZHH43NWXTRYXFGGPFGKQ4QOYG
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6C4SNFDZHH43NWXTRYXFGGPFGKQ4QOYG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyMyBOb3YgMjAyMiBhdCAxNDoyOCwgSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUu
Y2E+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIE5vdiAyMywgMjAyMiBhdCAwMjoxMjoyNVBNICswMTAw
LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+IEFtIDIzLjExLjIyIHVtIDEzOjUzIHNjaHJp
ZWIgSmFzb24gR3VudGhvcnBlOg0KPiA+ID4gT24gV2VkLCBOb3YgMjMsIDIwMjIgYXQgMDE6NDk6
NDFQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPiA+ID4gQW0gMjMuMTEuMjIg
dW0gMTM6NDYgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6DQo+ID4gPiA+ID4gT24gV2VkLCBOb3Yg
MjMsIDIwMjIgYXQgMTE6MDY6NTVBTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToNCj4gPiA+
ID4gPg0KPiA+ID4gPiA+ID4gPiBNYXliZSBhIEdGUCBmbGFnIHRvIHNldCB0aGUgcGFnZSByZWZl
cmVuY2UgY291bnQgdG8gemVybyBvciBzb21ldGhpbmcNCj4gPiA+ID4gPiA+ID4gbGlrZSB0aGlz
Pw0KPiA+ID4gPiA+ID4gSG0geWVhaCB0aGF0IG1pZ2h0IHdvcmsuIEknbSBub3Qgc3VyZSB3aGF0
IGl0IHdpbGwgYWxsIGJyZWFrIHRob3VnaD8NCj4gPiA+ID4gPiA+IEFuZCB3ZSdkIG5lZWQgdG8g
bWFrZSBzdXJlIHRoYXQgdW5kZXJmbG93aW5nIHRoZSBwYWdlIHJlZmNvdW50IGRpZXMgaW4NCj4g
PiA+ID4gPiA+IGEgYmFja3RyYWNlLg0KPiA+ID4gPiA+IE11Y2tpbmcgd2l0aCB0aGUgcmVmY291
bnQgbGlrZSB0aGlzIHRvIHByb3RlY3QgYWdhaW5zdCBjcmF6eSBvdXQgb2YNCj4gPiA+ID4gPiB0
cmVlIGRyaXZlcyBzZWVtcyBob3JyaWJsZS4uDQo+ID4gPiA+IFdlbGwgbm90IG9ubHkgb3V0IG9m
IHRyZWUgZHJpdmVycy4gVGhlIGludHJlZSBLVk0gZ290IHRoYXQgaG9ycmlibGUNCj4gPiA+ID4g
d3JvbmcgYXMgd2VsbCwgdGhvc2Ugd2hlcmUgdGhlIGxhdGVzdCBndXlzIGNvbXBsYWluaW5nIGFi
b3V0IGl0Lg0KPiA+ID4ga3ZtIHdhcyB0YWtpbmcgcmVmcyBvbiBzcGVjaWFsIFBURXM/IFRoYXQg
c2VlbXMgcmVhbGx5IHVubGlrZWx5Pw0KPiA+DQo+ID4gV2VsbCB0aGVuIGxvb2sgYXQgdGhpcyBj
b2RlIGhlcmU6DQo+ID4NCj4gPiBjb21taXQgYWRkNmEwY2QxYzViYTUxYjIwMWUxMzYxYjA1YTVk
ZjgxNzA4MzYxOA0KPiA+IEF1dGhvcjogUGFvbG8gQm9uemluaSA8cGJvbnppbmlAcmVkaGF0LmNv
bT4NCj4gPiBEYXRlOiAgIFR1ZSBKdW4gNyAxNzo1MToxOCAyMDE2ICswMjAwDQo+ID4NCj4gPiAg
ICAgS1ZNOiBNTVU6IHRyeSB0byBmaXggdXAgcGFnZSBmYXVsdHMgYmVmb3JlIGdpdmluZyB1cA0K
PiA+DQo+ID4gICAgIFRoZSB2R1BVIGZvbGtzIHdvdWxkIGxpa2UgdG8gdHJhcCB0aGUgZmlyc3Qg
YWNjZXNzIHRvIGEgQkFSIGJ5IHNldHRpbmcNCj4gPiAgICAgdm1fb3BzIG9uIHRoZSBWTUFzIHBy
b2R1Y2VkIGJ5IG1tYXAtaW5nIGEgVkZJTyBkZXZpY2UuICBUaGUgZmF1bHQNCj4gPiBoYW5kbGVy
DQo+ID4gICAgIHRoZW4gY2FuIHVzZSByZW1hcF9wZm5fcmFuZ2UgdG8gcGxhY2Ugc29tZSBub24t
cmVzZXJ2ZWQgcGFnZXMgaW4gdGhlDQo+ID4gVk1BLg0KPiA+DQo+ID4gICAgIFRoaXMga2luZCBv
ZiBWTV9QRk5NQVAgbWFwcGluZyBpcyBub3QgaGFuZGxlZCBieSBLVk0sIGJ1dCBmb2xsb3dfcGZu
DQo+ID4gICAgIGFuZCBmaXh1cF91c2VyX2ZhdWx0IHRvZ2V0aGVyIGhlbHAgc3VwcG9ydGluZyBp
dC4gIFRoZSBwYXRjaCBhbHNvDQo+ID4gc3VwcG9ydHMNCj4gPiAgICAgVk1fTUlYRURNQVAgdm1h
cyB3aGVyZSB0aGUgcGZucyBhcmUgbm90IHJlc2VydmVkIGFuZCB0aHVzIHN1YmplY3QgdG8NCj4g
PiAgICAgcmVmZXJlbmNlIGNvdW50aW5nLg0KPiA+DQo+ID4gICAgIENjOiBYaWFvIEd1YW5ncm9u
ZyA8Z3Vhbmdyb25nLnhpYW9AbGludXguaW50ZWwuY29tPg0KPiA+ICAgICBDYzogQW5kcmVhIEFy
Y2FuZ2VsaSA8YWFyY2FuZ2VAcmVkaGF0LmNvbT4NCj4gPiAgICAgQ2M6IFJhZGltIEtyxI1tw6HF
mSA8cmtyY21hckByZWRoYXQuY29tPg0KPiA+ICAgICBUZXN0ZWQtYnk6IE5lbyBKaWEgPGNqaWFA
bnZpZGlhLmNvbT4NCj4gPiAgICAgUmVwb3J0ZWQtYnk6IEtpcnRpIFdhbmtoZWRlIDxrd2Fua2hl
ZGVAbnZpZGlhLmNvbT4NCj4gPiAgICAgU2lnbmVkLW9mZi1ieTogUGFvbG8gQm9uemluaSA8cGJv
bnppbmlAcmVkaGF0LmNvbT4NCj4NCj4gVGhpcyBwYXRjaCBpcyBrbm93biB0byBiZSBicm9rZW4g
aW4gc28gbWFueSB3YXlzLiBJdCBhbHNvIGhhcyBhIG1ham9yDQo+IHNlY3VyaXR5IGhvbGUgdGhh
dCBpdCBpZ25vcmVzIHRoZSBQVEUgZmxhZ3MgbWFraW5nIHRoZSBwYWdlDQo+IFJPLiBJZ25vcmlu
ZyB0aGUgc3BlY2lhbCBiaXQgaXMgc29tZWhvdyBub3Qgc3VycHJpc2luZyA6KA0KPg0KPiBUaGlz
IHByb2JhYmx5IGRvZXNuJ3Qgd29yaywgYnV0IGlzIHRoZSBnZW5lcmFsIGlkZWEgb2Ygd2hhdCBL
Vk0gbmVlZHMNCj4gdG8gZG86DQoNCk9oIGRlYXIsIHdoZW4gSSBkdWcgYXJvdW5kIGluIHRoZXJl
IEkgZW50aXJlbHkgbWlzc2VkIHRoYXQNCmt2bV90cnlfZ2V0X3BmbiBleGlzdHMsIGFuZCBpdCdz
IHZlcnkgYnJva2VuIGluZGVlZC4ga3ZtIHJlYWxseSBuZWVkcw0KdG8gZ3JvdyBhIHByb3BlciBt
bXUgbm90aWZpZXIuDQoNCkFub3RoZXIgdGhpbmcgSSdtIHdvbmRlcmluZyByaWdodCBub3csIHRo
ZSBmb2xsb3dfcHRlKCk7DQpmaXh1cF91c2VyX2ZhdWx0KCk7IGZvbGxvd19wdGUoKTsgYXBwcm9h
Y2ggZG9lcyBub3QgbWFrZSBhbnkNCmd1YXJhbnRlZXMgb2YgYWN0dWFsbHkgYmVpbmcgcmlnaHQu
IElmIHlvdSdyZSBzdWZmaWNpZW50bHkgdW5sdWNreSB5b3UNCm1pZ2h0IHJhY2UgYWdhaW5zdCBh
biBpbW1lZGlhdGUgcHRlIGludmFsaWRhdGUgYmV0d2VlbiB0aGUgZml4dXAgYW5kDQp0aGUgMm5k
IGZvbGxvd19wdGUoKS4gQnV0IHlvdSBjYW4gYWxzbyBub3QgbG9vcCwgYmVjYXVzZSB0aGF0IHdv
dWxkDQpmYWlsIHRvIGNhdGNoIHBlcm1hbmVudCBmYXVsdHMuDQoNCkkgdGhpbmsgdGhlIGlvbW11
IGZhdWx0IGRyaXZlcnMgaGF2ZSBhIHNpbWlsYXIgcGF0dGVybi4NCg0KV2hhdCBhbSBJIG1pc3Np
bmcgaGVyZT8gT3IgaXMgdGhhdCBhbHNvIGp1c3QgYnJva2VuLiBndXAgd29ya3MgYXJvdW5kDQp0
aGlzIHdpdGggdGhlIHNsb3cgcGF0aCB0aGF0IHRha2VzIHRoZSBtbWFwIHNlbSBhbmQgd2Fsa2lu
ZyB0aGUgdm1hDQp0cmVlLCBmb2xsb3dfcHRlL2ZpeHVwX3VzZXJfZmF1dGwgdXNlcnMgZG9udC4g
TWF5YmUgbW11IG5vdGlmaWVyIGJhc2VkDQpyZXN0YXJ0aW5nIHdvdWxkIGhlbHAgd2l0aCB0aGlz
IHRvbywgaWYgZG9uZSBwcm9wZXJseS4NCi1EYW5pZWwNCg0KPiBkaWZmIC0tZ2l0IGEvdmlydC9r
dm0va3ZtX21haW4uYyBiL3ZpcnQva3ZtL2t2bV9tYWluLmMNCj4gaW5kZXggMTM3NmE0N2ZlZGVl
ZGIuLjQxNjEyNDFmYzMyMjhjIDEwMDY0NA0KPiAtLS0gYS92aXJ0L2t2bS9rdm1fbWFpbi5jDQo+
ICsrKyBiL3ZpcnQva3ZtL2t2bV9tYWluLmMNCj4gQEAgLTI1OTgsNiArMjU5OCwxOSBAQCBzdGF0
aWMgaW50IGh2YV90b19wZm5fcmVtYXBwZWQoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsDQo+
ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByOw0KPiAgICAgICAgIH0NCj4NCj4gKyAg
ICAgICAvKg0KPiArICAgICAgICAqIFNwZWNpYWwgUFRFcyBhcmUgbmV2ZXIgY29udmVydGlibGUg
aW50byBhIHN0cnVjdCBwYWdlLCBldmVuIGlmIHRoZQ0KPiArICAgICAgICAqIGRyaXZlciB0aGF0
IG93bnMgdGhlbSBtaWdodCBoYXZlIHB1dCBhIFBGTiB3aXRoIGEgc3RydWN0IHBhZ2UgaW50bw0K
PiArICAgICAgICAqIHRoZSBQRk5NQVAuIElmIHRoZSBhcmNoIGRvZXNuJ3Qgc3VwcG9ydCBzcGVj
aWFsIHRoZW4gd2UgY2Fubm90DQo+ICsgICAgICAgICogc2FmZWx5IHByb2Nlc3MgdGhlc2UgcGFn
ZXMuDQo+ICsgICAgICAgICovDQo+ICsjaWZkZWYgQ09ORklHX0FSQ0hfSEFTX1BURV9TUEVDSUFM
DQo+ICsgICAgICAgaWYgKHB0ZV9zcGVjaWFsKCpwdGVwKSkNCj4gKyAgICAgICAgICAgICAgIHJl
dHVybiAtRUlOVkFMOw0KPiArI2Vsc2UNCj4gKyAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gKyNl
bmRpZg0KPiArDQo+ICAgICAgICAgaWYgKHdyaXRlX2ZhdWx0ICYmICFwdGVfd3JpdGUoKnB0ZXAp
KSB7DQo+ICAgICAgICAgICAgICAgICBwZm4gPSBLVk1fUEZOX0VSUl9ST19GQVVMVDsNCj4gICAg
ICAgICAgICAgICAgIGdvdG8gb3V0Ow0KPg0KPiBKYXNvbg0KDQoNCg0KLS0gDQpEYW5pZWwgVmV0
dGVyDQpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24NCmh0dHA6Ly9ibG9nLmZm
d2xsLmNoDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
