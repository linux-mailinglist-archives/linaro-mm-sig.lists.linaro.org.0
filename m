Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6578459FEC6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 17:49:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63CD93F617
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 15:49:41 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 8AC973F080
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 15:49:34 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 003536601DAD;
	Wed, 24 Aug 2022 16:49:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661356173;
	bh=vOJMhTQ7HzZBp0ZZo9K4hrXQVabXIso7oNLwG6hsKLo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=c6s4L7HIzhqXHIRjPO78mUx2njs0FTSDwh/if1G8GrYUXKIesr5TSuVpzCCXzCFaC
	 RQwFs9mzKIF/SoKOeW/iFsEtF2HNDrH0QYgFH8Bjb0EODV2gEnzbMJNa3D7Euz+aq1
	 ttSiIgN9lBknJRw6hrDsumfPw8z1mfE/u3dAN4OYGFY1SnY5ytLPSVBmnTh6lKyQde
	 YOUN/UNH4qT1TRrXxpbCLStfVkyl6+y4obXi9sfi44ZsbJWXBmSFG438Hbbw7Cm9FD
	 zamHCbpRiEHeEJEqGHwgMIgiFMUhzX7OjakAgX0Hfj9WgvOsPDRnfMMAi2GCcW6bPu
	 eS/kqb6U0BR1g==
Message-ID: <25d6b7e7-bbcc-7613-42d1-13c2b9ab2937@collabora.com>
Date: Wed, 24 Aug 2022 18:49:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
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
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
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
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <055c3c05-ac4c-430e-f2b9-08f000acf435@gmail.com>
Message-ID-Hash: GGLKUWBKI4EX4OL2HNSNSTM7FTSKADDT
X-Message-ID-Hash: GGLKUWBKI4EX4OL2HNSNSTM7FTSKADDT
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] dma-buf: Move dma-buf attachment to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GGLKUWBKI4EX4OL2HNSNSTM7FTSKADDT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOC8yNC8yMiAxODoyNCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMjQuMDguMjIg
dW0gMTI6MjIgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+PiBNb3ZlIGRtYS1idWYgYXR0YWNo
bWVudCBBUEkgZnVuY3Rpb25zIHRvIHRoZSBkeW5hbWljIGxvY2tpbmcNCj4+IHNwZWNpZmljYXRp
b24uDQo+PiBUaGUgc3RyaWN0IGxvY2tpbmcgY29udmVudGlvbiBwcmV2ZW50cyBkZWFkbG9jayBz
aXR1YXRpb25zIGZvciBkbWEtYnVmDQo+PiBpbXBvcnRlcnMgYW5kIGV4cG9ydGVycy4NCj4+DQo+
PiBQcmV2aW91c2x5LCB0aGUgInVubG9ja2VkIiB2ZXJzaW9ucyBvZiB0aGUgYXR0YWNobWVudCBB
UEkgZnVuY3Rpb25zDQo+PiB3ZXJlbid0IHRha2luZyB0aGUgcmVzZXJ2YXRpb24gbG9jayBhbmQg
dGhpcyBwYXRjaCBtYWtlcyB0aGVtIHRvIHRha2UNCj4+IHRoZSBsb2NrLg0KPj4NCj4+IEludGVs
IGFuZCBBTUQgR1BVIGRyaXZlcnMgYWxyZWFkeSB3ZXJlIG1hcHBpbmcgdGhlIGF0dGFjaGVkIGRt
YS1idWZzDQo+PiB1bmRlcg0KPj4gdGhlIGhlbGQgbG9jayBkdXJpbmcgYXR0YWNobWVudCwgaGVu
Y2UgdGhlc2UgZHJpdmVycyBhcmUgdXBkYXRlZCB0byB1c2UNCj4+IHRoZSBsb2NrZWQgZnVuY3Rp
b25zLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBl
bmtvQGNvbGxhYm9yYS5jb20+DQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTE1ICsrKysrKysrKysrKysr
LS0tLS0tLQ0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jwqDC
oMKgIHzCoMKgIDQgKy0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9k
bWFidWYuYyB8wqDCoCA4ICstDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmMgfMKgIDEyICsrKw0KPj4gwqAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMjAgKystLQ0KPj4gwqAgNSBm
aWxlcyBjaGFuZ2VkLCAxMTAgaW5zZXJ0aW9ucygrKSwgNDkgZGVsZXRpb25zKC0pDQo+Pg0KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jDQo+PiBpbmRleCA0NTU2YTEyYmQ3NDEuLmYyYTVhMTIyZGE0YSAxMDA2NDQNCj4+
IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMNCj4+IEBAIC01NTksNyArNTU5LDcgQEAgc3RhdGljIHN0cnVjdCBmaWxlICpk
bWFfYnVmX2dldGZpbGUoc3RydWN0IGRtYV9idWYNCj4+ICpkbWFidWYsIGludCBmbGFncykNCj4+
IMKgwqAgKiAyLiBVc2Vyc3BhY2UgcGFzc2VzIHRoaXMgZmlsZS1kZXNjcmlwdG9ycyB0byBhbGwg
ZHJpdmVycyBpdCB3YW50cw0KPj4gdGhpcyBidWZmZXINCj4+IMKgwqAgKsKgwqDCoCB0byBzaGFy
ZSB3aXRoOiBGaXJzdCB0aGUgZmlsZSBkZXNjcmlwdG9yIGlzIGNvbnZlcnRlZCB0byBhDQo+PiAm
ZG1hX2J1ZiB1c2luZw0KPj4gwqDCoCAqwqDCoMKgIGRtYV9idWZfZ2V0KCkuIFRoZW4gdGhlIGJ1
ZmZlciBpcyBhdHRhY2hlZCB0byB0aGUgZGV2aWNlIHVzaW5nDQo+PiAtICrCoMKgwqAgZG1hX2J1
Zl9hdHRhY2goKS4NCj4+ICsgKsKgwqDCoCBkbWFfYnVmX2F0dGFjaF91bmxvY2tlZCgpLg0KPiAN
Cj4gTm93IEkgZ2V0IHdoeSB0aGlzIGlzIGNvbmZ1c2luZyBtZSBzbyBtdWNoLg0KPiANCj4gVGhl
IF91bmxvY2tlZCBwb3N0Zml4IGltcGxpZXMgdGhhdCB0aGVyZSBpcyBhbm90aGVyIGZ1bmN0aW9u
IHdoaWNoDQo+IHNob3VsZCBiZSBjYWxsZWQgd2l0aCB0aGUgbG9ja3MgYWxyZWFkeSBoZWxkLCBi
dXQgdGhpcyBpcyBub3QgdGhlIGNhc2UNCj4gZm9yIGF0dGFjaC9kZXRhY2ggKGJlY2F1c2UgdGhl
eSBhbHdheXMgbmVlZCB0byBncmFiIHRoZSBsb2NrIHRoZW1zZWx2ZXMpLg0KDQpUaGF0J3MgY29y
cmVjdC4gVGhlIGF0dGFjaC9kZXRhY2ggb3BzIG9mIGV4cG9ydGVyIGNhbiB0YWtlIHRoZSBsb2Nr
DQoobGlrZSBpOTE1IGV4cG9ydGVyIGRvZXMgaXQpLCBoZW5jZSBpbXBvcnRlciBtdXN0IG5vdCBn
cmFiIHRoZSBsb2NrDQphcm91bmQgZG1hX2J1Zl9hdHRhY2goKSBpbnZvY2F0aW9uLg0KDQo+IFNv
IEkgc3VnZ2VzdCB0byBkcm9wIHRoZSBfdW5sb2NrZWQgcG9zdGZpeCBmb3IgdGhlIGF0dGFjaC9k
ZXRhY2gNCj4gZnVuY3Rpb25zLiBBbm90aGVyIHN0ZXAgd291bGQgdGhlbiBiZSB0byB1bmlmeSBh
dHRhY2gvZGV0YWNoIHdpdGgNCj4gZHluYW1pY19hdHRhY2gvZHluYW1pY19kZXRhY2ggd2hlbiBi
b3RoIGhhdmUgdGhlIHNhbWUgbG9ja2luZyBjb252ZW50aW9uDQo+IGFueXdheS4NCg0KSXQncyBu
b3QgYSBwcm9ibGVtIHRvIGNoYW5nZSB0aGUgbmFtZSwgYnV0IGl0J3MgdW5jbGVhciB0byBtZSB3
aHkgd2UNCnNob3VsZCBkbyBpdC4gVGhlIF91bmxvY2tlZCBwb3N0Zml4IHRlbGxzIGltcG9ydGVy
IHRoYXQgcmVzZXJ2YXRpb24gbXVzdA0KYmUgdW5sb2NrZWQgYW5kIGl0IG11c3QgYmUgdW5sb2Nr
ZWQgaW4gY2FzZSBvZiBkbWFfYnVmX2F0dGFjaCgpLg0KDQpEcm9wcGluZyB0aGUgcG9zdGZpeCB3
aWxsIG1ha2UgZG1hX2J1Zl9hdHRhY2goKSBpbmNvbnNpc3RlbnQgd2l0aCB0aGUNCnJlc3Qgb2Yg
dGhlIF91bmxvY2tlZCBmdW5jdGlvbnMoPykuIEFyZSB5b3Ugc3VyZSB3ZSBuZWVkIHRvIHJlbmFt
ZSBpdD8NCg0KPiBTb3JyeSB0aGF0IHRoaXMgaXMgZ29pbmcgc28gbXVjaCBiYWNrIGFuZCBmb3J0
aCwgaXQncyByZWFsbHkgY29tcGxpY2F0ZWQNCj4gdG8ga2VlcCBhbGwgdGhlIHN0dWZmIGluIG15
IGhlYWQgYXQgdGhlIG1vbWVudCA6KQ0KDQpOb3QgYSBwcm9ibGVtIGF0IGFsbCwgSSBleHBlY3Rl
ZCB0aGF0IGl0IHdpbGwgdGFrZSBzb21lIHRpbWUgZm9yIHRoaXMNCnBhdGNoc2V0IHRvIHNldHRs
ZSBkb3duLg0KDQotLSANCkJlc3QgcmVnYXJkcywNCkRtaXRyeQ0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
