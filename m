Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +ERkO+oR4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:44:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B8256411E50
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:44:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB86044FEE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:44:25 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id C94F03F7E6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Feb 2026 09:48:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=bCeF2KEg;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771235286;
	bh=iIEvNz79W3Gc+2Ria4HM539VpSXcxo0H+XPzxfA5D3E=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=bCeF2KEgF5cWxWzTJY74hqwP6EvGEOCRBnydy66AyQKVCPP4/1lY7kL8UBlHMyZb+
	 wndOIofEluq93Hi8EFVm9uZqKqIs7N+EN5XEGUyDTraey6XCPeOd26bEocXXsQC/6K
	 ihqpEkD+GdYozO1khMN2d9gdhc4jr+OB5e2uawHimwHZY9B2ZF0+IdMHROHldTjsDw
	 AKbfBNWHPbX0RPNXOAjj6ApL36nV02SDY6GVjX0hA8JhYiSfESfvEDotVN8MHB9JEQ
	 znO5bjxul2b0oa+faCFuNMwYf1Q+Gn4iuzvTZZ0W1vQtSnZ18/aRod1QdlLAYeJmYP
	 wl4D1l5rB/Osw==
Received: from fedora (unknown [IPv6:2a01:e0a:2c:6930:d919:a6e:5ea1:8a9f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BEAFF17E1517;
	Mon, 16 Feb 2026 10:48:05 +0100 (CET)
Date: Mon, 16 Feb 2026 10:48:01 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Philipp Stanner <phasta@mailbox.org>
Message-ID: <20260216104801.214f3b3c@fedora>
In-Reply-To: <668921abf453f3cb65aca13a9c06e8c81c46a411.camel@mailbox.org>
References: <20260210102232.1642-1-christian.koenig@amd.com>
	<20260210102232.1642-5-christian.koenig@amd.com>
	<20260213152733.36789fa2@fedora>
	<668921abf453f3cb65aca13a9c06e8c81c46a411.camel@mailbox.org>
Organization: Collabora
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6MDQXDZC2W325RMAMG5HXCGYSOWKIILP
X-Message-ID-Hash: 6MDQXDZC2W325RMAMG5HXCGYSOWKIILP
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:26 +0000
CC: phasta@kernel.org, Christian =?UTF-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>, matthew.brost@intel.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] dma-buf: inline spinlock for fence protection v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MDQXDZC2W325RMAMG5HXCGYSOWKIILP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[1422];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,intel.com,linaro.org,lists.freedesktop.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: B8256411E50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAxNiBGZWIgMjAyNiAwODozMzoyMSArMDEwMA0KUGhpbGlwcCBTdGFubmVyIDxwaGFz
dGFAbWFpbGJveC5vcmc+IHdyb3RlOg0KDQo+IE9uIEZyaSwgMjAyNi0wMi0xMyBhdCAxNToyNyAr
MDEwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiA+IE9uIFR1ZSwgMTAgRmViIDIwMjYgMTE6
MDE6NTkgKzAxMDANCj4gPiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNrb2VuaWcubGVpY2h0enVtZXJr
ZW5AZ21haWwuY29tPiB3cm90ZToNCj4gPiAgIA0KPiA+ID4gSW1wbGVtZW50IHBlci1mZW5jZSBz
cGlubG9ja3MsIGFsbG93aW5nIGltcGxlbWVudGF0aW9ucyB0byBub3QgZ2l2ZSBhbg0KPiA+ID4g
ZXh0ZXJuYWwgc3BpbmxvY2sgdG8gcHJvdGVjdCB0aGUgZmVuY2UgaW50ZXJuYWwgc3RhdGVpLiBJ
bnN0ZWFkIGEgc3BpbmxvY2sNCj4gPiA+IGVtYmVkZGVkIGludG8gdGhlIGZlbmNlIHN0cnVjdHVy
ZSBpdHNlbGYgaXMgdXNlZCBpbiB0aGlzIGNhc2UuDQo+ID4gPiANCj4gPiA+IFNoYXJlZCBzcGlu
bG9ja3MgaGF2ZSB0aGUgcHJvYmxlbSB0aGF0IGltcGxlbWVudGF0aW9ucyBuZWVkIHRvIGd1YXJh
bnRlZQ0KPiA+ID4gdGhhdCB0aGUgbG9jayBsaXZlIGF0IGxlYXN0IGFzIGxvbmcgYWxsIGZlbmNl
cyByZWZlcmVuY2luZyB0aGVtLg0KPiA+ID4gDQo+ID4gPiBVc2luZyBhIHBlci1mZW5jZSBzcGlu
bG9jayBhbGxvd3MgY29tcGxldGVseSBkZWNvdXBsaW5nIHNwaW5sb2NrIHByb2R1Y2VyDQo+ID4g
PiBhbmQgY29uc3VtZXIgbGlmZSB0aW1lcywgc2ltcGxpZnlpbmcgdGhlIGhhbmRsaW5nIGluIG1v
c3QgdXNlIGNhc2VzLg0KPiA+ID4gDQo+ID4gPiB2MjogaW1wcm92ZSBuYW1pbmcsIGNvdmVyYWdl
IGFuZCBmdW5jdGlvbiBkb2N1bWVudGF0aW9uDQo+ID4gPiB2MzogZml4IG9uZSBhZGRpdGlvbmFs
IGxvY2tpbmcgaW4gdGhlIHNlbGZ0ZXN0cw0KPiA+ID4gdjQ6IHNlcGFyYXRlIG91dCBzb21lIGNo
YW5nZXMgdG8gbWFrZSB0aGUgcGF0Y2ggc21hbGxlciwNCj4gPiA+IMKgwqDCoCBmaXggb25lIGFt
ZGdwdSBjcmFzaCBmb3VuZCBieSBDSSBzeXN0ZW1zDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gPiA+IC0t
LQ0KPiA+ID4gwqBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfCAyMSArKysrKysrKysrKysrKysrLS0tLS0NCj4gPiA+IMKgZHJpdmVycy9kbWEtYnVm
L3N5bmNfZGVidWcuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0NCj4gPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtLmjCoCB8wqAgMiArLQ0KPiA+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAy
ICstDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1fd3JpdGViYWNrLmPCoMKgwqDCoMKgwqDC
oMKgIHzCoCAyICstDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVu
Y2UuYyB8wqAgMyArKy0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5j
wqDCoMKgwqDCoMKgIHzCoCAzICsrLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Zt
d2dmeF9mZW5jZS5jwqDCoCB8wqAgMyArKy0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL3hlL3hl
X2h3X2ZlbmNlLmPCoMKgwqDCoMKgwqDCoCB8wqAgMyArKy0NCj4gPiA+IMKgaW5jbHVkZS9saW51
eC9kbWEtZmVuY2UuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxOSArKysrKysrKysr
KysrLS0tLS0tDQo+ID4gPiDCoDEwIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDE5
IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ID4gPiBpbmRleCA1
NmFhNTk4NjdlYWEuLjE4MzM4ODllNzQ2NiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
DQo+ID4gPiBAQCAtMzQzLDcgKzM0Myw2IEBAIHZvaWQgX19kbWFfZmVuY2VfbWlnaHRfd2FpdCh2
b2lkKQ0KPiA+ID4gwqB9DQo+ID4gPiDCoCNlbmRpZg0KPiA+ID4gwqANCj4gPiA+IC0NCj4gPiA+
IMKgLyoqDQo+ID4gPiDCoCAqIGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZCAtIHNp
Z25hbCBjb21wbGV0aW9uIG9mIGEgZmVuY2UNCj4gPiA+IMKgICogQGZlbmNlOiB0aGUgZmVuY2Ug
dG8gc2lnbmFsDQo+ID4gPiBAQCAtMTA2Nyw3ICsxMDY2LDYgQEAgc3RhdGljIHZvaWQNCj4gPiA+
IMKgX19kbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qgc3RydWN0
IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4gPiA+IMKgCcKgwqDCoMKgwqDCoMKgwqAgc3BpbmxvY2tf
dCAqbG9jaywgdTY0IGNvbnRleHQsIHU2NCBzZXFubywgdW5zaWduZWQgbG9uZyBmbGFncykNCj4g
PiA+IMKgew0KPiA+ID4gLQlCVUdfT04oIWxvY2spOw0KPiA+ID4gwqAJQlVHX09OKCFvcHMgfHwg
IW9wcy0+Z2V0X2RyaXZlcl9uYW1lIHx8ICFvcHMtPmdldF90aW1lbGluZV9uYW1lKTsNCj4gPiA+
IMKgDQo+ID4gPiDCoAlrcmVmX2luaXQoJmZlbmNlLT5yZWZjb3VudCk7DQo+ID4gPiBAQCAtMTA3
OCwxMCArMTA3NiwxNSBAQCBfX2RtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
LCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KPiA+ID4gwqAJICovDQo+ID4gPiDC
oAlSQ1VfSU5JVF9QT0lOVEVSKGZlbmNlLT5vcHMsIG9wcyk7DQo+ID4gPiDCoAlJTklUX0xJU1Rf
SEVBRCgmZmVuY2UtPmNiX2xpc3QpOw0KPiA+ID4gLQlmZW5jZS0+bG9jayA9IGxvY2s7DQo+ID4g
PiDCoAlmZW5jZS0+Y29udGV4dCA9IGNvbnRleHQ7DQo+ID4gPiDCoAlmZW5jZS0+c2Vxbm8gPSBz
ZXFubzsNCj4gPiA+IMKgCWZlbmNlLT5mbGFncyA9IGZsYWdzIHwgQklUKERNQV9GRU5DRV9GTEFH
X0lOSVRJQUxJWkVEX0JJVCk7DQo+ID4gPiArCWlmIChsb2NrKSB7DQo+ID4gPiArCQlmZW5jZS0+
ZXh0ZXJuX2xvY2sgPSBsb2NrOw0KPiA+ID4gKwl9IGVsc2Ugew0KPiA+ID4gKwkJc3Bpbl9sb2Nr
X2luaXQoJmZlbmNlLT5pbmxpbmVfbG9jayk7DQo+ID4gPiArCQlmZW5jZS0+ZmxhZ3MgfD0gQklU
KERNQV9GRU5DRV9GTEFHX0lOTElORV9MT0NLX0JJVCk7ICANCj4gPiANCj4gPiBIbSwgZG9lcyB0
aGlzIGV2ZW4gbWFrZSBhIGRpZmZlcmVudCBpbiB0ZXJtIG9mIGluc3RydWN0aW9ucyB0byBjaGVj
ayBmb3INCj4gPiBhIGJpdCBpbnN0ZWFkIG9mIGV4dGVybl9sb2NrID09IE5VTEw/IElmIG5vdCwg
SSdkIGJlIGluIGZhdm9yIG9mDQo+ID4ga2lsbGluZyB0aGlzIHJlZHVuZGFuY3kgYW5kIGNoZWNr
aW5nIGV4dGVybl9sb2NrIGFnYWluc3QgTlVMTCBpbg0KPiA+IGRtYV9mZW5jZV9zcGlubG9jaygp
LiAgDQo+IA0KPiBleHRlcm5fbG9jayBhbmQgaW5saW5lX2xvY2sgYXJlIGEgdW5pb24sIHNvIHRo
ZXkgb3ZlcmxhcCBlYWNoIG90aGVyLg0KPiBpbmxpbmVfbG9jayB3aWxsIG9ubHkgYmUgZXF1aXZh
bGVudCB0byBhbGwgemVyb3MgYWZ0ZXIgaW5pdGlhbGl6aW5nIGENCj4gbmV3IGZlbmNlIHRvIDAu
DQo+IA0KPiANCj4gUC4NCj4gDQo+IFBTOiBDYW4geW91IHRlcm1pbmF0ZSBtZXNzYWdlcyBieSBh
IGRlbGltaXRlciBvciBieSBjcm9wcGluZz8gSSBnaXZlDQo+IHRoaXMgdGlwIHNvbWV0aW1lcywg
YmVjYXVzZSBvZnRlbiB0aGUgcmV2aWV3ZXIgaGFzIHRvIHNjcm9sbCBlbWFpbHMNCj4gZG93biB0
byB0aGUgZW5kIHRvIHNlZSB3aGV0aGVyIHRoZXJlIGFyZSBmdXJ0aGVyIGNvbW1lbnRzLiBJIHRl
cm1pbmF0ZQ0KPiBteSBtZXNzYWdlcyB3aXRoICJQLiIgZm9yIHRoYXQgcHVycG9zZSA7XQ0KDQpJ
IHRlbmQgdG8gc3RyaXAgbWVzc2FnZXMgYW5kIHF1b3RlIG9ubHkgdGhlIGJpdHMgSSBjb21tZW50
IG9uLiBJIGdldA0KdGhpcyB0aW1lIEkgZGlkbid0LCBteSBiYWQuDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
