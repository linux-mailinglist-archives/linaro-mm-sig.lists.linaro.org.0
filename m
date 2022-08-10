Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F3158F28E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 20:53:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FF5847994
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 18:53:23 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 4CB173F30F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 18:53:20 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 944246601C70;
	Wed, 10 Aug 2022 19:53:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1660157599;
	bh=xbCaL2ScXB+T0FyoL/VdM0qhBj61RQMv/0Mh8aht9Y0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=byieT9EU43F/eRBpe3bi/nsXqvGsphP+xnN+9uCcJQiiqE+2eL+6OggtflfgiZV5H
	 2tbgBedC4VmW8VqMPGH+MSJmFXxmN5L0KjGxSmnjKSb9TYnT6q+8+bdtF2Dueo+auX
	 67XZQj1miiDmUza/2oi5U1NkSKSVPEVKs1DgEoiMZjakSsK7ADM0J790qkaQ8pphu7
	 M1BkTB2bL3dJox2DaLhHDMTu8D3c4zfRYO6jQNX4dYPdDaIr7OfFFbIsXhbVC8CrhI
	 DDaWDFnqfaqxGjPW9cdp+mVCoxjC3Q4VxEfkM8NccRtG0HVYtdCNsAeJQgHxfz0CIU
	 fpCGA/irmwkpA==
Message-ID: <0863cafa-c252-e194-3d23-ef640941e36e@collabora.com>
Date: Wed, 10 Aug 2022 21:53:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220725151839.31622-1-dmitry.osipenko@collabora.com>
 <20220725151839.31622-4-dmitry.osipenko@collabora.com>
 <6c8bded9-1809-608f-749a-5ee28b852d32@gmail.com>
 <562fbacf-3673-ff3c-23a1-124284b4456c@collabora.com>
 <87724722-b9f3-a016-c25c-4b0415f2c37f@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <87724722-b9f3-a016-c25c-4b0415f2c37f@amd.com>
Message-ID-Hash: 2JRSHFVM4CHUOL6XU5O4YKK36ZKUMYHL
X-Message-ID-Hash: 2JRSHFVM4CHUOL6XU5O4YKK36ZKUMYHL
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thier
 ry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/5] dma-buf: Move all dma-bufs to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2JRSHFVM4CHUOL6XU5O4YKK36ZKUMYHL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOC8xMC8yMiAyMToyNSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMTAuMDguMjIg
dW0gMTk6NDkgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+PiBPbiA4LzEwLzIyIDE0OjMwLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IEFtIDI1LjA3LjIyIHVtIDE3OjE4IHNjaHJpZWIg
RG1pdHJ5IE9zaXBlbmtvOg0KPj4+PiBUaGlzIHBhdGNoIG1vdmVzIHRoZSBub24tZHluYW1pYyBk
bWEtYnVmIHVzZXJzIG92ZXIgdG8gdGhlIGR5bmFtaWMNCj4+Pj4gbG9ja2luZyBzcGVjaWZpY2F0
aW9uLiBUaGUgc3RyaWN0IGxvY2tpbmcgY29udmVudGlvbiBwcmV2ZW50cyBkZWFkbG9jaw0KPj4+
PiBzaXR1YXRpb24gZm9yIGRtYS1idWYgaW1wb3J0ZXJzIGFuZCBleHBvcnRlcnMuDQo+Pj4+DQo+
Pj4+IFByZXZpb3VzbHkgdGhlICJ1bmxvY2tlZCIgdmVyc2lvbnMgb2YgdGhlIGRtYS1idWYgQVBJ
IGZ1bmN0aW9ucyB3ZXJlbid0DQo+Pj4+IHRha2luZyB0aGUgcmVzZXJ2YXRpb24gbG9jayBhbmQg
dGhpcyBwYXRjaCBtYWtlcyB0aGVtIHRvIHRha2UgdGhlIGxvY2suDQo+Pj4+DQo+Pj4+IEludGVs
IGFuZCBBTUQgR1BVIGRyaXZlcnMgYWxyZWFkeSB3ZXJlIG1hcHBpbmcgaW1wb3J0ZWQgZG1hLWJ1
ZnMgdW5kZXINCj4+Pj4gdGhlIGhlbGQgbG9jaywgaGVuY2UgdGhlICJsb2NrZWQiIHZhcmlhbnQg
b2YgdGhlIGZ1bmN0aW9ucyBhcmUgYWRkZWQNCj4+Pj4gZm9yIHRoZW0gYW5kIHRoZSBkcml2ZXJz
IGFyZSB1cGRhdGVkIHRvIHVzZSB0aGUgImxvY2tlZCIgdmVyc2lvbnMuDQo+Pj4gSW4gZ2VuZXJh
bCAiWWVzLCBwbGVhc2UiLCBidXQgdGhhdCB3b24ndCBiZSB0aGF0IGVhc3kuDQo+Pj4NCj4+PiBZ
b3Ugbm90IG9ubHkgbmVlZCB0byBjaGFuZ2UgYW1kZ3B1IGFuZCBpOTE1LCBidXQgYWxsIGRyaXZl
cnMNCj4+PiBpbXBsZW1lbnRpbmcgdGhlIG1hcF9kbWFfYnVmKCksIHVubWFwX2RtYV9idWYoKSBj
YWxsYmFja3MuDQo+Pj4NCj4+PiBBdWRpdGluZyBhbGwgdGhhdCBjb2RlIGlzIGEgaHVnZSBidW5j
aCBvZiB3b3JrLg0KPj4gSG0sIG5laXRoZXIgb2YgZHJpdmVycyB0YWtlIHRoZSByZXN2IGxvY2sg
aW4gbWFwX2RtYV9idWYvdW5tYXBfZG1hX2J1Zi4NCj4+IEl0J3MgZWFzeSB0byBhdWRpdCB0aGVt
IGFsbCBhbmQgSSBkaWQgaXQuIFNvIGVpdGhlciBJJ20gbWlzc2luZw0KPj4gc29tZXRoaW5nIG9y
IGl0IGRvZXNuJ3QgdGFrZSBtdWNoIHRpbWUgdG8gY2hlY2sgdGhlbSBhbGwuIEFtIEkgcmVhbGx5
DQo+PiBtaXNzaW5nIHNvbWV0aGluZz8NCj4gDQo+IE9rLCBzbyB0aGlzIGlzIG9ubHkgY2hhbmdp
bmcgbWFwL3VubWFwIG5vdz8NCg0KSXQgYWxzbyB2bWFwL3Z1bm1hcCBhbmQgYXR0YWNoL2RldGFj
aDogSW4gdGhlIHByZXZpb3VzIHBhdGNoIEkgYWRkZWQgdGhlDQpfdW5sb2NrZWQgcG9zdGZpeCB0
byB0aGUgZnVuYyBuYW1lcyBhbmQgaW4gdGhpcyBwYXRjaCBJIG1hZGUgdGhlbSBhbGwgdG8NCmFj
dHVhbGx5IHRha2UgdGhlIGxvY2suDQoNCj4gSW4gdGhpcyBjYXNlIHBsZWFzZSBzZXBhcmF0ZSB0
aGlzIGZyb20gdGhlIGRvY3VtZW50YXRpb24gY2hhbmdlLg0KDQpJJ2xsIGZhY3RvciBvdXQgdGhl
IGRvYyBpbiB0aGUgdjMuDQoNCj4gSSB3b3VsZCBhbHNvIGRyb3AgdGhlIF9sb2NrZWQgcG9zdGZp
eCBmcm9tIHRoZSBmdW5jdGlvbiBuYW1lLCBqdXN0DQo+IGhhdmluZyBfdW5sb2NrZWQgb24gYWxs
IGZ1bmN0aW9ucyB3aGljaCBhcmUgc3VwcG9zZWQgdG8gYmUgY2FsbGVkIHdpdGgNCj4gdGhlIGxv
Y2sgaGVsZCBzaG91bGQgYmUgc3VmZmljaWVudC4NCg0KTm90ZWQgZm9yIHRoZSB2My4NCg0KPiBU
aGFua3MgZm9yIGxvb2tpbmcgaW50byB0aGlzLA0KPiBDaHJpc3RpYW4uDQoNClRoYW5rIHlvdSBm
b3IgdGhlIHJldmlldy4NCg0KLS0gDQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
