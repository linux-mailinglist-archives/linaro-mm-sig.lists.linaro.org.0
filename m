Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A44D7635904
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 11:07:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACFF53ED5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 10:07:18 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id E2FB63EC70
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 10:07:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=TQ51N5El;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.218.49) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f49.google.com with SMTP id me22so25060299ejb.8
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 02:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h+UdvofUGp6+nqq/FR8FcX4hvZmapqrFr41Q2JO7x4c=;
        b=TQ51N5ElxONDKI/zhDJ3pCgpfLjbZshPT3dmaV8oEwygDZ7SUkV43yilCvjo5DTHkM
         5vinp6v+ldQAo/Z6KGaY5xTUo3Lnhb4v5NMeNcJq5CXQqT+ExG+ICc1x7EqIpc/l8ZI+
         6kkzXHBS485z5Q3W1BWot8CJKckOO6+wlmPxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h+UdvofUGp6+nqq/FR8FcX4hvZmapqrFr41Q2JO7x4c=;
        b=5/vPvVQe2A6NIBNE8ZGUHe0klvEDvDa9l1rmj3cDFUnIZjdGFeyUH0UklavNj0irSn
         uYg5GdcKeY++tqYnRwvyTQ5/u5xewNcnJKDXJ97j8zOjp6QXIQWLJaumeHZ7wj2ZgG1R
         KVg/Q7vyMlzaNN/+HvOCBwNgQPY7zfY2P42b3dm2fcvNJyrfMVQn5z1zuFI7uZ+6SYy9
         2nU3jckxwzgdpDpo1YuwNhm0/0qBtNo1jFI7tLkcqiXnEwLmzlkI+lVpYXnZsdqLvGDi
         CbqGn/HNxQPbbTGY6LUadm2izwNJ/D/EUaI+V1yPTQo6ega+K43y5ZTLEwLrl/cgxcII
         8q2Q==
X-Gm-Message-State: ANoB5plwtdhM+h5DvEPhDdmP4N5wVcZXYHgQ7m+Xy0hGuxKLukAb5cUl
	f6VmONUEmXJKEy6fOL1sbrpmPM2EiwcWs0Ye9c4pWw==
X-Google-Smtp-Source: AA0mqf7tcZdPWNPPAaRZELTq9mvgZpMH+k/1GataSXqkuF2ePYeDW4qUMkJISiWe8P9mQTOVdyKvWgBCSqeQKGcAWaA=
X-Received: by 2002:a17:907:8197:b0:7b8:eae2:716a with SMTP id
 iy23-20020a170907819700b007b8eae2716amr4704467ejc.516.1669198026954; Wed, 23
 Nov 2022 02:07:06 -0800 (PST)
MIME-Version: 1.0
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
 <Y30PDdsvHIJo5YHR@ziepe.ca> <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
 <Y30Z4VxT7Wdoc1Lc@ziepe.ca> <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
 <Y30kK6dsssSLJVgp@ziepe.ca> <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com> <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
In-Reply-To: <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Nov 2022 11:06:55 +0100
Message-ID: <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Queue-Id: E2FB63EC70
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.218.49:from];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.49:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[ffwll.ch];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,ziepe.ca:email,ffwll.ch:url,ffwll.ch:dkim,mail-ej1-f49.google.com:rdns,mail-ej1-f49.google.com:helo];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_TWELVE(0.00)[13];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-0.991];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,ziepe.ca:email,ffwll.ch:url,ffwll.ch:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CG6HW4D7DZATDEPOGMSX4F7P5IPD7R42
X-Message-ID-Hash: CG6HW4D7DZATDEPOGMSX4F7P5IPD7R42
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CG6HW4D7DZATDEPOGMSX4F7P5IPD7R42/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyMyBOb3YgMjAyMiBhdCAxMDozOSwgQ2hyaXN0aWFuIEvDtm5pZw0KPGNrb2VuaWcu
bGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToNCj4NCj4gQW0gMjMuMTEuMjIgdW0gMTA6
MzAgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiA+IE9uIFdlZCwgMjMgTm92IDIwMjIgYXQgMTA6
MDYsIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+
ID4+IEFtIDIyLjExLjIyIHVtIDIwOjUwIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoNCj4gPj4+IE9u
IFR1ZSwgMjIgTm92IDIwMjIgYXQgMjA6MzQsIEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNh
PiB3cm90ZToNCj4gPj4+PiBPbiBUdWUsIE5vdiAyMiwgMjAyMiBhdCAwODoyOTowNVBNICswMTAw
LCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0KPiA+Pj4+PiBZb3UgbnVrZSBhbGwgdGhlIHB0ZXMuIERy
aXZlcnMgdGhhdCBtb3ZlIGhhdmUgc2xpZ2h0bHkgbW9yZSB0aGFuIGENCj4gPj4+Pj4gYmFyZSBz
dHJ1Y3QgZmlsZSwgdGhleSBhbHNvIGhhdmUgYSBzdHJ1Y3QgYWRkcmVzc19zcGFjZSBzbyB0aGF0
DQo+ID4+Pj4+IGludmFsaWRhdGVfbWFwcGluZ19yYW5nZSgpIHdvcmtzLg0KPiA+Pj4+IE9rYXks
IHRoaXMgaXMgb25lIG9mIHRoZSB3YXlzIHRoYXQgdGhpcyBjYW4gYmUgbWFkZSB0byB3b3JrIGNv
cnJlY3RseSwNCj4gPj4+PiBhcyBsb25nIGFzIHlvdSBuZXZlciBhbGxvdyBHVVAvR1VQX2Zhc3Qg
dG8gc3VjY2VlZCBvbiB0aGUgUFRFcy4gKHRoaXMNCj4gPj4+PiB3YXMgdGhlIERBWCBtaXN0YWtl
KQ0KPiA+Pj4gSGVuY2UgdGhpcyBwYXRjaCwgdG8gZW5mb3JjZSB0aGF0IG5vIGRtYS1idWYgZXhw
b3J0ZXIgZ2V0cyB0aGlzIHdyb25nLg0KPiA+Pj4gV2hpY2ggc29tZSBkaWQsIGFuZCB0aGVuIGJs
YW1lZCBidWcgcmVwb3J0ZXJzIGZvciB0aGUgcmVzdWx0aW5nIHNwbGF0cw0KPiA+Pj4gOi0pIE9u
ZSBvZiB0aGUgdGhpbmdzIHdlJ3ZlIHJldmVydGVkIHdhcyB0aGUgdHRtIGh1Z2UgcHRlIHN1cHBv
cnQsDQo+ID4+PiBzaW5jZSB0aGF0IGRvZXNuJ3QgaGF2ZSB0aGUgcG1kX3NwZWNpYWwgZmxhZyAo
eWV0KSBhbmQgc28gd291bGQgbGV0DQo+ID4+PiBndXBfZmFzdCB0aHJvdWdoLg0KPiA+PiBUaGUg
cHJvYmxlbSBpcyBub3Qgb25seSBndXAsIGEgbG90IG9mIHBlb3BsZSBzZWVtIHRvIGFzc3VtZSB0
aGF0IHdoZW4NCj4gPj4geW91IGFyZSBhYmxlIHRvIGdyYWIgYSByZWZlcmVuY2UgdG8gYSBwYWdl
IHRoYXQgdGhlIHB0ZXMgcG9pbnRpbmcgdG8NCj4gPj4gdGhhdCBwYWdlIGNhbid0IGNoYW5nZSBh
bnkgbW9yZS4gQW5kIHRoYXQncyBvYnZpb3VzbHkgaW5jb3JyZWN0Lg0KPiA+Pg0KPiA+PiBJIHdp
dG5lc3NlZCB0b25zIG9mIGRpc2N1c3Npb25zIGFib3V0IHRoYXQgYWxyZWFkeS4gU29tZSBjdXN0
b21lcnMgZXZlbg0KPiA+PiBtb2RpZmllZCBvdXIgY29kZSBhc3N1bWluZyB0aGF0IGFuZCB0aGVu
IHdvbmRlcmVkIHdoeSB0aGUgaGVjayB0aGV5IHJhbg0KPiA+PiBpbnRvIGRhdGEgY29ycnVwdGlv
bi4NCj4gPj4NCj4gPj4gSXQncyBnb3R0ZW4gc28gYmFkIHRoYXQgSSd2ZSBldmVuIHByb3Bvc2Vk
IGludGVudGlvbmFsbHkgbWFuZ2xpbmcgdGhlDQo+ID4+IHBhZ2UgcmVmZXJlbmNlIGNvdW50IG9u
IFRUTSBhbGxvY2F0ZWQgcGFnZXM6DQo+ID4+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cHJvamVjdC9kcmktZGV2ZWwvcGF0Y2gvMjAyMjA5MjcxNDM1MjkuMTM1Njg5LTEtY2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tLw0KPiA+IFllYWggbWF5YmUgc29tZXRoaW5nIGxpa2UgdGhpcyBjb3Vs
ZCBiZSBhcHBsaWVkIGFmdGVyIHdlIGxhbmQgdGhpcw0KPiA+IHBhdGNoIGhlcmUuDQo+DQo+IEkg
dGhpbmsgYm90aCBzaG91bGQgbGFuZCBBU0FQLiBXZSBkb24ndCBoYXZlIGFueSBvdGhlciB3YXkg
dGhhbiB0bw0KPiBjbGVhcmx5IHBvaW50IG91dCBpbmNvcnJlY3QgYXBwcm9hY2hlcyBpZiB3ZSB3
YW50IHRvIHByZXZlbnQgdGhlDQo+IHJlc3VsdGluZyBkYXRhIGNvcnJ1cHRpb24uDQo+DQo+ID4g
V2VsbCBtYXliZSBzaG91bGQgaGF2ZSB0aGUgc2FtZSBjaGVjayBpbiBnZW0gbW1hcCBjb2RlIHRv
DQo+ID4gbWFrZSBzdXJlIG5vIGRyaXZlcg0KPg0KPiBSZWFkcyBsaWtlIHRoZSBzZW50ZW5jZSBp
cyBzb21laG93IGN1dCBvZj8NCg0KWWVhaCwganVzdCB3YW50ZWQgdG8gc2F5IHRoYXQgd2UgbmVl
ZCB0byBtYWtlIHN1cmUgaW4gYXMgbWFueSBwbGFjZXMNCmFzIHBvc3NpYmxlIHRoYXQgVk1fUEZO
TUFQIGlzIHNldCBmb3IgYm8gbW1hcHMuDQoNCj4gPj4gSSB0aGluayBpdCB3b3VsZCBiZSBiZXR0
ZXIgdGhhdCBpbnN0ZWFkIG9mIGhhdmluZyBzcGVjaWFsIGZsYWdzIGluIHRoZQ0KPiA+PiBwdGVz
IGFuZCB2bWFzIHRoYXQgeW91IGNhbid0IGZvbGxvdyB0aGVtIHRvIGEgcGFnZSBzdHJ1Y3R1cmUg
d2Ugd291bGQNCj4gPj4gYWRkIHNvbWV0aGluZyB0byB0aGUgcGFnZSBpbmRpY2F0aW5nIHRoYXQg
eW91IGNhbid0IGdyYWIgYSByZWZlcmVuY2UgdG8NCj4gPj4gaXQuIEJ1dCB0aGlzIG1pZ2h0IGJy
ZWFrIHNvbWUgdXNlIGNhc2VzIGFzIHdlbGwuDQo+ID4gQWZhaWsgdGhlIHByb2JsZW0gd2l0aCB0
aGF0IGlzIHRoYXQgdGhlcmUncyBubyBmcmVlIHBhZ2UgYml0cyBsZWZ0IGZvcg0KPiA+IHRoZXNl
IGRlYnVnIGNoZWNrcy4gUGx1cyB0aGUgcHRlK3ZtYSBmbGFncyBhcmUgdGhlIGZsYWdzIHRvIG1h
a2UgdGhpcw0KPiA+IGNsZWFyIGFscmVhZHkuDQo+DQo+IE1heWJlIGEgR0ZQIGZsYWcgdG8gc2V0
IHRoZSBwYWdlIHJlZmVyZW5jZSBjb3VudCB0byB6ZXJvIG9yIHNvbWV0aGluZw0KPiBsaWtlIHRo
aXM/DQoNCkhtIHllYWggdGhhdCBtaWdodCB3b3JrLiBJJ20gbm90IHN1cmUgd2hhdCBpdCB3aWxs
IGFsbCBicmVhayB0aG91Z2g/DQpBbmQgd2UnZCBuZWVkIHRvIG1ha2Ugc3VyZSB0aGF0IHVuZGVy
Zmxvd2luZyB0aGUgcGFnZSByZWZjb3VudCBkaWVzIGluDQphIGJhY2t0cmFjZS4NCi1EYW5pZWwN
Ci0tIA0KRGFuaWVsIFZldHRlcg0KU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9u
DQpodHRwOi8vYmxvZy5mZndsbC5jaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
