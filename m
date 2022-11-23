Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B58A635646
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 10:31:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1956F3ED5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 09:31:00 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lists.linaro.org (Postfix) with ESMTPS id 308003ED34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 09:30:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b="SEYF/QTg";
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.218.43) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f43.google.com with SMTP id me22so24856756ejb.8
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 01:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k/P6HmngRm+KyT9/p0YBOvUT5RPDSJ3KZFWEC9yJwyg=;
        b=SEYF/QTgkO2KyNYiHEjRyucUFb+Ry9Ekx3DQApfopXV78YDBzf9VwXBQKgQJiCjU1x
         i9Ujwox9aEaL0s0ptkZ33/Eiv9tYtfXn/YlySaB4qMn6tMtPQ9g3j0KpDQKXZA10tmgT
         luHNcWnUrOP+rBqLFyPSotsOcnLRVK6vYN7CA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k/P6HmngRm+KyT9/p0YBOvUT5RPDSJ3KZFWEC9yJwyg=;
        b=aaliqMHVLW8ufvNxsGZis1wbEYkJeB7oyc2lnGKPQB5R/MITJI/DQrqgajQrmi/zmY
         xE/mp816mu+97v2WE6pKqNy6e5T0jZ+2C9ClnXs22GVBHNe+CgBN47otCELdbmvsFEuf
         hXNKPG70FqDirs++ShNgIiqDz7tyUsUgfbKtEUf8/queJvRrZTzE24rmEUuAuic2K2dK
         XM6E6R9F8pW7benf3kpl+d4fU6LNnDdNCnsC6PouR4S++22imha0NRjcCmrE2sME4SV4
         oZVMEdgce8t0zLfHZTtK93CKvwJmasoFCfdWa5Wn9uis+2CwcD5xqKefdE/FFUZond0T
         byYQ==
X-Gm-Message-State: ANoB5pm3EtYEp/JTCT+M7ZcXLrss3E/5KbXMBYoN9OV8u54rlFgBjgJV
	oQLhwL4XW5L+MADCqKf6yg34Ky4B2sRj+mVujwRyLQ==
X-Google-Smtp-Source: AA0mqf568pBwzED/LXK5vNiD3i8xo4oBiTQDcMA8vk117sCWXiDHnVcKEywyfB4Esfm/JhlCEhfPrQ2dAt8gaFHsgEk=
X-Received: by 2002:a17:907:2a53:b0:7a1:6786:4566 with SMTP id
 fe19-20020a1709072a5300b007a167864566mr11215974ejc.433.1669195849127; Wed, 23
 Nov 2022 01:30:49 -0800 (PST)
MIME-Version: 1.0
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
 <Y30PDdsvHIJo5YHR@ziepe.ca> <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
 <Y30Z4VxT7Wdoc1Lc@ziepe.ca> <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
 <Y30kK6dsssSLJVgp@ziepe.ca> <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
In-Reply-To: <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Nov 2022 10:30:37 +0100
Message-ID: <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 308003ED34
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.80 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[ffwll.ch:dkim];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.973];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:url,ffwll.ch:dkim];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.218.43:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.43:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: F3J3BHCSPAQLVHXEUJ5LYZEF2MIKVBVY
X-Message-ID-Hash: F3J3BHCSPAQLVHXEUJ5LYZEF2MIKVBVY
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jason Gunthorpe <jgg@ziepe.ca>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F3J3BHCSPAQLVHXEUJ5LYZEF2MIKVBVY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyMyBOb3YgMjAyMiBhdCAxMDowNiwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gQW0gMjIuMTEuMjIgdW0gMjA6NTAgc2NocmllYiBE
YW5pZWwgVmV0dGVyOg0KPiA+IE9uIFR1ZSwgMjIgTm92IDIwMjIgYXQgMjA6MzQsIEphc29uIEd1
bnRob3JwZSA8amdnQHppZXBlLmNhPiB3cm90ZToNCj4gPj4gT24gVHVlLCBOb3YgMjIsIDIwMjIg
YXQgMDg6Mjk6MDVQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToNCj4gPj4+IFlvdSBudWtl
IGFsbCB0aGUgcHRlcy4gRHJpdmVycyB0aGF0IG1vdmUgaGF2ZSBzbGlnaHRseSBtb3JlIHRoYW4g
YQ0KPiA+Pj4gYmFyZSBzdHJ1Y3QgZmlsZSwgdGhleSBhbHNvIGhhdmUgYSBzdHJ1Y3QgYWRkcmVz
c19zcGFjZSBzbyB0aGF0DQo+ID4+PiBpbnZhbGlkYXRlX21hcHBpbmdfcmFuZ2UoKSB3b3Jrcy4N
Cj4gPj4gT2theSwgdGhpcyBpcyBvbmUgb2YgdGhlIHdheXMgdGhhdCB0aGlzIGNhbiBiZSBtYWRl
IHRvIHdvcmsgY29ycmVjdGx5LA0KPiA+PiBhcyBsb25nIGFzIHlvdSBuZXZlciBhbGxvdyBHVVAv
R1VQX2Zhc3QgdG8gc3VjY2VlZCBvbiB0aGUgUFRFcy4gKHRoaXMNCj4gPj4gd2FzIHRoZSBEQVgg
bWlzdGFrZSkNCj4gPiBIZW5jZSB0aGlzIHBhdGNoLCB0byBlbmZvcmNlIHRoYXQgbm8gZG1hLWJ1
ZiBleHBvcnRlciBnZXRzIHRoaXMgd3JvbmcuDQo+ID4gV2hpY2ggc29tZSBkaWQsIGFuZCB0aGVu
IGJsYW1lZCBidWcgcmVwb3J0ZXJzIGZvciB0aGUgcmVzdWx0aW5nIHNwbGF0cw0KPiA+IDotKSBP
bmUgb2YgdGhlIHRoaW5ncyB3ZSd2ZSByZXZlcnRlZCB3YXMgdGhlIHR0bSBodWdlIHB0ZSBzdXBw
b3J0LA0KPiA+IHNpbmNlIHRoYXQgZG9lc24ndCBoYXZlIHRoZSBwbWRfc3BlY2lhbCBmbGFnICh5
ZXQpIGFuZCBzbyB3b3VsZCBsZXQNCj4gPiBndXBfZmFzdCB0aHJvdWdoLg0KPg0KPiBUaGUgcHJv
YmxlbSBpcyBub3Qgb25seSBndXAsIGEgbG90IG9mIHBlb3BsZSBzZWVtIHRvIGFzc3VtZSB0aGF0
IHdoZW4NCj4geW91IGFyZSBhYmxlIHRvIGdyYWIgYSByZWZlcmVuY2UgdG8gYSBwYWdlIHRoYXQg
dGhlIHB0ZXMgcG9pbnRpbmcgdG8NCj4gdGhhdCBwYWdlIGNhbid0IGNoYW5nZSBhbnkgbW9yZS4g
QW5kIHRoYXQncyBvYnZpb3VzbHkgaW5jb3JyZWN0Lg0KPg0KPiBJIHdpdG5lc3NlZCB0b25zIG9m
IGRpc2N1c3Npb25zIGFib3V0IHRoYXQgYWxyZWFkeS4gU29tZSBjdXN0b21lcnMgZXZlbg0KPiBt
b2RpZmllZCBvdXIgY29kZSBhc3N1bWluZyB0aGF0IGFuZCB0aGVuIHdvbmRlcmVkIHdoeSB0aGUg
aGVjayB0aGV5IHJhbg0KPiBpbnRvIGRhdGEgY29ycnVwdGlvbi4NCj4NCj4gSXQncyBnb3R0ZW4g
c28gYmFkIHRoYXQgSSd2ZSBldmVuIHByb3Bvc2VkIGludGVudGlvbmFsbHkgbWFuZ2xpbmcgdGhl
DQo+IHBhZ2UgcmVmZXJlbmNlIGNvdW50IG9uIFRUTSBhbGxvY2F0ZWQgcGFnZXM6DQo+IGh0dHBz
Oi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9kcmktZGV2ZWwvcGF0Y2gvMjAyMjA5Mjcx
NDM1MjkuMTM1Njg5LTEtY2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tLw0KDQpZZWFoIG1heWJlIHNv
bWV0aGluZyBsaWtlIHRoaXMgY291bGQgYmUgYXBwbGllZCBhZnRlciB3ZSBsYW5kIHRoaXMNCnBh
dGNoIGhlcmUuIFdlbGwgbWF5YmUgc2hvdWxkIGhhdmUgdGhlIHNhbWUgY2hlY2sgaW4gZ2VtIG1t
YXAgY29kZSB0bw0KbWFrZSBzdXJlIG5vIGRyaXZlcg0KDQo+IEkgdGhpbmsgaXQgd291bGQgYmUg
YmV0dGVyIHRoYXQgaW5zdGVhZCBvZiBoYXZpbmcgc3BlY2lhbCBmbGFncyBpbiB0aGUNCj4gcHRl
cyBhbmQgdm1hcyB0aGF0IHlvdSBjYW4ndCBmb2xsb3cgdGhlbSB0byBhIHBhZ2Ugc3RydWN0dXJl
IHdlIHdvdWxkDQo+IGFkZCBzb21ldGhpbmcgdG8gdGhlIHBhZ2UgaW5kaWNhdGluZyB0aGF0IHlv
dSBjYW4ndCBncmFiIGEgcmVmZXJlbmNlIHRvDQo+IGl0LiBCdXQgdGhpcyBtaWdodCBicmVhayBz
b21lIHVzZSBjYXNlcyBhcyB3ZWxsLg0KDQpBZmFpayB0aGUgcHJvYmxlbSB3aXRoIHRoYXQgaXMg
dGhhdCB0aGVyZSdzIG5vIGZyZWUgcGFnZSBiaXRzIGxlZnQgZm9yDQp0aGVzZSBkZWJ1ZyBjaGVj
a3MuIFBsdXMgdGhlIHB0ZSt2bWEgZmxhZ3MgYXJlIHRoZSBmbGFncyB0byBtYWtlIHRoaXMNCmNs
ZWFyIGFscmVhZHkuDQotRGFuaWVsDQotLSANCkRhbmllbCBWZXR0ZXINClNvZnR3YXJlIEVuZ2lu
ZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbg0KaHR0cDovL2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
