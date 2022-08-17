Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A1C5973D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Aug 2022 18:12:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E749F3F5F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Aug 2022 16:12:13 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
	by lists.linaro.org (Postfix) with ESMTPS id A1D7D3EBA7
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Aug 2022 16:12:11 +0000 (UTC)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1oOLeF-0004Ag-27; Wed, 17 Aug 2022 18:12:03 +0200
Message-ID: <f4483d7d55f1f1f4dcd0ad020840561481aa2fd8.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Nicolas Dufresne <nicolas@ndufresne.ca>, Olivier Masse
	 <olivier.masse@nxp.com>, "brian.starkey@arm.com" <brian.starkey@arm.com>
Date: Wed, 17 Aug 2022 18:12:01 +0200
In-Reply-To: <eef2fc413695cb96a5071627bfe44830f80cfe9e.camel@ndufresne.ca>
References: <20220805135330.970-1-olivier.masse@nxp.com>
	 <20220805135330.970-2-olivier.masse@nxp.com>
	 <20220805154139.2qkqxwklufjpsfdx@000377403353>
	 <7e61668164f8bf02f6c4ee166e85abc42b5ee958.camel@nxp.com>
	 <20220812163922.v7sf3havi5dpgi5u@000377403353>
	 <de46324d8fa8fb6a8dda4641e531d30842410744.camel@nxp.com>
	 <eef2fc413695cb96a5071627bfe44830f80cfe9e.camel@ndufresne.ca>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
Message-ID-Hash: AOQJ7CNNYXH4CO62MZI675JZYUSAW3HW
X-Message-ID-Hash: AOQJ7CNNYXH4CO62MZI675JZYUSAW3HW
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?ISO-8859-1?Q?Cl=E9ment?= Faure <clement.faure@nxp.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "nd@arm.com" <nd@arm.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXT] Re: [PATCH 1/3] dma-buf: heaps: add Linaro secure dmabuf heap support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AOQJ7CNNYXH4CO62MZI675JZYUSAW3HW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gTWl0dHdvY2gsIGRlbSAxNy4wOC4yMDIyIHVtIDEwOjI5IC0wNDAwIHNjaHJpZWIgTmljb2xh
cyBEdWZyZXNuZToNCj4gSGkgRm9sa3MsDQo+IA0KPiBMZSBtYXJkaSAxNiBhb8O7dCAyMDIyIMOg
IDExOjIwICswMDAwLCBPbGl2aWVyIE1hc3NlIGEgw6ljcml0wqA6DQo+ID4gSGkgQnJpYW4sDQo+
ID4gDQo+ID4gDQo+ID4gT24gdmVuLiwgMjAyMi0wOC0xMiBhdCAxNzozOSArMDEwMCwgQnJpYW4g
U3RhcmtleSB3cm90ZToNCj4gPiA+IENhdXRpb246IEVYVCBFbWENCj4gPiA+IA0KPiANCj4gWy4u
Ll0NCj4gDQo+ID4gPiANCj4gPiA+IEludGVyZXN0aW5nLCB0aGF0J3Mgbm90IGhvdyB0aGUgZGV2
aWNlcyBJJ3ZlIHdvcmtlZCBvbiBvcGVyYXRlZC4NCj4gPiA+IA0KPiA+ID4gQXJlIHlvdSBzYXlp
bmcgdGhhdCB5b3UgaGF2ZSB0byBoYXZlIGEgZGlzcGxheSBjb250cm9sbGVyIGRyaXZlcg0KPiA+
ID4gcnVubmluZyBpbiB0aGUgVEVFIHRvIGRpc3BsYXkgb25lIG9mIHRoZXNlIGJ1ZmZlcnM/DQo+
ID4gDQo+ID4gSW4gZmFjdCB0aGUgZGlzcGxheSBjb250cm9sbGVyIGlzIG1hbmFnaW5nIDMgcGxh
bnMgOiBVSSwgUGlQIGFuZA0KPiA+IHZpZGVvLiBUaGUgdmlkZW8gcGxhbiBpcyBwcm90ZWN0ZWQg
aW4gc2VjdXJlIGFzIHlvdSBjYW4gc2VlIG9uIHNsaWRlDQo+ID4gMTE6DQo+ID4gaHR0cHM6Ly9z
dGF0aWMubGluYXJvLm9yZy9jb25uZWN0L3NhbjE5L3ByZXNlbnRhdGlvbnMvc2FuMTktMTA3LnBk
Zg0KPiANCj4gDQo+IA0KPiBqdXN0IHdhbnRlZCB0byBoaWdobGlnaHQgdGhhdCBhbGwgdGhlIFdQ
RS9HU3RyZWFtZXIgYml0IGluIHRoaXMgcHJlc2VudGF0aW9uIGlzDQo+IGJhc2VkIG9uIE5YUCBW
ZW5kb3IgTWVkaWEgQ09ERUMgZGVzaWduLCB3aGljaCByZWx5IG9uIHRoZWlyIG93biBpLk1YIFZQ
VSBBUEkuIEkNCj4gZG9uJ3Qgc2VlIGFueSBlZmZvcnQgdG8gZXh0ZW5kIHRoaXMgdG8gYSB3aWRl
ciBhdWRpZW5jZS4gSXQgaXMgbm90IGV4cGxhaW5pbmcNCj4gaG93IHRoaXMgY2FuIHdvcmsgd2l0
aCBhIG1haW5saW5lIGtlcm5lbCB3aXRoIHY0bDIgc3RhdGVmdWwgb3Igc3RhdGVsZXNzIGRyaXZl
cnMNCj4gYW5kIGdlbmVyaWMgR1N0cmVhbWVyL0ZGTVBFRy9DaHJvbWl1bSBzdXBwb3J0Lg0KPiAN
Cj4gSSdtIHJhaXNpbmcgdGhpcywgc2luY2UgSSdtIHdvcnJpZWQgdGhhdCBubyBvbmUgY2FyZXMg
b2Ygc29sdmluZyB0aGF0IGhpZ2ggbGV2ZWwNCj4gcHJvYmxlbSBmcm9tIGEgZ2VuZXJpYyBwb2lu
dCBvZiB2aWV3LiBJbiB0aGF0IGNvbnRleHQsIGFueSBhZGRpdGlvbnMgdG8gdGhlDQo+IG1haW5s
aW5lIExpbnV4IGtlcm5lbCBjYW4gb25seSBiZSBmbGF3ZWQgYW5kIHdpbGwgb25seSBzZXJ2ZXMg
c3BlY2lmaWMgdmVuZG9ycw0KPiBhbmQgbm90IHRoZSBsYXJnZXIgYXVkaWVuY2UuDQo+IA0KPiBB
bm90aGVyIGFzcGVjdCwgaXMgdGhhdCB0aGlzIGRlc2lnbiBtaWdodCBiZSBib3VuZCB0byBhIHNw
ZWNpZmljIChOWFAgPykNCj4gc2VjdXJpdHkgZGVzaWduLiBJJ3ZlIGxlYXJuIHJlY2VudGx5IHRo
YXQgbmV3ZXIgSFcgaXMgZ29pbmcgdG8gdXNlIG11bHRpcGxlDQo+IGxldmVsIG9mIE1NVSAobGlr
ZSB2aXJ0dWFsIG1hY2hpbmVzIGRvKSB0byBwcm90ZWN0IHRoZSBtZW1vcnkgcmF0aGVyIHRoZW4N
Cj4gbWFya2luZyBwYWdlcy4gV2lsbCBhbGwgdGhpcyB3b3JrIGZvciB0aGF0IHRvbyA/DQo+IA0K
SSBoYXZlIG5vdCBsb29rZWQgaW4gYW55IG9mIHRoaXMgZm9yIHF1aXRlIGEgd2hpbGUsIGJ1dCBJ
SVJDIHRoZSBwbGFuDQp3YXMgc29tZXRoaW5nIGxpa2UgdGhhdDoNCg0KVGhlIE5YUCBSREMgaGFy
ZHdhcmUgaXMgYWJsZSB0byBzZWdtZW50IHRoZSBERFIgbWVtb3J5IGludG8gc2VjdGlvbnMNCmFu
ZCBkZWZpbmUgYWNjZXNzIHBvbGljaWVzIGZvciBhbGwgbWFzdGVycyBpbiB0aGUgc3lzdGVtLiBT
byBmb3INCmV4YW1wbGUgZm9yIHRoZSBzZWN1cmUgVlBVIHRvIGRpc3BsYXkgY29udHJvbGxlciBw
YXRoIHlvdSB3b3VsZCBkZWZpbmUNCnN1Y2ggYSBzZWN0aW9uLCB3aGVyZSBvbmx5IHRoZSBWUFUg
aXMgYWJsZSB0byB3cml0ZSBhbmQgRENTUyBpcyBhYmxlIHRvDQpyZWFkIGZyb20uIENQVSBvciBv
dGhlciBtYXN0ZXJzIGFyZSBub3QgYWxsb3dlZCB0byB1c2UgdGhpcyBzZWN0aW9uLg0KVGhpcyB0
aGVuIGdldHMgZXhwb3NlZCB0byBMaW51eCBhcyBhIERNQSBoZWFwLiBUaGUgVlBVIGRyaXZlciBj
b3VsZA0KdGhlbiBhbGxvY2F0ZSBjYXB0dXJlIGJ1ZmZlcnMgZnJvbSB0aGlzIGhlYXAgYW5kIHNo
YXJlIHRoZW0gdmlhIGRtYS1idWYNCnRvIHRoZSBEQ1NTIGRyaXZlci4NCkJvdGggZHJpdmVycyBj
YW4gbGl2ZSBpbiBub24tdHJ1c3RlZCB1c2Vyc3BhY2UgYW5kIGV2ZW4gdGhlIGFkZHJlc3MNCmFs
bG9jYXRpb24gZm9yIHRoZSBETUEgaGVhcCBjYW4gYmUgZG9uZSBmcm9tIExpbnV4LiBOb24tdHJ1
c3RlZCBMaW51eA0Ka2VybmVsL3VzZXJzcGFjZSBqdXN0IGhhcyBubyB3YXkgdG8gYWNjZXNzIHRo
ZSBidWZmZXJzIGRpcmVjdGx5Lg0KDQpUaGUgbW9yZSBpbnRlcmVzdGluZyBxdWVzdGlvbiBpcyBv
biB0aGUgVlBVIHNpZGU6IGhvdyBkbyB5b3UgbWFrZSBzdXJlDQp0aGF0IHRoZSBjYXB0dXJlIGJ1
ZmZlciBpcyBsb2NhdGVkIGluIHNlY3VyZSBtZW1vcnkgd2hlbiB0aGUgb3V0cHV0DQpidWZmZXIg
Y29udGFpbmluZyB0aGUgc2VjcmV0IGJpdHN0cmVhbSBpcyBhbHNvIGluIGEgc2VjdXJlIGhlYXA/
IEkNCmd1ZXNzIHlvdSBuZWVkIHNvbWUga2luZCBvZiBURUUgYXBwbGljYXRpb24gdG8gdmFsaWRh
dGUgdGhvc2Ugc2V0dGluZ3MsDQp3aGljaCBtZWFucyB5b3UgY2FuJ3QgZ2l2ZSB0aGUgbm9uLXRy
dXN0ZWQgZHJpdmVyIGRpcmVjdCBNTUlPIGFjY2VzcyB0bw0KdGhlIFZQVS4NCg0KUmVnYXJkcywN
Ckx1Y2FzDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
