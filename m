Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C30D755FA42
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 10:22:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D33F43F30F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 08:22:14 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 8CA433EE9F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 08:22:09 +0000 (UTC)
Received: from [192.168.2.145] (unknown [109.252.118.164])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 96AF966018F1;
	Wed, 29 Jun 2022 09:22:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656490928;
	bh=XVQSgsxJcmy7E9dO6ydXkj4ChuEFXc7MVQ+QygUQC8s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XDA5Kxe1tQjVWoYM/BGtNXeKxwfzbPWBe/P8pqnkFIaP99Cob4KetSZp2mOV5ryP3
	 u7HvrxECrEmyBllUyLM9aJt9NxlBWJIjI1vH3F6cyKv3t6zcOoQ5eEnHwrBxui1qxj
	 dhHHwgtCyjFiz0GVKfGTNTYY/r/P8cU6ccDNK3YajGTlvfcYzw3D0HBZvWZG99gBdw
	 g3iqha1unBFwIZIh55U+Qs/ChxM3VgIRVZFM+pX3989oy8OqosWoTMbE+652VhJgHQ
	 FAJaw4N5wVvjKnuA74fSOiQp7M9aReCv8cXtUS2LQKv6/MwDyHx8fBx07oNXwQjIzB
	 fo3DQeZjKtWZw==
Message-ID: <c0273ac2-c87c-2612-03d4-dc52510b22f7@collabora.com>
Date: Wed, 29 Jun 2022 11:22:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-3-dmitry.osipenko@collabora.com>
 <b8271f0c-d6a3-4194-1959-e112859756a3@shipmail.org>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <b8271f0c-d6a3-4194-1959-e112859756a3@shipmail.org>
Message-ID-Hash: SNYAA7NGROXC5HVBX7QJSDSEX7ONHH3Z
X-Message-ID-Hash: SNYAA7NGROXC5HVBX7QJSDSEX7ONHH3Z
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com, linux-media@vger.kernel.org, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, Rob Clark <robdclark@gmail.com>, Emil Velikov <emil.l.veli
 kov@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 02/22] drm/gem: Move mapping of imported dma-bufs to drm_gem_mmap_obj()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SNYAA7NGROXC5HVBX7QJSDSEX7ONHH3Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi8yOS8yMiAwOTo0MCwgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKSB3cm90ZToNCj4gDQo+
IE9uIDUvMjcvMjIgMDE6NTAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToNCj4+IERyaXZlcnMgdGhh
dCB1c2UgZHJtX2dlbV9tbWFwKCkgYW5kIGRybV9nZW1fbW1hcF9vYmooKSBoZWxwZXJzIGRvbid0
DQo+PiBoYW5kbGUgaW1wb3J0ZWQgZG1hLWJ1ZnMgcHJvcGVybHksIHdoaWNoIHJlc3VsdHMgaW4g
bWFwcGluZyBvZiBzb21ldGhpbmcNCj4+IGVsc2UgdGhhbiB0aGUgaW1wb3J0ZWQgZG1hLWJ1Zi4g
Rm9yIGV4YW1wbGUsIG9uIE5WSURJQSBUZWdyYSB3ZSBnZXQgYQ0KPj4gaGFyZA0KPj4gbG9ja3Vw
IHdoZW4gdXNlcnNwYWNlIHdyaXRlcyB0byB0aGUgbWVtb3J5IG1hcHBpbmcgb2YgYSBkbWEtYnVm
IHRoYXQgd2FzDQo+PiBpbXBvcnRlZCBpbnRvIFRlZ3JhJ3MgRFJNIEdFTS4NCj4+DQo+PiBUbyBm
aXggdGhpcyBidWcsIG1vdmUgbWFwcGluZyBvZiBpbXBvcnRlZCBkbWEtYnVmcyB0byBkcm1fZ2Vt
X21tYXBfb2JqKCkuDQo+PiBOb3cgbW1hcGluZyBvZiBpbXBvcnRlZCBkbWEtYnVmcyB3b3JrcyBw
cm9wZXJseSBmb3IgYWxsIERSTSBkcml2ZXJzLg0KPiBTYW1lIGNvbW1lbnQgYWJvdXQgRml4ZXM6
IGFzIGluIHBhdGNoIDEsDQo+Pg0KPj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4+IFNp
Z25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5j
b20+DQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmPCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8IDMgKysrDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1l
bV9oZWxwZXIuYyB8IDkgLS0tLS0tLS0tDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vdGVncmEvZ2Vt
LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNCArKysrDQo+PiDCoCAzIGZpbGVzIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCj4+IGlu
ZGV4IDg2ZDY3MGM3MTI4Ni4uN2MwYjAyNTUwOGU0IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2RybV9nZW0uYw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0KPj4g
QEAgLTEwMzgsNiArMTAzOCw5IEBAIGludCBkcm1fZ2VtX21tYXBfb2JqKHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqLA0KPj4gdW5zaWduZWQgbG9uZyBvYmpfc2l6ZSwNCj4+IMKgwqDCoMKgwqAg
aWYgKG9ial9zaXplIDwgdm1hLT52bV9lbmQgLSB2bWEtPnZtX3N0YXJ0KQ0KPj4gwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOw0KPj4gwqAgK8KgwqDCoCBpZiAob2JqLT5pbXBvcnRf
YXR0YWNoKQ0KPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBkbWFfYnVmX21tYXAob2JqLT5kbWFf
YnVmLCB2bWEsIDApOw0KPiANCj4gSWYgd2Ugc3RhcnQgZW5hYmxpbmcgbW1hcGluZyBvZiBpbXBv
cnRlZCBkbWEtYnVmcyBvbiBhIG1ham9yaXR5IG9mDQo+IGRyaXZlcnMgaW4gdGhpcyB3YXksIGhv
dyBkbyB3ZSBlbnN1cmUgdGhhdCB1c2VyLXNwYWNlIGlzIG5vdCBibGluZGx5DQo+IHVzaW5nIHRo
ZSBvYmplY3QgbW1hcCB3aXRob3V0IGNhbGxpbmcgdGhlIG5lZWRlZCBETUFfQlVGX0lPQ1RMX1NZ
TkMNCj4gd2hpY2ggaXMgbmVlZGVkIGJlZm9yZSBhbmQgYWZ0ZXIgY3B1IGFjY2VzcyBvZiBtbWFw
J2VkIGRtYS1idWZzPw0KPiANCj4gSSB3YXMgdW5kZXIgdGhlIGltcHJlc3Npb24gKGFkbWl0dGVk
bHkgd2l0aG91dCBsb29raW5nKSB0aGF0IHRoZSBmZXcNCj4gZHJpdmVycyB0aGF0IGFjdHVhbGx5
IGNhbGxlZCBpbnRvIGRtYV9idWZfbW1hcCgpIGhhZCBzb21lIHByaXZhdGUNCj4gdXNlci1tb2Rl
IGRyaXZlciBjb2RlIGluIHBsYWNlIHRoYXQgZW5zdXJlZCB0aGlzIGhhcHBlbmVkLg0KDQpTaW5j
ZSBpdCdzIGEgdXNlcnNwYWNlIHdobyBkb2VzIHRoZSBtYXBwaW5nLCB0aGVuIGl0IHNob3VsZCBi
ZSBhDQpyZXNwb25zaWJpbGl0eSBvZiB1c2Vyc3BhY2UgdG8gZG8gYWxsIHRoZSBuZWNlc3Nhcnkg
c3luY2luZy4gSSdtIG5vdA0Kc3VyZSB3aGV0aGVyIGFueW9uZSBpbiB1c2Vyc3BhY2UgcmVhbGx5
IG5lZWRzIHRvIG1hcCBpbXBvcnRlZCBkbWEtYnVmcw0KaW4gcHJhY3RpY2UuIE5ldmVydGhlbGVz
cywgdGhpcyB1c2UtY2FzZSBpcyBicm9rZW4gYW5kIHNob3VsZCBiZSBmaXhlZA0KYnkgZWl0aGVy
IGFsbG93aW5nIHRvIGRvIHRoZSBtYXBwaW5nIG9yIHByb2hpYml0aW5nIGl0Lg0KDQotLSANCkJl
c3QgcmVnYXJkcywNCkRtaXRyeQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
