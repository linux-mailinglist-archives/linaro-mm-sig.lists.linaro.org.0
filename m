Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC1E94607F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Aug 2024 17:26:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57D9643E5B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Aug 2024 15:26:44 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 0558F3F3CF
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 Aug 2024 15:26:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=R2+aNIIn;
	spf=pass (lists.linaro.org: domain of michel.daenzer@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=michel.daenzer@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4Wb8nD4pX9z9tM7;
	Fri,  2 Aug 2024 17:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1722612384;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IbiOHuuK++HVqf4Ly0K8XIOEOZLhizAbHkNRlvigC5k=;
	b=R2+aNIInlYHCHZ2caXa7mIUa0XaVi1NbbxC4Sc0k23Tv6Cd77LrKwMYv0HcLd/NPZT19h0
	V9gXA9vCM32XI7l0mJvMr1w4BDM8kRMXHt57HkNoGUzKjjxpvvj97tZg9p9kyrB43EBSQc
	RuJWYANqMDxRfmnYipbG//P2htyDtB4PXxwzS6GZSHdlESLPCf9MyEWyDbSu3byDG6PCJ+
	Uxf9f+ZerJEbGi/4e7nUpPelWnR4aaLy1nJPlIFsi9HrGNsS1oNPKB1U9as8Mnji9biv1e
	/LNTN9alkIvHiIOuO28LMNR6TEld0ugCOnrpPsnFyLKyzSKr3bz3xpCiQQtQ2Q==
Message-ID: <86d7ca9c-1493-474b-95d6-1e38b5703a67@mailbox.org>
Date: Fri, 2 Aug 2024 17:26:21 +0200
MIME-Version: 1.0
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, Huan Yang
 <link@vivo.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20240801104512.4056860-1-link@vivo.com>
 <IA0PR11MB7185EDB259502BC6937CE566F8B22@IA0PR11MB7185.namprd11.prod.outlook.com>
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
Content-Language: en-CA, de-CH-frami
In-Reply-To: <IA0PR11MB7185EDB259502BC6937CE566F8B22@IA0PR11MB7185.namprd11.prod.outlook.com>
X-MBO-RS-META: jraeashjkoya6xgp7jomd86xn6cw6ttf
X-MBO-RS-ID: a8c9a5cf6cddf16cf40
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0558F3F3CF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_SPF_ALLOW(-0.20)[+ip4:80.241.56.0/21];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:199118, ipnet:80.241.56.0/21, country:DE];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 2ZFHYNP5KF3D7AENPFJC5JEGN4OWH37C
X-Message-ID-Hash: 2ZFHYNP5KF3D7AENPFJC5JEGN4OWH37C
X-MailFrom: michel.daenzer@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "opensource.kernel@vivo.com" <opensource.kernel@vivo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/5] udmbuf bug fix and some improvements
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2ZFHYNP5KF3D7AENPFJC5JEGN4OWH37C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjAyNC0wOC0wMSAyMDozMiwgS2FzaXJlZGR5LCBWaXZlayB3cm90ZToNCj4gSGkgSHVhbiwN
Cj4gDQo+PiBUaGlzIHBhdGNoc2V0IGF0dGVtcHRzIHRvIGZpeCBzb21lIGVycm9ycyBpbiB1ZG1h
YnVmIGFuZCByZW1vdmUgdGhlDQo+PiB1cGluX2xpc3Qgc3RydWN0dXJlLg0KPj4NCj4+IFNvbWUg
b2YgdGhpcyBmaXgganVzdCBnYXRoZXIgdGhlIHBhdGNoZXMgd2hpY2ggSSB1cGxvYWQgYmVmb3Jl
Lg0KPj4NCj4+IFBhdGNoMQ0KPj4gPT09DQo+PiBUcnkgdG8gcmVtb3ZlIHBhZ2UgZmF1bHQgbW1h
cCBhbmQgZGlyZWN0IG1hcCBpdC4NCj4+IER1ZSB0byBjdXJyZW50IHVkbWFidWYgaGFzIGFscmVh
ZHkgb2J0YWluZWQgYW5kIHBpbm5lZCB0aGUgZm9saW8NCj4+IHVwb24gY29tcGxldGlvbiBvZiB0
aGUgY3JlYXRpb24uVGhpcyBtZWFucyB0aGF0IHRoZSBwaHlzaWNhbCBtZW1vcnkgaGFzDQo+PiBh
bHJlYWR5IGJlZW4gYWNxdWlyZWQsIHJhdGhlciB0aGFuIGJlaW5nIGFjY2Vzc2VkIGR5bmFtaWNh
bGx5LiBUaGUNCj4+IGN1cnJlbnQgcGFnZSBmYXVsdCBtZXRob2Qgb25seSBzYXZlcyBzb21lIHBh
Z2UgdGFibGUgbWVtb3J5Lg0KPj4NCj4+IEFzIGEgcmVzdWx0LCB0aGUgcGFnZSBmYXVsdCBtZWNo
YW5pc20gaGFzIGxvc3QgaXRzIHB1cnBvc2UgYXMgYSBkZW1hbmRpbmcNCj4+IHBhZ2UuIER1ZSB0
byB0aGUgZmFjdCB0aGF0IHBhZ2UgZmF1bHQgcmVxdWlyZXMgdHJhcHBpbmcgaW50byBrZXJuZWwg
bW9kZQ0KPj4gYW5kIGZpbGxpbmcgaW4gd2hlbiBhY2Nlc3NpbmcgdGhlIGNvcnJlc3BvbmRpbmcg
dmlydHVhbCBhZGRyZXNzIGluIG1tYXAsDQo+PiB0aGlzIG1lYW5zIHRoYXQgdXNlciBtb2RlIGFj
Y2VzcyB0byB2aXJ0dWFsIGFkZHJlc3NlcyBuZWVkcyB0byB0cmFwIGludG8NCj4+IGtlcm5lbCBt
b2RlLg0KPj4NCj4+IFRoZXJlZm9yZSwgd2hlbiBjcmVhdGluZyBhIGxhcmdlIHNpemUgdWRtYWJ1
ZiwgdGhpcyByZXByZXNlbnRzIGENCj4+IGNvbnNpZGVyYWJsZSBvdmVyaGVhZC4NCj4gSnVzdCB3
YW50IHRvIG1lbnRpb24gdGhhdCBmb3IgdGhlIG1haW4gdXNlLWNhc2UgdGhlIHVkbWFidWYgZHJp
dmVyIGlzIGRlc2lnbmVkIGZvciwNCj4gKHNoYXJpbmcgUWVtdSBHdWVzdCBGQiB3aXRoIEhvc3Qg
Zm9yIEdQVSBETUEpLCB1ZG1hYnVmcyBhcmUgbm90IGNyZWF0ZWQgdmVyeQ0KPiBmcmVxdWVudGx5
LiBBbmQsIEkgdGhpbmsgcHJvdmlkaW5nIENQVSBhY2Nlc3MgdmlhIG1tYXAgaXMganVzdCBhIGJh
Y2t1cCwgbWFpbmx5DQo+IGludGVuZGVkIGZvciBkZWJ1Z2dpbmcgcHVycG9zZXMuDQoNCkZZSSwg
TWVzYSBub3cgdXNlcyB1ZG1hYnVmIGZvciBzdXBwb3J0aW5nIGRtYS1idWZzIHdpdGggc29mdHdh
cmUgcmVuZGVyaW5nLg0KDQoNCi0tIA0KRWFydGhsaW5nIE1pY2hlbCBEw6RuemVyICAgICAgICAg
ICAgfCAgICAgICAgICAgICAgICAgIGh0dHBzOi8vcmVkaGF0LmNvbQ0KTGlicmUgc29mdHdhcmUg
ZW50aHVzaWFzdCAgICAgICAgICB8ICAgICAgICAgTWVzYSBhbmQgWHdheWxhbmQgZGV2ZWxvcGVy
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
