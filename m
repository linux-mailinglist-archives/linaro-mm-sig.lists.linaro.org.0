Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3865EE57D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:23:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06E4E3F487
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:23:36 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 7B2B23F5BE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:18:22 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BB23466022C4;
	Wed, 28 Sep 2022 20:18:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392701;
	bh=89/65f/dDy+eASrj3PX7nWokVxmv9ZpmtoFT7wYq/aE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=abP6CtWU9WWWHjvSe2Ygdq+MLjfMh95HR0FMwBvJ7q4vJqbb8xRVkEWMRReWS2R6J
	 CVJ6RyC/neUsRVNH/OhRlO1DPx9CZ0akB2JrW+LoIf/Ua/DbBX5OoVcGtNmKaUp28+
	 lp8lmmVdanhZdxDXVdw/ER6wzpik6+fcTY1MLWw3Esj0WMz3eQ88fVOl+mZSaRo0uT
	 ozryYQt5ZZz3t9kmaL1ZCDpGk1mhhW1fuyIgxGgaBvS8jUQC2mEnnnlkH0Bw5M3xDA
	 4MDhaQFZ2jDwol9cncESUNyNnfByN4KukK+SR2By2AJ1NLuJc0I5l0kA9sNpXEYC22
	 3SptQpreSo7/w==
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
Date: Wed, 28 Sep 2022 22:15:57 +0300
Message-Id: <20220928191600.5874-19-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 7B2B23F5BE
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
	URIBL_BLOCKED(0.00)[collabora.com:email,collabora.com:dkim,linaro.org:email,amd.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=abP6CtWU;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: LORQWBQ7PVP3YHIAADQKBVPZKNXCBSPJ
X-Message-ID-Hash: LORQWBQ7PVP3YHIAADQKBVPZKNXCBSPJ
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 18/21] dma-buf: Move dma_buf_mmap() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LORQWBQ7PVP3YHIAADQKBVPZKNXCBSPJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TW92ZSBkbWFfYnVmX21tYXAoKSBmdW5jdGlvbiB0byB0aGUgZHluYW1pYyBsb2NraW5nIHNwZWNp
ZmljYXRpb24gYnkNCnRha2luZyB0aGUgcmVzZXJ2YXRpb24gbG9jay4gTmVpdGhlciBvZiB0aGUg
dG9kYXkncyBkcml2ZXJzIHRha2UgdGhlDQpyZXNlcnZhdGlvbiBsb2NrIHdpdGhpbiB0aGUgbW1h
cCgpIGNhbGxiYWNrLCBoZW5jZSBpdCdzIHNhZmUgdG8gZW5mb3JjZQ0KdGhlIGxvY2tpbmcuDQoN
CkFja2VkLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQWNrZWQt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1v
ZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQot
LS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgOCArKysrKysrLQ0KIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCBi
ZmY1YTcwYjg3MzUuLjI0NTJiNGM4MjU4NCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCkBAIC0xMzkwLDYgKzEz
OTAsOCBAQCBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX2VuZF9jcHVfYWNjZXNzLCBETUFf
QlVGKTsNCiBpbnQgZG1hX2J1Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2
bV9hcmVhX3N0cnVjdCAqdm1hLA0KIAkJIHVuc2lnbmVkIGxvbmcgcGdvZmYpDQogew0KKwlpbnQg
cmV0Ow0KKw0KIAlpZiAoV0FSTl9PTighZG1hYnVmIHx8ICF2bWEpKQ0KIAkJcmV0dXJuIC1FSU5W
QUw7DQogDQpAQCAtMTQxMCw3ICsxNDEyLDExIEBAIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRt
YV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsDQogCXZtYV9zZXRfZmls
ZSh2bWEsIGRtYWJ1Zi0+ZmlsZSk7DQogCXZtYS0+dm1fcGdvZmYgPSBwZ29mZjsNCiANCi0JcmV0
dXJuIGRtYWJ1Zi0+b3BzLT5tbWFwKGRtYWJ1Ziwgdm1hKTsNCisJZG1hX3Jlc3ZfbG9jayhkbWFi
dWYtPnJlc3YsIE5VTEwpOw0KKwlyZXQgPSBkbWFidWYtPm9wcy0+bW1hcChkbWFidWYsIHZtYSk7
DQorCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOw0KKw0KKwlyZXR1cm4gcmV0Ow0KIH0N
CiBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX21tYXAsIERNQV9CVUYpOw0KIA0KLS0gDQoy
LjM3LjMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
