Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 578E36E087F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Apr 2023 09:59:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D597E3F23C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Apr 2023 07:59:44 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 8B70F3EC40
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Apr 2023 07:59:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=ICUcBYBU;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1681372772;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vfxzlRNk1KGWBdOj5P/K6fuwrIfAfru/Dnxni0GJhqM=;
	b=ICUcBYBU4Bf7+mQJ5Ux1mcB5R2xdiuY5KtFa/XbsgF+hRunFUSdeGERUNyysZhU+UUv85o
	YpNkFgjTNfabOwPHhplu5VolRCE+cLMyvO4F9kL8/QX35ojd8S7tRH7lnL3Hst1w4zEWQ+
	uutqswBtqhSp4JvUD5Qpu+quNM+y9KE=
Message-ID: <259fbfaafbceb6b57c0c4426be994ed08140af5c.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Vinod Koul <vkoul@kernel.org>
Date: Thu, 13 Apr 2023 09:59:29 +0200
In-Reply-To: <ZDbpDptOcuBLFctc@matsya>
References: <20230403154800.215924-1-paul@crapouillou.net>
	 <20230403154800.215924-2-paul@crapouillou.net> <ZDbpDptOcuBLFctc@matsya>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8B70F3EC40
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[89.234.176.197:from];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,analog.com,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: Q4AEFJF6OZLJTEOBHTXKRAISUKJKALOU
X-Message-ID-Hash: Q4AEFJF6OZLJTEOBHTXKRAISUKJKALOU
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/11] dmaengine: Add API function dmaengine_prep_slave_dma_array()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q4AEFJF6OZLJTEOBHTXKRAISUKJKALOU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVmlub2QsCgpMZSBtZXJjcmVkaSAxMiBhdnJpbCAyMDIzIMOgIDIyOjUzICswNTMwLCBWaW5v
ZCBLb3VsIGEgw6ljcml0wqA6Cj4gT24gMDMtMDQtMjMsIDE3OjQ3LCBQYXVsIENlcmN1ZWlsIHdy
b3RlOgo+ID4gVGhpcyBmdW5jdGlvbiBjYW4gYmUgdXNlZCB0byBpbml0aWF0ZSBhIHNjYXR0ZXIt
Z2F0aGVyIERNQSB0cmFuc2Zlcgo+ID4gd2hlcmUgdGhlIERNQSBhZGRyZXNzZXMgYW5kIGxlbmd0
aHMgYXJlIGxvY2F0ZWQgaW5zaWRlIGFycmF5cy4KPiA+IAo+ID4gVGhlIG1ham9yIGRpZmZlcmVu
Y2Ugd2l0aCBkbWFlbmdpbmVfcHJlcF9zbGF2ZV9zZygpIGlzIHRoYXQgaXQKPiA+IHN1cHBvcnRz
Cj4gPiBzcGVjaWZ5aW5nIHRoZSBsZW5ndGhzIG9mIGVhY2ggRE1BIHRyYW5zZmVyOyBhcyB0cnlp
bmcgdG8gb3ZlcnJpZGUKPiA+IHRoZQo+ID4gbGVuZ3RoIG9mIHRoZSB0cmFuc2ZlciB3aXRoIGRt
YWVuZ2luZV9wcmVwX3NsYXZlX3NnKCkgaXMgYSB2ZXJ5Cj4gPiB0ZWRpb3VzCj4gPiBwcm9jZXNz
LiBUaGUgaW50cm9kdWN0aW9uIG9mIGEgbmV3IEFQSSBmdW5jdGlvbiBpcyBhbHNvIGp1c3RpZmll
ZAo+ID4gYnkgdGhlCj4gPiBmYWN0IHRoYXQgc2NhdHRlcmxpc3RzIGFyZSBvbiB0aGVpciB3YXkg
b3V0Lgo+IAo+IERvIHdlIG5lZWQgYSBuZXcgQVBJIGZvciB0aGlzPyB3aHkgbm90IHVzZQo+IGRl
dmljZV9wcmVwX2ludGVybGVhdmVkX2RtYT8KCkkgYWRtaXQgdGhhdCBJIGRpc2NhcmRlZCB0aGUg
aW50ZXJsZWF2ZWQgRE1BIHdpdGhvdXQgdHJ5aW5nIGl0LCBiZWNhdXNlCnJlYWRpbmcgdGhlIGRv
YywgZS5nLiB0aGUgb25lIGZvciAic3RydWN0IGRhdGFfY2h1bmsiLCBJdCBsb29rZWQgbGlrZQpp
dCB3YXMgbm90IHVzYWJsZSBmb3Igd2hlbiB0aGUgRE1BIGFkZHJlc3NlcyBhcmUgc2NhdHRlcmVk
IGluIG1lbW9yeTsKaXQgYXNzdW1lcyB0aGF0IHRoZSBmb2xsb3dpbmcgRE1BIGFkZHJlc3NlcyB3
aWxsIGFsd2F5cyBjb21lIGFmdGVyIHRoZQpwcmV2aW91cyBvbmUuCgpDaGVlcnMsCi1QYXVsIAoK
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5u
ZXQ+Cj4gPiAKPiA+IC0tLQo+ID4gdjM6IE5ldyBwYXRjaAo+ID4gLS0tCj4gPiDCoGluY2x1ZGUv
bGludXgvZG1hZW5naW5lLmggfCAxNiArKysrKysrKysrKysrKysrCj4gPiDCoDEgZmlsZSBjaGFu
Z2VkLCAxNiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2RtYWVuZ2luZS5oIGIvaW5jbHVkZS9saW51eC9kbWFlbmdpbmUuaAo+ID4gaW5kZXggYzM2NTZl
NTkwMjEzLi42MmVmYTI4YzAwOWEgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYWVu
Z2luZS5oCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oCj4gPiBAQCAtOTEyLDYg
KzkxMiwxMSBAQCBzdHJ1Y3QgZG1hX2RldmljZSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0
IGRtYV9hc3luY190eF9kZXNjcmlwdG9yCj4gPiAqKCpkZXZpY2VfcHJlcF9kbWFfaW50ZXJydXB0
KSgKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRtYV9jaGFuICpj
aGFuLCB1bnNpZ25lZCBsb25nIGZsYWdzKTsKPiA+IMKgCj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IKPiA+ICooKmRldmljZV9wcmVwX3NsYXZlX2RtYV9h
cnJheSkoCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRtYV9jaGFu
ICpjaGFuLCBkbWFfYWRkcl90ICphZGRycywKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBzaXplX3QgKmxlbmd0aHMsIHNpemVfdCBuYiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBlbnVtIGRtYV90cmFuc2Zlcl9kaXJlY3Rpb24gZGlyZWN0aW9uLAo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHVuc2lnbmVkIGxvbmcgZmxhZ3MpOwo+ID4gwqDC
oMKgwqDCoMKgwqDCoHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRvciAqKCpkZXZpY2VfcHJl
cF9zbGF2ZV9zZykoCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBk
bWFfY2hhbiAqY2hhbiwgc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2wsCj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHVuc2lnbmVkIGludCBzZ19sZW4sIGVudW0gZG1hX3RyYW5zZmVy
X2RpcmVjdGlvbgo+ID4gZGlyZWN0aW9uLAo+ID4gQEAgLTk3NCw2ICs5NzksMTcgQEAgc3RhdGlj
IGlubGluZSBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IKPiA+ICpkbWFlbmdpbmVfcHJl
cF9zbGF2ZV9zaW5nbGUoCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBkaXIsIGZsYWdzLAo+ID4gTlVMTCk7Cj4gPiDCoH0KPiA+IMKgCj4gPiArc3RhdGljIGlu
bGluZSBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IKPiA+ICpkbWFlbmdpbmVfcHJlcF9z
bGF2ZV9kbWFfYXJyYXkoCj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZG1hX2NoYW4gKmNoYW4s
IGRtYV9hZGRyX3QgKmFkZHJzLCBzaXplX3QgKmxlbmd0aHMsCj4gPiArwqDCoMKgwqDCoMKgwqBz
aXplX3QgbmIsIGVudW0gZG1hX3RyYW5zZmVyX2RpcmVjdGlvbiBkaXIsIHVuc2lnbmVkIGxvbmcK
PiA+IGZsYWdzKQo+ID4gK3sKPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghY2hhbiB8fCAhY2hhbi0+
ZGV2aWNlIHx8ICFjaGFuLT5kZXZpY2UtCj4gPiA+ZGV2aWNlX3ByZXBfc2xhdmVfZG1hX2FycmF5
KQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBOVUxMOwo+ID4gKwo+
ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIGNoYW4tPmRldmljZS0+ZGV2aWNlX3ByZXBfc2xhdmVf
ZG1hX2FycmF5KGNoYW4sCj4gPiBhZGRycywgbGVuZ3RocywKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuYiwgZGlyLAo+ID4gZmxhZ3Mp
Owo+ID4gK30KPiA+ICsKPiA+IMKgc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rl
c2NyaXB0b3IKPiA+ICpkbWFlbmdpbmVfcHJlcF9zbGF2ZV9zZygKPiA+IMKgwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgZG1hX2NoYW4gKmNoYW4sIHN0cnVjdCBzY2F0dGVybGlzdCAqc2dsLMKgdW5zaWdu
ZWQKPiA+IGludCBzZ19sZW4sCj4gPiDCoMKgwqDCoMKgwqDCoMKgZW51bSBkbWFfdHJhbnNmZXJf
ZGlyZWN0aW9uIGRpciwgdW5zaWduZWQgbG9uZyBmbGFncykKPiA+IC0tIAo+ID4gMi4zOS4yCj4g
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
