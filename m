Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6B058F1E9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 19:50:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AA3447991
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 17:50:02 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id A40633EC04
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 17:49:59 +0000 (UTC)
Received: from [192.168.2.145] (unknown [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D62E36601B74;
	Wed, 10 Aug 2022 18:49:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1660153798;
	bh=pDHN4Gq67YC5dkFkOigxG5qVuMpoiLudRbA2dlJSe60=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Dx5zUXAvOHpPG48aUabRl4+njgRCDMJzHPNbYmdwo/RrQaYohgnMXvlpCz6ESzyKs
	 ngzi4Hf9SaHlQm+ddXoAVN+akYwgvtFkSA20LqsgtGm2i+fN5LnbRUM12j66sGvfut
	 405XDLhmATvxt75b00LbDt5bM7vhAV59hvardycmuItJ28RJJs57P9QBEwm4ARIJ4N
	 Xr4LNfrsIBiE9revYn9VBAzA/V28mbhwQUOxsElunyWLFP9ZQpPw69GpUcbMWFAEk2
	 z8VCIqgHR6yyvRNwNJ57VkSQ1xch+gMPcB/ET5a4BOPLluJFgFU8esaLMJAfvVlpuY
	 Juvao4qkUCZIQ==
Message-ID: <562fbacf-3673-ff3c-23a1-124284b4456c@collabora.com>
Date: Wed, 10 Aug 2022 20:49:52 +0300
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
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>
References: <20220725151839.31622-1-dmitry.osipenko@collabora.com>
 <20220725151839.31622-4-dmitry.osipenko@collabora.com>
 <6c8bded9-1809-608f-749a-5ee28b852d32@gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <6c8bded9-1809-608f-749a-5ee28b852d32@gmail.com>
Message-ID-Hash: BFPBILESOEOFKFARBGQCU3RLOVSXIUWV
X-Message-ID-Hash: BFPBILESOEOFKFARBGQCU3RLOVSXIUWV
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/5] dma-buf: Move all dma-bufs to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BFPBILESOEOFKFARBGQCU3RLOVSXIUWV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOC8xMC8yMiAxNDozMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMjUuMDcuMjIg
dW0gMTc6MTggc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+PiBUaGlzIHBhdGNoIG1vdmVzIHRo
ZSBub24tZHluYW1pYyBkbWEtYnVmIHVzZXJzIG92ZXIgdG8gdGhlIGR5bmFtaWMNCj4+IGxvY2tp
bmcgc3BlY2lmaWNhdGlvbi4gVGhlIHN0cmljdCBsb2NraW5nIGNvbnZlbnRpb24gcHJldmVudHMg
ZGVhZGxvY2sNCj4+IHNpdHVhdGlvbiBmb3IgZG1hLWJ1ZiBpbXBvcnRlcnMgYW5kIGV4cG9ydGVy
cy4NCj4+DQo+PiBQcmV2aW91c2x5IHRoZSAidW5sb2NrZWQiIHZlcnNpb25zIG9mIHRoZSBkbWEt
YnVmIEFQSSBmdW5jdGlvbnMgd2VyZW4ndA0KPj4gdGFraW5nIHRoZSByZXNlcnZhdGlvbiBsb2Nr
IGFuZCB0aGlzIHBhdGNoIG1ha2VzIHRoZW0gdG8gdGFrZSB0aGUgbG9jay4NCj4+DQo+PiBJbnRl
bCBhbmQgQU1EIEdQVSBkcml2ZXJzIGFscmVhZHkgd2VyZSBtYXBwaW5nIGltcG9ydGVkIGRtYS1i
dWZzIHVuZGVyDQo+PiB0aGUgaGVsZCBsb2NrLCBoZW5jZSB0aGUgImxvY2tlZCIgdmFyaWFudCBv
ZiB0aGUgZnVuY3Rpb25zIGFyZSBhZGRlZA0KPj4gZm9yIHRoZW0gYW5kIHRoZSBkcml2ZXJzIGFy
ZSB1cGRhdGVkIHRvIHVzZSB0aGUgImxvY2tlZCIgdmVyc2lvbnMuDQo+IA0KPiBJbiBnZW5lcmFs
ICJZZXMsIHBsZWFzZSIsIGJ1dCB0aGF0IHdvbid0IGJlIHRoYXQgZWFzeS4NCj4gDQo+IFlvdSBu
b3Qgb25seSBuZWVkIHRvIGNoYW5nZSBhbWRncHUgYW5kIGk5MTUsIGJ1dCBhbGwgZHJpdmVycw0K
PiBpbXBsZW1lbnRpbmcgdGhlIG1hcF9kbWFfYnVmKCksIHVubWFwX2RtYV9idWYoKSBjYWxsYmFj
a3MuDQo+IA0KPiBBdWRpdGluZyBhbGwgdGhhdCBjb2RlIGlzIGEgaHVnZSBidW5jaCBvZiB3b3Jr
Lg0KSG0sIG5laXRoZXIgb2YgZHJpdmVycyB0YWtlIHRoZSByZXN2IGxvY2sgaW4gbWFwX2RtYV9i
dWYvdW5tYXBfZG1hX2J1Zi4NCkl0J3MgZWFzeSB0byBhdWRpdCB0aGVtIGFsbCBhbmQgSSBkaWQg
aXQuIFNvIGVpdGhlciBJJ20gbWlzc2luZw0Kc29tZXRoaW5nIG9yIGl0IGRvZXNuJ3QgdGFrZSBt
dWNoIHRpbWUgdG8gY2hlY2sgdGhlbSBhbGwuIEFtIEkgcmVhbGx5DQptaXNzaW5nIHNvbWV0aGlu
Zz8NCg0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L0EvaWRlbnQvbWFw
X2RtYV9idWYNCg0KLS0gDQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
