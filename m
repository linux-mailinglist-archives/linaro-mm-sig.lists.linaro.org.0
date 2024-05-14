Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DCF8C5C6A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 May 2024 22:42:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 247CD4410D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 May 2024 20:42:45 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 498923F2B8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 May 2024 20:42:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=g1jd9tkR;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5EED227C;
	Tue, 14 May 2024 22:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715719344;
	bh=sRKskYXnbDMTdnVd69iQ9BIfpmmR2Am8vZGZl3ZoXN0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g1jd9tkRfyqvU9Gw+I1xqhrRXrWM9ZBrC46Dz6Ad+zlccA7faY92a3N1c+MiojGsx
	 ihWiDquADL23deZUdwviwXFnED5gB2LnHveH6LMaA1cL33+5NfvUSyADiAOPlPsDUj
	 IeN0svCby4JyUUJDVWu+UsDm/LUR6nya/A2YUBr8=
Date: Tue, 14 May 2024 23:42:23 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Message-ID: <20240514204223.GN32013@pendragon.ideasonboard.com>
References: <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com>
 <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
 <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
 <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
 <20240507183613.GB20390@pendragon.ideasonboard.com>
 <4f59a9d78662831123cc7e560218fa422e1c5eca.camel@collabora.com>
 <Zjs5eM-rRoh6WYYu@phenom.ffwll.local>
 <20240513-heretic-didactic-newt-1d6daf@penduick>
 <20240513083417.GA18630@pendragon.ideasonboard.com>
 <c4db22ad94696ed22282bf8dad15088d94ade5d6.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4db22ad94696ed22282bf8dad15088d94ade5d6.camel@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 498923F2B8
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	FREEMAIL_CC(0.00)[redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ideasonboard.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 5I6MESMNUY5NGX5BODBEQ7TXFZQK3SNO
X-Message-ID-Hash: 5I6MESMNUY5NGX5BODBEQ7TXFZQK3SNO
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@redhat.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5I6MESMNUY5NGX5BODBEQ7TXFZQK3SNO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMTMsIDIwMjQgYXQgMTE6MTA6MDBBTSAtMDQwMCwgTmljb2xhcyBEdWZyZXNu
ZSB3cm90ZToNCj4gTGUgbHVuZGkgMTMgbWFpIDIwMjQgw6AgMTE6MzQgKzAzMDAsIExhdXJlbnQg
UGluY2hhcnQgYSDDqWNyaXTCoDoNCj4gPiBPbiBNb24sIE1heSAxMywgMjAyNCBhdCAxMDoyOToy
MkFNICswMjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOg0KPiA+ID4gT24gV2VkLCBNYXkgMDgsIDIw
MjQgYXQgMTA6MzY6MDhBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToNCj4gPiA+ID4gT24g
VHVlLCBNYXkgMDcsIDIwMjQgYXQgMDQ6MDc6MzlQTSAtMDQwMCwgTmljb2xhcyBEdWZyZXNuZSB3
cm90ZToNCj4gPiA+ID4gPiBIaSwNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBMZSBtYXJkaSAwNyBt
YWkgMjAyNCDDoCAyMTozNiArMDMwMCwgTGF1cmVudCBQaW5jaGFydCBhIMOpY3JpdMKgOg0KPiA+
ID4gPiA+ID4gU2hvcnRlciB0ZXJtLCB3ZSBoYXZlIGEgcHJvYmxlbSB0byBzb2x2ZSwgYW5kIHRo
ZSBiZXN0IG9wdGlvbiB3ZSBoYXZlDQo+ID4gPiA+ID4gPiBmb3VuZCBzbyBmYXIgaXMgdG8gcmVs
eSBvbiBkbWEtYnVmIGhlYXBzIGFzIGEgYmFja2VuZCBmb3IgdGhlIGZyYW1lDQo+ID4gPiA+ID4g
PiBidWZmZXIgYWxsb2NhdHJvIGhlbHBlciBpbiBsaWJjYW1lcmEgZm9yIHRoZSB1c2UgY2FzZSBk
ZXNjcmliZWQgYWJvdmUuDQo+ID4gPiA+ID4gPiBUaGlzIHdvbid0IHdvcmsgaW4gMTAwJSBvZiB0
aGUgY2FzZXMsIGNsZWFybHkuIEl0J3MgYSBzdG9wLWdhcCBtZWFzdXJlDQo+ID4gPiA+ID4gPiB1
bnRpbCB3ZSBjYW4gZG8gYmV0dGVyLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IENvbnNpZGVyaW5n
IHRoZSBzZWN1cml0eSBjb25jZXJuZWQgcmFpc2VkIG9uIHRoaXMgdGhyZWFkIHdpdGggZG1hYnVm
IGhlYXANCj4gPiA+ID4gPiBhbGxvY2F0aW9uIG5vdCBiZSByZXN0cmljdGVkIGJ5IHF1b3Rhcywg
eW91J2QgZ2V0IHdoYXQgeW91IHdhbnQgcXVpY2tseSB3aXRoDQo+ID4gPiA+ID4gbWVtZmQgKyB1
ZG1hYnVmIGluc3RlYWQgKHdoaWNoIGlzIGFjY291bnRlZCBhbHJlYWR5KS4NCj4gPiA+ID4gPiAN
Cj4gPiA+ID4gPiBJdCB3YXMgcmFpc2VkIHRoYXQgZGlzdHJvIGRvbid0IGVuYWJsZSB1ZG1hYnVm
LCBidXQgYXMgc3RhdGVkIHRoZXJlIGJ5IEhhbnMsIGluDQo+ID4gPiA+ID4gYW55IGNhc2VzIGRp
c3RybyBuZWVkcyB0byB0YWtlIGFjdGlvbiB0byBtYWtlIHRoZSBzb2Z0SVNQIHdvcmtzLiBUaGlz
DQo+ID4gPiA+ID4gYWx0ZXJuYXRpdmUgaXMgZWFzeSBhbmQgZG9lcyBub3QgaW50ZXJmZXJlIGlu
IGFueXdheSB3aXRoIHlvdXIgZnV0dXJlIHBsYW4gb3INCj4gPiA+ID4gPiB0aGUgbGliY2FtZXJh
IEFQSS4gWW91IGNvdWxkIGV2ZW4gaGF2ZSBib3RoIGRtYWJ1ZiBoZWFwIChmb3IgUmFzcGJpYW4p
IGFuZCB0aGUNCj4gPiA+ID4gPiBzYWZlciBtZW1mZCt1ZG1hYnVmIGZvciB0aGUgZGlzdHJvIHdp
dGggc2VjdXJpdHkgY29uY2VybnMuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gQW5kIGZvciB0aGUg
bG9uZyB0ZXJtIHBsYW4sIHdlIGNhbiBjZXJ0YWlubHkgZ2V0IGNsb3NlciBieSBmaXhpbmcgdGhh
dCBpc3N1ZQ0KPiA+ID4gPiA+IHdpdGggYWNjb3VudGluZy4gVGhpcyBpc3N1ZSBhbHNvIGFwcGxp
ZWQgdG8gdjRsMiBpby1vcHMsIHNvIGl0IHdvdWxkIGJlIG5pY2UgdG8NCj4gPiA+ID4gPiBmaW5k
IGNvbW1vbiBzZXQgb2YgaGVscGVycyB0byBmaXggdGhlc2UgZXhwb3J0ZXJzLg0KPiA+ID4gPiAN
Cj4gPiA+ID4gWWVhaCBpZiB0aGlzIGlzIGp1c3QgZm9yIHNvZnRpc3AsIHRoZW4gbWVtZmQgKyB1
ZG1hYnVmIGlzIGFsc28gd2hhdCBJIHdhcw0KPiA+ID4gPiBhYm91dCB0byBzdWdnZXN0LiBOb3Qg
anVzdCBhcyBhIHN0b3BnYXAsIGJ1dCBhcyB0aGUgcmVhbCBvZmZpY2lhbCB0aGluZy4NCj4gPiA+
ID4gDQo+ID4gPiA+IHVkbWFidWYgZG9lcyBraW5kYSBhbGxvdyB5b3UgdG8gcGluIG1lbW9yeSwg
YnV0IHdlIGNhbiBlYXNpbHkgZml4IHRoYXQgYnkNCj4gPiA+ID4gYWRkaW5nIHRoZSByaWdodCBh
Y2NvdW50aW5nIGFuZCB0aGVuIGVpdGhlciBsZXQgbWxvY2sgcmxpbWl0cyBvciBjZ3JvdXBzDQo+
ID4gPiA+IGtlcm5lbCBtZW1vcnkgbGltaXRzIGVuZm9yY2UgZ29vZCBiZWhhdmlvci4NCj4gPiA+
IA0KPiA+ID4gSSB0aGluayB0aGUgbWFpbiBkcmF3YmFjayB3aXRoIG1lbWZkIGlzIHRoYXQgaXQn
bGwgYmUgYnJva2VuIGZvciBkZXZpY2VzDQo+ID4gPiB3aXRob3V0IGFuIElPTU1VLCBhbmQgd2hp
bGUgeW91IHNhaWQgdGhhdCBpdCdzIHVuY29tbW9uIGZvciBHUFVzLCBpdCdzDQo+ID4gPiBkZWZp
bml0ZWx5IG5vdCBmb3IgY29kZWNzIGFuZCBkaXNwbGF5IGVuZ2luZXMuDQo+ID4gDQo+ID4gSWYg
dGhlIGFwcGxpY2F0aW9uIHdhbnRzIHRvIHNoYXJlIGJ1ZmZlcnMgYmV0d2VlbiB0aGUgY2FtZXJh
IGFuZCBhDQo+ID4gZGlzcGxheSBlbmdpbmUgb3IgY29kZWMsIGl0IHNob3VsZCBhcmd1YWJseSBu
b3QgdXNlIHRoZSBsaWJjYW1lcmENCj4gPiBGcmFtZUJ1ZmZlckFsbG9jYXRvciwgYnV0IGFsbG9j
YXRlIHRoZSBidWZmZXJzIGZyb20gdGhlIGRpc3BsYXkgb3IgdGhlDQo+ID4gZW5jb2Rlci4gbWVt
ZmQgd291bGRuJ3QgYmUgdXNlZCBpbiB0aGF0IGNhc2UuDQo+ID4gDQo+ID4gV2UgbmVlZCB0byBl
YXQgb3VyIG93biBkb2dmb29kIHRob3VnaC4gSWYgd2Ugd2FudCB0byBwdXNoIHRoZQ0KPiA+IHJl
c3BvbnNpYmlsaXR5IGZvciBidWZmZXIgYWxsb2NhdGlvbiBpbiB0aGUgYnVmZmVyIHNoYXJpbmcg
Y2FzZSB0byB0aGUNCj4gPiBhcHBsaWNhdGlvbiwgd2UgbmVlZCB0byBtb2RpZnkgdGhlIGNhbSBh
cHBsaWNhdGlvbiB0byBkbyBzbyB3aGVuIHVzaW5nDQo+ID4gdGhlIEtNUyBiYWNrZW5kLg0KPiAN
Cj4gQWdyZWVkLCBhbmQgdGhlIG5ldyBkbWFidWYgZmVlZGJhY2sgb24gd2F5bGFuZCBjYW4gYWxz
byBiZSB1c2VkIG9uIHRvcCBvZiB0aGlzLg0KPiANCj4gWW91J2xsIGhpdCB0aGUgc2FtZSBsaW1p
dGF0aW9uIGFzIHdlIGhpdCBpbiBHU3RyZWFtZXIsIHdoaWNoIGlzIHRoYXQgS01TIGRyaXZlcg0K
PiBvbmx5IG9mZmVyIGFsbG9jYXRpb24gZm9yIHJlbmRlciBidWZmZXJzIGFuZCBtb3N0IG9mIHRo
ZW0gYXJlIG1pc3NpbmcgYWxsb2NhdG9ycw0KPiBmb3IgWVVWIGJ1ZmZlcnMsIGV2ZW4gdGhvdWdo
IHRoZXkgY2FuIGltcG9ydCBpbiB0aGVzZSBmb3JtYXRzLiAoa21zIGFsbG9jYXRvcnMsDQo+IGV4
Y2VwdCBkdW1iLCB3aGljaCBoYXMgb3RoZXIgaXNzdWVzLCBhcmUgZm9ybWF0IGF3YXJlKS4NCg0K
TXkgZXhwZXJpZW5jZSBvbiBBcm0gcGxhdGZvcm1zIGlzIHRoYXQgdGhlIEtNUyBkcml2ZXJzIG9m
ZmVyIGFsbG9jYXRpb24NCmZvciBzY2Fub3V0IGJ1ZmZlcnMsIG5vdCByZW5kZXIgYnVmZmVycywg
YW5kIG1vc3RseSB1c2luZyB0aGUgZHVtYg0KYWxsb2NhdG9yIEFQSS4gSWYgdGhlIEtNUyBkZXZp
Y2UgY2FuIHNjYW4gb3V0IFlVViBuYXRpdmVseSwgWVVWIGJ1ZmZlcg0KYWxsb2NhdGlvbiBzaG91
bGQgYmUgc3VwcG9ydGVkLiBBbSBJIG1pc3Npbmcgc29tZXRoaW5nIGhlcmUgPw0KDQotLSANClJl
Z2FyZHMsDQoNCkxhdXJlbnQgUGluY2hhcnQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
