Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 468AE83AD85
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jan 2024 16:39:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E4F03F3AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jan 2024 15:39:18 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lists.linaro.org (Postfix) with ESMTPS id 5833F3F3AD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jan 2024 15:39:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=hp5K+VmK;
	dmarc=pass (policy=quarantine) header.from=ti.com;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=afd@ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 40OFcpxb028401;
	Wed, 24 Jan 2024 09:38:51 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1706110731;
	bh=VYB3w4Afxxk7ZxsxdbFHBZxDZtm5HgnyDACANemk/HA=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=hp5K+VmKgMzCKiox/P8x7IRTHKtASxB052sR4Tup5FjEQPF8LXNfrGzXpPpmO1WyA
	 h/nAmltZNEkjMHmioMJp4Ue8ppOU6DRRH/o0WIR/jCqg+8XSfv0q8k+Gqg1Na9p6KQ
	 KrXHZl0M85XdaCaUHmS7EqS+raifOrClXnFlZe1M=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 40OFcpJv019724
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 24 Jan 2024 09:38:51 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 24
 Jan 2024 09:38:51 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 24 Jan 2024 09:38:51 -0600
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 40OFcoKX129004;
	Wed, 24 Jan 2024 09:38:50 -0600
Message-ID: <715efa1f-c3a4-4952-b72c-ca7f466e3ccb@ti.com>
Date: Wed, 24 Jan 2024 09:38:50 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Cercueil <paul@crapouillou.net>,
        =?UTF-8?Q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>,
        =?UTF-8?Q?Christian_K=C3=B6nig?=
	<ckoenig.leichtzumerken@gmail.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Sumit Semwal
	<sumit.semwal@linaro.org>
References: <20240119141402.44262-1-paul@crapouillou.net>
 <20240119141402.44262-2-paul@crapouillou.net>
 <8035f515-591f-4c87-bf0a-23d5705d9b1c@gmail.com>
 <442f69f31ece6d441f3dc41c3dfeb4dcf52c00b8.camel@crapouillou.net>
 <0b6b8738-9ea3-44fa-a624-9297bd55778f@amd.com>
 <e4620acdf24628d904cedcb0030d78b14559f337.camel@crapouillou.net>
 <85a89505-edeb-4619-86c1-157f7abdd190@amd.com>
 <0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net>
 <577501f9-9d1c-4f8d-9882-7c71090e5ef3@amd.com>
 <7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5833F3F3AD
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.19.0/24];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[crapouillou.net,amd.com,gmail.com,linuxfoundation.org,lwn.net,linaro.org];
	ASN(0.00)[asn:161, ipnet:198.47.19.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+]
Message-ID-Hash: OSDDUPGEMUYNNDVCXVJMZJH2NEIJILKL
X-Message-ID-Hash: OSDDUPGEMUYNNDVCXVJMZJH2NEIJILKL
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OSDDUPGEMUYNNDVCXVJMZJH2NEIJILKL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMS8yNC8yNCA0OjU4IEFNLCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0KPiBIaSBDaHJpc3RpYW4s
DQo+IA0KPiBMZSBtYXJkaSAyMyBqYW52aWVyIDIwMjQgw6AgMTQ6MjggKzAxMDAsIENocmlzdGlh
biBLw7ZuaWcgYSDDqWNyaXTCoDoNCj4+ICDCoEFtIDIzLjAxLjI0IHVtIDE0OjAyIHNjaHJpZWIg
UGF1bCBDZXJjdWVpbDoNCj4+ICAgDQo+Pj4gW1NOSVBdDQo+Pj4gICANCj4+Pj4gICANCj4+Pj4+
ICAgIA0KPj4+Pj4+ICAgDQo+Pj4+Pj4gVGhhdCBhbiBleHBvcnRlciBoYXMgdG8gY2FsbCBleHRy
YSBmdW5jdGlvbnMgdG8gYWNjZXNzIGhpcw0KPj4+Pj4+IG93bg0KPj4+Pj4+IGJ1ZmZlcnMNCj4+
Pj4+PiBpcyBhIGNvbXBsZXRlIG5vLWdvIGZvciB0aGUgZGVzaWduIHNpbmNlIHRoaXMgZm9yY2Vz
DQo+Pj4+Pj4gZXhwb3J0ZXJzDQo+Pj4+Pj4gaW50bw0KPj4+Pj4+IGRvaW5nIGV4dHJhIHN0ZXBz
IGZvciBhbGxvd2luZyBpbXBvcnRlcnMgdG8gYWNjZXNzIHRoZWlyDQo+Pj4+Pj4gZGF0YS4NCj4+
Pj4+PiAgIA0KPj4+Pj4gICANCj4+Pj4+IFRoZW4gd2hhdCBhYm91dCB3ZSBhZGQgdGhlc2UgZG1h
X2J1Zl97YmVnaW4sZW5kfV9hY2Nlc3MoKSwgd2l0aA0KPj4+Pj4gb25seQ0KPj4+Pj4gaW1wbGVt
ZW50YXRpb25zIGZvciAiZHVtYiIgZXhwb3J0ZXJzIGUuZy4gdWRtYWJ1ZiBvciB0aGUgZG1hYnVm
DQo+Pj4+PiBoZWFwcz8NCj4+Pj4+IEFuZCBvbmx5IGltcG9ydGVycyAod2hvIGNhY2hlIHRoZSBt
YXBwaW5nIGFuZCBhY3R1YWxseSBjYXJlDQo+Pj4+PiBhYm91dA0KPj4+Pj4gbm9uLQ0KPj4+Pj4g
Y29oZXJlbmN5KSB3b3VsZCBoYXZlIHRvIGNhbGwgdGhlc2UuDQo+Pj4+PiAgIA0KPj4+PiAgIA0K
Pj4+PiBObywgdGhlIHByb2JsZW0gaXMgc3RpbGwgdGhhdCB5b3Ugd291bGQgaGF2ZSB0byBjaGFu
Z2UgYWxsDQo+Pj4+IGltcG9ydGVycw0KPj4+PiB0bw0KPj4+PiBtYW5kYXRvcnkgdXNlIGRtYV9i
dWZfYmVnaW4vZW5kLg0KPj4+Pg0KPj4+PiBCdXQgZ29pbmcgYSBzdGVwIGJhY2sgY2FjaGluZyB0
aGUgbWFwcGluZyBpcyBpcnJlbGV2YW50IGZvcg0KPj4+PiBjb2hlcmVuY3kuDQo+Pj4+IEV2ZW4g
aWYgeW91IGRvbid0IGNhY2hlIHRoZSBtYXBwaW5nIHlvdSBkb24ndCBnZXQgY29oZXJlbmN5Lg0K
Pj4+PiAgIA0KPj4+ICAgDQo+Pj4gWW91IGFjdHVhbGx5IGRvIC0gYXQgbGVhc3Qgd2l0aCB1ZG1h
YnVmLCBhcyBpbiB0aGF0IGNhc2UNCj4+PiBkbWFfYnVmX21hcF9hdHRhY2htZW50KCkgLyBkbWFf
YnVmX3VubWFwX2F0dGFjaG1lbnQoKSB3aWxsIGhhbmRsZQ0KPj4+IGNhY2hlDQo+Pj4gY29oZXJl
bmN5IHdoZW4gdGhlIFNHcyBhcmUgbWFwcGVkL3VubWFwcGVkLg0KPj4+ICAgDQo+PiAgIA0KPj4g
IMKgV2VsbCBJIGp1c3QgZG91YmxlIGNoZWNrZWQgdGhlIHNvdXJjZSBpbiA2LjcuMSBhbmQgSSBj
YW4ndCBzZWUNCj4+IHVkbWFidWYgZG9pbmcgYW55dGhpbmcgZm9yIGNhY2hlIGNvaGVyZW5jeSBp
biBtYXAvdW5tYXAuDQo+PiAgIA0KPj4gIMKgQWxsIGl0IGRvZXMgaXMgY2FsbGluZyBkbWFfbWFw
X3NndGFibGUoKSBhbmQgZG1hX3VubWFwX3NndGFibGUoKSB0bw0KPj4gY3JlYXRlIGFuZCBkZXN0
cm95IHRoZSBTRyB0YWJsZSBhbmQgdGhvc2UgYXJlIG5vdCBzdXBwb3NlZCB0byBzeW5jDQo+PiBh
bnl0aGluZyB0byB0aGUgQ1BVIGNhY2hlLg0KPj4gICANCj4+ICDCoEluIG90aGVyIHdvcmRzIGRy
aXZlcnMgdXN1YWxseSB1c2UgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyBoZXJlLCBpdCdzDQo+PiBq
dXN0IHRoYXQgdGhpcyBpcyBtaXNzaW5nIGZyb20gdWRtYWJ1Zi4NCj4gDQo+IE9rLg0KPiAgIA0K
Pj4+ICAgDQo+Pj4gVGhlIHByb2JsZW0gd2FzIHRoZW4gdGhhdCBkbWFfYnVmX3VubWFwX2F0dGFj
aG1lbnQgY2Fubm90IGJlIGNhbGxlZA0KPj4+IGJlZm9yZSB0aGUgZG1hX2ZlbmNlIGlzIHNpZ25h
bGVkLCBhbmQgY2FsbGluZyBpdCBhZnRlciBpcyBhbHJlYWR5DQo+Pj4gdG9vDQo+Pj4gbGF0ZSAo
YmVjYXVzZSB0aGUgZmVuY2Ugd291bGQgYmUgc2lnbmFsZWQgYmVmb3JlIHRoZSBkYXRhIGlzDQo+
Pj4gc3luYydkKS4NCj4+PiAgIA0KPj4gICANCj4+ICDCoFdlbGwgd2hhdCBzeW5jIGFyZSB5b3Ug
dGFsa2luZyBhYm91dD8gQ1BVIHN5bmM/IEluIERNQS1idWYgdGhhdCBpcw0KPj4gaGFuZGxlZCBk
aWZmZXJlbnRseS4NCj4+ICAgDQo+PiAgwqBGb3IgaW1wb3J0ZXJzIGl0J3MgbWFuZGF0b3J5IHRo
YXQgdGhleSBjYW4gYmUgY29oZXJlbnQgd2l0aCB0aGUNCj4+IGV4cG9ydGVyLiBUaGF0IHVzdWFs
bHkgbWVhbnMgdGhleSBjYW4gc25vb3AgdGhlIENQVSBjYWNoZSBpZiB0aGUNCj4+IGV4cG9ydGVy
IGNhbiBzbm9vcCB0aGUgQ1BVIGNhY2hlLg0KPiANCj4gSSBzZWVtIHRvIGhhdmUgc3VjaCBhIHN5
c3RlbSB3aGVyZSBvbmUgZGV2aWNlIGNhbiBzbm9vcCB0aGUgQ1BVIGNhY2hlDQo+IGFuZCB0aGUg
b3RoZXIgY2Fubm90LiBUaGVyZWZvcmUgaWYgSSB3YW50IHRvIHN1cHBvcnQgaXQgcHJvcGVybHks
IEkgZG8NCj4gbmVlZCBjYWNoZSBmbHVzaC9zeW5jLiBJIGRvbid0IGFjdHVhbGx5IHRyeSB0byBh
Y2Nlc3MgdGhlIGRhdGEgdXNpbmcNCj4gdGhlIENQVSAoYW5kIHdoZW4gSSBkbywgSSBjYWxsIHRo
ZSBzeW5jIHN0YXJ0L2VuZCBpb2N0bHMpLg0KPiANCg0KSWYgeW91IGRvbid0IGFjY2VzcyB0aGUg
ZGF0YSB1c2luZyB0aGUgQ1BVLCB0aGVuIGhvdyBkaWQgdGhlIGRhdGENCmVuZCB1cCBpbiB0aGUg
Q1BVIGNhY2hlcz8gSWYgeW91IGhhdmUgYSBkZXZpY2UgdGhhdCBjYW4gd3JpdGUtYWxsb2NhdGUN
CmludG8geW91ciBDUFUgY2FjaGUsIGJ1dCBzb21lIG90aGVyIGRldmljZSBpbiB0aGUgc3lzdGVt
IGNhbm5vdCBzbm9vcA0KdGhhdCBkYXRhIGJhY2sgb3V0IHRoZW4gdGhhdCBpcyBqdXN0IGJyb2tl
biBhbmQgdGhvc2UgZGV2aWNlcyBjYW5ub3QNCnJlYXNvbmFibHkgc2hhcmUgYnVmZmVycy4uDQoN
Ck5vdyB3ZSBkbyBoYXZlIHN5c3RlbXMgd2hlcmUgc29tZSBoYXJkd2FyZSBjYW4gc25vb3AgQ1BV
KG9yIEwzKSBjYWNoZXMNCmFuZCBvdGhlcnMgY2Fubm90LCBidXQgdGhleSB3aWxsIG5vdCAqYWxs
b2NhdGUqIGludG8gdGhvc2UgY2FjaGVzDQoodW5sZXNzIHRoZXkgYWxzbyBoYXZlIHRoZSBhYmls
aXR5IHRvIHN5bmMgdGhlbSB3aXRob3V0IENQVSBpbiB0aGUgbG9vcCkuDQoNCllvdXIgcHJvYmxl
bSBtYXkgYmUgaWYgeW91IGFyZSBzdGlsbCB1c2luZyB1ZG1hYnVmIGRyaXZlciBhcyB5b3VyDQpE
TUEtQlVGIGV4cG9ydGVyLCB3aGljaCBhcyBzYWlkIGJlZm9yZSBpcyBicm9rZW4gKGFuZCBJIGp1
c3Qgc2VudCBzb21lDQpwYXRjaGVzIHdpdGggYSBmZXcgZml4ZXMganVzdCBmb3IgeW91IDopKS4g
Rm9yIHVkbWFidWYsIGRhdGEgc3RhcnRzDQppbiB0aGUgQ1BVIGRvbWFpbiAoaW4gY2FjaGVzKSBh
bmQgaXMgb25seSBldmVyIHN5bmNlZCBmb3IgdGhlIENQVSwNCm5vdCBmb3IgYXR0YWNoZWQgZGV2
aWNlcy4gU28gaW4gdGhpcyBjYXNlIHRoZSB3cml0aW5nIGRldmljZSBtaWdodA0KdXBkYXRlIHRo
b3NlIGNhY2hlIGxpbmVzIGJ1dCBhIG5vbi1zbm9vcGluZyByZWFkZXIgd291bGQgbmV2ZXIgc2Vl
DQp0aG9zZSB1cGRhdGVzLg0KDQpJJ20gbm90IHNheWluZyB0aGVyZSBpc24ndCBhIG5lZWQgZm9y
IHRoZXNlIG5ldyB7YmVnaW4sZW5kfV9hY2Nlc3MoKQ0KZnVuY3Rpb25zLiBJIGNhbiB0aGluayBv
ZiBhIGZldyBpbnRlcmVzdGluZyB1c2VjYXNlcywgYnV0IGFzIHlvdQ0Kc2F5IGJlbG93IHRoYXQg
d291bGQgYmUgZ29vZCB0byB3b3JrIG91dCBpbiBhIGRpZmZlcmVudCBzZXJpZXMuDQoNCkFuZHJl
dw0KDQo+IA0KPj4gIMKgRm9yIGV4cG9ydGVycyB5b3UgY2FuIGltcGxlbWVudCB0aGUgYmVnaW4v
ZW5kIENQVSBhY2Nlc3MgZnVuY3Rpb25zDQo+PiB3aGljaCBhbGxvd3MgeW91IHRvIGltcGxlbWVu
dCBzb21ldGhpbmcgZXZlbiBpZiB5b3VyIGV4cG9ydGluZyBkZXZpY2UNCj4+IGNhbid0IHNub29w
IHRoZSBDUFUgY2FjaGUuDQo+IA0KPiBUaGF0IG9ubHkgd29ya3MgaWYgdGhlIGltcG9ydGVycyBj
YWxsIHRoZSBiZWdpbl9jcHVfYWNjZXNzKCkgLw0KPiBlbmRfY3B1X2FjY2VzcygpLCB3aGljaCB0
aGV5IGRvbid0Lg0KPiANCj4gICANCj4+PiBEYW5pZWwgLyBTaW1hIHN1Z2dlc3RlZCB0aGVuIHRo
YXQgSSBjYWNoZSB0aGUgbWFwcGluZyBhbmQgYWRkIG5ldw0KPj4+IGZ1bmN0aW9ucyB0byBlbnN1
cmUgY2FjaGUgY29oZXJlbmN5LCB3aGljaCBpcyB3aGF0IHRoZXNlIHBhdGNoZXMNCj4+PiBhcmUN
Cj4+PiBhYm91dC4NCj4+PiAgIA0KPj4gICANCj4+ICDCoFllYWgsIEkndmUgbm93IGNhdGNoZWQg
dXAgb24gdGhlIGxhdGVzdCBtYWlsLiBTb3JyeSBJIGhhdmVuJ3Qgc2Vlbg0KPj4gdGhhdCBiZWZv
cmUuDQo+PiAgIA0KPj4gICANCj4+PiAgIA0KPj4+DQo+Pj4gICANCj4+Pj4gICANCj4+Pj4gSW4g
b3RoZXIgd29yZHMgZXhwb3J0ZXJzIGFyZSBub3QgcmVxdWlyZSB0byBjYWxsIHN5bmNfdG9fY3B1
IG9yDQo+Pj4+IHN5bmNfdG9fZGV2aWNlIHdoZW4geW91IGNyZWF0ZSBhIG1hcHBpbmcuDQo+Pj4+
DQo+Pj4+IFdoYXQgZXhhY3RseSBpcyB5b3VyIHVzZSBjYXNlIGhlcmU/IEFuZCB3aHkgZG9lcyBj
b2hlcmVuY3kNCj4+Pj4gbWF0dGVycz8NCj4+Pj4gICANCj4+PiAgIA0KPj4+IE15IHVzZS1jYXNl
IGlzLCBJIGNyZWF0ZSBETUFCVUZzIHdpdGggdWRtYWJ1ZiwgdGhhdCBJIGF0dGFjaCB0bw0KPj4+
IFVTQi9mdW5jdGlvbmZzIHdpdGggdGhlIGludGVyZmFjZSBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0
Y2hzZXQuIEkNCj4+PiBhdHRhY2gNCj4+PiB0aGVtIHRvIElJTyB3aXRoIGEgc2ltaWxhciBpbnRl
cmZhY2UgKGJlaW5nIHVwc3RyZWFtZWQgaW4NCj4+PiBwYXJhbGxlbCksDQo+Pj4gYW5kIHRyYW5z
ZmVyIGRhdGEgZnJvbSBVU0IgdG8gSUlPIGFuZCB2aWNlLXZlcnNhIGluIGEgemVyby1jb3B5DQo+
Pj4gZmFzaGlvbi4NCj4+Pg0KPj4+IFRoaXMgd29ya3MgcGVyZmVjdGx5IGZpbmUgYXMgbG9uZyBh
cyB0aGUgVVNCIGFuZCBJSU8gaGFyZHdhcmUgYXJlDQo+Pj4gY29oZXJlbnQgYmV0d2VlbiB0aGVt
c2VsdmVzLCB3aGljaCBpcyB0aGUgY2FzZSBvbiBtb3N0IG9mIG91cg0KPj4+IGJvYXJkcy4NCj4+
PiBIb3dldmVyIEkgZG8gaGF2ZSBhIGJvYXJkICh3aXRoIGEgWGlsaW54IFVsdHJhc2NhbGUgU29D
KSB3aGVyZSBpdA0KPj4+IGlzDQo+Pj4gbm90IHRoZSBjYXNlLCBhbmQgY2FjaGUgZmx1c2hlcy9z
eW5jIGFyZSBuZWVkZWQuIFNvIEkgd2FzIHRyeWluZyB0bw0KPj4+IHJld29yayB0aGVzZSBuZXcg
aW50ZXJmYWNlcyB0byB3b3JrIG9uIHRoYXQgc3lzdGVtIHRvby4NCj4+PiAgIA0KPj4gICANCj4+
ICDCoFllYWgsIHRoYXQgc291bmRzIHN0cm9uZ2x5IGxpa2Ugb25lIG9mIHRoZSB1c2UgY2FzZXMg
d2UgaGF2ZQ0KPj4gcmVqZWN0ZWQgc28gZmFyLg0KPj4gICANCj4+ICAgDQo+PiAgIA0KPj4+ICAg
DQo+Pj4gSWYgdGhpcyByZWFsbHkgaXMgYSBuby1ubywgdGhlbiBJIGFtIGZpbmUgd2l0aCB0aGUg
YXNzdW1wdGlvbiB0aGF0DQo+Pj4gZGV2aWNlcyBzaGFyaW5nIGEgRE1BQlVGIG11c3QgYmUgY29o
ZXJlbnQgYmV0d2VlbiB0aGVtc2VsdmVzOyBidXQNCj4+PiB0aGF0J3Mgc29tZXRoaW5nIHRoYXQg
c2hvdWxkIHByb2JhYmx5IGJlIGVuZm9yY2VkIHJhdGhlciB0aGFuDQo+Pj4gYXNzdW1lZC4NCj4+
Pg0KPj4+IChhbmQgSSAqdGhpbmsqIHRoZXJlIGlzIGEgd2F5IHRvIGZvcmNlIGNvaGVyZW5jeSBp
biB0aGUNCj4+PiBVbHRyYXNjYWxlJ3MNCj4+PiBpbnRlcmNvbm5lY3QgLSB3ZSdyZSBpbnZlc3Rp
Z2F0aW5nIGl0KQ0KPj4+ICAgDQo+PiAgIA0KPj4gIMKgV2hhdCB5b3UgY2FuIGRvIGlzIHRoYXQg
aW5zdGVhZCBvZiB1c2luZyB1ZG1hYnVmIG9yIGRtYS1oZWFwcyBpcw0KPj4gdGhhdCB0aGUgZGV2
aWNlIHdoaWNoIGNhbid0IHByb3ZpZGUgY29oZXJlbmN5IGFjdCBhcyBleHBvcnRlcnMgb2YgdGhl
DQo+PiBidWZmZXJzLg0KPj4gICANCj4+ICDCoFRoZSBleHBvcnRlciBpcyBhbGxvd2VkIHRvIGNh
bGwgc3luY19mb3JfY3B1L3N5bmNfZm9yX2RldmljZSBvbiBpdCdzDQo+PiBvd24gYnVmZmVycyBh
bmQgYWxzbyBnZXRzIGJlZ2luL2VuZCBDUFUgYWNjZXNzIG5vdGZpY2F0aW9ucy4gU28geW91DQo+
PiBjYW4gdGhlbiBoYW5kbGUgY29oZXJlbmN5IGJldHdlZW4gdGhlIGV4cG9ydGVyIGFuZCB0aGUg
Q1BVLg0KPiANCj4gQnV0IGFnYWluIHRoYXQgd291bGQgb25seSB3b3JrIGlmIHRoZSBpbXBvcnRl
cnMgd291bGQgY2FsbA0KPiBiZWdpbl9jcHVfYWNjZXNzKCkgLyBlbmRfY3B1X2FjY2VzcygpLCB3
aGljaCB0aGV5IGRvbid0LCBiZWNhdXNlIHRoZXkNCj4gZG9uJ3QgYWN0dWFsbHkgYWNjZXNzIHRo
ZSBkYXRhIHVzaW5nIHRoZSBDUFUuDQo+IA0KPiBVbmxlc3MgeW91IG1lYW4gdGhhdCB0aGUgZXhw
b3J0ZXIgY2FuIGNhbGwgc3luY19mb3JfY3B1L3N5bmNfZm9yX2RldmljZQ0KPiBiZWZvcmUvYWZ0
ZXIgZXZlcnkgc2luZ2xlIERNQSB0cmFuc2ZlciBzbyB0aGF0IHRoZSBkYXRhIGFwcGVhcnMNCj4g
Y29oZXJlbnQgdG8gdGhlIGltcG9ydGVycywgd2l0aG91dCB0aGVtIGhhdmluZyB0byBjYWxsDQo+
IGJlZ2luX2NwdV9hY2Nlc3MoKSAvIGVuZF9jcHVfYWNjZXNzKCkuDQo+IA0KPiBJbiB3aGljaCBj
YXNlIC0gdGhpcyB3b3VsZCBzdGlsbCBkZW11bHRpcGx5IHRoZSBjb21wbGV4aXR5OyBteSBVU0It
DQo+IGZ1bmN0aW9uZnMgaW50ZXJmYWNlIGhlcmUgKGFuZCBJSU8gaW50ZXJmYWNlIGluIHRoZSBz
ZXBhcmF0ZSBwYXRjaHNldCkNCj4gYXJlIG5vdCBkZXZpY2Utc3BlY2lmaWMsIHNvIEknZCByYXRo
ZXIga2VlcCB0aGVtIGltcG9ydGVycy4NCj4gICANCj4+ICDCoElmIHlvdSByZWFsbHkgZG9uJ3Qg
aGF2ZSBjb2hlcmVuY3kgYmV0d2VlbiBkZXZpY2VzIHRoZW4gdGhhdCB3b3VsZA0KPj4gYmUgYSBy
ZWFsbHkgbmV3IHVzZSBjYXNlIGFuZCB3ZSB3b3VsZCBuZWVkIG11Y2ggbW9yZSBhZ3JlZW1lbnQg
b24gaG93DQo+PiB0byBkbyB0aGlzLg0KPiANCj4gW3NuaXBdDQo+IA0KPiBBZ3JlZWQuIERlc2ln
aW5nIGEgZ29vZCBnZW5lcmljIHNvbHV0aW9uIHdvdWxkIGJlIGJldHRlci4NCj4gDQo+IFdpdGgg
dGhhdCBzYWlkLi4uDQo+IA0KPiBMZXQncyBrZWVwIGl0IG91dCBvZiB0aGlzIFVTQi1mdW5jdGlv
bmZzIGludGVyZmFjZSBmb3Igbm93LiBUaGUNCj4gaW50ZXJmYWNlIGRvZXMgd29yayBwZXJmZWN0
bHkgZmluZSBvbiBwbGF0Zm9ybXMgdGhhdCBkb24ndCBoYXZlDQo+IGNvaGVyZW5jeSBwcm9ibGVt
cy4gVGhlIGNvaGVyZW5jeSBpc3N1ZSBpbiBpdHNlbGYgcmVhbGx5IGlzIGENCj4gdGFuZ2VudGlh
bCBpc3N1ZS4NCj4gDQo+IFNvIEkgd2lsbCBzZW5kIGEgdjYgd2hlcmUgSSBkb24ndCB0cnkgdG8g
Zm9yY2UgdGhlIGNhY2hlIGNvaGVyZW5jeSAtDQo+IGFuZCBpbnN0ZWFkIGFzc3VtZSB0aGF0IHRo
ZSBhdHRhY2hlZCBkZXZpY2VzIGFyZSBjb2hlcmVudCBiZXR3ZWVuDQo+IHRoZW1zZWx2ZXMuDQo+
IA0KPiBCdXQgaXQgd291bGQgYmUgZXZlbiBiZXR0ZXIgdG8gaGF2ZSBhIHdheSB0byBkZXRlY3Qg
bm9uLWNvaGVyZW5jeSBhbmQNCj4gcmV0dXJuIGFuIGVycm9yIG9uIGF0dGFjaC4NCj4gDQo+IENo
ZWVycywNCj4gLVBhdWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
