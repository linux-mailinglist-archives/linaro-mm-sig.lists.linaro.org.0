Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOs4H+f04GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:40:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F3640FAC6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:40:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE7FF404DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:40:37 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id F084D3F750
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Oct 2025 08:16:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=hJhEqsul;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4cqpDG2hBnz9vCS;
	Mon, 20 Oct 2025 10:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1760948190; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FHkUF9I8XPrkEDAfHoooluy54np847b+w31rMFkELbM=;
	b=hJhEqsuldMq9F4+1DoaoG5GwLSPM/6KpRsZBoOv5/BBP96tFIoYNuNosrajwkVuD/GMhFn
	N7aPlAnMJBYdyoCLgOwT4l70TjzQ9ZYbUFxdaGzftZeCIQeASja27Z3zrpka0GsSYzQl0U
	C4Lz9qEeguC07xDScQ/tQBb1f+w1lW9R9A3VhUzCmQ0WyJQj0++H6M51AumQlWM5xuwgfd
	+xLD+wdrMR/+LqNIPP9p8nrt6njleGJVGyX7fBkOlHJJASLYVKvHjZe4s3MFOqq6gWKnXw
	mdT4bHtLgU7ZJGDkfJTzFP7UQBvfHqilLvEyH0gxxWpBUKp0ls06NNJZrKRk8g==
Message-ID: <7b53f502aa0eaee4ffe4350621ddbcbfaafcad06.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Matthew Brost <matthew.brost@intel.com>, Philipp Stanner
 <phasta@kernel.org>
Date: Mon, 20 Oct 2025 10:16:23 +0200
In-Reply-To: <aPK04r1E7IbAZ9QY@lstrano-desk.jf.intel.com>
References: <20251017093146.169996-2-phasta@kernel.org>
	 <aPK04r1E7IbAZ9QY@lstrano-desk.jf.intel.com>
MIME-Version: 1.0
X-MBO-RS-META: ckzj76w7pqjppcm86u6bngsnw17nh93a
X-MBO-RS-ID: 9e37c173e6de09cda77
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6QGQYGC5LEVHBTD5RYJSGHR2QOEQSWKS
X-Message-ID-Hash: 6QGQYGC5LEVHBTD5RYJSGHR2QOEQSWKS
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:40:33 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, tursulin@ursulin.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [RFC PATCH] dma-fence: Remove 64-bit flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6QGQYGC5LEVHBTD5RYJSGHR2QOEQSWKS/>
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
	DATE_IN_PAST(1.00)[4278];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mailbox.org:mid]
X-Rspamd-Queue-Id: 03F3640FAC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI1LTEwLTE3IGF0IDE0OjI4IC0wNzAwLCBNYXR0aGV3IEJyb3N0IHdyb3RlOg0K
PiBPbiBGcmksIE9jdCAxNywgMjAyNSBhdCAxMTozMTo0N0FNICswMjAwLCBQaGlsaXBwIFN0YW5u
ZXIgd3JvdGU6DQo+ID4gSXQgc2VlbXMgdGhhdCBETUFfRkVOQ0VfRkxBR19TRVFOTzY0X0JJVCBo
YXMgbm8gcmVhbCBlZmZlY3RzIGFueW1vcmUsDQo+ID4gc2luY2Ugc2Vxbm8gaXMgYSB1NjQgZXZl
cnl3aGVyZS4NCj4gPiANCj4gPiBSZW1vdmUgdGhlIHVubmVlZGVkIGZsYWcuDQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCj4gPiAt
LS0NCj4gPiBTZWVtcyB0byBtZSB0aGF0IHRoaXMgZmxhZyBkb2Vzbid0IHJlYWxseSBkbyBhbnl0
aGluZyBhbnltb3JlPw0KPiA+IA0KPiA+IEkgKnN1c3BlY3QqIHRoYXQgaXQgY291bGQgYmUgdGhh
dCBzb21lIGRyaXZlcnMgcGFzcyBhIHUzMiB0bw0KPiA+IGRtYV9mZW5jZV9pbml0KCk/IEkgZ3Vl
c3MgdGhleSBjb3VsZCBiZSBwb3J0ZWQsIGNvdWxkbid0IHRoZXkuDQo+ID4gDQo+IA0KPiBYZSB1
c2VzIDMyLWJpdCBoYXJkd2FyZSBmZW5jZSBzZXF1ZW5jZSBudW1iZXJz4oCUc2VlIFsxXSBhbmQg
WzJdLiBXZSBjb3VsZA0KPiBzd2l0Y2ggdG8gNjQtYml0IGhhcmR3YXJlIGZlbmNlIHNlcXVlbmNl
IG51bWJlcnMsIGJ1dCB0aGF0IHdvdWxkIHJlcXVpcmUNCj4gY2hhbmdlcyBvbiB0aGUgZHJpdmVy
IHNpZGUuIElmIHlvdSBzZW50IHRoaXMgdG8gb3VyIENJLCBJ4oCZbSBmYWlybHkNCj4gY2VydGFp
biB3ZeKAmWQgc2VlIGEgYnVuY2ggb2YgZmFpbHVyZXMuIEkgc3VzcGVjdCB0aGlzIHdvdWxkIGFs
c28gYnJlYWsNCj4gc2V2ZXJhbCBvdGhlciBkcml2ZXJzLg0KDQpXaGF0IGV4YWN0bHkgYnJlYWtz
PyBIZWxwIG1lIG91dCBoZXJlOyBpZiB5b3UgcGFzcyBhIHUzMiBmb3IgYSB1NjQsDQpkb2Vzbid0
IHRoZSBDIHN0YW5kYXJkIGd1YXJhbnRlZSB0aGF0IHRoZSBoaWdoZXIsIHVudXNlZCAzMiBiaXRz
IHdpbGwNCmJlIDA/DQoNCkJlY2F1c2UgdGhlIG9ubHkgdGhpbmcgdGhlIGZsYWcgc3RpbGwgZG9l
cyBpcyBkbyB0aGlzIGxvd2VyXzMyIGNoZWNrIGluDQpmZW5jZV9pc19sYXRlci4NCg0KUC4NCg0K
PiANCj4gQXMgSSBtZW50aW9uZWQsIGFsbCBYZS1zdXBwb3J0ZWQgcGxhdGZvcm1zIGNvdWxkIGJl
IHVwZGF0ZWQgc2luY2UgdGhlaXINCj4gcmluZ3Mgc3VwcG9ydCA2NC1iaXQgc3RvcmUgaW5zdHJ1
Y3Rpb25zLiBIb3dldmVyLCBJIHN1c3BlY3QgdGhhdCB2ZXJ5DQo+IG9sZCBpOTE1IHBsYXRmb3Jt
cyBkb27igJl0IHN1cHBvcnQgc3VjaCBpbnN0cnVjdGlvbnMgaW4gdGhlIHJpbmcuIEkgYWdyZWUN
Cj4gdGhpcyBpcyBhIGxlZ2FjeSBpc3N1ZSwgYW5kIHdlIHNob3VsZCBwcm9iYWJseSB1c2UgNjQt
Yml0IHNlcXVlbmNlDQo+IG51bWJlcnMgaW4gWGUuIEJ1dCBhZ2FpbiwgcGxhdGZvcm1zIGFuZCBk
cml2ZXJzIHRoYXQgYXJlIGRlY2FkZXMgb2xkDQo+IG1pZ2h0IGJyZWFrIGFzIGEgcmVzdWx0Lg0K
PiANCj4gTWF0dA0KPiANCj4gWzFdIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2
LjE3LjEvc291cmNlL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9od19mZW5jZS5jI0wyNjQNCj4gWzJd
IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE3LjEvc291cmNlL2RyaXZlcnMv
Z3B1L2RybS94ZS94ZV9od19mZW5jZV90eXBlcy5oI0w1MQ0KPiANCj4gPiBQLg0KPiA+IC0tLQ0K
PiA+IMKgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHzCoCAzICstLQ0KPiA+IMKgaW5jbHVk
ZS9saW51eC9kbWEtZmVuY2UuaMKgwqAgfCAxMCArLS0tLS0tLS0tDQo+ID4gwqAyIGZpbGVzIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYw0KPiA+IGluZGV4IDNmNzhjNTZiNThkYy4uMjQ3OTRjMDI3ODEzIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYw0KPiA+IEBAIC0xMDc4LDggKzEwNzgsNyBAQCB2b2lkDQo+ID4gwqBk
bWFfZmVuY2VfaW5pdDY0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1h
X2ZlbmNlX29wcyAqb3BzLA0KPiA+IMKgCQkgc3BpbmxvY2tfdCAqbG9jaywgdTY0IGNvbnRleHQs
IHU2NCBzZXFubykNCj4gPiDCoHsNCj4gPiAtCV9fZG1hX2ZlbmNlX2luaXQoZmVuY2UsIG9wcywg
bG9jaywgY29udGV4dCwgc2Vxbm8sDQo+ID4gLQkJCSBCSVQoRE1BX0ZFTkNFX0ZMQUdfU0VRTk82
NF9CSVQpKTsNCj4gPiArCV9fZG1hX2ZlbmNlX2luaXQoZmVuY2UsIG9wcywgbG9jaywgY29udGV4
dCwgc2Vxbm8sIDApOw0KPiA+IMKgfQ0KPiA+IMKgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfaW5p
dDY0KTsNCj4gPiDCoA0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5o
IGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiA+IGluZGV4IDY0NjM5ZTEwNDExMC4uNGVj
YTJkYjI4NjI1IDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4g
PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+ID4gQEAgLTk4LDcgKzk4LDYgQEAg
c3RydWN0IGRtYV9mZW5jZSB7DQo+ID4gwqB9Ow0KPiA+IMKgDQo+ID4gwqBlbnVtIGRtYV9mZW5j
ZV9mbGFnX2JpdHMgew0KPiA+IC0JRE1BX0ZFTkNFX0ZMQUdfU0VRTk82NF9CSVQsDQo+ID4gwqAJ
RE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULA0KPiA+IMKgCURNQV9GRU5DRV9GTEFHX1RJTUVT
VEFNUF9CSVQsDQo+ID4gwqAJRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsDQo+ID4g
QEAgLTQ3MCwxNCArNDY5LDcgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKQ0KPiA+IMKgICovDQo+ID4gwqBzdGF0aWMgaW5saW5lIGJvb2wgX19kbWFfZmVu
Y2VfaXNfbGF0ZXIoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHU2NCBmMSwgdTY0IGYyKQ0KPiA+
IMKgew0KPiA+IC0JLyogVGhpcyBpcyBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0eSB3aXRoIGRy
aXZlcnMgd2hpY2ggY2FuIG9ubHkgaGFuZGxlDQo+ID4gLQkgKiAzMmJpdCBzZXF1ZW5jZSBudW1i
ZXJzLiBVc2UgYSA2NGJpdCBjb21wYXJlIHdoZW4gdGhlIGRyaXZlciBzYXlzIHRvDQo+ID4gLQkg
KiBkbyBzby4NCj4gPiAtCSAqLw0KPiA+IC0JaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NF
UU5PNjRfQklULCAmZmVuY2UtPmZsYWdzKSkNCj4gPiAtCQlyZXR1cm4gZjEgPiBmMjsNCj4gPiAt
DQo+ID4gLQlyZXR1cm4gKGludCkobG93ZXJfMzJfYml0cyhmMSkgLSBsb3dlcl8zMl9iaXRzKGYy
KSkgPiAwOw0KPiA+ICsJcmV0dXJuIGYxID4gZjI7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiDCoC8q
Kg0KPiA+IC0tIA0KPiA+IDIuNDkuMA0KPiA+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
