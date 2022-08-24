Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB7859FDC2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 17:03:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D54B3F19C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 15:03:56 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 3ED993EC34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 15:03:48 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7B8806601E8F;
	Wed, 24 Aug 2022 16:03:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661353426;
	bh=ss7Re+WGJ6gPDf+07fuRLgmV2oF07ngUyzhkLngogMo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oAR0YvOOYSafNUGMl1oNd0JDpIq3FDAHC3HSFM85TQLAtdUKWV9S7/KMulX1yzdJU
	 ynpYz4YtIeU371JqvKb8/c29/d8CPVp3PGsQrb8kJYYp7JpoSNHveANuXdDGoXqRHL
	 p9edkNfznNFe0vL1B7KsPf3EQ1iqD0q15Jh9BVqB7qaGinbAx23HtsmgAfze7Sezsa
	 5eCHp4KjFs2i46CRc/qn7EZjWd/w/c9qg+8YOKS0kgwlBEA5uFkOiS4rzy8gfpu2eT
	 /NbO6kk31WXQ6hWLjRcZaGob2toZeqNH+aU5AQGrgKbdtAC0glWaondyOLmCNSr5lf
	 VJAAXcJe1ilqw==
Message-ID: <4af793fd-eccc-ad70-65c3-de78dced71f0@collabora.com>
Date: Wed, 24 Aug 2022 18:03:42 +0300
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
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <17181951-1b40-cd39-48df-58b43cad117d@amd.com>
Message-ID-Hash: 45AG3J7PCWFHVQU2B3W4KRCAKGTHLBUK
X-Message-ID-Hash: 45AG3J7PCWFHVQU2B3W4KRCAKGTHLBUK
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] dma-buf: Move dma-buf attachment to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/45AG3J7PCWFHVQU2B3W4KRCAKGTHLBUK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOC8yNC8yMiAxNzowOCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMjQuMDguMjIg
dW0gMTI6MjIgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+PiBNb3ZlIGRtYS1idWYgYXR0YWNo
bWVudCBBUEkgZnVuY3Rpb25zIHRvIHRoZSBkeW5hbWljIGxvY2tpbmcNCj4+IHNwZWNpZmljYXRp
b24uDQo+PiBUaGUgc3RyaWN0IGxvY2tpbmcgY29udmVudGlvbiBwcmV2ZW50cyBkZWFkbG9jayBz
aXR1YXRpb25zIGZvciBkbWEtYnVmDQo+PiBpbXBvcnRlcnMgYW5kIGV4cG9ydGVycy4NCj4+DQo+
PiBQcmV2aW91c2x5LCB0aGUgInVubG9ja2VkIiB2ZXJzaW9ucyBvZiB0aGUgYXR0YWNobWVudCBB
UEkgZnVuY3Rpb25zDQo+PiB3ZXJlbid0IHRha2luZyB0aGUgcmVzZXJ2YXRpb24gbG9jayBhbmQg
dGhpcyBwYXRjaCBtYWtlcyB0aGVtIHRvIHRha2UNCj4+IHRoZSBsb2NrLg0KPiANCj4gRGlkbid0
IHdlIGNvbmNsdWRlZCB0aGF0IHdlIG5lZWQgdG8ga2VlcCB0aGUgYXR0YWNoIGFuZCBkZXRhY2gg
Y2FsbGJhY2tzDQo+IHdpdGhvdXQgdGhlIGxvY2sgYW5kIG9ubHkgbW92ZSB0aGUgbWFwL3VubWFw
IGNhbGxiYWNrcyBvdmVyPw0KPiANCj4gT3RoZXJ3aXNlIGl0IHdvbid0IGJlIHBvc3NpYmxlIGZv
ciBkcml2ZXJzIHRvIGxvY2sgbXVsdGlwbGUgYnVmZmVycyBpZg0KPiB0aGV5IGhhdmUgdG8gc2h1
ZmZsZSB0aGluZ3MgYXJvdW5kIGZvciBhIHNwZWNpZmljIGF0dGFjaG1lbnQuDQoNCldlIGRpZCBj
b25jbHVkZSB0aGF0LiBUaGUgYXR0YWNoL2RldGFjaCBkbWEtYnVmIG9wcyBhcmUgdW5sb2NrZWQs
IGJ1dA0KdGhlIG1hcF9kbWFfYnVmL3VubWFwX2RtYV9idWYgbXVzdCBiZSBpbnZva2VkIHVuZGVy
IGxvY2sgYW5kDQpkbWFfYnVmX2R5bmFtaWNfYXR0YWNoX3VubG9ja2VkKCkgbWFwcyBkbWEtYnVm
IGlmIGVpdGhlciBpbXBvcnRlciBvcg0KZXhwb3J0ZXIgY2FuJ3QgaGFuZGxlIHRoZSBkeW5hbWlj
IG1hcHBpbmcgWzFdLg0KDQpbMV0NCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2
LjAtcmMyL3NvdXJjZS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jI0w4NjkNCg0KSGVuY2UgSSBy
ZS1hcnJhbmdlZCB0aGUgZG1hX3Jlc3ZfbG9jaygpIGluDQpkbWFfYnVmX2R5bmFtaWNfYXR0YWNo
X3VubG9ja2VkKCkgdG8gbW92ZSBib3RoIHBpbm5pbmcgYW5kIG1hcHBpbmcgdW5kZXINCnRoZSBo
ZWxkIGxvY2suDQoNCi0tIA0KQmVzdCByZWdhcmRzLA0KRG1pdHJ5DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
