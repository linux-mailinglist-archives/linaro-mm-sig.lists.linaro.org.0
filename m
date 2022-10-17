Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B1216601554
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:28:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C81CD3F0D1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:28:35 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id CA1F43EF81
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:24:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=CzNTMdEJ;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D726B660239E;
	Mon, 17 Oct 2022 18:24:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027495;
	bh=l5BRfbWC5T1dh+H9OotQXa1bcseJO6ASdNvasBha29E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CzNTMdEJOxDp4A5gv6FT1KtuAOVV8BgYjE2NA8gfwscQqftPsjogL5wLD89DBA7zq
	 VtwsrO4hMZxqe3XNiPrBu1Lbsivm9/u7eexNdpa+xDPN/wwu/BcPTcpZ+CBeaORruQ
	 EgEE64VS3e9BoYyozavmdPH8LtnNtQbwm5AvhCXgegcqR1dfHSpYpbTTHYWP83AjVs
	 QQnEy/BwQrA+vougTJi4lwWpcb9+6APM9upNMnPC8AvKJlbk106r81S6TqdlgKprU0
	 b7Fhz6tD9iDeQRyiT7+dO3AUXAoFvu/tG516gGubRlSd0junB52vlPM3M7+qtzDnH1
	 1zoXv6KogANJw==
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
Date: Mon, 17 Oct 2022 20:22:19 +0300
Message-Id: <20221017172229.42269-12-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: CA1F43EF81
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
Message-ID-Hash: DSUINNBM3EFVSX7POAWYRZQFRQRHOZH3
X-Message-ID-Hash: DSUINNBM3EFVSX7POAWYRZQFRQRHOZH3
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 11/21] misc: fastrpc: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DSUINNBM3EFVSX7POAWYRZQFRQRHOZH3/>
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
cy9taXNjL2Zhc3RycGMuYw0KaW5kZXggOTNlYmQxNzRkODQ4Li42ZmNmYjJlOWY3YTcgMTAwNjQ0
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
