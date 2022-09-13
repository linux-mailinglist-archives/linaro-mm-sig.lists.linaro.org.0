Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E64EB5B7AC8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:28:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4779B479F0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:28:51 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id ED87E47ED9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:28:47 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AD63C6601FF3;
	Tue, 13 Sep 2022 20:28:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097327;
	bh=Ov9ZX8VHbwHToZzjcmjiNJ0jjSTvXmYhNQje1p3xR4A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B15XfPU8GnbNZTWw0ofEzetFD2TYK/dvVkvVuf4RuLMJpUHzPq/xgl6TXqcXjgt0Z
	 XTFDGo84L236dwoYZCRiv+vafDk8fgnojykiEOav8siMVIpL3ZUyhmHKVEU3S369PC
	 fV+/WR+9JVBJ7aA3hL994exGkNH5NumoWi9vcQD2f2u0DvXjS6R+giO3AFTqYJbu3V
	 lssn1YpIxPNNjrZYB2Ibbv0e6G8W9EYd0RiV7B/MGqIwRhmPCBWlBsumRO3nucaEnC
	 LJvB2vQrwHK5lgZJlZaSRClarOX8DtCbe1o9VWo93d+i2U94FxF6QraolQnNxupDGZ
	 kRHWjffst9Dww==
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
Date: Tue, 13 Sep 2022 22:27:41 +0300
Message-Id: <20220913192757.37727-6-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: ZBVND3VNEN2MQJM4LAPSR4QLOVBPR4CA
X-Message-ID-Hash: ZBVND3VNEN2MQJM4LAPSR4QLOVBPR4CA
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 05/21] drm/armada: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZBVND3VNEN2MQJM4LAPSR4QLOVBPR4CA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBBcm1hZGEgZHJpdmVyIHRvIHRoZSBjb21tb24gZHluYW1pYyBkbWEtYnVmIGxvY2tp
bmcgY29udmVudGlvbg0KYnkgc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9ucyBv
ZiBkbWEtYnVmIEFQSSBmdW5jdGlvbnMuDQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28g
PGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2Fy
bWFkYS9hcm1hZGFfZ2VtLmMgfCA4ICsrKystLS0tDQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
cm1hZGEvYXJtYWRhX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMN
CmluZGV4IDU0MzAyNjVhZDQ1OC4uMjZkMTAwNjVkNTM0IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hcm1hZGEv
YXJtYWRhX2dlbS5jDQpAQCAtNjYsOCArNjYsOCBAQCB2b2lkIGFybWFkYV9nZW1fZnJlZV9vYmpl
Y3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQogCWlmIChkb2JqLT5vYmouaW1wb3J0X2F0
dGFjaCkgew0KIAkJLyogV2Ugb25seSBldmVyIGRpc3BsYXkgaW1wb3J0ZWQgZGF0YSAqLw0KIAkJ
aWYgKGRvYmotPnNndCkNCi0JCQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoZG9iai0+b2JqLmlt
cG9ydF9hdHRhY2gsDQotCQkJCQkJIGRvYmotPnNndCwgRE1BX1RPX0RFVklDRSk7DQorCQkJZG1h
X2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkKGRvYmotPm9iai5pbXBvcnRfYXR0YWNoLA0K
KwkJCQkJCQkgIGRvYmotPnNndCwgRE1BX1RPX0RFVklDRSk7DQogCQlkcm1fcHJpbWVfZ2VtX2Rl
c3Ryb3koJmRvYmotPm9iaiwgTlVMTCk7DQogCX0NCiANCkBAIC01MzksOCArNTM5LDggQEAgaW50
IGFybWFkYV9nZW1fbWFwX2ltcG9ydChzdHJ1Y3QgYXJtYWRhX2dlbV9vYmplY3QgKmRvYmopDQog
ew0KIAlpbnQgcmV0Ow0KIA0KLQlkb2JqLT5zZ3QgPSBkbWFfYnVmX21hcF9hdHRhY2htZW50KGRv
YmotPm9iai5pbXBvcnRfYXR0YWNoLA0KLQkJCQkJICAgRE1BX1RPX0RFVklDRSk7DQorCWRvYmot
PnNndCA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoZG9iai0+b2JqLmltcG9ydF9h
dHRhY2gsDQorCQkJCQkJICAgIERNQV9UT19ERVZJQ0UpOw0KIAlpZiAoSVNfRVJSKGRvYmotPnNn
dCkpIHsNCiAJCXJldCA9IFBUUl9FUlIoZG9iai0+c2d0KTsNCiAJCWRvYmotPnNndCA9IE5VTEw7
DQotLSANCjIuMzcuMw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
