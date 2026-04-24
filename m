Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gN2NLRmI72mwCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:00:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 335DE475D84
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:00:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3ECEA406AA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 16:00:24 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by lists.linaro.org (Postfix) with ESMTP id BA49F3F796
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 11:55:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (localhost [127.0.0.1])
	by gate.crashing.org (8.18.1/8.18.1/Debian-2) with ESMTP id 63OBs8ib185599;
	Fri, 24 Apr 2026 06:54:08 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.18.1/8.18.1/Submit) id 63OBs5hd185566;
	Fri, 24 Apr 2026 06:54:05 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 24 Apr 2026 06:54:05 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>
Message-ID: <aetZ3VX_Y9sop-SO@gate>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260424054742.45832-6-mkchauras@gmail.com>
X-Spamd-Bar: --
X-MailFrom: segher@kernel.crashing.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NGZWLEFYCWWKRERN5XVO75KG7L2NT6ID
X-Message-ID-Hash: NGZWLEFYCWWKRERN5XVO75KG7L2NT6ID
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:59:55 +0000
CC: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev, Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NGZWLEFYCWWKRERN5XVO75KG7L2NT6ID/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 335DE475D84
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

SGkhDQoNCk9uIEZyaSwgQXByIDI0LCAyMDI2IGF0IDExOjE3OjQwQU0gKzA1MzAsIE11a2VzaCBL
dW1hciBDaGF1cmFzaXlhIChJQk0pIHdyb3RlOg0KPiBUaGUgY29yZSBjcmF0ZSBjdXJyZW50bHkg
ZGVwZW5kcyBvbiB0aGVzZSB0d28gZnVuY3Rpb25zIGZvciBpNjQvdTY0Lw0KPiBpMTI4L3UxMjgv
Y29yZTo6dGltZTo6RHVyYXRpb24gZm9ybWF0dGluZywgYnV0IHdlIHNob3VsZG7igJl0IHVzZSB0
aGF0IGluDQo+IHRoZSBrZXJuZWwgc28gbGV04oCZcyBwYW5pYyBpZiB0aGV5IGFyZSBldmVyIGNh
bGxlZC4NCj4gDQo+IFRoaXMgZG9lc27igJl0IHlldCBmaXggZHJtX3BhbmljX3FyLnJzLCB3aGlj
aCBhbHNvIHVzZXMgX191ZGl2ZGkzIHdoZW4NCj4gQ09ORklHX0NDX09QVElNSVpFX0ZPUl9TSVpF
PXksIGJ1dCBhdCBsZWFzdCBtYWtlcyB0aGUgcmVzdCBvZiB0aGUga2VybmVsDQo+IGJ1aWxkIG9u
IFBQQzMyLg0KDQpHQ0MgdXNlcyBjYWxscyB0byBmdW5jdGlvbnMgbGlrZSBldmVuIF9fYWRkc2kz
IHdoZW5ldmVyIHRoZSAoc3ViLSl0YXJnZXQNCmRvZXMgbm90IGltcGxlbWVudCBzb21lIFJUTCwg
ZG9lc24ndCBoYXZlIGEgZGVmaW5lX2luc24gYW5kIHRoZSBsaWtlIGZvcg0KaXQuICBXaGVuIHlv
dSB3cml0ZSBhIG5ldyBwb3J0IHlvdSBvbmx5ICpoYXZlKiB0byBpbXBsZW1lbnQgYSB2ZXJ5IGZl
dw0KdGhpbmdzLCB0aGUgcmVzdCBpcyBkb25lIGluIGxpYmdjYyAoeW91IG1pZ2h0IHN0aWxsIGhh
dmUgdG8gd3JpdGUgc29tZQ0Kb2YgdGhhdCBmb3IgeW91ciB0YXJnZXQsIG5vIGZyZWUgbHVuY2gg
ZXRjLikNCg0KMzItYml0IFBvd2VyUEMgaGFzIG5vIGluc3RydWN0aW9ucyBmb3IgNjQtYml0IGRp
dmlzaW9ucywgbm9yDQppbnN0cnVjdGlvbnMgdGhhdCBoZWxwIGltcGxlbWVudGluZyBpdCBpbiBz
b2Z0d2FyZS4gIEl0IHN0aWxsIHZlcnkgb2Z0ZW4NCmhlbHBzIHRvIGhhbmQtd3JpdGUgbWFjaGlu
ZSBjb2RlIGZvciBpdCwgaXQgdmVyeSBlYXNpbHkgY2FuIHVzdWFsbHkgYmUNCm1vcmUgdGhhbiB0
d2ljZSBhcyBmYXN0IGZvciBleGFtcGxlIChmb3IgZXhhbXBsZSBpZiB0aGUgZGl2aXNvciBpcyBs
ZXNzDQp0aGFuIGhhbGYgYSB3b3JkIGJpZywgdGhlIGNvbW1vbiBjYXNlIC0tIGl0IGNhbiBiZSBt
YWRlIHRlbnMgb2YgdGltZXMNCmZhc3RlciB0aGVuKS4NCg0KVGhlcmUgY2FuIGJlIG1hbnkgcmVh
c29ucyB3aHkgYSBHQ0MgYmFja2VuZCBkZWNpZGVzIHRvIGNhbGwgYSBsaWJnY2MNCnJvdXRpbmUu
ICBGb3IgX191ZGl2ZGkzIG9uIC1tMzIgcnM2MDAwIHlvdSdsbCBiZSBnb29kIEFGQUlDUyA6LSkN
CihidXQgcG9pc29uaW5nIGZ1bmN0aW9ucyBsaWtlIHlvdSBkbyBpcyBhIHRlcnJpYmxlIGlkZWEg
aW4gZ2VuZXJhbCEpDQoNCg0KU2VnaGVyDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
