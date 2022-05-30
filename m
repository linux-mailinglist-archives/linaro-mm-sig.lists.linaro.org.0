Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A46E537E4C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 15:57:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DF553F2C2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 13:57:38 +0000 (UTC)
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by lists.linaro.org (Postfix) with ESMTPS id 570E93F240
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 13:57:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: dmitry.osipenko)
	with ESMTPSA id B98F41F417FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653919049;
	bh=2XRBuky6ctLBMkVpHH42tRbnrHaVzoRJDfOS/8wLl/E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mPwSP+W1lUR0EdMvCliWfZoiylZ8CVpOpjwgflCUTZaI9WHJh5tJXhk8DyguPhNeN
	 HogdCkNBgtGD2G8U9Ep2K49/vmqE56g1BgD7MA21xGk1ZVBj+VJcIxxm08FCLdNgVK
	 RmZOwzc+caJBzV5axbiwKDrCGcHjZmvJd24egZXw9xLh3XfQFPhTT3EpgfN70g8mqC
	 9sjT+smifz0WHNiGEqr7+RZqCI9QQehNyQ19Mpiv9LWCOB9wzR78FM0tska4e7lqKe
	 50oVtOr/eGMjVeh2uPvpXIVZhL/NQ2LFQ3MNEmBcidBDh44gsd28fmmYzNC+2ue0aj
	 H9xWHCkQ7dKmg==
Message-ID: <7372dd1b-06f7-5336-4738-15f9b4d4d4b3@collabora.com>
Date: Mon, 30 May 2022 16:57:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
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
 Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Rob Clark <robdclark@gmail.com>, Emil Velikov <emil.l.velikov@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-15-dmitry.osipenko@collabora.com>
 <0a02a31d-a256-4ca4-0e35-e2ea1868a8ae@amd.com>
 <e6e17c52-43c2-064b-500e-325bb3ba3b2c@collabora.com>
 <02e7946b-34ca-b48e-1ba6-e7b63740a2d9@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <02e7946b-34ca-b48e-1ba6-e7b63740a2d9@amd.com>
Message-ID-Hash: RR2FHGBDBCCLMAIO7JXZFOPJZWCWABOG
X-Message-ID-Hash: RR2FHGBDBCCLMAIO7JXZFOPJZWCWABOG
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, Dmitry Osipenko <digetx@gmail.com>, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 14/22] dma-buf: Introduce new locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RR2FHGBDBCCLMAIO7JXZFOPJZWCWABOG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8zMC8yMiAxNjo0MSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gSGkgRG1pdHJ5LA0K
PiANCj4gQW0gMzAuMDUuMjIgdW0gMTU6MjYgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+PiBI
ZWxsbyBDaHJpc3RpYW4sDQo+Pg0KPj4gT24gNS8zMC8yMiAwOTo1MCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4+PiBIaSBEbWl0cnksDQo+Pj4NCj4+PiBGaXJzdCBvZiBhbGwgcGxlYXNlIHNl
cGFyYXRlIG91dCB0aGlzIHBhdGNoIGZyb20gdGhlIHJlc3Qgb2YgdGhlIHNlcmllcywNCj4+PiBz
aW5jZSB0aGlzIGlzIGEgY29tcGxleCBzZXBhcmF0ZSBzdHJ1Y3R1cmFsIGNoYW5nZS4NCj4+IEkg
YXNzdW1lIGFsbCB0aGUgcGF0Y2hlcyB3aWxsIGdvIHZpYSB0aGUgRFJNIHRyZWUgaW4gdGhlIGVu
ZCBzaW5jZSB0aGUNCj4+IHJlc3Qgb2YgdGhlIERSTSBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIGRl
cGVuZCBvbiB0aGlzIGRtYS1idWYgY2hhbmdlLg0KPj4gQnV0IEkgc2VlIHRoYXQgc2VwYXJhdGlv
biBtYXkgZWFzZSByZXZpZXdpbmcgb2YgdGhlIGRtYS1idWYgY2hhbmdlcywgc28NCj4+IGxldCdz
IHRyeSBpdC4NCj4gDQo+IFRoYXQgc291bmRzIGxpa2UgeW91IGFyZSB1bmRlcmVzdGltYXRpbmcg
YSBiaXQgaG93IG11Y2ggdHJvdWJsZSB0aGlzDQo+IHdpbGwgYmUuDQo+IA0KPj4+IEkgaGF2ZSB0
cmllZCB0aGlzIGJlZm9yZSBhbmQgZmFpbGVkIGJlY2F1c2UgY2F0Y2hpbmcgYWxsIHRoZSBsb2Nr
cyBpbg0KPj4+IHRoZSByaWdodCBjb2RlIHBhdGhzIGFyZSB2ZXJ5IHRyaWNreS4gU28gZXhwZWN0
IHNvbWUgZmFsbG91dCBmcm9tIHRoaXMNCj4+PiBhbmQgbWFrZSBzdXJlIHRoZSBrZXJuZWwgdGVz
dCByb2JvdCBhbmQgQ0kgc3lzdGVtcyBhcmUgY2xlYW4uDQo+PiBTdXJlLCBJJ2xsIGZpeCB1cCBh
bGwgdGhlIHJlcG9ydGVkIHRoaW5ncyBpbiB0aGUgbmV4dCBpdGVyYXRpb24uDQo+Pg0KPj4gQlRX
LCBoYXZlIHlvdSBldmVyIHBvc3RlZCB5b3VycyB2ZXJzaW9uIG9mIHRoZSBwYXRjaD8gV2lsbCBi
ZSBncmVhdCBpZg0KPj4gd2UgY291bGQgY29tcGFyZSB0aGUgY2hhbmdlZCBjb2RlIHBhdGhzLg0K
PiANCj4gTm8sIEkgbmV2ZXIgZXZlbiBmaW5pc2hlZCBjcmVhdGluZyBpdCBhZnRlciByZWFsaXpp
bmcgaG93IG11Y2ggd29yayBpdA0KPiB3b3VsZCBiZS4NCj4gDQo+Pj4+IFRoaXMgcGF0Y2ggaW50
cm9kdWNlcyBuZXcgbG9ja2luZyBjb252ZW50aW9uIGZvciBkbWEtYnVmIHVzZXJzLiBGcm9tDQo+
Pj4+IG5vdw0KPj4+PiBvbiBhbGwgZG1hLWJ1ZiBpbXBvcnRlcnMgYXJlIHJlc3BvbnNpYmxlIGZv
ciBob2xkaW5nIGRtYS1idWYNCj4+Pj4gcmVzZXJ2YXRpb24NCj4+Pj4gbG9jayBhcm91bmQgb3Bl
cmF0aW9ucyBwZXJmb3JtZWQgb3ZlciBkbWEtYnVmcy4NCj4+Pj4NCj4+Pj4gVGhpcyBwYXRjaCBp
bXBsZW1lbnRzIHRoZSBuZXcgZG1hLWJ1ZiBsb2NraW5nIGNvbnZlbnRpb24gYnk6DQo+Pj4+DQo+
Pj4+IMKgwqDCoCAxLiBNYWtpbmcgZG1hLWJ1ZiBBUEkgZnVuY3Rpb25zIHRvIHRha2UgdGhlIHJl
c2VydmF0aW9uIGxvY2suDQo+Pj4+DQo+Pj4+IMKgwqDCoCAyLiBBZGRpbmcgbmV3IGxvY2tlZCB2
YXJpYW50cyBvZiB0aGUgZG1hLWJ1ZiBBUEkgZnVuY3Rpb25zIGZvcg0KPj4+PiBkcml2ZXJzDQo+
Pj4+IMKgwqDCoMKgwqDCoCB0aGF0IG5lZWQgdG8gbWFuYWdlIGltcG9ydGVkIGRtYS1idWZzIHVu
ZGVyIHRoZSBoZWxkIGxvY2suDQo+Pj4gSW5zdGVhZCBvZiBhZGRpbmcgbmV3IGxvY2tlZCB2YXJp
YW50cyBwbGVhc2UgbWFyayBhbGwgdmFyaWFudHMgd2hpY2gNCj4+PiBleHBlY3QgdG8gYmUgY2Fs
bGVkIHdpdGhvdXQgYSBsb2NrIHdpdGggYW4gX3VubG9ja2VkIHBvc3RmaXguDQo+Pj4NCj4+PiBU
aGlzIHNob3VsZCBtYWtlIGl0IGVhc2llciB0byByZW1vdmUgdGhvc2UgaW4gYSBmb2xsb3cgdXAg
cGF0Y2ggc2V0IGFuZA0KPj4+IHRoZW4gZnVsbHkgbW92ZSB0aGUgbG9ja2luZyBpbnRvIHRoZSBp
bXBvcnRlci4NCj4+IERvIHdlIHJlYWxseSB3YW50IHRvIG1vdmUgYWxsIHRoZSBsb2NrcyB0byB0
aGUgaW1wb3J0ZXJzPyBTZWVtcyB0aGUNCj4+IG1ham9yaXR5IG9mIGRyaXZlcnMgc2hvdWxkIGJl
IGhhcHB5IHdpdGggdGhlIGRtYS1idWYgaGVscGVycyBoYW5kbGluZw0KPj4gdGhlIGxvY2tpbmcg
Zm9yIHRoZW0uDQo+IA0KPiBZZXMsIEkgY2xlYXJseSB0aGluayBzby4NCj4gDQo+Pg0KPj4+PiDC
oMKgwqAgMy4gQ29udmVydGluZyBhbGwgZHJpdmVycyB0byB0aGUgbmV3IGxvY2tpbmcgc2NoZW1l
Lg0KPj4+IEkgaGF2ZSBzdHJvbmcgZG91YnRzIHRoYXQgeW91IGdvdCBhbGwgb2YgdGhlbS4gQXQg
bGVhc3QgcmFkZW9uIGFuZA0KPj4+IG5vdXZlYXUgc2hvdWxkIGdyYWIgdGhlIHJlc2VydmF0aW9u
IGxvY2sgaW4gdGhlaXIgLT5hdHRhY2ggY2FsbGJhY2tzDQo+Pj4gc29tZWhvdy4NCj4+IFJhZGVv
biBhbmQgTm91dmVhdSB1c2UgZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZSgpIGFuZCB0aGV5IHRh
a2UgcmVzdg0KPj4gbG9jayBhbHJlYWR5LCBzZWVtcyB0aGV5IHNob3VsZCBiZSBva2F5ICg/KQ0K
PiANCj4gWW91IGFyZSBsb29raW5nIGF0IHRoZSB3cm9uZyBzaWRlLiBZb3UgbmVlZCB0byBmaXgg
dGhlIGV4cG9ydCBjb2RlIHBhdGgsDQo+IG5vdCB0aGUgaW1wb3J0IG9uZXMuDQo+IA0KPiBTZWUg
Zm9yIGV4YW1wbGUgYXR0YWNoIG9uIHJhZGVvbiB3b3JrcyBsaWtlIHRoaXMNCj4gZHJtX2dlbV9t
YXBfYXR0YWNoLT5kcm1fZ2VtX3Bpbi0+cmFkZW9uX2dlbV9wcmltZV9waW4tPnJhZGVvbl9ib19y
ZXNlcnZlLT50dG1fYm9fcmVzZXJ2ZS0+ZG1hX3Jlc3ZfbG9jay4NCg0KWWVhaCwgSSB3YXMgbG9v
a2luZyBhdCB0aGUgYm90aCBzaWRlcywgYnV0IG1pc3NlZCB0aGlzIG9uZS4NCg0KPiBTYW1lIGZv
ciBub3V2ZWF1IGFuZCBwcm9iYWJseSBhIGZldyBvdGhlciBleHBvcnRlcnMgYXMgd2VsbC4gVGhh
dCB3aWxsDQo+IGNlcnRhaW5seSBjYXVzZSBhIGRlYWRsb2NrIGlmIHlvdSBkb24ndCBmaXggaXQu
DQo+IA0KPiBJIHN0cm9uZ2x5IHN1Z2dlc3QgdG8gZG8gdGhpcyBzdGVwIGJ5IHN0ZXAsIGZpcnN0
IGF0dGFjaC9kZXRhY2ggYW5kIHRoZW4NCj4gdGhlIHJlc3QuDQoNClRoYW5rIHlvdSB2ZXJ5IG11
Y2ggZm9yIHRoZSBzdWdnZXN0aW9ucy4gSSdsbCBpbXBsZW1lbnQgdGhlbSBpbiB0aGUgbmV4dA0K
dmVyc2lvbi4NCg0KLS0gDQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
