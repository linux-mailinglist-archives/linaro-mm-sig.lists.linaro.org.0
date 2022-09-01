Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EF22E5A9504
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 12:47:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1FC2C479B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 10:47:22 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 265053F93D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 10:47:17 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0F1A86601E0A;
	Thu,  1 Sep 2022 11:47:13 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662029236;
	bh=601JQW1vRODbZW3nXgrYwKwIYLdatGO7bqQS64cjbC8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gvIVOPIBzWZGuD6NygXzh1sohbyafn5m4zlspwSvOk7AqMsde4hQLAfTpZRLGT/Xg
	 tZCPVrVupNm/ycsQg0HqK9JAnd7gStXHbCQs/hnoLYCspCe/qIfCqS3tgCPNdjs6sS
	 6ns55hsCsiGqdQjsubmEAVFEAIr1tWG+6jF0V0SgiLyirr7LqTX8z2z8vQEx25L7xu
	 2xXzrL/ZUdOZB7ntAgCtSMwR/pQbOLBKNp236a2yKz2+EFYW2nQ4gkKtpamcIbbFgE
	 dA/wt53VbNU8A3PjajlEJ4BJ2/tgJLW7ng1Zhlr12NCwAZ4urG6dRbPgfbiRq0WfC9
	 7rk9NN0l3hsgQ==
Message-ID: <532eedc8-b468-4409-1887-8fff264a6486@collabora.com>
Date: Thu, 1 Sep 2022 13:47:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
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
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <8322099f-4ef3-6a5d-4a66-27c4b3329884@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <8322099f-4ef3-6a5d-4a66-27c4b3329884@amd.com>
Message-ID-Hash: MWXLLXBNZFFDOXEWATCFEBJX2Q2KEHIL
X-Message-ID-Hash: MWXLLXBNZFFDOXEWATCFEBJX2Q2KEHIL
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 00/21] Move all drivers to a common dma-buf locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MWXLLXBNZFFDOXEWATCFEBJX2Q2KEHIL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQ2hyaXN0aWFuLA0KDQpPbiA5LzEvMjIgMTA6NDksIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6DQo+IEhpIERtaXRyeSwNCj4gDQo+IEkndmUgZ29uZSBvdmVyIHRoaXMgbXVsdGlwbGUgdGlt
ZXMgbm93IGFuZCB3aGlsZSBpdCBpcyBzdGlsbCBwb3NzaWJsZQ0KPiB0aGF0IHdlIG1pc3NlZCBz
b21ldGhpbmcgSSB0aGluayB0aGF0IHRoaXMgc2hvdWxkIGxhbmQgbm93Lg0KDQpUaGFuayB5b3Ug
dmVyeSBtdWNoIGZvciB0aGUgcmV2aWV3IQ0KDQo+IFRoZSB3aG9sZSB0b3BpYyBpcyBqdXN0IHRv
IGNvbXBsaWNhdGVkIHRoYXQgd2UgY2FuIDEwMCUgc3VyZSBndWFyYW50ZWUNCj4gdGhhdCB0aGVy
ZSBpc24ndCBhbnl0aGluZyB3cm9uZyB3aXRoIHRoZSBsb2NraW5nLCBidXQgbG9ja2RlcCBhbmQg
ZHJpdmVyDQo+IHRlc3Rpbmcgc2hvdWxkIGFsbG93IHVzIHRvIHF1aWNrbHkgZmluZCByZW1haW5p
bmcgaXNzdWVzLg0KDQpBdCBsZWFzdCB0aGUgbW9zdCBwb3B1bGFyIGRyaXZlcnMgc2hvdWxkIGJl
IG9rYXkuIElmIGFueW9uZSB3aWxsIGZpbmQNCmlzc3VlIGludHJvZHVjZWQgYnkgdGhpcyBzZXJp
ZXMsIHRoZW4gaW5kZWVkIHNob3VsZG4ndCBiZSBhIHByb2JsZW0gdG8NCmZpeCBpdCBsYXRlciBv
bi4NCg0KPiBEbyB5b3UgaGF2ZSBjb21taXQgcmlnaHRzIHRvIGRybS1taXNjLW5leHQgb3Igc2hv
dWxkIEkgcHVzaCBpdD8NCg0KSSBnb3QgdGhlIGRybS1taXNjIGNvbW1pdCByaWdodCB0d28gd2Vl
a3MgYWdvLCBoYXZlbid0IHB1c2hlZCBhbnl0aGluZw0KdGhlcmUgeWV0LiBQbGVhc2UgbGV0IG1l
IHRyeSB0byBkbyB0aGUgcHVzaC4gSSdsbCBsZXQgeW91IGtub3cgaWYgYW55DQpraW5kIG9mIGhl
bHAgd2lsbCBiZSBuZWVkZWQgZnJvbSB5b3UuDQoNCkknbGwgd2FpdCBmb3IgbW9yZSBhY2tzL3It
YnMgYW5kIHRoZW4gZG8gdGhlIHB1c2guDQoNCi0tIA0KQmVzdCByZWdhcmRzLA0KRG1pdHJ5DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
