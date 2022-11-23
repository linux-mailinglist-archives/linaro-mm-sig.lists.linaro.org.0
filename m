Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A306361ED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 15:35:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E707A3EE66
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 14:35:14 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by lists.linaro.org (Postfix) with ESMTPS id B2F3F3ECED
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 14:35:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=LCgYuwgH;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.208.48) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f48.google.com with SMTP id l11so25091564edb.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 06:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GPLrYyNidI//auSaKwI6GvkJsgMtKAF3UqEyle3yeOc=;
        b=LCgYuwgHx1K9mYWM1mR96CB8NCe3P5sA090XVr26hcLHmss5Pn5J/t2cO8h6lx4fxM
         NrVrC9uNEWT85JXwD2PphfxsHBPSLrKCtF+8CDf7CfTVxK+1ZAfjuESMhMdxfgz16nQC
         OhdLPv1zPYaj+Xd3f+P4oBTT3hHdUfKNrSlak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GPLrYyNidI//auSaKwI6GvkJsgMtKAF3UqEyle3yeOc=;
        b=v26/zySWKW4AptULTzu0O3PLHF2e/rvvuW+FGZoDvaHRKXNvmQM+HXOTE38/M7P+f+
         jYtWAaRocQQIL8PFB+wz8BvKpQQR4+kHoIOcu20oSg6L/MhyffUPq9NwDDQMdbjiZ7jN
         9MWU8KSHZ8thf4KPAlYqCeRvA2rZT/BnQrDGBJe1DLVZMC6DNESoLphGFjVUDUunlpTP
         vHXDRDLMhPPTP7r5GOOPQVUuCYIc1ZiKUCphYlOrPTBqsuWVM1nCAiiRVnfHSkDFZUf7
         UFw5T/vUTC0mkh1KIXEal8wI5o6MtYYDKp0yEPXJLSDvHNgZhVOqFHHC26Krv1cuA9NM
         sLDQ==
X-Gm-Message-State: ANoB5pnjOa+tL9odoskUfhQ5FtomePzn1QlWf0zWnkvHnIZkU94e1jbE
	n90ww1xJiti62uMb40oAex0Lb56hjOQ/suhj6lpKHw==
X-Google-Smtp-Source: AA0mqf7s0gxKVbGsXYgPrF7eJBIPRffTj7CXpmrJ+fnJeN9pvA50Kh54G/8S5Pm78H/FeFz/JpA02ODuJr2OR5DElm8=
X-Received: by 2002:a05:6402:d69:b0:46a:392b:2440 with SMTP id
 ec41-20020a0564020d6900b0046a392b2440mr2032045edb.341.1669214105779; Wed, 23
 Nov 2022 06:35:05 -0800 (PST)
MIME-Version: 1.0
References: <Y30kK6dsssSLJVgp@ziepe.ca> <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com> <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com> <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca> <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca> <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com> <Y34gBUl0m+j1JdFk@ziepe.ca>
In-Reply-To: <Y34gBUl0m+j1JdFk@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Nov 2022 15:34:54 +0100
Message-ID: <CAKMK7uEzaUjroODbWe4DtxHQ+gmr7_DVK+fUJjAgMsgP61uGSQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Rspamd-Queue-Id: B2F3F3ECED
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.30 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[ffwll.ch:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:url,ffwll.ch:dkim,nvidia.com:email];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-0.997];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,suse.de,google.com,infradead.org,linaro.org,intel.com,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.48:from];
	DMARC_NA(0.00)[ffwll.ch];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:email,mail-ed1-f48.google.com:rdns,mail-ed1-f48.google.com:helo,ziepe.ca:email];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5UH4OD3LXIMVWZOKXGB4SYHMCSDJYD65
X-Message-ID-Hash: 5UH4OD3LXIMVWZOKXGB4SYHMCSDJYD65
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5UH4OD3LXIMVWZOKXGB4SYHMCSDJYD65/>
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
Vk0gbmVlZHMNCj4gdG8gZG86DQo+DQo+IGRpZmYgLS1naXQgYS92aXJ0L2t2bS9rdm1fbWFpbi5j
IGIvdmlydC9rdm0va3ZtX21haW4uYw0KPiBpbmRleCAxMzc2YTQ3ZmVkZWVkYi4uNDE2MTI0MWZj
MzIyOGMgMTAwNjQ0DQo+IC0tLSBhL3ZpcnQva3ZtL2t2bV9tYWluLmMNCj4gKysrIGIvdmlydC9r
dm0va3ZtX21haW4uYw0KPiBAQCAtMjU5OCw2ICsyNTk4LDE5IEBAIHN0YXRpYyBpbnQgaHZhX3Rv
X3Bmbl9yZW1hcHBlZChzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwNCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgcmV0dXJuIHI7DQo+ICAgICAgICAgfQ0KPg0KPiArICAgICAgIC8qDQo+ICsg
ICAgICAgICogU3BlY2lhbCBQVEVzIGFyZSBuZXZlciBjb252ZXJ0aWJsZSBpbnRvIGEgc3RydWN0
IHBhZ2UsIGV2ZW4gaWYgdGhlDQo+ICsgICAgICAgICogZHJpdmVyIHRoYXQgb3ducyB0aGVtIG1p
Z2h0IGhhdmUgcHV0IGEgUEZOIHdpdGggYSBzdHJ1Y3QgcGFnZSBpbnRvDQo+ICsgICAgICAgICog
dGhlIFBGTk1BUC4gSWYgdGhlIGFyY2ggZG9lc24ndCBzdXBwb3J0IHNwZWNpYWwgdGhlbiB3ZSBj
YW5ub3QNCj4gKyAgICAgICAgKiBzYWZlbHkgcHJvY2VzcyB0aGVzZSBwYWdlcy4NCj4gKyAgICAg
ICAgKi8NCj4gKyNpZmRlZiBDT05GSUdfQVJDSF9IQVNfUFRFX1NQRUNJQUwNCj4gKyAgICAgICBp
ZiAocHRlX3NwZWNpYWwoKnB0ZXApKQ0KPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7
DQoNCk9uIHNlY29uZCB0aG91Z2h0IHRoaXMgd29udCB3b3JrLCBiZWNhdXNlIGl0IGNvbXBsZXRl
bHkgZGVmZWF0cyB0aGUNCnBvaW50IG9mIHdoeSB0aGlzIGNvZGUgaGVyZSBleGlzdHMuIHJlbWFw
X3Bmbl9yYW5nZSgpICh3aGljaCBpcyB3aGF0DQp0aGUgdmFyaW91cyBkbWFfbW1hcCBmdW5jdGlv
bnMgYW5kIHRoZSBpb3JlbWFwIGZ1bmN0aW9ucyBhcmUgYnVpbHQgb24NCnRvcCBvZiB0b28pIHNl
dHMgVk1fUEZOTUFQIHRvbywgc28gdGhpcyBjaGVjayB3b3VsZCBldmVuIGNhdGNoIHRoZQ0Kc3Rh
dGljIG1hcHBpbmdzLg0KDQpQbHVzIHRoZXNlIHN0YXRpYyBtYXBwaW5ncyBhcmVuJ3QgYWxsIHRo
YXQgc3RhdGljIGVpdGhlciwgZS5nLiBwY2kNCmFjY2VzcyBhbHNvIGNhbiByZXZva2UgYmFyIG1h
cHBpbmdzIG5vd2FkYXlzLg0KDQpJIHRoaW5rIG5vdGhpbmcgZXhjZXB0IGZ1bGwgbW11X25vdGlm
aWVyIHdpbGwgYWN0dWFsbHkgZml4IHRoaXMuDQotRGFuaWVsDQoNCj4gKyNlbHNlDQo+ICsgICAg
ICAgcmV0dXJuIC1FSU5WQUw7DQo+ICsjZW5kaWYNCj4gKw0KPiAgICAgICAgIGlmICh3cml0ZV9m
YXVsdCAmJiAhcHRlX3dyaXRlKCpwdGVwKSkgew0KPiAgICAgICAgICAgICAgICAgcGZuID0gS1ZN
X1BGTl9FUlJfUk9fRkFVTFQ7DQo+ICAgICAgICAgICAgICAgICBnb3RvIG91dDsNCj4NCj4gSmFz
b24NCg0KDQoNCi0tIA0KRGFuaWVsIFZldHRlcg0KU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uDQpodHRwOi8vYmxvZy5mZndsbC5jaA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
