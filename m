Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E23B45B7ACF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:29:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45020489FC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:29:15 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 89DE9479FD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:29:10 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 24E9E660000F;
	Tue, 13 Sep 2022 20:29:06 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097349;
	bh=d4kuxWWfCXJ7AC6vJtgzZbHEhy+iIaxiq8Yot3IE+C4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B2oW8D6CRNYN81gsJ2lSOrjKKtfXitXrYpGKOXJB8uEMYcrJxvJfNoU7nkZfTW1jN
	 wEenarUfR4BoSg0ZOm8xPFGNb3R1VkpdpY9MTTeWK2nId1qwlVrEd+frlS5+liInK8
	 rLW5PsmPUkPGFkzAsErf755QlmuJtGtNkl0ghmACka1saqF4H00J33JwZEjswJ62v+
	 eKe/ZfoDGaGSlVxDzX1hwGMfvN3oqZdKFX3WVO1tK85RGk+4j6evEmkif57Ci21T5D
	 mZK/NTnGNf0UCbyeDngvdi2XwMNIfaQwJ9jxUw/SvJCYasg9ygd+8obbHeRWkgONBz
	 GR/9DIl2xfHHQ==
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
Date: Tue, 13 Sep 2022 22:27:46 +0300
Message-Id: <20220913192757.37727-11-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: CZIIBNEFXBTPBDQXIYWQETIUH4NNDPSO
X-Message-ID-Hash: CZIIBNEFXBTPBDQXIYWQETIUH4NNDPSO
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 10/21] RDMA/umem: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CZIIBNEFXBTPBDQXIYWQETIUH4NNDPSO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBJbmZpbmlCYW5kIGRyaXZlcnMgdG8gdGhlIGNvbW1vbiBkeW5hbWljIGRtYS1idWYg
bG9ja2luZw0KY29udmVudGlvbiBieSBzdGFydGluZyB0byB1c2UgdGhlIHVubG9ja2VkIHZlcnNp
b25zIG9mIGRtYS1idWYgQVBJDQpmdW5jdGlvbnMuDQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3Np
cGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KLS0tDQogZHJpdmVycy9pbmZp
bmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYyB8IDcgKysrKy0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lu
ZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jIGIvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1l
bV9kbWFidWYuYw0KaW5kZXggMDRjMDRlNmQyNGMzLi40M2IyNmJjMTIyODggMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jDQorKysgYi9kcml2ZXJzL2lu
ZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jDQpAQCAtMjYsNyArMjYsOCBAQCBpbnQgaWJfdW1l
bV9kbWFidWZfbWFwX3BhZ2VzKHN0cnVjdCBpYl91bWVtX2RtYWJ1ZiAqdW1lbV9kbWFidWYpDQog
CWlmICh1bWVtX2RtYWJ1Zi0+c2d0KQ0KIAkJZ290byB3YWl0X2ZlbmNlOw0KIA0KLQlzZ3QgPSBk
bWFfYnVmX21hcF9hdHRhY2htZW50KHVtZW1fZG1hYnVmLT5hdHRhY2gsIERNQV9CSURJUkVDVElP
TkFMKTsNCisJc2d0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZCh1bWVtX2RtYWJ1
Zi0+YXR0YWNoLA0KKwkJCQkJICAgICAgRE1BX0JJRElSRUNUSU9OQUwpOw0KIAlpZiAoSVNfRVJS
KHNndCkpDQogCQlyZXR1cm4gUFRSX0VSUihzZ3QpOw0KIA0KQEAgLTEwMiw4ICsxMDMsOCBAQCB2
b2lkIGliX3VtZW1fZG1hYnVmX3VubWFwX3BhZ2VzKHN0cnVjdCBpYl91bWVtX2RtYWJ1ZiAqdW1l
bV9kbWFidWYpDQogCQl1bWVtX2RtYWJ1Zi0+bGFzdF9zZ190cmltID0gMDsNCiAJfQ0KIA0KLQlk
bWFfYnVmX3VubWFwX2F0dGFjaG1lbnQodW1lbV9kbWFidWYtPmF0dGFjaCwgdW1lbV9kbWFidWYt
PnNndCwNCi0JCQkJIERNQV9CSURJUkVDVElPTkFMKTsNCisJZG1hX2J1Zl91bm1hcF9hdHRhY2ht
ZW50X3VubG9ja2VkKHVtZW1fZG1hYnVmLT5hdHRhY2gsIHVtZW1fZG1hYnVmLT5zZ3QsDQorCQkJ
CQkgIERNQV9CSURJUkVDVElPTkFMKTsNCiANCiAJdW1lbV9kbWFidWYtPnNndCA9IE5VTEw7DQog
fQ0KLS0gDQoyLjM3LjMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
