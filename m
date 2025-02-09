Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5C5A2DD34
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  9 Feb 2025 12:56:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16E4944004
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  9 Feb 2025 11:56:50 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 21C993F63E
	for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Feb 2025 11:56:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=FDUUplSm;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B139BA401C9;
	Sun,  9 Feb 2025 11:54:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BBB8C4CEDD;
	Sun,  9 Feb 2025 11:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739102191;
	bh=Lz2w10qZ/7qf0GBvDV0ucsndxbEDejIrSm5OdLohrlc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FDUUplSm71iSeiNoCP8kgKWfH/FV7hnL/Pb6Ql0ehJB7KzeA4JJiYvqfe+AbgZyRO
	 p1NSbOUnNhOyiI81Qel+HotJUgFLt99w4fXpRJv+Fr4PO1AKn5ZdwfXVGWg5IIh/eS
	 jVUXvVzqiQdO1T/qSpllafTpUzMny3do/xNGzlFwlBsDOthdimAXo6YI8f48wODIdL
	 UgGufOquMx/cMto6ke6VChFxg1TQhJXUsdGPoW+iyxblOcl3HoGZkw2Cao6YYpE5/A
	 0oppnFn6xYT4HbhZ3HVjkmb1wqK3zBtlAzcbSBrxVVb8DHKghT7nXEaBVm/5kC829x
	 fVAfOPTKwQVgw==
Message-ID: <922691a1-10d0-4ff1-a174-a456235e6487@kernel.org>
Date: Sun, 9 Feb 2025 12:56:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Florent Tomasin <florent.tomasin@arm.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T . J . Mercier" <tjmercier@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Yong Wu <yong.wu@mediatek.com>
References: <cover.1738228114.git.florent.tomasin@arm.com>
 <36b57dcf20860398ba83985e1c5b6f6958d08ba7.1738228114.git.florent.tomasin@arm.com>
 <7234f25c-a2aa-4834-931b-aeeb7a49dfa7@kernel.org>
 <4b9deab1-e330-4c93-8260-75276c2bc9ff@arm.com>
 <c0aad911-ecc4-4b04-a453-6da226f76ed2@kernel.org>
 <5e0e2fbb22c2ffb0c5281727cd95d70f5f5ba696.camel@ndufresne.ca>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <5e0e2fbb22c2ffb0c5281727cd95d70f5f5ba696.camel@ndufresne.ca>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 21C993F63E
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ndufresne.ca,arm.com,kernel.org,collabora.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: KNKRKMGG4FC26S7O3PS54MNJLVQGVPCM
X-Message-ID-Hash: KNKRKMGG4FC26S7O3PS54MNJLVQGVPCM
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 3/5] dt-bindings: gpu: Add protected heap name to Mali Valhall CSF binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KNKRKMGG4FC26S7O3PS54MNJLVQGVPCM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDYvMDIvMjAyNSAyMjoyMSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToNCj4gTGUgbWVyY3Jl
ZGkgMDUgZsOpdnJpZXIgMjAyNSDDoCAxMDoxMyArMDEwMCwgS3J6eXN6dG9mIEtvemxvd3NraSBh
IMOpY3JpdMKgOg0KPj4gT24gMDMvMDIvMjAyNSAxNjozMSwgRmxvcmVudCBUb21hc2luIHdyb3Rl
Og0KPj4+IEhpIEtyenlzenRvZg0KPj4+DQo+Pj4gT24gMzAvMDEvMjAyNSAxMzoyNSwgS3J6eXN6
dG9mIEtvemxvd3NraSB3cm90ZToNCj4+Pj4gT24gMzAvMDEvMjAyNSAxNDowOCwgRmxvcmVudCBU
b21hc2luIHdyb3RlOg0KPj4+Pj4gQWxsb3cgbWFsaS12YWxoYWxsLWNzZiBkcml2ZXIgdG8gcmV0
cmlldmUgYSBwcm90ZWN0ZWQNCj4+Pj4+IGhlYXAgYXQgcHJvYmUgdGltZSBieSBwYXNzaW5nIHRo
ZSBuYW1lIG9mIHRoZSBoZWFwDQo+Pj4+PiBhcyBhdHRyaWJ1dGUgdG8gdGhlIGRldmljZSB0cmVl
IEdQVSBub2RlLg0KPj4+Pg0KPj4+PiBQbGVhc2Ugd3JhcCBjb21taXQgbWVzc2FnZSBhY2NvcmRp
bmcgdG8gTGludXggY29kaW5nIHN0eWxlIC8gc3VibWlzc2lvbg0KPj4+PiBwcm9jZXNzIChuZWl0
aGVyIHRvbyBlYXJseSBub3Igb3ZlciB0aGUgbGltaXQpOg0KPj4+PiBodHRwczovL2VsaXhpci5i
b290bGluLmNvbS9saW51eC92Ni40LXJjMS9zb3VyY2UvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL3N1
Ym1pdHRpbmctcGF0Y2hlcy5yc3QjTDU5Nw0KPj4+IEFwb2xvZ2llcywgSSB0aGluayBJIG1hZGUg
cXVpdGUgZmV3IG90aGVyIG1pc3Rha2VzIGluIHRoZSBzdHlsZSBvZiB0aGUNCj4+PiBwYXRjaGVz
IEkgc2VudC4gSSB3aWxsIHdvcmsgb24gaW1wcm92aW5nIHRoaXMgYXNwZWN0LCBhcHByZWNpYXRl
ZA0KPj4+DQo+Pj4+IFdoeSB0aGlzIGNhbm5vdCBiZSBwYXNzZWQgYnkgcGhhbmRsZSwganVzdCBs
aWtlIGFsbCByZXNlcnZlZCByZWdpb25zPw0KPj4+Pg0KPj4+PiBGcm9tIHdoZXJlIGRvIHlvdSB0
YWtlIHRoZXNlIHByb3RlY3RlZCBoZWFwcz8gRmlybXdhcmU/IFRoaXMgd291bGQNCj4+Pj4gZXhw
bGFpbiB3aHkgbm8gcmVsYXRpb24gaXMgaGVyZSAobm8gcHJvYmUgb3JkZXJpbmcsIG5vIGRldmlj
ZSBsaW5rcywNCj4+Pj4gbm90aGluZyBjb25uZWN0aW5nIHNlcGFyYXRlIGRldmljZXMpLg0KPj4+
DQo+Pj4gVGhlIHByb3RlY3RlZCBoZWFwIGlzIGdlbmVyYWx5IG9idGFpbmVkIGZyb20gYSBmaXJt
d2FyZSAoVEVFKSBhbmQgY291bGQNCj4+PiBzb21ldGltZXMgYmUgYSBjYXJ2ZWQtb3V0IG1lbW9y
eSB3aXRoIHJlc3RyaWN0ZWQgYWNjZXNzLg0KPj4NCj4+IFdoaWNoIGlzIGEgcmVzZXJ2ZWQgbWVt
b3J5LCBpc24ndCBpdD8NCj4+DQo+Pj4NCj4+PiBUaGUgUGFudGhvciBDU0Yga2VybmVsIGRyaXZl
ciBkb2VzIG5vdCBvd24gb3IgbWFuYWdlIHRoZSBwcm90ZWN0ZWQgaGVhcA0KPj4+IGFuZCBpcyBp
bnN0ZWFkIGEgY29uc3VtZXIgb2YgaXQgKGFzc3VtaW5nIHRoZSBoZWFwIGlzIG1hZGUgYXZhaWxh
YmxlIGJ5DQo+Pj4gdGhlIHN5c3RlbSBpbnRlZ3JhdG9yKS4NCj4+Pg0KPj4+IEkgaW5pdGlhbGx5
IHVzZWQgYSBwaGFuZGxlLCBidXQgdGhlbiBJIHJlYWxpc2VkIGl0IHdvdWxkIGludHJvZHVjZSBh
IG5ldw0KPj4+IEFQSSB0byBzaGFyZSB0aGUgaGVhcCBhY3Jvc3Mga2VybmVsIGRyaXZlci4gSW4g
YWRkaXRpb24gSSBmb3VuZCB0aGlzDQo+Pj4gcGF0Y2ggc2VyaWVzOg0KPj4+IC0NCj4+PiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjMwOTExMDIzMDM4LjMwNjQ5LTEteW9uZy53dUBt
ZWRpYXRlay5jb20vI3QNCj4+Pg0KPj4+IHdoaWNoIGludHJvZHVjZXMgYSBETUEgSGVhcCBBUEkg
dG8gdGhlIHJlc3Qgb2YgdGhlIGtlcm5lbCB0byBmaW5kIGENCj4+PiBoZWFwIGJ5IG5hbWU6DQo+
Pj4gLSBkbWFfaGVhcF9maW5kKCkNCj4+Pg0KPj4+IEkgdGhlbiBkZWNpZGVkIHRvIGZvbGxvdyB0
aGF0IGFwcHJvYWNoIHRvIGhlbHAgaXNvbGF0ZSB0aGUgaGVhcA0KPj4+IG1hbmFnZW1lbnQgZnJv
bSB0aGUgR1BVIGRyaXZlciBjb2RlLiBJbiB0aGUgUGFudGhvciBkcml2ZXIsIGlmIHRoZQ0KPj4+
IGhlYXAgaXMgbm90IGZvdW5kIGF0IHByb2JlIHRpbWUsIHRoZSBkcml2ZXIgd2lsbCBkZWZlciB0
aGUgcHJvYmUgdW50aWwNCj4+PiB0aGUgZXhwb3J0ZXIgbWFkZSBpdCBhdmFpbGFibGUuDQo+Pg0K
Pj4NCj4+IEkgZG9uJ3QgdGFsayBoZXJlIHJlYWxseSBhYm91dCB0aGUgZHJpdmVyIGJ1dCBldmVu
IGFib3ZlIG1lZGlhdGVrDQo+PiBwYXRjaHNldCB1c2VzIHJlc2VydmVkIG1lbW9yeSBiaW5kaW5n
cy4NCj4+DQo+PiBZb3UgZXhwbGFpbmVkIHNvbWUgdGhpbmdzIGFib3V0IGRyaXZlciB5ZXQgeW91
IGRpZCBub3QgYW5zd2VyIHRoZQ0KPj4gcXVlc3Rpb24uIFRoaXMgbG9va3MgbGlrZSByZXNlcnZl
ZCBtZW1vcnkuIElmIGl0IGRvZXMgbm90LCBicmluZw0KPj4gYXJndW1lbnRzIHdoeSB0aGlzIGJp
bmRpbmcgY2Fubm90IGJlIGEgcmVzZXJ2ZWQgbWVtb3J5LCB3aHkgaGFyZHdhcmUgaXMNCj4+IG5v
dCBhIGNhcnZlIG91dCBtZW1vcnkuDQo+IA0KPiBJIHRoaW5rIHRoZSBwb2ludCBpcyB0aGF0IGZy
b20gdGhlIE1hbGkgR1BVIHZpZXcsIHRoZSBtZW1vcnkgZG9lcyBub3QgbmVlZCB0byBiZQ0KPiB3
aXRoaW4gdGhlIHJhbmdlIHRoZSBMaW51eCBLZXJuZWwgYWN0dWFsbHkgc2VlLCBldmVuIHRob3Vn
aCBjdXJyZW50IGludGVncmF0aW9uDQoNCg0KRG8gSSBnZXQgaXQgcmlnaHQ6DQpNZW1vcnkgY2Fu
IGJlIG91dHNpZGUgb2Yga2VybmVsIGFkZHJlc3MgcmFuZ2UgYnV0IHlvdSBwdXQgaXQgdG8gdGhl
DQpiaW5kaW5ncyBhcyByZXNlcnZlZCBtZW1vcnk/IElmIHllcywgdGhlbiBJIHN0aWxsIGRvIG5v
dCB1bmRlcnN0YW5kIHdoeQ0KRFQgc2hvdWxkIGtlZXAgdGhhdCBpbmZvcm1hdGlvbi4gQmFzaWNh
bGx5LCB5b3UgY2FuIGNob29zZSB3aGF0ZXZlcg0KbWVtb3J5IGlzIHRoZXJlLCBiZWNhdXNlIGl0
IGFueXdheSB3b24ndCBpbnRlcmZlcmUgd2l0aCBMaW51eCwgcmlnaHQ/DQpMaW51eCBkb2VzIG5v
dCBoYXZlIGFueSByZWFzb25hYmxlIHdheSB0byBhY2Nlc3MgaXQuDQoNCkl0IG1pZ2h0IGludGVy
ZmVyZSB3aXRoIGZpcm13YXJlIG9yIG90aGVyIHByb2Nlc3NvcnMsIGJ1dCB0aGVuIGl0J3MgdGhl
DQpqb2Igb2YgZmlybXdhcmUgd2hpY2ggaGFzIGRpc2NvdmVyYWJsZSBpbnRlcmZhY2VzIGZvciB0
aGlzLg0KDQpUaGUgYmluZGluZyBzYXlzIGl0IGlzIGFib3V0IHByb3RlY3RlZCBoZWFwIG5hbWUs
IGJ1dCBpdCBleHBsYWlucw0Kbm90aGluZyB3aGF0IGlzIHRoYXQgcHJvdGVjdGVkIGhlYXAuIFlv
dSBwYXNzIGl0IHRvIHNvbWUgZmlybXdhcmUgYXMNCnN0cmluZz8gRG9lcyBub3QgbG9vayBsaWtl
LCByYXRoZXIgbG9va3MgbGlrZSBMaW51eCB0aGluZ3ksIGJ1dCB0aGlzDQphZ2FpbiBpcyBuZWl0
aGVyIGV4cGxhaW5lZCBpbiBjb21taXQgbXNnIG5vciBhY3R1YWxseSBjb3JyZWN0OiBMaW51eA0K
dGhpbmdpZXMgZG8gbm90IGJlbG9uZyB0byBEVC4NCg0KPiBoYXZlIHRoYXQuIEZyb20gTWFsaSBH
UFUgZHJpdmVyIHN0YW5kIHBvaW50IChvciBjb2RlYyBkcml2ZXJzIGFuZCB3aGF0J3Mgbm90KSwN
Cj4gdGhlIG1lbW9yeSByYW5nZSBpcyBub3QgdXNlZnVsIHRvIGFsbG9jYXRlIHByb3RlY3RlZC9y
ZXN0cmljdGVkIG1lbW9yeS4gT24gdG9wDQo+IG9mIHdoaWNoLCBpdHMgbm90IHJlc2VydmVkIHNw
ZWNpZmljYWxseSBmb3IgdGhlIE1hbGkgR1BVLg0KPiANCj4gV2hhdCdzIHlvdXIgcHJhY3RpY2Fs
IHN1Z2dlc3Rpb24gaGVyZSA/IEludHJvZHVjZSBkbWFfaGVhcF9maW5kX2J5X3JlZ2lvbigpID8N
Cg0KSSBkaWQgbm90IGNvbW1lbnQgYWJvdXQgZHJpdmVyIGFuZCBJIGRvIG5vdCBqdWRnZSBob3cg
eW91IGFjY2Vzcw0Kd2hhdGV2ZXIgeW91IG5lZWQgdG8gYWNjZXNzLiBUaGlzIGlzIGRpc2N1c3Np
b24gcHVyZWx5IGFib3V0IGJpbmRpbmcNCnRodXMgYWJvdXQgaGFyZHdhcmUuDQoNCg0KQmVzdCBy
ZWdhcmRzLA0KS3J6eXN6dG9mDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
