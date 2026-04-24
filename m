Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAfFGh+I72mCCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:00:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 182AD475D94
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:00:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FBA5406C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 16:00:30 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by lists.linaro.org (Postfix) with ESMTP id E7F7B3F6FF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 11:57:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (localhost [127.0.0.1])
	by gate.crashing.org (8.18.1/8.18.1/Debian-2) with ESMTP id 63OBvJ0f186057;
	Fri, 24 Apr 2026 06:57:19 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.18.1/8.18.1/Submit) id 63OBvCZI186048;
	Fri, 24 Apr 2026 06:57:12 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 24 Apr 2026 06:57:12 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>
Message-ID: <aetamPA_SsWcwC4M@gate>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
 <aetZ3VX_Y9sop-SO@gate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aetZ3VX_Y9sop-SO@gate>
X-Spamd-Bar: --
X-MailFrom: segher@kernel.crashing.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3IRBDW34Q6EMMKISQSGCDAX5IH5EZWXY
X-Message-ID-Hash: 3IRBDW34Q6EMMKISQSGCDAX5IH5EZWXY
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:59:56 +0000
CC: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev, Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3IRBDW34Q6EMMKISQSGCDAX5IH5EZWXY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 182AD475D94
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[76];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[crashing.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[37];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_XAW(0.00)[];
	NEURAL_HAM(-0.00)[-0.950];
	FROM_NEQ_ENVFROM(0.00)[segher@kernel.crashing.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,linkmauve.fr];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

T24gRnJpLCBBcHIgMjQsIDIwMjYgYXQgMDY6NTQ6MDVBTSAtMDUwMCwgU2VnaGVyIEJvZXNzZW5r
b29sIHdyb3RlOg0KPiBIaSENCj4gDQo+IE9uIEZyaSwgQXByIDI0LCAyMDI2IGF0IDExOjE3OjQw
QU0gKzA1MzAsIE11a2VzaCBLdW1hciBDaGF1cmFzaXlhIChJQk0pIHdyb3RlOg0KPiA+IFRoZSBj
b3JlIGNyYXRlIGN1cnJlbnRseSBkZXBlbmRzIG9uIHRoZXNlIHR3byBmdW5jdGlvbnMgZm9yIGk2
NC91NjQvDQo+ID4gaTEyOC91MTI4L2NvcmU6OnRpbWU6OkR1cmF0aW9uIGZvcm1hdHRpbmcsIGJ1
dCB3ZSBzaG91bGRu4oCZdCB1c2UgdGhhdCBpbg0KPiA+IHRoZSBrZXJuZWwgc28gbGV04oCZcyBw
YW5pYyBpZiB0aGV5IGFyZSBldmVyIGNhbGxlZC4NCj4gPiANCj4gPiBUaGlzIGRvZXNu4oCZdCB5
ZXQgZml4IGRybV9wYW5pY19xci5ycywgd2hpY2ggYWxzbyB1c2VzIF9fdWRpdmRpMyB3aGVuDQo+
ID4gQ09ORklHX0NDX09QVElNSVpFX0ZPUl9TSVpFPXksIGJ1dCBhdCBsZWFzdCBtYWtlcyB0aGUg
cmVzdCBvZiB0aGUga2VybmVsDQo+ID4gYnVpbGQgb24gUFBDMzIuDQo+IA0KPiBHQ0MgdXNlcyBj
YWxscyB0byBmdW5jdGlvbnMgbGlrZSBldmVuIF9fYWRkc2kzIHdoZW5ldmVyIHRoZSAoc3ViLSl0
YXJnZXQNCj4gZG9lcyBub3QgaW1wbGVtZW50IHNvbWUgUlRMLCBkb2Vzbid0IGhhdmUgYSBkZWZp
bmVfaW5zbiBhbmQgdGhlIGxpa2UgZm9yDQo+IGl0LiAgV2hlbiB5b3Ugd3JpdGUgYSBuZXcgcG9y
dCB5b3Ugb25seSAqaGF2ZSogdG8gaW1wbGVtZW50IGEgdmVyeSBmZXcNCj4gdGhpbmdzLCB0aGUg
cmVzdCBpcyBkb25lIGluIGxpYmdjYyAoeW91IG1pZ2h0IHN0aWxsIGhhdmUgdG8gd3JpdGUgc29t
ZQ0KPiBvZiB0aGF0IGZvciB5b3VyIHRhcmdldCwgbm8gZnJlZSBsdW5jaCBldGMuKQ0KPiANCj4g
MzItYml0IFBvd2VyUEMgaGFzIG5vIGluc3RydWN0aW9ucyBmb3IgNjQtYml0IGRpdmlzaW9ucywg
bm9yDQo+IGluc3RydWN0aW9ucyB0aGF0IGhlbHAgaW1wbGVtZW50aW5nIGl0IGluIHNvZnR3YXJl
LiAgSXQgc3RpbGwgdmVyeSBvZnRlbg0KPiBoZWxwcyB0byBoYW5kLXdyaXRlIG1hY2hpbmUgY29k
ZSBmb3IgaXQsIGl0IHZlcnkgZWFzaWx5IGNhbiB1c3VhbGx5IGJlDQo+IG1vcmUgdGhhbiB0d2lj
ZSBhcyBmYXN0IGZvciBleGFtcGxlIChmb3IgZXhhbXBsZSBpZiB0aGUgZGl2aXNvciBpcyBsZXNz
DQo+IHRoYW4gaGFsZiBhIHdvcmQgYmlnLCB0aGUgY29tbW9uIGNhc2UgLS0gaXQgY2FuIGJlIG1h
ZGUgdGVucyBvZiB0aW1lcw0KPiBmYXN0ZXIgdGhlbikuDQo+IA0KPiBUaGVyZSBjYW4gYmUgbWFu
eSByZWFzb25zIHdoeSBhIEdDQyBiYWNrZW5kIGRlY2lkZXMgdG8gY2FsbCBhIGxpYmdjYw0KPiBy
b3V0aW5lLiAgRm9yIF9fdWRpdmRpMyBvbiAtbTMyIHJzNjAwMCB5b3UnbGwgYmUgZ29vZCBBRkFJ
Q1MgOi0pDQo+IChidXQgcG9pc29uaW5nIGZ1bmN0aW9ucyBsaWtlIHlvdSBkbyBpcyBhIHRlcnJp
YmxlIGlkZWEgaW4gZ2VuZXJhbCEpDQoNCldob29wc2llLCBJIGZvcmdvdCB0byBtZW50aW9uOg0K
DQpBcHByb3ZlZCBmb3IgdHJ1bmsuDQoNCg0KU2VnaGVyDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
