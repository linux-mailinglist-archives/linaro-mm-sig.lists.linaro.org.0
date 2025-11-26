Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD96C8ADC3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 17:11:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C22313F839
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 16:11:24 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	by lists.linaro.org (Postfix) with ESMTPS id 97EDD3F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 16:11:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of l.stach@pengutronix.de designates 185.203.201.7 as permitted sender) smtp.mailfrom=l.stach@pengutronix.de;
	dmarc=none
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1vOI6g-0008FX-TN; Wed, 26 Nov 2025 17:11:02 +0100
Message-ID: <5267e8fbb93a8fe722f845331d17c61e29f1a705.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: phasta@kernel.org, Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 faith@gfxstrand.net, sumit.semwal@linaro.org
Date: Wed, 26 Nov 2025 17:11:01 +0100
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
X-Spamd-Result: default: False [-2.73 / 15.00];
	BAYES_HAM(-2.63)[98.34%];
	R_SPF_ALLOW(-0.20)[+mx];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,amd.com,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:209379, ipnet:185.203.200.0/22, country:DE];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_SEVEN(0.00)[8];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.971];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	URIBL_BLOCKED(0.00)[pengutronix.de:from_smtp,pengutronix.de:mid,pengutronix.de:from_mime,metis.whiteo.stw.pengutronix.de:rdns,metis.whiteo.stw.pengutronix.de:helo];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 97EDD3F69B
X-Spamd-Bar: --
Message-ID-Hash: NNNCLGTZYVVXO2P225NUK67U2VWKT4I4
X-Message-ID-Hash: NNNCLGTZYVVXO2P225NUK67U2VWKT4I4
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NNNCLGTZYVVXO2P225NUK67U2VWKT4I4/>
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
biBLw7ZuaWcgd3JvdGU6DQo+IA0KPiA+ID4gDQpbLi4uXQ0KPiA+ID4gTXkgaG9wZSB3b3VsZCBi
ZSB0aGF0IGluIHRoZSBtaWQtdGVybSBmdXR1cmUgd2UnZCBnZXQgZmlybXdhcmUNCj4gPiA+IHJp
bmdzDQo+ID4gPiB0aGF0IGNhbiBiZSBwcmVlbXB0ZWQgdGhyb3VnaCBhIGZpcm13YXJlIGNhbGwg
Zm9yIGFsbCBtYWpvcg0KPiA+ID4gaGFyZHdhcmUuDQo+ID4gPiBUaGVuIGEgaHVnZSBzaGFyZSBv
ZiBvdXIgcHJvYmxlbXMgd291bGQgZGlzYXBwZWFyLg0KPiA+IA0KPiA+IEF0IGxlYXN0IG9uIEFN
RCBIVyBwcmUtZW1wdGlvbiBpcyBhY3R1YWxseSBob3JyaWJsZSB1bnJlbGlhYmxlIGFzDQo+ID4g
d2VsbC4NCj4gDQo+IERvIHlvdSBtZWFuIG5ldyBHUFVzIHdpdGggZmlybXdhcmUgc2NoZWR1bGlu
Zywgb3Igd2hhdCBpcyAiSFcgcHJlLQ0KPiBlbXB0aW9uIj8NCj4gDQo+IFdpdGggZmlybXdhcmUg
aW50ZXJmYWNlcywgbXkgaG9wZSB3b3VsZCBiZSB0aGF0IHlvdSBjb3VsZCBzaW1wbHkgdGVsbA0K
PiANCj4gc3RvcF9ydW5uaW5nX3JpbmcobnJfb2ZfcmluZykNCj4gLy8gdGltZSBzbGljZSBmb3Ig
c29tZW9uZSBlbHNlDQo+IHN0YXJ0X3J1bm5pbmdfcmluZyhucl9vZl9yaW5nKQ0KPiANCj4gVGhl
cmVieSBnZXR0aW5nIHJlYWwgc2NoZWR1bGluZyBhbmQgYWxsIHRoYXQuIEFuZCBlbGltaW5hdGlu
ZyBtYW55DQo+IG90aGVyIHByb2JsZW1zIHdlIGtub3cgd2VsbCBmcm9tIGRybS9zY2hlZC4NCg0K
SXQgZG9lc24ndCByZWFsbHkgbWF0dGVyIGlmIHlvdSBoYXZlIGZpcm13YXJlIHNjaGVkdWxpbmcg
b3Igbm90IGZvcg0KcHJlZW1wdGlvbiB0byBiZSBhIGhhcmQgcHJvYmxlbSBvbiBHUFVzLiBDUFVz
IGhhdmUgbGltaXRlZCBzb2Z0d2FyZQ0KdmlzaWJsZSBzdGF0ZSB0aGF0IG5lZWRzIHRvIGJlIHNh
dmVkL3Jlc3RvcmVkIG9uIGEgY29udGV4dCBzd2l0Y2ggYW5kDQpldmVuIHRoZXJlIHBlb3BsZSBz
dGFydCBjb21wbGFpbmluZyBub3cgdGhhdCB0aGV5IG5lZWQgdG8gY29udGV4dA0Kc3dpdGNoIHRo
ZSBBVlg1MTIgcmVnaXN0ZXIgc2V0Lg0KDQpHUFVzIGhhdmUgbWVnYWJ5dGVzIG9mIHNvZnR3YXJl
IHZpc2libGUgc3RhdGUuIFdoaWNoIG5lZWRzIHRvIGJlDQpzYXZlZC9yZXN0b3JlZCBvbiB0aGUg
Y29udGV4dCBzd2l0Y2ggaWYgeW91IHdhbnQgZmluZSBncmFpbmVkDQpwcmVlbXB0aW9uIHdpdGgg
bG93IHByZWVtcHRpb24gbGF0ZW5jeS4gVGhlcmUgbWlnaHQgYmUgcG9pbnRzIGluIHRoZQ0KY29t
bWFuZCBleGVjdXRpb24gd2hlcmUgeW91IGNhbiBpZ25vcmUgbW9zdCBvZiB0aGF0IHN0YXRlLCBi
dXQgcmVhY2hpbmcNCnRob3NlIHBvaW50cyBjYW4gaGF2ZSBiYXNpY2FsbHkgdW5ib3VuZGVkIGxh
dGVuY3kuIFNvIGVpdGhlciB5b3UgY2FuDQpyZWxpYWJseSBzYXZlL3Jlc3RvcmUgbG90cyBvZiBz
dGF0ZSBvciB5b3UgYXJlIGxpbWl0ZWQgdG8gdmVyeSBjb2Fyc2UNCmdyYWluZWQgcHJlZW1wdGlv
biB3aXRoIGFsbCB0aGUgdXN1YWwgaXNzdWVzIG9mIHRpbWVvdXRzIGFuZCBEb1MNCnZlY3RvcnMu
DQpJJ20gbm90IHRvdGFsbHkgdXAgdG8gc3BlZWQgd2l0aCB0aGUgY3VycmVudCBzdGF0ZSBhY3Jv
c3MgYWxsIHJlbGV2YW50DQpHUFVzLCBidXQgdW50aWwgcmVjZW50bHkgTlZpZGlhIHdhcyB0aGUg
b25seSB2ZW5kb3IgdG8gaGF2ZSByZWFsDQpyZWxpYWJsZSBmaW5lLWdyYWluZWQgcHJlZW1wdGlv
bi4NCg0KUmVnYXJkcywNCkx1Y2FzDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
