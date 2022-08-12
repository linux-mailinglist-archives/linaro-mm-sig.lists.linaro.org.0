Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9AD59104A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Aug 2022 13:46:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FF9B3F50E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Aug 2022 11:46:29 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 57FAE3F1E7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Aug 2022 11:46:27 +0000 (UTC)
Received: from [192.168.2.145] (unknown [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BD19E66016F2;
	Fri, 12 Aug 2022 12:46:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1660304786;
	bh=C5rdDWAQ0gULbYpYsWO6A2mmdZ/uxYEqrEknr4MoOf8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=f3cXPfNXtZHtoSYE1rfxtQ30MUhUVhGrG/NArO1c7kQB8/Xy+FmlqaaOTXT5gVdlP
	 JQXrT9UtGLSc+oBaf/E/efq95t8eHa3wW8rsdseitQlUvtaI4DwUh/ptuZTZ+7D4oa
	 7gYb8ygLDMwAttTQiJt/HYS3piyRQe36Z1IpIZJqOFl16YT77Eqw1UGF1vppI4t/Vf
	 GlTMr5So6lTOFJQj6bSYwIN6RamDBXBlbOMkDkPHaJHbuvpX0ALyNVMapf4xI3a4LC
	 uDEbP9wEVI4gkRbHJNZkFWXDO04u0wVdnPFCF2dEImetIe9dBjI0qKFkC2Wjrvs/O9
	 MpZiQvPIhyRKg==
Message-ID: <b7bc8c98-d613-a50d-454c-06ca76d707e1@collabora.com>
Date: Fri, 12 Aug 2022 14:46:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20220725151839.31622-1-dmitry.osipenko@collabora.com>
 <20220725151839.31622-4-dmitry.osipenko@collabora.com>
 <6c8bded9-1809-608f-749a-5ee28b852d32@gmail.com>
 <562fbacf-3673-ff3c-23a1-124284b4456c@collabora.com>
 <87724722-b9f3-a016-c25c-4b0415f2c37f@amd.com>
 <0863cafa-c252-e194-3d23-ef640941e36e@collabora.com>
 <93484389-1f79-b364-700f-60769fc5f8a5@gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <93484389-1f79-b364-700f-60769fc5f8a5@gmail.com>
Message-ID-Hash: 7USU4HKZAZ7QHOCZ4SQF7BD7KHANLUT2
X-Message-ID-Hash: 7USU4HKZAZ7QHOCZ4SQF7BD7KHANLUT2
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thier
 ry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/5] dma-buf: Move all dma-bufs to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7USU4HKZAZ7QHOCZ4SQF7BD7KHANLUT2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOC8xMi8yMiAxNDozNCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gDQo+IA0KPiBBbSAx
MC4wOC4yMiB1bSAyMDo1MyBzY2hyaWViIERtaXRyeSBPc2lwZW5rbzoNCj4+IE9uIDgvMTAvMjIg
MjE6MjUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gQW0gMTAuMDguMjIgdW0gMTk6NDkg
c2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+Pj4+IE9uIDgvMTAvMjIgMTQ6MzAsIENocmlzdGlh
biBLw7ZuaWcgd3JvdGU6DQo+Pj4+PiBBbSAyNS4wNy4yMiB1bSAxNzoxOCBzY2hyaWViIERtaXRy
eSBPc2lwZW5rbzoNCj4+Pj4+PiBUaGlzIHBhdGNoIG1vdmVzIHRoZSBub24tZHluYW1pYyBkbWEt
YnVmIHVzZXJzIG92ZXIgdG8gdGhlIGR5bmFtaWMNCj4+Pj4+PiBsb2NraW5nIHNwZWNpZmljYXRp
b24uIFRoZSBzdHJpY3QgbG9ja2luZyBjb252ZW50aW9uIHByZXZlbnRzDQo+Pj4+Pj4gZGVhZGxv
Y2sNCj4+Pj4+PiBzaXR1YXRpb24gZm9yIGRtYS1idWYgaW1wb3J0ZXJzIGFuZCBleHBvcnRlcnMu
DQo+Pj4+Pj4NCj4+Pj4+PiBQcmV2aW91c2x5IHRoZSAidW5sb2NrZWQiIHZlcnNpb25zIG9mIHRo
ZSBkbWEtYnVmIEFQSSBmdW5jdGlvbnMNCj4+Pj4+PiB3ZXJlbid0DQo+Pj4+Pj4gdGFraW5nIHRo
ZSByZXNlcnZhdGlvbiBsb2NrIGFuZCB0aGlzIHBhdGNoIG1ha2VzIHRoZW0gdG8gdGFrZSB0aGUN
Cj4+Pj4+PiBsb2NrLg0KPj4+Pj4+DQo+Pj4+Pj4gSW50ZWwgYW5kIEFNRCBHUFUgZHJpdmVycyBh
bHJlYWR5IHdlcmUgbWFwcGluZyBpbXBvcnRlZCBkbWEtYnVmcw0KPj4+Pj4+IHVuZGVyDQo+Pj4+
Pj4gdGhlIGhlbGQgbG9jaywgaGVuY2UgdGhlICJsb2NrZWQiIHZhcmlhbnQgb2YgdGhlIGZ1bmN0
aW9ucyBhcmUgYWRkZWQNCj4+Pj4+PiBmb3IgdGhlbSBhbmQgdGhlIGRyaXZlcnMgYXJlIHVwZGF0
ZWQgdG8gdXNlIHRoZSAibG9ja2VkIiB2ZXJzaW9ucy4NCj4+Pj4+IEluIGdlbmVyYWwgIlllcywg
cGxlYXNlIiwgYnV0IHRoYXQgd29uJ3QgYmUgdGhhdCBlYXN5Lg0KPj4+Pj4NCj4+Pj4+IFlvdSBu
b3Qgb25seSBuZWVkIHRvIGNoYW5nZSBhbWRncHUgYW5kIGk5MTUsIGJ1dCBhbGwgZHJpdmVycw0K
Pj4+Pj4gaW1wbGVtZW50aW5nIHRoZSBtYXBfZG1hX2J1ZigpLCB1bm1hcF9kbWFfYnVmKCkgY2Fs
bGJhY2tzLg0KPj4+Pj4NCj4+Pj4+IEF1ZGl0aW5nIGFsbCB0aGF0IGNvZGUgaXMgYSBodWdlIGJ1
bmNoIG9mIHdvcmsuDQo+Pj4+IEhtLCBuZWl0aGVyIG9mIGRyaXZlcnMgdGFrZSB0aGUgcmVzdiBs
b2NrIGluIG1hcF9kbWFfYnVmL3VubWFwX2RtYV9idWYuDQo+Pj4+IEl0J3MgZWFzeSB0byBhdWRp
dCB0aGVtIGFsbCBhbmQgSSBkaWQgaXQuIFNvIGVpdGhlciBJJ20gbWlzc2luZw0KPj4+PiBzb21l
dGhpbmcgb3IgaXQgZG9lc24ndCB0YWtlIG11Y2ggdGltZSB0byBjaGVjayB0aGVtIGFsbC4gQW0g
SSByZWFsbHkNCj4+Pj4gbWlzc2luZyBzb21ldGhpbmc/DQo+Pj4gT2ssIHNvIHRoaXMgaXMgb25s
eSBjaGFuZ2luZyBtYXAvdW5tYXAgbm93Pw0KPj4gSXQgYWxzbyB2bWFwL3Z1bm1hcCBhbmQgYXR0
YWNoL2RldGFjaDogSW4gdGhlIHByZXZpb3VzIHBhdGNoIEkgYWRkZWQgdGhlDQo+PiBfdW5sb2Nr
ZWQgcG9zdGZpeCB0byB0aGUgZnVuYyBuYW1lcyBhbmQgaW4gdGhpcyBwYXRjaCBJIG1hZGUgdGhl
bSBhbGwgdG8NCj4+IGFjdHVhbGx5IHRha2UgdGhlIGxvY2suDQo+IA0KPiANCj4gVGFrZSB5b3Vy
IHBhdGNoICJbUEFUQ0ggdjIgMi81XSBkcm0vZ2VtOiBUYWtlIHJlc2VydmF0aW9uIGxvY2sgZm9y
DQo+IHZtYXAvdnVubWFwIG9wZXJhdGlvbnMiIGFzIGEgYmx1ZXByaW50IG9uIGhvdyB0byBhcHBy
b2FjaCBpdC4NCj4gDQo+IEUuZy4gb25lIGNhbGxiYWNrIGF0IGEgdGltZSBhbmQgdGhlbiBkb2N1
bWVudCB0aGUgcmVzdWx0IGluIHRoZSBlbmQuDQoNClllYWgsIEknbGwgZG8gaXQgZm9yIHYzLiBJ
J20gdmFndWVseSByZWNhbGxpbmcgdGhhdCB0aGVyZSB3YXMgYSBwcm9ibGVtDQp3aGVuIEkgd2Fu
dGVkIHRvIHNwbGl0IHRoaXMgcGF0Y2ggaW4gdGhlIHBhc3QsIGJ1dCBkb24ndCByZW1lbWJlciB3
aGF0DQppdCB3YXMuLiBtYXliZSB0aGF0IHByb2JsZW0gaXMgZ29uZSBub3csIHdpbGwgc2VlIDop
DQoNCi0tIA0KQmVzdCByZWdhcmRzLA0KRG1pdHJ5DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
