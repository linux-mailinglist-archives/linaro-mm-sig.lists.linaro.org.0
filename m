Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1FB6D59E0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 09:42:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A1F03F6E7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 07:42:25 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 20D833E8F3
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Apr 2023 07:42:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=rczpZOCJ;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1680594132;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qOZ8v52pVL5DD+Gn0MGYLxezIgSQkcNGsAlQQVJ5uHQ=;
	b=rczpZOCJplcg3kGUzumWu10j9pyrmtEYX0tOTEJGulUwch5PZbja4Y7k1nGSFPmkOAuUec
	LmPGA1KUU98IXrRquU315uAcPDBJOcbEcGh3JgYfgm30xhfTgME9c6io7kooRf0O44FfJ7
	axFFQyms00TieZjobmvfgM8I9oqO6yw=
Message-ID: <c9c9fa881aeda36862d0ad8c5a46472e0e363531.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Hillf Danton <hdanton@sina.com>
Date: Tue, 04 Apr 2023 09:42:11 +0200
In-Reply-To: <20230404015944.502-1-hdanton@sina.com>
References: <20230403154800.215924-1-paul@crapouillou.net>
	 <20230404015944.502-1-hdanton@sina.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 20D833E8F3
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[89.234.176.197:from];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,analog.com,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FREEMAIL_TO(0.00)[sina.com];
	RCVD_COUNT_ZERO(0.00)[0];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: RVJ255ZNQ763S327EAJUHOFYA465MBWQ
X-Message-ID-Hash: RVJ255ZNQ763S327EAJUHOFYA465MBWQ
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/11] dmaengine: Add API function dmaengine_prep_slave_dma_array()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RVJ255ZNQ763S327EAJUHOFYA465MBWQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSGlsbGYsCgpMZSBtYXJkaSAwNCBhdnJpbCAyMDIzIMOgIDA5OjU5ICswODAwLCBIaWxsZiBE
YW50b24gYSDDqWNyaXTCoDoKPiBPbiAzIEFwciAyMDIzIDE3OjQ3OjUwICswMjAwIFBhdWwgQ2Vy
Y3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0Pgo+ID4gVGhpcyBmdW5jdGlvbiBjYW4gYmUgdXNl
ZCB0byBpbml0aWF0ZSBhIHNjYXR0ZXItZ2F0aGVyIERNQSB0cmFuc2Zlcgo+ID4gd2hlcmUgdGhl
IERNQSBhZGRyZXNzZXMgYW5kIGxlbmd0aHMgYXJlIGxvY2F0ZWQgaW5zaWRlIGFycmF5cy4KPiA+
IAo+ID4gVGhlIG1ham9yIGRpZmZlcmVuY2Ugd2l0aCBkbWFlbmdpbmVfcHJlcF9zbGF2ZV9zZygp
IGlzIHRoYXQgaXQKPiA+IHN1cHBvcnRzCj4gPiBzcGVjaWZ5aW5nIHRoZSBsZW5ndGhzIG9mIGVh
Y2ggRE1BIHRyYW5zZmVyOyBhcyB0cnlpbmcgdG8gb3ZlcnJpZGUKPiA+IHRoZQo+ID4gbGVuZ3Ro
IG9mIHRoZSB0cmFuc2ZlciB3aXRoIGRtYWVuZ2luZV9wcmVwX3NsYXZlX3NnKCkgaXMgYSB2ZXJ5
Cj4gPiB0ZWRpb3VzCj4gPiBwcm9jZXNzLiBUaGUgaW50cm9kdWN0aW9uIG9mIGEgbmV3IEFQSSBm
dW5jdGlvbiBpcyBhbHNvIGp1c3RpZmllZAo+ID4gYnkgdGhlCj4gPiBmYWN0IHRoYXQgc2NhdHRl
cmxpc3RzIGFyZSBvbiB0aGVpciB3YXkgb3V0Lgo+IAo+IEdpdmVuIHNnJ3Mgd2F5b3V0IGFuZCBj
b25jZXB0dWFsbHkgaW92ZWMgYW5kIGt2ZWMgKGluCj4gaW5jbHVkZS9saW51eC91aW8uaCksCj4g
d2hhdCB5b3UgYWRkIHNob3VsZCBoYXZlIGJlZW4gZG1hX3ZlYyB0byBlYXNlIHBlb3BsZSBtYWtp
bmcgdXNlIG9mCj4gaXQuCj4gCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkbWFfdmVjIHsKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYV9hZGRyX3TCoMKgwqDCoMKgwqBhZGRy
Owo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2l6ZV90wqDCoMKgwqDCoMKgwqDC
oMKgwqBsZW47Cj4gwqDCoMKgwqDCoMKgwqDCoH07CgpXZWxsIGl0J3Mgbm90IHRvbyBsYXRlIDsp
CgpUaGFua3MgZm9yIHRoZSBmZWVkYmFjay4KCkNoZWVycywKLVBhdWwKCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0Pgo+ID4gCj4gPiAt
LS0KPiA+IHYzOiBOZXcgcGF0Y2gKPiA+IC0tLQo+ID4gwqBpbmNsdWRlL2xpbnV4L2RtYWVuZ2lu
ZS5oIHwgMTYgKysrKysrKysrKysrKysrKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0
aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWFlbmdpbmUuaCBi
L2luY2x1ZGUvbGludXgvZG1hZW5naW5lLmgKPiA+IGluZGV4IGMzNjU2ZTU5MDIxMy4uNjJlZmEy
OGMwMDlhIDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWFlbmdpbmUuaAo+ID4gKysr
IGIvaW5jbHVkZS9saW51eC9kbWFlbmdpbmUuaAo+ID4gQEAgLTkxMiw2ICs5MTIsMTEgQEAgc3Ry
dWN0IGRtYV9kZXZpY2Ugewo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkbWFfYXN5bmNfdHhf
ZGVzY3JpcHRvcgo+ID4gKigqZGV2aWNlX3ByZXBfZG1hX2ludGVycnVwdCkoCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkbWFfY2hhbiAqY2hhbiwgdW5zaWduZWQg
bG9uZyBmbGFncyk7Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRtYV9hc3luY190
eF9kZXNjcmlwdG9yCj4gPiAqKCpkZXZpY2VfcHJlcF9zbGF2ZV9kbWFfYXJyYXkpKAo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkbWFfY2hhbiAqY2hhbiwgZG1hX2Fk
ZHJfdCAqYWRkcnMsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2l6ZV90ICps
ZW5ndGhzLCBzaXplX3QgbmIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZW51
bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRpcmVjdGlvbiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBsb25nIGZsYWdzKTsKPiAKPiBUaGVuIHRoZSBjYWxsYmFj
ayBsb29rcyBsaWtlCj4gCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVz
Y3JpcHRvciAqKCpkZXZpY2VfcHJlcF9zbGF2ZV92ZWMpKAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGRtYV9jaGFuICpjaGFuLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGRtYV92ZWMgKnZlYywKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGludCBudmVjLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZW51
bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRpcmVjdGlvbiwKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHVuc2lnbmVkIGxvbmcgZmxhZ3MpOwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
