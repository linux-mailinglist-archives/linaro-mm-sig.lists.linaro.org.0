Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F9F5B7AD9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:29:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7750948A03
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:29:34 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 8E45147F5B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:29:29 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8F04D6602006;
	Tue, 13 Sep 2022 20:29:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097368;
	bh=5SoJM0KT/OL453Vzox/c0XL1yLlnHbzjEdmJRs0v2dc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IathQob+2aDJsLGehErebjP7wDY1+IUArjCJFM5Rux0wGuv3Y3hfD8B6t7nYyE8l4
	 PfKukMjO11LsvtWQmlkvzuI62QV5R7XKRC700F/r2GRsioTeh19iHjIE/piANkuOiK
	 5lFO1EE/NvzukYIIh1Fjj/NQaIpNdc8s2lX95YpN81Ie/o+Hu2r3bYJhMbC/7o2ryU
	 jKOe2CVg6oFsZhIayeTI9dlNE7nm22mbCcSqgcGt8DjtsT8m8Kl56gJoEB0Dsim/Jn
	 GNPUtfjD1aVQLnvR4VgjHvoQh1nUKOKxzHz518XStycS2CrrueWADkRjls47Xb7BeQ
	 2lAN9tZZyp3Pg==
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: David Airlie <airlied@linux.ie>,
	Gerd Hoffmann <kraxel@redhat.com>,
	Gurchetan Singh <gurchetansingh@chromium.org>,
	Chia-I Wu <olvaffe@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Gert Wollny <gert.wollny@collabora.com>,
	Gustavo Padovan <gustavo.padovan@collabora.com>,
	Daniel Stone <daniel@fooishbar.org>,
	Tomeu Vizoso <tomeu.vizoso@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Clark <robdclark@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Tomasz Figa <tfiga@chromium.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas_os@shipmail.org>,
	Qiang Yu <yuq825@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Amol Maheshwari <amahesh@qti.qualcomm.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Juergen Gross <jgross@suse.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
	Tomi Valkeinen <tomba@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Lucas Stach <l.stach@pengutronix.de>,
	Christian Gmeiner <christian.gmeiner@gmail.com>,
	Ruhl Michael J <michael.j.ruhl@intel.com>
Date: Tue, 13 Sep 2022 22:27:50 +0300
Message-Id: <20220913192757.37727-15-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: 4C6QTMSWAN3BFBKT4AKM3E75PK4I4HI5
X-Message-ID-Hash: 4C6QTMSWAN3BFBKT4AKM3E75PK4I4HI5
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 14/21] media: tegra-vde: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4C6QTMSWAN3BFBKT4AKM3E75PK4I4HI5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBUZWdyYSB2aWRlbyBkZWNvZGVyIGRyaXZlciB0byB0aGUgY29tbW9uIGR5bmFtaWMg
ZG1hLWJ1Zg0KbG9ja2luZyBjb252ZW50aW9uIGJ5IHN0YXJ0aW5nIHRvIHVzZSB0aGUgdW5sb2Nr
ZWQgdmVyc2lvbnMgb2YgZG1hLWJ1Zg0KQVBJIGZ1bmN0aW9ucy4NCg0KQWNrZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IERt
aXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNhY2hlLmMgfCA2ICsr
Ky0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQoN
CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1h
YnVmLWNhY2hlLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1h
YnVmLWNhY2hlLmMNCmluZGV4IDY5YzM0NjE0ODA3MC4uMWM1Yjk0OTg5YWVjIDEwMDY0NA0KLS0t
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9udmlkaWEvdGVncmEtdmRlL2RtYWJ1Zi1jYWNoZS5j
DQorKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNh
Y2hlLmMNCkBAIC0zOCw3ICszOCw3IEBAIHN0YXRpYyB2b2lkIHRlZ3JhX3ZkZV9yZWxlYXNlX2Vu
dHJ5KHN0cnVjdCB0ZWdyYV92ZGVfY2FjaGVfZW50cnkgKmVudHJ5KQ0KIAlpZiAoZW50cnktPnZk
ZS0+ZG9tYWluKQ0KIAkJdGVncmFfdmRlX2lvbW11X3VubWFwKGVudHJ5LT52ZGUsIGVudHJ5LT5p
b3ZhKTsNCiANCi0JZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KGVudHJ5LT5hLCBlbnRyeS0+c2d0
LCBlbnRyeS0+ZG1hX2Rpcik7DQorCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZChl
bnRyeS0+YSwgZW50cnktPnNndCwgZW50cnktPmRtYV9kaXIpOw0KIAlkbWFfYnVmX2RldGFjaChk
bWFidWYsIGVudHJ5LT5hKTsNCiAJZG1hX2J1Zl9wdXQoZG1hYnVmKTsNCiANCkBAIC0xMDIsNyAr
MTAyLDcgQEAgaW50IHRlZ3JhX3ZkZV9kbWFidWZfY2FjaGVfbWFwKHN0cnVjdCB0ZWdyYV92ZGUg
KnZkZSwNCiAJCWdvdG8gZXJyX3VubG9jazsNCiAJfQ0KIA0KLQlzZ3QgPSBkbWFfYnVmX21hcF9h
dHRhY2htZW50KGF0dGFjaG1lbnQsIGRtYV9kaXIpOw0KKwlzZ3QgPSBkbWFfYnVmX21hcF9hdHRh
Y2htZW50X3VubG9ja2VkKGF0dGFjaG1lbnQsIGRtYV9kaXIpOw0KIAlpZiAoSVNfRVJSKHNndCkp
IHsNCiAJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCBkbWFidWZzIHNnX3RhYmxlXG4iKTsN
CiAJCWVyciA9IFBUUl9FUlIoc2d0KTsNCkBAIC0xNTIsNyArMTUyLDcgQEAgaW50IHRlZ3JhX3Zk
ZV9kbWFidWZfY2FjaGVfbWFwKHN0cnVjdCB0ZWdyYV92ZGUgKnZkZSwNCiBlcnJfZnJlZToNCiAJ
a2ZyZWUoZW50cnkpOw0KIGVycl91bm1hcDoNCi0JZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KGF0
dGFjaG1lbnQsIHNndCwgZG1hX2Rpcik7DQorCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxv
Y2tlZChhdHRhY2htZW50LCBzZ3QsIGRtYV9kaXIpOw0KIGVycl9kZXRhY2g6DQogCWRtYV9idWZf
ZGV0YWNoKGRtYWJ1ZiwgYXR0YWNobWVudCk7DQogZXJyX3VubG9jazoNCi0tIA0KMi4zNy4zDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
