Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B3555BA43
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jun 2022 16:06:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DCF73F2D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jun 2022 14:06:44 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
	by lists.linaro.org (Postfix) with ESMTPS id 7DF393EE03
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jun 2022 14:06:40 +0000 (UTC)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1o5pNq-0003Bu-Ga; Mon, 27 Jun 2022 16:06:34 +0200
Message-ID: <e67392e43bfc037db6969297b65b0b6945df8b27.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Nicolas Dufresne <nicolas@ndufresne.ca>, Christian
	=?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>
Date: Mon, 27 Jun 2022 16:06:31 +0200
In-Reply-To: <0abe475a7b4b04758c03a9d19b228e86d95ac1dd.camel@ndufresne.ca>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
	 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
	 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
	 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
	 <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
	 <20220623101326.18beeab3@eldfell>
	 <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com>
	 <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
	 <adc626ec-ff5a-5c06-44ce-09111be450cd@amd.com>
	 <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
	 <e691bccc-171d-f674-2817-13a945970f4a@amd.com>
	 <95cca943bbfda6af07339fb8d2dc7f4da3aa0280.camel@pengutronix.de>
	 <0abe475a7b4b04758c03a9d19b228e86d95ac1dd.camel@ndufresne.ca>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
Message-ID-Hash: QJFRGMK73LD7YCKU5OCPQ6337TTQKHPC
X-Message-ID-Hash: QJFRGMK73LD7YCKU5OCPQ6337TTQKHPC
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QJFRGMK73LD7YCKU5OCPQ6337TTQKHPC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gTW9udGFnLCBkZW0gMjcuMDYuMjAyMiB1bSAwOTo1NCAtMDQwMCBzY2hyaWViIE5pY29sYXMg
RHVmcmVzbmU6DQo+IExlIGpldWRpIDIzIGp1aW4gMjAyMiDDoCAxMTozMyArMDIwMCwgTHVjYXMg
U3RhY2ggYSDDqWNyaXTCoDoNCj4gPiA+IA0KPiA+ID4gU2VlIGZvciBleGFtcGxlIG9uIEFNRC9J
bnRlbCBoYXJkd2FyZSBtb3N0IG9mIHRoZSBlbmdpbmVzIGNhbiBwZXJmZWN0bHkgDQo+ID4gPiBk
ZWFsIHdpdGggY2FjaGUgY29oZXJlbnQgbWVtb3J5IGFjY2Vzc2VzLiBPbmx5IHRoZSBkaXNwbGF5
IGVuZ2luZXMgY2FuJ3QuDQo+ID4gPiANCj4gPiA+IFNvIG9uIGltcG9ydCB0aW1lIHdlIGNhbid0
IGV2ZW4gc2F5IGlmIHRoZSBhY2Nlc3MgY2FuIGJlIGNvaGVyZW50IGFuZCANCj4gPiA+IHNub29w
IHRoZSBDUFUgY2FjaGUgb3Igbm90IGJlY2F1c2Ugd2UgZG9uJ3Qga25vdyBob3cgdGhlIGltcG9y
dGVkIA0KPiA+ID4gRE1BLWJ1ZiB3aWxsIGJlIHVzZWQgbGF0ZXIgb24uDQo+ID4gPiANCj4gPiBT
byBmb3IgdGhvc2UgbWl4ZWQgdXNlIGNhc2VzLCB3b3VsZG4ndCBpdCBoZWxwIHRvIGhhdmUgc29t
ZXRoaW5nDQo+ID4gc2ltaWxhciB0byB0aGUgZG1hX3N5bmMgaW4gdGhlIERNQS1idWYgQVBJLCBz
byB5b3VyIHNjYW5vdXQgdXNhZ2UgY2FuDQo+ID4gdGVsbCB0aGUgZXhwb3J0ZXIgdGhhdCBpdCdz
IGdvaW5nIHRvIGRvIG5vbi1zbm9vcCBhY2Nlc3MgYW5kIGFueSBkaXJ0eQ0KPiA+IGNhY2hlIGxp
bmVzIG11c3QgYmUgY2xlYW5lZD8gU2lnbmFsaW5nIHRoaXMgdG8gdGhlIGV4cG9ydGVyIHdvdWxk
IGFsbG93DQo+ID4gdG8gc2tpcCB0aGUgY2FjaGUgbWFpbnRlbmFuY2UgaWYgdGhlIGJ1ZmZlciBp
cyBpbiBDUFUgdW5jYWNoZWQgbWVtb3J5LA0KPiA+IHdoaWNoIGFnYWluIGlzIGEgZGVmYXVsdCBj
YXNlIGZvciB0aGUgQVJNIFNvQyB3b3JsZC4NCj4gDQo+IFRlbGxpbmcgdGhlIGV4cG9ydGVyIGZv
ciBldmVyeSBzY2FuIGlzIHVubmVlZGVkIG92ZXJoZWFkLiBJZiB0aGF0IGluZm9ybWF0aW9uIGlz
DQo+IG1hZGUgYXZhaWxhYmxlICJwcm9wZXJseSIsIHRoZW4gdHJhY2tpbmcgaXQgaW4gYXR0YWNo
L2RldGFjaCBpcyBzdWZmaWNpZW50IGFuZA0KPiBsaWdodHdlaWdodC4NCg0KVGhhdCBpc24ndCBz
dWZmaWNpZW50LiBUaGUgQU1EIEdQVSBpcyBhIHNpbmdsZSBkZXZpY2UsIGJ1dCBpbnRlcm5hbGx5
DQpoYXMgZGlmZmVyZW50IGVuZ2luZXMgdGhhdCBoYXZlIGRpZmZlcmVudCBjYXBhYmlsaXRpZXMg
d2l0aCByZWdhcmQgdG8NCnNub29waW5nIHRoZSBjYWNoZXMuIFNvIHlvdSB3aWxsIGxpa2VseSBl
bmQgdXAgd2l0aCBuZWVkaW5nIHRoZSBjYWNoZQ0KY2xlYW4gaWYgdGhlIFY0TDIgYnVmZmVyIGlz
IGdvaW5nIGRpcmVjdGx5IHRvIHNjYW5vdXQsIHdoaWNoIGRvZXNuJ3QNCnNub29wLCBidXQgaWYg
dGhlIHVzYWdlIGNoYW5nZXMgdG8gc2FtcGxpbmcgeW91IGRvbid0IG5lZWQgYW55IGNhY2hlDQpm
bHVzaGVzLg0KDQpBbHNvIEkgZG9uJ3Qgc2VlIGEgYmlnIG92ZXJoZWFkIHdoZW4gY29tcGFyaW5n
IGEga2VybmVsIGludGVybmFsIGNhbGwNCnRoYXQgdGVsbHMgdGhlIGV4cG9ydGVyIHRoYXQgdGhl
IGltcG9ydGVyIGlzIGdvaW5nIHRvIGFjY2VzcyB0aGUgYnVmZmVyDQp3aXRob3V0IHNub29waW5n
IGFuZCB0aHVzIG5lZWRzIHRoZSBjYWNoZSBjbGVhbiBvbmNlIGV2ZXJ5IGZyYW1lIGFuZA0KdGhl
IG5lZWQgdG8gYWx3YXlzIGNsZWFuIHRoZSBjYWNoZSBiZWZvcmUgRFFCVUYgd2hlbiBhIHBvdGVu
dGlhbGx5IG5vbi0NCnNub29waW5nIGltcG9ydGVyIGlzIGF0dGFjaGVkLg0KDQpSZWdhcmRzLA0K
THVjYXMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
