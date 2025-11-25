Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sO1II1gA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 41640410CAA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0370840A4E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:29:27 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id EAFDE3F7A5
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 16:03:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=KI3zLOWv;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=BaAIK6VN;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4dG6td0nK0z9sp0;
	Tue, 25 Nov 2025 17:03:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764086617; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SuWwgUjth81uOhn7rCZx8VvaOoeSO1XhSQIqEV3fd5Y=;
	b=KI3zLOWvJMl4nT+ITStoohjRWUAvDjEsLS3AhlVTkg8uADH5eqmSNZKO6f9gDnOkL1VIAz
	YsehdpHtEQZicVvZflMoKxpfR03Q7colEa5NmEmI25Lx+QPCqhL+aApLk2VPmg2zAZxNQB
	WNX1Co/cpMgY+k6XQdIo4Z6j0TjyQwnR0ne3iHn33b/XwU3piG4CyJw2lLCJYHRlJPt5nh
	lasXadTgEbR6g1/QJ5S68jDdn/PZyuLoeAYy7qV8COdTZ/jUcszHToCU70ULBWHxavxoIi
	SkKdz3Bbw9Rf7SNLWn+bOJDkiqwY5a5GLtVmulPvfHR3YA2YQ8bY7zJzrQAAQg==
Message-ID: <fe25a7fe229c0a150c54a80dd83ac83fc0daa3af.camel@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764086613; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SuWwgUjth81uOhn7rCZx8VvaOoeSO1XhSQIqEV3fd5Y=;
	b=BaAIK6VNean2TBqarCzND1ApOOx4AOsOH45FoozocDO7vKx08VtSvgz8gG1Ww1fPCiO001
	07ay3WAWRl57IPzYpgzAzJ2YnkmOE6tqj6GOoWZG7EgbBxm+PY6EWC/3t1aZfHPTx4hMVC
	JyWUuTzeZfH0o3oTUa0TdD18QoPwvrIGHaIOzYERjm3758rB5MMufwWwpkqWSND4cpfbLK
	qnuzP5CnoO3ii6FS0jcHq+oPVQzBsqMXG+Qrvu6smFdYDRodPm+2izA9jmlp1QUbmNItl3
	G4rSd2r6/WFo6NyECpLdypSANB7O/xA2/nnX4plIkgjQahnPSu85Hx6EVakqHg==
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
	faith@gfxstrand.net, sumit.semwal@linaro.org
Date: Tue, 25 Nov 2025 17:03:29 +0100
In-Reply-To: <52d484c5-6dfb-4e2f-9caa-a61cf1d94801@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
	 <20251120150018.27385-2-christian.koenig@amd.com>
	 <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
	 <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
	 <1c1a14d42d0a4a25ebce26a2af0a61dc1b7813fc.camel@mailbox.org>
	 <508ff709-0f05-4982-8e15-5fea3bbd12e7@amd.com>
	 <c2b571a7e74f86c6cb95bebd11274447c3080df9.camel@mailbox.org>
	 <52d484c5-6dfb-4e2f-9caa-a61cf1d94801@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: xobz763nh974ckm85ey379t35kmq378h
X-MBO-RS-ID: cc866405691828f7a82
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: T2A5X63HM66LU7D76XJPVJJAYWA332KL
X-Message-ID-Hash: T2A5X63HM66LU7D76XJPVJJAYWA332KL
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:57 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Michel =?ISO-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T2A5X63HM66LU7D76XJPVJJAYWA332KL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[3407];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	NEURAL_HAM(-0.00)[-0.988];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mailbox.org:mid,linaro.org:email]
X-Rspamd-Queue-Id: 41640410CAA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

K0NjIE1pY2hlbA0KDQpPbiBUdWUsIDIwMjUtMTEtMjUgYXQgMTU6MjYgKzAxMDAsIENocmlzdGlh
biBLw7ZuaWcgd3JvdGU6DQo+IE9uIDExLzI1LzI1IDExOjU2LCBQaGlsaXBwIFN0YW5uZXIgd3Jv
dGU6DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gVGhlIEdQVSBzY2hlZHVsZXIgaGFzIGEgdmVyeSBz
aW1pbGFyIGRlZmluZSwgTUFYX1dBSVRfU0NIRURfRU5USVRZX1FfRU1QVFkgd2hpY2ggaXMgY3Vy
cmVudGx5IGp1c3QgMSBzZWNvbmQuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gVGhlIHJlYWwgcXVl
c3Rpb24gaXMgd2hhdCBpcyB0aGUgbWF4aW11bSBhbW91bnQgb2YgdGltZSB3ZSBjYW4gd2FpdCBm
b3IgdGhlIEhXIGJlZm9yZSB3ZSBzaG91bGQgdHJpZ2dlciBhIHRpbWVvdXQ/DQo+ID4gPiA+IA0K
PiA+ID4gPiBUaGF0J3MgYSBxdWVzdGlvbiBvbmx5IHRoZSBkcml2ZXJzIGNhbiBhbnN3ZXIsIHdo
aWNoIGlzIHdoeSBJIGxpa2UgdG8NCj4gPiA+ID4gdGhpbmsgdGhhdCBzZXR0aW5nIGdsb2JhbCBj
b25zdGFudHMgY29uc3RyYWluaW5nIGFsbCBwYXJ0aWVzIGlzIG5vdCB0aGUNCj4gPiA+ID4gcmln
aHQgdGhpbmcgdG8gZG8uDQo+ID4gPiANCj4gPiA+IEV4YWN0bHkgdGhhdCdzIHRoZSByZWFzb24g
d2h5IEkgYnJpbmcgdGhhdCB1cC4gSSB0aGluayB0aGF0IGRyaXZlcnMgc2hvdWxkIGJlIGluIGNo
YXJnZSBvZiB0aW1lb3V0cyBpcyB0aGUgd3JvbmcgYXBwcm9hY2guDQo+ID4gPiANCj4gPiA+IFNl
ZSB0aGUgcmVhc29uIHdoeSB3ZSBoYXZlIHRoZSB0aW1lb3V0IChhbmQgZG9jdW1lbnRlZCB0aGF0
IGl0IGlzIGEgbXVzdCBoYXZlKSBpcyBiZWNhdXNlIHdlIGhhdmUgYm90aCBjb3JlIG1lbW9yeSBt
YW5hZ2VtZW50IGFzIHdlbGwgYSBkZXNrdG9wIHJlc3BvbnNpdmVuZXNzIGRlcGVuZCBvbiBpdC4N
Cj4gPiANCj4gPiBHb29kIGFuZCB3ZWxsLCBidXQgdGhlbiBwYXRjaCA0IGJlY29tZXMgZXZlbiBt
b3JlIHByb2JsZW1hdGljOg0KPiA+IA0KPiA+IFNvIHdlJ2QganVzdCBoYXZlIGRyaXZlcnMgZmly
ZSB3YXJuaW5ncywgYW5kIHRoZW4gdGhleSB3b3VsZCBzdGlsbCBoYXZlDQo+ID4gdGhlIGZyZWVk
b20gdG8gc2V0IHRpbWVvdXRzIGZvciBkcm0vc2NoZWQsIGFzIGxvbmcgYXMgdGhvc2UgdGltZW91
dHMNCj4gPiBhcmUgc21hbGxlciB0aGFuIHlvdXIgbmV3IGdsb2JhbCBjb25zdGFudC4NCj4gPiAN
Cj4gPiBXaHkgdGhlbiBub3QgcmVtb3ZlIGRybS9zY2hlZCdzIHRpbWVvdXQgcGFyYW1ldGVyIEFQ
SSBjb21wbGV0ZWx5IGFuZA0KPiA+IGFsd2F5cyB1c2UgeW91ciBtYXhpbXVtIHZhbHVlIGludGVy
bmFsbHkgaW4gZHJtL3NjaGVkPyBPciBtYXliZQ0KPiA+IHRydW5jYXRlIGl0IHdpdGggYSB3YXJu
aW5nPw0KPiANCj4gSSBoYXZlIGNvbnNpZGVyZWQgdGhhdCBhcyB3ZWxsLCBidXQgdGhlbiB0aG91
Z2h0IHRoYXQgd2Ugc2hvdWxkIGF0IGxlYXN0IGdpdmUgZW5kIHVzZXJzIHRoZSBwb3NzaWJpbGl0
eSB0byBvdmVycmlkZSB0aGUgdGltZW91dCB3aGlsZSBzdGlsbCB0YWludGluZyB0aGUga2VybmVs
IHNvIHRoYXQgd2Uga25vdyBhYm91dCB0aGlzIGluIGJ1ZyByZXBvcnRzLCBjb3JlIGR1bXBzIGV0
Yy4uLg0KPiANCj4gPiAiTWF4aW11bSB0aW1lb3V0IHBhcmFtZXRlciBleGNlZWRlZCwgdHJ1bmNh
dGluZyB0byAlbGQuXG4iDQo+ID4gDQo+ID4gSSBzdXBwb3NlIHNvbWUgZHJpdmVycyB3YW50IGV2
ZW4gaGlnaGVyIHJlc3BvbnNpdmVuZXNzIHRoYW4gdGhvc2UgMg0KPiA+IHNlY29uZHMuDQo+IA0K
PiBBcyBmYXIgYXMgSSBrbm93IHNvbWUgbWVkaWNhbCB1c2UgY2FzZXMgZm9yIGV4YW1wbGUgaGF2
ZSB0aW1lb3V0cyBsaWtlIDEwMC0yMDBtcy4gQnV0IGFnYWluIHRoYXQgaXMgdGhlIHVzZSBjYXNl
IGFuZCBub3QgdGhlIGRyaXZlci4NCj4gDQo+ID4gSSBkbyBiZWxpZXZlIHRoYXQgbW9yZSBvZiB0
aGUgZHJpdmVyIGZvbGtzIHNob3VsZCBiZSBtYWRlIGF3YXJlIG9mIHRoaXMNCj4gPiBpbnRlbmRl
ZCBjaGFuZ2UuDQo+IA0KPiBJIGhhdmUgbm8gcmVhbCBpbnRlbnRpb24gb2YgYWN0dWFsbHkgcHVz
aGluZyB0aG9zZSBwYXRjaGVzLCBhdCBsZWFzdCBub3QgYXMgdGhleSBhcmUuIEkganVzdCB3YW50
ZWQgdG8ga2ljayBvZiBzb21lIGRpc2N1c3Npb24uDQoNCkNhbiB5b3UgdGhlbiBwbGVhc2UgdXNl
IC0tcmZjIHdoZW4gY3JlYXRpbmcgc3VjaCBwYXRjaGVzIGluIHRoZSBmdXR1cmU/DQpUaGF0IHdh
eSB5b3Ugd29uJ3QgY2F1c2UgbXkgaGVhcnQgcmF0ZSB0byBpbmNyZWFzZSwgc2VhcmNoaW5nIGZv
cg0KaW1tZWRpYXRlIGRhbmdlciA6RA0KDQo+IA0KPiA+ID4gDQo+ID4gPiA+IFdoYXQgaXMgZXZl
biB5b3VyIG1vdGl2YXRpb24/IFdoYXQgcHJvYmxlbSBkb2VzIHRoaXMgc29sdmU/IElzIHRoZSBP
T00NCj4gPiA+ID4ga2lsbGVyIGN1cnJlbnRseSBoYW5naW5nIGZvciBhbnlvbmU/IENhbiB5b3Ug
bGluayBhIGJ1ZyByZXBvcnQ/DQo+ID4gPiANCj4gPiA+IEknbSBub3Qgc3VyZSBpZiB3ZSBoYXZl
IGFuIGV4dGVybmFsIGJ1ZyByZXBvcnQgKHdlIGhhdmUgYW4gaW50ZXJuYWwgb25lKSwgYnV0IGZv
ciBhbWRncHUgdGhlcmUgd2VyZSBjdXN0b21lciBjb21wbGFpbnMgdGhhdCAxMCBzZWNvbmRzIGlz
IHRvIGxvbmcuDQo+ID4gPiANCj4gPiA+IFNvIHdlIGNoYW5nZWQgaXQgdG8gMiBzZWNvbmRzIGZv
ciBhbWRncHUsIGFuZCBub3cgdGhlcmUgYXJlIGNvbXBsYWlucyBmcm9tIGludGVybmFsIEFNRCB0
ZWFtcyB0aGF0IDIgc2Vjb25kcyBpcyB0byBzaG9ydC4NCj4gPiA+IA0KPiA+ID4gV2hpbGUgd29y
a2luZyBvbiB0aGF0IEkgcmVhbGl6ZWQgdGhhdCB0aGUgdGltZW91dCBpcyBhY3R1YWxseSBub3Qg
ZHJpdmVyIGRlcGVuZGVudCBhdCBhbGwuDQo+ID4gPiANCj4gPiA+IFdoYXQgY2FuIG1heWJlIGFy
Z3VlZCBpcyB0aGF0IGEgZGVza3RvcCBzeXN0ZW0gc2hvdWxkIGhhdmUgYSBzaG9ydGVyIHRpbWVv
dXQgdGhhbiBzb21lIHNlcnZlciwgYnV0IHRoYXQgb25lIGRyaXZlciBuZWVkcyBhIGRpZmZlcmVu
dCB0aW1lb3V0IHRoYW4gYW5vdGhlciBkcml2ZXIgZG9lc24ndCByZWFsbHkgbWFrZXMgc2Vuc2Ug
dG8gbWUuDQo+ID4gPiANCj4gPiA+IEkgbWVhbiB3aGF0IGlzIGFjdHVhbGx5IEhXIGRlcGVuZGVu
dCBvbiB0aGUgcmVxdWlyZW1lbnQgdGhhdCBJIG5lZWQgYSByZXNwb25zaXZlIGRlc2t0b3Agc3lz
dGVtPw0KPiA+IA0KPiA+IEkgc3VwcG9zZSBzb21lIGRyaXZlcnMgYXJlIGluZGVlZCBvbmx5IHVz
ZWQgZm9yIHNlcnZlciBoYXJkd2FyZS4gQW5kDQo+ID4gZm9yIGNvbXB1dGUgeW91IG1pZ2h0IG5v
dCBjYXJlIGFib3V0IHJlc3BvbnNpdmVuZXNzIGFzIGxvbmcgYXMgeW91cg0KPiA+IHJlc3VsdCBk
cm9wcyBvZmYgYXQgc29tZSBwb2ludC4gQnV0IHRoZXJlJ3MgY2xvdWQgZ2FtaW5nLCB0b28uLg0K
PiANCj4gR29vZCBwb2ludCB3aXRoIHRoZSBjbG91ZCBnYW1pbmcuDQo+IA0KPiA+IEkgYWdyZWUg
dGhhdCBkaXN0aW5ndWlzaGluZyB0aGUgdXNlIGNhc2UgdGhhdCB3YXkgaXMgbm90IGlkZWFsLg0K
PiA+IEhvd2V2ZXIsIHdobyBoYXMgdGhlIGtub3dsZWRnZSBvZiBob3cgdGhlIGhhcmR3YXJlIGlz
IGJlaW5nIHVzZWQgYnkNCj4gPiBjdXN0b21lcnMgLyB1c2VycywgaWYgbm90IHRoZSBkcml2ZXI/
DQo+IA0KPiBXZWxsIHRoZSBlbmQgdXNlci4NCj4gDQo+IE1heWJlIHdlIHNob3VsZCBtb3ZlIHRo
ZSB3aG9sZSB0aW1lb3V0IHRvcGljIGludG8gdGhlIERSTSBsYXllciBvciB0aGUgc2NoZWR1bGVy
IGNvbXBvbmVudC4NCg0KV2hvJ3MgdGhlICJ1c2VyIj8gVGhlIGVudGlyZSBzeXN0ZW0/IE9uZSBw
cm9jZXNzIHNpdHRpbmcgb24gdG9wIG9mIGl0cw0KaW9jdGwgYW5kIGZpbGUgZGVzY3JpcHRvcj8N
Cg0KVGhhdCBxdWVzdGlvbiBwbGF5cyBpbnRvIGFuc3dlcmluZyBob3cgYW5kIHdoZXJlIHRpbWVv
dXRzIHNob3VsZCBiZQ0KY29uZmlndXJlZC4NCg0KDQpPbmUgbWlnaHQgYXNrIGhpbXNlbGYgaWYg
dGhlbiBhIGtlcm5lbCBwYXJhbWV0ZXIgd291bGQgYmUgdGhlIHJpZ2h0IHdheQ0KdG8gY29uZmln
dXJlIGl0LiBJJ20gbm90IHZlcnkgZXhwZXJpZW5jZWQgd2l0aCB0aGUgZGVzaXJlcyBvZg0KdXNl
cnNwYWNlLg0KDQpJIHN1bW9uZCBNaWNoZWwgRMOkbnplciB0byBzaGFyZSBoaXMgd2lzZG9tIQ0K
DQoNCj4gDQo+IFNvbWV0aGluZyBsaWtlIDIgc2Vjb25kcyBkZWZhdWx0ICh3aGljaCBCVFcgaXMg
dGhlIGRlZmF1bHQgb24gV2luZG93cyBhcyB3ZWxsKSwgd2hpY2ggY2FuIGJlIG92ZXJyaWRkZW4g
b24gYSBnbG9iYWwsIHBlciBkZXZpY2UsIHBlciBxdWV1ZSBuYW1lIGJhc2lzLg0KDQpJIG1lYW4s
IHRoZSBkcml2ZXJzIGNhbiBhbHJlYWR5IHNldCBpdCBwZXIgZGV2aWNlLiBJdCBzZWVtcyB0byBt
ZSB0aGF0DQp3aGF0IHlvdSBhY3R1YWxseSB3YW50IGlzIGZpbmVyIGNvbnRyb2w/DQoNCkZvciBO
b3V2ZWF1IHdpdGggaXRzIGZpcm13YXJlIHNjaGVkdWxlciBoYXZpbmcgYSB0aW1lb3V0IGF0IGFs
bCBqdXN0DQpkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZSBhbnl3YXl5cy4NCg0KICogSWYgYSBmdyBy
aW5nIGhhbmdzLCBpdCBoYW5ncywgYW5kIGEgc2hvcnRlciB0aW1lb3V0IHdpbGwganVzdCBoYXZl
DQogICB5b3VyIGFwcCBjcmFzaCBzb29uZXIuDQogKiBJZiBpdCdzIGxhZ2d5IGFuZCBzbG93LCBp
dCdzIGxhZ2d5IGFuZCBzbG93LCBidXQgd2l0aCBhIGhpZ2ggdGltZW91dA0KICAgYXQgbGVhc3Qg
c3RpbGwgdXNhYmxlLg0KICogQW5kIGlmIGl0J3MgY29tcHV0ZSBhbmQgc2xvdywgeW91IGF0IGxl
YXN0IGdldCB5b3VyIHJlc3VsdHMgYXQgc29tZQ0KICAgcG9pbnQuDQoNCkJ1dCBoYXZpbmcgYSBs
b3dlciB0aW1lb3V0IHdvdWxkbid0IHJlYWxseSByZXBhaXIgYW55dGhpbmcsIG9yIGFtIEkNCm1p
c3Rha2VuPw0KDQo+IA0KPiBBbmQgMTAgc2Vjb25kcyBtYXhpbXVtIHdpdGggb25seSBhIHdhcm5p
bmcgdGhhdCBhIG5vdCBkZWZhdWx0IHRpbWVvdXQgaXMgdXNlZCBhbmQgZXZlcnl0aGluZyBhYm92
ZSAxMCBzZWNvbmRzIHRhaW50cyB0aGUga2VybmVsIGFuZCBzaG91bGQgcmVhbGx5IG9ubHkgYmUg
dXNlZCBmb3IgdGVzdGluZy9kZWJ1Z2dpbmcuDQo+IA0KPiBUaG91Z2h0cz8NCg0KDQpUaGUgbW9z
dCBpbXBvcnRhbnQgdGhpbmcgZm9yIG1lIHJlZ2FyZGluZyB5b3VyIFJGQyBpcyB0aGF0IHdlIGRv
bid0IGFkZA0Kc2hpbnkgd2FybmluZ3MgYnkgZGVjbGFyaW5nIGRyaXZlciBiZWhhdmlvciBpbnZh
bGlkIHRoYXQgd2FzDQpvcGVyYXRpb25hbCBmb3IgeWVhcnMuDQoNClRoZSBtb3N0IGNvbnNlcnZh
dGl2ZSB3YXkgd291bGQgYmUgdG8gc2VuZCBwYXRjaGVzIHRvIHRoZSByZXNwZWN0aXZlDQpkcml2
ZXJzLCBzZXR0aW5nIHRoZWlyIHRpbWVvdXRzIHRvIHRoZSBuZXcgZGVzaXJlZCBkZWZhdWx0cywg
YW5kIHRoZW4NCmFkZGluZyB3YXJuaW5ncyBzbyB0aGF0IGZ1dHVyZSBkcml2ZXJzIGJlY29tZSBh
d2FyZS4NCg0KDQpQLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
