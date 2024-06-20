Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 79522910DB9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 18:55:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B4394486A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 16:55:56 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 2C84C3EF2D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jun 2024 16:55:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Bm9r+DOm;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F2CCACE2426;
	Thu, 20 Jun 2024 16:55:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2819EC2BD10;
	Thu, 20 Jun 2024 16:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718902550;
	bh=A1JugA1kRbqTImg1GS9MvseGGROAflYsVVNFO9Eymkg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bm9r+DOm3vNepyZmG6ENkJXODJ4erYYCurb/sueiOicXug5YBaF/ZvsWc1kuf2Bcx
	 84y2DMPf20XLlr9NkTnq01iTYH1oalYb+0VTdEwIUt594ddvmUTF/fxe5JoXObxsVJ
	 d7cMvBf8j/iSaw3cX0DcJ0fNU2V1UZpXbRisL6NxpjIwFUcebeVUmn49MjtOvoU1Sw
	 uZjN7cj1B6rpKCAajFXds+/ZDgPokPiCJfAnV2BD57EBsEdORYnqCwmtfJ3f+TPNr/
	 z0vae4nXfKteATQ3j7XBGOFASQy28ozvvsOGctSX3IJ0p5avNpqkSYg0K3y2JRkDFJ
	 uRs1NWFNQVb7A==
Date: Thu, 20 Jun 2024 17:55:43 +0100
From: Lee Jones <lee@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <20240620165543.GR3029315@google.com>
References: <20240620122726.41232-4-paul@crapouillou.net>
 <ca3efef9-9720-46be-a59d-a9a4c5873ea2@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca3efef9-9720-46be-a59d-a9a4c5873ea2@web.de>
X-Rspamd-Queue-Id: 2C84C3EF2D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[web.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GTR2NI3MQTLJCHXJTNGULNGTM2EUFY55
X-Message-ID-Hash: GTR2NI3MQTLJCHXJTNGULNGTM2EUFY55
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: lkp@intel.com, Paul Cercueil <paul@crapouillou.net>, Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>, linux-iio@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>, oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Julia Lawall <julia.lawall@inria.fr>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GTR2NI3MQTLJCHXJTNGULNGTM2EUFY55/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyMCBKdW4gMjAyNCwgTWFya3VzIEVsZnJpbmcgd3JvdGU6DQoNCj4g4oCmDQo+ID4g
djExOg0KPiDigKYNCj4gPiAgICAgLSBVc2UgZ3VhcmQobXV0ZXgpDQo+ID4NCj4gPiB2MTI6DQo+
ID4gICAgIC0gUmV2ZXJ0IHRvIG11dGV4X2xvY2svbXV0ZXhfdW5sb2NrIGluIGlpb19idWZmZXJf
YXR0YWNoX2RtYWJ1ZigpLA0KPiA+ICAgICAgIGFzIGl0IHVzZXMgY2xlYW51cCBHT1RPcw0KPiDi
gKYNCj4gDQo+IEkgd291bGQgZmluZCBpdCBuaWNlIGlmIGJldHRlciBkZXNpZ24gb3B0aW9ucyBj
b3VsZCBnYWluIGFjY2VwdGFuY2UuDQo+IFdpbGwgdGhlIGNoYW5jZXMgZ3JvdyB0byBhZGp1c3Qg
c2NvcGVzIGFub3RoZXIgYml0IGZvciBpbnZvbHZlZCB2YXJpYWJsZXMNCj4gaW4gc3VjaCBmdW5j
dGlvbiBpbXBsZW1lbnRhdGlvbnM/DQo+IA0KPiBBKSBFbmNsb3NpbmcgYSBzb3VyY2UgY29kZSBw
YXJ0IHdpdGggZXh0cmEgY3VybHkgYnJhY2tldHM/DQo+IA0KPiBCKSBzY29wZWRfZ3VhcmQoKT8N
Cj4gICAgaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTAtcmM0L3NvdXJjZS9p
bmNsdWRlL2xpbnV4L2NsZWFudXAuaCNMMTM3DQo+IA0KPiBDKSBNb3ZpbmcgYSBsb2NrZWQgc291
cmNlIGNvZGUgcGFydCBpbnRvIGEgc2VwYXJhdGUgZnVuY3Rpb24gaW1wbGVtZW50YXRpb24/DQoN
CkkgdGhpbmsgaXQgd291bGQgaGVscCB5b3VyIGNhdXNlIGlmIHlvdSBxdW90ZWQgdGhlIGV4YWN0
IHBpZWNlIG9mIGNvZGUNCnlvdSdyZSByZWZlcnJpbmcgdG8uICBUaGVuIHRvbmUgZG93biB0aGUg
bGFuZ3VhZ2UgYSBiaXQgLSBrZWVwIGl0IGFzDQpzaW1wbGUgYW5kIG5hdHVyYWwgYXMgeW91IGNh
bi4NCg0KRXggMTogUGxlYXNlIHBsYWNlIGN1cmx5IGJyYWNrZXRzIGFyb3VuZCB0aGlzIHNlY3Rp
b24gdG8gYWlkIHdpdGggPHJlYXNvbj4NCg0KRXggMjogVG8gc2F2ZSBOIGxpbmVzIG9mIGNsZWFu
LXVwLCBwbGVhc2UgdXNlIHNjb3BlZF9ndWFyZCgpDQoNCkV4IDM6IE1vdmluZyBvdXQgdGhpcyBj
aHVuayB0byBhbm90aGVyIGZ1bmN0aW9uIHdvdWxkIGhlbHAgd2l0aCA8cmVhc29uPg0KDQpFdGMu
DQoNCi0tIA0KTGVlIEpvbmVzIFvmnY7nkLzmlq9dDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
