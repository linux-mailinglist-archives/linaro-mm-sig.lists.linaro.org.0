Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JbyEf4U8mmKnwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:26:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F002D495ACB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:26:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 988F0401C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 14:25:56 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by lists.linaro.org (Postfix) with ESMTP id 3CD7F3F796
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 12:54:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (localhost [127.0.0.1])
	by gate.crashing.org (8.18.1/8.18.1/Debian-2) with ESMTP id 63OCrj9o193708;
	Fri, 24 Apr 2026 07:53:45 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.18.1/8.18.1/Submit) id 63OCrhor193703;
	Fri, 24 Apr 2026 07:53:43 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 24 Apr 2026 07:53:43 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>
Message-ID: <aetn16xR-uy7M7WA@gate>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
 <aetZ3VX_Y9sop-SO@gate>
 <aetamPA_SsWcwC4M@gate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aetamPA_SsWcwC4M@gate>
X-Spamd-Bar: --
X-MailFrom: segher@kernel.crashing.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3AHJGU3CVS3XJPXUL5ESEYPQ7LRY46FE
X-Message-ID-Hash: 3AHJGU3CVS3XJPXUL5ESEYPQ7LRY46FE
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:25:46 +0000
CC: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev, Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3AHJGU3CVS3XJPXUL5ESEYPQ7LRY46FE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: F002D495ACB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[121];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[crashing.org];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	HAS_XAW(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[segher@kernel.crashing.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,linkmauve.fr];
	NEURAL_HAM(-0.00)[-0.703];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	R_DKIM_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]

T24gRnJpLCBBcHIgMjQsIDIwMjYgYXQgMDY6NTc6MTJBTSAtMDUwMCwgU2VnaGVyIEJvZXNzZW5r
b29sIHdyb3RlOg0KPiBPbiBGcmksIEFwciAyNCwgMjAyNiBhdCAwNjo1NDowNUFNIC0wNTAwLCBT
ZWdoZXIgQm9lc3Nlbmtvb2wgd3JvdGU6DQo+ID4gSGkhDQo+ID4gDQo+ID4gT24gRnJpLCBBcHIg
MjQsIDIwMjYgYXQgMTE6MTc6NDBBTSArMDUzMCwgTXVrZXNoIEt1bWFyIENoYXVyYXNpeWEgKElC
TSkgd3JvdGU6DQo+ID4gPiBUaGUgY29yZSBjcmF0ZSBjdXJyZW50bHkgZGVwZW5kcyBvbiB0aGVz
ZSB0d28gZnVuY3Rpb25zIGZvciBpNjQvdTY0Lw0KPiA+ID4gaTEyOC91MTI4L2NvcmU6OnRpbWU6
OkR1cmF0aW9uIGZvcm1hdHRpbmcsIGJ1dCB3ZSBzaG91bGRu4oCZdCB1c2UgdGhhdCBpbg0KPiA+
ID4gdGhlIGtlcm5lbCBzbyBsZXTigJlzIHBhbmljIGlmIHRoZXkgYXJlIGV2ZXIgY2FsbGVkLg0K
PiA+ID4gDQo+ID4gPiBUaGlzIGRvZXNu4oCZdCB5ZXQgZml4IGRybV9wYW5pY19xci5ycywgd2hp
Y2ggYWxzbyB1c2VzIF9fdWRpdmRpMyB3aGVuDQo+ID4gPiBDT05GSUdfQ0NfT1BUSU1JWkVfRk9S
X1NJWkU9eSwgYnV0IGF0IGxlYXN0IG1ha2VzIHRoZSByZXN0IG9mIHRoZSBrZXJuZWwNCj4gPiA+
IGJ1aWxkIG9uIFBQQzMyLg0KPiA+IA0KPiA+IEdDQyB1c2VzIGNhbGxzIHRvIGZ1bmN0aW9ucyBs
aWtlIGV2ZW4gX19hZGRzaTMgd2hlbmV2ZXIgdGhlIChzdWItKXRhcmdldA0KPiA+IGRvZXMgbm90
IGltcGxlbWVudCBzb21lIFJUTCwgZG9lc24ndCBoYXZlIGEgZGVmaW5lX2luc24gYW5kIHRoZSBs
aWtlIGZvcg0KPiA+IGl0LiAgV2hlbiB5b3Ugd3JpdGUgYSBuZXcgcG9ydCB5b3Ugb25seSAqaGF2
ZSogdG8gaW1wbGVtZW50IGEgdmVyeSBmZXcNCj4gPiB0aGluZ3MsIHRoZSByZXN0IGlzIGRvbmUg
aW4gbGliZ2NjICh5b3UgbWlnaHQgc3RpbGwgaGF2ZSB0byB3cml0ZSBzb21lDQo+ID4gb2YgdGhh
dCBmb3IgeW91ciB0YXJnZXQsIG5vIGZyZWUgbHVuY2ggZXRjLikNCj4gPiANCj4gPiAzMi1iaXQg
UG93ZXJQQyBoYXMgbm8gaW5zdHJ1Y3Rpb25zIGZvciA2NC1iaXQgZGl2aXNpb25zLCBub3INCj4g
PiBpbnN0cnVjdGlvbnMgdGhhdCBoZWxwIGltcGxlbWVudGluZyBpdCBpbiBzb2Z0d2FyZS4gIEl0
IHN0aWxsIHZlcnkgb2Z0ZW4NCj4gPiBoZWxwcyB0byBoYW5kLXdyaXRlIG1hY2hpbmUgY29kZSBm
b3IgaXQsIGl0IHZlcnkgZWFzaWx5IGNhbiB1c3VhbGx5IGJlDQo+ID4gbW9yZSB0aGFuIHR3aWNl
IGFzIGZhc3QgZm9yIGV4YW1wbGUgKGZvciBleGFtcGxlIGlmIHRoZSBkaXZpc29yIGlzIGxlc3MN
Cj4gPiB0aGFuIGhhbGYgYSB3b3JkIGJpZywgdGhlIGNvbW1vbiBjYXNlIC0tIGl0IGNhbiBiZSBt
YWRlIHRlbnMgb2YgdGltZXMNCj4gPiBmYXN0ZXIgdGhlbikuDQo+ID4gDQo+ID4gVGhlcmUgY2Fu
IGJlIG1hbnkgcmVhc29ucyB3aHkgYSBHQ0MgYmFja2VuZCBkZWNpZGVzIHRvIGNhbGwgYSBsaWJn
Y2MNCj4gPiByb3V0aW5lLiAgRm9yIF9fdWRpdmRpMyBvbiAtbTMyIHJzNjAwMCB5b3UnbGwgYmUg
Z29vZCBBRkFJQ1MgOi0pDQo+ID4gKGJ1dCBwb2lzb25pbmcgZnVuY3Rpb25zIGxpa2UgeW91IGRv
IGlzIGEgdGVycmlibGUgaWRlYSBpbiBnZW5lcmFsISkNCj4gDQo+IFdob29wc2llLCBJIGZvcmdv
dCB0byBtZW50aW9uOg0KPiANCj4gQXBwcm92ZWQgZm9yIHRydW5rLg0KDQpVZ2gsIGZvciBzb21l
IHJlYXNvbiBJIHRob3VnaHQgdGhpcyBpcyBhIEdDQyBwYXRjaCA6LSgNCg0KDQpTZWdoZXINCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
