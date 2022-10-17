Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E88DE601556
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:28:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 085473F0D1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:28:56 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 330E73EC47
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:24:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b="gAXB8G//";
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 466526602388;
	Mon, 17 Oct 2022 18:24:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027498;
	bh=pCSmC3VPtA7CuegS38L6lty54ziB9yvQFvfJf8KB1ik=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gAXB8G//cO3F3j8AWGrPRrvRsVjlCFBgu2qiaGBgXtYsHwRcF+71r0UkKQMsa/ddR
	 zh6WigfOXVJ7d10exRZYGPPM85AnMle9hUdujUVw5Soqan6bvr6KsluDNdaYd9VaQh
	 ivT4hSLz0yaqXGAaHdn/IK3LGCRvesk0p1PK3Q8pwtySNTx1rLRrk4fkymMiiF2/Vc
	 bo2I05eRJP+kiOM9lY+OEFzrflbPhMyHPcbX7qTUxwtl2LsZ0B2paS9YOZeKunO7D5
	 7H3cZ9NTpoEX/UkWelf7EQ3K4NbGTTe42nJE9HbFU0Yn00FR4dW/C+wREaUImxtMFC
	 LEl+iVBw8GnyA==
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
Date: Mon, 17 Oct 2022 20:22:20 +0300
Message-Id: <20221017172229.42269-13-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 330E73EC47
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
Message-ID-Hash: IX5YGOXKLGRLUY4SZVQDAVRDKYPG7QPR
X-Message-ID-Hash: IX5YGOXKLGRLUY4SZVQDAVRDKYPG7QPR
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 12/21] xen/gntdev: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IX5YGOXKLGRLUY4SZVQDAVRDKYPG7QPR/>
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
