Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF4757B63D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 14:18:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CE2C4798B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 12:18:49 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 387103EC19
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Jul 2022 12:18:45 +0000 (UTC)
Received: from [192.168.2.145] (unknown [109.252.119.232])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 81CE666015BE;
	Wed, 20 Jul 2022 13:18:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1658319523;
	bh=B4ji8JwW8eJ3XP1EGK6JbA9JDbvoYbqvHvRf2nsb7zM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MVHTQFYSrRMdyliP4QT0X5TFtmh9JA+mHFJhAYOmZzsKwZwQzRnJK87cEcwpnFUZL
	 arJbnBaTGOQX2kUp2P8Ds7zfCZI6wmWngKny0rJieNPqAqpzGaEqCxk12yhpR9bWZ3
	 8o5aU0IRsGM53Utp7m+HQQ/mpoTgDM/dxR2xvu4IKhpYf00S9yfaCe6giBFGwuwUpT
	 s/4/8aBfsMBpZ0suxVilFqlaueL5Lc3v2jWW47REkJ3EOO9mFKe033EiupjZaH2QvJ
	 dKC8LfBq+innrk6YwjrjXyl3SZy47EYje/qG+yyAu8lC6YaalCpVJ+SnqsNOsPKo8P
	 7PYwHi0AyYdZw==
Message-ID: <ab6252bb-50d4-1fd6-589e-1c956f058a5b@collabora.com>
Date: Wed, 20 Jul 2022 15:18:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
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
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>
References: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
 <20220715005244.42198-5-dmitry.osipenko@collabora.com>
 <5ec9313e-8498-2838-0320-331c347ce905@amd.com>
 <1ce233a2-36c9-3698-59f0-c4ff902bec60@collabora.com>
 <43446124-b99a-32d8-f797-7ec0cdca9ee4@collabora.com>
 <163d3271-e1e9-c325-185d-adb4391023e1@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <163d3271-e1e9-c325-185d-adb4391023e1@amd.com>
Message-ID-Hash: ZEDMLM753F42CSF4766X6YMBERCVR3WS
X-Message-ID-Hash: ZEDMLM753F42CSF4766X6YMBERCVR3WS
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 4/6] dma-buf: Acquire wait-wound context on attachment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZEDMLM753F42CSF4766X6YMBERCVR3WS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNy8yMC8yMiAxMToyOSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMTkuMDcuMjIg
dW0gMjI6MDUgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+PiBPbiA3LzE1LzIyIDA5OjU5LCBE
bWl0cnkgT3NpcGVua28gd3JvdGU6DQo+Pj4gT24gNy8xNS8yMiAwOTo1MCwgQ2hyaXN0aWFuIEvD
tm5pZyB3cm90ZToNCj4+Pj4gQW0gMTUuMDcuMjIgdW0gMDI6NTIgc2NocmllYiBEbWl0cnkgT3Np
cGVua286DQo+Pj4+PiBJbnRlbCBpOTE1IEdQVSBkcml2ZXIgdXNlcyB3YWl0LXdvdW5kIG11dGV4
IHRvIGxvY2sgbXVsdGlwbGUgR0VNcw0KPj4+Pj4gb24gdGhlDQo+Pj4+PiBhdHRhY2htZW50IHRv
IHRoZSBpOTE1IGRtYS1idWYuIEluIG9yZGVyIHRvIGxldCBhbGwgZHJpdmVycyB1dGlsaXplDQo+
Pj4+PiBzaGFyZWQNCj4+Pj4+IHdhaXQtd291bmQgY29udGV4dCBkdXJpbmcgYXR0YWNobWVudCBp
biBhIGdlbmVyYWwgd2F5LCBtYWtlIGRtYS1idWYNCj4+Pj4+IGNvcmUgdG8NCj4+Pj4+IGFjcXVp
cmUgdGhlIHd3IGNvbnRleHQgaW50ZXJuYWxseSBmb3IgdGhlIGF0dGFjaG1lbnQgb3BlcmF0aW9u
IGFuZA0KPj4+Pj4gdXBkYXRlDQo+Pj4+PiBpOTE1IGRyaXZlciB0byB1c2UgdGhlIGltcG9ydGVy
J3Mgd3cgY29udGV4dCBpbnN0ZWFkIG9mIHRoZQ0KPj4+Pj4gaW50ZXJuYWwgb25lLg0KPj4+Pj4N
Cj4+Pj4+IMKgwqBGcm9tIG5vdyBvbiBhbGwgZG1hLWJ1ZiBleHBvcnRlcnMgc2hhbGwgdXNlIHRo
ZSBpbXBvcnRlcidzIHd3DQo+Pj4+PiBjb250ZXh0DQo+Pj4+PiBmb3INCj4+Pj4+IHRoZSBhdHRh
Y2htZW50IG9wZXJhdGlvbi4NCj4+Pj4+DQo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3Np
cGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPj4+Pj4gLS0tDQo+Pj4+PiDC
oMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCA4ICsrKysrLQ0KPj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG1hYnVmLmPCoMKgwqAgfMKgIDIgKy0NCj4+Pj4+IMKgwqAgLi4uL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jwqDCoMKgIHzCoCAyICstDQo+Pj4+
PiDCoMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaMKgwqDCoCB8
wqAgNiArKy0tLQ0KPj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmlj
dC5jwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQ0KPj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV93dy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDI2DQo+Pj4+PiArKysr
KysrKysrKysrKystLS0tDQo+Pj4+PiDCoMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X3d3LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTUgKysrKysrKysrLS0NCj4+Pj4+IMKgwqAg
NyBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCj4+Pj4+
DQo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+Pj4+IGluZGV4IDBlZTU4ODI3NjUzNC4uMzc1NDVlY2I4NDVh
IDEwMDY0NA0KPj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+Pj4gKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+Pj4gQEAgLTgwNyw2ICs4MDcsOCBAQCBz
dGF0aWMgc3RydWN0IHNnX3RhYmxlICogX19tYXBfZG1hX2J1ZihzdHJ1Y3QNCj4+Pj4+IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPj4+Pj4gwqDCoMKgICogT3B0aW9uYWxseSB0aGlzIGNh
bGxzICZkbWFfYnVmX29wcy5hdHRhY2ggdG8gYWxsb3cNCj4+Pj4+IGRldmljZS1zcGVjaWZpYyBh
dHRhY2gNCj4+Pj4+IMKgwqDCoCAqIGZ1bmN0aW9uYWxpdHkuDQo+Pj4+PiDCoMKgwqAgKg0KPj4+
Pj4gKyAqIEV4cG9ydGVycyBzaGFsbCB1c2Ugd3dfY3R4IGFjcXVpcmVkIGJ5IHRoaXMgZnVuY3Rp
b24uDQo+Pj4+PiArICoNCj4+Pj4+IMKgwqDCoCAqIFJldHVybnM6DQo+Pj4+PiDCoMKgwqAgKg0K
Pj4+Pj4gwqDCoMKgICogQSBwb2ludGVyIHRvIG5ld2x5IGNyZWF0ZWQgJmRtYV9idWZfYXR0YWNo
bWVudCBvbiBzdWNjZXNzLCBvciBhDQo+Pj4+PiBuZWdhdGl2ZQ0KPj4+Pj4gQEAgLTgyMiw2ICs4
MjQsNyBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoX3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmDQo+
Pj4+PiAqZG1hYnVmLCBzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgdm9pZCAqaW1wb3J0ZXJfcHJpdikNCj4+Pj4+IMKgwqAgew0K
Pj4+Pj4gwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaDsNCj4+
Pj4+ICvCoMKgwqAgc3RydWN0IHd3X2FjcXVpcmVfY3R4IHd3X2N0eDsNCj4+Pj4+IMKgwqDCoMKg
wqDCoCBpbnQgcmV0Ow0KPj4+Pj4gwqDCoCDCoMKgwqDCoMKgIGlmIChXQVJOX09OKCFkbWFidWYg
fHwgIWRldikpDQo+Pj4+PiBAQCAtODQxLDcgKzg0NCw4IEBAIGRtYV9idWZfZHluYW1pY19hdHRh
Y2hfdW5sb2NrZWQoc3RydWN0IGRtYV9idWYNCj4+Pj4+ICpkbWFidWYsIHN0cnVjdCBkZXZpY2Ug
KmRldiwNCj4+Pj4+IMKgwqDCoMKgwqDCoCBhdHRhY2gtPmltcG9ydGVyX29wcyA9IGltcG9ydGVy
X29wczsNCj4+Pj4+IMKgwqDCoMKgwqDCoCBhdHRhY2gtPmltcG9ydGVyX3ByaXYgPSBpbXBvcnRl
cl9wcml2Ow0KPj4+Pj4gwqDCoCAtwqDCoMKgIGRtYV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCBO
VUxMKTsNCj4+Pj4+ICvCoMKgwqAgd3dfYWNxdWlyZV9pbml0KCZ3d19jdHgsICZyZXNlcnZhdGlv
bl93d19jbGFzcyk7DQo+Pj4+PiArwqDCoMKgIGRtYV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCAm
d3dfY3R4KTsNCj4+Pj4gVGhhdCB3b24ndCB3b3JrIGxpa2UgdGhpcy4gVGhlIGNvcmUgcHJvcGVy
dHkgb2YgYSBXVyBjb250ZXh0IGlzIHRoYXQNCj4+Pj4geW91DQo+Pj4+IG5lZWQgdG8gdW53aW5k
IGFsbCB0aGUgbG9ja3MgYW5kIHJlLXF1aXJlIHRoZW0gd2l0aCB0aGUgY29udGVuZGVkIG9uZQ0K
Pj4+PiBmaXJzdC4NCj4+Pj4NCj4+Pj4gV2hlbiB5b3Ugc3RhdGljYWxseSBsb2NrIHRoZSBpbXBv
cnRlZCBvbmUgaGVyZSB5b3UgY2FuJ3QgZG8gdGhhdCBhbnkNCj4+Pj4gbW9yZS4NCj4+PiBZb3Un
cmUgcmlnaHQuIEkgZmVsdCB0aGF0IHNvbWV0aGluZyBpcyBtaXNzaW5nIGhlcmUsIGJ1dCBjb3Vs
ZG4ndA0KPj4+IG5vdGljZS4gSSdsbCB0aGluayBtb3JlIGFib3V0IHRoaXMgYW5kIGVuYWJsZQ0K
Pj4+IENPTkZJR19ERUJVR19XV19NVVRFWF9TTE9XUEFUSC4gVGhhbmsgeW91IQ0KPj4+DQo+PiBD
aHJpc3RpYW4sIGRvIHlvdSB0aGluayB3ZSBjb3VsZCBtYWtlIGFuIGV4Y3VzZSBmb3IgdGhlIGF0
dGFjaCgpDQo+PiBjYWxsYmFjayBhbmQgbWFrZSB0aGUgZXhwb3J0ZXIgcmVzcG9uc2libGUgZm9y
IHRha2luZyB0aGUgcmVzdiBsb2NrPyBJdA0KPj4gd2lsbCBiZSBpbmNvbnNpc3RlbnQgd2l0aCB0
aGUgcmVzdCBvZiB0aGUgY2FsbGJhY2tzLCB3aGVyZSBpbXBvcnRlcg0KPj4gdGFrZXMgdGhlIGxv
Y2ssIGJ1dCBpdCB3aWxsIGJlIHRoZSBzaW1wbGVzdCBhbmQgbGVhc3QgaW52YXNpdmUgc29sdXRp
b24uDQo+PiBJdCdzIHZlcnkgbWVzc3kgdG8gZG8gYSBjcm9zcy1kcml2ZXIgd3cgbG9ja2luZywg
SSBkb24ndCB0aGluayBpdCdzIHRoZQ0KPj4gcmlnaHQgYXBwcm9hY2guDQo+IA0KPiBTbyB0byBz
dW1tYXJpemUgdGhlIGZvbGxvd2luZyBjYWxscyB3aWxsIHJlcXVpcmUgdGhhdCB0aGUgY2FsbGVy
IGhvbGQNCj4gdGhlIHJlc3YgbG9jazoNCj4gMS4gZG1hX2J1Zl9waW4oKS9kbWFfYnVmX3VucGlu
KCkNCj4gMi4gZG1hX2J1Zl9tYXBfYXR0YWNobWVudCgpL2RtYV9idWZfdW5tYXBfYXR0YWNobWVu
dCgpDQo+IDMuIGRtYV9idWZfdm1hcCgpL2RtYV9idWZfdnVubWFwKCkNCj4gNC4gZG1hX2J1Zl9t
b3ZlX25vdGlmeSgpDQo+IA0KPiBUaGUgZm9sbG93aW5nIGNhbGxzIHJlcXVpcmUgdGhhdCBjYWxs
ZXIgZG9lcyBub3QgaGVsZCB0aGUgcmVzdiBsb2NrOg0KPiAxLiBkbWFfYnVmX2F0dGFjaCgpL2Rt
YV9idWZfZHluYW1pY19hdHRhY2goKS9kbWFfYnVmX2RldGFjaCgpDQo+IDIuIGRtYV9idWZfZXhw
b3J0KCkvZG1hX2J1Zl9mZCgpDQo+IDMuIGRtYV9idWZfZ2V0KCkvZG1hX2J1Zl9wdXQoKQ0KPiA0
LiBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MoKS9kbWFfYnVmX2VuZF9jcHVfYWNjZXNzKCkNCj4g
DQo+IElmIHRoYXQncyBjb3JyZWN0IHRoYW4gdGhhdCB3b3VsZCB3b3JrIGZvciBtZSBhcyB3ZWxs
LCBidXQgd2Ugc2hvdWxkDQo+IHByb2JhYmx5IGRvY3VtZW50IHRoaXMuDQoNCkxvb2tzIGdvb2Qs
IHRoYW5rIHlvdS4gSSdsbCB0cnkgdGhpcyB2YXJpYW50Lg0KDQo+IE9yIGxldCBtZSBhc2sgdGhl
IG90aGVyIHdheSBhcm91bmQ6IFdoYXQgY2FsbHMgZXhhY3RseSBkbyB5b3UgbmVlZCB0bw0KPiBj
aGFuZ2UgdG8gc29sdmUgeW91ciBvcmlnaW5hbCBpc3N1ZT8gVGhhdCB3YXMgdm1hcC92dW5tYXAs
IHdhc24ndCBpdD8gSWYNCj4geWVzIHRoZW4gbGV0J3MgY29uY2VudHJhdGUgb24gdGhvc2UgZm9y
IHRoZSBtb21lbnQuDQoNCk9yaWdpbmFsbHksIERhbmllbCBWZXR0ZXIgYXNrZWQgdG8gc29ydCBv
dXQgdGhlIGRtYS1idWYgbG9ja2luZ3MgYWNyb3NzDQphbGwgZHJpdmVycywgc28gd2UgY291bGQg
cmVwbGFjZSBjdXN0b20gbG9ja3MgaW4gRFJNLVNITUVNIHdpdGggdGhlIHJlc3YNCmxvY2ssIG90
aGVyd2lzZSB0aGVyZSB3ZXJlIG5vIGd1YXJhbnRlZXMgdGhhdCB3ZSB3b24ndCBoYXZlIGRlYWRs
b2NrcyBpbg0KdGhlIGRtYS1idWYgY29kZSBwYXRocy4NCg0KVGhlIHZtYXAvdnVubWFwIGlzIG9u
ZSBvZiB0aGUgcGF0aHMgdGhhdCBuZWVkcyB0byBiZSBzb3J0ZWQgb3V0LCB0aGVyZQ0KaXMgbm8g
cGFydGljdWxhciBpc3N1ZSB3aXRoIGl0LCBqdXN0IG5lZWQgdG8gc3BlY2lmeSB0aGUgY29udmVu
dGlvbi4gVGhlDQptbWFwaW5nIHdhcyB0aGUgb3RoZXIgcXVlc3Rpb25hYmxlIHBhdGggYW5kIHdl
IGNvbmNsdWRlZCB0aGF0IGl0J3MNCmJldHRlciB0byBwcm9oaWJpdCBkbWEtYnVmIG1hcHBpbmdz
IGZvciBEUk0gZW50aXJlbHkuIExhc3RseSwgdGhlcmUgaXMNCmk5MTUgYXR0YWNoKCkgdGhhdCB1
c2VzIHRoZSB3dyBsb2NraW5nLg0KDQotLSANCkJlc3QgcmVnYXJkcywNCkRtaXRyeQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
