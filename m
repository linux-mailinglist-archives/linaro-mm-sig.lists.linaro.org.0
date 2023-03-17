Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C92626C4303
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:21:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92CB84838B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:21:53 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 7698D3F49A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 09:10:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=Y+VziNyw;
	spf=pass (lists.linaro.org: domain of michel.daenzer@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=michel.daenzer@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4PdJJS0wgpz9sTs;
	Fri, 17 Mar 2023 10:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1679044248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tn5PncTOyWtxRza5q2TsQE5fEAu3fMK2xK+AqAvZbho=;
	b=Y+VziNywRfRo0p0YxCt9vAJJJkXWTB2oYFB6IXyyxVPUkQuatIDv/40S0p0S9A+Q/lhVgT
	lTxCKmh9gCbe75OH5I4nJUCRqn77pF4gV6FN92wQfUOWOqsVXKsje+5oxU1c1/zgnCOMq0
	H0/SEULmLieHoXsdA7AiXQw5TIVjIloXie9iKgzbO3DWKiHRZAW2zFC7/k/0cf5SDBIaxd
	nZzNF9GokuFZdw3km6HgWQ/y173AXrLXCZH21M0OtSHKfM89JRn2d8JFeoJSSBFObO2uFa
	YNsQn9WXl9Yn94hgddXN/Duaf6YdhQ6xYPVDouaLK+AMdLBvBmi0XMg7ZXgF9Q==
Message-ID: <12626002-98db-7702-598e-28ea4a3e5061@mailbox.org>
Date: Fri, 17 Mar 2023 10:10:44 +0100
MIME-Version: 1.0
Content-Language: de-CH-frami, en-CA
To: Sebastian Wick <sebastian.wick@redhat.com>,
 Rob Clark <robdclark@gmail.com>
References: <20230308155322.344664-1-robdclark@gmail.com>
 <20230308155322.344664-2-robdclark@gmail.com> <ZAtQspuFjPtGy7ze@gmail.com>
 <CAF6AEGsGOr5+Q10wX=5ttrWCSUJfn7gzHW8QhxFC0GDLgagMHg@mail.gmail.com>
 <ZBHNvT3BLgS3qvV5@gmail.com>
 <CAF6AEGu1S2CXzRxV_c5tE_H+XUGiO=n0tXjLZ_u_tW-eMqMsQw@mail.gmail.com>
 <ZBLg0t0tTVvuPuiJ@gmail.com>
 <CAF6AEGvV5arZThTyju_=xFFDWRbMaexgO_kkdKZuK-zeCxrN7Q@mail.gmail.com>
 <CA+hFU4xbssR+=Sf4ia5kPdsSb4y9SQUd4nx_2p1Szcbtna28CA@mail.gmail.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel.daenzer@mailbox.org>
In-Reply-To: <CA+hFU4xbssR+=Sf4ia5kPdsSb4y9SQUd4nx_2p1Szcbtna28CA@mail.gmail.com>
X-MBO-RS-ID: 8afd7b6bd4c7689e5ec
X-MBO-RS-META: 7n4co8ucek6ryf9zcbhkmobgbkmu6uzh
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7698D3F49A
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip4:80.241.56.0/21];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.995];
	FREEMAIL_TO(0.00)[redhat.com,gmail.com];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,collabora.com,lwn.net,gmail.com,lists.freedesktop.org,vger.kernel.org,linaro.org,lists.linaro.org,amd.com,intel.com,padovan.org];
	ASN(0.00)[asn:199118, ipnet:80.241.56.0/21, country:DE];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: michel.daenzer@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TBWOWXKPSXAVIQYKP7SLTZ4QPCHJX7LL
X-Message-ID-Hash: TBWOWXKPSXAVIQYKP7SLTZ4QPCHJX7LL
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:20:57 +0000
CC: Rob Clark <robdclark@chromium.org>, Pekka Paalanen <pekka.paalanen@collabora.com>, Jonathan Corbet <corbet@lwn.net>, intel-gfx@lists.freedesktop.org, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Gustavo Padovan <gustavo@padovan.org>, Matt Turner <mattst88@gmail.com>, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 01/15] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TBWOWXKPSXAVIQYKP7SLTZ4QPCHJX7LL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMy8xNi8yMyAyMzoyMiwgU2ViYXN0aWFuIFdpY2sgd3JvdGU6DQo+IE9uIFRodSwgTWFyIDE2
LCAyMDIzIGF0IDU6MjnigK9QTSBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+IHdyb3Rl
Og0KPj4gT24gVGh1LCBNYXIgMTYsIDIwMjMgYXQgMjoyNuKAr0FNIEpvbmFzIMOFZGFobCA8amFk
YWhsQGdtYWlsLmNvbT4gd3JvdGU6DQo+Pj4gT24gV2VkLCBNYXIgMTUsIDIwMjMgYXQgMDk6MTk6
NDlBTSAtMDcwMCwgUm9iIENsYXJrIHdyb3RlOg0KPj4+PiBPbiBXZWQsIE1hciAxNSwgMjAyMyBh
dCA2OjUz4oCvQU0gSm9uYXMgw4VkYWhsIDxqYWRhaGxAZ21haWwuY29tPiB3cm90ZToNCj4+Pj4+
IE9uIEZyaSwgTWFyIDEwLCAyMDIzIGF0IDA5OjM4OjE4QU0gLTA4MDAsIFJvYiBDbGFyayB3cm90
ZToNCj4+Pj4+PiBPbiBGcmksIE1hciAxMCwgMjAyMyBhdCA3OjQ14oCvQU0gSm9uYXMgw4VkYWhs
IDxqYWRhaGxAZ21haWwuY29tPiB3cm90ZToNCj4+Pj4+Pj4NCj4+Pj4+Pj4+ICsgKg0KPj4+Pj4+
Pj4gKyAqIFRvIHRoaXMgZW5kLCBkZWFkbGluZSBoaW50KHMpIGNhbiBiZSBzZXQgb24gYSAmZG1h
X2ZlbmNlIHZpYSAmZG1hX2ZlbmNlX3NldF9kZWFkbGluZS4NCj4+Pj4+Pj4+ICsgKiBUaGUgZGVh
ZGxpbmUgaGludCBwcm92aWRlcyBhIHdheSBmb3IgdGhlIHdhaXRpbmcgZHJpdmVyLCBvciB1c2Vy
c3BhY2UsIHRvDQo+Pj4+Pj4+PiArICogY29udmV5IGFuIGFwcHJvcHJpYXRlIHNlbnNlIG9mIHVy
Z2VuY3kgdG8gdGhlIHNpZ25hbGluZyBkcml2ZXIuDQo+Pj4+Pj4+PiArICoNCj4+Pj4+Pj4+ICsg
KiBBIGRlYWRsaW5lIGhpbnQgaXMgZ2l2ZW4gaW4gYWJzb2x1dGUga3RpbWUgKENMT0NLX01PTk9U
T05JQyBmb3IgdXNlcnNwYWNlDQo+Pj4+Pj4+PiArICogZmFjaW5nIEFQSXMpLiAgVGhlIHRpbWUg
Y291bGQgZWl0aGVyIGJlIHNvbWUgcG9pbnQgaW4gdGhlIGZ1dHVyZSAoc3VjaCBhcw0KPj4+Pj4+
Pj4gKyAqIHRoZSB2YmxhbmsgYmFzZWQgZGVhZGxpbmUgZm9yIHBhZ2UtZmxpcHBpbmcsIG9yIHRo
ZSBzdGFydCBvZiBhIGNvbXBvc2l0b3Incw0KPj4+Pj4+Pj4gKyAqIGNvbXBvc2l0aW9uIGN5Y2xl
KSwgb3IgdGhlIGN1cnJlbnQgdGltZSB0byBpbmRpY2F0ZSBhbiBpbW1lZGlhdGUgZGVhZGxpbmUN
Cj4+Pj4+Pj4+ICsgKiBoaW50IChJZS4gZm9yd2FyZCBwcm9ncmVzcyBjYW5ub3QgYmUgbWFkZSB1
bnRpbCB0aGlzIGZlbmNlIGlzIHNpZ25hbGVkKS4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gSXMgaXQgZ3Vh
cmFudGVlZCB0aGF0IGEgR1BVIGRyaXZlciB3aWxsIHVzZSB0aGUgYWN0dWFsIHN0YXJ0IG9mIHRo
ZQ0KPj4+Pj4+PiB2YmxhbmsgYXMgdGhlIGVmZmVjdGl2ZSBkZWFkbGluZT8gSSBoYXZlIHNvbWUg
bWVtb3JpZXMgb2Ygc2VpbmcNCj4+Pj4+Pj4gc29tZXRoaW5nIGFib3V0IHZibGFuayBldmFzaW9u
IGJyb3dzaW5nIGRyaXZlciBjb2RlLCB3aGljaCBJIG1pZ2h0IGhhdmUNCj4+Pj4+Pj4gbWlzdW5k
ZXJzdG9vZCwgYnV0IEkgaGF2ZSB5ZXQgdG8gZmluZCB3aGV0aGVyIHRoaXMgaXMgc29tZXRoaW5n
DQo+Pj4+Pj4+IHVzZXJzcGFjZSBjYW4gYWN0dWFsbHkgZXhwZWN0IHRvIGJlIHNvbWV0aGluZyBp
dCBjYW4gcmVseSBvbi4NCj4+Pj4+Pg0KPj4+Pj4+IEkgZ3Vlc3MgeW91IG1lYW4gcy9HUFUgZHJp
dmVyL2Rpc3BsYXkgZHJpdmVyLyA/ICBJdCBtYWtlcyB0aGluZ3MgbW9yZQ0KPj4+Pj4+IGNsZWFy
IGlmIHdlIHRhbGsgYWJvdXQgdGhlbSBzZXBhcmF0ZWx5IGV2ZW4gaWYgdGhleSBoYXBwZW4gdG8g
YmUgdGhlDQo+Pj4+Pj4gc2FtZSBkZXZpY2UuDQo+Pj4+Pg0KPj4+Pj4gU3VyZSwgc29ycnkgYWJv
dXQgYmVpbmcgdW5jbGVhciBhYm91dCB0aGF0Lg0KPj4+Pj4NCj4+Pj4+Pg0KPj4+Pj4+IEFzc3Vt
aW5nIHRoYXQgaXMgd2hhdCB5b3UgbWVhbiwgbm90aGluZyBzdHJvbmdseSBkZWZpbmVzIHdoYXQg
dGhlDQo+Pj4+Pj4gZGVhZGxpbmUgaXMuICBJbiBwcmFjdGljZSB0aGVyZSBpcyBwcm9iYWJseSBz
b21lIGJ1ZmZlcmluZyBpbiB0aGUNCj4+Pj4+PiBkaXNwbGF5IGNvbnRyb2xsZXIuICBGb3IgZXgs
IGJsb2NrIGJhc2VkIChpbmNsdWRpbmcgYmFuZHdpZHRoDQo+Pj4+Pj4gY29tcHJlc3NlZCkgZm9y
bWF0cywgeW91IG5lZWQgdG8gYnVmZmVyIHVwIGEgcm93IG9mIGJsb2NrcyB0bw0KPj4+Pj4+IGVm
ZmljaWVudGx5IGxpbmVhcml6ZSBmb3Igc2Nhbm91dC4gIFNvIHlvdSBwcm9iYWJseSBuZWVkIHRv
IGxhdGNoIHNvbWUNCj4+Pj4+PiB0aW1lIGJlZm9yZSB5b3Ugc3RhcnQgc2VuZGluZyBwaXhlbCBk
YXRhIHRvIHRoZSBkaXNwbGF5LiAgQnV0IGRldGFpbHMNCj4+Pj4+PiBsaWtlIHRoaXMgYXJlIGhl
YXZpbHkgaW1wbGVtZW50YXRpb24gZGVwZW5kZW50LiAgSSB0aGluayB0aGUgbW9zdA0KPj4+Pj4+
IHJlYXNvbmFibGUgdGhpbmcgdG8gdGFyZ2V0IGlzIHN0YXJ0IG9mIHZibGFuay4NCj4+Pj4+DQo+
Pj4+PiBUaGUgZHJpdmVyIGV4cG9zaW5nIHRob3NlIGRldGFpbHMgd291bGQgYmUgcXVpdGUgdXNl
ZnVsIGZvciB1c2Vyc3BhY2UNCj4+Pj4+IHRob3VnaCwgc28gdGhhdCBpdCBjYW4gZGVsYXkgY29t
bWl0dGluZyB1cGRhdGVzIHRvIGxhdGUsIGJ1dCBub3QgdG9vDQo+Pj4+PiBsYXRlLiBTZXR0aW5n
IGEgZGVhZGxpbmUgdG8gYmUgdGhlIHZibGFuayBzZWVtcyBlYXN5IGVub3VnaCwgYnV0IGl0DQo+
Pj4+PiBpc24ndCBlbm91Z2ggZm9yIHNjaGVkdWxpbmcgdGhlIGFjdHVhbCBjb21taXQuDQo+Pj4+
DQo+Pj4+IEknbSBub3QgZW50aXJlbHkgc3VyZSBob3cgdGhhdCB3b3VsZCBldmVuIHdvcmsuLiBi
dXQgT1RPSCBJIHRoaW5rIHlvdQ0KPj4+PiBhcmUgdGFsa2luZyBhYm91dCBzb21ldGhpbmcgb24g
dGhlIG9yZGVyIG9mIDEwMHVzPyAgQnV0IHRoYXQgaXMgYSBiaXQNCj4+Pj4gb2YgYW5vdGhlciB0
b3BpYy4NCj4+Pg0KPj4+IFllcywgc29tZXRoaW5nIGxpa2UgdGhhdC4gQnV0IHllYSwgaXQncyBu
b3QgcmVhbGx5IHJlbGF0ZWQuIFNjaGVkdWxpbmcNCj4+PiBjb21taXRzIGNsb3NlciB0byB0aGUg
ZGVhZGxpbmUgaGFzIG1vcmUgY29tcGxleCBiZWhhdmlvciB0aGFuIHRoYXQgdG9vLA0KPj4+IGUu
Zy4gdGhlIG5lZWQgZm9yIHJlYWwgdGltZSBzY2hlZHVsaW5nLCBhbmQga25vd2luZyBob3cgbG9u
ZyBpdCB1c3VhbGx5DQo+Pj4gdGFrZXMgdG8gY3JlYXRlIGFuZCBjb21taXQgYW5kIGZvciB0aGUg
a2VybmVsIHRvIHByb2Nlc3MuDQo+IA0KPiBWYmxhbmsgY2FuIGJlIHJlYWxseSBsb25nLCBlc3Bl
Y2lhbGx5IHdpdGggVlJSIHdoZXJlIHRoZSBhZGRpdGlvbmFsDQo+IHRpbWUgeW91IGdldCB0byBm
aW5pc2ggdGhlIGZyYW1lIGNvbWVzIGZyb20gbWFraW5nIHZibGFuayBsb25nZXIuDQo+IFVzaW5n
IHRoZSBzdGFydCBvZiB2YmxhbmsgYXMgYSBkZWFkbGluZSBtYWtlcyBWUlIgdXNlbGVzcy4NCg0K
Tm90IHJlYWxseS4gV2Ugbm9ybWFsbHkgc3RpbGwgd2FudCB0byBhaW0gZm9yIHN0YXJ0IG9mIHZi
bGFuayB3aXRoIFZSUiwgd2hpY2ggd291bGQgcmVzdWx0IGluIHRoZSBtYXhpbXVtIHJlZnJlc2gg
cmF0ZS4gTWlzc2luZyB0aGF0IHRhcmdldCBqdXN0IGluY3VycyBsZXNzIG9mIGEgcGVuYWx0eSB0
aGFuIHdpdGggZml4ZWQgcmVmcmVzaCByYXRlLg0KDQoNCi0tIA0KRWFydGhsaW5nIE1pY2hlbCBE
w6RuemVyICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgIGh0dHBzOi8vcmVkaGF0LmNvbQ0K
TGlicmUgc29mdHdhcmUgZW50aHVzaWFzdCAgICAgICAgICB8ICAgICAgICAgTWVzYSBhbmQgWHdh
eWxhbmQgZGV2ZWxvcGVyDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
