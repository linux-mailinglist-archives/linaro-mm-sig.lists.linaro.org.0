Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1346B5631B5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Jul 2022 12:44:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBC6C3F23C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Jul 2022 10:44:03 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id BDDBB3EF2D
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Jul 2022 10:43:59 +0000 (UTC)
Received: from [192.168.2.145] (109-252-118-164.nat.spd-mgts.ru [109.252.118.164])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EF4536601596;
	Fri,  1 Jul 2022 11:43:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656672238;
	bh=i4sbwr4hhjkUIAG7olH1BdTwsBlNFqkIOpYSjFNHV/w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ULKCbZZHPga04p61cEES7RO/PSbb0r9MTw2jLhk1vi7BxkUF2s/2oUlr45wDJ32Zl
	 hIi0EggvcohKCTYDuxjdSAD59R7x9Ho2wjo4+6Ny8R8XDP/2VnA+4rXHqSae59y5RQ
	 u5g9F4c0oWXgkQsy4x9ghsH1A+H0ASGLlB/xYvVhJTwQ62LFKi02GoHFAf3sMxSS6Y
	 geLgbeGzXOFcaOwO/w4rVpiXrZFLjie0W6FtGRjOo0ip0CObSJ6s7RbR690zd9JtQj
	 nYXKDpzfPVg8bswZlSutaJYkriJpXv9aMGuffojK4WnalY6TM+1VIHOnL0NBjdCTlr
	 +nAwSqj+vBJNw==
Message-ID: <0d88cf7c-61e5-d7a8-a6ba-83388114a1fa@collabora.com>
Date: Fri, 1 Jul 2022 13:43:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Rob Clark <robdclark@gmail.com>, Emil Velikov <emil.l.velikov@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-15-dmitry.osipenko@collabora.com>
 <0a02a31d-a256-4ca4-0e35-e2ea1868a8ae@amd.com>
 <e6e17c52-43c2-064b-500e-325bb3ba3b2c@collabora.com>
 <02e7946b-34ca-b48e-1ba6-e7b63740a2d9@amd.com>
 <7372dd1b-06f7-5336-4738-15f9b4d4d4b3@collabora.com>
 <90fe74f6-a622-e4ae-3004-6f1bc1790247@shipmail.org>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <90fe74f6-a622-e4ae-3004-6f1bc1790247@shipmail.org>
Message-ID-Hash: AFNWAHDN2SAN3O7TKFXKN2I3CX2Q5R4I
X-Message-ID-Hash: AFNWAHDN2SAN3O7TKFXKN2I3CX2Q5R4I
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 14/22] dma-buf: Introduce new locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AFNWAHDN2SAN3O7TKFXKN2I3CX2Q5R4I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi8yOS8yMiAwMDoyNiwgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKSB3cm90ZToNCj4gDQo+
IE9uIDUvMzAvMjIgMTU6NTcsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToNCj4+IE9uIDUvMzAvMjIg
MTY6NDEsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gSGkgRG1pdHJ5LA0KPj4+DQo+Pj4g
QW0gMzAuMDUuMjIgdW0gMTU6MjYgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+Pj4+IEhlbGxv
IENocmlzdGlhbiwNCj4+Pj4NCj4+Pj4gT24gNS8zMC8yMiAwOTo1MCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4+Pj4+IEhpIERtaXRyeSwNCj4+Pj4+DQo+Pj4+PiBGaXJzdCBvZiBhbGwgcGxl
YXNlIHNlcGFyYXRlIG91dCB0aGlzIHBhdGNoIGZyb20gdGhlIHJlc3Qgb2YgdGhlDQo+Pj4+PiBz
ZXJpZXMsDQo+Pj4+PiBzaW5jZSB0aGlzIGlzIGEgY29tcGxleCBzZXBhcmF0ZSBzdHJ1Y3R1cmFs
IGNoYW5nZS4NCj4+Pj4gSSBhc3N1bWUgYWxsIHRoZSBwYXRjaGVzIHdpbGwgZ28gdmlhIHRoZSBE
Uk0gdHJlZSBpbiB0aGUgZW5kIHNpbmNlIHRoZQ0KPj4+PiByZXN0IG9mIHRoZSBEUk0gcGF0Y2hl
cyBpbiB0aGlzIHNlcmllcyBkZXBlbmQgb24gdGhpcyBkbWEtYnVmIGNoYW5nZS4NCj4+Pj4gQnV0
IEkgc2VlIHRoYXQgc2VwYXJhdGlvbiBtYXkgZWFzZSByZXZpZXdpbmcgb2YgdGhlIGRtYS1idWYg
Y2hhbmdlcywgc28NCj4+Pj4gbGV0J3MgdHJ5IGl0Lg0KPj4+IFRoYXQgc291bmRzIGxpa2UgeW91
IGFyZSB1bmRlcmVzdGltYXRpbmcgYSBiaXQgaG93IG11Y2ggdHJvdWJsZSB0aGlzDQo+Pj4gd2ls
bCBiZS4NCj4+Pg0KPj4+Pj4gSSBoYXZlIHRyaWVkIHRoaXMgYmVmb3JlIGFuZCBmYWlsZWQgYmVj
YXVzZSBjYXRjaGluZyBhbGwgdGhlIGxvY2tzIGluDQo+Pj4+PiB0aGUgcmlnaHQgY29kZSBwYXRo
cyBhcmUgdmVyeSB0cmlja3kuIFNvIGV4cGVjdCBzb21lIGZhbGxvdXQgZnJvbSB0aGlzDQo+Pj4+
PiBhbmQgbWFrZSBzdXJlIHRoZSBrZXJuZWwgdGVzdCByb2JvdCBhbmQgQ0kgc3lzdGVtcyBhcmUg
Y2xlYW4uDQo+Pj4+IFN1cmUsIEknbGwgZml4IHVwIGFsbCB0aGUgcmVwb3J0ZWQgdGhpbmdzIGlu
IHRoZSBuZXh0IGl0ZXJhdGlvbi4NCj4+Pj4NCj4+Pj4gQlRXLCBoYXZlIHlvdSBldmVyIHBvc3Rl
ZCB5b3VycyB2ZXJzaW9uIG9mIHRoZSBwYXRjaD8gV2lsbCBiZSBncmVhdCBpZg0KPj4+PiB3ZSBj
b3VsZCBjb21wYXJlIHRoZSBjaGFuZ2VkIGNvZGUgcGF0aHMuDQo+Pj4gTm8sIEkgbmV2ZXIgZXZl
biBmaW5pc2hlZCBjcmVhdGluZyBpdCBhZnRlciByZWFsaXppbmcgaG93IG11Y2ggd29yayBpdA0K
Pj4+IHdvdWxkIGJlLg0KPj4+DQo+Pj4+Pj4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIG5ldyBsb2Nr
aW5nIGNvbnZlbnRpb24gZm9yIGRtYS1idWYgdXNlcnMuIEZyb20NCj4+Pj4+PiBub3cNCj4+Pj4+
PiBvbiBhbGwgZG1hLWJ1ZiBpbXBvcnRlcnMgYXJlIHJlc3BvbnNpYmxlIGZvciBob2xkaW5nIGRt
YS1idWYNCj4+Pj4+PiByZXNlcnZhdGlvbg0KPj4+Pj4+IGxvY2sgYXJvdW5kIG9wZXJhdGlvbnMg
cGVyZm9ybWVkIG92ZXIgZG1hLWJ1ZnMuDQo+Pj4+Pj4NCj4+Pj4+PiBUaGlzIHBhdGNoIGltcGxl
bWVudHMgdGhlIG5ldyBkbWEtYnVmIGxvY2tpbmcgY29udmVudGlvbiBieToNCj4+Pj4+Pg0KPj4+
Pj4+IMKgwqDCoMKgIDEuIE1ha2luZyBkbWEtYnVmIEFQSSBmdW5jdGlvbnMgdG8gdGFrZSB0aGUg
cmVzZXJ2YXRpb24gbG9jay4NCj4+Pj4+Pg0KPj4+Pj4+IMKgwqDCoMKgIDIuIEFkZGluZyBuZXcg
bG9ja2VkIHZhcmlhbnRzIG9mIHRoZSBkbWEtYnVmIEFQSSBmdW5jdGlvbnMgZm9yDQo+Pj4+Pj4g
ZHJpdmVycw0KPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIHRoYXQgbmVlZCB0byBtYW5hZ2UgaW1wb3J0
ZWQgZG1hLWJ1ZnMgdW5kZXIgdGhlIGhlbGQgbG9jay4NCj4+Pj4+IEluc3RlYWQgb2YgYWRkaW5n
IG5ldyBsb2NrZWQgdmFyaWFudHMgcGxlYXNlIG1hcmsgYWxsIHZhcmlhbnRzIHdoaWNoDQo+Pj4+
PiBleHBlY3QgdG8gYmUgY2FsbGVkIHdpdGhvdXQgYSBsb2NrIHdpdGggYW4gX3VubG9ja2VkIHBv
c3RmaXguDQo+Pj4+Pg0KPj4+Pj4gVGhpcyBzaG91bGQgbWFrZSBpdCBlYXNpZXIgdG8gcmVtb3Zl
IHRob3NlIGluIGEgZm9sbG93IHVwIHBhdGNoIHNldA0KPj4+Pj4gYW5kDQo+Pj4+PiB0aGVuIGZ1
bGx5IG1vdmUgdGhlIGxvY2tpbmcgaW50byB0aGUgaW1wb3J0ZXIuDQo+Pj4+IERvIHdlIHJlYWxs
eSB3YW50IHRvIG1vdmUgYWxsIHRoZSBsb2NrcyB0byB0aGUgaW1wb3J0ZXJzPyBTZWVtcyB0aGUN
Cj4+Pj4gbWFqb3JpdHkgb2YgZHJpdmVycyBzaG91bGQgYmUgaGFwcHkgd2l0aCB0aGUgZG1hLWJ1
ZiBoZWxwZXJzIGhhbmRsaW5nDQo+Pj4+IHRoZSBsb2NraW5nIGZvciB0aGVtLg0KPj4+IFllcywg
SSBjbGVhcmx5IHRoaW5rIHNvLg0KPj4+DQo+Pj4+Pj4gwqDCoMKgwqAgMy4gQ29udmVydGluZyBh
bGwgZHJpdmVycyB0byB0aGUgbmV3IGxvY2tpbmcgc2NoZW1lLg0KPj4+Pj4gSSBoYXZlIHN0cm9u
ZyBkb3VidHMgdGhhdCB5b3UgZ290IGFsbCBvZiB0aGVtLiBBdCBsZWFzdCByYWRlb24gYW5kDQo+
Pj4+PiBub3V2ZWF1IHNob3VsZCBncmFiIHRoZSByZXNlcnZhdGlvbiBsb2NrIGluIHRoZWlyIC0+
YXR0YWNoIGNhbGxiYWNrcw0KPj4+Pj4gc29tZWhvdy4NCj4+Pj4gUmFkZW9uIGFuZCBOb3V2ZWF1
IHVzZSBnZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlKCkgYW5kIHRoZXkgdGFrZSByZXN2DQo+Pj4+
IGxvY2sgYWxyZWFkeSwgc2VlbXMgdGhleSBzaG91bGQgYmUgb2theSAoPykNCj4+PiBZb3UgYXJl
IGxvb2tpbmcgYXQgdGhlIHdyb25nIHNpZGUuIFlvdSBuZWVkIHRvIGZpeCB0aGUgZXhwb3J0IGNv
ZGUgcGF0aCwNCj4+PiBub3QgdGhlIGltcG9ydCBvbmVzLg0KPj4+DQo+Pj4gU2VlIGZvciBleGFt
cGxlIGF0dGFjaCBvbiByYWRlb24gd29ya3MgbGlrZSB0aGlzDQo+Pj4gZHJtX2dlbV9tYXBfYXR0
YWNoLT5kcm1fZ2VtX3Bpbi0+cmFkZW9uX2dlbV9wcmltZV9waW4tPnJhZGVvbl9ib19yZXNlcnZl
LT50dG1fYm9fcmVzZXJ2ZS0+ZG1hX3Jlc3ZfbG9jay4NCj4+Pg0KPj4gWWVhaCwgSSB3YXMgbG9v
a2luZyBhdCB0aGUgYm90aCBzaWRlcywgYnV0IG1pc3NlZCB0aGlzIG9uZS4NCj4gDQo+IEFsc28g
aTkxNSB3aWxsIHJ1biBpbnRvIHRyb3VibGUgd2l0aCBhdHRhY2guIEluIHBhcnRpY3VsYXIgc2lu
Y2UgaTkxNQ0KPiBzdGFydHMgYSBmdWxsIHd3IHRyYW5zYWN0aW9uIGluIGl0cyBhdHRhY2ggY2Fs
bGJhY2sgdG8gYmUgYWJsZSB0byBsb2NrDQo+IG90aGVyIG9iamVjdHMgaWYgbWlncmF0aW9uIGlz
IG5lZWRlZC4gSSB0aGluayBpOTE1IENJIHdvdWxkIGNhdGNoIHRoaXMNCj4gaW4gYSBzZWxmdGVz
dC4NCg0KU2VlbXMgaXQgaW5kZWVkIGl0IHNob3VsZCBkZWFkbG9jay4gQnV0IGk5MTUgc2VsZnRl
c3RzIGFwcGFyZW50bHkNCnNob3VsZCd2ZSBjYXVnaHQgaXQgYW5kIHRoZXkgZGlkbid0LCBJJ2xs
IHJlLWNoZWNrIHdoYXQgaGFwcGVuZWQuDQoNCj4gUGVyaGFwcyBpdCdzIHdvcnRod2lsZSB0byB0
YWtlIGEgc3RlcCBiYWNrIGFuZCBmaWd1cmUgb3V0LCBpZiB0aGUNCj4gaW1wb3J0ZXIgaXMgcmVx
dWlyZWQgdG8gbG9jaywgd2hpY2ggY2FsbGJhY2tzIG1pZ2h0IG5lZWQgYSB3dyBhY3F1aXJlDQo+
IGNvbnRleHQ/DQoNCkknbGwgdGFrZSB0aGlzIGludG8gYWNjb3VudCwgdGhhbmtzLg0KDQo+IChB
bmQgb2ZmLXRvcGljLCBTaW5jZSB3ZSBkbyBhIGxvdCBvZiBmYW5jeSBzdHVmZiB1bmRlciBkbWEt
cmVzdiBsb2Nrcw0KPiBpbmNsdWRpbmcgd2FpdGluZyBmb3IgZmVuY2VzIGFuZCBvdGhlciBsb2Nr
cywgSU1PIHRha2luZyB0aGVzZSBsb2Nrcw0KPiB1bmludGVycnVwdGlibGUgc2hvdWxkIHJpbmcg
YSB3YXJuaW5nIGJlbGwpDQoNCkkgaGFkIHRoZSBzYW1lIHRob3VnaHQgYW5kIGhhZCBhIHZlcnNp
b24gdGhhdCB1c2VkIHRoZSBpbnRlcnJ1cHRpYmxlDQpsb2NraW5nIHZhcmlhbnQsIGJ1dCB0aGVu
IGRlY2lkZWQgdG8gZmFsbCBiYWNrIHRvIHRoZSB1bmludGVycnVwdGlibGUsDQpkb24ndCByZW1l
bWJlciB3aHkuIEknbGwgcmV2aXNpdCB0aGlzLg0KDQotLSANCkJlc3QgcmVnYXJkcywNCkRtaXRy
eQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
