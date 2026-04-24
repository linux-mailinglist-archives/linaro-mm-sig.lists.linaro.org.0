Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yI/DEQWI72mtCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:00:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E02A0475D0A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:00:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0555406C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 16:00:03 +0000 (UTC)
Received: from luna.linkmauve.fr (82-65-109-163.subs.proxad.net [82.65.109.163])
	by lists.linaro.org (Postfix) with ESMTPS id 7F52740178
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 09:43:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of linkmauve@linkmauve.fr designates 82.65.109.163 as permitted sender) smtp.mailfrom=linkmauve@linkmauve.fr
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id AD74AF4089F; Fri, 24 Apr 2026 11:43:11 +0200 (CEST)
Date: Fri, 24 Apr 2026 11:43:11 +0200
From: Link Mauve <linkmauve@linkmauve.fr>
To: David Laight <david.laight.linux@gmail.com>
Message-ID: <aes7L3M1d_LvvGKa@luna>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
 <20260424101425.6bde0e17@pumpkin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260424101425.6bde0e17@pumpkin>
Jabber-ID: linkmauve@linkmauve.fr
X-Spamd-Bar: --
X-MailFrom: linkmauve@linkmauve.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XGHA66OFU4QXD5G4657U3GM5U6IK5TY4
X-Message-ID-Hash: XGHA66OFU4QXD5G4657U3GM5U6IK5TY4
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:59:52 +0000
CC: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>, maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev, Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XGHA66OFU4QXD5G4657U3GM5U6IK5TY4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: E02A0475D0A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[78];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linkmauve.fr];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[38];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.966];
	FROM_NEQ_ENVFROM(0.00)[linkmauve@linkmauve.fr,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.ibm.com,ellerman.id.au,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,linkmauve.fr];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linkmauve.fr:email,linaro.org:email]

T24gRnJpLCBBcHIgMjQsIDIwMjYgYXQgMTA6MTQ6MjVBTSArMDEwMCwgRGF2aWQgTGFpZ2h0IHdy
b3RlOg0KPiBPbiBGcmksIDI0IEFwciAyMDI2IDExOjE3OjQwICswNTMwDQo+ICJNdWtlc2ggS3Vt
YXIgQ2hhdXJhc2l5YSAoSUJNKSIgPG1rY2hhdXJhc0BnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g
PiBGcm9tOiBMaW5rIE1hdXZlIDxsaW5rbWF1dmVAbGlua21hdXZlLmZyPg0KPiA+IA0KPiA+IFRo
ZSBjb3JlIGNyYXRlIGN1cnJlbnRseSBkZXBlbmRzIG9uIHRoZXNlIHR3byBmdW5jdGlvbnMgZm9y
IGk2NC91NjQvDQo+ID4gaTEyOC91MTI4L2NvcmU6OnRpbWU6OkR1cmF0aW9uIGZvcm1hdHRpbmcs
IGJ1dCB3ZSBzaG91bGRu4oCZdCB1c2UgdGhhdCBpbg0KPiA+IHRoZSBrZXJuZWwgc28gbGV04oCZ
cyBwYW5pYyBpZiB0aGV5IGFyZSBldmVyIGNhbGxlZC4NCj4gDQo+IFVnZy4NCj4gU3VyZWx5IHlv
dSBjYW4gbWFrZSBpdCBhIGxpbmstdGltZSBmYWlsdXJlPw0KPiBPciBjaGFuZ2UgdGhlIHVuZGVy
bHlpbmcgY29kZSB0byBhdm9pZCB0aGUgZGl2aWRlLg0KDQpUaGlzIGlzIGN1cnJlbnRseSBhIGxp
bmstdGltZSBmYWlsdXJlLCB3aGljaCBtZWFucyBpZiBhbnkgb2YgdGhlIGNvcmUNCmNyYXRlIG9y
IGRybV9wYW5pY19xciBhcmUgbGlua2VkIGluLCB0aGUga2VybmVsIHdpbGwgZmFpbCB0byBsaW5r
Lg0KDQpBbmQgc2luY2Ugd2UgcmVseSBvbiBjb3JlLCB0aGF0IG1lYW5zIG5vIGtlcm5lbCBjYW4g
YmUgYnVpbHQgb24gUG93ZXJQQw0Kd2l0aG91dCB0aGlzIHBhdGNoLg0KDQpBIHBvc3NpYmxlIHNv
bHV0aW9uIHdvdWxkIGJlIHRvIGNoYW5nZSB0aGUgY29yZSBjcmF0ZSB0byBub3QgZGl2aWRlDQp1
NjRzLCBidXQgdGhlIGxhc3QgdGltZSBJIHRyaWVkIHRvIGRvIHRoYXQgSSBjb3VsZG7igJl0IHF1
aXRlIGZpZ3VyZSBvdXQNCmhvdyB0byBkbyBmb3JtYXR0aW5nIHdpdGhvdXQgaXQsIG1heWJlIEkg
d2lsbCBqdXN0IG9wZW4gYW4gaXNzdWUgYWdhaW5zdA0KUnVzdC4NCg0KPiANCj4gCURhdmlkDQo+
IA0KPiA+IA0KPiA+IFRoaXMgZG9lc27igJl0IHlldCBmaXggZHJtX3BhbmljX3FyLnJzLCB3aGlj
aCBhbHNvIHVzZXMgX191ZGl2ZGkzIHdoZW4NCj4gPiBDT05GSUdfQ0NfT1BUSU1JWkVfRk9SX1NJ
WkU9eSwgYnV0IGF0IGxlYXN0IG1ha2VzIHRoZSByZXN0IG9mIHRoZSBrZXJuZWwNCj4gPiBidWls
ZCBvbiBQUEMzMi4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBMaW5rIE1hdXZlIDxsaW5rbWF1
dmVAbGlua21hdXZlLmZyPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE11a2VzaCBLdW1hciBDaGF1cmFz
aXlhIChJQk0pIDxta2NoYXVyYXNAZ21haWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBydXN0L01ha2Vm
aWxlICAgICAgICAgICAgIHwgNCArKysrDQo+ID4gIHJ1c3QvY29tcGlsZXJfYnVpbHRpbnMucnMg
fCA2ICsrKysrKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvcnVzdC9NYWtlZmlsZSBiL3J1c3QvTWFrZWZpbGUNCj4gPiBpbmRl
eCAyYTU0MjhhNTUwM2QuLmVlMTFmYmE3YTAzZCAxMDA2NDQNCj4gPiAtLS0gYS9ydXN0L01ha2Vm
aWxlDQo+ID4gKysrIGIvcnVzdC9NYWtlZmlsZQ0KPiA+IEBAIC02MTYsNiArNjE2LDEwIEBAIGlm
bmVxICgkKG9yICQoQ09ORklHX0FSTTY0KSwkKGFuZCAkKENPTkZJR19SSVNDViksJChDT05GSUdf
NjRCSVQpKSksKQ0KPiA+ICAJCV9fYXNocnRpMyBcDQo+ID4gIAkJX19hc2hsdGkzIF9fbHNocnRp
Mw0KPiA+ICBlbmRpZg0KPiA+ICtpZmRlZiBDT05GSUdfUFBDMzINCj4gPiArCXJlZGlyZWN0LWlu
dHJpbnNpY3MgKz0gXA0KPiA+ICsJCV9fdWRpdmRpMyBfX3Vtb2RkaTMNCj4gPiArZW5kaWYNCj4g
PiAgDQo+ID4gIGlmZGVmIENPTkZJR19NT0RWRVJTSU9OUw0KPiA+ICBjbWRfZ2VuZHdhcmZrc3lt
cyA9ICQoaWYgJChza2lwX2dlbmR3YXJma3N5bXMpLCwgXA0KPiA+IGRpZmYgLS1naXQgYS9ydXN0
L2NvbXBpbGVyX2J1aWx0aW5zLnJzIGIvcnVzdC9jb21waWxlcl9idWlsdGlucy5ycw0KPiA+IGlu
ZGV4IGRkMTZjMWRjODk5Yy4uZmM2YjU0NjM2ZGQ1IDEwMDY0NA0KPiA+IC0tLSBhL3J1c3QvY29t
cGlsZXJfYnVpbHRpbnMucnMNCj4gPiArKysgYi9ydXN0L2NvbXBpbGVyX2J1aWx0aW5zLnJzDQo+
ID4gQEAgLTk3LDUgKzk3LDExIEBAIHB1YiBleHRlcm4gIkMiIGZuICRpZGVudCgpIHsNCj4gPiAg
ICAgIF9fYWVhYmlfdWxkaXZtb2QsDQo+ID4gIH0pOw0KPiA+ICANCj4gPiArI1tjZmcodGFyZ2V0
X2FyY2ggPSAicG93ZXJwYyIpXQ0KPiA+ICtkZWZpbmVfcGFuaWNraW5nX2ludHJpbnNpY3MhKCJg
dTY0YCBkaXZpc2lvbi9tb2R1bG8gc2hvdWxkIG5vdCBiZSB1c2VkIiwgew0KPiA+ICsgICAgX191
ZGl2ZGkzLA0KPiA+ICsgICAgX191bW9kZGkzLA0KPiA+ICt9KTsNCj4gPiArDQo+ID4gIC8vIE5P
VEU6IGlmIHlvdSBhcmUgYWRkaW5nIGEgbmV3IGludHJpbnNpYyBoZXJlLCB5b3Ugc2hvdWxkIGFs
c28gYWRkIGl0IHRvDQo+ID4gIC8vIGByZWRpcmVjdC1pbnRyaW5zaWNzYCBpbiBgcnVzdC9NYWtl
ZmlsZWAuDQo+IA0KPiANCg0KLS0gDQpMaW5rIE1hdXZlDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
