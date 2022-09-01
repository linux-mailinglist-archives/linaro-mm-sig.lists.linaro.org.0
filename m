Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8455A94D4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 12:41:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28E9F479BF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 10:41:34 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 5AE733F52D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 10:41:29 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0EC286601DF7;
	Thu,  1 Sep 2022 11:41:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662028888;
	bh=4gRwEeQrpCCNInUGu4Wkln9ZnVQKU6fbLc+GiIs/ids=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oAi2rxSwcnG0bXjo2QlMDHpLcITXazqjTc0dBalx+xOeHafTkvkjyLjXi6A6OOyur
	 z7pbNTKLqD/VkqICHbjajAS8k3mrAX9GZO4wHzC1QonWNPPsB+Yz/xNrNkGHiYNqkW
	 KkTeNffA7kOX5RP0brCKXhs5fgLYvkel3UkZEKV4IsG5BuPE8jfFljWb4zRoqwCW4G
	 seQ5HIQoKzjXqwqMOZEyy+r7MpCNGUMFwnjvSCAObVKOgjJcGMutTDAsM5pfKtEEMm
	 0OqK6C+DTZS/pjJwK1O6NhqMYskfUmdtIsJv4b93vGTms4LgyHT3lMm/bHN76TIS0u
	 g+wfJ91stbLBw==
Message-ID: <b6d96128-7558-8111-71b0-5fe5502ddf4b@collabora.com>
Date: Thu, 1 Sep 2022 13:41:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Russell King <linux@armlinux.org.uk>, Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-10-dmitry.osipenko@collabora.com>
 <641f372f-4a30-72bb-ec8b-4fd6ff825594@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <641f372f-4a30-72bb-ec8b-4fd6ff825594@amd.com>
Message-ID-Hash: JMEMP3O2UYKL5QJGN2F2VKNZMEYS3MS3
X-Message-ID-Hash: JMEMP3O2UYKL5QJGN2F2VKNZMEYS3MS3
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com
 >, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Qiang Yu <yuq825@gmail.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, Tomi Valkeinen <tomba@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 09/21] drm/etnaviv: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JMEMP3O2UYKL5QJGN2F2VKNZMEYS3MS3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOS8xLzIyIDA5OjUwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBbSAzMS4wOC4yMiB1
bSAxNzozNyBzY2hyaWViIERtaXRyeSBPc2lwZW5rbzoNCj4+IFByZXBhcmUgRXRuYXZpdiBkcml2
ZXIgdG8gdGhlIGNvbW1vbiBkeW5hbWljIGRtYS1idWYgbG9ja2luZyBjb252ZW50aW9uDQo+PiBi
eSBzdGFydGluZyB0byB1c2UgdGhlIHVubG9ja2VkIHZlcnNpb25zIG9mIGRtYS1idWYgQVBJIGZ1
bmN0aW9ucy4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5v
c2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPiANCj4gSW50ZXJlc3RpbmcsIHdoZXJlIGlzIHRoZSBt
YXRjaGluZyB2bWFwKCk/DQo+IA0KPiBBbnl3YXksIHRoaXMgcGF0Y2ggaXMgQWNrZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KRXRuYXZpdiBtYXBz
IEdFTSBvbmx5IG9uY2UgYW5kIHRoZW4gdW5tYXBzIGl0IHdoZW4gR0VNIGlzIGRlc3Ryb3llZC4g
VGhlDQpkbWEtYnVmIHZtYXBwaW5nIHNob3VsZCBoYXBwZW4gdW5kZXIgdGhlIHJlc2VydmF0aW9u
IGxvY2ssIGhlbmNlIG9ubHkNCnRoZSByZWxlYXNlIGZ1bmN0aW9uIG5lZWRzIHRvIGJlIGNoYW5n
ZWQgdG8gdGhlIHVubG9ja2VkIHZhcmlhbnQuDQoNCkx1Y2FzL0NocmlzdGlhbihHbWVpbmVyKSwg
Y291bGQgeW91IHBsZWFzZSBjaGVjayB0aGF0IEkgaGF2ZW4ndCBtaXNzZWQNCmFueXRoaW5nPw0K
DQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1l
LmMgfCAyICstDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZp
dl9nZW1fcHJpbWUuYw0KPj4gYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbV9w
cmltZS5jDQo+PiBpbmRleCAzZmEyZGExNDk2MzkuLjcwMzFkYjE0NWE3NyAxMDA2NDQNCj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1lLmMNCj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1lLmMNCj4+IEBAIC02NSw3
ICs2NSw3IEBAIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX3ByaW1lX3JlbGVhc2Uoc3RydWN0DQo+
PiBldG5hdml2X2dlbV9vYmplY3QgKmV0bmF2aXZfb2JqKQ0KPj4gwqDCoMKgwqDCoCBzdHJ1Y3Qg
aW9zeXNfbWFwIG1hcCA9IElPU1lTX01BUF9JTklUX1ZBRERSKGV0bmF2aXZfb2JqLT52YWRkcik7
DQo+PiDCoCDCoMKgwqDCoMKgIGlmIChldG5hdml2X29iai0+dmFkZHIpDQo+PiAtwqDCoMKgwqDC
oMKgwqAgZG1hX2J1Zl92dW5tYXAoZXRuYXZpdl9vYmotPmJhc2UuaW1wb3J0X2F0dGFjaC0+ZG1h
YnVmLCAmbWFwKTsNCj4+ICvCoMKgwqDCoMKgwqDCoA0KPj4gZG1hX2J1Zl92dW5tYXBfdW5sb2Nr
ZWQoZXRuYXZpdl9vYmotPmJhc2UuaW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCAmbWFwKTsNCj4+IMKg
IMKgwqDCoMKgwqAgLyogRG9uJ3QgZHJvcCB0aGUgcGFnZXMgZm9yIGltcG9ydGVkIGRtYWJ1Ziwg
YXMgdGhleSBhcmUgbm90DQo+PiDCoMKgwqDCoMKgwqAgKiBvdXJzLCBqdXN0IGZyZWUgdGhlIGFy
cmF5IHdlIGFsbG9jYXRlZDoNCj4gDQoNCg0KLS0gDQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
