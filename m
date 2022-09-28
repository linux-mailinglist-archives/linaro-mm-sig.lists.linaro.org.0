Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D801D5EE579
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:22:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E4D783F48E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:22:18 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 614413F495
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:18:09 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9BF8C66022AC;
	Wed, 28 Sep 2022 20:18:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392688;
	bh=5SoJM0KT/OL453Vzox/c0XL1yLlnHbzjEdmJRs0v2dc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bo4J5bTEKu9T8F4JTs1Vqzrg8SGI6Re+tUvC1gRQqOT4eZ4ToP44rYXqPsgeiJSpB
	 1RKopdAu+JiYaBGg/NIIf0FAisQXJHKuC8irf627+bT7mlsion2qLauLIWJ3DNuAu6
	 ocbhQGNqTHf7Wvk3MowOwaQr9wS32CeSfNe3ThCLonj9MNxLFnhyFa+4dyolL4zKaR
	 V91vMizc8hSjb3rFkz+wmYeOqgwtXMhjSSQF3bNJMIyLeeOmIARgEQyJhmXEDlfdu+
	 kp6de5kq378pZm2IFsYx5VE9BsB6krgZZ9dEKBp6631yhxb/pa5iCk3IRuDZHXL3KP
	 U+urz1jaJ3DYg==
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
Date: Wed, 28 Sep 2022 22:15:53 +0300
Message-Id: <20220928191600.5874-15-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 614413F495
X-Spamd-Result: default: False [-7.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[collabora.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[46.235.227.172:from,109.252.125.248:received];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172:c];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org];
	FREEMAIL_TO(0.00)[linux.ie,redhat.com,chromium.org,gmail.com,ffwll.ch,collabora.com,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCPT_COUNT_GT_50(0.00)[51];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,collabora.com:email,collabora.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=bo4J5bTE;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: DZEWXVHSXDFFVH3DNZD6QMOECKDINXFV
X-Message-ID-Hash: DZEWXVHSXDFFVH3DNZD6QMOECKDINXFV
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 14/21] media: tegra-vde: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DZEWXVHSXDFFVH3DNZD6QMOECKDINXFV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBUZWdyYSB2aWRlbyBkZWNvZGVyIGRyaXZlciB0byB0aGUgY29tbW9uIGR5bmFtaWMg
ZG1hLWJ1Zg0KbG9ja2luZyBjb252ZW50aW9uIGJ5IHN0YXJ0aW5nIHRvIHVzZSB0aGUgdW5sb2Nr
ZWQgdmVyc2lvbnMgb2YgZG1hLWJ1Zg0KQVBJIGZ1bmN0aW9ucy4NCg0KQWNrZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IERt
aXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNhY2hlLmMgfCA2ICsr
Ky0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQoN
CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1h
YnVmLWNhY2hlLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1h
YnVmLWNhY2hlLmMNCmluZGV4IDY5YzM0NjE0ODA3MC4uMWM1Yjk0OTg5YWVjIDEwMDY0NA0KLS0t
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9udmlkaWEvdGVncmEtdmRlL2RtYWJ1Zi1jYWNoZS5j
DQorKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNh
Y2hlLmMNCkBAIC0zOCw3ICszOCw3IEBAIHN0YXRpYyB2b2lkIHRlZ3JhX3ZkZV9yZWxlYXNlX2Vu
dHJ5KHN0cnVjdCB0ZWdyYV92ZGVfY2FjaGVfZW50cnkgKmVudHJ5KQ0KIAlpZiAoZW50cnktPnZk
ZS0+ZG9tYWluKQ0KIAkJdGVncmFfdmRlX2lvbW11X3VubWFwKGVudHJ5LT52ZGUsIGVudHJ5LT5p
b3ZhKTsNCiANCi0JZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KGVudHJ5LT5hLCBlbnRyeS0+c2d0
LCBlbnRyeS0+ZG1hX2Rpcik7DQorCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZChl
bnRyeS0+YSwgZW50cnktPnNndCwgZW50cnktPmRtYV9kaXIpOw0KIAlkbWFfYnVmX2RldGFjaChk
bWFidWYsIGVudHJ5LT5hKTsNCiAJZG1hX2J1Zl9wdXQoZG1hYnVmKTsNCiANCkBAIC0xMDIsNyAr
MTAyLDcgQEAgaW50IHRlZ3JhX3ZkZV9kbWFidWZfY2FjaGVfbWFwKHN0cnVjdCB0ZWdyYV92ZGUg
KnZkZSwNCiAJCWdvdG8gZXJyX3VubG9jazsNCiAJfQ0KIA0KLQlzZ3QgPSBkbWFfYnVmX21hcF9h
dHRhY2htZW50KGF0dGFjaG1lbnQsIGRtYV9kaXIpOw0KKwlzZ3QgPSBkbWFfYnVmX21hcF9hdHRh
Y2htZW50X3VubG9ja2VkKGF0dGFjaG1lbnQsIGRtYV9kaXIpOw0KIAlpZiAoSVNfRVJSKHNndCkp
IHsNCiAJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCBkbWFidWZzIHNnX3RhYmxlXG4iKTsN
CiAJCWVyciA9IFBUUl9FUlIoc2d0KTsNCkBAIC0xNTIsNyArMTUyLDcgQEAgaW50IHRlZ3JhX3Zk
ZV9kbWFidWZfY2FjaGVfbWFwKHN0cnVjdCB0ZWdyYV92ZGUgKnZkZSwNCiBlcnJfZnJlZToNCiAJ
a2ZyZWUoZW50cnkpOw0KIGVycl91bm1hcDoNCi0JZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KGF0
dGFjaG1lbnQsIHNndCwgZG1hX2Rpcik7DQorCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxv
Y2tlZChhdHRhY2htZW50LCBzZ3QsIGRtYV9kaXIpOw0KIGVycl9kZXRhY2g6DQogCWRtYV9idWZf
ZGV0YWNoKGRtYWJ1ZiwgYXR0YWNobWVudCk7DQogZXJyX3VubG9jazoNCi0tIA0KMi4zNy4zDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
