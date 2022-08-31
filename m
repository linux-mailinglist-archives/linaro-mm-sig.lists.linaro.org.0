Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 055D45A81A1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Aug 2022 17:40:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B98E3F5EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Aug 2022 15:40:31 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 5D8B543F46
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Aug 2022 15:40:02 +0000 (UTC)
Received: from dimapc.. (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B09946601E0B;
	Wed, 31 Aug 2022 16:39:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661960401;
	bh=gIw0LiJmbclTWGOdwrfcgGOZXkgbb+7eQ2rM8JMcCFs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eDTg8soNjJsESfVNNrUcTFbA9XH0ERxZfrDcBM3uq+ZSIdqUh20nNOEarUQbWs34k
	 PFovJnbPzxF3EogbvS9BRbnL/c7KFsOaMbXMGkLz+0smFOPc1ddV26U0FR64kswUkc
	 jwaxe7WMdo6rb5rFo/X5ftYeCZx7KkQRBMpqNqdC0Z1EX7fxh+ptv6eyTCVs1tvNW2
	 mh+y5yP4InDFFgDKc62A/v7x4OJBD9p6Tta3U4v0sv2KP03fDz1R1ye/kDMTZRkMFm
	 V4whnjGGGtVsCrWU/YGsXT6X/6PNrrJM992r/7+W/w6Xmct9aupP7YCY2SVTZJP3aR
	 5kYLzMmbuKgYg==
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
Date: Wed, 31 Aug 2022 18:37:51 +0300
Message-Id: <20220831153757.97381-16-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: MLFJDMW54ZLCWB352ACN3PVR3P4JAPXX
X-Message-ID-Hash: MLFJDMW54ZLCWB352ACN3PVR3P4JAPXX
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 15/21] dma-buf: Move dma_buf_vmap() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MLFJDMW54ZLCWB352ACN3PVR3P4JAPXX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TW92ZSBkbWFfYnVmX3ZtYXAvdnVubWFwX3VubG9ja2VkKCkgZnVuY3Rpb25zIHRvIHRoZSBkeW5h
bWljIGxvY2tpbmcNCnNwZWNpZmljYXRpb24gYnkgYXNzZXJ0aW5nIHRoYXQgdGhlIHJlc2VydmF0
aW9uIGxvY2sgaXMgaGVsZC4NCg0KQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5
Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
IHwgNCArKysrDQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMN
CmluZGV4IDUxZmI2OTA0ODg1My4uY2VlYTQ4MzljNjQxIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTE0
NDksNiArMTQ0OSw4IEBAIGludCBkbWFfYnVmX3ZtYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwg
c3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KIAlpZiAoV0FSTl9PTighZG1hYnVmKSkNCiAJCXJldHVy
biAtRUlOVkFMOw0KIA0KKwlkbWFfcmVzdl9hc3NlcnRfaGVsZChkbWFidWYtPnJlc3YpOw0KKw0K
IAlpZiAoIWRtYWJ1Zi0+b3BzLT52bWFwKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQogDQpAQCAtMTUw
OSw2ICsxNTExLDggQEAgdm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
LCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQogCWlmIChXQVJOX09OKCFkbWFidWYpKQ0KIAkJcmV0
dXJuOw0KIA0KKwlkbWFfcmVzdl9hc3NlcnRfaGVsZChkbWFidWYtPnJlc3YpOw0KKw0KIAlCVUdf
T04oaW9zeXNfbWFwX2lzX251bGwoJmRtYWJ1Zi0+dm1hcF9wdHIpKTsNCiAJQlVHX09OKGRtYWJ1
Zi0+dm1hcHBpbmdfY291bnRlciA9PSAwKTsNCiAJQlVHX09OKCFpb3N5c19tYXBfaXNfZXF1YWwo
JmRtYWJ1Zi0+dm1hcF9wdHIsIG1hcCkpOw0KLS0gDQoyLjM3LjINCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
