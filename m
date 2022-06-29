Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B409560CF5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jun 2022 01:06:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A7893F43F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 23:06:13 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 679DE3E900
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 23:06:08 +0000 (UTC)
Received: from [192.168.2.145] (109-252-118-164.nat.spd-mgts.ru [109.252.118.164])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 97A3B660177B;
	Thu, 30 Jun 2022 00:06:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656543967;
	bh=MHzNXwrpamEQJfSn517DbHauHiLavqph9+6FDdh8cW0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=R3tBCTFOx5La3aI3IuCM416s6ri/Rh+h8/CoISbxHReBFWX7oD8ghFIqxKIheLH5w
	 K/nf9MDe20o+qs6uI9V4q7kgllcSj0UFzIr7895NwJrkgQscojZeKpuMoIZ/sXAhJ/
	 ByY76oOA2S/Qn7NuU44zmtC8ngpXqT/Sk6mv6EXPgD3t0Yu7tgBa91vpQ3RjptNtcQ
	 8wCG1+oVsnGfEAp76m0cvoIjw+tsFZcA1BMMt46ZPsluMUFRdOJVorWacWuPAU7oSR
	 BcNWnLcHirxsy7f3PCwGEKwWPOZCORt9oP3UUBVzLpplCao7w54md/Ljni//qJgOjB
	 FFn9vf973GUvQ==
Message-ID: <467a1cee-ba8c-98f3-0398-2a7a5a90b5c3@collabora.com>
Date: Thu, 30 Jun 2022 02:06:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-3-dmitry.osipenko@collabora.com>
 <b8271f0c-d6a3-4194-1959-e112859756a3@shipmail.org>
 <c0273ac2-c87c-2612-03d4-dc52510b22f7@collabora.com>
 <b4086751-9bff-ea5e-93fc-ce2c513b129b@shipmail.org>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <b4086751-9bff-ea5e-93fc-ce2c513b129b@shipmail.org>
Message-ID-Hash: 5VMABBVK5XWLXQZYQUQUCHEJAZO5EMGW
X-Message-ID-Hash: 5VMABBVK5XWLXQZYQUQUCHEJAZO5EMGW
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com, linux-media@vger.kernel.org, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, Rob Clark <robdclark@gmail.com>, Emil Velikov <emil.l.veli
 kov@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 02/22] drm/gem: Move mapping of imported dma-bufs to drm_gem_mmap_obj()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5VMABBVK5XWLXQZYQUQUCHEJAZO5EMGW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi8yOS8yMiAxMTo0MywgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKSB3cm90ZToNCj4gDQo+
IE9uIDYvMjkvMjIgMTA6MjIsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToNCj4+IE9uIDYvMjkvMjIg
MDk6NDAsIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkgd3JvdGU6DQo+Pj4gT24gNS8yNy8yMiAw
MTo1MCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOg0KPj4+PiBEcml2ZXJzIHRoYXQgdXNlIGRybV9n
ZW1fbW1hcCgpIGFuZCBkcm1fZ2VtX21tYXBfb2JqKCkgaGVscGVycyBkb24ndA0KPj4+PiBoYW5k
bGUgaW1wb3J0ZWQgZG1hLWJ1ZnMgcHJvcGVybHksIHdoaWNoIHJlc3VsdHMgaW4gbWFwcGluZyBv
Zg0KPj4+PiBzb21ldGhpbmcNCj4+Pj4gZWxzZSB0aGFuIHRoZSBpbXBvcnRlZCBkbWEtYnVmLiBG
b3IgZXhhbXBsZSwgb24gTlZJRElBIFRlZ3JhIHdlIGdldCBhDQo+Pj4+IGhhcmQNCj4+Pj4gbG9j
a3VwIHdoZW4gdXNlcnNwYWNlIHdyaXRlcyB0byB0aGUgbWVtb3J5IG1hcHBpbmcgb2YgYSBkbWEt
YnVmIHRoYXQNCj4+Pj4gd2FzDQo+Pj4+IGltcG9ydGVkIGludG8gVGVncmEncyBEUk0gR0VNLg0K
Pj4+Pg0KPj4+PiBUbyBmaXggdGhpcyBidWcsIG1vdmUgbWFwcGluZyBvZiBpbXBvcnRlZCBkbWEt
YnVmcyB0bw0KPj4+PiBkcm1fZ2VtX21tYXBfb2JqKCkuDQo+Pj4+IE5vdyBtbWFwaW5nIG9mIGlt
cG9ydGVkIGRtYS1idWZzIHdvcmtzIHByb3Blcmx5IGZvciBhbGwgRFJNIGRyaXZlcnMuDQo+Pj4g
U2FtZSBjb21tZW50IGFib3V0IEZpeGVzOiBhcyBpbiBwYXRjaCAxLA0KPj4+PiBDYzogc3RhYmxl
QHZnZXIua2VybmVsLm9yZw0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRt
aXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPj4+PiAtLS0NCj4+Pj4gwqDCoCBkcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAzICsrKw0KPj4+
PiDCoMKgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIHwgOSAtLS0tLS0t
LS0NCj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vdGVncmEvZ2VtLmPCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHwgNCArKysrDQo+Pj4+IMKgwqAgMyBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDkgZGVsZXRpb25zKC0pDQo+Pj4+DQo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0KPj4+PiBpbmRleCA4NmQ2
NzBjNzEyODYuLjdjMGIwMjU1MDhlNCAxMDA2NDQNCj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2RybV9nZW0uYw0KPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jDQo+Pj4+IEBA
IC0xMDM4LDYgKzEwMzgsOSBAQCBpbnQgZHJtX2dlbV9tbWFwX29iaihzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaiwNCj4+Pj4gdW5zaWduZWQgbG9uZyBvYmpfc2l6ZSwNCj4+Pj4gwqDCoMKgwqDC
oMKgIGlmIChvYmpfc2l6ZSA8IHZtYS0+dm1fZW5kIC0gdm1hLT52bV9zdGFydCkNCj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4+IMKgwqAgK8KgwqDCoCBpZiAo
b2JqLT5pbXBvcnRfYXR0YWNoKQ0KPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGRtYV9idWZf
bW1hcChvYmotPmRtYV9idWYsIHZtYSwgMCk7DQo+Pj4gSWYgd2Ugc3RhcnQgZW5hYmxpbmcgbW1h
cGluZyBvZiBpbXBvcnRlZCBkbWEtYnVmcyBvbiBhIG1ham9yaXR5IG9mDQo+Pj4gZHJpdmVycyBp
biB0aGlzIHdheSwgaG93IGRvIHdlIGVuc3VyZSB0aGF0IHVzZXItc3BhY2UgaXMgbm90IGJsaW5k
bHkNCj4+PiB1c2luZyB0aGUgb2JqZWN0IG1tYXAgd2l0aG91dCBjYWxsaW5nIHRoZSBuZWVkZWQg
RE1BX0JVRl9JT0NUTF9TWU5DDQo+Pj4gd2hpY2ggaXMgbmVlZGVkIGJlZm9yZSBhbmQgYWZ0ZXIg
Y3B1IGFjY2VzcyBvZiBtbWFwJ2VkIGRtYS1idWZzPw0KPj4+DQo+Pj4gSSB3YXMgdW5kZXIgdGhl
IGltcHJlc3Npb24gKGFkbWl0dGVkbHkgd2l0aG91dCBsb29raW5nKSB0aGF0IHRoZSBmZXcNCj4+
PiBkcml2ZXJzIHRoYXQgYWN0dWFsbHkgY2FsbGVkIGludG8gZG1hX2J1Zl9tbWFwKCkgaGFkIHNv
bWUgcHJpdmF0ZQ0KPj4+IHVzZXItbW9kZSBkcml2ZXIgY29kZSBpbiBwbGFjZSB0aGF0IGVuc3Vy
ZWQgdGhpcyBoYXBwZW5lZC4NCj4+IFNpbmNlIGl0J3MgYSB1c2Vyc3BhY2Ugd2hvIGRvZXMgdGhl
IG1hcHBpbmcsIHRoZW4gaXQgc2hvdWxkIGJlIGENCj4+IHJlc3BvbnNpYmlsaXR5IG9mIHVzZXJz
cGFjZSB0byBkbyBhbGwgdGhlIG5lY2Vzc2FyeSBzeW5jaW5nLg0KPiANCj4gU3VyZSwgYnV0IG5v
dGhpbmcgcHJvaGliaXRzIHVzZXItc3BhY2UgdG8gaWdub3JlIHRoZSBzeW5jaW5nIHRoaW5raW5n
DQo+ICJJdCB3b3JrcyBhbnl3YXkiLCB0ZXN0aW5nIHRob3NlIGRyaXZlcnMgd2hlcmUgdGhlIHN5
bmNpbmcgaXMgYSBOT1AuIEFuZA0KPiB3aGVuIGEgZHJpdmVyIHRoYXQgZmluYWxseSBuZWVkcyBz
eW5jaW5nIGlzIHRlc3RlZCBpdCdzIHRvbyBsYXRlIHRvIGZpeA0KPiBhbGwgYnJva2VuIHVzZXIt
c3BhY2UuDQo+IA0KPj4gwqAgSSdtIG5vdA0KPj4gc3VyZSB3aGV0aGVyIGFueW9uZSBpbiB1c2Vy
c3BhY2UgcmVhbGx5IG5lZWRzIHRvIG1hcCBpbXBvcnRlZCBkbWEtYnVmcw0KPj4gaW4gcHJhY3Rp
Y2UuIE5ldmVydGhlbGVzcywgdGhpcyB1c2UtY2FzZSBpcyBicm9rZW4gYW5kIHNob3VsZCBiZSBm
aXhlZA0KPj4gYnkgZWl0aGVyIGFsbG93aW5nIHRvIGRvIHRoZSBtYXBwaW5nIG9yIHByb2hpYml0
aW5nIGl0Lg0KPj4NCj4gVGhlbiBJJ2Qgdm90ZSBmb3IgcHJvaGliaXRpbmcgaXQsIGF0IGxlYXN0
IGZvciBub3cuIEFuZCBmb3IgdGhlIGZ1dHVyZQ0KPiBtb3ZpbmcgZm9yd2FyZCB3ZSBjb3VsZCBw
ZXJoYXBzIHJldmlzaXQgdGhlIGRtYS1idWYgbmVlZCBmb3Igc3luY2luZywNCj4gcmVxdWlyaW5n
IHRob3NlIGRyaXZlcnMgdGhhdCBhY3R1YWxseSBuZWVkIGl0IHRvIGltcGxlbWVudCBlbXVsYXRl
ZA0KPiBjb2hlcmVudCBtZW1vcnkgd2hpY2ggY2FuIGJlIGRvbmUgbm90IHRvbyBpbmVmZmljaWVu
dGx5ICh2bXdnZnggYmVpbmcNCj4gb25lIGV4YW1wbGUpLg0KDQpBbHJpZ2h0LCBJJ2xsIGNoYW5n
ZSBpdCB0byBwcm9oaWJpdCB0aGUgbWFwcGluZy4gVGhpcyBpbmRlZWQgc2hvdWxkIGJlIGENCmJl
dHRlciBvcHRpb24uDQoNCi0tIA0KQmVzdCByZWdhcmRzLA0KRG1pdHJ5DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
