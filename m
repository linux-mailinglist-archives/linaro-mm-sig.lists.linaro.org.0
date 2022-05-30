Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A708C537B87
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 15:27:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A60393F2C0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 13:27:02 +0000 (UTC)
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by lists.linaro.org (Postfix) with ESMTPS id 8D2833EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 13:26:57 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: dmitry.osipenko)
	with ESMTPSA id B1F391F42E89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653917216;
	bh=y8CpXrtP+c6Qf6iu5Rkh+8kR5t7I7EuM/mXJ3s9H5Zs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CZBBpXpJJByM/6l1wreC73qyaYOtUyAY912FO23xX9hwne0P8DnGHVfuPN4nMsGCT
	 8SkJMvb9QBciZR6HQOm2m0Pv+tBSMrQzbTJhWEU/RA9xCdqbSQHUQ/nV0EfPj5Fh0g
	 /Bz633BDtP5oWyr2aY9l9/qknO9qze9TgXSMV4ZjAyn/uZyDn95jjXsxnqKUHAFUYj
	 Xl1HS7BN4ZwJ0JAX6Azh2TmYj2i3WjRR80SU/1ps37ciW04RwtS6XWFaZAru9NCxqG
	 jz7LyKVTcMBV9YNtk3fQE7sBherW3XwtioZyr1RjqcTCj2d+TQiehKVmn3qh2wdHis
	 oxYI+SRObIGUA==
Message-ID: <e6e17c52-43c2-064b-500e-325bb3ba3b2c@collabora.com>
Date: Mon, 30 May 2022 16:26:49 +0300
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
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <0a02a31d-a256-4ca4-0e35-e2ea1868a8ae@amd.com>
Message-ID-Hash: AAQMLSN2J5XXISCR4IVTTRHSOXK3XEXH
X-Message-ID-Hash: AAQMLSN2J5XXISCR4IVTTRHSOXK3XEXH
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, Dmitry Osipenko <digetx@gmail.com>, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 14/22] dma-buf: Introduce new locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AAQMLSN2J5XXISCR4IVTTRHSOXK3XEXH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQ2hyaXN0aWFuLA0KDQpPbiA1LzMwLzIyIDA5OjUwLCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPiBIaSBEbWl0cnksDQo+IA0KPiBGaXJzdCBvZiBhbGwgcGxlYXNlIHNlcGFyYXRlIG91
dCB0aGlzIHBhdGNoIGZyb20gdGhlIHJlc3Qgb2YgdGhlIHNlcmllcywNCj4gc2luY2UgdGhpcyBp
cyBhIGNvbXBsZXggc2VwYXJhdGUgc3RydWN0dXJhbCBjaGFuZ2UuDQoNCkkgYXNzdW1lIGFsbCB0
aGUgcGF0Y2hlcyB3aWxsIGdvIHZpYSB0aGUgRFJNIHRyZWUgaW4gdGhlIGVuZCBzaW5jZSB0aGUN
CnJlc3Qgb2YgdGhlIERSTSBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIGRlcGVuZCBvbiB0aGlzIGRt
YS1idWYgY2hhbmdlLg0KQnV0IEkgc2VlIHRoYXQgc2VwYXJhdGlvbiBtYXkgZWFzZSByZXZpZXdp
bmcgb2YgdGhlIGRtYS1idWYgY2hhbmdlcywgc28NCmxldCdzIHRyeSBpdC4NCg0KPiBBbSAyNy4w
NS4yMiB1bSAwMTo1MCBzY2hyaWViIERtaXRyeSBPc2lwZW5rbzoNCj4+IEFsbCBkbWEtYnVmcyBo
YXZlIGRtYS1yZXNlcnZhdGlvbiBsb2NrIHRoYXQgYWxsb3dzIGRyaXZlcnMgdG8gcGVyZm9ybQ0K
Pj4gZXhjbHVzaXZlIG9wZXJhdGlvbnMgb3ZlciBzaGFyZWQgZG1hLWJ1ZnMuIFRvZGF5J3MgZG1h
LWJ1ZiBBUEkgaGFzDQo+PiBpbmNvbXBsZXRlIGxvY2tpbmcgc3BlY2lmaWNhdGlvbiwgd2hpY2gg
Y3JlYXRlcyBkZWFkIGxvY2sgc2l0dWF0aW9uDQo+PiBmb3IgZG1hLWJ1ZiBpbXBvcnRlcnMgYW5k
IGV4cG9ydGVycyB0aGF0IGRvbid0IGNvb3JkaW5hdGUgdGhlaXJzIGxvY2tzLg0KPiANCj4gV2Vs
bCBwbGVhc2UgZHJvcCB0aGF0IHNlbnRlbmNlLiBUaGUgbG9ja2luZyBzcGVjaWZpY2F0aW9ucyBh
cmUgYWN0dWFsbHkNCj4gdmVyeSB3ZWxsIGRlZmluZWQsIGl0J3MganVzdCB0aGF0IHNvbWUgZHJp
dmVycyBhcmUgYSBiaXQgYnJva2VuDQo+IHJlZ2FyZGluZyB0aGVtLg0KPiANCj4gV2hhdCB5b3Ug
ZG8gaGVyZSBpcyByYXRoZXIgbW92aW5nIGFsbCB0aGUgbm9uLWR5bmFtaWMgZHJpdmVycyBvdmVy
IHRvDQo+IHRoZSBkeW5hbWljIGxvY2tpbmcgc3BlY2lmaWNhdGlvbiAod2hpY2ggaXMgcmVhbGx5
IG5pY2UgdG8gaGF2ZSkuDQoNCkluZGVlZCwgdGhpcyB3aWxsIGJlIGEgYmV0dGVyIGRlc2NyaXB0
aW9uLCB0aGFuayB5b3UhIEknbGwgdXBkYXRlIGl0Lg0KDQo+IEkgaGF2ZSB0cmllZCB0aGlzIGJl
Zm9yZSBhbmQgZmFpbGVkIGJlY2F1c2UgY2F0Y2hpbmcgYWxsIHRoZSBsb2NrcyBpbg0KPiB0aGUg
cmlnaHQgY29kZSBwYXRocyBhcmUgdmVyeSB0cmlja3kuIFNvIGV4cGVjdCBzb21lIGZhbGxvdXQg
ZnJvbSB0aGlzDQo+IGFuZCBtYWtlIHN1cmUgdGhlIGtlcm5lbCB0ZXN0IHJvYm90IGFuZCBDSSBz
eXN0ZW1zIGFyZSBjbGVhbi4NCg0KU3VyZSwgSSdsbCBmaXggdXAgYWxsIHRoZSByZXBvcnRlZCB0
aGluZ3MgaW4gdGhlIG5leHQgaXRlcmF0aW9uLg0KDQpCVFcsIGhhdmUgeW91IGV2ZXIgcG9zdGVk
IHlvdXJzIHZlcnNpb24gb2YgdGhlIHBhdGNoPyBXaWxsIGJlIGdyZWF0IGlmDQp3ZSBjb3VsZCBj
b21wYXJlIHRoZSBjaGFuZ2VkIGNvZGUgcGF0aHMuDQoNCj4+IFRoaXMgcGF0Y2ggaW50cm9kdWNl
cyBuZXcgbG9ja2luZyBjb252ZW50aW9uIGZvciBkbWEtYnVmIHVzZXJzLiBGcm9tIG5vdw0KPj4g
b24gYWxsIGRtYS1idWYgaW1wb3J0ZXJzIGFyZSByZXNwb25zaWJsZSBmb3IgaG9sZGluZyBkbWEt
YnVmIHJlc2VydmF0aW9uDQo+PiBsb2NrIGFyb3VuZCBvcGVyYXRpb25zIHBlcmZvcm1lZCBvdmVy
IGRtYS1idWZzLg0KPj4NCj4+IFRoaXMgcGF0Y2ggaW1wbGVtZW50cyB0aGUgbmV3IGRtYS1idWYg
bG9ja2luZyBjb252ZW50aW9uIGJ5Og0KPj4NCj4+IMKgwqAgMS4gTWFraW5nIGRtYS1idWYgQVBJ
IGZ1bmN0aW9ucyB0byB0YWtlIHRoZSByZXNlcnZhdGlvbiBsb2NrLg0KPj4NCj4+IMKgwqAgMi4g
QWRkaW5nIG5ldyBsb2NrZWQgdmFyaWFudHMgb2YgdGhlIGRtYS1idWYgQVBJIGZ1bmN0aW9ucyBm
b3IgZHJpdmVycw0KPj4gwqDCoMKgwqDCoCB0aGF0IG5lZWQgdG8gbWFuYWdlIGltcG9ydGVkIGRt
YS1idWZzIHVuZGVyIHRoZSBoZWxkIGxvY2suDQo+IA0KPiBJbnN0ZWFkIG9mIGFkZGluZyBuZXcg
bG9ja2VkIHZhcmlhbnRzIHBsZWFzZSBtYXJrIGFsbCB2YXJpYW50cyB3aGljaA0KPiBleHBlY3Qg
dG8gYmUgY2FsbGVkIHdpdGhvdXQgYSBsb2NrIHdpdGggYW4gX3VubG9ja2VkIHBvc3RmaXguDQo+
IA0KPiBUaGlzIHNob3VsZCBtYWtlIGl0IGVhc2llciB0byByZW1vdmUgdGhvc2UgaW4gYSBmb2xs
b3cgdXAgcGF0Y2ggc2V0IGFuZA0KPiB0aGVuIGZ1bGx5IG1vdmUgdGhlIGxvY2tpbmcgaW50byB0
aGUgaW1wb3J0ZXIuDQoNCkRvIHdlIHJlYWxseSB3YW50IHRvIG1vdmUgYWxsIHRoZSBsb2NrcyB0
byB0aGUgaW1wb3J0ZXJzPyBTZWVtcyB0aGUNCm1ham9yaXR5IG9mIGRyaXZlcnMgc2hvdWxkIGJl
IGhhcHB5IHdpdGggdGhlIGRtYS1idWYgaGVscGVycyBoYW5kbGluZw0KdGhlIGxvY2tpbmcgZm9y
IHRoZW0uDQoNCj4+IMKgwqAgMy4gQ29udmVydGluZyBhbGwgZHJpdmVycyB0byB0aGUgbmV3IGxv
Y2tpbmcgc2NoZW1lLg0KPiANCj4gSSBoYXZlIHN0cm9uZyBkb3VidHMgdGhhdCB5b3UgZ290IGFs
bCBvZiB0aGVtLiBBdCBsZWFzdCByYWRlb24gYW5kDQo+IG5vdXZlYXUgc2hvdWxkIGdyYWIgdGhl
IHJlc2VydmF0aW9uIGxvY2sgaW4gdGhlaXIgLT5hdHRhY2ggY2FsbGJhY2tzDQo+IHNvbWVob3cu
DQoNClJhZGVvbiBhbmQgTm91dmVhdSB1c2UgZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZSgpIGFu
ZCB0aGV5IHRha2UgcmVzdg0KbG9jayBhbHJlYWR5LCBzZWVtcyB0aGV5IHNob3VsZCBiZSBva2F5
ICg/KQ0KDQpJIGFzc3VtZSBhbGwgdGhlIGJhc2ljcyBzaG91bGQgY292ZXJlZCBpbiB0aGlzIHY2
LiBBdCBtaW5pbXVtIEludGVsLA0KVGVncmEsIFBhbmZyb3N0LCBMaW1hIGFuZCBSb2NrY2hpcCBk
cml2ZXJzIHNob3VsZCBiZSBnb29kLiBJZiBJIG1pc3NlZA0Kc29tZXRoaW5nLCB0aGVuIHBsZWFz
ZSBsZXQgbWUga25vdyBhbmQgSSdsbCBjb3JyZWN0IGl0Lg0KDQo+PiBTaWduZWQtb2ZmLWJ5OiBE
bWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPj4gLS0tDQo+
PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8IDI3MCArKysrKysrKysrKy0tLS0tLS0NCj4+IMKgIGRyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uY8KgwqDCoMKgwqDCoCB8wqDCoCA2ICstDQo+PiDC
oCBkcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqDCoCA0ICstDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMzMgKysrDQo+PiDCoCBkcml2
ZXJzL2dwdS9kcm0vZHJtX2dlbV9mcmFtZWJ1ZmZlcl9oZWxwZXIuY8KgIHzCoMKgIDYgKy0NCj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuY8KgwqDCoCB8wqAg
MTAgKy0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX29iamVjdC5jwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgIDE3ICstDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9w
cmltZS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA0ICstDQo+PiDCoCAuLi4v
Y29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jwqDCoCB8wqAgMTEgKy0NCj4+
IMKgIC4uLi9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYyB8wqAgMTEg
Ky0NCj4+IMKgIC4uLi9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12bWFsbG9jLmPCoMKgwqDC
oMKgIHzCoCAxMSArLQ0KPj4gwqAgaW5jbHVkZS9kcm0vZHJtX2dlbS5owqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDMgKw0KPj4gwqAgaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqAgMTQgKy0NCj4+IMKgIDEzIGZpbGVzIGNoYW5nZWQsIDI0MSBpbnNlcnRpb25zKCsp
LCAxNTkgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+PiBpbmRleCAzMmY1NTY0MDg5
MGMuLjY0YTk5MDljY2ZhMiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+IEBAIC01NTIsNyArNTUy
LDYgQEAgc3RydWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdA0KPj4gZG1h
X2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQo+PiDCoMKgwqDCoMKgIGZpbGUtPmZfbW9kZSB8
PSBGTU9ERV9MU0VFSzsNCj4+IMKgwqDCoMKgwqAgZG1hYnVmLT5maWxlID0gZmlsZTsNCj4+IMKg
IC3CoMKgwqAgbXV0ZXhfaW5pdCgmZG1hYnVmLT5sb2NrKTsNCj4gDQo+IFBsZWFzZSBtYWtlIHJl
bW92aW5nIGRtYWJ1Zi0+bG9jayBhIHNlcGFyYXRlIGNoYW5nZS4NCg0KQWxyaWdodA0KDQotLSAN
CkJlc3QgcmVnYXJkcywNCkRtaXRyeQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
