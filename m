Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B6C575E95
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Jul 2022 11:31:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E0C847ECA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Jul 2022 09:31:48 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 278FF3ED19
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jul 2022 09:31:44 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-232.nat.spd-mgts.ru [109.252.119.232])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5E29866019A8;
	Fri, 15 Jul 2022 10:31:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657877502;
	bh=TWozmotf+sQwVdZNmn/06hy3nh6q5FZqNEZs2dkO0Xk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ook7FofVSeFu98kzfOW85/NvaqQGYfMlcoQwPYYEf1uM53lI6XEH5r2IfZA5D39YG
	 One7B2e3W/fD6MOKVR32mTsfa0F578/RBAeOo8/NotqqijY2/uTpe7t/xwykgVmrPt
	 +yavsYIuw7Eo6wCEeOig0kwF08jXCpcKDfKm5bf62mOtUtod68wxkNTfoOrBO2Vigr
	 jGGe7rNPzl9ucoy/rbaMWflBdm9lL83CRfG8Nh3DuvKmTusiGl7vlEzXHo8BAnin4h
	 VmXp2fNABeQZzflx/SPBJ4BlHwecx5t82vj5mWQ6sz+HwjJh2hV8TUmAiQ8RvCIpsC
	 jI9dt2CUipsuA==
Message-ID: <5c98385b-f154-0128-6f4b-5fac89529201@collabora.com>
Date: Fri, 15 Jul 2022 12:31:37 +0300
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
 <20220715005244.42198-2-dmitry.osipenko@collabora.com>
 <43c06f53-bad8-af99-0b57-781dbf716768@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <43c06f53-bad8-af99-0b57-781dbf716768@amd.com>
Message-ID-Hash: 3PB64WFOAXUKEJBFVZOSN7QIYDW3K6SJ
X-Message-ID-Hash: 3PB64WFOAXUKEJBFVZOSN7QIYDW3K6SJ
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 1/6] dma-buf: Add _unlocked postfix to function names
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3PB64WFOAXUKEJBFVZOSN7QIYDW3K6SJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNy8xNS8yMiAxMDoxOSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IC1zdHJ1Y3Qgc2df
dGFibGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudA0K
Pj4gKmF0dGFjaCwNCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBl
bnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pDQo+PiArc3RydWN0IHNnX3RhYmxlICoN
Cj4+ICtkbWFfYnVmX21hcF9hdHRhY2htZW50X3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmF0dGFjaCwNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSBk
bWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQ0KPiANCj4gVGhlIGxvY2tpbmcgc3RhdGUgb2Yg
bWFwcGluZyBhbmQgdW5tYXBwaW5nIG9wZXJhdGlvbnMgZGVwZW5kIG9uIGlmIHRoZQ0KPiBhdHRh
Y2htZW50IGlzIGR5bmFtaWMgb3Igbm90Lg0KPiANCj4gU28gdGhpcyBoZXJlIGlzIG5vdCBhIGdv
b2QgaWRlYSBhdCBhbGwgc2luY2UgaXQgc3VnZ2VzdHMgdGhhdCB0aGUNCj4gZnVuY3Rpb24gaXMg
YWx3YXlzIGNhbGxlZCB3aXRob3V0IGhvbGRpbmcgdGhlIGxvY2suDQoNCkkgaGFkIHRoZSBzYW1l
IHRob3VnaHQgd2hpbGUgd2FzIHdvcmtpbmcgb24gdGhpcyBwYXRjaCBhbmQgaW5pdGlhbGx5IHdh
cw0KdGhpbmtpbmcgYWJvdXQgYWRkaW5nIGFuICJ1bmxvY2tlZCIgYWxpYXMgdG8gZG1hX2J1Zl9t
YXBfYXR0YWNobWVudCgpLg0KSW4gdGhlIGVuZCBJIGRlY2lkZWQgdGhhdCBpdCB3aWxsIGNyZWF0
ZSBldmVuIG1vcmUgY29uZnVzaW9uIGFuZCBpdCdzDQpzaW1wbGVyIGp1c3QgdG8gcmVuYW1lIHRo
aXMgZnVuYyBoZXJlIHNpbmNlIHRoZXJlIGFyZSBvbmx5IHR3byBkcml2ZXJzDQp1c2luZyB0aGUg
ZHluYW1pYyBtYXBwaW5nLg0KDQpEbyB5b3UgaGF2ZSBzdWdnZXN0aW9ucyBob3cgdG8gaW1wcm92
ZSBpdD8NCg0KLS0gDQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
