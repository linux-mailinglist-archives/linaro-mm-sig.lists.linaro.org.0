Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFC9601553
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:28:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A71F73F499
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:28:15 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 5FBEB3F56C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:24:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=VIrv1adC;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D90EA660238A;
	Mon, 17 Oct 2022 18:24:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027491;
	bh=/fmhFqKRdyFDSOgw768lCF7vkLc6zTfOgN/CMggxBBU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VIrv1adCfYeYjyl/ZPvIa+2eitMJaYnVt+F8bcEXKl3KPIGgzE6UfTMJIPZP9TLui
	 8K7QkYfa/uENzMzSrPEukPION9g/2LQilBX3TipN3kH2BDK0qPuPM92xMLJld5nKPK
	 yicLWuPrB/tjot0Wdy+luQ43FEBA5SQjcmsefOM28FwSkUMcRnBw6VH+aE3usBpoJw
	 oyri+ALarLBcxPD1ONJF1boMRpHAfx7xZqtkSFFajZfwAYM3ga3PCS2SmrOevLP0TX
	 RxwY/B3B18geKRsUVs+z5N+iiML1QLMTJNO1DeoUFQBc+u5iujq5S/35O8vXCPXavh
	 xX0nFwsLWuSGg==
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
Date: Mon, 17 Oct 2022 20:22:18 +0300
Message-Id: <20221017172229.42269-11-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 5FBEB3F56C
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
Message-ID-Hash: 5W6LKMEDXOIGZJMD2EIEVZRDDGBS4562
X-Message-ID-Hash: 5W6LKMEDXOIGZJMD2EIEVZRDDGBS4562
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 10/21] RDMA/umem: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5W6LKMEDXOIGZJMD2EIEVZRDDGBS4562/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBJbmZpbmlCYW5kIGRyaXZlcnMgdG8gdGhlIGNvbW1vbiBkeW5hbWljIGRtYS1idWYg
bG9ja2luZw0KY29udmVudGlvbiBieSBzdGFydGluZyB0byB1c2UgdGhlIHVubG9ja2VkIHZlcnNp
b25zIG9mIGRtYS1idWYgQVBJDQpmdW5jdGlvbnMuDQoNCkFja2VkLWJ5OiBKYXNvbiBHdW50aG9y
cGUgPGpnZ0BudmlkaWEuY29tPg0KQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5
Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2ZXJzL2luZmluaWJhbmQvY29yZS91
bWVtX2RtYWJ1Zi5jIHwgNyArKysrLS0tDQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW5maW5pYmFuZC9jb3Jl
L3VtZW1fZG1hYnVmLmMgYi9kcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jDQpp
bmRleCAwNGMwNGU2ZDI0YzMuLjQzYjI2YmMxMjI4OCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvaW5m
aW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMNCisrKyBiL2RyaXZlcnMvaW5maW5pYmFuZC9jb3Jl
L3VtZW1fZG1hYnVmLmMNCkBAIC0yNiw3ICsyNiw4IEBAIGludCBpYl91bWVtX2RtYWJ1Zl9tYXBf
cGFnZXMoc3RydWN0IGliX3VtZW1fZG1hYnVmICp1bWVtX2RtYWJ1ZikNCiAJaWYgKHVtZW1fZG1h
YnVmLT5zZ3QpDQogCQlnb3RvIHdhaXRfZmVuY2U7DQogDQotCXNndCA9IGRtYV9idWZfbWFwX2F0
dGFjaG1lbnQodW1lbV9kbWFidWYtPmF0dGFjaCwgRE1BX0JJRElSRUNUSU9OQUwpOw0KKwlzZ3Qg
PSBkbWFfYnVmX21hcF9hdHRhY2htZW50X3VubG9ja2VkKHVtZW1fZG1hYnVmLT5hdHRhY2gsDQor
CQkJCQkgICAgICBETUFfQklESVJFQ1RJT05BTCk7DQogCWlmIChJU19FUlIoc2d0KSkNCiAJCXJl
dHVybiBQVFJfRVJSKHNndCk7DQogDQpAQCAtMTAyLDggKzEwMyw4IEBAIHZvaWQgaWJfdW1lbV9k
bWFidWZfdW5tYXBfcGFnZXMoc3RydWN0IGliX3VtZW1fZG1hYnVmICp1bWVtX2RtYWJ1ZikNCiAJ
CXVtZW1fZG1hYnVmLT5sYXN0X3NnX3RyaW0gPSAwOw0KIAl9DQogDQotCWRtYV9idWZfdW5tYXBf
YXR0YWNobWVudCh1bWVtX2RtYWJ1Zi0+YXR0YWNoLCB1bWVtX2RtYWJ1Zi0+c2d0LA0KLQkJCQkg
RE1BX0JJRElSRUNUSU9OQUwpOw0KKwlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQo
dW1lbV9kbWFidWYtPmF0dGFjaCwgdW1lbV9kbWFidWYtPnNndCwNCisJCQkJCSAgRE1BX0JJRElS
RUNUSU9OQUwpOw0KIA0KIAl1bWVtX2RtYWJ1Zi0+c2d0ID0gTlVMTDsNCiB9DQotLSANCjIuMzcu
Mw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
