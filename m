Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0096BBADF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:29:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D5363F456
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:29:25 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 6F4843E8AB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 13:48:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b="KTG/4UqJ";
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id 0EE6F42037;
	Thu,  9 Mar 2023 13:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678369725;
	bh=AE3z/Hbuidfh0VnEdFu5MrRvC3cGbJJCXqEsPKkKv1I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=KTG/4UqJc8WfavSUh7tqLucA9Wp0OzX4DyjTmJUOp0sRWjLxntOHlni3Y7XaywGDd
	 hU4uXroyp55O6O1tp6qYAIxz+d8FeMIxLBPltCQDvMDCPDO11JEXrxE97V9VaoDS2N
	 JXflI7UOyImooOYtVzFxbWaF3BGr5UNDZFXoGWpcURhEzBPFGOXzZstYOndJg7wJu9
	 o3zByU3WOc1Ihx4z7svazX+2gQOlWDYn5sacZcA4MLiiP9AsOfzTjfi7Bd36YumoOJ
	 6aVufEmspdikuXAb6yavwZ2tJ5pzEC4mrfqcvUBqMQeJM0LXdYFW523hFD7GDmEmuG
	 dd2HP9y7U3aBw==
Message-ID: <e517dc90-0289-7339-e36e-54ba2635ed1f@asahilina.net>
Date: Thu, 9 Mar 2023 22:48:37 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>,
 Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-11-917ff5bc80a8@asahilina.net>
 <bbd7c5ee-c2f0-3e19-757d-a9aff1a26d3d@linux.intel.com>
 <585fa052-4eff-940e-b307-2415c315686a@amd.com>
 <3320e497-09c0-6eb6-84c5-bab2e63f28ec@asahilina.net>
 <7b39ef96-3ec5-c492-6e1b-bf065b7c90a2@amd.com>
 <0f14c1ae-0c39-106c-9563-7c1c672154c0@asahilina.net>
 <e18500b5-21a0-77fd-8434-86258cefce5a@amd.com>
 <8696d00a-c642-b080-c19a-b0e619e4b585@asahilina.net>
 <5f0814a3-4be3-a609-d3b3-dd51a4f459a1@amd.com>
 <9403e89d-a78f-8abd-2869-20da23d89475@asahilina.net>
 <ac92cea6-89e7-6147-a8fb-8b76e89cdcb6@amd.com>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <ac92cea6-89e7-6147-a8fb-8b76e89cdcb6@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6F4843E8AB
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[asahilina.net:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2X5NUFXR5ZDHTWS75TQ5QCZT3EVDGY65
X-Message-ID-Hash: 2X5NUFXR5ZDHTWS75TQ5QCZT3EVDGY65
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:24:29 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/18] drm/scheduler: Clean up jobs when the scheduler is torn down
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2X5NUFXR5ZDHTWS75TQ5QCZT3EVDGY65/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDkvMDMvMjAyMyAyMC40NywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMDkuMDMu
MjMgdW0gMTA6NDMgc2NocmllYiBBc2FoaSBMaW5hOg0KPj4gT24gMDkvMDMvMjAyMyAxNy40Miwg
Q2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+PiBBbSAwOC4wMy4yMyB1bSAyMDozNyBzY2hyaWVi
IEFzYWhpIExpbmE6DQo+Pj4+IE9uIDA5LzAzLzIwMjMgMDMuMTIsIENocmlzdGlhbiBLw7ZuaWcg
d3JvdGU6DQo+Pj4+PiBBbSAwOC4wMy4yMyB1bSAxODozMiBzY2hyaWViIEFzYWhpIExpbmE6DQo+
Pj4+Pj4gW1NOSVBdDQo+Pj4+Pj4gWWVzIGJ1dC4uLiBub25lIG9mIHRoaXMgY2xlYW5zIHVwIGpv
YnMgdGhhdCBhcmUgYWxyZWFkeSBzdWJtaXR0ZWQgYnkgdGhlDQo+Pj4+Pj4gc2NoZWR1bGVyIGFu
ZCBpbiBpdHMgcGVuZGluZyBsaXN0LCB3aXRoIHJlZ2lzdGVyZWQgY29tcGxldGlvbiBjYWxsYmFj
a3MsDQo+Pj4+Pj4gd2hpY2ggd2VyZSBhbHJlYWR5IHBvcHBlZCBvZmYgb2YgdGhlIGVudGl0aWVz
Lg0KPj4+Pj4+DQo+Pj4+Pj4gKlRoYXQqIGlzIHRoZSBwcm9ibGVtIHRoaXMgcGF0Y2ggZml4ZXMh
DQo+Pj4+PiBBaCEgWWVzIHRoYXQgbWFrZXMgbW9yZSBzZW5zZSBub3cuDQo+Pj4+Pg0KPj4+Pj4+
PiBXZSBjb3VsZCBhZGQgYSB3YXJuaW5nIHdoZW4gdXNlcnMgb2YgdGhpcyBBUEkgZG9lc24ndCBk
byB0aGlzDQo+Pj4+Pj4+IGNvcnJlY3RseSwgYnV0IGNsZWFuaW5nIHVwIGluY29ycmVjdCBBUEkg
dXNlIGlzIGNsZWFybHkgc29tZXRoaW5nIHdlDQo+Pj4+Pj4+IGRvbid0IHdhbnQgaGVyZS4NCj4+
Pj4+PiBJdCBpcyB0aGUgam9iIG9mIHRoZSBSdXN0IGFic3RyYWN0aW9ucyB0byBtYWtlIGluY29y
cmVjdCBBUEkgdXNlIHRoYXQNCj4+Pj4+PiBsZWFkcyB0byBtZW1vcnkgdW5zYWZldHkgaW1wb3Nz
aWJsZS4gU28gZXZlbiBpZiB5b3UgZG9uJ3Qgd2FudCB0aGF0IGluDQo+Pj4+Pj4gQywgaXQncyBt
eSBqb2IgdG8gZG8gdGhhdCBmb3IgUnVzdC4uLiBhbmQgcmlnaHQgbm93LCBJIGp1c3QgY2FuJ3QN
Cj4+Pj4+PiBiZWNhdXNlIGRybV9zY2hlZCBkb2Vzbid0IHByb3ZpZGUgYW4gQVBJIHRoYXQgY2Fu
IGJlIHNhZmVseSB3cmFwcGVkDQo+Pj4+Pj4gd2l0aG91dCB3ZWlyZCBiaXRzIG9mIGJhYnlzaXR0
aW5nIGZ1bmN0aW9uYWxpdHkgb24gdG9wIChsaWtlIHRyYWNraW5nDQo+Pj4+Pj4gam9icyBvdXRz
aWRlIG9yIGF3a3dhcmRseSBtYWtpbmcgam9icyBob2xkIGEgcmVmZXJlbmNlIHRvIHRoZSBzY2hl
ZHVsZXINCj4+Pj4+PiBhbmQgZGVmZXIgZHJvcHBpbmcgaXQgdG8gYW5vdGhlciB0aHJlYWQpLg0K
Pj4+Pj4gWWVhaCwgdGhhdCB3YXMgZGlzY3Vzc2VkIGJlZm9yZSBidXQgcmVqZWN0ZWQuDQo+Pj4+
Pg0KPj4+Pj4gVGhlIGFyZ3VtZW50IHdhcyB0aGF0IHVwcGVyIGxheWVyIG5lZWRzIHRvIHdhaXQg
Zm9yIHRoZSBodyB0byBiZWNvbWUNCj4+Pj4+IGlkbGUgYmVmb3JlIHRoZSBzY2hlZHVsZXIgY2Fu
IGJlIGRlc3Ryb3llZCBhbnl3YXkuDQo+Pj4+IFVuZm9ydHVuYXRlbHksIHRoYXQncyBub3QgYSBy
ZXF1aXJlbWVudCB5b3UgY2FuIGVuY29kZSBpbiB0aGUgUnVzdCB0eXBlDQo+Pj4+IHN5c3RlbSBl
YXNpbHkgYXMgZmFyIGFzIEkga25vdywgYW5kIFJ1c3Qgc2FmZXR5IHJ1bGVzIG1lYW4gd2UgbmVl
ZCB0bw0KPj4+PiBtYWtlIGl0IHNhZmUgZXZlbiBpZiB0aGUgdXBwZXIgbGF5ZXIgZG9lc24ndCBk
byB0aGlzLi4uIChvciBlbHNlIHdlIGhhdmUNCj4+Pj4gdG8gbWFyayB0aGUgZW50aXJlIGRybV9z
Y2hlZCBhYnN0cmFjdGlvbiB1bnNhZmUsIGJ1dCB0aGF0IHdvdWxkIGJlIGEgcGl0eSkuDQo+Pj4g
WWVhaCwgdGhhdCBzaG91bGQgcmVhbGx5IG5vdCBiZSBzb21ldGhpbmcgd2Ugc2hvdWxkIGRvLg0K
Pj4+DQo+Pj4gQnV0IHlvdSBjb3VsZCBtYWtlIHRoZSBzY2hlZHVsZXIgZGVwZW5kIG9uIHlvdXIg
ZncgY29udGV4dCBvYmplY3QsIGRvbid0DQo+Pj4geW91Pw0KPj4gWWVzLCBhbmQgdGhhdCB3b3Vs
ZCBmaXggdGhlIHByb2JsZW0gZm9yIHRoaXMgZHJpdmVyLCBidXQgaXQgd291bGRuJ3QNCj4+IG1h
a2UgdGhlIGFic3RyYWN0aW9uIHNhZmUuIFRoZSB0aGluZyBpcyB3ZSBoYXZlIHRvIG1ha2UgaXQg
KmltcG9zc2libGUqDQo+PiB0byBtaXN1c2UgZHJtX3NjaGVkIGluIHN1Y2ggYSB3YXkgdGhhdCBp
dCBjcmFzaGVzLCBhdCB0aGUgUnVzdA0KPj4gYWJzdHJhY3Rpb24gbGV2ZWwuIElmIHdlIHN0YXJ0
IGRlcGVuZGluZyBvbiB0aGUgZHJpdmVyIGZvbGxvd2luZyBydWxlcw0KPj4gbGlrZSB0aGF0LCB0
aGF0IG1lYW5zIHRoZSBkcm1fc2NoZWQgYWJzdHJhY3Rpb24gaGFzIHRvIGJlIG1hcmtlZCB1bnNh
ZmUuDQo+Pg0KPj4+IERldGFjaGluZyB0aGUgc2NoZWR1bGVyIGZyb20gdGhlIHVuZGVybHlpbmcg
aHcgZmVuY2VzIGlzIGNlcnRhaW5seQ0KPj4+IHBvc3NpYmxlLCBidXQgd2UgcmVtb3ZlZCB0aGF0
IGZ1bmN0aW9uYWxpdHkgYmVjYXVzZSBzb21lIHBlb3BsZSBwZW9wbGUNCj4+PiB0cmllZCB0byBm
b3JjZSBwdXNoIHNvbWUgV2luZG93cyByZWNvdmVyeSBtb2R1bGUgaW50byBMaW51eC4gV2UgYXJl
IGluDQo+Pj4gdGhlIHByb2Nlc3Mgb2YgcmV2ZXJ0aW5nIHRoYXQgYW5kIGNsZWFuaW5nIHRoaW5n
cyB1cCBvbmNlIG1vcmUsIGJ1dCB0aGF0DQo+Pj4gd2lsbCB0YWtlIGEgd2hpbGUuDQo+PiBPa2F5
LCBidXQgSSBkb24ndCBzZWUgd2h5IHRoYXQgc2hvdWxkIGJsb2NrIHRoZSBSdXN0IGFic3RyYWN0
aW9ucy4uLg0KPiANCj4gQmVjYXVzZSBldmVuIHdpdGggcmVtb3ZpbmcgdGhlIGZlbmNlIGNhbGxi
YWNrIHRoaXMgaXMgaW5oZXJlbnRseSB1bnNhZmUuDQo+IA0KPiBZb3Ugbm90IG9ubHkgbmVlZCB0
byByZW1vdmUgdGhlIGNhbGxiYWNrLCBidXQgYWxzbyBtYWtlIHN1cmUgdGhhdCBubyANCj4gcGFy
YWxsZWwgdGltZW91dCBoYW5kbGluZyBpcyBydW5uaW5nLg0KDQpJZiBieSB0aGF0IHlvdSBtZWFu
IHRoYXQgdGhlIHRpbWVvdXQgaGFuZGxpbmcgZnVuY3Rpb25zIGFyZW4ndCBiZWluZw0KY2FsbGVk
IGJ5IHRoZSBkcml2ZXIsIHRoZW4gdGhhdCdzIGltcGxpZWQuIElmIHRoZSBzY2hlZHVsZXIgaXMg
YmVpbmcNCmRyb3BwZWQsIGJ5IGRlZmluaXRpb24gdGhlcmUgYXJlIG5vIHJlZmVyZW5jZXMgbGVm
dCB0byBjYWxsIGludG8gdGhlDQpzY2hlZHVsZXIgZGlyZWN0bHkgZnJvbSB0aGUgUnVzdCBzaWRl
LiBTbyB3ZSBvbmx5IG5lZWQgdG8gd29ycnkgYWJvdXQNCndoYXQgZHJtX3NjaGVkIGl0c2VsZiBk
b2VzLg0KDQpSaWdodCBub3cgdGhlIGNsZWFudXAgZnVuY3Rpb24gdGVhcnMgZG93biB0aGUgdGlt
ZW91dCB3b3JrIGF0IHRoZSBlbmQsDQpidXQgaXQgcHJvYmFibHkgbWFrZXMgc2Vuc2UgdG8gZG8g
aXQgYXQgdGhlIHN0YXJ0PyBUaGVuIGlmIHdlIGRvIHRoYXQNCmFuZCBzdG9wIHRoZSBrdGhyZWFk
LCB3ZSBjYW4gYmUgcmVhbGx5IHN1cmUgbm90aGluZyBlbHNlIGlzIGFjY2Vzc2luZw0KdGhlIHNj
aGVkdWxlciBhbmQgd2UgY2FuIGNsZWFuIHVwIHdpdGhvdXQgdGFraW5nIGFueSBsb2NrczoNCg0K
Um91Z2hseToNCg0Kdm9pZCBkcm1fc2NoZWRfZmluaShzdHJ1Y3QgZHJtX2dwdV9zY2hlZHVsZXIg
KnNjaGVkKQ0Kew0KICAgIHNjaGVkLT5yZWFkeSA9IGZhbHNlOyAvKiBTaG91bGQgcHJvYmFibHkg
ZG8gdGhpcyBmaXJzdD8gKi8NCiAgICBrdGhyZWFkX3N0b3Aoc2NoZWQtPnRocmVhZCk7DQogICAg
Y2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZzY2hlZC0+d29ya190ZHIpOw0KDQogICAgLyogQ2xl
YW4gdXAgdGhlIHBlbmRpbmdfbGlzdCBoZXJlICovDQp9DQoNCkknbSBhbHNvIG5vdCBzdXJlIHdo
YXQgdGhlIHJlc3Qgb2YgdGhlIGRybV9zY2hlZF9maW5pKCkgZnVuY3Rpb24gaXMNCmRvaW5nIHJp
Z2h0IG5vdy4gSXQncyBnb2luZyB0aHJvdWdoIGFsbCBlbnRpdGllcyBhbmQgcmVtb3ZpbmcgdGhl
bSwgYW5kDQp0aGVuIHdha2VzIHVwIGVudGl0aWVzIHN0dWNrIGluIGRybV9zY2hlZF9lbnRpdHlf
Zmx1c2goKS4uLiBidXQgZGlkbid0DQp3ZSBqdXN0IGFncmVlIHRoYXQgdGhlIEFQSSByZXF1aXJl
cyB1c2VycyB0byB0ZWFyIGRvd24gZW50aXRpZXMgYmVmb3JlDQp0ZWFyaW5nIGRvd24gdGhlIHNj
aGVkdWxlciBhbnl3YXk/DQoNCn5+IExpbmENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
