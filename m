Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6E6565F7E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Jul 2022 00:44:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FDD43F49A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Jul 2022 22:44:30 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id E539B3ECE6
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Jul 2022 22:44:25 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-232.nat.spd-mgts.ru [109.252.119.232])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8554E660199E;
	Mon,  4 Jul 2022 23:44:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656974665;
	bh=GphHsd4+TzSAb7tj4o+YMEvu0hP9uR9DEZi//JxrDEU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TIETcXt54Z6zAdCbC52DXacxsnFDzGdC3JpBIsizmA7N//ZHlPueCwy+HM8YdAAb2
	 HUI9viWT++O6etVqrNckxFUgP9ozk1r55Cb+PUEXrb9WRcAzHpJE00AbqEgjt9blxt
	 RLJPB3XA3/+NfDsNwvjz2N41JPYRlCQxI6JAKkkmyIz1E91Q4VSjNoW8LqOHM8EB8q
	 BQtx36ekmIe1Jt7JJZIQ79AGm28biDD4zfoAXWLmsCdqmX/9y9h9W6jOIDRVw65pq1
	 TNelVxwhjBX9if0FXgHlKZ/rVDPcxkXat5eT5ZTW/eMhrDqRk/HMeHceHosUPvp2Bo
	 sroGV1SbIfvsw==
Message-ID: <3e9fbf88-c1bd-d336-b0e0-86fb208a952e@collabora.com>
Date: Tue, 5 Jul 2022 01:44:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-3-dmitry.osipenko@collabora.com>
 <b8271f0c-d6a3-4194-1959-e112859756a3@shipmail.org>
 <c0273ac2-c87c-2612-03d4-dc52510b22f7@collabora.com>
 <b4086751-9bff-ea5e-93fc-ce2c513b129b@shipmail.org>
 <467a1cee-ba8c-98f3-0398-2a7a5a90b5c3@collabora.com>
 <0335814b-dc11-4a54-9f24-bb4e9dbef35c@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <0335814b-dc11-4a54-9f24-bb4e9dbef35c@amd.com>
Message-ID-Hash: 55PTKXEZXO5WKNF64QQBYWZEH5XOSJDF
X-Message-ID-Hash: 55PTKXEZXO5WKNF64QQBYWZEH5XOSJDF
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com, linux-media@vger.kernel.org, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, Rob Clark <robdclark@gmail.com>, Emil Velikov <"emil.l.vel
 i kov"@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 02/22] drm/gem: Move mapping of imported dma-bufs to drm_gem_mmap_obj()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/55PTKXEZXO5WKNF64QQBYWZEH5XOSJDF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNy80LzIyIDE1OjMzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBbSAzMC4wNi4yMiB1
bSAwMTowNiBzY2hyaWViIERtaXRyeSBPc2lwZW5rbzoNCj4+IE9uIDYvMjkvMjIgMTE6NDMsIFRo
b21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkgd3JvdGU6DQo+Pj4gT24gNi8yOS8yMiAxMDoyMiwgRG1p
dHJ5IE9zaXBlbmtvIHdyb3RlOg0KPj4+PiBPbiA2LzI5LzIyIDA5OjQwLCBUaG9tYXMgSGVsbHN0
csO2bSAoSW50ZWwpIHdyb3RlOg0KPj4+Pj4gT24gNS8yNy8yMiAwMTo1MCwgRG1pdHJ5IE9zaXBl
bmtvIHdyb3RlOg0KPj4+Pj4+IERyaXZlcnMgdGhhdCB1c2UgZHJtX2dlbV9tbWFwKCkgYW5kIGRy
bV9nZW1fbW1hcF9vYmooKSBoZWxwZXJzIGRvbid0DQo+Pj4+Pj4gaGFuZGxlIGltcG9ydGVkIGRt
YS1idWZzIHByb3Blcmx5LCB3aGljaCByZXN1bHRzIGluIG1hcHBpbmcgb2YNCj4+Pj4+PiBzb21l
dGhpbmcNCj4+Pj4+PiBlbHNlIHRoYW4gdGhlIGltcG9ydGVkIGRtYS1idWYuIEZvciBleGFtcGxl
LCBvbiBOVklESUEgVGVncmEgd2UgZ2V0IGENCj4+Pj4+PiBoYXJkDQo+Pj4+Pj4gbG9ja3VwIHdo
ZW4gdXNlcnNwYWNlIHdyaXRlcyB0byB0aGUgbWVtb3J5IG1hcHBpbmcgb2YgYSBkbWEtYnVmIHRo
YXQNCj4+Pj4+PiB3YXMNCj4+Pj4+PiBpbXBvcnRlZCBpbnRvIFRlZ3JhJ3MgRFJNIEdFTS4NCj4+
Pj4+Pg0KPj4+Pj4+IFRvIGZpeCB0aGlzIGJ1ZywgbW92ZSBtYXBwaW5nIG9mIGltcG9ydGVkIGRt
YS1idWZzIHRvDQo+Pj4+Pj4gZHJtX2dlbV9tbWFwX29iaigpLg0KPj4+Pj4+IE5vdyBtbWFwaW5n
IG9mIGltcG9ydGVkIGRtYS1idWZzIHdvcmtzIHByb3Blcmx5IGZvciBhbGwgRFJNIGRyaXZlcnMu
DQo+Pj4+PiBTYW1lIGNvbW1lbnQgYWJvdXQgRml4ZXM6IGFzIGluIHBhdGNoIDEsDQo+Pj4+Pj4g
Q2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkg
T3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPj4+Pj4+IC0tLQ0KPj4+
Pj4+IMKgwqDCoCBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfCAzICsrKw0KPj4+Pj4+IMKgwqDCoCBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1l
bV9oZWxwZXIuYyB8IDkgLS0tLS0tLS0tDQo+Pj4+Pj4gwqDCoMKgIGRyaXZlcnMvZ3B1L2RybS90
ZWdyYS9nZW0uY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA0ICsrKysNCj4+Pj4+PiDCoMKgwqAg
MyBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+Pj4+Pj4N
Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZ2VtLmMNCj4+Pj4+PiBpbmRleCA4NmQ2NzBjNzEyODYuLjdjMGIwMjU1MDhl
NCAxMDA2NDQNCj4+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jDQo+Pj4+Pj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0KPj4+Pj4+IEBAIC0xMDM4LDYgKzEwMzgs
OSBAQCBpbnQgZHJtX2dlbV9tbWFwX29iaihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QNCj4+Pj4+PiAq
b2JqLA0KPj4+Pj4+IHVuc2lnbmVkIGxvbmcgb2JqX3NpemUsDQo+Pj4+Pj4gwqDCoMKgwqDCoMKg
wqAgaWYgKG9ial9zaXplIDwgdm1hLT52bV9lbmQgLSB2bWEtPnZtX3N0YXJ0KQ0KPj4+Pj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4+Pj4gwqDCoMKgICvCoMKg
wqAgaWYgKG9iai0+aW1wb3J0X2F0dGFjaCkNCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IGRtYV9idWZfbW1hcChvYmotPmRtYV9idWYsIHZtYSwgMCk7DQo+Pj4+PiBJZiB3ZSBzdGFydCBl
bmFibGluZyBtbWFwaW5nIG9mIGltcG9ydGVkIGRtYS1idWZzIG9uIGEgbWFqb3JpdHkgb2YNCj4+
Pj4+IGRyaXZlcnMgaW4gdGhpcyB3YXksIGhvdyBkbyB3ZSBlbnN1cmUgdGhhdCB1c2VyLXNwYWNl
IGlzIG5vdCBibGluZGx5DQo+Pj4+PiB1c2luZyB0aGUgb2JqZWN0IG1tYXAgd2l0aG91dCBjYWxs
aW5nIHRoZSBuZWVkZWQgRE1BX0JVRl9JT0NUTF9TWU5DDQo+Pj4+PiB3aGljaCBpcyBuZWVkZWQg
YmVmb3JlIGFuZCBhZnRlciBjcHUgYWNjZXNzIG9mIG1tYXAnZWQgZG1hLWJ1ZnM/DQo+Pj4+Pg0K
Pj4+Pj4gSSB3YXMgdW5kZXIgdGhlIGltcHJlc3Npb24gKGFkbWl0dGVkbHkgd2l0aG91dCBsb29r
aW5nKSB0aGF0IHRoZSBmZXcNCj4+Pj4+IGRyaXZlcnMgdGhhdCBhY3R1YWxseSBjYWxsZWQgaW50
byBkbWFfYnVmX21tYXAoKSBoYWQgc29tZSBwcml2YXRlDQo+Pj4+PiB1c2VyLW1vZGUgZHJpdmVy
IGNvZGUgaW4gcGxhY2UgdGhhdCBlbnN1cmVkIHRoaXMgaGFwcGVuZWQuDQo+Pj4+IFNpbmNlIGl0
J3MgYSB1c2Vyc3BhY2Ugd2hvIGRvZXMgdGhlIG1hcHBpbmcsIHRoZW4gaXQgc2hvdWxkIGJlIGEN
Cj4+Pj4gcmVzcG9uc2liaWxpdHkgb2YgdXNlcnNwYWNlIHRvIGRvIGFsbCB0aGUgbmVjZXNzYXJ5
IHN5bmNpbmcuDQo+Pj4gU3VyZSwgYnV0IG5vdGhpbmcgcHJvaGliaXRzIHVzZXItc3BhY2UgdG8g
aWdub3JlIHRoZSBzeW5jaW5nIHRoaW5raW5nDQo+Pj4gIkl0IHdvcmtzIGFueXdheSIsIHRlc3Rp
bmcgdGhvc2UgZHJpdmVycyB3aGVyZSB0aGUgc3luY2luZyBpcyBhIE5PUC4gQW5kDQo+Pj4gd2hl
biBhIGRyaXZlciB0aGF0IGZpbmFsbHkgbmVlZHMgc3luY2luZyBpcyB0ZXN0ZWQgaXQncyB0b28g
bGF0ZSB0byBmaXgNCj4+PiBhbGwgYnJva2VuIHVzZXItc3BhY2UuDQo+Pj4NCj4+Pj4gwqDCoCBJ
J20gbm90DQo+Pj4+IHN1cmUgd2hldGhlciBhbnlvbmUgaW4gdXNlcnNwYWNlIHJlYWxseSBuZWVk
cyB0byBtYXAgaW1wb3J0ZWQgZG1hLWJ1ZnMNCj4+Pj4gaW4gcHJhY3RpY2UuIE5ldmVydGhlbGVz
cywgdGhpcyB1c2UtY2FzZSBpcyBicm9rZW4gYW5kIHNob3VsZCBiZSBmaXhlZA0KPj4+PiBieSBl
aXRoZXIgYWxsb3dpbmcgdG8gZG8gdGhlIG1hcHBpbmcgb3IgcHJvaGliaXRpbmcgaXQuDQo+Pj4+
DQo+Pj4gVGhlbiBJJ2Qgdm90ZSBmb3IgcHJvaGliaXRpbmcgaXQsIGF0IGxlYXN0IGZvciBub3cu
IEFuZCBmb3IgdGhlIGZ1dHVyZQ0KPj4+IG1vdmluZyBmb3J3YXJkIHdlIGNvdWxkIHBlcmhhcHMg
cmV2aXNpdCB0aGUgZG1hLWJ1ZiBuZWVkIGZvciBzeW5jaW5nLA0KPj4+IHJlcXVpcmluZyB0aG9z
ZSBkcml2ZXJzIHRoYXQgYWN0dWFsbHkgbmVlZCBpdCB0byBpbXBsZW1lbnQgZW11bGF0ZWQNCj4+
PiBjb2hlcmVudCBtZW1vcnkgd2hpY2ggY2FuIGJlIGRvbmUgbm90IHRvbyBpbmVmZmljaWVudGx5
ICh2bXdnZnggYmVpbmcNCj4+PiBvbmUgZXhhbXBsZSkuDQo+PiBBbHJpZ2h0LCBJJ2xsIGNoYW5n
ZSBpdCB0byBwcm9oaWJpdCB0aGUgbWFwcGluZy4gVGhpcyBpbmRlZWQgc2hvdWxkIGJlIGENCj4+
IGJldHRlciBvcHRpb24uDQo+IA0KPiBPaCwgeWVzIHBsZWFzZS4gQnV0IEkgd291bGQgZXhwZWN0
IHRoYXQgc29tZSBwZW9wbGUgc3RhcnQgc2NyZWFtaW5nLg0KPiANCj4gT3ZlciB0aW1lIEkndmUg
Z290IHRvbnMgb2YgVFRNIHBhdGNoZXMgYmVjYXVzZSBwZW9wbGUgaWxsZWdhbGx5IHRyaWVkIHRv
DQo+IG1tYXAoKSBpbXBvcnRlZCBETUEtYnVmcyBpbiB0aGVpciBkcml2ZXIuDQo+IA0KPiBBbnl3
YXkgdGhpcyBpcyBwcm9iYWJseSB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gYW5kIHdlIGNhbiB3b3Jr
IG9uIGZpeGluZw0KPiB0aGUgZmFsbG91dCBsYXRlciBvbi4NCg0KSSBhbHJlYWR5IHNlbnQgb3V0
IHRoZSBwYXRjaCBbMV0gdGhhdCBwcm9oaWJpdHMgdGhlIG1hcHBpbmcuIFdvdWxkIGJlDQpncmVh
dCBpZiB5b3UgYWxsIGNvdWxkIHRha2UgYSBsb29rIGFuZCBnaXZlIGEgci1iLCB0aGFua3MgaW4g
YWR2YW5jZS4NCg0KWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC80
OTIxNDgvDQoNCi0tIA0KQmVzdCByZWdhcmRzLA0KRG1pdHJ5DQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
