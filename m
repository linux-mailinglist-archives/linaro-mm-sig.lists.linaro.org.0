Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 943395B7AC7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:28:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA1C5479F8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:28:45 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 368F2479F9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:28:43 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 480A96601FF1;
	Tue, 13 Sep 2022 20:28:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097322;
	bh=vtgIgDv24F+bOPzavSTa17EGTZ6cPGJ1uuGf9DgvGeI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ahg2vvm1YSQpeyHaDzgof8WB5gOc4DtDTw7cpp4EPoZo5BVd2D84WQuQd6HQGo1/X
	 jfB/vmf7GbPhadcQ/XeySLeVSOApzaQFkXWYFLeim4PeUvJWDaHmoVDAU/QsTjR6Cw
	 KbyGVoVJuPX5WdDbLQ6WykRUdOII7eXC9wd8lwwFMFauh67vS7x/9viop98rndafxD
	 w70FchgGH6ETC9W7OyCrQyvI1gdmwl3eLFx3Tsb6gSJKgi+cbJKr+pWktXTk0rxVW9
	 x9eXamy2mc8LgYckYqdVXReS0xsejqra36YWpXpuhPujSZFKJviIimYWwqAnKDFZuD
	 kt8Bz/F1GkKxw==
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
Date: Tue, 13 Sep 2022 22:27:40 +0300
Message-Id: <20220913192757.37727-5-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: 4A7OBWYXJM3AJ7GOYFJTX7U3U4S5LHT4
X-Message-ID-Hash: 4A7OBWYXJM3AJ7GOYFJTX7U3U4S5LHT4
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 04/21] drm/prime: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4A7OBWYXJM3AJ7GOYFJTX7U3U4S5LHT4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBEUk0gcHJpbWUgY29yZSB0byB0aGUgY29tbW9uIGR5bmFtaWMgZG1hLWJ1ZiBsb2Nr
aW5nIGNvbnZlbnRpb24NCmJ5IHN0YXJ0aW5nIHRvIHVzZSB0aGUgdW5sb2NrZWQgdmVyc2lvbnMg
b2YgZG1hLWJ1ZiBBUEkgZnVuY3Rpb25zLg0KDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBl
bmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2Ry
bS9kcm1fcHJpbWUuYyB8IDYgKysrLS0tDQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJp
bWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYw0KaW5kZXggZWIwOWU4NjA0NGM2Li4y
MGUxMDlhODAyYWUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMNCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYw0KQEAgLTk0MCw3ICs5NDAsNyBAQCBzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKmRybV9nZW1fcHJpbWVfaW1wb3J0X2RldihzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LA0KIA0KIAlnZXRfZG1hX2J1ZihkbWFfYnVmKTsNCiANCi0Jc2d0ID0gZG1hX2J1
Zl9tYXBfYXR0YWNobWVudChhdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsNCisJc2d0ID0gZG1h
X2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZChhdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsN
CiAJaWYgKElTX0VSUihzZ3QpKSB7DQogCQlyZXQgPSBQVFJfRVJSKHNndCk7DQogCQlnb3RvIGZh
aWxfZGV0YWNoOw0KQEAgLTk1OCw3ICs5NTgsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmRy
bV9nZW1fcHJpbWVfaW1wb3J0X2RldihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KIAlyZXR1cm4g
b2JqOw0KIA0KIGZhaWxfdW5tYXA6DQotCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudChhdHRhY2gs
IHNndCwgRE1BX0JJRElSRUNUSU9OQUwpOw0KKwlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5s
b2NrZWQoYXR0YWNoLCBzZ3QsIERNQV9CSURJUkVDVElPTkFMKTsNCiBmYWlsX2RldGFjaDoNCiAJ
ZG1hX2J1Zl9kZXRhY2goZG1hX2J1ZiwgYXR0YWNoKTsNCiAJZG1hX2J1Zl9wdXQoZG1hX2J1Zik7
DQpAQCAtMTA1Niw3ICsxMDU2LDcgQEAgdm9pZCBkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3koc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBzZ190YWJsZSAqc2cpDQogDQogCWF0dGFjaCA9
IG9iai0+aW1wb3J0X2F0dGFjaDsNCiAJaWYgKHNnKQ0KLQkJZG1hX2J1Zl91bm1hcF9hdHRhY2ht
ZW50KGF0dGFjaCwgc2csIERNQV9CSURJUkVDVElPTkFMKTsNCisJCWRtYV9idWZfdW5tYXBfYXR0
YWNobWVudF91bmxvY2tlZChhdHRhY2gsIHNnLCBETUFfQklESVJFQ1RJT05BTCk7DQogCWRtYV9i
dWYgPSBhdHRhY2gtPmRtYWJ1ZjsNCiAJZG1hX2J1Zl9kZXRhY2goYXR0YWNoLT5kbWFidWYsIGF0
dGFjaCk7DQogCS8qIHJlbW92ZSB0aGUgcmVmZXJlbmNlICovDQotLSANCjIuMzcuMw0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
