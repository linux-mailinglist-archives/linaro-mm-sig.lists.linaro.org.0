Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DA25EE56B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:20:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0EB2D3F487
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:20:25 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 15F373F487
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:17:50 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4CA5866022A5;
	Wed, 28 Sep 2022 20:17:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392669;
	bh=3secHBjyjMQpoZrQKxguIhOKP495IyqhEAH64Kaz1ng=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jaavN6JWartrzJOAt6yoc6c9JrqowfXMZCHaH/OKwYQr10UjGhVD98HyXPtNUlXIS
	 w7SwcQ/HM9RKIyLfX2aEsf3DPUTj+guHAc26CwtzcPonmEIJh4oJ5/1mXvpQ/lHrdr
	 K/OZTOeRPEVxde79eRT+JuZz7+WNr/CmJl/T/No/AUZaRMpOopDYRF+UdUG022kDz6
	 13SA3by/pavASohHhkeSRtwiiGlc+ivx9t0C+GhlPFFe3yoMKEVeWCLOD2dY7V+E+F
	 +tZA1HM/bEQ3lhFU5elQIakAUG34ZX3RW7t+W7O9uBmZTnMv2dZkGW4tTMHG2Y+7d/
	 3I/vHAyixSAmQ==
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
Date: Wed, 28 Sep 2022 22:15:47 +0300
Message-Id: <20220928191600.5874-9-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 15F373F487
X-Spamd-Result: default: False [-7.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[collabora.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[109.252.125.248:received,46.235.227.172:from];
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
	dkim=pass header.d=collabora.com header.s=mail header.b=jaavN6JW;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: NCREAEMM3YLOG4P34YLUUC5EJ6HHRZVG
X-Message-ID-Hash: NCREAEMM3YLOG4P34YLUUC5EJ6HHRZVG
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 08/21] drm/tegra: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NCREAEMM3YLOG4P34YLUUC5EJ6HHRZVG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBUZWdyYSBEUk0gZHJpdmVyIHRvIHRoZSBjb21tb24gZHluYW1pYyBkbWEtYnVmIGxv
Y2tpbmcgY29udmVudGlvbg0KYnkgc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9u
cyBvZiBkbWEtYnVmIEFQSSBmdW5jdGlvbnMuDQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVu
a28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJt
L3RlZ3JhL2dlbS5jIHwgMTcgKysrKysrKysrLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3RlZ3JhL2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2dlbS5jDQppbmRleCA4MTk5
MTA5MGFkY2MuLmIwOWI4YWI0MGFlNCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS90ZWdy
YS9nZW0uYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2dlbS5jDQpAQCAtODQsNyArODQs
NyBAQCBzdGF0aWMgc3RydWN0IGhvc3QxeF9ib19tYXBwaW5nICp0ZWdyYV9ib19waW4oc3RydWN0
IGRldmljZSAqZGV2LCBzdHJ1Y3QgaG9zdDF4Xw0KIAkJCWdvdG8gZnJlZTsNCiAJCX0NCiANCi0J
CW1hcC0+c2d0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudChtYXAtPmF0dGFjaCwgZGlyZWN0aW9u
KTsNCisJCW1hcC0+c2d0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZChtYXAtPmF0
dGFjaCwgZGlyZWN0aW9uKTsNCiAJCWlmIChJU19FUlIobWFwLT5zZ3QpKSB7DQogCQkJZG1hX2J1
Zl9kZXRhY2goYnVmLCBtYXAtPmF0dGFjaCk7DQogCQkJZXJyID0gUFRSX0VSUihtYXAtPnNndCk7
DQpAQCAtMTYwLDcgKzE2MCw4IEBAIHN0YXRpYyBzdHJ1Y3QgaG9zdDF4X2JvX21hcHBpbmcgKnRl
Z3JhX2JvX3BpbihzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBob3N0MXhfDQogc3RhdGljIHZv
aWQgdGVncmFfYm9fdW5waW4oc3RydWN0IGhvc3QxeF9ib19tYXBwaW5nICptYXApDQogew0KIAlp
ZiAobWFwLT5hdHRhY2gpIHsNCi0JCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudChtYXAtPmF0dGFj
aCwgbWFwLT5zZ3QsIG1hcC0+ZGlyZWN0aW9uKTsNCisJCWRtYV9idWZfdW5tYXBfYXR0YWNobWVu
dF91bmxvY2tlZChtYXAtPmF0dGFjaCwgbWFwLT5zZ3QsDQorCQkJCQkJICBtYXAtPmRpcmVjdGlv
bik7DQogCQlkbWFfYnVmX2RldGFjaChtYXAtPmF0dGFjaC0+ZG1hYnVmLCBtYXAtPmF0dGFjaCk7
DQogCX0gZWxzZSB7DQogCQlkbWFfdW5tYXBfc2d0YWJsZShtYXAtPmRldiwgbWFwLT5zZ3QsIG1h
cC0+ZGlyZWN0aW9uLCAwKTsNCkBAIC0xODEsNyArMTgyLDcgQEAgc3RhdGljIHZvaWQgKnRlZ3Jh
X2JvX21tYXAoc3RydWN0IGhvc3QxeF9ibyAqYm8pDQogCWlmIChvYmotPnZhZGRyKSB7DQogCQly
ZXR1cm4gb2JqLT52YWRkcjsNCiAJfSBlbHNlIGlmIChvYmotPmdlbS5pbXBvcnRfYXR0YWNoKSB7
DQotCQlyZXQgPSBkbWFfYnVmX3ZtYXAob2JqLT5nZW0uaW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCAm
bWFwKTsNCisJCXJldCA9IGRtYV9idWZfdm1hcF91bmxvY2tlZChvYmotPmdlbS5pbXBvcnRfYXR0
YWNoLT5kbWFidWYsICZtYXApOw0KIAkJcmV0dXJuIHJldCA/IE5VTEwgOiBtYXAudmFkZHI7DQog
CX0gZWxzZSB7DQogCQlyZXR1cm4gdm1hcChvYmotPnBhZ2VzLCBvYmotPm51bV9wYWdlcywgVk1f
TUFQLA0KQEAgLTE5Nyw3ICsxOTgsNyBAQCBzdGF0aWMgdm9pZCB0ZWdyYV9ib19tdW5tYXAoc3Ry
dWN0IGhvc3QxeF9ibyAqYm8sIHZvaWQgKmFkZHIpDQogCWlmIChvYmotPnZhZGRyKQ0KIAkJcmV0
dXJuOw0KIAllbHNlIGlmIChvYmotPmdlbS5pbXBvcnRfYXR0YWNoKQ0KLQkJZG1hX2J1Zl92dW5t
YXAob2JqLT5nZW0uaW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCAmbWFwKTsNCisJCWRtYV9idWZfdnVu
bWFwX3VubG9ja2VkKG9iai0+Z2VtLmltcG9ydF9hdHRhY2gtPmRtYWJ1ZiwgJm1hcCk7DQogCWVs
c2UNCiAJCXZ1bm1hcChhZGRyKTsNCiB9DQpAQCAtNDYxLDcgKzQ2Miw3IEBAIHN0YXRpYyBzdHJ1
Y3QgdGVncmFfYm8gKnRlZ3JhX2JvX2ltcG9ydChzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLA0KIA0K
IAlnZXRfZG1hX2J1ZihidWYpOw0KIA0KLQliby0+c2d0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVu
dChhdHRhY2gsIERNQV9UT19ERVZJQ0UpOw0KKwliby0+c2d0ID0gZG1hX2J1Zl9tYXBfYXR0YWNo
bWVudF91bmxvY2tlZChhdHRhY2gsIERNQV9UT19ERVZJQ0UpOw0KIAlpZiAoSVNfRVJSKGJvLT5z
Z3QpKSB7DQogCQllcnIgPSBQVFJfRVJSKGJvLT5zZ3QpOw0KIAkJZ290byBkZXRhY2g7DQpAQCAt
NDc5LDcgKzQ4MCw3IEBAIHN0YXRpYyBzdHJ1Y3QgdGVncmFfYm8gKnRlZ3JhX2JvX2ltcG9ydChz
dHJ1Y3QgZHJtX2RldmljZSAqZHJtLA0KIA0KIGRldGFjaDoNCiAJaWYgKCFJU19FUlJfT1JfTlVM
TChiby0+c2d0KSkNCi0JCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudChhdHRhY2gsIGJvLT5zZ3Qs
IERNQV9UT19ERVZJQ0UpOw0KKwkJZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkKGF0
dGFjaCwgYm8tPnNndCwgRE1BX1RPX0RFVklDRSk7DQogDQogCWRtYV9idWZfZGV0YWNoKGJ1Ziwg
YXR0YWNoKTsNCiAJZG1hX2J1Zl9wdXQoYnVmKTsNCkBAIC01MDgsOCArNTA5LDggQEAgdm9pZCB0
ZWdyYV9ib19mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmdlbSkNCiAJCXRlZ3Jh
X2JvX2lvbW11X3VubWFwKHRlZ3JhLCBibyk7DQogDQogCWlmIChnZW0tPmltcG9ydF9hdHRhY2gp
IHsNCi0JCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudChnZW0tPmltcG9ydF9hdHRhY2gsIGJvLT5z
Z3QsDQotCQkJCQkgRE1BX1RPX0RFVklDRSk7DQorCQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRf
dW5sb2NrZWQoZ2VtLT5pbXBvcnRfYXR0YWNoLCBiby0+c2d0LA0KKwkJCQkJCSAgRE1BX1RPX0RF
VklDRSk7DQogCQlkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3koZ2VtLCBOVUxMKTsNCiAJfSBlbHNlIHsN
CiAJCXRlZ3JhX2JvX2ZyZWUoZ2VtLT5kZXYsIGJvKTsNCi0tIA0KMi4zNy4zDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
