Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D9C5B7AD5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:29:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ABFC347F5B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:29:24 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 17376479F7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:29:20 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2D9E26602002;
	Tue, 13 Sep 2022 20:29:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097359;
	bh=pCSmC3VPtA7CuegS38L6lty54ziB9yvQFvfJf8KB1ik=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YarCkar20kAqG3+1VkRt6R2uAtYr8CG7tRx1a1T8+zB7m/UTSW7eAZK5DQJypvU/D
	 08tcY9EiseRoSDRJuc3NNPXvBx95BTJwZyUMZHpqIFxYCBCyV4TouAOh/URDQn5gmt
	 Q1A9b54CsLGVqE+GX3GjFOD1MM4NCMpU3VJ6UmBRk4EWvtJn/v9SwrDH0usOWMH9WY
	 Zo4wHy881VyHL8qtdjbahxbfNQhmB95faFl8YXOgeDzWs/hqbMKX/OvXlZS3d29tw7
	 o5+gD9Kt/8jyM2rVqpOaIQAYhaSldsRGqeH2E5IjD5fcs7zqBFu8glSW/TqTlBv9Pc
	 MjDH0B5C7kQDg==
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
Date: Tue, 13 Sep 2022 22:27:48 +0300
Message-Id: <20220913192757.37727-13-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: NOCNOEP2372HP62XKV3GHLVBVWKSZZHB
X-Message-ID-Hash: NOCNOEP2372HP62XKV3GHLVBVWKSZZHB
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 12/21] xen/gntdev: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NOCNOEP2372HP62XKV3GHLVBVWKSZZHB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBnbnRkZXYgZHJpdmVyIHRvIHRoZSBjb21tb24gZHluYW1pYyBkbWEtYnVmIGxvY2tp
bmcgY29udmVudGlvbg0KYnkgc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9ucyBv
ZiBkbWEtYnVmIEFQSSBmdW5jdGlvbnMuDQoNCkFja2VkLWJ5OiBKdWVyZ2VuIEdyb3NzIDxqZ3Jv
c3NAc3VzZS5jb20+DQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVu
a29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMveGVuL2dudGRldi1kbWFidWYuYyB8IDgg
KysrKy0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1Zi5jIGIvZHJpdmVycy94
ZW4vZ250ZGV2LWRtYWJ1Zi5jDQppbmRleCA5NDBlNWU5ZThhNTQuLjQ0NDBlNjI2Yjc5NyAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMveGVuL2dudGRldi1kbWFidWYuYw0KKysrIGIvZHJpdmVycy94ZW4v
Z250ZGV2LWRtYWJ1Zi5jDQpAQCAtNjAwLDcgKzYwMCw3IEBAIGRtYWJ1Zl9pbXBfdG9fcmVmcyhz
dHJ1Y3QgZ250ZGV2X2RtYWJ1Zl9wcml2ICpwcml2LCBzdHJ1Y3QgZGV2aWNlICpkZXYsDQogDQog
CWdudGRldl9kbWFidWYtPnUuaW1wLmF0dGFjaCA9IGF0dGFjaDsNCiANCi0Jc2d0ID0gZG1hX2J1
Zl9tYXBfYXR0YWNobWVudChhdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsNCisJc2d0ID0gZG1h
X2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZChhdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsN
CiAJaWYgKElTX0VSUihzZ3QpKSB7DQogCQlyZXQgPSBFUlJfQ0FTVChzZ3QpOw0KIAkJZ290byBm
YWlsX2RldGFjaDsNCkBAIC02NTgsNyArNjU4LDcgQEAgZG1hYnVmX2ltcF90b19yZWZzKHN0cnVj
dCBnbnRkZXZfZG1hYnVmX3ByaXYgKnByaXYsIHN0cnVjdCBkZXZpY2UgKmRldiwNCiBmYWlsX2Vu
ZF9hY2Nlc3M6DQogCWRtYWJ1Zl9pbXBfZW5kX2ZvcmVpZ25fYWNjZXNzKGdudGRldl9kbWFidWYt
PnUuaW1wLnJlZnMsIGNvdW50KTsNCiBmYWlsX3VubWFwOg0KLQlkbWFfYnVmX3VubWFwX2F0dGFj
aG1lbnQoYXR0YWNoLCBzZ3QsIERNQV9CSURJUkVDVElPTkFMKTsNCisJZG1hX2J1Zl91bm1hcF9h
dHRhY2htZW50X3VubG9ja2VkKGF0dGFjaCwgc2d0LCBETUFfQklESVJFQ1RJT05BTCk7DQogZmFp
bF9kZXRhY2g6DQogCWRtYV9idWZfZGV0YWNoKGRtYV9idWYsIGF0dGFjaCk7DQogZmFpbF9mcmVl
X29iajoNCkBAIC03MDgsOCArNzA4LDggQEAgc3RhdGljIGludCBkbWFidWZfaW1wX3JlbGVhc2Uo
c3RydWN0IGdudGRldl9kbWFidWZfcHJpdiAqcHJpdiwgdTMyIGZkKQ0KIAlhdHRhY2ggPSBnbnRk
ZXZfZG1hYnVmLT51LmltcC5hdHRhY2g7DQogDQogCWlmIChnbnRkZXZfZG1hYnVmLT51LmltcC5z
Z3QpDQotCQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoYXR0YWNoLCBnbnRkZXZfZG1hYnVmLT51
LmltcC5zZ3QsDQotCQkJCQkgRE1BX0JJRElSRUNUSU9OQUwpOw0KKwkJZG1hX2J1Zl91bm1hcF9h
dHRhY2htZW50X3VubG9ja2VkKGF0dGFjaCwgZ250ZGV2X2RtYWJ1Zi0+dS5pbXAuc2d0LA0KKwkJ
CQkJCSAgRE1BX0JJRElSRUNUSU9OQUwpOw0KIAlkbWFfYnVmID0gYXR0YWNoLT5kbWFidWY7DQog
CWRtYV9idWZfZGV0YWNoKGF0dGFjaC0+ZG1hYnVmLCBhdHRhY2gpOw0KIAlkbWFfYnVmX3B1dChk
bWFfYnVmKTsNCi0tIA0KMi4zNy4zDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
