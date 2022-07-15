Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 138045758BB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Jul 2022 02:53:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36A7F4030A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Jul 2022 00:53:24 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 1FE1A3F04B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jul 2022 00:53:19 +0000 (UTC)
Received: from dimapc.. (109-252-119-232.nat.spd-mgts.ru [109.252.119.232])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 56DEA6601A44;
	Fri, 15 Jul 2022 01:53:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657846397;
	bh=08a2nboQlEuWwlfAHFXkuoQn5obKyHZ/ZVFgCHrEt8s=;
	h=From:To:Cc:Subject:Date:From;
	b=VsAEIkbATEnA4Nbk3aERHQn8fLTLVUHNv8kWnssP/Qm3YXMVzWlFtWtdiMoahCGPS
	 Kme2EsYIfptxjyFqr0HTYnhHM2YDrmur5rK32XO50Iv7OJMG9x+bqrwazS7dy309Hr
	 1b+7CYfqa5NrdY/U09oRNR6aOmNsc2mF6BOnsa/ZBo+gnufnonFAu467YUDfXNnyVT
	 2+7CcdCl1nQYdMBehjDmpbmWcCdsqMJ0HzNITuntSQayJH8o68ShuNneWHuMz+ft9f
	 zsNlizMtyEmX65xBz2nEMDvbw5Q3Bpj+6ANqTt35ZjsRdjlP7HA6II7WWUrvegljIb
	 rs2/bpj1V1R9Q==
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
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas_os@shipmail.org>
Date: Fri, 15 Jul 2022 03:52:38 +0300
Message-Id: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Message-ID-Hash: KUBJGDZALCTLVLCS22NMUU6K5MTS75W5
X-Message-ID-Hash: KUBJGDZALCTLVLCS22NMUU6K5MTS75W5
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1 0/6] Move all drivers to a common dma-buf locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KUBJGDZALCTLVLCS22NMUU6K5MTS75W5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNClRoaXMgc2VyaWVzIG1vdmVzIGFsbCBkcml2ZXJzIHRvIGEgZHluYW1pYyBkbWEt
YnVmIGxvY2tpbmcgc3BlY2lmaWNhdGlvbi4NCj5Gcm9tIG5vdyBvbiBhbGwgZG1hLWJ1ZiBpbXBv
cnRlcnMgYXJlIG1hZGUgcmVzcG9uc2libGUgZm9yIGhvbGRpbmcNCmRtYS1idWYncyByZXNlcnZh
dGlvbiBsb2NrIGFyb3VuZCBhbGwgb3BlcmF0aW9ucyBwZXJmb3JtZWQgb3ZlciBkbWEtYnVmcy4N
ClRoaXMgY29tbW9uIGxvY2tpbmcgY29udmVudGlvbiBhbGxvd3MgdXMgdG8gdXRpbGl6ZSByZXNl
cnZhdGlvbiBsb2NrIG1vcmUNCmJyb2FkbHkgYXJvdW5kIGtlcm5lbCB3aXRob3V0IGZlYXJpbmcg
b2YgcG90ZW50aWFsIGRlYWQgbG9ja3MuDQoNClRoaXMgcGF0Y2hzZXQgcGFzc2VzIGFsbCBpOTE1
IHNlbGZ0ZXN0cy4gSXQgd2FzIGFsc28gdGVzdGVkIHVzaW5nIFZpcnRJTywNClBhbmZyb3N0LCBM
aW1hIGFuZCBUZWdyYSBkcml2ZXJzLiBJIHRlc3RlZCBjYXNlcyBvZiBkaXNwbGF5K0dQVSwNCmRp
c3BsYXkrVjRMIGFuZCBHUFUrVjRMIGRtYS1idWYgc2hhcmluZywgd2hpY2ggY292ZXJzIG1ham9y
aXR5IG9mIGtlcm5lbA0KZHJpdmVycyBzaW5jZSByZXN0IG9mIHRoZSBkcml2ZXJzIHNoYXJlIHNh
bWUgb3Igc2ltaWxhciBjb2RlIHBhdGhzLg0KDQpUaGlzIGlzIGEgY29udGludWF0aW9uIG9mIFsx
XSB3aGVyZSBDaHJpc3RpYW4gS8O2bmlnIGFza2VkIHRvIGZhY3RvciBvdXQNCnRoZSBkbWEtYnVm
IGxvY2tpbmcgY2hhbmdlcyBpbnRvIHNlcGFyYXRlIHNlcmllcy4NCg0KWzFdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDIyMDUyNjIzNTA0MC42Nzg5ODQtMS1kbWl0cnkub3Np
cGVua29AY29sbGFib3JhLmNvbS8NCg0KRG1pdHJ5IE9zaXBlbmtvICg2KToNCiAgZG1hLWJ1Zjog
QWRkIF91bmxvY2tlZCBwb3N0Zml4IHRvIGZ1bmN0aW9uIG5hbWVzDQogIGRybS9nZW06IFRha2Ug
cmVzZXJ2YXRpb24gbG9jayBmb3Igdm1hcC92dW5tYXAgb3BlcmF0aW9ucw0KICBkbWEtYnVmOiBN
b3ZlIGFsbCBkbWEtYnVmcyB0byBkeW5hbWljIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KICBkbWEt
YnVmOiBBY3F1aXJlIHdhaXQtd291bmQgY29udGV4dCBvbiBhdHRhY2htZW50DQogIG1lZGlhOiB2
aWRlb2J1ZjI6IFN0b3AgdXNpbmcgaW50ZXJuYWwgZG1hLWJ1ZiBsb2NrDQogIGRtYS1idWY6IFJl
bW92ZSBpbnRlcm5hbCBsb2NrDQoNCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAg
ICAgICAgICAgICAgfCAxOTggKysrKysrKysrKystLS0tLS0tDQogZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3R0bS5jICAgICAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJtL2Fy
bWFkYS9hcm1hZGFfZ2VtLmMgICAgICAgICAgIHwgIDE0ICstDQogZHJpdmVycy9ncHUvZHJtL2Ry
bV9jbGllbnQuYyAgICAgICAgICAgICAgICAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW0uYyAgICAgICAgICAgICAgICAgICAgIHwgIDI4ICsrKw0KIGRyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX2NtYV9oZWxwZXIuYyAgICAgICAgICB8ICAgNiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX2ZyYW1lYnVmZmVyX2hlbHBlci5jICB8ICAgNiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX3NobWVtX2hlbHBlci5jICAgICAgICB8ICAgNiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9k
cm1fcHJpbWUuYyAgICAgICAgICAgICAgICAgICB8ICAxMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1lLmMgICB8ICAgNiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9l
eHlub3MvZXh5bm9zX2RybV9nZW0uYyAgICAgICB8ICAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyAgICB8ICAyMCArLQ0KIC4uLi9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8ICAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8ICAgNiArLQ0KIC4uLi9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jICB8ICAyMCArLQ0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2V2aWN0LmMgICAgICAgICB8ICAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX3d3LmMgICAgICAgICAgICB8ICAyNiArKy0NCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV93dy5oICAgICAgICAgICAgfCAgMTUgKy0NCiBkcml2ZXJzL2dwdS9kcm0v
b21hcGRybS9vbWFwX2dlbV9kbWFidWYuYyAgICAgfCAgIDggKy0NCiBkcml2ZXJzL2dwdS9kcm0v
cXhsL3F4bF9vYmplY3QuYyAgICAgICAgICAgICAgfCAgMTcgKy0NCiBkcml2ZXJzL2dwdS9kcm0v
cXhsL3F4bF9wcmltZS5jICAgICAgICAgICAgICAgfCAgIDQgKy0NCiBkcml2ZXJzL2dwdS9kcm0v
dGVncmEvZ2VtLmMgICAgICAgICAgICAgICAgICAgfCAgMjcgKy0tDQogZHJpdmVycy9pbmZpbmli
YW5kL2NvcmUvdW1lbV9kbWFidWYuYyAgICAgICAgIHwgIDExICstDQogLi4uL2NvbW1vbi92aWRl
b2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYyAgIHwgIDI2ICstLQ0KIC4uLi9tZWRpYS9jb21t
b24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYyB8ICAyMyArLQ0KIC4uLi9jb21tb24vdmlk
ZW9idWYyL3ZpZGVvYnVmMi12bWFsbG9jLmMgICAgICB8ICAxNyArLQ0KIC4uLi9wbGF0Zm9ybS9u
dmlkaWEvdGVncmEtdmRlL2RtYWJ1Zi1jYWNoZS5jICB8ICAxMiArLQ0KIGRyaXZlcnMvbWlzYy9m
YXN0cnBjLmMgICAgICAgICAgICAgICAgICAgICAgICB8ICAxMiArLQ0KIGRyaXZlcnMveGVuL2du
dGRldi1kbWFidWYuYyAgICAgICAgICAgICAgICAgICB8ICAxNCArLQ0KIGluY2x1ZGUvZHJtL2Ry
bV9nZW0uaCAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMyArDQogaW5jbHVkZS9saW51eC9k
bWEtYnVmLmggICAgICAgICAgICAgICAgICAgICAgIHwgIDQ5ICsrLS0tDQogMzIgZmlsZXMgY2hh
bmdlZCwgMzQ3IGluc2VydGlvbnMoKyksIDI1NyBkZWxldGlvbnMoLSkNCg0KLS0gDQoyLjM2LjEN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
