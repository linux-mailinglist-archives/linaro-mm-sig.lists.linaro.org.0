Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AFD5B3E07
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Sep 2022 19:37:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D81A5479C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Sep 2022 17:36:59 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 453DB3E9D4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Sep 2022 17:36:56 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0A45E6601FC6;
	Fri,  9 Sep 2022 18:36:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662745015;
	bh=8xgN4e43LGiBPVdQ7GyKB5jQBCWxBspXnT50kSaZfdc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=E1pvbfsh4mhx8kHsaeEx5+wdORPcsEFHoldFIWWyXseblN1dtO3m2LKuSoqgihlSa
	 mvxWcvwfAY63jSB7DnN7yOeJIhOmHYkexHRg9C30PT7fBMeLWfUKCiYOa08B86oCUs
	 ccnMOiQ/eemk3IQI6BMX/oXA+OGKrl0rBatDrO8+JSqXCkTd/fI+qJU/40kfFMc89g
	 t0gQ9aaRRLRYPyQEByTuKyml5hlPtBl1GC6RbbKtZL44FqTg2qeA3KCDga5aZ0jHda
	 scJFjauo2KMswJRJK5d6rTZTggJc5SFIdfQTgNU1j3sp7y+V1qH4Ha2hAFB1s341R4
	 qnfx/6JJNgQIg==
Message-ID: <588ff12e-d030-0db0-e248-1afd0dee4ae1@collabora.com>
Date: Fri, 9 Sep 2022 20:36:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Dmitry Osipenko <digetx@gmail.com>, Jani Nikula
 <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-7-dmitry.osipenko@collabora.com>
 <DM5PR11MB1324088635FDE00B0D957816C17B9@DM5PR11MB1324.namprd11.prod.outlook.com>
 <760b999f-b15d-102e-8bc7-c3e69f07f43f@gmail.com>
 <c89680d0-30ee-f5d7-be68-fa84458df04d@gmail.com>
 <DM5PR11MB1324EDC7A97DE98C2DC6EDA8C17A9@DM5PR11MB1324.namprd11.prod.outlook.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <DM5PR11MB1324EDC7A97DE98C2DC6EDA8C17A9@DM5PR11MB1324.namprd11.prod.outlook.com>
Message-ID-Hash: NZHOWQ7G5VS7XHHF4QSS7OHAP36I7SXJ
X-Message-ID-Hash: NZHOWQ7G5VS7XHHF4QSS7OHAP36I7SXJ
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "kernel@collabora.com" <kernel@collabora.com>, "virtualization@lists.linux-foundation.org" <virtualization@lists.linux-foundation.org>, "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tome
 u.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Qiang Yu <yuq825@gmail.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, "Gross, Jurgen" <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/21] drm/i915: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NZHOWQ7G5VS7XHHF4QSS7OHAP36I7SXJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOS8yLzIyIDE5OjI2LCBSdWhsLCBNaWNoYWVsIEogd3JvdGU6DQo+PiAwMi4wOS4yMDIyIDEz
OjMxLCBEbWl0cnkgT3NpcGVua28g0L/QuNGI0LXRgjoNCj4+PiAwMS4wOS4yMDIyIDE3OjAyLCBS
dWhsLCBNaWNoYWVsIEog0L/QuNGI0LXRgjoNCj4+PiAuLi4NCj4+Pj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYw0KPj4+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+Pj4+PiBAQCAtMzMxLDcgKzMzMSwx
OSBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0cyhzdHJ1Y3QNCj4+Pj4+IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+Pj4+PiAJCQljb250aW51ZTsNCj4+Pj4+IAkJfQ0KPj4+
Pj4NCj4+Pj4+ICsJCS8qDQo+Pj4+PiArCQkgKiBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoKSBy
ZXF1aXJlcyByZXNlcnZhdGlvbiB0byBiZQ0KPj4+Pj4gKwkJICogbG9ja2VkLiBUaGUgaW1wb3J0
ZWQgR0VNIHNob3VsZG4ndCBzaGFyZSByZXNlcnZhdGlvbiBsb2NrLA0KPj4+Pj4gKwkJICogc28g
aXQncyBzYWZlIHRvIHRha2UgdGhlIGxvY2suDQo+Pj4+PiArCQkgKi8NCj4+Pj4+ICsJCWlmIChv
YmotPmJhc2UuaW1wb3J0X2F0dGFjaCkNCj4+Pj4+ICsJCQlpOTE1X2dlbV9vYmplY3RfbG9jayhv
YmosIE5VTEwpOw0KPj4+Pg0KPj4+PiBUaGVyZSBpcyBhIGxvdCBvZiBzdHVmZiBnb2luZyBoZXJl
LiAgVGFraW5nIHRoZSBsb2NrIG1heSBiZSBwcmVtYXR1cmUuLi4NCj4+Pj4NCj4+Pj4+IAkJX19p
OTE1X2dlbV9vYmplY3RfcGFnZXNfZmluaShvYmopOw0KPj4+Pg0KPj4+PiBUaGUgaTkxNV9nZW1f
ZG1hYnVmLmM6aTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlc19kbWFidWYgaXMgd2hlcmUNCj4+Pj4g
dW5tYXBfYXR0YWNobWVudCBpcyBhY3R1YWxseSBjYWxsZWQsIHdvdWxkIGl0IG1ha2UgbW9yZSBz
ZW5zZSB0byBtYWtlDQo+Pj4+IGRvIHRoZSBsb2NraW5nIHRoZXJlPw0KPj4+DQo+Pj4gVGhlIF9f
aTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcygpIGlzIGludm9rZWQgd2l0aCBhIGhlbGQgcmVzZXJ2
YXRpb24NCj4+PiBsb2NrLCB3aGlsZSBmcmVlaW5nIG9iamVjdCBpcyBhIHNwZWNpYWwgdGltZSB3
aGVuIHdlIGtub3cgdGhhdCBHRU0gaXMNCj4+PiB1bnVzZWQuDQo+Pj4NCj4+PiBUaGUgX19pOTE1
X2dlbV9mcmVlX29iamVjdHMoKSB3YXMgdGFraW5nIHRoZSBsb2NrIHR3byB3ZWVrcyBhZ28gdW50
aWwNCj4+PiB0aGUgY2hhbmdlIG1hZGUgQ2hyaXMgV2lsc29uIFsxXSByZWFjaGVkIGxpbnV4LW5l
eHQuDQo+Pj4NCj4+PiBbMV0NCj4+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LQ0KPj4gbmV4dC5naXQvY29tbWl0Lz9pZD0yODI2ZDQ0
N2ZiZDYwZTZhMDVlNTNkNWY5MThiY2ViOGMwNGUzMTVjDQo+Pj4NCj4+PiBJIGRvbid0IHRoaW5r
IHdlIGNhbiB0YWtlIHRoZSBsb2NrIHdpdGhpbg0KPj4+IGk5MTVfZ2VtX29iamVjdF9wdXRfcGFn
ZXNfZG1hYnVmKCksIGl0IG1heS9zaG91bGQgZGVhZGxvY2sgb3RoZXIgY29kZQ0KPj4gcGF0aHMu
DQo+Pg0KPj4gT24gdGhlIG90aGVyIGhhbmQsIHdlIGNhbiBjaGVjayB3aGV0aGVyIHRoZSBHRU0n
cyByZWZjb3VudCBudW1iZXIgaXMNCj4+IHplcm8gaW4gaTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdl
c19kbWFidWYoKSBhbmQgdGhlbiB0YWtlIHRoZSBsb2NrIGlmDQo+PiBpdCdzIHplcm8uDQo+Pg0K
Pj4gQWxzbywgc2VlbXMgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIGp1c3QgdG8gYmFpbCBvdXQgZnJv
bQ0KPj4gaTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlc19kbWFidWYoKSBpZiByZWZjb3VudD0wLiBU
aGUgZnVydGhlcg0KPj4gZHJtX3ByaW1lX2dlbV9kZXN0cm95KCkgd2lsbCB0YWtlIGNhcmUgb2Yg
dW5tYXBwaW5nLiBQZXJoYXBzIHRoaXMgY291bGQNCj4+IGJlIHRoZSBiZXN0IG9wdGlvbiwgSSds
bCBnaXZlIGl0IGEgdGVzdC4NCj4gDQo+IGk5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMoKSBpcyB1
c2VzIHRoZSBTRywgYW5kIHRoZSB1c2FnZSBmb3INCj4gZHJtX3ByaW1fZ2VtX2Rlc3Ryb3koKQ0K
PiANCj4gZnJvbSBfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0cygpIGRvZXNuJ3QgdXNlIHRoZSBTRyBi
ZWNhdXNlIGl0IGhhcyBiZWVuICJmcmVlZCINCj4gYWxyZWFkeSwgSSBhbSBub3Qgc3VyZSBpZiB0
aGF0IHdvdWxkIHdvcmsuLi4NCj4gDQo+IEhtbS4uIHdpdGggdGhhdCBpbiBtaW5kLCBtYXliZSBt
b3ZpbmcgdGhlIGJhc2UuaW1wb3J0X2F0dGFjaCBjaGVjayB0byANCj4gX19pOTE1X2dlbV9vYmpl
Y3RfcHV0X3BhZ2VzIHdpdGggeW91ciBhdHRhY2ggY2hlY2s/DQoNCkkgc2VlIHlvdSBtZWFudCBf
X2k5MTVfZ2VtX29iamVjdF9wYWdlc19maW5pKCkgaGVyZS4NCg0KPiAJYXRvbWljX3NldCgmb2Jq
LT5tbS5wYWdlc19waW5fY291bnQsIDApOw0KPiAJaWYgKG9iai0+YmFzZS5pbXBvcnQpDQo+IAkJ
aTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqLCBOVUxMKTsNCj4gDQo+IAlfX2k5MTVfZ2VtX29iamVj
dF9wdXRfcGFnZXMob2JqKTsNCj4gDQo+IAlpZiAob2JqLT5iYXNlLmltcG9ydCkNCj4gCQlpOTE1
X2dlbV9vYmplY3RfdW5sb2NrKG9iaiwgTlVMTCk7DQo+IAlHRU1fQlVHX09OKGk5MTVfZ2VtX29i
amVjdF9oYXNfcGFnZXMob2JqKSk7DQo+IA0KPiBQcmV0dHkgbXVjaCBvbmUgc3RlcCB1cCBmcm9t
IHRoZSBkbWFidWYgaW50ZXJmYWNlLCBidXQgd2UgYXJlIGd1YXJhbnRlZWQgdG8NCj4gbm90IGhh
dmUgYW55IHBpbm5lZCBwYWdlcz8NCg0KSW1wb3J0ZXIgc2hvdWxkbid0IGhvbGQgcGFnZXMgb3V0
c2lkZSBvZiBkbWEtYnVmIEFQSSwgb3RoZXJ3aXNlIGl0DQpzaG91bGQgYmUgYSBidWcuDQoNCj4g
VGhlIG90aGVyIGNhbGxlciBvZiBfX2k5MTVfZ2VtX29iamVjdF9wYWdlc19maW5pIGlzIHRoZSBp
OTE1X3R0bSBtb3ZlX25vdGlmeQ0KPiB3aGljaCBzaG91bGQgbm90IGNvbmZsaWN0IChleHBvcnQg
c2lkZSwgbm90IGltcG9ydCBzaWRlKS4NCj4gDQo+IFNpbmNlIGl0IGFwcGVhcnMgdGhhdCBub3Qg
bG9ja2luZyBkdXJpbmcgdGhlIGNsZWFuIHVwIGlzIGRlc2lyYWJsZSwgdHJ5aW5nIHRvIG1ha2Ug
c3VyZSB0YWtlIHRoZSBsb2NrDQo+IGlzIHRha2VuIGF0IHRoZSBsYXN0IG1vbWVudCBtaWdodCBi
ZSB0aGUgcmlnaHQgcGF0aD8NCg0KUmVkdWNpbmcgdGhlIHNjb3BlIG9mIGxvY2tpbmcgdXN1YWxs
eSBpcyBwcmVmZXJyZWQgbW9yZS4gWW91cnMNCnN1Z2dlc3Rpb24gd29ya3Mgb2theSwgSSBjb3Vs
ZG4ndCBzcG90IGFueSBwcm9ibGVtcyBhdCBsZWFzdCBmb3IgYQ0Kbm9uLVRUTSBjb2RlIHBhdGhz
Lg0KDQpJdCdzIGluZGVlZCBhIGJpdCBub3QgbmljZSB0aGF0IF9faTkxNV9nZW1fb2JqZWN0X3Bh
Z2VzX2ZpbmkoKSBpcyB1c2VkDQpieSBUVE0sIGJ1dCBzaG91bGQgYmUgc2FmZSBmb3IgaW1wb3J0
ZWQgb2JqZWN0cy4gV2lsbCBiZSBncmVhdCBpZiBhbnlvbmUNCmZyb20gaTkxNSBtYWludGFpbmVy
cyBjb3VsZCBhY2sgdGhpcyB2YXJpYW50Lg0KDQotLSANCkJlc3QgcmVnYXJkcywNCkRtaXRyeQ0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
