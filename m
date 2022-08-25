Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2465A113A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Aug 2022 14:55:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 021763F5B8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Aug 2022 12:55:47 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 58C203F4C5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Aug 2022 12:55:39 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9EE1B6601DC3;
	Thu, 25 Aug 2022 13:55:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661432138;
	bh=8ivHC7JnTHAfG9ihlha3bu++8MKRkyY9YpxvJiw/v5A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BnLPmjiVEH4pa5B6MTFbNKfs40dmMNj8CIx/RwT09kuxL5i/LtGW4LvAUtP+LtZLa
	 Ne3G7ntS5elIx2uEXOi9TM/I0PKayAcOV7qxsuqa6Ccrgvt1kT6jj8htyGtaa+XJ1S
	 ErdKSqnINd+JDnKk7nUfzPcWP1/J2h/idt9HUwWVkx0dUKbnibZ3AXJem/5plydRQT
	 mV3Zsl9bewPF12cslSAL4xvqRDDjsO1+ijRRqEbVewsqR2KqHrNE8dvKvveU/RwNOe
	 kpxwemh83WVAwbJwgBdo/DgYklBQrXXZMCkA9uRFEnT8uWm5NNZ+uMqETXuzY6cmoU
	 Tl/TsRTeVUs3A==
Message-ID: <bb1e159b-26f3-a158-0263-9e6b9cef0174@collabora.com>
Date: Thu, 25 Aug 2022 15:55:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
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
 <055c3c05-ac4c-430e-f2b9-08f000acf435@gmail.com>
 <25d6b7e7-bbcc-7613-42d1-13c2b9ab2937@collabora.com>
 <e7576ab7-ff1e-e6da-b0fd-0315f1b37ed1@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <e7576ab7-ff1e-e6da-b0fd-0315f1b37ed1@amd.com>
Message-ID-Hash: VU5MTLGP5F7D67ZJTWOFPVOLGCVA6ZF6
X-Message-ID-Hash: VU5MTLGP5F7D67ZJTWOFPVOLGCVA6ZF6
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] dma-buf: Move dma-buf attachment to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VU5MTLGP5F7D67ZJTWOFPVOLGCVA6ZF6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOC8yNC8yMiAyMDo0NSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMjQuMDguMjIg
dW0gMTc6NDkgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+PiBPbiA4LzI0LzIyIDE4OjI0LCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IEFtIDI0LjA4LjIyIHVtIDEyOjIyIHNjaHJpZWIg
RG1pdHJ5IE9zaXBlbmtvOg0KPj4+PiBNb3ZlIGRtYS1idWYgYXR0YWNobWVudCBBUEkgZnVuY3Rp
b25zIHRvIHRoZSBkeW5hbWljIGxvY2tpbmcNCj4+Pj4gc3BlY2lmaWNhdGlvbi4NCj4+Pj4gVGhl
IHN0cmljdCBsb2NraW5nIGNvbnZlbnRpb24gcHJldmVudHMgZGVhZGxvY2sgc2l0dWF0aW9ucyBm
b3IgZG1hLWJ1Zg0KPj4+PiBpbXBvcnRlcnMgYW5kIGV4cG9ydGVycy4NCj4+Pj4NCj4+Pj4gUHJl
dmlvdXNseSwgdGhlICJ1bmxvY2tlZCIgdmVyc2lvbnMgb2YgdGhlIGF0dGFjaG1lbnQgQVBJIGZ1
bmN0aW9ucw0KPj4+PiB3ZXJlbid0IHRha2luZyB0aGUgcmVzZXJ2YXRpb24gbG9jayBhbmQgdGhp
cyBwYXRjaCBtYWtlcyB0aGVtIHRvIHRha2UNCj4+Pj4gdGhlIGxvY2suDQo+Pj4+DQo+Pj4+IElu
dGVsIGFuZCBBTUQgR1BVIGRyaXZlcnMgYWxyZWFkeSB3ZXJlIG1hcHBpbmcgdGhlIGF0dGFjaGVk
IGRtYS1idWZzDQo+Pj4+IHVuZGVyDQo+Pj4+IHRoZSBoZWxkIGxvY2sgZHVyaW5nIGF0dGFjaG1l
bnQsIGhlbmNlIHRoZXNlIGRyaXZlcnMgYXJlIHVwZGF0ZWQgdG8gdXNlDQo+Pj4+IHRoZSBsb2Nr
ZWQgZnVuY3Rpb25zLg0KPj4+Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28g
PGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPj4+PiAtLS0NCj4+Pj4gwqDCoCBkcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDExNQ0KPj4+PiArKysrKysrKysrKysrKy0tLS0tLS0NCj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmPCoMKgwqAgfMKgwqAgNCArLQ0KPj4+PiDCoMKgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyB8wqDCoCA4ICstDQo+Pj4+
IMKgwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIHzCoCAxMiAr
KysNCj4+Pj4gwqDCoCBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyMCArKy0tDQo+Pj4+IMKgwqAgNSBmaWxlcyBjaGFuZ2Vk
LCAxMTAgaW5zZXJ0aW9ucygrKSwgNDkgZGVsZXRpb25zKC0pDQo+Pj4+DQo+Pj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Yw0KPj4+PiBpbmRleCA0NTU2YTEyYmQ3NDEuLmYyYTVhMTIyZGE0YSAxMDA2NDQNCj4+Pj4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jDQo+Pj4+IEBAIC01NTksNyArNTU5LDcgQEAgc3RhdGljIHN0cnVjdCBmaWxlICpk
bWFfYnVmX2dldGZpbGUoc3RydWN0IGRtYV9idWYNCj4+Pj4gKmRtYWJ1ZiwgaW50IGZsYWdzKQ0K
Pj4+PiDCoMKgwqAgKiAyLiBVc2Vyc3BhY2UgcGFzc2VzIHRoaXMgZmlsZS1kZXNjcmlwdG9ycyB0
byBhbGwgZHJpdmVycyBpdCB3YW50cw0KPj4+PiB0aGlzIGJ1ZmZlcg0KPj4+PiDCoMKgwqAgKsKg
wqDCoCB0byBzaGFyZSB3aXRoOiBGaXJzdCB0aGUgZmlsZSBkZXNjcmlwdG9yIGlzIGNvbnZlcnRl
ZCB0byBhDQo+Pj4+ICZkbWFfYnVmIHVzaW5nDQo+Pj4+IMKgwqDCoCAqwqDCoMKgIGRtYV9idWZf
Z2V0KCkuIFRoZW4gdGhlIGJ1ZmZlciBpcyBhdHRhY2hlZCB0byB0aGUgZGV2aWNlIHVzaW5nDQo+
Pj4+IC0gKsKgwqDCoCBkbWFfYnVmX2F0dGFjaCgpLg0KPj4+PiArICrCoMKgwqAgZG1hX2J1Zl9h
dHRhY2hfdW5sb2NrZWQoKS4NCj4+PiBOb3cgSSBnZXQgd2h5IHRoaXMgaXMgY29uZnVzaW5nIG1l
IHNvIG11Y2guDQo+Pj4NCj4+PiBUaGUgX3VubG9ja2VkIHBvc3RmaXggaW1wbGllcyB0aGF0IHRo
ZXJlIGlzIGFub3RoZXIgZnVuY3Rpb24gd2hpY2gNCj4+PiBzaG91bGQgYmUgY2FsbGVkIHdpdGgg
dGhlIGxvY2tzIGFscmVhZHkgaGVsZCwgYnV0IHRoaXMgaXMgbm90IHRoZSBjYXNlDQo+Pj4gZm9y
IGF0dGFjaC9kZXRhY2ggKGJlY2F1c2UgdGhleSBhbHdheXMgbmVlZCB0byBncmFiIHRoZSBsb2Nr
DQo+Pj4gdGhlbXNlbHZlcykuDQo+PiBUaGF0J3MgY29ycmVjdC4gVGhlIGF0dGFjaC9kZXRhY2gg
b3BzIG9mIGV4cG9ydGVyIGNhbiB0YWtlIHRoZSBsb2NrDQo+PiAobGlrZSBpOTE1IGV4cG9ydGVy
IGRvZXMgaXQpLCBoZW5jZSBpbXBvcnRlciBtdXN0IG5vdCBncmFiIHRoZSBsb2NrDQo+PiBhcm91
bmQgZG1hX2J1Zl9hdHRhY2goKSBpbnZvY2F0aW9uLg0KPj4NCj4+PiBTbyBJIHN1Z2dlc3QgdG8g
ZHJvcCB0aGUgX3VubG9ja2VkIHBvc3RmaXggZm9yIHRoZSBhdHRhY2gvZGV0YWNoDQo+Pj4gZnVu
Y3Rpb25zLiBBbm90aGVyIHN0ZXAgd291bGQgdGhlbiBiZSB0byB1bmlmeSBhdHRhY2gvZGV0YWNo
IHdpdGgNCj4+PiBkeW5hbWljX2F0dGFjaC9keW5hbWljX2RldGFjaCB3aGVuIGJvdGggaGF2ZSB0
aGUgc2FtZSBsb2NraW5nIGNvbnZlbnRpb24NCj4+PiBhbnl3YXkuDQo+PiBJdCdzIG5vdCBhIHBy
b2JsZW0gdG8gY2hhbmdlIHRoZSBuYW1lLCBidXQgaXQncyB1bmNsZWFyIHRvIG1lIHdoeSB3ZQ0K
Pj4gc2hvdWxkIGRvIGl0LiBUaGUgX3VubG9ja2VkIHBvc3RmaXggdGVsbHMgaW1wb3J0ZXIgdGhh
dCByZXNlcnZhdGlvbiBtdXN0DQo+PiBiZSB1bmxvY2tlZCBhbmQgaXQgbXVzdCBiZSB1bmxvY2tl
ZCBpbiBjYXNlIG9mIGRtYV9idWZfYXR0YWNoKCkuDQo+Pg0KPj4gRHJvcHBpbmcgdGhlIHBvc3Rm
aXggd2lsbCBtYWtlIGRtYV9idWZfYXR0YWNoKCkgaW5jb25zaXN0ZW50IHdpdGggdGhlDQo+PiBy
ZXN0IG9mIHRoZSBfdW5sb2NrZWQgZnVuY3Rpb25zKD8pLiBBcmUgeW91IHN1cmUgd2UgbmVlZCB0
byByZW5hbWUgaXQ/DQo+IA0KPiBUaGUgaWRlYSBvZiB0aGUgcG9zdGZpeCB3YXMgdG8gZGlzdGlu
Z3Vpc2ggYmV0d2VlbiB0d28gZGlmZmVyZW50DQo+IHZlcnNpb25zIG9mIHRoZSBzYW1lIGZ1bmN0
aW9uLCBlLmcuIGRtYV9idWZfdm1hcF91bmxvY2tlZCgpIHZzIG5vcm1hbA0KPiBkbWFfYnVmX3Zt
YXAoKS4NCj4gDQo+IFdoZW4gd2UgZG9uJ3QgaGF2ZSB0aG9zZSB0d28gdHlwZXMgb2YgdGhlIHNh
bWUgZnVuY3Rpb24gSSBkb24ndCB0aGluayBpdA0KPiBtYWtlcyB0byBtdWNoIHNlbnNlIHRvIGtl
ZXAgdGhhdC4gV2Ugc2hvdWxkIGp1c3QgcHJvcGVybHkgZG9jdW1lbnQgd2hpY2gNCj4gZnVuY3Rp
b25zIGV4cGVjdCB3aGF0IGFuZCB0aGF0J3Mgd2hhdCB5b3VyIGRvY3VtZW50YXRpb24gcGF0Y2gg
ZG9lcy4NCg0KVGhhbmsgeW91IGZvciB0aGUgY2xhcmlmaWNhdGlvbi4gSSdsbCBjaGFuZ2UgdGhl
IG5hbWVzIGluIHY0IGxpa2UgeW91J3JlDQpzdWdnZXN0aW5nLCB3ZSBjYW4gYWx3YXlzIGltcHJv
dmUgbmFtaW5nIGxhdGVyIG9uIGlmIHdpbGwgYmUgbmVjZXNzYXJ5Lg0KDQotLSANCkJlc3QgcmVn
YXJkcywNCkRtaXRyeQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
