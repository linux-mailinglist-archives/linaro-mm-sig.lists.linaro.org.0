Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BPOXEkjyVWqdwgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 10:24:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4C97525B8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 10:24:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=jaJ4r2ix;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77B03404B3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 08:24:38 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id B474540156
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 08:24:34 +0000 (UTC)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA512)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4gzs4K1CZMzKngh;
	Tue, 14 Jul 2026 09:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1784015601; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E86emSsGnNboEBZz/nB/ic8WsIfQJK/xE8FObu6WebA=;
	b=jaJ4r2ixSyy5ZMqCjJ4PkmGeKFvgIbO8WFUlPvQLUoetPOycliithx3DloUAkqUPTXQmv+
	ihGegmn87UF6HycjtAWL3oRgIniHETVJ0ZJwgbVwr7mHCWYltjTl9RTmYicEt1v68xyZUS
	JSTfSDWAedG1qx8q4VcGGwAAsu2YiW1Pn7KrcLJOnOLM5c32qMcml9vjG1rfSZcespulID
	sFFG/XIx9j1Dd8agq3kZCrpAL7fid3sB4WtIhEcoyXgPhVnNVcIiuKSiVxauS0fahlqG06
	4XokDyCKPAqJRPzsWf/Oj/u1nbPoNi1dPpgZQYq8eqzyE1Q72QAGV/EMpM0WUA==
Message-ID: <aee97ce4aad6bcf63ce9e7066e20a4ff6f082669.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Jiri Slaby <jirislaby@kernel.org>, Christian =?ISO-8859-1?Q?K=F6nig?=
	 <ckoenig.leichtzumerken@gmail.com>, tursulin@ursulin.net,
	matthew.brost@intel.com, sumit.semwal@linaro.org
Date: Tue, 14 Jul 2026 09:53:18 +0200
In-Reply-To: <0d40243b-0929-46d2-be85-e3248d4bd09c@kernel.org>
References: <20260120105655.7134-1-christian.koenig@amd.com>
	 <20260120105655.7134-2-christian.koenig@amd.com>
	 <0d40243b-0929-46d2-be85-e3248d4bd09c@kernel.org>
MIME-Version: 1.0
X-MBO-RS-ID: 34a5d9ee4190364e532
X-MBO-RS-META: mp11rxeenwe8wkcn3hooppsutsh3h59w
X-Spamd-Bar: ----
Message-ID-Hash: CW7GLGMJIOLADTFHZINHMYNDJA7GJTXQ
X-Message-ID-Hash: CW7GLGMJIOLADTFHZINHMYNDJA7GJTXQ
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dma-buf: add dma_fence_was_initialized function v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CW7GLGMJIOLADTFHZINHMYNDJA7GJTXQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:jirislaby@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:tursulin@ursulin.net,m:matthew.brost@intel.com,m:sumit.semwal@linaro.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ursulin.net,intel.com,linaro.org];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB4C97525B8

T24gTW9uLCAyMDI2LTA3LTEzIGF0IDEwOjU4ICswMjAwLCBKaXJpIFNsYWJ5IHdyb3RlOg0KPiBI
aSwNCj4gDQo+IE9uIDIwLiAwMS4gMjYsIDExOjU0LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
PiA+IFNvbWUgZHJpdmVyIHVzZSBmZW5jZS0+b3BzIHRvIHRlc3QgaWYgYSBmZW5jZSB3YXMgaW5p
dGlhbGl6ZWQgb3Igbm90Lg0KPiA+IFRoZSBwcm9ibGVtIGlzIHRoYXQgdGhpcyB1dGlsaXplcyBp
bnRlcm5hbCBiZWhhdmlvciBvZiB0aGUgZG1hX2ZlbmNlDQo+ID4gaW1wbGVtZW50YXRpb24uDQo+
ID4gDQo+ID4gU28gYmV0dGVyIGFic3RyYWN0IHRoYXQgaW50byBhIGZ1bmN0aW9uLg0KPiA+IA0K
PiA+IHYyOiB1c2UgYSBmbGFnIGluc3RlYWQgb2YgdGVzdGluZyBmZW5jZS0+b3BzLCByZW5hbWUg
dGhlIGZ1bmN0aW9uLCBtb3ZlDQo+ID4gwqDCoMKgwqAgdG8gdGhlIGJlZ2lubmluZyBvZiB0aGUg
cGF0Y2ggc2V0Lg0KPiAuLi4NCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxl
YXNlLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMNCj4gPiBA
QCAtMTQ2LDcgKzE0Niw3IEBAIHF4bF9yZWxlYXNlX2ZyZWUoc3RydWN0IHF4bF9kZXZpY2UgKnFk
ZXYsDQo+ID4gwqDCoAlpZHJfcmVtb3ZlKCZxZGV2LT5yZWxlYXNlX2lkciwgcmVsZWFzZS0+aWQp
Ow0KPiA+IMKgwqAJc3Bpbl91bmxvY2soJnFkZXYtPnJlbGVhc2VfaWRyX2xvY2spOw0KPiA+IMKg
IA0KPiA+IC0JaWYgKHJlbGVhc2UtPmJhc2Uub3BzKSB7DQo+ID4gKwlpZiAoZG1hX2ZlbmNlX3dh
c19pbml0aWFsaXplZCgmcmVsZWFzZS0+YmFzZSkpIHsNCg0KQ291bGQgeW91IHZlcmlmeSB0aGUg
Y2F1c2Ugd2l0aCBzdGggbGlrZQ0KDQppZiAocmVsZWFzZS0+YmFzZS5vcHMgJiYgZG1hX2ZlbmNl
X3dhc19pbml0aWFsaXplZCjigKYpKSB7DQoNCj8NCg0KPiA+IMKgwqAJCVdBUk5fT04obGlzdF9l
bXB0eSgmcmVsZWFzZS0+Ym9zKSk7DQo+ID4gwqDCoAkJcXhsX3JlbGVhc2VfZnJlZV9saXN0KHJl
bGVhc2UpOw0KPiA+IMKgIA0KPiANCj4gVGhpcyBsaWtlbHkgYnJlYWtzIHF4bDoNCj4gaHR0cHM6
Ly9idWd6aWxsYS5zdXNlLmNvbS9zaG93X2J1Zy5jZ2k/aWQ9MTI3MTA4MQ0KPiANCj4gwqA+IHJl
ZmNvdW50X3Q6IHVuZGVyZmxvdzsgdXNlLWFmdGVyLWZyZWUuDQo+IMKgPiBXQVJOSU5HOiBsaWIv
cmVmY291bnQuYzoyOCBhdCByZWZjb3VudF93YXJuX3NhdHVyYXRlKzB4NTkvMHg5MCwgDQo+IENQ
VSMwOiBrd29ya2VyLzA6MC8xNTM0DQo+IMKgPiBNb2R1bGVzIGxpbmtlZCBpbjogYWZfcGFja2V0
IG5mdF9maWJfaW5ldCAuLi4NCj4gwqA+IENQVTogMCBVSUQ6IDAgUElEOiAxNTM0IENvbW06IGt3
b3JrZXIvMDowIE5vdCB0YWludGVkIDcuMS4zLTEtZGVmYXVsdCANCj4gIzEgUFJFRU1QVChmdWxs
KSBvcGVuU1VTRSBUdW1ibGV3ZWVkIA0KPiBiMDQxYTY1MjdmNmU1ODQyNGY0Y2QzZGUwZmFkZThk
NDA4YjM3OGZkDQo+IMKgPiBIYXJkd2FyZSBuYW1lOiBRRU1VIFN0YW5kYXJkIFBDIChRMzUgKyBJ
Q0g5LCAyMDA5KSwgQklPUyANCj4gcmVsLTEuMTYuMy0yLWdjMTNmZjJjZC1wcmVidWlsdC5xZW11
Lm9yZyAwNC8wMS8yMDE0DQo+IMKgPiBXb3JrcXVldWU6IGV2ZW50cyBxeGxfZ2Nfd29yayBbcXhs
XQ0KPiDCoD4gUklQOiAwMDEwOnJlZmNvdW50X3dhcm5fc2F0dXJhdGUrMHg1OS8weDkwDQo+IMKg
PiBDb2RlOiA0NCA0OCA4ZCAzZCBhOSA3MiBiNyAwMSA2NyA0OCAwZiBiOSAzYSBjMyBjYyBjYyBj
YyBjYyA0OCA4ZCAzZCANCj4gYTggNzIgYjcgMDEgNjcgNDggMGYgYjkgM2EgYzMgY2MgY2MgY2Mg
Y2MgNDggOGQgM2QgYTcgNzIgYjcgMDEgPDY3PiA0OCANCj4gMGYgYjkgM2EgYzMgY2MgY2MgY2Mg
Y2MgNDggOGQgM2QgYTYgNzIgYjcgMDEgNjcgNDggMGYgYjkgM2ENCj4gwqA+IFJTUDogMDAxODpm
ZmZmY2UwOTAxOWVmZTAwIEVGTEFHUzogMDAwMTAyNDYNCj4gwqA+IFJBWDogMDAwMDAwMDAwMDAw
MDAwMCBSQlg6IGZmZmY4YjVhNTZmODE5YzAgUkNYOiAwMDAwMDAwMDAwMDAwMDE3DQo+IMKgPiBS
RFg6IDAwMDAwMDAwMDAwMTE2OTYgUlNJOiAwMDAwMDAwMDAwMDAwMDAzIFJESTogZmZmZmZmZmZi
Yzk1M2I3MA0KPiDCoD4gUkJQOiBmZmZmOGI1YTRhMzE0MDAwIFIwODogMDAwMDAwMDAwMDAwMDAw
MSBSMDk6IGZmZmZmZmZmYzA3ZDQ4OGENCj4gwqA+IFIxMDogZmZmZmZhNmZjNDc4N2Q4MCBSMTE6
IGZmZmY4YjVhNDAwNDQwMDAgUjEyOiAwMDAwMDAwMDAwMDAwMDA0DQo+IMKgPiBSMTM6IDAwMDAw
MDAwMDAwMDAwMDMgUjE0OiBmZmZmY2UwOTAwM2YxNDM0IFIxNTogZmZmZjhiNWE0MTBjNDY0MA0K
PiDCoD4gRlM6wqAgMDAwMDAwMDAwMDAwMDAwMCgwMDAwKSBHUzpmZmZmOGI1YWZlOTU0MDAwKDAw
MDApIA0KPiBrbmxHUzowMDAwMDAwMDAwMDAwMDAwDQo+IMKgPiBDUzrCoCAwMDEwIERTOiAwMDAw
IEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMw0KPiDCoD4gQ1IyOiAwMDAwN2ZmNDYzZDY1
MDAwIENSMzogMDAwMDAwMDEyYjQ3NjAwNCBDUjQ6IDAwMDAwMDAwMDA3NzJlZjANCj4gwqA+IFBL
UlU6IDU1NTU1NTU0DQo+IMKgPiBDYWxsIFRyYWNlOg0KPiDCoD7CoCA8VEFTSz4NCj4gwqA+wqAg
cXhsX3JlbGVhc2VfZnJlZSsweGVlLzB4ZjAgW3F4bCANCj4gZDkzZTkzODEzNTNlNjE5Nzk5ZDU2
NzkwZjVmOGRkYTZjY2U0OTFmNl0NCj4gwqA+wqAgcXhsX2dhcmJhZ2VfY29sbGVjdCsweGQxLzB4
MWIwIFtxeGwgDQo+IGQ5M2U5MzgxMzUzZTYxOTc5OWQ1Njc5MGY1ZjhkZGE2Y2NlNDkxZjZdDQo+
IMKgPsKgIHByb2Nlc3Nfb25lX3dvcmsrMHgxOWUvMHgzYTANCj4gwqA+IC4uLg0KPiANCj4gVGhl
IGZ1bmN0aW9uIGRvZXMgbm93Og0KPiANCj4gwqA+IHZvaWQNCj4gwqA+IHF4bF9yZWxlYXNlX2Zy
ZWUoc3RydWN0IHF4bF9kZXZpY2UgKnFkZXYsDQo+IMKgPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RydWN0IHF4bF9yZWxlYXNlICpyZWxlYXNlKQ0KPiDCoD4gew0KPiDCoD4g
Li4uDQo+IMKgPsKgwqDCoMKgwqDCoMKgwqAgaWYgKGRtYV9mZW5jZV93YXNfaW5pdGlhbGl6ZWQo
JnJlbGVhc2UtPmJhc2UpKSB7DQo+IMKgPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IFdBUk5fT04obGlzdF9lbXB0eSgmcmVsZWFzZS0+Ym9zKSk7IA0KPiANCj4gwqA+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcXhsX3JlbGVhc2VfZnJlZV9saXN0KHJlbGVhc2UpOyAN
Cj4gDQo+IMKgPiANCj4gDQo+IMKgPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRt
YV9mZW5jZV9zaWduYWwoJnJlbGVhc2UtPmJhc2UpOyANCj4gDQo+IMKgPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQoJnJlbGVhc2UtPmJhc2UpOyANCj4gDQo+
IMKgIA0KPiANCj4gcmVmY291bnRfZGVjX2FuZF90ZXN0KCkgaW4ga3JlZl9wdXQoKSBpbiB0aGlz
IF5eIGNyYXNoZXMuIEFwcGFyZW50bHksDQo+IHRoZSByZWZlcmVuY2UgY291bnQgd2FzIG5vdCBp
bmNyZWFzZWQgYW55d2hlcmUuIFFYTCBkb2VzIG5vdCBjYWxsIA0KPiBkbWFfZmVuY2VfZ2V0KCkg
LS0gd2hvIGlzIHN1cHBvc2VkIHRvIGluY3JlYXNlIHRoZSByZWZjb3VudC4NCj4gDQoNCmRtYV9m
ZW5jZV9pbml0KCkgaW5pdGlhbGl6ZXMgdGhlIHJlZmNvdW50IHRvIDEuIFNvIHNpbmNlIHRoZXJl
IGlzIG9ubHkNCm9uZSBwbGFjZSB3aXRoIGRtYV9mZW5jZV9wdXQoKSwgaXQgcHJvYmFibHkgYWlt
cyBhdCBjb3VudGVyaW5nIHRoYXQuDQoNCg0KPiAgQW5kIHdoeSBpdCANCj4gZGlkIG5vdCBmYWls
IGJlZm9yZT8NCg0KTXkgZ3Vlc3Mgd291bGQgYmUgdGhhdCBiYXNlLT5vcHMgd2FzIHVzZWQgYXMg
YSBib29sZWFuIHRvIHNlZSB3aGV0aGVyDQpxeGxfcmVsZWFzZSBjb250YWlucyBhIHZhbGlkIGZl
bmNlLiBJdCBzZWVtcyBxeGxfcmVsZWFzZV9mcmVlKCkgaXMNCmludGVuZGVkIGFzIHNvbWUgc29y
dCBvZiB1bml2ZXJzYWwgZnVuY3Rpb247IGl0IGlzIGNhbGxlZCBhdCBtYW55DQpwbGFjZXMuIFNv
IEkgd291bGQgc3VwcG9zZSBpdCBpcyBzb21ldGltZXMgYmVpbmcgY2FsbGVkIHdpdGhvdXQgdGhl
DQpmZW5jZSBiZWluZyBpbml0aWFsaXplZC4NCg0KU2hvdWxkIG1vc3QgY2VydGFpbmx5IGhhdmUg
YmVlbiBkb2N1bWVudGVkLiBBbnl3YXlzLCB2ZXJpZnlpbmcgdGhlDQppc3N1ZSB3b3VsZCBwcm9i
YWJseSBiZSBjb29sDQoNCkNoZWVycywNClAuDQoNCj4gwqAgDQo+IA0KPiDCoD7CoMKgwqDCoMKg
wqDCoMKgIH0gZWxzZSB7IA0KPiANCj4gwqA+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcXhsX3JlbGVhc2VfZnJlZV9saXN0KHJlbGVhc2UpOyANCj4gDQo+IMKgPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGtmcmVlKHJlbGVhc2UpOyANCj4gDQo+IMKgPsKgwqDCoMKg
wqDCoMKgwqAgfSANCj4gDQo+IMKgPsKgwqDCoMKgwqDCoMKgwqAgYXRvbWljX2RlYygmcWRldi0+
cmVsZWFzZV9jb3VudCk7IA0KPiANCj4gwqA+IH0NCj4gDQo+IHRoYW5rcywNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
