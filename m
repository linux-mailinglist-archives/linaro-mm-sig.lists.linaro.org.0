Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A927C6014C9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:24:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C07933EF81
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:24:51 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 44A1D3F499
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:24:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=D14SQhLa;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2F9B2660232A;
	Mon, 17 Oct 2022 18:24:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027456;
	bh=Ex3AyquhNB6SUyXxM39A6LQM86DSUXI6d8WILYiNDB4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=D14SQhLaDc3wymEhfQ7kLOLaTxtKSAiqblynz43C7tbL9D87TBKj9qtbPtRFBl5Ic
	 kvkmX9iLBEezccTFptMYfIZsAxP7NV4mdV6qTt+Lf3Ckfx6h1kPMZGVHErAzDSPl5F
	 P1D6fEHo10EcXP/Bipt6/vA++Ef96gT5IAOt6Aj40ir/ztZO4RQYBUBkohSMkXIFbx
	 WLQ5L+mUh9KjBkUe0zWKlm27XCOHUx7l+LZ6Pu0jBhzR1UzXVlzAEmfsnxx8Grpzmd
	 +KBvqdSOy6UATlaRldthV2/8tkSd2Qa2P/DOAMyCHnepVWOFc+PuG0157aUl6S2IIY
	 kEb5ReGRHuzpw==
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
Date: Mon, 17 Oct 2022 20:22:09 +0300
Message-Id: <20221017172229.42269-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 44A1D3F499
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
Message-ID-Hash: V3ECBS45ZE5RZ4OAJSUL4Z7Z6N6QHNL3
X-Message-ID-Hash: V3ECBS45ZE5RZ4OAJSUL4Z7Z6N6QHNL3
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 01/21] dma-buf: Add unlocked variant of vmapping functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V3ECBS45ZE5RZ4OAJSUL4Z7Z6N6QHNL3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkIHVubG9ja2VkIHZhcmlhbnQgb2YgZG1hX2J1Zl92bWFwL3Z1bm1hcCgpIHRoYXQgd2lsbCBi
ZSB1dGlsaXplZA0KYnkgZHJpdmVycyB0aGF0IGRvbid0IHRha2UgdGhlIHJlc2VydmF0aW9uIGxv
Y2sgZXhwbGljaXRseS4NCg0KQWNrZWQtYnk6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+DQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29A
Y29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA0MyArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiBpbmNsdWRlL2xpbnV4L2RtYS1i
dWYuaCAgIHwgIDIgKysNCiAyIGZpbGVzIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKykNCg0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jDQppbmRleCBlZmI0OTkwYjI5ZTEuLmU5NWZjOGRjM2FlZCAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMN
CkBAIC0xNDI1LDYgKzE0MjUsMzMgQEAgaW50IGRtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQogfQ0KIEVYUE9SVF9TWU1CT0xfTlNfR1BM
KGRtYV9idWZfdm1hcCwgRE1BX0JVRik7DQogDQorLyoqDQorICogZG1hX2J1Zl92bWFwX3VubG9j
a2VkIC0gQ3JlYXRlIHZpcnR1YWwgbWFwcGluZyBmb3IgdGhlIGJ1ZmZlciBvYmplY3QgaW50byBr
ZXJuZWwNCisgKiBhZGRyZXNzIHNwYWNlLiBTYW1lIHJlc3RyaWN0aW9ucyBhcyBmb3Igdm1hcCBh
bmQgZnJpZW5kcyBhcHBseS4NCisgKiBAZG1hYnVmOglbaW5dCWJ1ZmZlciB0byB2bWFwDQorICog
QG1hcDoJW291dF0JcmV0dXJucyB0aGUgdm1hcCBwb2ludGVyDQorICoNCisgKiBVbmxvY2tlZCB2
ZXJzaW9uIG9mIGRtYV9idWZfdm1hcCgpDQorICoNCisgKiBSZXR1cm5zIDAgb24gc3VjY2Vzcywg
b3IgYSBuZWdhdGl2ZSBlcnJubyBjb2RlIG90aGVyd2lzZS4NCisgKi8NCitpbnQgZG1hX2J1Zl92
bWFwX3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1h
cCkNCit7DQorCWludCByZXQ7DQorDQorCWlvc3lzX21hcF9jbGVhcihtYXApOw0KKw0KKwlpZiAo
V0FSTl9PTighZG1hYnVmKSkNCisJCXJldHVybiAtRUlOVkFMOw0KKw0KKwlkbWFfcmVzdl9sb2Nr
KGRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQorCXJldCA9IGRtYV9idWZfdm1hcChkbWFidWYsIG1hcCk7
DQorCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOw0KKw0KKwlyZXR1cm4gcmV0Ow0KK30N
CitFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3ZtYXBfdW5sb2NrZWQsIERNQV9CVUYpOw0K
Kw0KIC8qKg0KICAqIGRtYV9idWZfdnVubWFwIC0gVW5tYXAgYSB2bWFwIG9idGFpbmVkIGJ5IGRt
YV9idWZfdm1hcC4NCiAgKiBAZG1hYnVmOglbaW5dCWJ1ZmZlciB0byB2dW5tYXANCkBAIC0xNDQ5
LDYgKzE0NzYsMjIgQEAgdm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
LCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQogfQ0KIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9i
dWZfdnVubWFwLCBETUFfQlVGKTsNCiANCisvKioNCisgKiBkbWFfYnVmX3Z1bm1hcF91bmxvY2tl
ZCAtIFVubWFwIGEgdm1hcCBvYnRhaW5lZCBieSBkbWFfYnVmX3ZtYXAuDQorICogQGRtYWJ1ZjoJ
W2luXQlidWZmZXIgdG8gdnVubWFwDQorICogQG1hcDoJW2luXQl2bWFwIHBvaW50ZXIgdG8gdnVu
bWFwDQorICovDQordm9pZCBkbWFfYnVmX3Z1bm1hcF91bmxvY2tlZChzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQorew0KKwlpZiAoV0FSTl9PTighZG1hYnVm
KSkNCisJCXJldHVybjsNCisNCisJZG1hX3Jlc3ZfbG9jayhkbWFidWYtPnJlc3YsIE5VTEwpOw0K
KwlkbWFfYnVmX3Z1bm1hcChkbWFidWYsIG1hcCk7DQorCWRtYV9yZXN2X3VubG9jayhkbWFidWYt
PnJlc3YpOw0KK30NCitFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3Z1bm1hcF91bmxvY2tl
ZCwgRE1BX0JVRik7DQorDQogI2lmZGVmIENPTkZJR19ERUJVR19GUw0KIHN0YXRpYyBpbnQgZG1h
X2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqdW51c2VkKQ0KIHsNCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oDQppbmRleCA3MTczMTc5NmM4YzMuLjhkYWEwNTRkZDdmZSAxMDA2NDQNCi0tLSBhL2luY2x1
ZGUvbGludXgvZG1hLWJ1Zi5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KQEAgLTYz
Miw0ICs2MzIsNiBAQCBpbnQgZG1hX2J1Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICosIHN0cnVjdCB2
bV9hcmVhX3N0cnVjdCAqLA0KIAkJIHVuc2lnbmVkIGxvbmcpOw0KIGludCBkbWFfYnVmX3ZtYXAo
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKTsNCiB2b2lkIGRt
YV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1h
cCk7DQoraW50IGRtYV9idWZfdm1hcF91bmxvY2tlZChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBz
dHJ1Y3QgaW9zeXNfbWFwICptYXApOw0KK3ZvaWQgZG1hX2J1Zl92dW5tYXBfdW5sb2NrZWQoc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKTsNCiAjZW5kaWYgLyog
X19ETUFfQlVGX0hfXyAqLw0KLS0gDQoyLjM3LjMNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
