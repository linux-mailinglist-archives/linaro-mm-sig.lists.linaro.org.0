Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A276565F71
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Jul 2022 00:38:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EEAB3F4AC
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Jul 2022 22:38:48 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 8850E3EC27
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Jul 2022 22:38:43 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-232.nat.spd-mgts.ru [109.252.119.232])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AEB39660199B;
	Mon,  4 Jul 2022 23:38:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656974322;
	bh=VRx6udoXxSq0dZb7twvztDgIdzhjYZHCPJJRsM4dVqQ=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=KwvHGSsu2bJpgBrKrgPDv83tWaOdVmGMPR8xlDdCPLhk9xw7Ud+ZimwXxR2cr6Bmp
	 u3TauupmhYOD/BkPc+8ksFovTJTbAcBpLSx299Nu/F9NLYkyvIwA7hazvWNS1Ox8iE
	 oWyqhlB87oYwccFQeaom4XZ5SLTzFf4krAuEcymZX+yHDFAVa73And9pvwQQQaqVG0
	 uVbLJZX3cSps+jjvkOrgPRu1fS1he6n4GOm4SrJjDL0Yuyb5LZkxCAnhCGLYb/AJAq
	 YXka1J9BEeBH6cDYDCae5AG19iXh8wYiVOrUyqTONSTh6YULDs1xUwy4JXtD8NNKBR
	 zdbCJFJEnjwYQ==
Message-ID: <fd026c44-b067-3537-3020-4ae8f24137ad@collabora.com>
Date: Tue, 5 Jul 2022 01:38:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-15-dmitry.osipenko@collabora.com>
 <0a02a31d-a256-4ca4-0e35-e2ea1868a8ae@amd.com>
 <e6e17c52-43c2-064b-500e-325bb3ba3b2c@collabora.com>
 <02e7946b-34ca-b48e-1ba6-e7b63740a2d9@amd.com>
 <7372dd1b-06f7-5336-4738-15f9b4d4d4b3@collabora.com>
 <90fe74f6-a622-e4ae-3004-6f1bc1790247@shipmail.org>
 <0d88cf7c-61e5-d7a8-a6ba-83388114a1fa@collabora.com>
In-Reply-To: <0d88cf7c-61e5-d7a8-a6ba-83388114a1fa@collabora.com>
Message-ID-Hash: JDMSN2VCQXW6ASIGV5FJLIATEPHDIWMU
X-Message-ID-Hash: JDMSN2VCQXW6ASIGV5FJLIATEPHDIWMU
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com, linux-media@vger.kernel.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com
 >, Rob Clark <robdclark@gmail.com>, Emil Velikov <emil.l.velikov@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 14/22] dma-buf: Introduce new locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JDMSN2VCQXW6ASIGV5FJLIATEPHDIWMU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNy8xLzIyIDEzOjQzLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+IE9uIDYvMjkvMjIgMDA6
MjYsIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkgd3JvdGU6DQo+PiBPbiA1LzMwLzIyIDE1OjU3
LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+Pj4gT24gNS8zMC8yMiAxNjo0MSwgQ2hyaXN0aWFu
IEvDtm5pZyB3cm90ZToNCj4+Pj4gSGkgRG1pdHJ5LA0KPj4+Pg0KPj4+PiBBbSAzMC4wNS4yMiB1
bSAxNToyNiBzY2hyaWViIERtaXRyeSBPc2lwZW5rbzoNCj4+Pj4+IEhlbGxvIENocmlzdGlhbiwN
Cj4+Pj4+DQo+Pj4+PiBPbiA1LzMwLzIyIDA5OjUwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4+Pj4+IEhpIERtaXRyeSwNCj4+Pj4+Pg0KPj4+Pj4+IEZpcnN0IG9mIGFsbCBwbGVhc2Ugc2Vw
YXJhdGUgb3V0IHRoaXMgcGF0Y2ggZnJvbSB0aGUgcmVzdCBvZiB0aGUNCj4+Pj4+PiBzZXJpZXMs
DQo+Pj4+Pj4gc2luY2UgdGhpcyBpcyBhIGNvbXBsZXggc2VwYXJhdGUgc3RydWN0dXJhbCBjaGFu
Z2UuDQo+Pj4+PiBJIGFzc3VtZSBhbGwgdGhlIHBhdGNoZXMgd2lsbCBnbyB2aWEgdGhlIERSTSB0
cmVlIGluIHRoZSBlbmQgc2luY2UgdGhlDQo+Pj4+PiByZXN0IG9mIHRoZSBEUk0gcGF0Y2hlcyBp
biB0aGlzIHNlcmllcyBkZXBlbmQgb24gdGhpcyBkbWEtYnVmIGNoYW5nZS4NCj4+Pj4+IEJ1dCBJ
IHNlZSB0aGF0IHNlcGFyYXRpb24gbWF5IGVhc2UgcmV2aWV3aW5nIG9mIHRoZSBkbWEtYnVmIGNo
YW5nZXMsIHNvDQo+Pj4+PiBsZXQncyB0cnkgaXQuDQo+Pj4+IFRoYXQgc291bmRzIGxpa2UgeW91
IGFyZSB1bmRlcmVzdGltYXRpbmcgYSBiaXQgaG93IG11Y2ggdHJvdWJsZSB0aGlzDQo+Pj4+IHdp
bGwgYmUuDQo+Pj4+DQo+Pj4+Pj4gSSBoYXZlIHRyaWVkIHRoaXMgYmVmb3JlIGFuZCBmYWlsZWQg
YmVjYXVzZSBjYXRjaGluZyBhbGwgdGhlIGxvY2tzIGluDQo+Pj4+Pj4gdGhlIHJpZ2h0IGNvZGUg
cGF0aHMgYXJlIHZlcnkgdHJpY2t5LiBTbyBleHBlY3Qgc29tZSBmYWxsb3V0IGZyb20gdGhpcw0K
Pj4+Pj4+IGFuZCBtYWtlIHN1cmUgdGhlIGtlcm5lbCB0ZXN0IHJvYm90IGFuZCBDSSBzeXN0ZW1z
IGFyZSBjbGVhbi4NCj4+Pj4+IFN1cmUsIEknbGwgZml4IHVwIGFsbCB0aGUgcmVwb3J0ZWQgdGhp
bmdzIGluIHRoZSBuZXh0IGl0ZXJhdGlvbi4NCj4+Pj4+DQo+Pj4+PiBCVFcsIGhhdmUgeW91IGV2
ZXIgcG9zdGVkIHlvdXJzIHZlcnNpb24gb2YgdGhlIHBhdGNoPyBXaWxsIGJlIGdyZWF0IGlmDQo+
Pj4+PiB3ZSBjb3VsZCBjb21wYXJlIHRoZSBjaGFuZ2VkIGNvZGUgcGF0aHMuDQo+Pj4+IE5vLCBJ
IG5ldmVyIGV2ZW4gZmluaXNoZWQgY3JlYXRpbmcgaXQgYWZ0ZXIgcmVhbGl6aW5nIGhvdyBtdWNo
IHdvcmsgaXQNCj4+Pj4gd291bGQgYmUuDQo+Pj4+DQo+Pj4+Pj4+IFRoaXMgcGF0Y2ggaW50cm9k
dWNlcyBuZXcgbG9ja2luZyBjb252ZW50aW9uIGZvciBkbWEtYnVmIHVzZXJzLiBGcm9tDQo+Pj4+
Pj4+IG5vdw0KPj4+Pj4+PiBvbiBhbGwgZG1hLWJ1ZiBpbXBvcnRlcnMgYXJlIHJlc3BvbnNpYmxl
IGZvciBob2xkaW5nIGRtYS1idWYNCj4+Pj4+Pj4gcmVzZXJ2YXRpb24NCj4+Pj4+Pj4gbG9jayBh
cm91bmQgb3BlcmF0aW9ucyBwZXJmb3JtZWQgb3ZlciBkbWEtYnVmcy4NCj4+Pj4+Pj4NCj4+Pj4+
Pj4gVGhpcyBwYXRjaCBpbXBsZW1lbnRzIHRoZSBuZXcgZG1hLWJ1ZiBsb2NraW5nIGNvbnZlbnRp
b24gYnk6DQo+Pj4+Pj4+DQo+Pj4+Pj4+IMKgwqDCoMKgIDEuIE1ha2luZyBkbWEtYnVmIEFQSSBm
dW5jdGlvbnMgdG8gdGFrZSB0aGUgcmVzZXJ2YXRpb24gbG9jay4NCj4+Pj4+Pj4NCj4+Pj4+Pj4g
wqDCoMKgwqAgMi4gQWRkaW5nIG5ldyBsb2NrZWQgdmFyaWFudHMgb2YgdGhlIGRtYS1idWYgQVBJ
IGZ1bmN0aW9ucyBmb3INCj4+Pj4+Pj4gZHJpdmVycw0KPj4+Pj4+PiDCoMKgwqDCoMKgwqDCoCB0
aGF0IG5lZWQgdG8gbWFuYWdlIGltcG9ydGVkIGRtYS1idWZzIHVuZGVyIHRoZSBoZWxkIGxvY2su
DQo+Pj4+Pj4gSW5zdGVhZCBvZiBhZGRpbmcgbmV3IGxvY2tlZCB2YXJpYW50cyBwbGVhc2UgbWFy
ayBhbGwgdmFyaWFudHMgd2hpY2gNCj4+Pj4+PiBleHBlY3QgdG8gYmUgY2FsbGVkIHdpdGhvdXQg
YSBsb2NrIHdpdGggYW4gX3VubG9ja2VkIHBvc3RmaXguDQo+Pj4+Pj4NCj4+Pj4+PiBUaGlzIHNo
b3VsZCBtYWtlIGl0IGVhc2llciB0byByZW1vdmUgdGhvc2UgaW4gYSBmb2xsb3cgdXAgcGF0Y2gg
c2V0DQo+Pj4+Pj4gYW5kDQo+Pj4+Pj4gdGhlbiBmdWxseSBtb3ZlIHRoZSBsb2NraW5nIGludG8g
dGhlIGltcG9ydGVyLg0KPj4+Pj4gRG8gd2UgcmVhbGx5IHdhbnQgdG8gbW92ZSBhbGwgdGhlIGxv
Y2tzIHRvIHRoZSBpbXBvcnRlcnM/IFNlZW1zIHRoZQ0KPj4+Pj4gbWFqb3JpdHkgb2YgZHJpdmVy
cyBzaG91bGQgYmUgaGFwcHkgd2l0aCB0aGUgZG1hLWJ1ZiBoZWxwZXJzIGhhbmRsaW5nDQo+Pj4+
PiB0aGUgbG9ja2luZyBmb3IgdGhlbS4NCj4+Pj4gWWVzLCBJIGNsZWFybHkgdGhpbmsgc28uDQo+
Pj4+DQo+Pj4+Pj4+IMKgwqDCoMKgIDMuIENvbnZlcnRpbmcgYWxsIGRyaXZlcnMgdG8gdGhlIG5l
dyBsb2NraW5nIHNjaGVtZS4NCj4+Pj4+PiBJIGhhdmUgc3Ryb25nIGRvdWJ0cyB0aGF0IHlvdSBn
b3QgYWxsIG9mIHRoZW0uIEF0IGxlYXN0IHJhZGVvbiBhbmQNCj4+Pj4+PiBub3V2ZWF1IHNob3Vs
ZCBncmFiIHRoZSByZXNlcnZhdGlvbiBsb2NrIGluIHRoZWlyIC0+YXR0YWNoIGNhbGxiYWNrcw0K
Pj4+Pj4+IHNvbWVob3cuDQo+Pj4+PiBSYWRlb24gYW5kIE5vdXZlYXUgdXNlIGdlbV9wcmltZV9p
bXBvcnRfc2dfdGFibGUoKSBhbmQgdGhleSB0YWtlIHJlc3YNCj4+Pj4+IGxvY2sgYWxyZWFkeSwg
c2VlbXMgdGhleSBzaG91bGQgYmUgb2theSAoPykNCj4+Pj4gWW91IGFyZSBsb29raW5nIGF0IHRo
ZSB3cm9uZyBzaWRlLiBZb3UgbmVlZCB0byBmaXggdGhlIGV4cG9ydCBjb2RlIHBhdGgsDQo+Pj4+
IG5vdCB0aGUgaW1wb3J0IG9uZXMuDQo+Pj4+DQo+Pj4+IFNlZSBmb3IgZXhhbXBsZSBhdHRhY2gg
b24gcmFkZW9uIHdvcmtzIGxpa2UgdGhpcw0KPj4+PiBkcm1fZ2VtX21hcF9hdHRhY2gtPmRybV9n
ZW1fcGluLT5yYWRlb25fZ2VtX3ByaW1lX3Bpbi0+cmFkZW9uX2JvX3Jlc2VydmUtPnR0bV9ib19y
ZXNlcnZlLT5kbWFfcmVzdl9sb2NrLg0KPj4+Pg0KPj4+IFllYWgsIEkgd2FzIGxvb2tpbmcgYXQg
dGhlIGJvdGggc2lkZXMsIGJ1dCBtaXNzZWQgdGhpcyBvbmUuDQo+PiBBbHNvIGk5MTUgd2lsbCBy
dW4gaW50byB0cm91YmxlIHdpdGggYXR0YWNoLiBJbiBwYXJ0aWN1bGFyIHNpbmNlIGk5MTUNCj4+
IHN0YXJ0cyBhIGZ1bGwgd3cgdHJhbnNhY3Rpb24gaW4gaXRzIGF0dGFjaCBjYWxsYmFjayB0byBi
ZSBhYmxlIHRvIGxvY2sNCj4+IG90aGVyIG9iamVjdHMgaWYgbWlncmF0aW9uIGlzIG5lZWRlZC4g
SSB0aGluayBpOTE1IENJIHdvdWxkIGNhdGNoIHRoaXMNCj4+IGluIGEgc2VsZnRlc3QuDQo+IFNl
ZW1zIGl0IGluZGVlZCBpdCBzaG91bGQgZGVhZGxvY2suIEJ1dCBpOTE1IHNlbGZ0ZXN0cyBhcHBh
cmVudGx5DQo+IHNob3VsZCd2ZSBjYXVnaHQgaXQgYW5kIHRoZXkgZGlkbid0LCBJJ2xsIHJlLWNo
ZWNrIHdoYXQgaGFwcGVuZWQuDQo+IA0KDQpUaGUgaTkxNSBzZWxmdGVzdHMgdXNlIGEgc2VwYXJh
dGUgbW9ja19kbWFidWZfb3BzLiBUaGF0J3Mgd2h5IGl0IHdvcmtzDQpmb3IgdGhlIHNlbGZ0ZXN0
cywgaS5lLiB0aGVyZSBpcyBubyBkZWFkbG9jay4NCg0KVGhvbWFzLCB3b3VsZCBpOTE1IENJIHJ1
biBhIGRpZmZlcmVudCBzZXQgb2YgdGVzdHMgb3Igd2lsbCBpdCBiZSB0aGUNCmRlZmF1bHQgaTkx
NSBzZWxmdGVzdHMgcmFuIGJ5IElHVD8NCg0KLS0gDQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
