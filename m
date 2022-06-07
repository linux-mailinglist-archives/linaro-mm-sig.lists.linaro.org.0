Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 55305540287
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jun 2022 17:34:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E9103F1AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jun 2022 15:34:07 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id E6A0D3F183
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jun 2022 15:34:01 +0000 (UTC)
Received: from [192.168.2.145] (109-252-138-163.dynamic.spd-mgts.ru [109.252.138.163])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D1DF06601A26;
	Tue,  7 Jun 2022 16:33:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654616040;
	bh=1OHF6wl6ehs/wRC7M/8ORoOFTl8MMQfJ9asXXd+gmRE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aEIUXUrg6wlcmhJWW9Dpq0CD51JiB4Gk+im588kYV1D7mO9ub6yKFVwNOXpZVJ2wM
	 opGS/8b5tqT6A+Qs0IOWZkFwx79fas7g7J+6UFuPd62KDBH4Udp9hStEJ+Rda/cqwS
	 /URMw8PUaP1oUBVHs2Yv4T39A3FIsYQBzAsp8bo0QFJ3mZ0J+ykNSYh0VcCXFnvq3G
	 IOXQEb+tEfv6oiz2y9m8bvih3N0zkAqVp0jlIZFmtAilcr0aTfPA8jEpZx7IeH9ey7
	 VUWWcHduvM3mB3xQmqfjKAk9sBAsGQj/TYmOnhe4+/BKszV79pAEu3Vi5r8hO/X1HA
	 L4he4Zd+PxFGA==
Message-ID: <382d50a2-8e47-5e0f-726b-f077be5b8bc6@collabora.com>
Date: Tue, 7 Jun 2022 18:33:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-18-dmitry.osipenko@collabora.com>
 <CAKMK7uHQ+iMkXtrsCWiJL9X1AM9Xkq-wNmj=hhfnenf0r9717g@mail.gmail.com>
 <2aedbd68-cb4b-157c-1ddb-dbdb9348d2fe@gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <2aedbd68-cb4b-157c-1ddb-dbdb9348d2fe@gmail.com>
Message-ID-Hash: Z7JHHECNI2AHTNORA5EJTSQTHTYQXDIM
X-Message-ID-Hash: Z7JHHECNI2AHTNORA5EJTSQTHTYQXDIM
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Airlie <airlied@linux.ie>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, dri-devel@lists.freedesktop.org, Gurchetan Singh <gurchetansingh@chromium.org>, Thierry Reding <thierry.reding@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Daniel Stone <daniel@fooishbar.org>, Steven Price <steven.price@arm.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, virtualization@lists.linux-foundation.org, linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Daniel Almeida 
 <daniel.almeida@collabora.com>, amd-gfx@lists.freedesktop.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Emil Velikov <emil.l.velikov@gmail.com>, linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, Rob Clark <robdclark@gmail.com>, Qiang Yu <yuq825@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Alex Deucher <alexander.deucher@amd.com>, Robin Murphy <robin.murphy@arm.com>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 17/22] drm/shmem-helper: Add generic memory shrinker
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z7JHHECNI2AHTNORA5EJTSQTHTYQXDIM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi82LzIyIDEzOjU3LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBbSAwNS4wNi4yMiB1
bSAxODo0NyBzY2hyaWViIERhbmllbCBWZXR0ZXI6DQo+PiBPbiBGcmksIDI3IE1heSAyMDIyIGF0
IDAxOjU1LCBEbWl0cnkgT3NpcGVua28NCj4+IDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNv
bT4gd3JvdGU6DQo+Pj4gSW50cm9kdWNlIGEgY29tbW9uIERSTSBTSE1FTSBzaHJpbmtlciBmcmFt
ZXdvcmsgdGhhdCBhbGxvd3MgdG8gcmVkdWNlDQo+Pj4gY29kZSBkdXBsaWNhdGlvbiBhbW9uZyBE
Uk0gZHJpdmVycyBieSByZXBsYWNpbmcgdGhlaXJzIGN1c3RvbSBzaHJpbmtlcg0KPj4+IGltcGxl
bWVudGF0aW9ucyB3aXRoIHRoZSBnZW5lcmljIHNocmlua2VyLg0KPj4+DQo+Pj4gSW4gb3JkZXIg
dG8gc3RhcnQgdXNpbmcgRFJNIFNITUVNIHNocmlua2VyIGRyaXZlcnMgc2hvdWxkOg0KPj4+DQo+
Pj4gMS4gSW1wbGVtZW50IG5ldyBldmljdCgpIHNobWVtIG9iamVjdCBjYWxsYmFjay4NCj4+PiAy
LiBSZWdpc3RlciBzaHJpbmtlciB1c2luZyBkcm1fZ2VtX3NobWVtX3Nocmlua2VyX3JlZ2lzdGVy
KGRybV9kZXZpY2UpLg0KPj4+IDMuIFVzZSBkcm1fZ2VtX3NobWVtX3NldF9wdXJnZWFibGUoc2ht
ZW0pIGFuZCBhbGlrZSBBUEkgZnVuY3Rpb25zIHRvDQo+Pj4gwqDCoMKgIGFjdGl2YXRlIHNocmlu
a2luZyBvZiBzaG1lbSBHRU1zLg0KPj4+DQo+Pj4gVGhpcyBwYXRjaCBpcyBiYXNlZCBvbiBhIGlk
ZWFzIGJvcnJvd2VkIGZyb20gUm9iJ3MgQ2xhcmsgTVNNIHNocmlua2VyLA0KPj4+IFRob21hcycg
WmltbWVybWFubiB2YXJpYW50IG9mIFNITUVNIHNocmlua2VyIGFuZCBJbnRlbCdzIGk5MTUgc2hy
aW5rZXIuDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgQWxtZWlkYSA8ZGFuaWVsLmFs
bWVpZGFAY29sbGFib3JhLmNvbT4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28g
PGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPj4gU28gSSBndWVzcyBJIGdldCBhIHBy
aWNlIGZvciBiZWluZyBibGluZCBzaW5jZSBmb3JldmVyLCBiZWNhdXNlIHRoaXMNCj4+IHRoaW5n
IGV4aXN0ZWQgc2luY2UgYXQgbGVhc3QgMjAxMy4gSSBqdXN0IHN0dW1ibGVkIG92ZXINCj4+IGxs
aXN0X2xydS5baGNdLCBhIHB1cnBvc2UgYnVpbHQgbGlzdCBoZWxwZXIgZm9yIHNocmlua2Vycy4g
SSB0aGluayB3ZQ0KPj4gc2hvdWxkIHRyeSB0byBhZG9wdCB0aGF0IHNvIHRoYXQgb3VyIGdwdSBz
aHJpbmtlcnMgbG9vayBtb3JlIGxpa2UNCj4+IHNocmlua2VycyBmb3IgZXZlcnl0aGluZyBlbHNl
Lg0KPiANCj4gV2hhdCB0aGUgaGVjayBhcmUgeW91IHRhbGtpbmcgYWJvdXQ/DQo+IA0KPiBJIGNh
bid0IGZpbmQgYW55IGxsaXN0X2xydS5baGNdIGluIHRoZSBsaW51eCBrZXJuZWwgc291cmNlcy4N
Cg0KSSB0aGluayBEYW5pZWwgbWVhbnQgdGhpczoNCg0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5j
b20vbGludXgvdjUuMTktcmMxL3NvdXJjZS9pbmNsdWRlL2xpbnV4L2xpc3RfbHJ1LmgNCg0KaHR0
cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMTktcmMxL3NvdXJjZS9tbS9saXN0X2xy
dS5jDQoNCg0KLS0gDQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
