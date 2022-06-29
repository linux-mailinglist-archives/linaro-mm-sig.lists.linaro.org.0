Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B25DD57B2C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 10:22:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6E34402F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 08:22:04 +0000 (UTC)
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se [213.80.101.70])
	by lists.linaro.org (Postfix) with ESMTPS id 826EF3EE9F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 06:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 8D3F940CDE;
	Wed, 29 Jun 2022 08:43:50 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.11
X-Spam-Level: 
X-Spam-Status: No, score=-2.11 tagged_above=-999 required=6.31
	tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
	DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
	T_SCC_BODY_TEXT_LINE=-0.01, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Authentication-Results: ste-pvt-msa1.bahnhof.se (amavisd-new);
	dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
	by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9zVOpFpqurBe; Wed, 29 Jun 2022 08:43:49 +0200 (CEST)
Received: 
	by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id E77D240CD6;
	Wed, 29 Jun 2022 08:43:48 +0200 (CEST)
Received: from [192.168.0.209] (h-155-4-205-35.A357.priv.bahnhof.se [155.4.205.35])
	by mail1.shipmail.org (Postfix) with ESMTPSA id 828A9360677;
	Wed, 29 Jun 2022 08:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
	t=1656485028; bh=lhOYNGqGisf/E17sgFrN5FIY96Ihx7G/tMj3K5gKxzw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DVzFW+KJOPDbhjAKm9CdyTI6VMdeTr0f9r1dPaIWy8TRfcE8pBAwRUNbgXu1Aq9X1
	 erEdsBm3Wj/SnXDmI7gS7vo2eW2qpK2lNzlxt8GkPEpfs1zIWUKHVE5z74qTdZHYis
	 3s7ooaxnN+paDWie6SRxEe77bEmvdZI0xGv/hSFU=
Message-ID: <6f2b0b7a-0031-dfe2-8ce2-191b940064b0@shipmail.org>
Date: Wed, 29 Jun 2022 08:43:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
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
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-9-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
In-Reply-To: <20220526235040.678984-9-dmitry.osipenko@collabora.com>
X-MailFrom: thomas_os@shipmail.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: U6HUEJVTRTA3T6JGKUS77BZWWANLRAX4
X-Message-ID-Hash: U6HUEJVTRTA3T6JGKUS77BZWWANLRAX4
X-Mailman-Approved-At: Wed, 20 Jul 2022 08:22:02 +0000
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 08/22] drm/virtio: Unlock reservations on dma_resv_reserve_fences() error
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U6HUEJVTRTA3T6JGKUS77BZWWANLRAX4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA1LzI3LzIyIDAxOjUwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+IFVubG9jayByZXNl
cnZhdGlvbnMgb24gZG1hX3Jlc3ZfcmVzZXJ2ZV9mZW5jZXMoKSBlcnJvciB0byBmaXggcmVjdXJz
aXZlDQo+IGxvY2tpbmcgb2YgdGhlIHJlc2VydmF0aW9ucyB3aGVuIHRoaXMgZXJyb3IgaGFwcGVu
cy4NCkZpeGVzOg0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KDQpXaXRoIHRoYXQgZml4
ZWQsDQoNClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBs
aW51eC5pbnRlbC5jb20+DQoNCg0KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRt
aXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0v
dmlydGlvL3ZpcnRncHVfZ2VtLmMgfCA0ICsrKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vdmlydGlvL3ZpcnRncHVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVf
Z2VtLmMNCj4gaW5kZXggNTgwYTc4ODA5ODM2Li43ZGI0OGQxN2VlM2EgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9nZW0uYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vdmlydGlvL3ZpcnRncHVfZ2VtLmMNCj4gQEAgLTIyOCw4ICsyMjgsMTAgQEAgaW50IHZp
cnRpb19ncHVfYXJyYXlfbG9ja19yZXN2KHN0cnVjdCB2aXJ0aW9fZ3B1X29iamVjdF9hcnJheSAq
b2JqcykNCj4gICANCj4gICAJZm9yIChpID0gMDsgaSA8IG9ianMtPm5lbnRzOyArK2kpIHsNCj4g
ICAJCXJldCA9IGRtYV9yZXN2X3Jlc2VydmVfZmVuY2VzKG9ianMtPm9ianNbaV0tPnJlc3YsIDEp
Ow0KPiAtCQlpZiAocmV0KQ0KPiArCQlpZiAocmV0KSB7DQo+ICsJCQl2aXJ0aW9fZ3B1X2FycmF5
X3VubG9ja19yZXN2KG9ianMpOw0KPiAgIAkJCXJldHVybiByZXQ7DQo+ICsJCX0NCj4gICAJfQ0K
PiAgIAlyZXR1cm4gcmV0Ow0KPiAgIH0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
