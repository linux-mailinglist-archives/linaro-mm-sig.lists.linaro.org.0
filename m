Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA395A81AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Aug 2022 17:40:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45E413F60A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Aug 2022 15:40:44 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id C1B0943F46
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Aug 2022 15:40:11 +0000 (UTC)
Received: from dimapc.. (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1817B6601F08;
	Wed, 31 Aug 2022 16:40:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661960411;
	bh=wM9CtxO7g+I2MDvrzT3LZe35Eb7d1xKXFtly+o9W8Ak=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dnGv0uxhtNMBxsdvy3hH+pPM5/F2s6xH4ZhZcnNjO08lYkNBDqZm4iMB3nemHgWFB
	 xB/nRvHipZ2WOZ5Kqpkf56IU/2D3DvGF8Ukp4zZCKoG7ndRQ+r8cINug8sgCQnMTH7
	 saMR0YeItwmYev/7tzwNgcXa1oRjErFEjeAAZMZPlax5q8kI+a/wG7coEm1oVYHaeI
	 Kw0kAckg2QNpLnwZqNiSOQmKc+EGEjXs1gswAZIvlxq/ggU62BRAwq838pQ6IwjI/9
	 FK9xl6sHtEO4DnPpF7PMp4LzNmCD4DaNMXlGCvkAiyNSG8GlqH5e+cf1vhxAdtfnJB
	 cCB0V24HbPT+A==
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
	Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Wed, 31 Aug 2022 18:37:54 +0300
Message-Id: <20220831153757.97381-19-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: ZPWZXQ6CMYB27BCXXLTP6JPBEOG7QGQQ
X-Message-ID-Hash: ZPWZXQ6CMYB27BCXXLTP6JPBEOG7QGQQ
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 18/21] dma-buf: Move dma_buf_mmap() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZPWZXQ6CMYB27BCXXLTP6JPBEOG7QGQQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TW92ZSBkbWFfYnVmX21tYXAoKSBmdW5jdGlvbiB0byB0aGUgZHluYW1pYyBsb2NraW5nIHNwZWNp
ZmljYXRpb24gYnkNCnRha2luZyB0aGUgcmVzZXJ2YXRpb24gbG9jay4gTmVpdGhlciBvZiB0aGUg
dG9kYXkncyBkcml2ZXJzIHRha2UgdGhlDQpyZXNlcnZhdGlvbiBsb2NrIHdpdGhpbiB0aGUgbW1h
cCgpIGNhbGxiYWNrLCBoZW5jZSBpdCdzIHNhZmUgdG8gZW5mb3JjZQ0KdGhlIGxvY2tpbmcuDQoN
CkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpT
aWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEu
Y29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDggKysrKysrKy0NCiAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0K
aW5kZXggOGU5MjhmZTZlOGRmLi5kOTEzMDQ4NmNiOGYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtMTM4
OSw2ICsxMzg5LDggQEAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9lbmRfY3B1X2FjY2Vz
cywgRE1BX0JVRik7DQogaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwNCiAJCSB1bnNpZ25lZCBsb25nIHBnb2ZmKQ0KIHsN
CisJaW50IHJldDsNCisNCiAJaWYgKFdBUk5fT04oIWRtYWJ1ZiB8fCAhdm1hKSkNCiAJCXJldHVy
biAtRUlOVkFMOw0KIA0KQEAgLTE0MDksNyArMTQxMSwxMSBAQCBpbnQgZG1hX2J1Zl9tbWFwKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLA0KIAl2bWFf
c2V0X2ZpbGUodm1hLCBkbWFidWYtPmZpbGUpOw0KIAl2bWEtPnZtX3Bnb2ZmID0gcGdvZmY7DQog
DQotCXJldHVybiBkbWFidWYtPm9wcy0+bW1hcChkbWFidWYsIHZtYSk7DQorCWRtYV9yZXN2X2xv
Y2soZG1hYnVmLT5yZXN2LCBOVUxMKTsNCisJcmV0ID0gZG1hYnVmLT5vcHMtPm1tYXAoZG1hYnVm
LCB2bWEpOw0KKwlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCisNCisJcmV0dXJuIHJl
dDsNCiB9DQogRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9tbWFwLCBETUFfQlVGKTsNCiAN
Ci0tIA0KMi4zNy4yDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
