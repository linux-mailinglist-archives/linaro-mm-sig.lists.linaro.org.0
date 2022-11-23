Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AB66365BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 17:26:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70EA73ED8F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 16:26:43 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id 9FD583ECED
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 16:26:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Y9+THhAi;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.218.50) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f50.google.com with SMTP id me22so27367468ejb.8
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 08:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sSFkGmkHtN5zUb4Rh39ItxsnC86fxEiwEDLm+HfMs+4=;
        b=Y9+THhAiKWeo98tXRZJu3rPI+T0Kf7GUIeyPARZ58pz6uIsByHvJKY/hNVp5sDeyT7
         9vmoYWoEu8KGjp5BMNYIVRYtXkqnJ+kKUILy8mE1J2G868YCKGd7JpZxc3Fgz54IJFP0
         6EYp/1ISQnkH0jPWhAfvWwmllXr8f9q8htlq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sSFkGmkHtN5zUb4Rh39ItxsnC86fxEiwEDLm+HfMs+4=;
        b=qiX/+JgNvtH3eKBelDJaOaVzxTULQmzRdP5CN+ur/dg4gdQWxxxjhyk6oHcxQH3+to
         ZDhB3DlQnM+RixFgLrChwx3zW2k3koG7Ctkq7NNHbDdklx/GuD6TJo5ANp+SSua8NXgy
         MzD5lCgUWMYXpKVOpREiDbUhAqHkAZVRtySbORhGOoijD+hs7NELO6S2dctJIrvvWsKJ
         KEz7aYHvY8GwUD8zjwFR2Z8czvb8V4iXXstaqzs8LiE7Bb9nLmwC+UoyuQ4nTYAHPuWS
         96yM+rbOQ8q7pE45FYdii/DyakGQDdUi52fpbHQ3KaE11i4yzCi/SVCngCLb54sV3XlH
         lsOQ==
X-Gm-Message-State: ANoB5pntDFqceB52k8gu85RlWgOFZIn5iuVBhaiomT/S9dgkR3MGby4o
	cLS8qTdirV2CthAY/M6uS0LY+pr0Q0sGyR2UhBAQXA==
X-Google-Smtp-Source: AA0mqf4FHPXm74gmQx2rWxAVc922S4ilitDkfXmopa8332zbH90tj/nFwgQWX/aHnAezKjBRLZczseCQuoyDTawrC3g=
X-Received: by 2002:a17:906:d7b8:b0:79f:9ff6:6576 with SMTP id
 pk24-20020a170906d7b800b0079f9ff66576mr23410180ejb.414.1669220794677; Wed, 23
 Nov 2022 08:26:34 -0800 (PST)
MIME-Version: 1.0
References: <3d8607b4-973d-945d-c184-260157ade7c3@amd.com> <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com> <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca> <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca> <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com>
 <Y34gBUl0m+j1JdFk@ziepe.ca> <CAKMK7uEzaUjroODbWe4DtxHQ+gmr7_DVK+fUJjAgMsgP61uGSQ@mail.gmail.com>
 <Y343ijGoqyf73d+I@ziepe.ca> <dcb88724-c68e-6f2a-03d5-0641d2e68ec6@amd.com>
In-Reply-To: <dcb88724-c68e-6f2a-03d5-0641d2e68ec6@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Nov 2022 17:26:23 +0100
Message-ID: <CAKMK7uEqgRHECdjhxoSuvsP9bWpjP=y4QUxjXCtZtMYoRgAoRg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 9FD583ECED
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.218.50:from];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.50:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.984];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:url,ffwll.ch:dkim];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VKWWLAMMZYTGVK45FXFXOXETXGVTPYD5
X-Message-ID-Hash: VKWWLAMMZYTGVK45FXFXOXETXGVTPYD5
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jason Gunthorpe <jgg@ziepe.ca>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VKWWLAMMZYTGVK45FXFXOXETXGVTPYD5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyMyBOb3YgMjAyMiBhdCAxNjoxNSwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMjMuMTEuMjIgdW0gMTY6MDggc2Nocmll
YiBKYXNvbiBHdW50aG9ycGU6DQo+ID4gT24gV2VkLCBOb3YgMjMsIDIwMjIgYXQgMDM6MzQ6NTRQ
TSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToNCj4gPj4+IGRpZmYgLS1naXQgYS92aXJ0L2t2
bS9rdm1fbWFpbi5jIGIvdmlydC9rdm0va3ZtX21haW4uYw0KPiA+Pj4gaW5kZXggMTM3NmE0N2Zl
ZGVlZGIuLjQxNjEyNDFmYzMyMjhjIDEwMDY0NA0KPiA+Pj4gLS0tIGEvdmlydC9rdm0va3ZtX21h
aW4uYw0KPiA+Pj4gKysrIGIvdmlydC9rdm0va3ZtX21haW4uYw0KPiA+Pj4gQEAgLTI1OTgsNiAr
MjU5OCwxOSBAQCBzdGF0aWMgaW50IGh2YV90b19wZm5fcmVtYXBwZWQoc3RydWN0IHZtX2FyZWFf
c3RydWN0ICp2bWEsDQo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHI7DQo+
ID4+PiAgICAgICAgICB9DQo+ID4+Pg0KPiA+Pj4gKyAgICAgICAvKg0KPiA+Pj4gKyAgICAgICAg
KiBTcGVjaWFsIFBURXMgYXJlIG5ldmVyIGNvbnZlcnRpYmxlIGludG8gYSBzdHJ1Y3QgcGFnZSwg
ZXZlbiBpZiB0aGUNCj4gPj4+ICsgICAgICAgICogZHJpdmVyIHRoYXQgb3ducyB0aGVtIG1pZ2h0
IGhhdmUgcHV0IGEgUEZOIHdpdGggYSBzdHJ1Y3QgcGFnZSBpbnRvDQo+ID4+PiArICAgICAgICAq
IHRoZSBQRk5NQVAuIElmIHRoZSBhcmNoIGRvZXNuJ3Qgc3VwcG9ydCBzcGVjaWFsIHRoZW4gd2Ug
Y2Fubm90DQo+ID4+PiArICAgICAgICAqIHNhZmVseSBwcm9jZXNzIHRoZXNlIHBhZ2VzLg0KPiA+
Pj4gKyAgICAgICAgKi8NCj4gPj4+ICsjaWZkZWYgQ09ORklHX0FSQ0hfSEFTX1BURV9TUEVDSUFM
DQo+ID4+PiArICAgICAgIGlmIChwdGVfc3BlY2lhbCgqcHRlcCkpDQo+ID4+PiArICAgICAgICAg
ICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+ID4+IE9uIHNlY29uZCB0aG91Z2h0IHRoaXMgd29udCB3
b3JrLCBiZWNhdXNlIGl0IGNvbXBsZXRlbHkgZGVmZWF0cyB0aGUNCj4gPj4gcG9pbnQgb2Ygd2h5
IHRoaXMgY29kZSBoZXJlIGV4aXN0cy4gcmVtYXBfcGZuX3JhbmdlKCkgKHdoaWNoIGlzIHdoYXQN
Cj4gPj4gdGhlIHZhcmlvdXMgZG1hX21tYXAgZnVuY3Rpb25zIGFuZCB0aGUgaW9yZW1hcCBmdW5j
dGlvbnMgYXJlIGJ1aWx0IG9uDQo+ID4+IHRvcCBvZiB0b28pIHNldHMgVk1fUEZOTUFQIHRvbywg
c28gdGhpcyBjaGVjayB3b3VsZCBldmVuIGNhdGNoIHRoZQ0KPiA+PiBzdGF0aWMgbWFwcGluZ3Mu
DQo+ID4gVGhlIHByb2JsZW0gd2l0aCB0aGUgd2F5IHRoaXMgY29kZSBpcyBkZXNpZ25lZCBpcyBo
b3cgaXQgYWxsb3dzDQo+ID4gcmV0dXJuaW5nIHRoZSBwZm4gd2l0aG91dCB0YWtpbmcgYW55IHJl
ZmVyZW5jZSBiYXNlZCBvbiB0aGluZ3MgbGlrZQ0KPiA+ICFwZm5fdmFsaWQgb3IgcGFnZV9yZXNl
cnZlZC4gVGhpcyBhbGxvd3MgaXQgdG8gdGhlbiBjb25kaXRpb25hbGx5IHB1dA0KPiA+IGJhY2sg
dGhlIHJlZmVyZW5jZSBiYXNlZCBvbiB0aGUgc2FtZSByZWFzb25pbmcuIEl0IGlzIGltcG9zc2li
bGUgdG8NCj4gPiB0aHJlYWQgcHRlIHNwZWNpYWwgaW50byB0aGF0IHNpbmNlIGl0IGlzIGEgUFRF
IGZsYWcsIG5vdCBhIHByb3BlcnR5IG9mDQo+ID4gdGhlIFBGTi4NCj4gPg0KPiA+IEkgZG9uJ3Qg
ZW50aXJlbHkgdW5kZXJzdGFuZCB3aHkgaXQgbmVlZHMgdGhlIHBhZ2UgcmVmZXJlbmNlIGF0IGFs
bCwNCj4NCj4gVGhhdCdzIGV4YWN0bHkgd2hhdCBJJ3ZlIHBvaW50ZWQgb3V0IGluIHRoZSBwcmV2
aW91cyBkaXNjdXNzaW9uIGFib3V0DQo+IHRoYXQgY29kZSBhcyB3ZWxsLg0KPg0KPiBBcyBmYXIg
YXMgSSBjYW4gc2VlIGl0IHRoaXMgaXMganVzdCBhbm90aGVyIGNhc2Ugd2hlcmUgcGVvcGxlIGFz
c3VtZWQNCj4gdGhhdCBncmFiYmluZyBhIHBhZ2UgcmVmZXJlbmNlIHNvbWVob3cgbWFnaWNhbGx5
IHByZXZlbnRzIHRoZSBwdGUgZnJvbQ0KPiBjaGFuZ2luZy4NCj4NCj4gSSBoYXZlIG5vdCB0aGUg
c2xpZ2h0ZXN0IGlkZWEgaG93IHBlb3BsZSBnb3QgdGhpcyBpbXByZXNzaW9uLCBidXQgSSBoYXZl
DQo+IGhlYXJkIGl0IHNvIG1hbnkgdGltZSBmcm9tIHNvIG1hbnkgZGlmZmVyZW50IHNvdXJjZXMg
dGhhdCB0aGVyZSBtdXN0IGJlDQo+IHNvbWUgY29tbW9uIGNhdXNlIHRvIHRoaXMuIElzIHRoZSBt
YXliZSBzb21lIGJvb2sgb3IgdHV0b3JpYWwgaG93IHRvDQo+IHNvcGhpc3RpY2F0ZSBicmVhayB0
aGUga2VybmVsIG9yIHNvbWV0aGluZyBsaWtlIHRoaXM/DQoNCkl0J3Mgd2hhdCBnZXRfdXNlcl9w
YWdlcyBkb2VzLCBzbyBpdCBkb2VzICJ3b3JrIi4gRXhjZXB0IHRoaXMgcGF0aA0KaGVyZSBpcyB0
aGUgZmFsbGJhY2sgZm9yIHdoZW4gZ2V0X3VzZXJfcGFnZXMgZG9lcyBub3Qgd29yayAoYmVjYXVz
ZSBvZg0KdGhlIHB0ZV9zcGVjaWFsL1ZNX1NQRUNJQUwgY2FzZSkuIFNvIGVzc2VudGlhbGx5IGl0
J3MganVzdCBhIHJhdGhlcg0KYnJva2VuIGdldF91c2VyX3BhZ2VzIHRoYXQgaGFuZHJvbGxzIGEg
YnVuY2ggb2YgdGhpbmdzIHdpdGgNCmJ1Z3MmcmFjZXMuDQoNCkkgaGF2ZSBubyBpZGVhIHdoeSBw
ZW9wbGUgZG9uJ3QgcmVhbGl6ZSB0aGV5J3JlIGp1c3QgcmVpbnZlbnRpbmcgZ3VwDQp3aXRob3V0
IHVzaW5nIGd1cCwgYnV0IHRoYXQncyBlc3NlbnRpYWxseSB3aGF0J3MgZ29pbmcgb24uDQoNCj4g
QW55d2F5IGFzIGZhciBhcyBJIGNhbiBzZWUgb25seSBjb3JyZWN0IGFwcHJvYWNoIHdvdWxkIGJl
IHRvIHVzZSBhbiBNTVUNCj4gbm90aWZpZXIgb3IgbW9yZSBoaWdoIGxldmVsIGhtbV9yYW5nZV9m
YXVsdCgpK3NlcSBudW1iZXIuDQoNClllYWgsIHBsdXMgaWYgeW91IGdvIHRocm91Z2ggcHRlcyB5
b3UgcmVhbGx5IGhhdmUgdG8gb2JleSBhbGwgdGhlDQpmbGFncyBvciB0aGluZ3Mgd2lsbCBicmVh
ay4gRXNwZWNpYWxseSB0aGUgUk8gcHRlIGZsYWcuDQotRGFuaWVsDQoNCj4NCj4gUmVnYXJkcywN
Cj4gQ2hyaXN0aWFuLg0KPg0KPiA+IGV2ZW4gaWYgaXQgaXMgYXZhaWxhYmxlIC0gc28gSSBjYW4n
dCBndWVzcyB3aHkgaXQgaXMgT0sgdG8gaWdub3JlIHRoZQ0KPiA+IHBhZ2UgcmVmZXJlbmNlIGlu
IG90aGVyIGNhc2VzLCBvciB3aHkgaXQgaXMgT0sgdG8gYmUgcmFjeS4uDQo+ID4NCj4gPiBFZyBo
bW1fcmFuZ2VfZmF1bHQoKSBkb2VzIG5vdCBvYnRhaW4gcGFnZSByZWZlcmVuY2VzIGFuZCBpbXBs
ZW1lbnRzIGENCj4gPiB2ZXJ5IHNpbWlsYXIgYWxnb3JpdGhtIHRvIGt2bS4NCj4gPg0KPiA+PiBQ
bHVzIHRoZXNlIHN0YXRpYyBtYXBwaW5ncyBhcmVuJ3QgYWxsIHRoYXQgc3RhdGljIGVpdGhlciwg
ZS5nLiBwY2kNCj4gPj4gYWNjZXNzIGFsc28gY2FuIHJldm9rZSBiYXIgbWFwcGluZ3Mgbm93YWRh
eXMuDQo+ID4gQW5kIHRoZXJlIGFyZSBhbHJlYWR5IG1tdSBub3RpZmllcnMgdG8gaGFuZGxlIHRo
YXQsIEFGQUlLLg0KPiA+DQo+ID4gSmFzb24NCj4NCg0KDQotLSANCkRhbmllbCBWZXR0ZXINClNv
ZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbg0KaHR0cDovL2Jsb2cuZmZ3bGwuY2gN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
