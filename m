Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF2957B2C8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 10:22:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2972A4047A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 08:22:17 +0000 (UTC)
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
	by lists.linaro.org (Postfix) with ESMTPS id 888293EE9F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 08:43:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 2A07C3F496;
	Wed, 29 Jun 2022 10:43:51 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.11
X-Spam-Level: 
X-Spam-Status: No, score=-2.11 tagged_above=-999 required=6.31
	tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
	DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
	T_SCC_BODY_TEXT_LINE=-0.01, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Authentication-Results: pio-pvt-msa2.bahnhof.se (amavisd-new);
	dkim=pass (1024-bit key) header.d=shipmail.org
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
	by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4hntFlTqeXsy; Wed, 29 Jun 2022 10:43:49 +0200 (CEST)
Received: 
	by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id BD3173F380;
	Wed, 29 Jun 2022 10:43:46 +0200 (CEST)
Received: from [192.168.0.209] (h-155-4-205-35.A357.priv.bahnhof.se [155.4.205.35])
	by mail1.shipmail.org (Postfix) with ESMTPSA id 009DD3600FE;
	Wed, 29 Jun 2022 10:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
	t=1656492226; bh=x90oW/9huaBEVhlYQnplarSqAv+GdIC9FB+WPge8YXg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=To+37xln8JJvgy8na/moijj7u3YDsnUNuVyQoNBDexiiEMSNqGDIeVvz1kBQFzukt
	 YcG6WWmRdCE6ePPgCuKLz9/xnAc5XIr2/e3dHA4nZ+veHTgrFehSwVxq0B1yIKdGKa
	 7lAinpshdXw/bjo7xkx8+5chsPjxtjKahuceuJ/M=
Message-ID: <b4086751-9bff-ea5e-93fc-ce2c513b129b@shipmail.org>
Date: Wed, 29 Jun 2022 10:43:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-3-dmitry.osipenko@collabora.com>
 <b8271f0c-d6a3-4194-1959-e112859756a3@shipmail.org>
 <c0273ac2-c87c-2612-03d4-dc52510b22f7@collabora.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
In-Reply-To: <c0273ac2-c87c-2612-03d4-dc52510b22f7@collabora.com>
X-MailFrom: thomas_os@shipmail.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: SQ2W2PYDLS52H7RRNETLGPVVVUY66QIN
X-Message-ID-Hash: SQ2W2PYDLS52H7RRNETLGPVVVUY66QIN
X-Mailman-Approved-At: Wed, 20 Jul 2022 08:22:14 +0000
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com, linux-media@vger.kernel.org, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, Rob Clark <robdclark@gmail.com>, Emil Velikov <emil.l.veli
 kov@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 02/22] drm/gem: Move mapping of imported dma-bufs to drm_gem_mmap_obj()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SQ2W2PYDLS52H7RRNETLGPVVVUY66QIN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA2LzI5LzIyIDEwOjIyLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+IE9uIDYvMjkvMjIg
MDk6NDAsIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkgd3JvdGU6DQo+PiBPbiA1LzI3LzIyIDAx
OjUwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+Pj4gRHJpdmVycyB0aGF0IHVzZSBkcm1fZ2Vt
X21tYXAoKSBhbmQgZHJtX2dlbV9tbWFwX29iaigpIGhlbHBlcnMgZG9uJ3QNCj4+PiBoYW5kbGUg
aW1wb3J0ZWQgZG1hLWJ1ZnMgcHJvcGVybHksIHdoaWNoIHJlc3VsdHMgaW4gbWFwcGluZyBvZiBz
b21ldGhpbmcNCj4+PiBlbHNlIHRoYW4gdGhlIGltcG9ydGVkIGRtYS1idWYuIEZvciBleGFtcGxl
LCBvbiBOVklESUEgVGVncmEgd2UgZ2V0IGENCj4+PiBoYXJkDQo+Pj4gbG9ja3VwIHdoZW4gdXNl
cnNwYWNlIHdyaXRlcyB0byB0aGUgbWVtb3J5IG1hcHBpbmcgb2YgYSBkbWEtYnVmIHRoYXQgd2Fz
DQo+Pj4gaW1wb3J0ZWQgaW50byBUZWdyYSdzIERSTSBHRU0uDQo+Pj4NCj4+PiBUbyBmaXggdGhp
cyBidWcsIG1vdmUgbWFwcGluZyBvZiBpbXBvcnRlZCBkbWEtYnVmcyB0byBkcm1fZ2VtX21tYXBf
b2JqKCkuDQo+Pj4gTm93IG1tYXBpbmcgb2YgaW1wb3J0ZWQgZG1hLWJ1ZnMgd29ya3MgcHJvcGVy
bHkgZm9yIGFsbCBEUk0gZHJpdmVycy4NCj4+IFNhbWUgY29tbWVudCBhYm91dCBGaXhlczogYXMg
aW4gcGF0Y2ggMSwNCj4+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPj4+IFNpZ25lZC1v
ZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQo+
Pj4gLS0tDQo+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmPCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8IDMgKysrDQo+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVt
X2hlbHBlci5jIHwgOSAtLS0tLS0tLS0NCj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2dl
bS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDQgKysrKw0KPj4+ICDCoCAzIGZpbGVzIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0K
Pj4+IGluZGV4IDg2ZDY3MGM3MTI4Ni4uN2MwYjAyNTUwOGU0IDEwMDY0NA0KPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dl
bS5jDQo+Pj4gQEAgLTEwMzgsNiArMTAzOCw5IEBAIGludCBkcm1fZ2VtX21tYXBfb2JqKHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqLA0KPj4+IHVuc2lnbmVkIGxvbmcgb2JqX3NpemUsDQo+Pj4g
IMKgwqDCoMKgwqAgaWYgKG9ial9zaXplIDwgdm1hLT52bV9lbmQgLSB2bWEtPnZtX3N0YXJ0KQ0K
Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4gIMKgICvCoMKgwqAg
aWYgKG9iai0+aW1wb3J0X2F0dGFjaCkNCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGRtYV9i
dWZfbW1hcChvYmotPmRtYV9idWYsIHZtYSwgMCk7DQo+PiBJZiB3ZSBzdGFydCBlbmFibGluZyBt
bWFwaW5nIG9mIGltcG9ydGVkIGRtYS1idWZzIG9uIGEgbWFqb3JpdHkgb2YNCj4+IGRyaXZlcnMg
aW4gdGhpcyB3YXksIGhvdyBkbyB3ZSBlbnN1cmUgdGhhdCB1c2VyLXNwYWNlIGlzIG5vdCBibGlu
ZGx5DQo+PiB1c2luZyB0aGUgb2JqZWN0IG1tYXAgd2l0aG91dCBjYWxsaW5nIHRoZSBuZWVkZWQg
RE1BX0JVRl9JT0NUTF9TWU5DDQo+PiB3aGljaCBpcyBuZWVkZWQgYmVmb3JlIGFuZCBhZnRlciBj
cHUgYWNjZXNzIG9mIG1tYXAnZWQgZG1hLWJ1ZnM/DQo+Pg0KPj4gSSB3YXMgdW5kZXIgdGhlIGlt
cHJlc3Npb24gKGFkbWl0dGVkbHkgd2l0aG91dCBsb29raW5nKSB0aGF0IHRoZSBmZXcNCj4+IGRy
aXZlcnMgdGhhdCBhY3R1YWxseSBjYWxsZWQgaW50byBkbWFfYnVmX21tYXAoKSBoYWQgc29tZSBw
cml2YXRlDQo+PiB1c2VyLW1vZGUgZHJpdmVyIGNvZGUgaW4gcGxhY2UgdGhhdCBlbnN1cmVkIHRo
aXMgaGFwcGVuZWQuDQo+IFNpbmNlIGl0J3MgYSB1c2Vyc3BhY2Ugd2hvIGRvZXMgdGhlIG1hcHBp
bmcsIHRoZW4gaXQgc2hvdWxkIGJlIGENCj4gcmVzcG9uc2liaWxpdHkgb2YgdXNlcnNwYWNlIHRv
IGRvIGFsbCB0aGUgbmVjZXNzYXJ5IHN5bmNpbmcuDQoNClN1cmUsIGJ1dCBub3RoaW5nIHByb2hp
Yml0cyB1c2VyLXNwYWNlIHRvIGlnbm9yZSB0aGUgc3luY2luZyB0aGlua2luZyANCiJJdCB3b3Jr
cyBhbnl3YXkiLCB0ZXN0aW5nIHRob3NlIGRyaXZlcnMgd2hlcmUgdGhlIHN5bmNpbmcgaXMgYSBO
T1AuIEFuZCANCndoZW4gYSBkcml2ZXIgdGhhdCBmaW5hbGx5IG5lZWRzIHN5bmNpbmcgaXMgdGVz
dGVkIGl0J3MgdG9vIGxhdGUgdG8gZml4IA0KYWxsIGJyb2tlbiB1c2VyLXNwYWNlLg0KDQo+ICAg
SSdtIG5vdA0KPiBzdXJlIHdoZXRoZXIgYW55b25lIGluIHVzZXJzcGFjZSByZWFsbHkgbmVlZHMg
dG8gbWFwIGltcG9ydGVkIGRtYS1idWZzDQo+IGluIHByYWN0aWNlLiBOZXZlcnRoZWxlc3MsIHRo
aXMgdXNlLWNhc2UgaXMgYnJva2VuIGFuZCBzaG91bGQgYmUgZml4ZWQNCj4gYnkgZWl0aGVyIGFs
bG93aW5nIHRvIGRvIHRoZSBtYXBwaW5nIG9yIHByb2hpYml0aW5nIGl0Lg0KPg0KVGhlbiBJJ2Qg
dm90ZSBmb3IgcHJvaGliaXRpbmcgaXQsIGF0IGxlYXN0IGZvciBub3cuIEFuZCBmb3IgdGhlIGZ1
dHVyZSANCm1vdmluZyBmb3J3YXJkIHdlIGNvdWxkIHBlcmhhcHMgcmV2aXNpdCB0aGUgZG1hLWJ1
ZiBuZWVkIGZvciBzeW5jaW5nLCANCnJlcXVpcmluZyB0aG9zZSBkcml2ZXJzIHRoYXQgYWN0dWFs
bHkgbmVlZCBpdCB0byBpbXBsZW1lbnQgZW11bGF0ZWQgDQpjb2hlcmVudCBtZW1vcnkgd2hpY2gg
Y2FuIGJlIGRvbmUgbm90IHRvbyBpbmVmZmljaWVudGx5ICh2bXdnZnggYmVpbmcgDQpvbmUgZXhh
bXBsZSkuDQoNCi9UaG9tYXMNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
