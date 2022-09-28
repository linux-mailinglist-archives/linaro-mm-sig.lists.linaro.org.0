Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4E35EE575
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:21:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A62373F48E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:21:01 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 845023EF2F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:17:56 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C14EC660229B;
	Wed, 28 Sep 2022 20:17:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392675;
	bh=d4kuxWWfCXJ7AC6vJtgzZbHEhy+iIaxiq8Yot3IE+C4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QZUn3sS5mpeJ9rfZUxDSPGBk76y+42iVQT5pycyiUXbtxp+NhtOuwIlDaz4IMCQbS
	 Lz/feTWmHNHuGgGIy8AraB53nuUo4WaNWh+BdyMeiWoBmcbMAJJbEDO3stkWA/2poR
	 sfHokuDEq9J8MFyLYqOxKOhBeqKfLZH+jEChDaDOC71g11aQ6hP4tccgs4zFbqaI1a
	 23xNQyE7z2SBq9vYcxs3sg1j1b47sw+5AOEPtpEnUaY3VHlSyCwp+6t61WXa1qxCnM
	 05T44ryddZ4zczXyU11rMxHidWBznkTP9BAcJ8bxZ1U95utkAna/j9KV51Uf2INJ06
	 goNyAV6XXzwnA==
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
Date: Wed, 28 Sep 2022 22:15:49 +0300
Message-Id: <20220928191600.5874-11-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 845023EF2F
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
	dkim=pass header.d=collabora.com header.s=mail header.b=QZUn3sS5;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: 25RONBHJJEKEBVXGZH3SSEA6P5X3ZY6E
X-Message-ID-Hash: 25RONBHJJEKEBVXGZH3SSEA6P5X3ZY6E
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 10/21] RDMA/umem: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/25RONBHJJEKEBVXGZH3SSEA6P5X3ZY6E/>
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
b25zIG9mIGRtYS1idWYgQVBJDQpmdW5jdGlvbnMuDQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3Np
cGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KLS0tDQogZHJpdmVycy9pbmZp
bmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYyB8IDcgKysrKy0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lu
ZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jIGIvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1l
bV9kbWFidWYuYw0KaW5kZXggMDRjMDRlNmQyNGMzLi40M2IyNmJjMTIyODggMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jDQorKysgYi9kcml2ZXJzL2lu
ZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jDQpAQCAtMjYsNyArMjYsOCBAQCBpbnQgaWJfdW1l
bV9kbWFidWZfbWFwX3BhZ2VzKHN0cnVjdCBpYl91bWVtX2RtYWJ1ZiAqdW1lbV9kbWFidWYpDQog
CWlmICh1bWVtX2RtYWJ1Zi0+c2d0KQ0KIAkJZ290byB3YWl0X2ZlbmNlOw0KIA0KLQlzZ3QgPSBk
bWFfYnVmX21hcF9hdHRhY2htZW50KHVtZW1fZG1hYnVmLT5hdHRhY2gsIERNQV9CSURJUkVDVElP
TkFMKTsNCisJc2d0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZCh1bWVtX2RtYWJ1
Zi0+YXR0YWNoLA0KKwkJCQkJICAgICAgRE1BX0JJRElSRUNUSU9OQUwpOw0KIAlpZiAoSVNfRVJS
KHNndCkpDQogCQlyZXR1cm4gUFRSX0VSUihzZ3QpOw0KIA0KQEAgLTEwMiw4ICsxMDMsOCBAQCB2
b2lkIGliX3VtZW1fZG1hYnVmX3VubWFwX3BhZ2VzKHN0cnVjdCBpYl91bWVtX2RtYWJ1ZiAqdW1l
bV9kbWFidWYpDQogCQl1bWVtX2RtYWJ1Zi0+bGFzdF9zZ190cmltID0gMDsNCiAJfQ0KIA0KLQlk
bWFfYnVmX3VubWFwX2F0dGFjaG1lbnQodW1lbV9kbWFidWYtPmF0dGFjaCwgdW1lbV9kbWFidWYt
PnNndCwNCi0JCQkJIERNQV9CSURJUkVDVElPTkFMKTsNCisJZG1hX2J1Zl91bm1hcF9hdHRhY2ht
ZW50X3VubG9ja2VkKHVtZW1fZG1hYnVmLT5hdHRhY2gsIHVtZW1fZG1hYnVmLT5zZ3QsDQorCQkJ
CQkgIERNQV9CSURJUkVDVElPTkFMKTsNCiANCiAJdW1lbV9kbWFidWYtPnNndCA9IE5VTEw7DQog
fQ0KLS0gDQoyLjM3LjMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
