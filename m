Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BE70C6D3154
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  1 Apr 2023 16:32:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A71EF3EC7A
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  1 Apr 2023 14:31:59 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id D0F773EC7A
	for <linaro-mm-sig@lists.linaro.org>; Sat,  1 Apr 2023 14:31:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=GrRe12vS;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1680359504;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hMrbsGp2VbSuKBP42mT23UvlOXpqHOgBiKJ7nTY4v2c=;
	b=GrRe12vSlJYlfUja0UIhZA/bhg+HyUD+h3ORFit2lWeN8k0evumUNlAmn/of32pQZkb8Iq
	OFFx6AUYaqh4qspAh+JrJ++/6jOjfefooPQ+0c+1fXJ+ftGKRMGaA4Ly24MPkHBZRk0V7j
	szECRpOr+X05RzncynymXdY1baUJAiU=
Message-ID: <425c1b8ea20002c6344a574cd094b4c715c67ba6.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>
Date: Sat, 01 Apr 2023 16:31:42 +0200
In-Reply-To: <c6ce737d-25cc-7f22-7c0f-c0ba1420e57d@collabora.com>
References: <20230322092118.9213-1-paul@crapouillou.net>
	 <c6ce737d-25cc-7f22-7c0f-c0ba1420e57d@collabora.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D0F773EC7A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[89.234.176.197:server fail];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	ARC_NA(0.00)[]
Message-ID-Hash: DSRNZI3FN4GKPFVDNKLMEQMZDQBBDLX5
X-Message-ID-Hash: DSRNZI3FN4GKPFVDNKLMEQMZDQBBDLX5
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michael.hennerich@analog.com, nuno.sa@analog.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] usb: gadget: functionfs: DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DSRNZI3FN4GKPFVDNKLMEQMZDQBBDLX5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQW5kcnplaiwNCg0KTGUgdmVuZHJlZGkgMzEgbWFycyAyMDIzIMOgIDExOjQwICswMjAwLCBB
bmRyemVqIFBpZXRyYXNpZXdpY3ogYSDDqWNyaXTCoDoNCj4gSGkgUGF1bCwNCj4gDQo+IFcgZG5p
dSAyMi4wMy4yMDIzIG/CoDEwOjIxLCBQYXVsIENlcmN1ZWlsIHBpc3plOg0KPiA+IEhpLA0KPiA+
IA0KPiA+IFRoaXMgc21hbGwgcGF0Y2hzZXQgYWRkcyB0aHJlZSBuZXcgSU9DVExzIHRoYXQgY2Fu
IGJlIHVzZWQgdG8NCj4gPiBhdHRhY2gsDQo+ID4gZGV0YWNoLCBvciB0cmFuc2ZlciBmcm9tL3Rv
IGEgRE1BQlVGIG9iamVjdC4NCj4gPiANCj4gPiBDaGFuZ2VzIHNpbmNlIHYxOg0KPiA+IC0gcGF0
Y2ggWzIvM10gaXMgbmV3LiBJIGhhZCB0byByZXVzZSBhIHBpZWNlIG9mIGNvZGUgdGhhdCB3YXMN
Cj4gPiBhbHJlYWR5DQo+ID4gwqDCoCBkdXBsaWNhdGVkIGluIHRoZSBkcml2ZXIsIHNvIEkgZmFj
dG9yaXplZCB0aGUgY29kZS4NCj4gPiAtIE1ha2UgZmZzX2RtYV9yZXN2X2xvY2soKSBzdGF0aWMN
Cj4gPiAtIEFkZCBNT0RVTEVfSU1QT1JUX05TKERNQV9CVUYpOw0KPiA+IC0gVGhlIGF0dGFjaC9k
ZXRhY2ggZnVuY3Rpb25zIGFyZSBub3cgcGVyZm9ybWVkIHdpdGhvdXQgbG9ja2luZyB0aGUNCj4g
PiDCoMKgIGVwc19sb2NrIHNwaW5sb2NrLiBUaGUgdHJhbnNmZXIgZnVuY3Rpb24gc3RhcnRzIHdp
dGggdGhlDQo+ID4gc3BpbmxvY2sNCj4gPiDCoMKgIHVubG9ja2VkLCB0aGVuIGxvY2tzIGl0IGJl
Zm9yZSBhbGxvY2F0aW5nIGFuZCBxdWV1ZWluZyB0aGUgVVNCDQo+ID4gwqDCoCB0cmFuc2Zlci4N
Cj4gPiANCj4gDQo+IENhbiB5b3Ugc2hhcmUgYW4gZXhhbXBsZSB1c2UgY2FzZSBmb3IgdGhlc2Ug
bmV3IGZlYXR1cmVzPw0KPiBJcyB0aGVyZSBhIHVzZXJzcGFjZSB0aGF0IGV4Y2VyY2lzZXMgdGhl
IG5ldyBpb2N0bHM/DQoNCldlIHVzZSBpdCBhdCBBbmFsb2cgRGV2aWNlcyB0byBzaGFyZSBidWZm
ZXJzIGJldHdlZW4gdGhlIElJTyBzdWJzeXN0ZW0NCmFuZCB0aGUgVVNCIHN0YWNrLCB3aGljaCBt
YWtlcyBpdCBwb3NzaWJsZSB0byBzdHJlYW0gZGF0YSBzYW1wbGVzDQpiZXR3ZWVuIGEgaG9zdCBj
b21wdXRlciBhbmQgaGlnaC1zcGVlZCB0cmFuc2NlaXZlcnMgYXMgZmFzdCBhcw0KcG9zc2libGUs
IGluIGEgemVyby1jb3B5IGZhc2hpb24uDQoNClRoaXMgd2lsbCBiZSB1c2VkIGJ5IExpYmlpbzoN
Cmh0dHBzOi8vZ2l0aHViLmNvbS9hbmFsb2dkZXZpY2VzaW5jL2xpYmlpby9wdWxsLzkyOC9jb21t
aXRzL2RkMzQ4MTM3Y2UzNzE1MzJmZDk1MmEyYjI0OWNmZDk2YWZhZWY3ZDENCg0KVGhlIGNvZGUg
dGhhdCB1c2VzIHRoZXNlIElPQ1RMcyBpcyBub3QgeWV0IG1lcmdlZCB0byB0aGUgIm1hc3RlciIN
CmJyYW5jaCwgYnV0IHdpbGwgYmUgYXMgc29vbiBhcyB0aGlzIHBhdGNoc2V0IGlzIGFjY2VwdGVk
Lg0KDQpDaGVlcnMsDQotUGF1bA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
