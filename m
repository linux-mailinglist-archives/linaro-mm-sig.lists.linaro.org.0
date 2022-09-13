Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2AC5B7AC9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:28:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC7E8479F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:28:55 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 0B68B47968
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:28:52 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6DCD16602002;
	Tue, 13 Sep 2022 20:28:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097331;
	bh=m+yK6hweORMKddLbkWqGBQrZksoRwv5WWfK8rjH+dQc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kPuzmBuRmrocMieeIcB1i45dvbdSj4C/qcFMe2H5NZTFXOftPN0auG+PbB2VKWBQN
	 y3+QrpKtpN38mO1+WKI3MUppbB6jcA8eF8bVs1tlxeDpgXF3Zl5X5KmGQfE6v6GfNd
	 Hik0gJtXwUYP/JAX/M8PP4mn9l3CIbB/c9jCsepv250yX4yjHkDI4i9mSyQkT2g5ZO
	 sKdjXruYvnLSJn82eT4IxC5PqXWn7agjm08D/6TjcWK4fp2mxggx5ud47Egduh9+u8
	 hQ20stOymMJ7/hxd3fA67VJM0J9GnQN0UvICkp11wveldcyzg0y8x970DK4Et/LmIT
	 nPxqbBuhOEsvA==
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
Date: Tue, 13 Sep 2022 22:27:42 +0300
Message-Id: <20220913192757.37727-7-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: BLJ3ZVPO2BP52DKJFFR7RRJYKWD7NWF3
X-Message-ID-Hash: BLJ3ZVPO2BP52DKJFFR7RRJYKWD7NWF3
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 06/21] drm/i915: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BLJ3ZVPO2BP52DKJFFR7RRJYKWD7NWF3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBpOTE1IGRyaXZlciB0byB0aGUgY29tbW9uIGR5bmFtaWMgZG1hLWJ1ZiBsb2NraW5n
IGNvbnZlbnRpb24NCmJ5IHN0YXJ0aW5nIHRvIHVzZSB0aGUgdW5sb2NrZWQgdmVyc2lvbnMgb2Yg
ZG1hLWJ1ZiBBUEkgZnVuY3Rpb25zDQphbmQgaGFuZGxpbmcgY2FzZXMgd2hlcmUgaW1wb3J0ZXIg
bm93IGhvbGRzIHRoZSByZXNlcnZhdGlvbiBsb2NrLg0KDQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9z
aXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyAgICAgICB8ICAyICstDQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgICAgIHwgMTQgKysrKysrKysrKysr
KysNCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMgfCAx
NiArKysrKysrKy0tLS0tLS0tDQogMyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA5
IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2RtYWJ1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1
Zi5jDQppbmRleCBmNTA2MmQwYzYzMzMuLjA3ZWVlMWMwOWFhZiAxMDA2NDQNCi0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYw0KKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jDQpAQCAtNzIsNyArNzIsNyBAQCBzdGF0aWMg
aW50IGk5MTVfZ2VtX2RtYWJ1Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLA0KIAlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zl90b19vYmooZG1hX2J1Zik7DQog
CXZvaWQgKnZhZGRyOw0KIA0KLQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9j
a2VkKG9iaiwgSTkxNV9NQVBfV0IpOw0KKwl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFw
KG9iaiwgSTkxNV9NQVBfV0IpOw0KIAlpZiAoSVNfRVJSKHZhZGRyKSkNCiAJCXJldHVybiBQVFJf
RVJSKHZhZGRyKTsNCiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmMNCmluZGV4IDg1NDgyYTA0ZDE1OC4uN2NhYjg5NjE4YmFkIDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMNCkBAIC0yOTAsNyArMjkwLDIxIEBAIHZvaWQg
X19pOTE1X2dlbV9vYmplY3RfcGFnZXNfZmluaShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQ0KIAlfX2k5MTVfZ2VtX29iamVjdF9mcmVlX21tYXBzKG9iaik7DQogDQogCWF0b21pY19z
ZXQoJm9iai0+bW0ucGFnZXNfcGluX2NvdW50LCAwKTsNCisNCisJLyoNCisJICogZG1hX2J1Zl91
bm1hcF9hdHRhY2htZW50KCkgcmVxdWlyZXMgcmVzZXJ2YXRpb24gdG8gYmUNCisJICogbG9ja2Vk
LiBUaGUgaW1wb3J0ZWQgR0VNIHNob3VsZG4ndCBzaGFyZSByZXNlcnZhdGlvbiBsb2NrDQorCSAq
IGFuZCB0dG1fYm9fY2xlYW51cF9tZW10eXBlX3VzZSgpIHNob3VsZG4ndCBiZSBpbnZva2VkIGZv
cg0KKwkgKiBkbWEtYnVmLCBzbyBpdCdzIHNhZmUgdG8gdGFrZSB0aGUgbG9jay4NCisJICovDQor
CWlmIChvYmotPmJhc2UuaW1wb3J0X2F0dGFjaCkNCisJCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9i
aiwgTlVMTCk7DQorDQogCV9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhvYmopOw0KKw0KKwlp
ZiAob2JqLT5iYXNlLmltcG9ydF9hdHRhY2gpDQorCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9i
aik7DQorDQogCUdFTV9CVUdfT04oaTkxNV9nZW1fb2JqZWN0X2hhc19wYWdlcyhvYmopKTsNCiB9
DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fZG1hYnVmLmMNCmluZGV4IDUxZWQ4MjRiMDIwYy4uZjJmM2NmYWQ4MDdiIDEwMDY0NA0KLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYuYw0K
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYu
Yw0KQEAgLTIxMyw3ICsyMTMsNyBAQCBzdGF0aWMgaW50IGlndF9kbWFidWZfaW1wb3J0X3NhbWVf
ZHJpdmVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KIAkJZ290byBvdXRfaW1wb3J0
Ow0KIAl9DQogDQotCXN0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudChpbXBvcnRfYXR0YWNoLCBE
TUFfQklESVJFQ1RJT05BTCk7DQorCXN0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tl
ZChpbXBvcnRfYXR0YWNoLCBETUFfQklESVJFQ1RJT05BTCk7DQogCWlmIChJU19FUlIoc3QpKSB7
DQogCQllcnIgPSBQVFJfRVJSKHN0KTsNCiAJCWdvdG8gb3V0X2RldGFjaDsNCkBAIC0yMjYsNyAr
MjI2LDcgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVmX2ltcG9ydF9zYW1lX2RyaXZlcihzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCiAJCXRpbWVvdXQgPSAtRVRJTUU7DQogCX0NCiAJZXJy
ID0gdGltZW91dCA+IDAgPyAwIDogdGltZW91dDsNCi0JZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50
KGltcG9ydF9hdHRhY2gsIHN0LCBETUFfQklESVJFQ1RJT05BTCk7DQorCWRtYV9idWZfdW5tYXBf
YXR0YWNobWVudF91bmxvY2tlZChpbXBvcnRfYXR0YWNoLCBzdCwgRE1BX0JJRElSRUNUSU9OQUwp
Ow0KIG91dF9kZXRhY2g6DQogCWRtYV9idWZfZGV0YWNoKGRtYWJ1ZiwgaW1wb3J0X2F0dGFjaCk7
DQogb3V0X2ltcG9ydDoNCkBAIC0yOTYsNyArMjk2LDcgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVm
X2ltcG9ydCh2b2lkICphcmcpDQogCQlnb3RvIG91dF9vYmo7DQogCX0NCiANCi0JZXJyID0gZG1h
X2J1Zl92bWFwKGRtYWJ1ZiwgJm1hcCk7DQorCWVyciA9IGRtYV9idWZfdm1hcF91bmxvY2tlZChk
bWFidWYsICZtYXApOw0KIAlkbWFfbWFwID0gZXJyID8gTlVMTCA6IG1hcC52YWRkcjsNCiAJaWYg
KCFkbWFfbWFwKSB7DQogCQlwcl9lcnIoImRtYV9idWZfdm1hcCBmYWlsZWRcbiIpOw0KQEAgLTMz
Nyw3ICszMzcsNyBAQCBzdGF0aWMgaW50IGlndF9kbWFidWZfaW1wb3J0KHZvaWQgKmFyZykNCiAN
CiAJZXJyID0gMDsNCiBvdXRfZG1hX21hcDoNCi0JZG1hX2J1Zl92dW5tYXAoZG1hYnVmLCAmbWFw
KTsNCisJZG1hX2J1Zl92dW5tYXBfdW5sb2NrZWQoZG1hYnVmLCAmbWFwKTsNCiBvdXRfb2JqOg0K
IAlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7DQogb3V0X2RtYWJ1ZjoNCkBAIC0zNTgsNyArMzU4
LDcgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVmX2ltcG9ydF9vd25lcnNoaXAodm9pZCAqYXJnKQ0K
IAlpZiAoSVNfRVJSKGRtYWJ1ZikpDQogCQlyZXR1cm4gUFRSX0VSUihkbWFidWYpOw0KIA0KLQll
cnIgPSBkbWFfYnVmX3ZtYXAoZG1hYnVmLCAmbWFwKTsNCisJZXJyID0gZG1hX2J1Zl92bWFwX3Vu
bG9ja2VkKGRtYWJ1ZiwgJm1hcCk7DQogCXB0ciA9IGVyciA/IE5VTEwgOiBtYXAudmFkZHI7DQog
CWlmICghcHRyKSB7DQogCQlwcl9lcnIoImRtYV9idWZfdm1hcCBmYWlsZWRcbiIpOw0KQEAgLTM2
Nyw3ICszNjcsNyBAQCBzdGF0aWMgaW50IGlndF9kbWFidWZfaW1wb3J0X293bmVyc2hpcCh2b2lk
ICphcmcpDQogCX0NCiANCiAJbWVtc2V0KHB0ciwgMHhjNSwgUEFHRV9TSVpFKTsNCi0JZG1hX2J1
Zl92dW5tYXAoZG1hYnVmLCAmbWFwKTsNCisJZG1hX2J1Zl92dW5tYXBfdW5sb2NrZWQoZG1hYnVm
LCAmbWFwKTsNCiANCiAJb2JqID0gdG9faW50ZWxfYm8oaTkxNV9nZW1fcHJpbWVfaW1wb3J0KCZp
OTE1LT5kcm0sIGRtYWJ1ZikpOw0KIAlpZiAoSVNfRVJSKG9iaikpIHsNCkBAIC00MTgsNyArNDE4
LDcgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVmX2V4cG9ydF92bWFwKHZvaWQgKmFyZykNCiAJfQ0K
IAlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7DQogDQotCWVyciA9IGRtYV9idWZfdm1hcChkbWFi
dWYsICZtYXApOw0KKwllcnIgPSBkbWFfYnVmX3ZtYXBfdW5sb2NrZWQoZG1hYnVmLCAmbWFwKTsN
CiAJcHRyID0gZXJyID8gTlVMTCA6IG1hcC52YWRkcjsNCiAJaWYgKCFwdHIpIHsNCiAJCXByX2Vy
cigiZG1hX2J1Zl92bWFwIGZhaWxlZFxuIik7DQpAQCAtNDM1LDcgKzQzNSw3IEBAIHN0YXRpYyBp
bnQgaWd0X2RtYWJ1Zl9leHBvcnRfdm1hcCh2b2lkICphcmcpDQogCW1lbXNldChwdHIsIDB4YzUs
IGRtYWJ1Zi0+c2l6ZSk7DQogDQogCWVyciA9IDA7DQotCWRtYV9idWZfdnVubWFwKGRtYWJ1Ziwg
Jm1hcCk7DQorCWRtYV9idWZfdnVubWFwX3VubG9ja2VkKGRtYWJ1ZiwgJm1hcCk7DQogb3V0Og0K
IAlkbWFfYnVmX3B1dChkbWFidWYpOw0KIAlyZXR1cm4gZXJyOw0KLS0gDQoyLjM3LjMNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
