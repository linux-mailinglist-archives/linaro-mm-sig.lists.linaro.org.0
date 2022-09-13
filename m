Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0995B7AD0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:29:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 00C3A489FE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:29:20 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 9F501479F2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:29:14 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0806D6601FF7;
	Tue, 13 Sep 2022 20:29:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097353;
	bh=f3G12g+5czfdXru1FeeGI7Ybfs2QOu1D1lZN+8ABGmM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l8E3j69MZsOoeJFmN6+prFsIesDXuo73IUdHgzcxepu+uUHJgULkanSSc3I7hkwKd
	 IhSsSvrj6aRb80JOlb1XFAQDowM8O2zqE5TFe4gd/IuZKgznQ7cZTe8Lp/y01rHRfp
	 mdyPy4/M+ZWECW4htWN68/mY8c49QYzB+QJYXoWQS9K3TxUJ4OS98OSNP2xFncmdxV
	 yvodqjDNEVjuAmXlsiTuFd5NXnL8TNp0OxbcHfMvJdwwJ1SsWRO3PUnAz8DWq0QcPn
	 UwTqRB6NIK/h/eY//eb/uvyomzgaQPf82E9SXNdZ0/VPgF46sELNpfb2cmByn7xhIW
	 5G9NxFn3B7eAw==
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
Date: Tue, 13 Sep 2022 22:27:47 +0300
Message-Id: <20220913192757.37727-12-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: BL5CSOXQA74VYBWEOJNU3ZV2TUHJ3ICD
X-Message-ID-Hash: BL5CSOXQA74VYBWEOJNU3ZV2TUHJ3ICD
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 11/21] misc: fastrpc: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BL5CSOXQA74VYBWEOJNU3ZV2TUHJ3ICD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBmYXN0cnBjIHRvIHRoZSBjb21tb24gZHluYW1pYyBkbWEtYnVmIGxvY2tpbmcgY29u
dmVudGlvbiBieQ0Kc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9ucyBvZiBkbWEt
YnVmIEFQSSBmdW5jdGlvbnMuDQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQpBY2tlZC1ieTogU3Jpbml2YXMgS2FuZGFnYXRsYSA8c3Jpbml2
YXMua2FuZGFnYXRsYUBsaW5hcm8ub3JnPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtv
IDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvbWlzYy9mYXN0
cnBjLmMgfCA2ICsrKy0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL21pc2MvZmFzdHJwYy5jIGIvZHJpdmVy
cy9taXNjL2Zhc3RycGMuYw0KaW5kZXggN2ZmMGI2M2MyNWUzLi4xYWQ1ODA4NjU1MjUgMTAwNjQ0
DQotLS0gYS9kcml2ZXJzL21pc2MvZmFzdHJwYy5jDQorKysgYi9kcml2ZXJzL21pc2MvZmFzdHJw
Yy5jDQpAQCAtMzEwLDggKzMxMCw4IEBAIHN0YXRpYyB2b2lkIGZhc3RycGNfZnJlZV9tYXAoc3Ry
dWN0IGtyZWYgKnJlZikNCiAJCQkJcmV0dXJuOw0KIAkJCX0NCiAJCX0NCi0JCWRtYV9idWZfdW5t
YXBfYXR0YWNobWVudChtYXAtPmF0dGFjaCwgbWFwLT50YWJsZSwNCi0JCQkJCSBETUFfQklESVJF
Q1RJT05BTCk7DQorCQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQobWFwLT5hdHRh
Y2gsIG1hcC0+dGFibGUsDQorCQkJCQkJICBETUFfQklESVJFQ1RJT05BTCk7DQogCQlkbWFfYnVm
X2RldGFjaChtYXAtPmJ1ZiwgbWFwLT5hdHRhY2gpOw0KIAkJZG1hX2J1Zl9wdXQobWFwLT5idWYp
Ow0KIAl9DQpAQCAtNzI2LDcgKzcyNiw3IEBAIHN0YXRpYyBpbnQgZmFzdHJwY19tYXBfY3JlYXRl
KHN0cnVjdCBmYXN0cnBjX3VzZXIgKmZsLCBpbnQgZmQsDQogCQlnb3RvIGF0dGFjaF9lcnI7DQog
CX0NCiANCi0JbWFwLT50YWJsZSA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQobWFwLT5hdHRhY2gs
IERNQV9CSURJUkVDVElPTkFMKTsNCisJbWFwLT50YWJsZSA9IGRtYV9idWZfbWFwX2F0dGFjaG1l
bnRfdW5sb2NrZWQobWFwLT5hdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsNCiAJaWYgKElTX0VS
UihtYXAtPnRhYmxlKSkgew0KIAkJZXJyID0gUFRSX0VSUihtYXAtPnRhYmxlKTsNCiAJCWdvdG8g
bWFwX2VycjsNCi0tIA0KMi4zNy4zDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
