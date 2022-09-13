Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 358BE5B7ACA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:29:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87E0C479F6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:29:00 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id ACFC0479F9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:28:56 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 941196601FF1;
	Tue, 13 Sep 2022 20:28:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097335;
	bh=GhuscwhnN1rEaoy5OISonfRJMlLjonYkZBtE9HRenG4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=e7O7IO4hHqM9ne0+uW4mQQdsoAeA5Y34GHqM0vZ6rOKdaR84/ZtKmEANO7PsS6iFX
	 EyT1RK314RWI8+gojsZtt/lm/keSe6rlO7I4Zdsg788qGrHitRWVVhiGUEYBrbP0P+
	 Lt9i70SMU06+8SocOB1odlwrRi4a4g/LOdXeeuF/IhNEekB9PExpsP/f+cZZk6pwEo
	 +dI5ZKiSN9ol0eaQrvwD5Tl3k+ZgVg23JDk7IOrMzTLGsH4rM9hB2SCfm96viJ4CKZ
	 uKKXtyqqbv4VbtP5XbMFnJ78sjCv9wauzRqejkMTXxZ1J0rywYa2azQTgdn/CvxwgI
	 sT0wbBM46pa9w==
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
Date: Tue, 13 Sep 2022 22:27:43 +0300
Message-Id: <20220913192757.37727-8-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: P2XYCFDKYSKUKZ6LI46ESKMIHIOVHXZ3
X-Message-ID-Hash: P2XYCFDKYSKUKZ6LI46ESKMIHIOVHXZ3
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 07/21] drm/omapdrm: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P2XYCFDKYSKUKZ6LI46ESKMIHIOVHXZ3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBPTUFQIERSTSBkcml2ZXIgdG8gdGhlIGNvbW1vbiBkeW5hbWljIGRtYS1idWYgbG9j
a2luZyBjb252ZW50aW9uDQpieSBzdGFydGluZyB0byB1c2UgdGhlIHVubG9ja2VkIHZlcnNpb25z
IG9mIGRtYS1idWYgQVBJIGZ1bmN0aW9ucy4NCg0KQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5r
byA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0v
b21hcGRybS9vbWFwX2dlbV9kbWFidWYuYyB8IDQgKystLQ0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vb21hcGRybS9vbWFwX2dlbV9kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29t
YXBfZ2VtX2RtYWJ1Zi5jDQppbmRleCAzOTNmODJlMjY5MjcuLjhlMTk0ZGJjOTUwNiAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtX2RtYWJ1Zi5jDQorKysgYi9k
cml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbV9kbWFidWYuYw0KQEAgLTEyNSw3ICsxMjUs
NyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9tYXBfZ2VtX3ByaW1lX2ltcG9ydChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LA0KIA0KIAlnZXRfZG1hX2J1ZihkbWFfYnVmKTsNCiANCi0Jc2d0ID0g
ZG1hX2J1Zl9tYXBfYXR0YWNobWVudChhdHRhY2gsIERNQV9UT19ERVZJQ0UpOw0KKwlzZ3QgPSBk
bWFfYnVmX21hcF9hdHRhY2htZW50X3VubG9ja2VkKGF0dGFjaCwgRE1BX1RPX0RFVklDRSk7DQog
CWlmIChJU19FUlIoc2d0KSkgew0KIAkJcmV0ID0gUFRSX0VSUihzZ3QpOw0KIAkJZ290byBmYWls
X2RldGFjaDsNCkBAIC0xNDIsNyArMTQyLDcgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvbWFw
X2dlbV9wcmltZV9pbXBvcnQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCiAJcmV0dXJuIG9iajsN
CiANCiBmYWlsX3VubWFwOg0KLQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoYXR0YWNoLCBzZ3Qs
IERNQV9UT19ERVZJQ0UpOw0KKwlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoYXR0
YWNoLCBzZ3QsIERNQV9UT19ERVZJQ0UpOw0KIGZhaWxfZGV0YWNoOg0KIAlkbWFfYnVmX2RldGFj
aChkbWFfYnVmLCBhdHRhY2gpOw0KIAlkbWFfYnVmX3B1dChkbWFfYnVmKTsNCi0tIA0KMi4zNy4z
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
