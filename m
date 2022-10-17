Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA5E60151C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:26:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C7313F55E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:26:23 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 953713EC47
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:24:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=JfSEiFZ0;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C55A566022A5;
	Mon, 17 Oct 2022 18:24:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027471;
	bh=Ov9ZX8VHbwHToZzjcmjiNJ0jjSTvXmYhNQje1p3xR4A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JfSEiFZ0bP/1PLxM6GvHz8c2tanrpN/nrTAMtAjaS+tiBEO2rTyRl2yV6inEdPTYz
	 filtgkfBWoHGG9we80879CphfgBgCm6DB6qPBvlIm4TSS8FvEMd0WD9UBv8W0TvnDQ
	 hNW/CRs1u5OAOaZwr87WYLuVN5Fu+0f0pNNuOMnhWDIpJLkvwUTudI5SGs/HaJ5lm+
	 16HXJckBVf+u/EzHvS+seAwvWtLZA6OdJfWF8dFR+cv7DuFoyrtn6QGbSyHhUSH0Nw
	 lc7G1erOvRKc++n1Yv/355sd1xVVuLAdS2T77xsDQVAoImnQBJBhRtoOGTcX7SESkD
	 K39eW7DM3pE5g==
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
Date: Mon, 17 Oct 2022 20:22:13 +0300
Message-Id: <20221017172229.42269-6-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 953713EC47
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	FREEMAIL_TO(0.00)[linux.ie,redhat.com,chromium.org,gmail.com,ffwll.ch,collabora.com,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_GT_50(0.00)[51];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 7JDSIBGJQ74VQ27KEMOXIILLOSB2VJ7U
X-Message-ID-Hash: 7JDSIBGJQ74VQ27KEMOXIILLOSB2VJ7U
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 05/21] drm/armada: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7JDSIBGJQ74VQ27KEMOXIILLOSB2VJ7U/>
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
