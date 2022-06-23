Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D35F5574D4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 10:05:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8B4B3F30E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 08:05:02 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
	by lists.linaro.org (Postfix) with ESMTPS id E71073EF4B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 08:04:57 +0000 (UTC)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1o4Hpc-00035t-7h; Thu, 23 Jun 2022 10:04:52 +0200
Message-ID: <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Pekka
	Paalanen <ppaalanen@gmail.com>
Date: Thu, 23 Jun 2022 10:04:49 +0200
In-Reply-To: <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
	 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
	 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
	 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
	 <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
	 <20220623101326.18beeab3@eldfell>
	 <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
Message-ID-Hash: VQSFZYRRPKYPTT7Q6YGMOQCQQ2ZNOLRA
X-Message-ID-Hash: VQSFZYRRPKYPTT7Q6YGMOQCQQ2ZNOLRA
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VQSFZYRRPKYPTT7Q6YGMOQCQQ2ZNOLRA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gRG9ubmVyc3RhZywgZGVtIDIzLjA2LjIwMjIgdW0gMDk6MjYgKzAyMDAgc2NocmllYiBDaHJp
c3RpYW4gS8O2bmlnOg0KPiBBbSAyMy4wNi4yMiB1bSAwOToxMyBzY2hyaWViIFBla2thIFBhYWxh
bmVuOg0KPiA+IE9uIFRodSwgMjMgSnVuIDIwMjIgMDg6NTk6NDEgKzAyMDANCj4gPiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+IA0KPiA+ID4g
VGhlIGV4cG9ydGVyIGlzbid0IGRvaW5nIGFueXRoaW5nIHdyb25nIGhlcmUuIERNQS1idWYgYXJl
IHN1cHBvc2VkIHRvIGJlDQo+ID4gPiBDUFUgY2FjaGVkIGFuZCBjYW4gYWxzbyBiZSBjYWNoZSBo
b3QuDQo+ID4gSGksDQo+ID4gDQo+ID4gd2hhdCBpcyB0aGF0IHN0YXRlbWVudCBiYXNlZCBvbj8N
Cj4gDQo+IE9uIHRoZSBkZXNpZ24gZG9jdW1lbnRhdGlvbiBvZiBETUEtYnVmIGFuZCB0aGUgYWN0
dWFsIGRyaXZlciANCj4gaW1wbGVtZW50YXRpb25zLg0KPiANCj4gQ29oZXJlbmN5IGFuZCBzbm9v
cGluZyBvZiB0aGUgQ1BVIGNhY2hlIGlzIG1hbmRhdG9yeSBmb3IgZGV2aWNlcyBhbmQgDQo+IHJv
b3QgY29tcGxleGVzIGluIHRoZSBQQ0kgc3BlY2lmaWNhdGlvbi4gSW5jb2hlcmVudCBhY2Nlc3Mg
aXMganVzdCBhbiANCj4gZXh0ZW5zaW9uLg0KPiANCj4gV2UgaW5oZXJpdGVkIHRoYXQgYnkgYmFz
aW5nIERNQS1idWYgb24gdGhlIExpbnV4IGtlcm5lbCBETUEtQVBJIHdoaWNoIGluIA0KPiB0dXJu
IGlzIGxhcmdlbHkgYmFzZWQgb24gdGhlIFBDSSBzcGVjaWZpY2F0aW9uLg0KPiANCj4gPiBXZXJl
IHRoZSAobWFuZGF0b3J5IGZvciBDUFUgYWNjZXNzKSBjcHVfYWNjZXNzX2JlZ2luL2VuZCBmdW5j
dGlvbnMgJg0KPiA+IGlvY3RscyBub3Qgc3VwcG9zZWQgdG8gZW5zdXJlIHRoYXQgQ1BVIGNhY2hl
IGlzIHVwLXRvLWRhdGUgLyBDUFUgY2FjaGUNCj4gPiBpcyBmdWxseSBmbHVzaGVkIG91dD8NCj4g
DQo+IE5vLCB0aG9zZSBmdW5jdGlvbnMgYXJlIHRvIGluZm9ybSB0aGUgZXhwb3J0ZXIgdGhhdCB0
aGUgaW1wb3J0ZXIgaGFzIA0KPiBzdGFydGVkIGFuZCBmaW5pc2hlZCBhY2Nlc3NpbmcgdGhlIGJ1
ZmZlciB1c2luZyB0aGUgQ1BVLg0KPiANCj4gVGhlcmUgaXMgbm8gc2lnbmFsaW5nIGluIHRoZSBv
dGhlciBkaXJlY3Rpb24uIEluIG90aGVyIHdvcmRzIHRoZSANCj4gZXhwb3J0ZXIgZG9lc24ndCBp
bmZvcm0gdGhlIGltcG9ydGVyIGFib3V0IENQVSBhY2Nlc3NlcyBiZWNhdXNlIGl0IGlzIA0KPiB0
aGUgb3duZXIgb2YgdGhlIGJ1ZmZlci4NCj4gDQo+IEl0J3MgdGhlIHJlc3BvbnNpYmlsaXR5IG9m
IHRoZSBpbXBvcnRlciB0byBtYWtlIHN1cmUgdGhhdCBpdCBjYW4gDQo+IGFjdHVhbGx5IGFjY2Vz
cyB0aGUgZGF0YSBpbiB0aGUgYnVmZmVyLiBJZiBpdCBjYW4ndCBndWFyYW50ZWUgdGhhdCB0aGUg
DQo+IGltcG9ydGVyIHNob3VsZG4ndCBpbXBvcnQgdGhlIGJ1ZmZlciBpbiB0aGUgZmlyc3QgcGxh
Y2UuDQoNClRoaXMgaXMgbm90IHJlYWxseSBjb3JyZWN0LiBETUEtYnVmIGluaGVyaXRlZCB0aGUg
dGhlIG1hcC91bm1hcCBwYXJ0DQpmcm9tIHRoZSBETUEgQVBJLCB3aGljaCBvbiBjYWNoZSBjb2hl
cmVudCBhcmNoaXRlY3R1cmUgaXMgbW9zdGx5IGEgbm8tDQpvcCBvciB0aWVzIGludG8gdGhlIElP
TU1VIGltcGxlbWVudGF0aW9uIHRvIHNldCB1cCB0aGUgcGFnZXRhYmxlcyBmb3INCnRoZSB0cmFu
c2xhdGlvbi4gT24gbm9uIGNhY2hlIGNvaGVyZW50IGFyY2hpdGVjdHVyZXMgdGhpcyBpcyB0aGUg
cG9pbnQNCndoZXJlIGFueSBhbnkgbmVjZXNzYXJ5IGNhY2hlIG1haW50ZW5hbmNlIGhhcHBlbnMu
IERSTSBicmVha3MgdGhpcw0KbW9kZWwgYnkgY2FjaGluZyB0aGUgRE1BLWJ1ZiBtYXBwaW5nIGZv
ciBwZXJmb3JtYW5jZSByZWFzb25zLg0KDQpJbiB0aGUgRE1BIEFQSSBrZWVwaW5nIHRoaW5ncyBt
YXBwZWQgaXMgYWxzbyBhIHZhbGlkIHVzZS1jYXNlLCBidXQgdGhlbg0KeW91IG5lZWQgdG8gZG8g
ZXhwbGljaXQgZG9tYWluIHRyYW5zZmVycyB2aWEgdGhlIGRtYV9zeW5jXyogZmFtaWx5LA0Kd2hp
Y2ggRE1BLWJ1ZiBoYXMgbm90IGluaGVyaXRlZC4gQWdhaW4gdGhvc2Ugc3luYyBhcmUgbm8tb3Bz
IG9uIGNhY2hlDQpjb2hlcmVudCBhcmNoaXRlY3R1cmVzLCBidXQgZG8gYW55IG5lY2Vzc2FyeSBj
YWNoZSBtYWludGVuYW5jZSBvbiBub24NCmNvaGVyZW50IGFyY2hlcy4NCg0KUmVnYXJkcywNCkx1
Y2FzDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
