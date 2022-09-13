Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4417D5B7ACD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:29:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A461479EE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:29:10 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id A7A00479F7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:29:06 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 01F7C6601FB9;
	Tue, 13 Sep 2022 20:29:00 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097345;
	bh=RCM7cbGa0hbU3izrAQh1wOIWATDaV8057tfGw8XuSMQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RiEBhVBu6XTDOKiYxORq5TuKySq6sD5bfTUsOTHgxxlrZiyQPZ1g8qEdVUfkrvo3/
	 9gMYCwB/lv3omcK3N7kLXrP5H8NEvxCvZc52f6t93lGAH7RtJJEPCO+4LedVEjxplK
	 TZ/UYAC+fMDKcujQSJTrA4WVk6efukv1avTK5OuCu+khCHI9OzIPhPi/gIVFwvOJ8v
	 l2mctkO23qEDOCO3GnIw6FU+nPxvx5OC8rjPKbH3nl1sdyj6+exkd6wXLoDpK73a/e
	 Dq2hDhLf+TQSIwwHOZ0zm1Ec1RVSA442NhjH6ZpRTVtJgVSaLguIBHMmTGExeTrxh9
	 Lt+ByMcLg0moA==
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
Date: Tue, 13 Sep 2022 22:27:45 +0300
Message-Id: <20220913192757.37727-10-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: WK3IZF2ORNKSJGC2VWXPFCI2QELG37IN
X-Message-ID-Hash: WK3IZF2ORNKSJGC2VWXPFCI2QELG37IN
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 09/21] drm/etnaviv: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WK3IZF2ORNKSJGC2VWXPFCI2QELG37IN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBFdG5hdml2IGRyaXZlciB0byB0aGUgY29tbW9uIGR5bmFtaWMgZG1hLWJ1ZiBsb2Nr
aW5nIGNvbnZlbnRpb24NCmJ5IHN0YXJ0aW5nIHRvIHVzZSB0aGUgdW5sb2NrZWQgdmVyc2lvbnMg
b2YgZG1hLWJ1ZiBBUEkgZnVuY3Rpb25zLg0KDQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtv
IDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1lLmMgfCAyICstDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
ZXRuYXZpdi9ldG5hdml2X2dlbV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRu
YXZpdl9nZW1fcHJpbWUuYw0KaW5kZXggM2ZhMmRhMTQ5NjM5Li43MDMxZGIxNDVhNzcgMTAwNjQ0
DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbV9wcmltZS5jDQorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbV9wcmltZS5jDQpAQCAtNjUsNyAr
NjUsNyBAQCBzdGF0aWMgdm9pZCBldG5hdml2X2dlbV9wcmltZV9yZWxlYXNlKHN0cnVjdCBldG5h
dml2X2dlbV9vYmplY3QgKmV0bmF2aXZfb2JqKQ0KIAlzdHJ1Y3QgaW9zeXNfbWFwIG1hcCA9IElP
U1lTX01BUF9JTklUX1ZBRERSKGV0bmF2aXZfb2JqLT52YWRkcik7DQogDQogCWlmIChldG5hdml2
X29iai0+dmFkZHIpDQotCQlkbWFfYnVmX3Z1bm1hcChldG5hdml2X29iai0+YmFzZS5pbXBvcnRf
YXR0YWNoLT5kbWFidWYsICZtYXApOw0KKwkJZG1hX2J1Zl92dW5tYXBfdW5sb2NrZWQoZXRuYXZp
dl9vYmotPmJhc2UuaW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCAmbWFwKTsNCiANCiAJLyogRG9uJ3Qg
ZHJvcCB0aGUgcGFnZXMgZm9yIGltcG9ydGVkIGRtYWJ1ZiwgYXMgdGhleSBhcmUgbm90DQogCSAq
IG91cnMsIGp1c3QgZnJlZSB0aGUgYXJyYXkgd2UgYWxsb2NhdGVkOg0KLS0gDQoyLjM3LjMNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
