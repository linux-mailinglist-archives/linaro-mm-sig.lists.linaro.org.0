Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD37D5A81B8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Aug 2022 17:40:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0080543F49
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Aug 2022 15:40:58 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 2E48043F49
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Aug 2022 15:40:21 +0000 (UTC)
Received: from dimapc.. (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 839826601E58;
	Wed, 31 Aug 2022 16:40:17 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661960420;
	bh=X6+cHdBcYoofQ/ea0HJ3XSrd+3wQc+6k4P4KoLaHXmw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CvPSAXgoUaJptHhz6ntZ4HfZFNqNSVu8Uhx5gdFZizZ5wNTkZ2TXBgjmGArOrzTsI
	 EX9IGJoD7YNYICqH7CJHWIxcjxFsSnNnZT5QCOBFfcaSmA0LimW8vw3n3ZyJC/PM1K
	 bkSvcksN8TvjoiXsx4l+vd639Gt/kebvz9P5mKcxDq+5ZgvMnVu+arcqSEfMx4O1Y2
	 j6iSkn4FYOTBtofQYDS0bqMvMZZLmuZhXl3t9SS9owkRGwdUJP3UqeSo4gWyidJtx6
	 MNksLlFbKwY9PCs714XVdEo80iZJRuAetN/bj97toAQ7rh2a87KOpIqcsLtBCHPN0f
	 UJs0gPbPXdJWg==
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
	Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Wed, 31 Aug 2022 18:37:57 +0300
Message-Id: <20220831153757.97381-22-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: IEWUNTN6JUR5BKKGQFDGC3UQVXBBGT7U
X-Message-ID-Hash: IEWUNTN6JUR5BKKGQFDGC3UQVXBBGT7U
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 21/21] dma-buf: Remove obsoleted internal lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IEWUNTN6JUR5BKKGQFDGC3UQVXBBGT7U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGludGVybmFsIGRtYS1idWYgbG9jayBpc24ndCBuZWVkZWQgYW55bW9yZSBiZWNhdXNlIHRo
ZSB1cGRhdGVkDQpsb2NraW5nIHNwZWNpZmljYXRpb24gY2xhaW1zIHRoYXQgZG1hLWJ1ZiByZXNl
cnZhdGlvbiBtdXN0IGJlIGxvY2tlZA0KYnkgaW1wb3J0ZXJzLCBhbmQgdGh1cywgdGhlIGludGVy
bmFsIGRhdGEgaXMgYWxyZWFkeSBwcm90ZWN0ZWQgYnkgdGhlDQpyZXNlcnZhdGlvbiBsb2NrLiBS
ZW1vdmUgdGhlIG9ic29sZXRlZCBpbnRlcm5hbCBsb2NrLg0KDQpBY2tlZC1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5
IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxNCArKysrLS0tLS0tLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1h
LWJ1Zi5oICAgfCAgOSAtLS0tLS0tLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMTkgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggOTdjZTg4NGZhZDc2Li43NzJm
ZGQ5ZWVlZDggMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQorKysgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtNjU2LDcgKzY1Niw2IEBAIHN0cnVjdCBkbWFf
YnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhw
X2luZm8pDQogDQogCWRtYWJ1Zi0+ZmlsZSA9IGZpbGU7DQogDQotCW11dGV4X2luaXQoJmRtYWJ1
Zi0+bG9jayk7DQogCUlOSVRfTElTVF9IRUFEKCZkbWFidWYtPmF0dGFjaG1lbnRzKTsNCiANCiAJ
bXV0ZXhfbG9jaygmZGJfbGlzdC5sb2NrKTsNCkBAIC0xNTAyLDcgKzE1MDEsNyBAQCBFWFBPUlRf
U1lNQk9MX05TX0dQTChkbWFfYnVmX21tYXAsIERNQV9CVUYpOw0KIGludCBkbWFfYnVmX3ZtYXAo
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KIHsNCiAJc3Ry
dWN0IGlvc3lzX21hcCBwdHI7DQotCWludCByZXQgPSAwOw0KKwlpbnQgcmV0Ow0KIA0KIAlpb3N5
c19tYXBfY2xlYXIobWFwKTsNCiANCkBAIC0xNTE0LDI4ICsxNTEzLDI1IEBAIGludCBkbWFfYnVm
X3ZtYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KIAlp
ZiAoIWRtYWJ1Zi0+b3BzLT52bWFwKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQogDQotCW11dGV4X2xv
Y2soJmRtYWJ1Zi0+bG9jayk7DQogCWlmIChkbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIpIHsNCiAJ
CWRtYWJ1Zi0+dm1hcHBpbmdfY291bnRlcisrOw0KIAkJQlVHX09OKGlvc3lzX21hcF9pc19udWxs
KCZkbWFidWYtPnZtYXBfcHRyKSk7DQogCQkqbWFwID0gZG1hYnVmLT52bWFwX3B0cjsNCi0JCWdv
dG8gb3V0X3VubG9jazsNCisJCXJldHVybiAwOw0KIAl9DQogDQogCUJVR19PTihpb3N5c19tYXBf
aXNfc2V0KCZkbWFidWYtPnZtYXBfcHRyKSk7DQogDQogCXJldCA9IGRtYWJ1Zi0+b3BzLT52bWFw
KGRtYWJ1ZiwgJnB0cik7DQogCWlmIChXQVJOX09OX09OQ0UocmV0KSkNCi0JCWdvdG8gb3V0X3Vu
bG9jazsNCisJCXJldHVybiByZXQ7DQogDQogCWRtYWJ1Zi0+dm1hcF9wdHIgPSBwdHI7DQogCWRt
YWJ1Zi0+dm1hcHBpbmdfY291bnRlciA9IDE7DQogDQogCSptYXAgPSBkbWFidWYtPnZtYXBfcHRy
Ow0KIA0KLW91dF91bmxvY2s6DQotCW11dGV4X3VubG9jaygmZG1hYnVmLT5sb2NrKTsNCi0JcmV0
dXJuIHJldDsNCisJcmV0dXJuIDA7DQogfQ0KIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZf
dm1hcCwgRE1BX0JVRik7DQogDQpAQCAtMTU3NywxMyArMTU3MywxMSBAQCB2b2lkIGRtYV9idWZf
dnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCiAJ
QlVHX09OKGRtYWJ1Zi0+dm1hcHBpbmdfY291bnRlciA9PSAwKTsNCiAJQlVHX09OKCFpb3N5c19t
YXBfaXNfZXF1YWwoJmRtYWJ1Zi0+dm1hcF9wdHIsIG1hcCkpOw0KIA0KLQltdXRleF9sb2NrKCZk
bWFidWYtPmxvY2spOw0KIAlpZiAoLS1kbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIgPT0gMCkgew0K
IAkJaWYgKGRtYWJ1Zi0+b3BzLT52dW5tYXApDQogCQkJZG1hYnVmLT5vcHMtPnZ1bm1hcChkbWFi
dWYsIG1hcCk7DQogCQlpb3N5c19tYXBfY2xlYXIoJmRtYWJ1Zi0+dm1hcF9wdHIpOw0KIAl9DQot
CW11dGV4X3VubG9jaygmZG1hYnVmLT5sb2NrKTsNCiB9DQogRVhQT1JUX1NZTUJPTF9OU19HUEwo
ZG1hX2J1Zl92dW5tYXAsIERNQV9CVUYpOw0KIA0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCmluZGV4IGYxMWI1YmJjMmYzNy4u
NmZhOGQ0ZTI5NzE5IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCisrKyBi
L2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQpAQCAtMzI2LDE1ICszMjYsNiBAQCBzdHJ1Y3QgZG1h
X2J1ZiB7DQogCS8qKiBAb3BzOiBkbWFfYnVmX29wcyBhc3NvY2lhdGVkIHdpdGggdGhpcyBidWZm
ZXIgb2JqZWN0LiAqLw0KIAljb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgKm9wczsNCiANCi0JLyoq
DQotCSAqIEBsb2NrOg0KLQkgKg0KLQkgKiBVc2VkIGludGVybmFsbHkgdG8gc2VyaWFsaXplIGxp
c3QgbWFuaXB1bGF0aW9uLCBhdHRhY2gvZGV0YWNoIGFuZA0KLQkgKiB2bWFwL3VubWFwLiBOb3Rl
IHRoYXQgaW4gbWFueSBjYXNlcyB0aGlzIGlzIHN1cGVyc2VlZGVkIGJ5DQotCSAqIGRtYV9yZXN2
X2xvY2soKSBvbiBAcmVzdi4NCi0JICovDQotCXN0cnVjdCBtdXRleCBsb2NrOw0KLQ0KIAkvKioN
CiAJICogQHZtYXBwaW5nX2NvdW50ZXI6DQogCSAqDQotLSANCjIuMzcuMg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
