Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF395B7AC3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:28:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E54D479FC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:28:28 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id EB2CF47ED9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:28:24 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1C6BD6601FF3;
	Tue, 13 Sep 2022 20:28:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097304;
	bh=mnsF4itAcjxMZ7Y+ou+YAYmIw6q3Jf/Et803MK4hUaY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bljcR8ER8uIpURFnLb/Q4fLc9IK946F+5y8WQoLmBd3mZs5Z4akxI3pnk1vX55Vw3
	 66R/vRjhcmC8M87UzZUf1jGCJ9aZFRXFc6Wdl6aO35cGRDGopYeJUBEIjBDy84soLH
	 j96a6t+v0jfMAJnl7yHMTtWH8AlPmGfVJ2Bh1qQzmvbmpqRs4RP6cvDtkhq8M45XV9
	 lB3/FZu3DMYSd5a9spzFVJSTwWe0FwkrHjZM1RRp19NI8Wxeg4ptweG9GbrXwVXKs+
	 KJNaOp8zEL1Mpi5BQTQy4unKOQ9edCQG9Ju5uGietckpBfJj1vMHUcixHdtXNJuipg
	 ipWo3p+avUh/w==
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
Date: Tue, 13 Sep 2022 22:27:37 +0300
Message-Id: <20220913192757.37727-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: O6U4SG6Y5OFIXA6TYTMST6Y7KT5VDFRL
X-Message-ID-Hash: O6U4SG6Y5OFIXA6TYTMST6Y7KT5VDFRL
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 01/21] dma-buf: Add unlocked variant of vmapping functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O6U4SG6Y5OFIXA6TYTMST6Y7KT5VDFRL/>
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
Y2sgZXhwbGljaXRseS4NCg0KQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9z
aXBlbmtvQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwg
MzggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiBpbmNsdWRlL2xpbnV4
L2RtYS1idWYuaCAgIHwgIDIgKysNCiAyIGZpbGVzIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKykN
Cg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jDQppbmRleCBkZDBmODNlZTUwNWIuLjA3ODgwYTM0ZTM2NyAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMNCkBAIC0xNDI1LDYgKzE0MjUsMjggQEAgaW50IGRtYV9idWZfdm1hcChzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQogfQ0KIEVYUE9SVF9TWU1CT0xf
TlNfR1BMKGRtYV9idWZfdm1hcCwgRE1BX0JVRik7DQogDQorLyoqDQorICogZG1hX2J1Zl92bWFw
X3VubG9ja2VkIC0gQ3JlYXRlIHZpcnR1YWwgbWFwcGluZyBmb3IgdGhlIGJ1ZmZlciBvYmplY3Qg
aW50byBrZXJuZWwNCisgKiBhZGRyZXNzIHNwYWNlLiBTYW1lIHJlc3RyaWN0aW9ucyBhcyBmb3Ig
dm1hcCBhbmQgZnJpZW5kcyBhcHBseS4NCisgKiBAZG1hYnVmOglbaW5dCWJ1ZmZlciB0byB2bWFw
DQorICogQG1hcDoJW291dF0JcmV0dXJucyB0aGUgdm1hcCBwb2ludGVyDQorICoNCisgKiBVbmxv
Y2tlZCB2ZXJzaW9uIG9mIGRtYV9idWZfdm1hcCgpDQorICoNCisgKiBSZXR1cm5zIDAgb24gc3Vj
Y2Vzcywgb3IgYSBuZWdhdGl2ZSBlcnJubyBjb2RlIG90aGVyd2lzZS4NCisgKi8NCitpbnQgZG1h
X2J1Zl92bWFwX3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19t
YXAgKm1hcCkNCit7DQorCWludCByZXQ7DQorDQorCWRtYV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2
LCBOVUxMKTsNCisJcmV0ID0gZG1hX2J1Zl92bWFwKGRtYWJ1ZiwgbWFwKTsNCisJZG1hX3Jlc3Zf
dW5sb2NrKGRtYWJ1Zi0+cmVzdik7DQorDQorCXJldHVybiByZXQ7DQorfQ0KK0VYUE9SVF9TWU1C
T0xfTlNfR1BMKGRtYV9idWZfdm1hcF91bmxvY2tlZCwgRE1BX0JVRik7DQorDQogLyoqDQogICog
ZG1hX2J1Zl92dW5tYXAgLSBVbm1hcCBhIHZtYXAgb2J0YWluZWQgYnkgZG1hX2J1Zl92bWFwLg0K
ICAqIEBkbWFidWY6CVtpbl0JYnVmZmVyIHRvIHZ1bm1hcA0KQEAgLTE0NDksNiArMTQ3MSwyMiBA
QCB2b2lkIGRtYV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5
c19tYXAgKm1hcCkNCiB9DQogRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl92dW5tYXAsIERN
QV9CVUYpOw0KIA0KKy8qKg0KKyAqIGRtYV9idWZfdnVubWFwX3VubG9ja2VkIC0gVW5tYXAgYSB2
bWFwIG9idGFpbmVkIGJ5IGRtYV9idWZfdm1hcC4NCisgKiBAZG1hYnVmOglbaW5dCWJ1ZmZlciB0
byB2dW5tYXANCisgKiBAbWFwOglbaW5dCXZtYXAgcG9pbnRlciB0byB2dW5tYXANCisgKi8NCit2
b2lkIGRtYV9idWZfdnVubWFwX3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVj
dCBpb3N5c19tYXAgKm1hcCkNCit7DQorCWlmIChXQVJOX09OKCFkbWFidWYpKQ0KKwkJcmV0dXJu
Ow0KKw0KKwlkbWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQorCWRtYV9idWZfdnVu
bWFwKGRtYWJ1ZiwgbWFwKTsNCisJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7DQorfQ0K
K0VYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfdnVubWFwX3VubG9ja2VkLCBETUFfQlVGKTsN
CisNCiAjaWZkZWYgQ09ORklHX0RFQlVHX0ZTDQogc3RhdGljIGludCBkbWFfYnVmX2RlYnVnX3No
b3coc3RydWN0IHNlcV9maWxlICpzLCB2b2lkICp1bnVzZWQpDQogew0KZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCmluZGV4IDcx
NzMxNzk2YzhjMy4uOGRhYTA1NGRkN2ZlIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEt
YnVmLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQpAQCAtNjMyLDQgKzYzMiw2IEBA
IGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRtYV9idWYgKiwgc3RydWN0IHZtX2FyZWFfc3RydWN0
ICosDQogCQkgdW5zaWduZWQgbG9uZyk7DQogaW50IGRtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApOw0KIHZvaWQgZG1hX2J1Zl92dW5tYXAo
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKTsNCitpbnQgZG1h
X2J1Zl92bWFwX3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19t
YXAgKm1hcCk7DQordm9pZCBkbWFfYnVmX3Z1bm1hcF91bmxvY2tlZChzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApOw0KICNlbmRpZiAvKiBfX0RNQV9CVUZfSF9f
ICovDQotLSANCjIuMzcuMw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
