Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AF55B7ADE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:29:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8798248A12
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:29:53 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 3382848A12
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:29:49 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 913356602006;
	Tue, 13 Sep 2022 20:29:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097388;
	bh=1GtKrwThZVJsniK/ptiZT5S6PL4TRRG1YKxbwpZHIhA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iahWG9QhacEAl4VINBeLXiSWEkk0ZfYsZ5ZMd/mQXxBuGVP3fwGIyCDEEPkTBklVw
	 F2IrWL/57n6JO11EaSwKt//9LJZQW/Kp3LWtAkz+7MiidjvTgCSPiPu6hfBnckFqM6
	 HMUILDoGsfxYprNWaR9CEbuzhEcV3N5Z/saNVT3ZKlwhtuwR3vzpnZ1mSrtMtYO5aN
	 pU59cM86CUHdMdoE1HRBI22kpUd0rWKnUy+zMGElw8s+Iyzh6pj+QhIVfwqOcNzHem
	 3f5fdgBRvLE5cFN+c19ZuXluy+hc9bcmmgg4KT7LtSexT8Wgg9sPLjQbskg3QEHod/
	 HlVfpcq3uK5ZA==
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
Date: Tue, 13 Sep 2022 22:27:54 +0300
Message-Id: <20220913192757.37727-19-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: SDMJUCX6TMYEEUB6WQMI3OBIIBNSGXGG
X-Message-ID-Hash: SDMJUCX6TMYEEUB6WQMI3OBIIBNSGXGG
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 18/21] dma-buf: Move dma_buf_mmap() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SDMJUCX6TMYEEUB6WQMI3OBIIBNSGXGG/>
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
aW5kZXggODg3MzMxNWQ2ZWRjLi44ODIxYTNhZDk1MzAgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtMTM5
MCw2ICsxMzkwLDggQEAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9lbmRfY3B1X2FjY2Vz
cywgRE1BX0JVRik7DQogaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwNCiAJCSB1bnNpZ25lZCBsb25nIHBnb2ZmKQ0KIHsN
CisJaW50IHJldDsNCisNCiAJaWYgKFdBUk5fT04oIWRtYWJ1ZiB8fCAhdm1hKSkNCiAJCXJldHVy
biAtRUlOVkFMOw0KIA0KQEAgLTE0MTAsNyArMTQxMiwxMSBAQCBpbnQgZG1hX2J1Zl9tbWFwKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLA0KIAl2bWFf
c2V0X2ZpbGUodm1hLCBkbWFidWYtPmZpbGUpOw0KIAl2bWEtPnZtX3Bnb2ZmID0gcGdvZmY7DQog
DQotCXJldHVybiBkbWFidWYtPm9wcy0+bW1hcChkbWFidWYsIHZtYSk7DQorCWRtYV9yZXN2X2xv
Y2soZG1hYnVmLT5yZXN2LCBOVUxMKTsNCisJcmV0ID0gZG1hYnVmLT5vcHMtPm1tYXAoZG1hYnVm
LCB2bWEpOw0KKwlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCisNCisJcmV0dXJuIHJl
dDsNCiB9DQogRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9tbWFwLCBETUFfQlVGKTsNCiAN
Ci0tIA0KMi4zNy4zDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
