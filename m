Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4025D58F1EF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 19:51:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AA3347994
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 17:51:21 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 5CFA53EC04
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 17:51:18 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 498706601B74;
	Wed, 10 Aug 2022 18:51:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1660153877;
	bh=HM95QO1ihmxrRoGMUr0F+Qz7CNTldAjBH/THyIQ39H4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LuroBJkVtgDZC40RN60BCwqTBeX1/dG7B3mCswEIs9tbyZgWERqJwMdAA0BJvx+Yi
	 sfmwr3ubE7K6qnyM7BsqDuk05nq2HQrELxrzmYVRDx+lBhSdyo2ZaOxmI3ppxm4SQy
	 JpgvY81/2vGBqZLfi+H5BQNWU1B+lBbo7KkAbmKv5hdiWcNpOuK1HNQPT4KYtA+zFQ
	 UvV8cx7ARkn/IWSsghHNowjBwu5Xk2B3DIXPORfcf7W+K3W+AFq08LkAljQxdtgzqr
	 diA+QMg1DK/klgylAOsMOpuy+tLIB55F3Olad8GSY8kTUZgbyjOLSESUoKQl+NadkO
	 Xr+sEl23yXDjQ==
Message-ID: <9bc94ba9-6e82-2d87-8c8e-525f0264eac1@collabora.com>
Date: Wed, 10 Aug 2022 20:51:12 +0300
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
Message-ID-Hash: XGAT7P5QX2ZIGBGFY7E5BEJHV5GV3KY2
X-Message-ID-Hash: XGAT7P5QX2ZIGBGFY7E5BEJHV5GV3KY2
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/5] dma-buf: Move all dma-bufs to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XGAT7P5QX2ZIGBGFY7E5BEJHV5GV3KY2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOC8xMC8yMiAxNDozMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+ICsgKsKgwqDCoMKg
IC0gZG1hX2J1Zl9tb3ZlX25vdGlmeSgpDQo+IA0KPiBUaGlzIG9uZSBpcyBjYWxsZWQgYnkgdGhl
IGV4cG9ydGVyLCBub3QgdGhlIGltcG9ydGVyLg0KDQpHb29kIGNhdGNoLCB0aGFuayB5b3UhDQoN
Ci0tIA0KQmVzdCByZWdhcmRzLA0KRG1pdHJ5DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
