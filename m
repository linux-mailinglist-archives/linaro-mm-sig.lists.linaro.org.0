Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2815B7AE0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:29:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D33A48A12
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:29:58 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 464FA48A1A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:29:54 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C157B660201D;
	Tue, 13 Sep 2022 20:29:48 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097393;
	bh=33E5tVDHFxGXPr2cUF6T6eAWMoPvmkCLqaU2W4y9Eis=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=X3Uefvf35jVDzgpjNp1P0cXlQM9d14IaIW5T1BImIwUQH1djUJ7RPUACwNYvD9YVS
	 0dRJoZKFtxTLTZWeiyVQebfrqNdH93LaBU4bZZksRfg+LFInvgPlhZNdbpvYvYh1Jz
	 qy5dghD6qCcTEnfdfNAUrxjfLpG4hXig4M1PPwlHrLB94ai59Anqdpo4++xvK1zHN5
	 K6G3wAy+2xESKLYzir3nOL8wUA9KLaS7KVyN0qEGfY2iUYt/kjmody+79shWgmF23c
	 QnNCXAJlOObFUbziCPzwhD+LRhSAgsfUpaXsOLrntiDXUoJyNVQKRzWP35RjwkQzDj
	 xKnQAt5wOVc1Q==
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
Date: Tue, 13 Sep 2022 22:27:55 +0300
Message-Id: <20220913192757.37727-20-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: U4KXTP4CUKRGG3CQNI7CXD2IKWO5JJAA
X-Message-ID-Hash: U4KXTP4CUKRGG3CQNI7CXD2IKWO5JJAA
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 19/21] dma-buf: Document dynamic locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U4KXTP4CUKRGG3CQNI7CXD2IKWO5JJAA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkIGRvY3VtZW50YXRpb24gZm9yIHRoZSBkeW5hbWljIGxvY2tpbmcgY29udmVudGlvbi4gVGhl
IGRvY3VtZW50YXRpb24NCnRlbGxzIGRtYS1idWYgQVBJIHVzZXJzIHdoZW4gdGhleSBzaG91bGQg
dGFrZSB0aGUgcmVzZXJ2YXRpb24gbG9jayBhbmQNCndoZW4gbm90Lg0KDQpSZXZpZXdlZC1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1i
eTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCi0tLQ0K
IERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCB8ICA2ICsrKw0KIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICB8IDY0ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysNCiAyIGZpbGVzIGNoYW5nZWQsIDcwIGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCBiL0RvY3VtZW50YXRpb24vZHJp
dmVyLWFwaS9kbWEtYnVmLnJzdA0KaW5kZXggMzZhNzZjYmU5MDk1Li42MjJiODE1NmQyMTIgMTAw
NjQ0DQotLS0gYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QNCisrKyBiL0Rv
Y3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdA0KQEAgLTExOSw2ICsxMTksMTIgQEAg
RE1BIEJ1ZmZlciBpb2N0bHMNCiANCiAuLiBrZXJuZWwtZG9jOjogaW5jbHVkZS91YXBpL2xpbnV4
L2RtYS1idWYuaA0KIA0KK0RNQS1CVUYgbG9ja2luZyBjb252ZW50aW9uDQorfn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fg0KKw0KKy4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jDQorICAgOmRvYzogbG9ja2luZyBjb252ZW50aW9uDQorDQogS2VybmVs
IEZ1bmN0aW9ucyBhbmQgU3RydWN0dXJlcyBSZWZlcmVuY2UNCiB+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fg0KIA0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCA4ODIxYTNhZDk1MzAu
LmMzNTliZGJkZjViZSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCkBAIC03OTUsNiArNzk1LDcwIEBAIHN0YXRp
YyBzdHJ1Y3Qgc2dfdGFibGUgKiBfX21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaCwNCiAJcmV0dXJuIHNnX3RhYmxlOw0KIH0NCiANCisvKioNCisgKiBET0M6IGxv
Y2tpbmcgY29udmVudGlvbg0KKyAqDQorICogSW4gb3JkZXIgdG8gYXZvaWQgZGVhZGxvY2sgc2l0
dWF0aW9ucyBiZXR3ZWVuIGRtYS1idWYgZXhwb3J0cyBhbmQgaW1wb3J0ZXJzLA0KKyAqIGFsbCBk
bWEtYnVmIEFQSSB1c2VycyBtdXN0IGZvbGxvdyB0aGUgY29tbW9uIGRtYS1idWYgbG9ja2luZyBj
b252ZW50aW9uLg0KKyAqDQorICogQ29udmVudGlvbiBmb3IgaW1wb3J0ZXJzDQorICoNCisgKiAx
LiBJbXBvcnRlcnMgbXVzdCBob2xkIHRoZSBkbWEtYnVmIHJlc2VydmF0aW9uIGxvY2sgd2hlbiBj
YWxsaW5nIHRoZXNlDQorICogICAgZnVuY3Rpb25zOg0KKyAqDQorICogICAgIC0gZG1hX2J1Zl9w
aW4oKQ0KKyAqICAgICAtIGRtYV9idWZfdW5waW4oKQ0KKyAqICAgICAtIGRtYV9idWZfbWFwX2F0
dGFjaG1lbnQoKQ0KKyAqICAgICAtIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCgpDQorICogICAg
IC0gZG1hX2J1Zl92bWFwKCkNCisgKiAgICAgLSBkbWFfYnVmX3Z1bm1hcCgpDQorICoNCisgKiAy
LiBJbXBvcnRlcnMgbXVzdCBub3QgaG9sZCB0aGUgZG1hLWJ1ZiByZXNlcnZhdGlvbiBsb2NrIHdo
ZW4gY2FsbGluZyB0aGVzZQ0KKyAqICAgIGZ1bmN0aW9uczoNCisgKg0KKyAqICAgICAtIGRtYV9i
dWZfYXR0YWNoKCkNCisgKiAgICAgLSBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKCkNCisgKiAgICAg
LSBkbWFfYnVmX2RldGFjaCgpDQorICogICAgIC0gZG1hX2J1Zl9leHBvcnQoDQorICogICAgIC0g
ZG1hX2J1Zl9mZCgpDQorICogICAgIC0gZG1hX2J1Zl9nZXQoKQ0KKyAqICAgICAtIGRtYV9idWZf
cHV0KCkNCisgKiAgICAgLSBkbWFfYnVmX21tYXAoKQ0KKyAqICAgICAtIGRtYV9idWZfYmVnaW5f
Y3B1X2FjY2VzcygpDQorICogICAgIC0gZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcygpDQorICogICAg
IC0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZCgpDQorICogICAgIC0gZG1hX2J1Zl91
bm1hcF9hdHRhY2htZW50X3VubG9ja2VkKCkNCisgKiAgICAgLSBkbWFfYnVmX3ZtYXBfdW5sb2Nr
ZWQoKQ0KKyAqICAgICAtIGRtYV9idWZfdnVubWFwX3VubG9ja2VkKCkNCisgKg0KKyAqIENvbnZl
bnRpb24gZm9yIGV4cG9ydGVycw0KKyAqDQorICogMS4gVGhlc2UgJmRtYV9idWZfb3BzIGNhbGxi
YWNrcyBhcmUgaW52b2tlZCB3aXRoIHVubG9ja2VkIGRtYS1idWYNCisgKiAgICByZXNlcnZhdGlv
biBhbmQgZXhwb3J0ZXIgY2FuIHRha2UgdGhlIGxvY2s6DQorICoNCisgKiAgICAgLSAmZG1hX2J1
Zl9vcHMuYXR0YWNoKCkNCisgKiAgICAgLSAmZG1hX2J1Zl9vcHMuZGV0YWNoKCkNCisgKiAgICAg
LSAmZG1hX2J1Zl9vcHMucmVsZWFzZSgpDQorICogICAgIC0gJmRtYV9idWZfb3BzLmJlZ2luX2Nw
dV9hY2Nlc3MoKQ0KKyAqICAgICAtICZkbWFfYnVmX29wcy5lbmRfY3B1X2FjY2VzcygpDQorICoN
CisgKiAyLiBUaGVzZSAmZG1hX2J1Zl9vcHMgY2FsbGJhY2tzIGFyZSBpbnZva2VkIHdpdGggbG9j
a2VkIGRtYS1idWYNCisgKiAgICByZXNlcnZhdGlvbiBhbmQgZXhwb3J0ZXIgY2FuJ3QgdGFrZSB0
aGUgbG9jazoNCisgKg0KKyAqICAgICAtICZkbWFfYnVmX29wcy5waW4oKQ0KKyAqICAgICAtICZk
bWFfYnVmX29wcy51bnBpbigpDQorICogICAgIC0gJmRtYV9idWZfb3BzLm1hcF9kbWFfYnVmKCkN
CisgKiAgICAgLSAmZG1hX2J1Zl9vcHMudW5tYXBfZG1hX2J1ZigpDQorICogICAgIC0gJmRtYV9i
dWZfb3BzLm1tYXAoKQ0KKyAqICAgICAtICZkbWFfYnVmX29wcy52bWFwKCkNCisgKiAgICAgLSAm
ZG1hX2J1Zl9vcHMudnVubWFwKCkNCisgKg0KKyAqIDMuIEV4cG9ydGVycyBtdXN0IGhvbGQgdGhl
IGRtYS1idWYgcmVzZXJ2YXRpb24gbG9jayB3aGVuIGNhbGxpbmcgdGhlc2UNCisgKiAgICBmdW5j
dGlvbnM6DQorICoNCisgKiAgICAgLSBkbWFfYnVmX21vdmVfbm90aWZ5KCkNCisgKi8NCisNCiAv
KioNCiAgKiBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoIC0gQWRkIHRoZSBkZXZpY2UgdG8gZG1hX2J1
ZidzIGF0dGFjaG1lbnRzIGxpc3QNCiAgKiBAZG1hYnVmOgkJW2luXQlidWZmZXIgdG8gYXR0YWNo
IGRldmljZSB0by4NCi0tIA0KMi4zNy4zDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
