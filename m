Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIQjMOUR4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:44:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 69139411E48
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:44:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C44444FD0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:44:20 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 5F41F3F795
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Feb 2026 07:33:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=rxb1qJ6e;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4fDvdc2cFkz9tWn;
	Mon, 16 Feb 2026 08:33:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1771227204; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uASRMdbfWoss+hAxMXx9qtV27gkLmxIAGydsFqOR5Eo=;
	b=rxb1qJ6eW/dtwIaYEUCyUVw4B9hui+MR0ZhX2rsHqOdWUBBNDomjV+Aol6lzYv/0pb/amw
	YTWkr91GQGd3K2WOwhaChwxRSGpg7iFX5oQNa1q+tw55LAkK8sbqGKijAweRvxuEr0FmbS
	KgKfPFS2WKBZmn0ewNRv+wGv95CjMt87nfuOAP2QAkh7CxBvBvVuaups3go+B+l7phpzZ/
	8S2//yeBOZJ9AwqM6ErdrK4t9JOVBwD2hnDvmVJkiFBm+mLRQi3KdRBGHJMylw1DJsCyxr
	BEGc5YugjMvh7Dh/f0NE7I/KMG+OcGS3D0S4lQ+diJQFbk3vlj0hPjfuZ0n5SQ==
Message-ID: <668921abf453f3cb65aca13a9c06e8c81c46a411.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Boris Brezillon <boris.brezillon@collabora.com>, Christian
 =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 16 Feb 2026 08:33:21 +0100
In-Reply-To: <20260213152733.36789fa2@fedora>
References: <20260210102232.1642-1-christian.koenig@amd.com>
	 <20260210102232.1642-5-christian.koenig@amd.com>
	 <20260213152733.36789fa2@fedora>
MIME-Version: 1.0
X-MBO-RS-META: tqozzon3qh7t6crug95y716okyph686y
X-MBO-RS-ID: 3ee4d0bf4dda64aaa30
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IUXMAWK63RN47GRQBQTHGMTNYHOAXSEC
X-Message-ID-Hash: IUXMAWK63RN47GRQBQTHGMTNYHOAXSEC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:26 +0000
CC: matthew.brost@intel.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] dma-buf: inline spinlock for fence protection v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IUXMAWK63RN47GRQBQTHGMTNYHOAXSEC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[1425];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,gmail.com];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,mailbox.org:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns];
	NEURAL_HAM(-0.00)[-0.887];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org]
X-Rspamd-Queue-Id: 69139411E48
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTAyLTEzIGF0IDE1OjI3ICswMTAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6
DQo+IE9uIFR1ZSwgMTAgRmViIDIwMjYgMTE6MDE6NTkgKzAxMDANCj4gIkNocmlzdGlhbiBLw7Zu
aWciIDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPiA+IElt
cGxlbWVudCBwZXItZmVuY2Ugc3BpbmxvY2tzLCBhbGxvd2luZyBpbXBsZW1lbnRhdGlvbnMgdG8g
bm90IGdpdmUgYW4NCj4gPiBleHRlcm5hbCBzcGlubG9jayB0byBwcm90ZWN0IHRoZSBmZW5jZSBp
bnRlcm5hbCBzdGF0ZWkuIEluc3RlYWQgYSBzcGlubG9jaw0KPiA+IGVtYmVkZGVkIGludG8gdGhl
IGZlbmNlIHN0cnVjdHVyZSBpdHNlbGYgaXMgdXNlZCBpbiB0aGlzIGNhc2UuDQo+ID4gDQo+ID4g
U2hhcmVkIHNwaW5sb2NrcyBoYXZlIHRoZSBwcm9ibGVtIHRoYXQgaW1wbGVtZW50YXRpb25zIG5l
ZWQgdG8gZ3VhcmFudGVlDQo+ID4gdGhhdCB0aGUgbG9jayBsaXZlIGF0IGxlYXN0IGFzIGxvbmcg
YWxsIGZlbmNlcyByZWZlcmVuY2luZyB0aGVtLg0KPiA+IA0KPiA+IFVzaW5nIGEgcGVyLWZlbmNl
IHNwaW5sb2NrIGFsbG93cyBjb21wbGV0ZWx5IGRlY291cGxpbmcgc3BpbmxvY2sgcHJvZHVjZXIN
Cj4gPiBhbmQgY29uc3VtZXIgbGlmZSB0aW1lcywgc2ltcGxpZnlpbmcgdGhlIGhhbmRsaW5nIGlu
IG1vc3QgdXNlIGNhc2VzLg0KPiA+IA0KPiA+IHYyOiBpbXByb3ZlIG5hbWluZywgY292ZXJhZ2Ug
YW5kIGZ1bmN0aW9uIGRvY3VtZW50YXRpb24NCj4gPiB2MzogZml4IG9uZSBhZGRpdGlvbmFsIGxv
Y2tpbmcgaW4gdGhlIHNlbGZ0ZXN0cw0KPiA+IHY0OiBzZXBhcmF0ZSBvdXQgc29tZSBjaGFuZ2Vz
IHRvIG1ha2UgdGhlIHBhdGNoIHNtYWxsZXIsDQo+ID4gwqDCoMKgIGZpeCBvbmUgYW1kZ3B1IGNy
YXNoIGZvdW5kIGJ5IENJIHN5c3RlbXMNCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyMSArKysr
KysrKysrKysrKysrLS0tLS0NCj4gPiDCoGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfdm0uaMKgIHzCoCAyICstDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vZHJtX2Ny
dGMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstDQo+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vZHJtX3dyaXRlYmFjay5jwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQ0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jIHzCoCAzICsrLQ0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jwqDCoMKgwqDCoMKgIHzCoCAzICsrLQ0KPiA+
IMKgZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfZmVuY2UuY8KgwqAgfMKgIDMgKystDQo+
ID4gwqBkcml2ZXJzL2dwdS9kcm0veGUveGVfaHdfZmVuY2UuY8KgwqDCoMKgwqDCoMKgIHzCoCAz
ICsrLQ0KPiA+IMKgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfCAxOSArKysrKysrKysrKysrLS0tLS0tDQo+ID4gwqAxMCBmaWxlcyBjaGFuZ2Vk
LCA0MSBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jDQo+ID4gaW5kZXggNTZhYTU5ODY3ZWFhLi4xODMzODg5ZTc0NjYgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jDQo+ID4gQEAgLTM0Myw3ICszNDMsNiBAQCB2b2lkIF9fZG1hX2ZlbmNlX21p
Z2h0X3dhaXQodm9pZCkNCj4gPiDCoH0NCj4gPiDCoCNlbmRpZg0KPiA+IMKgDQo+ID4gLQ0KPiA+
IMKgLyoqDQo+ID4gwqAgKiBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQgLSBzaWdu
YWwgY29tcGxldGlvbiBvZiBhIGZlbmNlDQo+ID4gwqAgKiBAZmVuY2U6IHRoZSBmZW5jZSB0byBz
aWduYWwNCj4gPiBAQCAtMTA2Nyw3ICsxMDY2LDYgQEAgc3RhdGljIHZvaWQNCj4gPiDCoF9fZG1h
X2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVu
Y2Vfb3BzICpvcHMsDQo+ID4gwqAJwqDCoMKgwqDCoMKgwqDCoCBzcGlubG9ja190ICpsb2NrLCB1
NjQgY29udGV4dCwgdTY0IHNlcW5vLCB1bnNpZ25lZCBsb25nIGZsYWdzKQ0KPiA+IMKgew0KPiA+
IC0JQlVHX09OKCFsb2NrKTsNCj4gPiDCoAlCVUdfT04oIW9wcyB8fCAhb3BzLT5nZXRfZHJpdmVy
X25hbWUgfHwgIW9wcy0+Z2V0X3RpbWVsaW5lX25hbWUpOw0KPiA+IMKgDQo+ID4gwqAJa3JlZl9p
bml0KCZmZW5jZS0+cmVmY291bnQpOw0KPiA+IEBAIC0xMDc4LDEwICsxMDc2LDE1IEBAIF9fZG1h
X2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVu
Y2Vfb3BzICpvcHMsDQo+ID4gwqAJICovDQo+ID4gwqAJUkNVX0lOSVRfUE9JTlRFUihmZW5jZS0+
b3BzLCBvcHMpOw0KPiA+IMKgCUlOSVRfTElTVF9IRUFEKCZmZW5jZS0+Y2JfbGlzdCk7DQo+ID4g
LQlmZW5jZS0+bG9jayA9IGxvY2s7DQo+ID4gwqAJZmVuY2UtPmNvbnRleHQgPSBjb250ZXh0Ow0K
PiA+IMKgCWZlbmNlLT5zZXFubyA9IHNlcW5vOw0KPiA+IMKgCWZlbmNlLT5mbGFncyA9IGZsYWdz
IHwgQklUKERNQV9GRU5DRV9GTEFHX0lOSVRJQUxJWkVEX0JJVCk7DQo+ID4gKwlpZiAobG9jaykg
ew0KPiA+ICsJCWZlbmNlLT5leHRlcm5fbG9jayA9IGxvY2s7DQo+ID4gKwl9IGVsc2Ugew0KPiA+
ICsJCXNwaW5fbG9ja19pbml0KCZmZW5jZS0+aW5saW5lX2xvY2spOw0KPiA+ICsJCWZlbmNlLT5m
bGFncyB8PSBCSVQoRE1BX0ZFTkNFX0ZMQUdfSU5MSU5FX0xPQ0tfQklUKTsNCj4gDQo+IEhtLCBk
b2VzIHRoaXMgZXZlbiBtYWtlIGEgZGlmZmVyZW50IGluIHRlcm0gb2YgaW5zdHJ1Y3Rpb25zIHRv
IGNoZWNrIGZvcg0KPiBhIGJpdCBpbnN0ZWFkIG9mIGV4dGVybl9sb2NrID09IE5VTEw/IElmIG5v
dCwgSSdkIGJlIGluIGZhdm9yIG9mDQo+IGtpbGxpbmcgdGhpcyByZWR1bmRhbmN5IGFuZCBjaGVj
a2luZyBleHRlcm5fbG9jayBhZ2FpbnN0IE5VTEwgaW4NCj4gZG1hX2ZlbmNlX3NwaW5sb2NrKCku
DQoNCmV4dGVybl9sb2NrIGFuZCBpbmxpbmVfbG9jayBhcmUgYSB1bmlvbiwgc28gdGhleSBvdmVy
bGFwIGVhY2ggb3RoZXIuDQppbmxpbmVfbG9jayB3aWxsIG9ubHkgYmUgZXF1aXZhbGVudCB0byBh
bGwgemVyb3MgYWZ0ZXIgaW5pdGlhbGl6aW5nIGENCm5ldyBmZW5jZSB0byAwLg0KDQoNClAuDQoN
ClBTOiBDYW4geW91IHRlcm1pbmF0ZSBtZXNzYWdlcyBieSBhIGRlbGltaXRlciBvciBieSBjcm9w
cGluZz8gSSBnaXZlDQp0aGlzIHRpcCBzb21ldGltZXMsIGJlY2F1c2Ugb2Z0ZW4gdGhlIHJldmll
d2VyIGhhcyB0byBzY3JvbGwgZW1haWxzDQpkb3duIHRvIHRoZSBlbmQgdG8gc2VlIHdoZXRoZXIg
dGhlcmUgYXJlIGZ1cnRoZXIgY29tbWVudHMuIEkgdGVybWluYXRlDQpteSBtZXNzYWdlcyB3aXRo
ICJQLiIgZm9yIHRoYXQgcHVycG9zZSA7XQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
