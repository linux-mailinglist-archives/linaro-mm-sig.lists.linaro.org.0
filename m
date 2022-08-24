Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C56FA59FE26
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 17:22:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB3C23F60B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 15:22:12 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id CD12F3F080
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 15:22:05 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5F0606601E8F;
	Wed, 24 Aug 2022 16:22:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661354524;
	bh=0T3J2stygSQ46G6B6v9zKNnVQmlqX5H9hiMN/yLf2Co=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=C7kNvimP5fOeZ0pyknplgArACBn58oK40aC89jsu3KaqWXbcbY8TsmhOzQXGPZXJW
	 HlOE9l3nkbpE4cq7o7VzS7BLHKZ7JbB/cOakl527Kh6ywLyq6Vl+/D6cQEe4Tgmdsa
	 clxboeNEqjRMl0uZ8PhzGtLQXa+tn7p9f9fX0RM1Sox5gkFZodPnajK1NtmQiu0rUQ
	 jCjwYKEH2ZVybOdU5ZggxwmEs9aj+6c4EZ1TaDGOCpNvzNJSTVyvlM7X8dNfWi6Qba
	 4ht1LFVkuybaOjoAhoDb5lNkC/scx8bwroiq2hCKb3C5T+0VaVlNIxY0x7+lIxFlrq
	 hHP83HoyFxTWA==
Message-ID: <76beb362-09c3-bbff-c50d-794a200cb641@collabora.com>
Date: Wed, 24 Aug 2022 18:22:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
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
 Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>
References: <20220824102248.91964-1-dmitry.osipenko@collabora.com>
 <20220824102248.91964-7-dmitry.osipenko@collabora.com>
 <17181951-1b40-cd39-48df-58b43cad117d@amd.com>
 <4af793fd-eccc-ad70-65c3-de78dced71f0@collabora.com>
 <b24017e9-e8e7-148e-951b-0f2a1dffdca7@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <b24017e9-e8e7-148e-951b-0f2a1dffdca7@amd.com>
Message-ID-Hash: JMFPXMI6W5FIBSRK3XLIF4USB3PP3IVS
X-Message-ID-Hash: JMFPXMI6W5FIBSRK3XLIF4USB3PP3IVS
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] dma-buf: Move dma-buf attachment to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JMFPXMI6W5FIBSRK3XLIF4USB3PP3IVS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOC8yNC8yMiAxODoxNCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMjQuMDguMjIg
dW0gMTc6MDMgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+PiBPbiA4LzI0LzIyIDE3OjA4LCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IEFtIDI0LjA4LjIyIHVtIDEyOjIyIHNjaHJpZWIg
RG1pdHJ5IE9zaXBlbmtvOg0KPj4+PiBNb3ZlIGRtYS1idWYgYXR0YWNobWVudCBBUEkgZnVuY3Rp
b25zIHRvIHRoZSBkeW5hbWljIGxvY2tpbmcNCj4+Pj4gc3BlY2lmaWNhdGlvbi4NCj4+Pj4gVGhl
IHN0cmljdCBsb2NraW5nIGNvbnZlbnRpb24gcHJldmVudHMgZGVhZGxvY2sgc2l0dWF0aW9ucyBm
b3IgZG1hLWJ1Zg0KPj4+PiBpbXBvcnRlcnMgYW5kIGV4cG9ydGVycy4NCj4+Pj4NCj4+Pj4gUHJl
dmlvdXNseSwgdGhlICJ1bmxvY2tlZCIgdmVyc2lvbnMgb2YgdGhlIGF0dGFjaG1lbnQgQVBJIGZ1
bmN0aW9ucw0KPj4+PiB3ZXJlbid0IHRha2luZyB0aGUgcmVzZXJ2YXRpb24gbG9jayBhbmQgdGhp
cyBwYXRjaCBtYWtlcyB0aGVtIHRvIHRha2UNCj4+Pj4gdGhlIGxvY2suDQo+Pj4gRGlkbid0IHdl
IGNvbmNsdWRlZCB0aGF0IHdlIG5lZWQgdG8ga2VlcCB0aGUgYXR0YWNoIGFuZCBkZXRhY2ggY2Fs
bGJhY2tzDQo+Pj4gd2l0aG91dCB0aGUgbG9jayBhbmQgb25seSBtb3ZlIHRoZSBtYXAvdW5tYXAg
Y2FsbGJhY2tzIG92ZXI/DQo+Pj4NCj4+PiBPdGhlcndpc2UgaXQgd29uJ3QgYmUgcG9zc2libGUg
Zm9yIGRyaXZlcnMgdG8gbG9jayBtdWx0aXBsZSBidWZmZXJzIGlmDQo+Pj4gdGhleSBoYXZlIHRv
IHNodWZmbGUgdGhpbmdzIGFyb3VuZCBmb3IgYSBzcGVjaWZpYyBhdHRhY2htZW50Lg0KPj4gV2Ug
ZGlkIGNvbmNsdWRlIHRoYXQuIFRoZSBhdHRhY2gvZGV0YWNoIGRtYS1idWYgb3BzIGFyZSB1bmxv
Y2tlZCwgYnV0DQo+PiB0aGUgbWFwX2RtYV9idWYvdW5tYXBfZG1hX2J1ZiBtdXN0IGJlIGludm9r
ZWQgdW5kZXIgbG9jayBhbmQNCj4+IGRtYV9idWZfZHluYW1pY19hdHRhY2hfdW5sb2NrZWQoKSBt
YXBzIGRtYS1idWYgaWYgZWl0aGVyIGltcG9ydGVyIG9yDQo+PiBleHBvcnRlciBjYW4ndCBoYW5k
bGUgdGhlIGR5bmFtaWMgbWFwcGluZyBbMV0uDQo+IA0KPiBBaCEgWW91IGFyZSBjb25mdXNpbmcg
bWUgb3ZlciBhbmQgb3ZlciBhZ2FpbiB3aXRoIHRoYXQgOikNCj4gDQo+IE9rIGluIHRoaXMgY2Fz
ZSB0aGF0IGhlcmUgaXMgZmluZSwgSSBqdXN0IG5lZWQgdG8gcmUtcmVhZCB0aGUgcGF0Y2guDQoN
Ckl0J3MgaW5kZWVkIG5vdCB0cml2aWFsIHRvIHJldmlldyB0aGlzIHBhdGNoLCBub3Qgc3VyZSBp
ZiB3ZSBjYW4gbWFrZSBpdA0Kc2ltcGxlci4gTWF5YmUgaXQncyBwb3NzaWJsZSB0byBmYWN0b3Ig
b3V0IHRoZSBjaGFuZ2VzIHJlbGF0ZWQgdG8NCmR5bmFtaWMgbWFwcGluZywgb3IgbWF5YmUgaXQn
cyBub3Qgd29ydGh3aGlsZS4uDQoNCkFueXdheXMsIHRoYW5rIHlvdSBmb3IgaGVscGluZyB3aXRo
IHJldmlld2luZyBpdCA6KQ0KDQotLSANCkJlc3QgcmVnYXJkcywNCkRtaXRyeQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
