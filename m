Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B68E25EE4F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:18:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF57F3F467
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:18:06 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 3B8ED3F495
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:17:27 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2EA5B660229B;
	Wed, 28 Sep 2022 20:17:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392646;
	bh=1NrFDIEY1QfZG+NOs9U3CRZxTNDXg8WRHwv6i/q1kjI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DLonZI1p5RO7z29nQcfnwZ4Uh3QAepEY5afS1MjchFx4P4yJjxoTlUn4XGSHvpRjb
	 b4J7zYFunbpdhxZZ4E0PQAh0iWIth2XLL1Xkuf1Z42nX5sklsaArpTDjvNrp6EMsfa
	 ++y/x2066VwYKp2hc9YjTNkUsRJzRjspAr3vKXbH75nvCSl4JpT45i2gJWjFCUzP4i
	 Si50eAmbVqxcDVbRhHMoqlN64fUM3AH/rFuRCzyfmM/EBm3GngeuFjMZAochzIY0DF
	 WNCWsUNF4V0c8GMOjqICW1yJ1wJEX/03A2HFdOqejKP3UFEzMhMKYqb74gfPRp4FLl
	 Z4CLF/eH3lxpw==
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
Date: Wed, 28 Sep 2022 22:15:40 +0300
Message-Id: <20220928191600.5874-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 3B8ED3F495
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
	URIBL_BLOCKED(0.00)[linaro.org:email,amd.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=DLonZI1p;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: MSWTRTM6G7OXVLZXQ7ANKPBS3TXLD2AE
X-Message-ID-Hash: MSWTRTM6G7OXVLZXQ7ANKPBS3TXLD2AE
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 01/21] dma-buf: Add unlocked variant of vmapping functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MSWTRTM6G7OXVLZXQ7ANKPBS3TXLD2AE/>
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
Y29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA0MSArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiBpbmNsdWRlL2xpbnV4L2RtYS1i
dWYuaCAgIHwgIDIgKysNCiAyIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKykNCg0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jDQppbmRleCBkZDBmODNlZTUwNWIuLjA0MjdmM2I4ODE3MCAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMN
CkBAIC0xNDI1LDYgKzE0MjUsMzEgQEAgaW50IGRtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQogfQ0KIEVYUE9SVF9TWU1CT0xfTlNfR1BM
KGRtYV9idWZfdm1hcCwgRE1BX0JVRik7DQogDQorLyoqDQorICogZG1hX2J1Zl92bWFwX3VubG9j
a2VkIC0gQ3JlYXRlIHZpcnR1YWwgbWFwcGluZyBmb3IgdGhlIGJ1ZmZlciBvYmplY3QgaW50byBr
ZXJuZWwNCisgKiBhZGRyZXNzIHNwYWNlLiBTYW1lIHJlc3RyaWN0aW9ucyBhcyBmb3Igdm1hcCBh
bmQgZnJpZW5kcyBhcHBseS4NCisgKiBAZG1hYnVmOglbaW5dCWJ1ZmZlciB0byB2bWFwDQorICog
QG1hcDoJW291dF0JcmV0dXJucyB0aGUgdm1hcCBwb2ludGVyDQorICoNCisgKiBVbmxvY2tlZCB2
ZXJzaW9uIG9mIGRtYV9idWZfdm1hcCgpDQorICoNCisgKiBSZXR1cm5zIDAgb24gc3VjY2Vzcywg
b3IgYSBuZWdhdGl2ZSBlcnJubyBjb2RlIG90aGVyd2lzZS4NCisgKi8NCitpbnQgZG1hX2J1Zl92
bWFwX3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1h
cCkNCit7DQorCWludCByZXQ7DQorDQorCWlmIChXQVJOX09OKCFkbWFidWYpKQ0KKwkJcmV0dXJu
IC1FSU5WQUw7DQorDQorCWRtYV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCBOVUxMKTsNCisJcmV0
ID0gZG1hX2J1Zl92bWFwKGRtYWJ1ZiwgbWFwKTsNCisJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+
cmVzdik7DQorDQorCXJldHVybiByZXQ7DQorfQ0KK0VYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9i
dWZfdm1hcF91bmxvY2tlZCwgRE1BX0JVRik7DQorDQogLyoqDQogICogZG1hX2J1Zl92dW5tYXAg
LSBVbm1hcCBhIHZtYXAgb2J0YWluZWQgYnkgZG1hX2J1Zl92bWFwLg0KICAqIEBkbWFidWY6CVtp
bl0JYnVmZmVyIHRvIHZ1bm1hcA0KQEAgLTE0NDksNiArMTQ3NCwyMiBAQCB2b2lkIGRtYV9idWZf
dnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCiB9
DQogRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl92dW5tYXAsIERNQV9CVUYpOw0KIA0KKy8q
Kg0KKyAqIGRtYV9idWZfdnVubWFwX3VubG9ja2VkIC0gVW5tYXAgYSB2bWFwIG9idGFpbmVkIGJ5
IGRtYV9idWZfdm1hcC4NCisgKiBAZG1hYnVmOglbaW5dCWJ1ZmZlciB0byB2dW5tYXANCisgKiBA
bWFwOglbaW5dCXZtYXAgcG9pbnRlciB0byB2dW5tYXANCisgKi8NCit2b2lkIGRtYV9idWZfdnVu
bWFwX3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1h
cCkNCit7DQorCWlmIChXQVJOX09OKCFkbWFidWYpKQ0KKwkJcmV0dXJuOw0KKw0KKwlkbWFfcmVz
dl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQorCWRtYV9idWZfdnVubWFwKGRtYWJ1ZiwgbWFw
KTsNCisJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7DQorfQ0KK0VYUE9SVF9TWU1CT0xf
TlNfR1BMKGRtYV9idWZfdnVubWFwX3VubG9ja2VkLCBETUFfQlVGKTsNCisNCiAjaWZkZWYgQ09O
RklHX0RFQlVHX0ZTDQogc3RhdGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3coc3RydWN0IHNlcV9m
aWxlICpzLCB2b2lkICp1bnVzZWQpDQogew0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1h
LWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCmluZGV4IDcxNzMxNzk2YzhjMy4uOGRh
YTA1NGRkN2ZlIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCisrKyBiL2lu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQpAQCAtNjMyLDQgKzYzMiw2IEBAIGludCBkbWFfYnVmX21t
YXAoc3RydWN0IGRtYV9idWYgKiwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICosDQogCQkgdW5zaWdu
ZWQgbG9uZyk7DQogaW50IGRtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1
Y3QgaW9zeXNfbWFwICptYXApOw0KIHZvaWQgZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRtYV9idWYg
KmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKTsNCitpbnQgZG1hX2J1Zl92bWFwX3VubG9j
a2VkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCk7DQordm9p
ZCBkbWFfYnVmX3Z1bm1hcF91bmxvY2tlZChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qg
aW9zeXNfbWFwICptYXApOw0KICNlbmRpZiAvKiBfX0RNQV9CVUZfSF9fICovDQotLSANCjIuMzcu
Mw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
