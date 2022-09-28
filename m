Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4885EE561
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:20:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31D093F511
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:20:03 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id CDD323F1AA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:17:46 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2A7FE66022A4;
	Wed, 28 Sep 2022 20:17:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392666;
	bh=GhuscwhnN1rEaoy5OISonfRJMlLjonYkZBtE9HRenG4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OJ0U+lamcF7LAddINuNf8cOQJ6z488e1xmvZSzIBtAdooc9ejQKN1iOM6EpYG/Pvn
	 DHUYNxXnyn+f76zW23i7uyafHIag0C8HOvy251NAKrnQVwPAISJdCq2ThCdpXC/zNS
	 e8qFiuDFpSelR3jk4Iii6DeXPPDYqsRiJumS9bu2UvqQaspWJmmc2PIUWMkU5bPbh9
	 wMivJyU03uUy4nS+949BJXA0PM0kK8aKrhMKfud436cM+QjV/0DwnKuXXXycNjyP+K
	 TT43ksow+oqssic0fahMiXRGT7HKPk8QIpZTUKXYnlU0KcLT4mhEy+LDCSizU1rXhE
	 oTUFLWlt8O+cw==
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
Date: Wed, 28 Sep 2022 22:15:46 +0300
Message-Id: <20220928191600.5874-8-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: CDD323F1AA
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
	dkim=pass header.d=collabora.com header.s=mail header.b=OJ0U+lam;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: AAIPM5TMZUAEDQ2JWQCZXLSHFRK3XGCS
X-Message-ID-Hash: AAIPM5TMZUAEDQ2JWQCZXLSHFRK3XGCS
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 07/21] drm/omapdrm: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AAIPM5TMZUAEDQ2JWQCZXLSHFRK3XGCS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBPTUFQIERSTSBkcml2ZXIgdG8gdGhlIGNvbW1vbiBkeW5hbWljIGRtYS1idWYgbG9j
a2luZyBjb252ZW50aW9uDQpieSBzdGFydGluZyB0byB1c2UgdGhlIHVubG9ja2VkIHZlcnNpb25z
IG9mIGRtYS1idWYgQVBJIGZ1bmN0aW9ucy4NCg0KQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5r
byA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0v
b21hcGRybS9vbWFwX2dlbV9kbWFidWYuYyB8IDQgKystLQ0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vb21hcGRybS9vbWFwX2dlbV9kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29t
YXBfZ2VtX2RtYWJ1Zi5jDQppbmRleCAzOTNmODJlMjY5MjcuLjhlMTk0ZGJjOTUwNiAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtX2RtYWJ1Zi5jDQorKysgYi9k
cml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbV9kbWFidWYuYw0KQEAgLTEyNSw3ICsxMjUs
NyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9tYXBfZ2VtX3ByaW1lX2ltcG9ydChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LA0KIA0KIAlnZXRfZG1hX2J1ZihkbWFfYnVmKTsNCiANCi0Jc2d0ID0g
ZG1hX2J1Zl9tYXBfYXR0YWNobWVudChhdHRhY2gsIERNQV9UT19ERVZJQ0UpOw0KKwlzZ3QgPSBk
bWFfYnVmX21hcF9hdHRhY2htZW50X3VubG9ja2VkKGF0dGFjaCwgRE1BX1RPX0RFVklDRSk7DQog
CWlmIChJU19FUlIoc2d0KSkgew0KIAkJcmV0ID0gUFRSX0VSUihzZ3QpOw0KIAkJZ290byBmYWls
X2RldGFjaDsNCkBAIC0xNDIsNyArMTQyLDcgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvbWFw
X2dlbV9wcmltZV9pbXBvcnQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCiAJcmV0dXJuIG9iajsN
CiANCiBmYWlsX3VubWFwOg0KLQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoYXR0YWNoLCBzZ3Qs
IERNQV9UT19ERVZJQ0UpOw0KKwlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoYXR0
YWNoLCBzZ3QsIERNQV9UT19ERVZJQ0UpOw0KIGZhaWxfZGV0YWNoOg0KIAlkbWFfYnVmX2RldGFj
aChkbWFfYnVmLCBhdHRhY2gpOw0KIAlkbWFfYnVmX3B1dChkbWFfYnVmKTsNCi0tIA0KMi4zNy4z
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
