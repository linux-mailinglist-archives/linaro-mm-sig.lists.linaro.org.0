Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BBF7B9CF3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Oct 2023 14:20:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D8793F97F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Oct 2023 12:20:01 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	by lists.linaro.org (Postfix) with ESMTPS id 46E233F97F
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Oct 2023 12:19:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b=ob2iAc3p;
	spf=none (lists.linaro.org: domain of willy@infradead.org has no SPF policy when checking 90.155.50.34) smtp.mailfrom=willy@infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=UsVE557PzrNyYPiLJjrpDiv6e1odj4+yvG6YntgxdCg=; b=ob2iAc3pk+z+RLvlwJM5ZEIvGo
	1xjlUmYsHVt79MNTw4fGTMR0RYJ9EwHjkC8TchD6JndeNF9j7AL1U3YCLbp1cCTTPnSxL+D9XEjOz
	T2sXoNyUQjP4sXh2lkD/iqCFjHrfBqeIGpf9fdLQhjmwQX1ZzGnhB+C1SlebzOsIODjoZBD5Y0Cah
	oi6qGj3u6Dkn9AZ9iOkLgfcFEtKORAT1NAnzJlwUfCVQQZyqSAUE8tQTBRAJqj9Ts0hBfCxNPz35E
	FGLRIWC3XppZ0LoiouEOuc4j5NIaBhHZzY7aFkvgE/YWal0MMIJfbB3fG4pIIBrDnIuE6RkpeSBy0
	4gZf7Lfg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qoNKS-009IID-A4; Thu, 05 Oct 2023 12:19:44 +0000
Date: Thu, 5 Oct 2023 13:19:44 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Message-ID: <ZR6p4MpDbQpZiUSZ@casper.infradead.org>
References: <13360591.uLZWGnKmhe@natalenko.name>
 <2160215.irdbgypaU6@natalenko.name>
 <fed1cbf3-0926-4895-a8ba-d6fa9fd53dbe@suse.de>
 <3254850.aeNJFYEL58@natalenko.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3254850.aeNJFYEL58@natalenko.name>
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=casper.20170209];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:20712, ipnet:90.155.0.0/18, country:GB];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-0.969];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[suse.de,lists.linux.dev,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,kvack.org,kernel.org,gmail.com,linux-foundation.org,linaro.org];
	DMARC_NA(0.00)[infradead.org];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 46E233F97F
Message-ID-Hash: ZL5BGC5ZGVOFFRP5OKMD6YIWTXUXMCJI
X-Message-ID-Hash: ZL5BGC5ZGVOFFRP5OKMD6YIWTXUXMCJI
X-MailFrom: willy@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thomas Zimmermann <tzimmermann@suse.de>, Linux Regressions <regressions@lists.linux.dev>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZL5BGC5ZGVOFFRP5OKMD6YIWTXUXMCJI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBPY3QgMDUsIDIwMjMgYXQgMDk6NTY6MDNBTSArMDIwMCwgT2xla3NhbmRyIE5hdGFs
ZW5rbyB3cm90ZToNCj4gSGVsbG8uDQo+IA0KPiBPbiDEjXR2cnRlayA1LiDFmcOtam5hIDIwMjMg
OTo0NDo0MiBDRVNUIFRob21hcyBaaW1tZXJtYW5uIHdyb3RlOg0KPiA+IEhpDQo+ID4gDQo+ID4g
QW0gMDIuMTAuMjMgdW0gMTc6Mzggc2NocmllYiBPbGVrc2FuZHIgTmF0YWxlbmtvOg0KPiA+ID4g
T24gcG9uZMSbbMOtIDIuIMWZw61qbmEgMjAyMyAxNjozMjo0NSBDRVNUIE1hdHRoZXcgV2lsY294
IHdyb3RlOg0KPiA+ID4+IE9uIE1vbiwgT2N0IDAyLCAyMDIzIGF0IDAxOjAyOjUyUE0gKzAyMDAs
IE9sZWtzYW5kciBOYXRhbGVua28gd3JvdGU6DQo+ID4gPj4+Pj4+PiBCVUc6IEtGRU5DRTogbWVt
b3J5IGNvcnJ1cHRpb24gaW4gZHJtX2dlbV9wdXRfcGFnZXMrMHgxODYvMHgyNTANCj4gPiA+Pj4+
Pj4+DQo+ID4gPj4+Pj4+PiBDb3JydXB0ZWQgbWVtb3J5IGF0IDB4MDAwMDAwMDBlMTczYTI5NCBb
ICEgISAhICEgISAhICEgISAhICEgISAhICEgISAhICEgXSAoaW4ga2ZlbmNlLSMxMDgpOg0KPiA+
ID4+Pj4+Pj4gICBkcm1fZ2VtX3B1dF9wYWdlcysweDE4Ni8weDI1MA0KPiA+ID4+Pj4+Pj4gICBk
cm1fZ2VtX3NobWVtX3B1dF9wYWdlc19sb2NrZWQrMHg0My8weGMwDQo+ID4gPj4+Pj4+PiAgIGRy
bV9nZW1fc2htZW1fb2JqZWN0X3Z1bm1hcCsweDgzLzB4ZTANCj4gPiA+Pj4+Pj4+ICAgZHJtX2dl
bV92dW5tYXBfdW5sb2NrZWQrMHg0Ni8weGIwDQo+ID4gPj4+Pj4+PiAgIGRybV9mYmRldl9nZW5l
cmljX2hlbHBlcl9mYl9kaXJ0eSsweDFkYy8weDMxMA0KPiA+ID4+Pj4+Pj4gICBkcm1fZmJfaGVs
cGVyX2RhbWFnZV93b3JrKzB4OTYvMHgxNzANCj4gPiA+Pj4NCj4gPiA+Pj4gTWF0dGhldywgYmVm
b3JlIEkgc3RhcnQgZGFuY2luZyBhcm91bmQsIGRvIHlvdSB0aGluayBeXiBjb3VsZCBoYXZlIHRo
ZSBzYW1lIGNhdXNlIGFzIDBiNjJhZjI4ZjI0OWI5YzQwMzZhMDVhY2ZiMDUzMDU4ZGMwMmUyZTIg
d2hpY2ggZ290IGZpeGVkIGJ5IDg2M2E4ZWIzZjI3MDk4YjQyNzcyZjY2OGUzOTc3ZmY0Y2FlMTBi
MDQ/DQo+ID4gPj4NCj4gPiA+PiBZZXMsIGVudGlyZWx5IHBsYXVzaWJsZS4gIEkgdGhpbmsgeW91
IGhhdmUgdHdvIHVzZWZ1bCBwb2ludHMgdG8gbG9vayBhdA0KPiA+ID4+IGJlZm9yZSBkZWx2aW5n
IGludG8gYSBmdWxsIGJpc2VjdCAtLSA4NjNhOGUgYW5kIHRoZSBwYXJlbnQgb2YgMGI2MmFmLg0K
PiA+ID4+IElmIGVpdGhlciBvZiB0aGVtIHdvcmssIEkgdGhpbmsgeW91IGhhdmUgbm8gbW9yZSB3
b3JrIHRvIGRvLg0KPiA+ID4gDQo+ID4gPiBPSywgSSd2ZSBkaWQgdGhpcyBhZ2FpbnN0IHY2LjUu
NToNCj4gPiA+IA0KPiA+ID4gYGBgDQo+ID4gPiBnaXQgbG9nIC0tb25lbGluZSBIRUFEfjMuLg0K
PiA+ID4gN2MxZTc2OTVjYTliOCAoSEVBRCAtPiB0ZXN0KSBSZXZlcnQgIm1tOiByZW1vdmUgc3Ry
dWN0IHBhZ2V2ZWMiDQo+ID4gPiA4ZjJhZDUzYjZlYWM2IFJldmVydCAibW06IHJlbW92ZSBjaGVj
a19tb3ZlX3VuZXZpY3RhYmxlX3BhZ2VzKCkiDQo+ID4gPiBmYTFlM2MwYjU0NTNjIFJldmVydCAi
ZHJtOiBjb252ZXJ0IGRybV9nZW1fcHV0X3BhZ2VzKCkgdG8gdXNlIGEgZm9saW9fYmF0Y2giDQo+
ID4gPiBgYGANCj4gPiA+IA0KPiA+ID4gdGhlbiByZWJvb3RlZCB0aGUgaG9zdCBtdWx0aXBsZSB0
aW1lcywgYW5kIHRoZSBpc3N1ZSBpcyBub3Qgc2VlbiBhbnkgbW9yZS4NCj4gPiA+IA0KPiA+ID4g
U28gSSBndWVzcyAzMjkxZTA5YTQ2Mzg3MDYxMGI4MjI3ZjMyYjE2YjE5YTU4N2VkZjMzIGlzIHRo
ZSBjdWxwcml0Lg0KPiA+IA0KPiA+IElnbm9yZSBteSBvdGhlciBlbWFpbC4gSXQncyBhcHBhcmVu
dGx5IGJlZW4gZml4ZWQgYWxyZWFkeS4gVGhhbmtzIQ0KPiANCj4gSGFzIGl0PyBJIHRoaW5rIEkg
d2FzIGFibGUgdG8gaWRlbnRpZnkgb2ZmZW5kaW5nIGNvbW1pdCwgYnV0IEknbSBub3QgYXdhcmUg
b2YgYW55IGZpeCB0byB0aGF0Lg0KDQpJIGRvbid0IHVuZGVyc3RhbmQ7IHlvdSBzYWlkIHJldmVy
dGluZyB0aG9zZSBEUk0gY29tbWl0cyBmaXhlZCB0aGUNCnByb2JsZW0sIHNvIDg2M2E4ZWIzZjI3
MCBpcyB0aGUgc29sdXRpb24uICBObz8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
