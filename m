Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 867F35B7AE6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:30:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBC2A48A12
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:30:07 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 2F074489FC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:30:04 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9C9DD6601FF1;
	Tue, 13 Sep 2022 20:29:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097403;
	bh=32DT79p8L1K15f6adhGbahiu94xS3zGj4oLq3s2Q/bk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RMDqnedVbqHb7nXTgtvUlemkGPaw5x7Ocza7HJwGwRyBSTSUoRCggPri0A1KoTJfR
	 hl6alpo8d9bxRC3Nl8mOBteOffY+Vgq+A2938CkdExRpcrvoNHA5EDYPTWxR7Dfl+b
	 57IsuZXJkgU+dsV9E9BYBQL3VBYcipoEMavmX+EJfPqfoficwCz+uIuqDVh8R+l9Rk
	 Srhijm0Ziy1k77ovcr3QnJx52fLHMAQ5+EHO2TLApf6k9a1uKpeCz4DbkaLraZP17O
	 YL5KE+sqZx/bRhDyqJzBd/K6NKc9HsD6DTBN/P5oC7axUA7QEOpLF9GNyaDCJeFQl5
	 RioIt2Y0cPdeQ==
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
Date: Tue, 13 Sep 2022 22:27:57 +0300
Message-Id: <20220913192757.37727-22-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: QXOZZJOVES7RX3WFLTLI2EAEFJH5ARZ2
X-Message-ID-Hash: QXOZZJOVES7RX3WFLTLI2EAEFJH5ARZ2
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 21/21] dma-buf: Remove obsoleted internal lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QXOZZJOVES7RX3WFLTLI2EAEFJH5ARZ2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGludGVybmFsIGRtYS1idWYgbG9jayBpc24ndCBuZWVkZWQgYW55bW9yZSBiZWNhdXNlIHRo
ZSB1cGRhdGVkDQpsb2NraW5nIHNwZWNpZmljYXRpb24gY2xhaW1zIHRoYXQgZG1hLWJ1ZiByZXNl
cnZhdGlvbiBtdXN0IGJlIGxvY2tlZA0KYnkgaW1wb3J0ZXJzLCBhbmQgdGh1cywgdGhlIGludGVy
bmFsIGRhdGEgaXMgYWxyZWFkeSBwcm90ZWN0ZWQgYnkgdGhlDQpyZXNlcnZhdGlvbiBsb2NrLiBS
ZW1vdmUgdGhlIG9ic29sZXRlZCBpbnRlcm5hbCBsb2NrLg0KDQpBY2tlZC1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IERtaXRy
eSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTQgKysrKy0tLS0tLS0tLS0NCiBpbmNsdWRlL2xpbnV4L2Rt
YS1idWYuaCAgIHwgIDkgLS0tLS0tLS0tDQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDE5IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IGMzNTliZGJkZjViZS4uNDU0
NjJiOTg4YWVjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTY1Nyw3ICs2NTcsNiBAQCBzdHJ1Y3QgZG1h
X2J1ZiAqZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4
cF9pbmZvKQ0KIA0KIAlkbWFidWYtPmZpbGUgPSBmaWxlOw0KIA0KLQltdXRleF9pbml0KCZkbWFi
dWYtPmxvY2spOw0KIAlJTklUX0xJU1RfSEVBRCgmZG1hYnVmLT5hdHRhY2htZW50cyk7DQogDQog
CW11dGV4X2xvY2soJmRiX2xpc3QubG9jayk7DQpAQCAtMTUwMyw3ICsxNTAyLDcgQEAgRVhQT1JU
X1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9tbWFwLCBETUFfQlVGKTsNCiBpbnQgZG1hX2J1Zl92bWFw
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCiB7DQogCXN0
cnVjdCBpb3N5c19tYXAgcHRyOw0KLQlpbnQgcmV0ID0gMDsNCisJaW50IHJldDsNCiANCiAJaW9z
eXNfbWFwX2NsZWFyKG1hcCk7DQogDQpAQCAtMTUxNSwyOCArMTUxNCwyNSBAQCBpbnQgZG1hX2J1
Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCiAJ
aWYgKCFkbWFidWYtPm9wcy0+dm1hcCkNCiAJCXJldHVybiAtRUlOVkFMOw0KIA0KLQltdXRleF9s
b2NrKCZkbWFidWYtPmxvY2spOw0KIAlpZiAoZG1hYnVmLT52bWFwcGluZ19jb3VudGVyKSB7DQog
CQlkbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIrKzsNCiAJCUJVR19PTihpb3N5c19tYXBfaXNfbnVs
bCgmZG1hYnVmLT52bWFwX3B0cikpOw0KIAkJKm1hcCA9IGRtYWJ1Zi0+dm1hcF9wdHI7DQotCQln
b3RvIG91dF91bmxvY2s7DQorCQlyZXR1cm4gMDsNCiAJfQ0KIA0KIAlCVUdfT04oaW9zeXNfbWFw
X2lzX3NldCgmZG1hYnVmLT52bWFwX3B0cikpOw0KIA0KIAlyZXQgPSBkbWFidWYtPm9wcy0+dm1h
cChkbWFidWYsICZwdHIpOw0KIAlpZiAoV0FSTl9PTl9PTkNFKHJldCkpDQotCQlnb3RvIG91dF91
bmxvY2s7DQorCQlyZXR1cm4gcmV0Ow0KIA0KIAlkbWFidWYtPnZtYXBfcHRyID0gcHRyOw0KIAlk
bWFidWYtPnZtYXBwaW5nX2NvdW50ZXIgPSAxOw0KIA0KIAkqbWFwID0gZG1hYnVmLT52bWFwX3B0
cjsNCiANCi1vdXRfdW5sb2NrOg0KLQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7DQotCXJl
dHVybiByZXQ7DQorCXJldHVybiAwOw0KIH0NCiBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVm
X3ZtYXAsIERNQV9CVUYpOw0KIA0KQEAgLTE1NzgsMTMgKzE1NzQsMTEgQEAgdm9pZCBkbWFfYnVm
X3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQog
CUJVR19PTihkbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIgPT0gMCk7DQogCUJVR19PTighaW9zeXNf
bWFwX2lzX2VxdWFsKCZkbWFidWYtPnZtYXBfcHRyLCBtYXApKTsNCiANCi0JbXV0ZXhfbG9jaygm
ZG1hYnVmLT5sb2NrKTsNCiAJaWYgKC0tZG1hYnVmLT52bWFwcGluZ19jb3VudGVyID09IDApIHsN
CiAJCWlmIChkbWFidWYtPm9wcy0+dnVubWFwKQ0KIAkJCWRtYWJ1Zi0+b3BzLT52dW5tYXAoZG1h
YnVmLCBtYXApOw0KIAkJaW9zeXNfbWFwX2NsZWFyKCZkbWFidWYtPnZtYXBfcHRyKTsNCiAJfQ0K
LQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7DQogfQ0KIEVYUE9SVF9TWU1CT0xfTlNfR1BM
KGRtYV9idWZfdnVubWFwLCBETUFfQlVGKTsNCiANCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQppbmRleCBmMTFiNWJiYzJmMzcu
LjZmYThkNGUyOTcxOSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQorKysg
Yi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KQEAgLTMyNiwxNSArMzI2LDYgQEAgc3RydWN0IGRt
YV9idWYgew0KIAkvKiogQG9wczogZG1hX2J1Zl9vcHMgYXNzb2NpYXRlZCB3aXRoIHRoaXMgYnVm
ZmVyIG9iamVjdC4gKi8NCiAJY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzICpvcHM7DQogDQotCS8q
Kg0KLQkgKiBAbG9jazoNCi0JICoNCi0JICogVXNlZCBpbnRlcm5hbGx5IHRvIHNlcmlhbGl6ZSBs
aXN0IG1hbmlwdWxhdGlvbiwgYXR0YWNoL2RldGFjaCBhbmQNCi0JICogdm1hcC91bm1hcC4gTm90
ZSB0aGF0IGluIG1hbnkgY2FzZXMgdGhpcyBpcyBzdXBlcnNlZWRlZCBieQ0KLQkgKiBkbWFfcmVz
dl9sb2NrKCkgb24gQHJlc3YuDQotCSAqLw0KLQlzdHJ1Y3QgbXV0ZXggbG9jazsNCi0NCiAJLyoq
DQogCSAqIEB2bWFwcGluZ19jb3VudGVyOg0KIAkgKg0KLS0gDQoyLjM3LjMNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
