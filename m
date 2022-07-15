Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F0B575BED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Jul 2022 09:00:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EFE247ECE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Jul 2022 06:59:59 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 275763EBED
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jul 2022 06:59:55 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-232.nat.spd-mgts.ru [109.252.119.232])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7DF5F6601A3B;
	Fri, 15 Jul 2022 07:59:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657868394;
	bh=19qGkCc2cIXoMAA2hZZj9V2aaITk+ZrC7c+cT0h41YY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=j0I0uN1LjpBGty3wxdvM2KAjGZF9ug4hQElSe1mt+S/9szx5t+H2di6ibGmGpGXst
	 wJqP/dMeGtbccnj2osoKKCrkRE6+8wLOBaVgBNOEo/GBbDPLe1bYNZC5ltalcJ/o5Y
	 YInGEtLUCKwhn9dsrLDwPfLbVrgTdCd+K+zT4ixzjjv1kPg9eoH+1wKXtpb7kJJF9P
	 HwM7g/NCi2I1Zy+ngkHWGz4hffPHdHVJYbYDCHcqqott7p3KpvlDofORSYcxIa1BJA
	 497iacGLeX+E5VO1y9Oho9JU4Sb6lu7rfJnAuI2chzPO7V3LdR3knQC2zJYw2y3PZo
	 +kaWVIYB+SXVw==
Message-ID: <1ce233a2-36c9-3698-59f0-c4ff902bec60@collabora.com>
Date: Fri, 15 Jul 2022 09:59:47 +0300
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
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <5ec9313e-8498-2838-0320-331c347ce905@amd.com>
Message-ID-Hash: 4VGG55UQDZIKZSZZK6BS4EGFOA5WNZTI
X-Message-ID-Hash: 4VGG55UQDZIKZSZZK6BS4EGFOA5WNZTI
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 4/6] dma-buf: Acquire wait-wound context on attachment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4VGG55UQDZIKZSZZK6BS4EGFOA5WNZTI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNy8xNS8yMiAwOTo1MCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMTUuMDcuMjIg
dW0gMDI6NTIgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+PiBJbnRlbCBpOTE1IEdQVSBkcml2
ZXIgdXNlcyB3YWl0LXdvdW5kIG11dGV4IHRvIGxvY2sgbXVsdGlwbGUgR0VNcyBvbiB0aGUNCj4+
IGF0dGFjaG1lbnQgdG8gdGhlIGk5MTUgZG1hLWJ1Zi4gSW4gb3JkZXIgdG8gbGV0IGFsbCBkcml2
ZXJzIHV0aWxpemUNCj4+IHNoYXJlZA0KPj4gd2FpdC13b3VuZCBjb250ZXh0IGR1cmluZyBhdHRh
Y2htZW50IGluIGEgZ2VuZXJhbCB3YXksIG1ha2UgZG1hLWJ1Zg0KPj4gY29yZSB0bw0KPj4gYWNx
dWlyZSB0aGUgd3cgY29udGV4dCBpbnRlcm5hbGx5IGZvciB0aGUgYXR0YWNobWVudCBvcGVyYXRp
b24gYW5kIHVwZGF0ZQ0KPj4gaTkxNSBkcml2ZXIgdG8gdXNlIHRoZSBpbXBvcnRlcidzIHd3IGNv
bnRleHQgaW5zdGVhZCBvZiB0aGUgaW50ZXJuYWwgb25lLg0KPj4NCj4+IMKgRnJvbSBub3cgb24g
YWxsIGRtYS1idWYgZXhwb3J0ZXJzIHNoYWxsIHVzZSB0aGUgaW1wb3J0ZXIncyB3dyBjb250ZXh0
DQo+PiBmb3INCj4+IHRoZSBhdHRhY2htZW50IG9wZXJhdGlvbi4NCj4+DQo+PiBTaWduZWQtb2Zm
LWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPj4g
LS0tDQo+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgOCArKysrKy0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuY8KgwqDCoCB8wqAgMiArLQ0KPj4gwqAgLi4uL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jwqDCoMKgIHzCoCAyICstDQo+PiDCoCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmjCoMKgwqAgfMKgIDYgKyst
LS0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2V2aWN0LmPCoMKgwqDCoMKg
wqDCoMKgIHzCoCAyICstDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV93dy5j
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDI2ICsrKysrKysrKysrKysrKy0tLS0NCj4+IMKgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwg
MTUgKysrKysrKysrLS0NCj4+IMKgIDcgZmlsZXMgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwg
MTQgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+PiBpbmRleCAwZWU1ODgyNzY1MzQu
LjM3NTQ1ZWNiODQ1YSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMN
Cj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+IEBAIC04MDcsNiArODA3LDgg
QEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqIF9fbWFwX2RtYV9idWYoc3RydWN0DQo+PiBkbWFf
YnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4+IMKgwqAgKiBPcHRpb25hbGx5IHRoaXMgY2FsbHMg
JmRtYV9idWZfb3BzLmF0dGFjaCB0byBhbGxvdw0KPj4gZGV2aWNlLXNwZWNpZmljIGF0dGFjaA0K
Pj4gwqDCoCAqIGZ1bmN0aW9uYWxpdHkuDQo+PiDCoMKgICoNCj4+ICsgKiBFeHBvcnRlcnMgc2hh
bGwgdXNlIHd3X2N0eCBhY3F1aXJlZCBieSB0aGlzIGZ1bmN0aW9uLg0KPj4gKyAqDQo+PiDCoMKg
ICogUmV0dXJuczoNCj4+IMKgwqAgKg0KPj4gwqDCoCAqIEEgcG9pbnRlciB0byBuZXdseSBjcmVh
dGVkICZkbWFfYnVmX2F0dGFjaG1lbnQgb24gc3VjY2Vzcywgb3IgYQ0KPj4gbmVnYXRpdmUNCj4+
IEBAIC04MjIsNiArODI0LDcgQEAgZG1hX2J1Zl9keW5hbWljX2F0dGFjaF91bmxvY2tlZChzdHJ1
Y3QgZG1hX2J1Zg0KPj4gKmRtYWJ1Ziwgc3RydWN0IGRldmljZSAqZGV2LA0KPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2b2lkICppbXBvcnRlcl9wcml2KQ0KPj4gwqAgew0K
Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2g7DQo+PiArwqDC
oMKgIHN0cnVjdCB3d19hY3F1aXJlX2N0eCB3d19jdHg7DQo+PiDCoMKgwqDCoMKgIGludCByZXQ7
DQo+PiDCoCDCoMKgwqDCoMKgIGlmIChXQVJOX09OKCFkbWFidWYgfHwgIWRldikpDQo+PiBAQCAt
ODQxLDcgKzg0NCw4IEBAIGRtYV9idWZfZHluYW1pY19hdHRhY2hfdW5sb2NrZWQoc3RydWN0IGRt
YV9idWYNCj4+ICpkbWFidWYsIHN0cnVjdCBkZXZpY2UgKmRldiwNCj4+IMKgwqDCoMKgwqAgYXR0
YWNoLT5pbXBvcnRlcl9vcHMgPSBpbXBvcnRlcl9vcHM7DQo+PiDCoMKgwqDCoMKgIGF0dGFjaC0+
aW1wb3J0ZXJfcHJpdiA9IGltcG9ydGVyX3ByaXY7DQo+PiDCoCAtwqDCoMKgIGRtYV9yZXN2X2xv
Y2soZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4+ICvCoMKgwqAgd3dfYWNxdWlyZV9pbml0KCZ3d19j
dHgsICZyZXNlcnZhdGlvbl93d19jbGFzcyk7DQo+PiArwqDCoMKgIGRtYV9yZXN2X2xvY2soZG1h
YnVmLT5yZXN2LCAmd3dfY3R4KTsNCj4gDQo+IFRoYXQgd29uJ3Qgd29yayBsaWtlIHRoaXMuIFRo
ZSBjb3JlIHByb3BlcnR5IG9mIGEgV1cgY29udGV4dCBpcyB0aGF0IHlvdQ0KPiBuZWVkIHRvIHVu
d2luZCBhbGwgdGhlIGxvY2tzIGFuZCByZS1xdWlyZSB0aGVtIHdpdGggdGhlIGNvbnRlbmRlZCBv
bmUNCj4gZmlyc3QuDQo+IA0KPiBXaGVuIHlvdSBzdGF0aWNhbGx5IGxvY2sgdGhlIGltcG9ydGVk
IG9uZSBoZXJlIHlvdSBjYW4ndCBkbyB0aGF0IGFueSBtb3JlLg0KDQpZb3UncmUgcmlnaHQuIEkg
ZmVsdCB0aGF0IHNvbWV0aGluZyBpcyBtaXNzaW5nIGhlcmUsIGJ1dCBjb3VsZG4ndA0Kbm90aWNl
LiBJJ2xsIHRoaW5rIG1vcmUgYWJvdXQgdGhpcyBhbmQgZW5hYmxlDQpDT05GSUdfREVCVUdfV1df
TVVURVhfU0xPV1BBVEguIFRoYW5rIHlvdSENCg0KLS0gDQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
