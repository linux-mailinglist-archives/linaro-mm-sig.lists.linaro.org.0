Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACCCC8AC90
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 17:00:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 382CE3F80D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 16:00:03 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	by lists.linaro.org (Postfix) with ESMTPS id B64CE3F806
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 15:59:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of l.stach@pengutronix.de designates 185.203.201.7 as permitted sender) smtp.mailfrom=l.stach@pengutronix.de;
	dmarc=none
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1vOHvh-0006xd-H3; Wed, 26 Nov 2025 16:59:41 +0100
Message-ID: <12a822ffedb4d1c4901c2bfd1c493034c8ed3f90.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: phasta@kernel.org, Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 faith@gfxstrand.net, sumit.semwal@linaro.org
Date: Wed, 26 Nov 2025 16:59:39 +0100
In-Reply-To: <ff4e03cf5281bf54d36c69b4ae0dd5a19723178d.camel@mailbox.org>
References: <20251120150018.27385-1-christian.koenig@amd.com>
	 <20251120150018.27385-2-christian.koenig@amd.com>
	 <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
	 <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
	 <1c1a14d42d0a4a25ebce26a2af0a61dc1b7813fc.camel@mailbox.org>
	 <508ff709-0f05-4982-8e15-5fea3bbd12e7@amd.com>
	 <c2b571a7e74f86c6cb95bebd11274447c3080df9.camel@mailbox.org>
	 <52d484c5-6dfb-4e2f-9caa-a61cf1d94801@amd.com>
	 <e2c006ca81081ee1afa00b1b52a035c28a267e0f.camel@pengutronix.de>
	 <207d50fe-eef3-4baa-97a7-567598e56b55@amd.com>
	 <54d6e863fc606d22f245e30012bb5120d5bee7ee.camel@mailbox.org>
	 <6151e7c5-1de2-4857-ae64-1e2fd6cb7513@amd.com>
	 <ff4e03cf5281bf54d36c69b4ae0dd5a19723178d.camel@mailbox.org>
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.09 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	R_SPF_ALLOW(-0.20)[+mx];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,amd.com,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_SEVEN(0.00)[8];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.971];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B64CE3F806
X-Spamd-Bar: ---
Message-ID-Hash: 4BHM2WUEOSCTR5DTBY5VMNRBMCL2IC2V
X-Message-ID-Hash: 4BHM2WUEOSCTR5DTBY5VMNRBMCL2IC2V
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4BHM2WUEOSCTR5DTBY5VMNRBMCL2IC2V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gTWl0dHdvY2gsIGRlbSAyNi4xMS4yMDI1IHVtIDE2OjQ0ICswMTAwIHNjaHJpZWIgUGhpbGlw
cCBTdGFubmVyOg0KPiBPbiBXZWQsIDIwMjUtMTEtMjYgYXQgMTY6MDMgKzAxMDAsIENocmlzdGlh
biBLw7ZuaWcgd3JvdGU6DQo+ID4gDQo+ID4gDQo+ID4gT24gMTEvMjYvMjUgMTM6MzcsIFBoaWxp
cHAgU3Rhbm5lciB3cm90ZToNCj4gPiA+IE9uIFdlZCwgMjAyNS0xMS0yNiBhdCAxMzozMSArMDEw
MCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPiA+ID4gDQo+IA0KPiBb4oCmXQ0KPiANCj4g
PiA+ID4gV2VsbCB0aGUgcXVlc3Rpb24gaXMgaG93IGRvIHlvdSBkZXRlY3QgKnJlbGlhYmxlKiB0
aGF0IHRoZXJlIGlzDQo+ID4gPiA+IHN0aWxsIGZvcndhcmQgcHJvZ3Jlc3M/DQo+ID4gPiANCj4g
PiA+IE15IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCB0aGF0J3MgaW1wb3NzaWJsZSBzaW5jZSB0aGUg
aW50ZXJuYWxzIG9mDQo+ID4gPiBjb21tYW5kIHN1Ym1pc3Npb25zIGFyZSBvbmx5IHJlYWxseSB1
bmRlcnN0b29kIGJ5IHVzZXJzcGFjZSwgd2hvDQo+ID4gPiBzdWJtaXRzIHRoZW0uDQo+ID4gDQo+
ID4gUmlnaHQsIGJ1dCB3ZSBjYW4gc3RpbGwgdHJ5IHRvIGRvIG91ciBiZXN0IGluIHRoZSBrZXJu
ZWwgdG8gbWl0aWdhdGUNCj4gPiB0aGUgc2l0dWF0aW9uLg0KPiA+IA0KPiA+IEkgdGhpbmsgZm9y
IG5vdyBhbWRncHUgd2lsbCBpbXBsZW1lbnQgc29tZXRoaW5nIGxpa2UgY2hlY2tpbmcgaWYgdGhl
DQo+ID4gSFcgc3RpbGwgbWFrZXMgcHJvZ3Jlc3MgYWZ0ZXIgYSB0aW1lb3V0IGJ1dCBvbmx5IGEg
bGltaXRlZCBudW1iZXIgb2YNCj4gPiByZS10cmllcyB1bnRpbCB3ZSBzYXkgdGhhdCdzIGl0IGFu
ZCByZXNldCBhbnl3YXkuDQo+IA0KPiBPaCBvaCwgaXNuJ3QgdGhhdCBvdXIgZGVhciBoYW5nX2xp
bWl0PyA6KQ0KDQpOb3QgcmVhbGx5LiBUaGUgaGFuZyBsaW1pdCBpcyB0aGUgbGltaXQgb24gaG93
IG1hbnkgdGltZXMgYSBoYW5naW5nDQpzdWJtaXQgbWlnaHQgYmUgcmV0cmllZC4NCg0KTGltaXRp
bmcgdGhlIG51bWJlciBvZiB0aW1lb3V0IGV4dGVuc2lvbnMgaXMgbW9yZSBvZiBhIHNhZmV0eSBu
ZXQNCmFnYWluc3QgYSB3b3JrbG9hZHMgd2hpY2ggbWlnaHQgYXBwZWFyIHRvIG1ha2UgcHJvZ3Jl
c3MgdG8gdGhlIGtlcm5lbA0KZHJpdmVyIGJ1dCBpbiByZWFsaXR5IGFyZSBzdHVjay4gQWZ0ZXIg
YWxsLCB0aGUga2VybmVsIGRyaXZlciBjYW4gb25seQ0KaGF2ZSBsaW1pdGVkIGtub3dsZWRnZSBv
ZiB0aGUgR1BVIHN0YXRlIGFuZCBhbnkgcHJvZ3Jlc3MgY2hlY2sgd2lsbA0KaGF2ZSBsaW1pdGVk
IHByZWNpc2lvbiB3aXRoIGZhbHNlIHBvc2l0aXZlcy9uZWdhdGl2ZXMgYmVpbmcgYSBwYXJ0IG9m
DQpyZWFsaXR5IHdlIGhhdmUgdG8gZGVhbCB3aXRoLg0KDQo+IA0KPiBXZSBhZ3JlZSB0aGF0IHlv
dSBjYW4gbmV2ZXIgcmVhbGx5IG5vdyB3aGV0aGVyIHVzZXJzcGFjZSBqdXN0IHN1Ym1pdHRlZA0K
PiBhIHdoaWxlKHRydWUpIGpvYiwgZG9uJ3Qgd2U/IEV2ZW4gaWYgc29tZSBHUFUgcmVnaXN0ZXIg
c3RpbGwgaW5kaWNhdGVzDQo+ICJwcm9ncmVzcyIuDQoNClllYSwgdGhpcyBpcyByZWFsbHkgaGFy
ZHdhcmUgZGVwZW5kZW50IG9uIHdoYXQgeW91IGNhbiByZWFkIGF0DQpydW50aW1lLsKgDQoNCkZv
ciBldG5hdml2IHdlIGRlZmluZSAicHJvZ3Jlc3MiIGFzIHRoZSBjb21tYW5kIGZyb250ZW5kIG1v
dmluZyB0b3dhcmRzDQp0aGUgZW5kIG9mIHRoZSBjb21tYW5kIGJ1ZmZlci4gQXMgYSBzaW5nbGUg
ZHJhdyBjYWxsIGluIHZhbGlkIHdvcmtsb2Fkcw0KY2FuIGJsb3cgdGhyb3VnaCBvdXIgdGltZW91
dCB3ZSBhbHNvIHVzZSBkZWJ1ZyByZWdpc3RlcnMgdG8gbG9vayBhdCB0aGUNCmN1cnJlbnQgcHJp
bWl0aXZlIElEIHdpdGhpbiBhIGRyYXcgY2FsbC4NCklmIHVzZXJzcGFjZSBzdWJtaXRzIGEgd29y
a2xvYWQgdGhhdCByZXF1aXJlcyBtb3JlIHRoYW4gNTAwbXMgcGVyDQpwcmltaXRpdmUgdG8gZmlu
aXNoIHdlIGNvbnNpZGVyIHRoaXMgYW4gaW52YWxpZCB3b3JrbG9hZCBhbmQgZ28gdGhyb3VnaA0K
dGhlIHJlc2V0L3JlY292ZXJ5IG1vdGlvbnMuDQoNClJlZ2FyZHMsDQpMdWNhcw0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
