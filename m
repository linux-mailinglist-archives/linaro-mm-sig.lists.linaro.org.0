Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F8157A7EE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Jul 2022 22:05:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E67EC3F18C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Jul 2022 20:05:41 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 1FFD63F18C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jul 2022 20:05:38 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-232.nat.spd-mgts.ru [109.252.119.232])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8773166019F4;
	Tue, 19 Jul 2022 21:05:34 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1658261136;
	bh=87heNz60iY2xXlfWeCdMcHlfvOyIp4RDnOqiE+7EyOg=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=klOb5xsgl6l9ubftW1+ax0k9cZtkpR2szLSY0RrNAUUhC80j9cYIvyx7gq8L/l4sQ
	 sCPxodFYLm8cs6LJuLmCgfGJsD8BX8RJ0cpaixj0UjYBDHsXPcXAJbLfScrWaMUl5X
	 p/wkh4kyop0Xmmtp+8262aY0Wor62j5jd4HSYKZ370A48M7D5QrqJnsIscNmaC3Eia
	 0j8c8rYOSxeZEg/93bpTWiR3rdmQr/8qej0g5rWxZsP9s0FIXV53EAVH1lMqfFhgYw
	 HuVA4WjPXUPCS8++l3ROc0LKS5ut6fthJb9IwFqa8va09T/4H3uZb2AiQ7A5DufA3O
	 IE4FiFlv7vybg==
Message-ID: <43446124-b99a-32d8-f797-7ec0cdca9ee4@collabora.com>
Date: Tue, 19 Jul 2022 23:05:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
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
In-Reply-To: <1ce233a2-36c9-3698-59f0-c4ff902bec60@collabora.com>
Message-ID-Hash: G3UFSNQQYTSIAVBJ4UATFSB4P6REVLKV
X-Message-ID-Hash: G3UFSNQQYTSIAVBJ4UATFSB4P6REVLKV
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 4/6] dma-buf: Acquire wait-wound context on attachment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G3UFSNQQYTSIAVBJ4UATFSB4P6REVLKV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNy8xNS8yMiAwOTo1OSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOg0KPiBPbiA3LzE1LzIyIDA5
OjUwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gQW0gMTUuMDcuMjIgdW0gMDI6NTIgc2No
cmllYiBEbWl0cnkgT3NpcGVua286DQo+Pj4gSW50ZWwgaTkxNSBHUFUgZHJpdmVyIHVzZXMgd2Fp
dC13b3VuZCBtdXRleCB0byBsb2NrIG11bHRpcGxlIEdFTXMgb24gdGhlDQo+Pj4gYXR0YWNobWVu
dCB0byB0aGUgaTkxNSBkbWEtYnVmLiBJbiBvcmRlciB0byBsZXQgYWxsIGRyaXZlcnMgdXRpbGl6
ZQ0KPj4+IHNoYXJlZA0KPj4+IHdhaXQtd291bmQgY29udGV4dCBkdXJpbmcgYXR0YWNobWVudCBp
biBhIGdlbmVyYWwgd2F5LCBtYWtlIGRtYS1idWYNCj4+PiBjb3JlIHRvDQo+Pj4gYWNxdWlyZSB0
aGUgd3cgY29udGV4dCBpbnRlcm5hbGx5IGZvciB0aGUgYXR0YWNobWVudCBvcGVyYXRpb24gYW5k
IHVwZGF0ZQ0KPj4+IGk5MTUgZHJpdmVyIHRvIHVzZSB0aGUgaW1wb3J0ZXIncyB3dyBjb250ZXh0
IGluc3RlYWQgb2YgdGhlIGludGVybmFsIG9uZS4NCj4+Pg0KPj4+IMKgRnJvbSBub3cgb24gYWxs
IGRtYS1idWYgZXhwb3J0ZXJzIHNoYWxsIHVzZSB0aGUgaW1wb3J0ZXIncyB3dyBjb250ZXh0DQo+
Pj4gZm9yDQo+Pj4gdGhlIGF0dGFjaG1lbnQgb3BlcmF0aW9uLg0KPj4+DQo+Pj4gU2lnbmVkLW9m
Zi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCj4+
PiAtLS0NCj4+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgOCArKysrKy0NCj4+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmPCoMKgwqAgfMKgIDIgKy0NCj4+PiDCoCAuLi4v
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmPCoMKgwqAgfMKgIDIgKy0NCj4+
PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmjCoMKgwqAgfMKg
IDYgKystLS0NCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmljdC5jwqDC
oMKgwqDCoMKgwqDCoCB8wqAgMiArLQ0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX3d3LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjYgKysrKysrKysrKysrKysrLS0tLQ0K
Pj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmjCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHwgMTUgKysrKysrKysrLS0NCj4+PiDCoCA3IGZpbGVzIGNoYW5nZWQsIDQ3IGluc2Vy
dGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gaW5kZXgg
MGVlNTg4Mjc2NTM0Li4zNzU0NWVjYjg0NWEgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+PiBA
QCAtODA3LDYgKzgwNyw4IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKiBfX21hcF9kbWFfYnVm
KHN0cnVjdA0KPj4+IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPj4+IMKgwqAgKiBPcHRp
b25hbGx5IHRoaXMgY2FsbHMgJmRtYV9idWZfb3BzLmF0dGFjaCB0byBhbGxvdw0KPj4+IGRldmlj
ZS1zcGVjaWZpYyBhdHRhY2gNCj4+PiDCoMKgICogZnVuY3Rpb25hbGl0eS4NCj4+PiDCoMKgICoN
Cj4+PiArICogRXhwb3J0ZXJzIHNoYWxsIHVzZSB3d19jdHggYWNxdWlyZWQgYnkgdGhpcyBmdW5j
dGlvbi4NCj4+PiArICoNCj4+PiDCoMKgICogUmV0dXJuczoNCj4+PiDCoMKgICoNCj4+PiDCoMKg
ICogQSBwb2ludGVyIHRvIG5ld2x5IGNyZWF0ZWQgJmRtYV9idWZfYXR0YWNobWVudCBvbiBzdWNj
ZXNzLCBvciBhDQo+Pj4gbmVnYXRpdmUNCj4+PiBAQCAtODIyLDYgKzgyNCw3IEBAIGRtYV9idWZf
ZHluYW1pY19hdHRhY2hfdW5sb2NrZWQoc3RydWN0IGRtYV9idWYNCj4+PiAqZG1hYnVmLCBzdHJ1
Y3QgZGV2aWNlICpkZXYsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2
b2lkICppbXBvcnRlcl9wcml2KQ0KPj4+IMKgIHsNCj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBkbWFf
YnVmX2F0dGFjaG1lbnQgKmF0dGFjaDsNCj4+PiArwqDCoMKgIHN0cnVjdCB3d19hY3F1aXJlX2N0
eCB3d19jdHg7DQo+Pj4gwqDCoMKgwqDCoCBpbnQgcmV0Ow0KPj4+IMKgIMKgwqDCoMKgwqAgaWYg
KFdBUk5fT04oIWRtYWJ1ZiB8fCAhZGV2KSkNCj4+PiBAQCAtODQxLDcgKzg0NCw4IEBAIGRtYV9i
dWZfZHluYW1pY19hdHRhY2hfdW5sb2NrZWQoc3RydWN0IGRtYV9idWYNCj4+PiAqZG1hYnVmLCBz
dHJ1Y3QgZGV2aWNlICpkZXYsDQo+Pj4gwqDCoMKgwqDCoCBhdHRhY2gtPmltcG9ydGVyX29wcyA9
IGltcG9ydGVyX29wczsNCj4+PiDCoMKgwqDCoMKgIGF0dGFjaC0+aW1wb3J0ZXJfcHJpdiA9IGlt
cG9ydGVyX3ByaXY7DQo+Pj4gwqAgLcKgwqDCoCBkbWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwg
TlVMTCk7DQo+Pj4gK8KgwqDCoCB3d19hY3F1aXJlX2luaXQoJnd3X2N0eCwgJnJlc2VydmF0aW9u
X3d3X2NsYXNzKTsNCj4+PiArwqDCoMKgIGRtYV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCAmd3df
Y3R4KTsNCj4+DQo+PiBUaGF0IHdvbid0IHdvcmsgbGlrZSB0aGlzLiBUaGUgY29yZSBwcm9wZXJ0
eSBvZiBhIFdXIGNvbnRleHQgaXMgdGhhdCB5b3UNCj4+IG5lZWQgdG8gdW53aW5kIGFsbCB0aGUg
bG9ja3MgYW5kIHJlLXF1aXJlIHRoZW0gd2l0aCB0aGUgY29udGVuZGVkIG9uZQ0KPj4gZmlyc3Qu
DQo+Pg0KPj4gV2hlbiB5b3Ugc3RhdGljYWxseSBsb2NrIHRoZSBpbXBvcnRlZCBvbmUgaGVyZSB5
b3UgY2FuJ3QgZG8gdGhhdCBhbnkgbW9yZS4NCj4gDQo+IFlvdSdyZSByaWdodC4gSSBmZWx0IHRo
YXQgc29tZXRoaW5nIGlzIG1pc3NpbmcgaGVyZSwgYnV0IGNvdWxkbid0DQo+IG5vdGljZS4gSSds
bCB0aGluayBtb3JlIGFib3V0IHRoaXMgYW5kIGVuYWJsZQ0KPiBDT05GSUdfREVCVUdfV1dfTVVU
RVhfU0xPV1BBVEguIFRoYW5rIHlvdSENCj4gDQoNCkNocmlzdGlhbiwgZG8geW91IHRoaW5rIHdl
IGNvdWxkIG1ha2UgYW4gZXhjdXNlIGZvciB0aGUgYXR0YWNoKCkNCmNhbGxiYWNrIGFuZCBtYWtl
IHRoZSBleHBvcnRlciByZXNwb25zaWJsZSBmb3IgdGFraW5nIHRoZSByZXN2IGxvY2s/IEl0DQp3
aWxsIGJlIGluY29uc2lzdGVudCB3aXRoIHRoZSByZXN0IG9mIHRoZSBjYWxsYmFja3MsIHdoZXJl
IGltcG9ydGVyDQp0YWtlcyB0aGUgbG9jaywgYnV0IGl0IHdpbGwgYmUgdGhlIHNpbXBsZXN0IGFu
ZCBsZWFzdCBpbnZhc2l2ZSBzb2x1dGlvbi4NCkl0J3MgdmVyeSBtZXNzeSB0byBkbyBhIGNyb3Nz
LWRyaXZlciB3dyBsb2NraW5nLCBJIGRvbid0IHRoaW5rIGl0J3MgdGhlDQpyaWdodCBhcHByb2Fj
aC4NCg0KLS0gDQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
