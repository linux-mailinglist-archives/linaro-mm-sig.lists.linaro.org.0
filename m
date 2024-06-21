Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A22A3911D22
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 09:45:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EB624416B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 07:45:12 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 82F393F68F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 07:45:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VHcU5OcK;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4D27ECE2B81;
	Fri, 21 Jun 2024 07:45:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A549BC2BBFC;
	Fri, 21 Jun 2024 07:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718955906;
	bh=kaVMXrwTmSC64V9oowdkW3LocVFxxI6q7Bieew/jhU4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VHcU5OcKmyIuSvFX2uiCfjL+hqzmLLUuXSpxQkSHq290dmv2VLJhQ4Ta69W49r4Nk
	 uirkX9qtF2gwmdG1GscRoyErHl9DlfDUe44+Yh+AS6Z4lR/aZ3g4gKMawl1Xc6IgEn
	 oagGpD0YxZXKrpnOurjlzGmtWfOwmP4XgtUkg2Ac0ncef6ZnwCaHM92NX08d7xgJKr
	 a1uwzIT4X0/2Zk3peizz7HR8/P1MY7wMhCKjy08jJ9d0yxXEVHVULJ02ZVXc+HQelZ
	 w2FYmT3aSRxqx9efS351bY1cxqsRu9O443MHLLDnCqdeKFc4QmbjElYWuvO6qWmFig
	 7zxU5x/94AxYg==
Date: Fri, 21 Jun 2024 08:44:59 +0100
From: Lee Jones <lee@kernel.org>
To: Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
Message-ID: <20240621074459.GF1318296@google.com>
References: <202406191014.9JAzwRV6-lkp@intel.com>
 <c25aab0d-48f6-4754-b514-d6caf8d51fd1@web.de>
 <ZnRUSaHJhz7XLcKa@matsya>
 <20240620170522.GU3029315@google.com>
 <ZnUnFeum1Z2ahm9M@matsya>
 <b7283f9458047e63e7d8c8b80daf2bd6232403cb.camel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7283f9458047e63e7d8c8b80daf2bd6232403cb.camel@gmail.com>
X-Rspamd-Queue-Id: 82F393F68F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,web.de,intel.com,crapouillou.net,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,metafoo.de,linaro.org,lists.linux.dev,lwn.net,inria.fr,infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GK2VXT6QQSMP3HR2BJC24KI5XEIVND73
X-Message-ID-Hash: GK2VXT6QQSMP3HR2BJC24KI5XEIVND73
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Markus Elfring <Markus.Elfring@web.de>, lkp@intel.com, Paul Cercueil <paul@crapouillou.net>, Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>, linux-iio@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Julia Lawall <julia.lawall@inria.fr>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GK2VXT6QQSMP3HR2BJC24KI5XEIVND73/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMSBKdW4gMjAyNCwgTnVubyBTw6Egd3JvdGU6DQoNCj4gT24gRnJpLCAyMDI0LTA2
LTIxIGF0IDEyOjM5ICswNTMwLCBWaW5vZCBLb3VsIHdyb3RlOg0KPiA+IE9uIDIwLTA2LTI0LCAx
ODowNSwgTGVlIEpvbmVzIHdyb3RlOg0KPiA+ID4gT24gVGh1LCAyMCBKdW4gMjAyNCwgVmlub2Qg
S291bCB3cm90ZToNCj4gPiA+IA0KPiA+ID4gPiBPbiAyMC0wNi0yNCwgMTI6NDUsIE1hcmt1cyBF
bGZyaW5nIHdyb3RlOg0KPiA+ID4gPiA+IOKApg0KPiA+ID4gPiA+ID4gQWxsIGVycm9ycyAobmV3
IG9uZXMgcHJlZml4ZWQgYnkgPj4pOg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gZHJp
dmVycy9paW8vaW5kdXN0cmlhbGlvLWJ1ZmZlci5jOjE3MTU6MzogZXJyb3I6IGNhbm5vdCBqdW1w
IGZyb20NCj4gPiA+ID4gPiA+ID4gPiB0aGlzIGdvdG8gc3RhdGVtZW50IHRvIGl0cyBsYWJlbA0K
PiA+ID4gPiA+ID4gwqDCoMKgIDE3MTUgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGdvdG8gZXJyX2RtYWJ1Zl91bm1hcF9hdHRhY2htZW50Ow0KPiA+ID4gPiA+IOKApg0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+IFdoaWNoIHNvZnR3YXJlIGRlc2lnbiBvcHRpb25zIHdvdWxkIHlvdSBs
aWtlIHRvIHRyeSBvdXQgbmV4dA0KPiA+ID4gPiA+IHNvIHRoYXQgc3VjaCBhIHF1ZXN0aW9uYWJs
ZSBjb21waWxhdGlvbiBlcnJvciBtZXNzYWdlIHdpbGwgYmUgYXZvaWRlZA0KPiA+ID4gPiA+IGZp
bmFsbHk/DQo+ID4gPiA+IA0KPiA+ID4gPiBUaGUgb25lIHdoZXJlIGFsbCBlbWFpbHMgZnJvbSBN
YXJrdXMgZ28gdG8gZGV2L251bGwNCj4gPiA+IA0KPiA+ID4gUGxheSBuaWNlIHBsZWFzZS4NCj4g
PiANCj4gPiBXb3VsZCBsb3ZlIHRvLi4uIGJ1dCBNYXJrdXMgaGFzIGJlZW4gcmVwZWF0IG9mZmVu
ZGVyDQo+ID4gDQo+ID4gU2FkbHksIEkgYW0geWV0IHRvIHNlZSBhIGNvbnN0cnVjdGl2ZSBhcHBy
b2FjaCBvciBldmVuIGJldHRlciBhIGhlbHBmdWwNCj4gPiBwYXRjaCB3aGljaCBpbXByb3ZlIHNv
bWV0aGluZywgcmF0aGVyIHRoYW4gdmFndWUgc3VnZ2VzdGlvbnMgb24gdGhlIGxpc3QNCg0KUmln
aHQsIHRoZXJlIGFyZSBjb21tdW5pY2F0aW9uIGlzc3Vlcy4NCg0KRG9lc24ndCBtZWFuIHdlIGhh
dmUgdG8gbG93ZXIgb3VyIG93biBzdGFuZGFyZHMuDQoNCj4gWWVhaCwganVzdCBsb29rIGF0IGhv
dyBtYW55IGF1dG9tYXRpYyByZXBsaWVzIGhlIGdldCdzIGZyb20gR3JlZyBwcmV0dHkgbXVjaA0K
PiBzYXlpbmcgdG8gaWdub3JlIGhpcyBjb21tZW50cy4NCg0KWWVzLCBHcmVnIGlzIGFsc28gZ3J1
bXB5IGFib3V0IGl0LCBidXQgYXQgbGVhc3QgaGUgcmVtYWlucyBwb2xpdGUuDQoNCi0tIA0KTGVl
IEpvbmVzIFvmnY7nkLzmlq9dDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
