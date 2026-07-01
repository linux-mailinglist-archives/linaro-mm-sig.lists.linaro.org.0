Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sr7uIUS5RGpNzgoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 08:52:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A76D6EA597
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 08:52:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b="ZU/PqjLY";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A33C540CBA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2026 06:52:50 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 44355401F6
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 06:52:21 +0000 (UTC)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4gqrKt35VBz9vGl;
	Wed,  1 Jul 2026 08:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782888738; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h0T0Aq4D0iiGnKHiN1eZ2zLsHAfporMJTH+keDJMVT0=;
	b=ZU/PqjLYdUiPOLC1o1CHkNqnRWsWfDKu4PG7OskLcj4psHOOoQ0zBRYGw6Gze2a14/sl2U
	wHMDkln3I3IaRs48Ku4lCmfKS8/KJPIFxPKn/HpIRkzVVyYNWShBhB6ZCw36RxQJhmNEgr
	T4C1QUc50rAHX5pr+aLHYYkI6E8q7ca3/5ba7n1XnpCzewzYb1wnHTXXP230V9lIVXQxgn
	gLiBHCdH5bg1fdWbhQz5JPG06JLtuI6ZEXiQskFJS26aHDHA1SgATq9yELWzTCub2AEcC6
	pOPxortvAhMhqLo2gl1lKSfxpuxgW0ta4z/zQFopBf2arSLnrfQDl6xWUyG+vA==
Message-ID: <9650c30654db85e393217fde419a966d312e4a43.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Shahyan Soltani <shahyan.soltani@amd.com>, christian.koenig@amd.com,
	sumit.semwal@linaro.org
Date: Wed, 01 Jul 2026 08:52:15 +0200
In-Reply-To: <20260630160401.67544-1-shahyan.soltani@amd.com>
References: <20260630160401.67544-1-shahyan.soltani@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: ybe5otnm1fhe4joh9rh1ax17bud13fw4
X-MBO-RS-ID: e2417a6c4c1abfbbfb5
X-Spamd-Bar: ----
Message-ID-Hash: 423UBSFNS5QBHXNBB2QNNFPQJ4IYFTN6
X-Message-ID-Hash: 423UBSFNS5QBHXNBB2QNNFPQJ4IYFTN6
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH] dma_buf: change unsigned int and int types into size_t
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/423UBSFNS5QBHXNBB2QNNFPQJ4IYFTN6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:shahyan.soltani@amd.com,m:christian.koenig@amd.com,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,mailbox.org:mid,mailbox.org:from_mime,linaro.org:email,amd.com:email];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A76D6EA597

T24gVHVlLCAyMDI2LTA2LTMwIGF0IDEyOjA0IC0wNDAwLCBTaGFoeWFuIFNvbHRhbmkgd3JvdGU6
DQo+IFRoZSBudW1fZmVuY2VzLCBjb3VudCwgaSwgYW5kIGogdmFyaWFibGVzIGluIGRtYV9mZW5j
ZV9kZWR1cF9hcnJheSgpIGFuZA0KPiBfX2RtYV9mZW5jZV91bndyYXBfbWVyZ2UoKSBoYXZlIGlu
Y29uc2lzdGVudCBpbnRlZ2VyIHR5cGVzLCBtaXhpbmcgYm90aA0KPiB1bnNpZ25lZCBpbnQgYW5k
IGludC4NCj4gDQo+IFVzZSB0eXBlIHNpemVfdCBjb25zaXN0ZW50bHkgZm9yIHRoZXNlIGluc3Rl
YWQsIGFuZCB1cGRhdGUgdGhlIHJldHVybg0KPiB0eXBlIG9mIGRtYV9mZW5jZV9kZWR1cF9hcnJh
eSgpIGFjY29yZGluZ2x5Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogU2hhaHlhbiBTb2x0YW5pIDxz
aGFoeWFuLnNvbHRhbmlAYW1kLmNvbT4NCj4gU3VnZ2VzdGVkLWJ5OiBQaGlsaXBwIFN0YW5uZXIg
PHBoYXN0YUBtYWlsYm94Lm9yZz4NCg0KVGh4IGZvciBmaXhpbmcgdGhpcywgY29vbCB3b3JrDQoN
ClJldmlld2VkLWJ5OiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KDQo+IC0t
LQ0KPiBUaGUgcmVzdCBvZiB0aGUgc3Vic3lzdGVtcyAoZG1hX3Jlc3ZfcmVzZXJ2ZV9mZW5jZXMs
IGRybV9leGVjLCBkcm1fZ3B1dm0sDQo+IHhlLCBub3V2ZWF1LCBldGMpIHVzZXMgInVuc2lnbmVk
IGludCIgZm9yIG51bV9mZW5jZXMsIGZvciBleGFtcGxlIHRoZQ0KPiBhbWRncHUgY2FsbGVyIGlu
IGFtZGdwdV91c2VycV9mZW5jZS5jLg0KDQpZb3UgbWVudGlvbiB0aGF0IGJlY2F1c2UgeW91IGNh
bid0IC8gd29uJ3QgY2hhbmdlIHRoZW0/DQoNCk15IHN1Z2dlc3Rpb24gYWN0dWFsbHkgaGFzIGJl
ZW4gdG8gZ28gZm9yIGB1bnNpZ25lZCBpbnRgLiBDaHJpc3RpYW4NCm9waW5pb25lZCB0aGF0IGl0
IHNob3VsZCBiZSBzaXplX3QuIFNob3VsZG4ndCBiZSBhIGJpZyBkZWFsLCB0aG91Z2gsIG15DQpp
c3N1ZSB3YXMganVzdCB0aGUgcG9zc2liaWxpdHkgZm9yIG5lZ2F0aXZlIG51bWJlcnMuDQoNCkNo
cmlzdGlhbiwgd291bGQgaXQgYmUgYSBiaXQgYmV0dGVyIHRvIGJlIGNvbnNpc3RlbnQgd2l0aCB0
aGUgcGFydGllcw0KU2hheWFuIG1lbnRpb25zPw0KDQoNClAuDQoNCj4gDQo+IMKgZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYyB8IDggKysrKy0tLS0NCj4gwqBpbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS11bndyYXAuaMKgwqAgfCA2ICsrKystLQ0KPiDCoDIgZmlsZXMgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LXVud3JhcC5jDQo+IGluZGV4IDUzYmI0MGU3MGIyNy4uNjVlODdkMjYzYzNhIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQo+ICsrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCj4gQEAgLTkzLDkgKzkzLDkgQEAgc3RhdGljIGlu
dCBmZW5jZV9jbXAoY29uc3Qgdm9pZCAqX2EsIGNvbnN0IHZvaWQgKl9iKQ0KPiDCoCAqDQo+IMKg
ICogUmV0dXJuOiBOdW1iZXIgb2YgdW5pcXVlIGZlbmNlcyByZW1haW5pbmcgaW4gdGhlIGFycmF5
Lg0KPiDCoCAqLw0KPiAtaW50IGRtYV9mZW5jZV9kZWR1cF9hcnJheShzdHJ1Y3QgZG1hX2ZlbmNl
ICoqZmVuY2VzLCBpbnQgbnVtX2ZlbmNlcykNCj4gK3NpemVfdCBkbWFfZmVuY2VfZGVkdXBfYXJy
YXkoc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlcywgc2l6ZV90IG51bV9mZW5jZXMpDQo+IMKgew0K
PiAtCWludCBpLCBqOw0KPiArCXNpemVfdCBpLCBqOw0KPiDCoA0KPiDCoAlzb3J0KGZlbmNlcywg
bnVtX2ZlbmNlcywgc2l6ZW9mKCpmZW5jZXMpLCBmZW5jZV9jbXAsIE5VTEwpOw0KPiDCoA0KPiBA
QCAtMTE1LDE0ICsxMTUsMTQgQEAgaW50IGRtYV9mZW5jZV9kZWR1cF9hcnJheShzdHJ1Y3QgZG1h
X2ZlbmNlICoqZmVuY2VzLCBpbnQgbnVtX2ZlbmNlcykNCj4gwqBFWFBPUlRfU1lNQk9MX0dQTChk
bWFfZmVuY2VfZGVkdXBfYXJyYXkpOw0KPiDCoA0KPiDCoC8qIEltcGxlbWVudGF0aW9uIGZvciB0
aGUgZG1hX2ZlbmNlX21lcmdlKCkgbWFyY28sIGRvbid0IHVzZSBkaXJlY3RseSAqLw0KPiAtc3Ry
dWN0IGRtYV9mZW5jZSAqX19kbWFfZmVuY2VfdW53cmFwX21lcmdlKHVuc2lnbmVkIGludCBudW1f
ZmVuY2VzLA0KPiArc3RydWN0IGRtYV9mZW5jZSAqX19kbWFfZmVuY2VfdW53cmFwX21lcmdlKHNp
emVfdCBudW1fZmVuY2VzLA0KPiDCoAkJCQkJwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2Vz
LA0KPiDCoAkJCQkJwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlX3Vud3JhcCAqaXRlcikNCj4gwqB7DQo+
IMKgCXN0cnVjdCBkbWFfZmVuY2UgKnRtcCwgKnVuc2lnbmFsZWQgPSBOVUxMLCAqKmFycmF5Ow0K
PiDCoAlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICpyZXN1bHQ7DQo+IMKgCWt0aW1lX3QgdGltZXN0
YW1wOw0KPiAtCWludCBpLCBjb3VudDsNCj4gKwlzaXplX3QgaSwgY291bnQ7DQo+IMKgDQo+IMKg
CWNvdW50ID0gMDsNCj4gwqAJdGltZXN0YW1wID0gbnNfdG9fa3RpbWUoMCk7DQo+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaCBiL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLXVud3JhcC5oDQo+IGluZGV4IDYyZGYyMjJmZTBmMS4uN2JmYWNkZjc5ZGUyIDEwMDY0
NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaA0KPiArKysgYi9pbmNs
dWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaA0KPiBAQCAtOCw2ICs4LDggQEANCj4gwqAjaWZu
ZGVmIF9fTElOVVhfRE1BX0ZFTkNFX1VOV1JBUF9IDQo+IMKgI2RlZmluZSBfX0xJTlVYX0RNQV9G
RU5DRV9VTldSQVBfSA0KPiDCoA0KPiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+DQo+ICsNCj4g
wqBzdHJ1Y3QgZG1hX2ZlbmNlOw0KPiDCoA0KPiDCoC8qKg0KPiBAQCAtNDgsMTEgKzUwLDExIEBA
IHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV91bndyYXBfbmV4dChzdHJ1Y3QgZG1hX2ZlbmNl
X3Vud3JhcCAqY3Vyc29yKTsNCj4gwqAJZm9yIChmZW5jZSA9IGRtYV9mZW5jZV91bndyYXBfZmly
c3QoaGVhZCwgY3Vyc29yKTsgZmVuY2U7CVwNCj4gwqAJwqDCoMKgwqAgZmVuY2UgPSBkbWFfZmVu
Y2VfdW53cmFwX25leHQoY3Vyc29yKSkNCj4gwqANCj4gLXN0cnVjdCBkbWFfZmVuY2UgKl9fZG1h
X2ZlbmNlX3Vud3JhcF9tZXJnZSh1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcywNCj4gK3N0cnVjdCBk
bWFfZmVuY2UgKl9fZG1hX2ZlbmNlX3Vud3JhcF9tZXJnZShzaXplX3QgbnVtX2ZlbmNlcywNCj4g
wqAJCQkJCcKgwqAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlcywNCj4gwqAJCQkJCcKgwqAgc3Ry
dWN0IGRtYV9mZW5jZV91bndyYXAgKmN1cnNvcnMpOw0KPiDCoA0KPiAtaW50IGRtYV9mZW5jZV9k
ZWR1cF9hcnJheShzdHJ1Y3QgZG1hX2ZlbmNlICoqYXJyYXksIGludCBudW1fZmVuY2VzKTsNCj4g
K3NpemVfdCBkbWFfZmVuY2VfZGVkdXBfYXJyYXkoc3RydWN0IGRtYV9mZW5jZSAqKmFycmF5LCBz
aXplX3QgbnVtX2ZlbmNlcyk7DQo+IMKgDQo+IMKgLyoqDQo+IMKgICogZG1hX2ZlbmNlX3Vud3Jh
cF9tZXJnZSAtIHVud3JhcCBhbmQgbWVyZ2UgZmVuY2VzDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
