Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C5F580197
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jul 2022 17:20:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB66E47F24
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jul 2022 15:20:54 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id AFCAC3EC43
	for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jul 2022 15:20:50 +0000 (UTC)
Received: from dimapc.. (109-252-119-232.nat.spd-mgts.ru [109.252.119.232])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 105BA66015C8;
	Mon, 25 Jul 2022 16:20:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1658762449;
	bh=WDIIFq+FwvZE2r0LkWg7SRzWlcZ28eKnpAmrtcK8/Tw=;
	h=From:To:Cc:Subject:Date:From;
	b=fCTuAO8tPmjR8tSbNU7j5+ykPVxJHvHdPYqB/q+SO9WPw0GWAQAZkTjrZK8Ms+wxk
	 G8rwf70tH+Z7xpEq8t/v+2fubGWelhddXEvkkJBM30fCF2yps5VAV7CIVdbtKRHH/w
	 OMDdlnNZwyvWDn/TIT8zdX8oabwj94F+u00uDHGBHiSpimKonDm5oMmo+ApDHwm3EC
	 dghjMfnSVgIYt6j+q/Nw01pS56Qm7i6GdsZfcBRRx9eD0F7n9BQjVuPuclpu0BAGPD
	 CW1k5b1tcXd3QaLbqsMsOWWl5s6Kpo4O5oGyowxH7HT1f+It08Ez+VTu4+PAIC5gAI
	 dmKpANkjOU+wQ==
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
Date: Mon, 25 Jul 2022 18:18:34 +0300
Message-Id: <20220725151839.31622-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Message-ID-Hash: UR6ZROAR5SE5DGGPR43GIS5CZZMMPTZK
X-Message-ID-Hash: UR6ZROAR5SE5DGGPR43GIS5CZZMMPTZK
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/5] Move all drivers to a common dma-buf locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UR6ZROAR5SE5DGGPR43GIS5CZZMMPTZK/>
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
dGlvbiBsb2NrIGFyb3VuZCBhbGwgb3BlcmF0aW9ucyBwZXJmb3JtZWQgb3ZlciBkbWEtYnVmcw0K
aW4gYWNjb3JkYW5jZSB0byB0aGUgbG9ja2luZyBzcGVjaWZpY2F0aW9uLiBUaGlzIGFsbG93cyB1
cyB0byB1dGlsaXplDQpyZXNlcnZhdGlvbiBsb2NrIG1vcmUgYnJvYWRseSBhcm91bmQga2VybmVs
IHdpdGhvdXQgZmVhcmluZyBvZiBhIHBvdGVudGlhbA0KZGVhZGxvY2tzLg0KDQpUaGlzIHBhdGNo
c2V0IHBhc3NlcyBhbGwgaTkxNSBzZWxmdGVzdHMuIEl0IHdhcyBhbHNvIHRlc3RlZCB1c2luZyBW
aXJ0SU8sDQpQYW5mcm9zdCwgTGltYSBhbmQgVGVncmEgZHJpdmVycy4gSSB0ZXN0ZWQgY2FzZXMg
b2YgZGlzcGxheStHUFUsDQpkaXNwbGF5K1Y0TCBhbmQgR1BVK1Y0TCBkbWEtYnVmIHNoYXJpbmcs
IHdoaWNoIGNvdmVycyBtYWpvcml0eSBvZiBrZXJuZWwNCmRyaXZlcnMgc2luY2UgcmVzdCBvZiB0
aGUgZHJpdmVycyBzaGFyZSBzYW1lIG9yIHNpbWlsYXIgY29kZSBwYXRocy4NCg0KQ2hhbmdlbG9n
Og0KDQp2MjogLSBDaGFuZ2VkIGxvY2tpbmcgc3BlY2lmaWNhdGlvbiB0byBhdm9pZCBwcm9ibGVt
cyB3aXRoIGEgY3Jvc3MtZHJpdmVyDQogICAgICB3dyBsb2NraW5nLCBsaWtlIHdhcyBzdWdnZXN0
ZWQgYnkgQ2hyaXN0aWFuIEvDtm5pZy4gTm93IHRoZSBhdHRhY2gvZGV0YWNoDQogICAgICBjYWxs
YmFja3MgYXJlIGludm9rZWQgd2l0aG91dCB0aGUgaGVsZCBsb2NrIGFuZCBleHBvcnRlciBzaG91
bGQgdGFrZSB0aGUNCiAgICAgIGxvY2suDQoNCiAgICAtIEFkZGVkICJsb2NraW5nIGNvbnZlbnRp
b24iIGRvY3VtZW50YXRpb24gdGhhdCBleHBsYWlucyB3aGljaCBkbWEtYnVmDQogICAgICBmdW5j
dGlvbnMgYW5kIGNhbGxiYWNrcyBhcmUgbG9ja2VkL3VubG9ja2VkIGZvciBpbXBvcnRlcnMgYW5k
IGV4cG9ydGVycywNCiAgICAgIHdoaWNoIHdhcyByZXF1ZXN0ZWQgYnkgQ2hyaXN0aWFuIEvDtm5p
Zy4NCg0KICAgIC0gQWRkZWQgYWNrIGZyb20gVG9tYXN6IEZpZ2EgdG8gdGhlIFY0TCBwYXRjaGVz
IHRoYXQgaGUgZ2F2ZSB0byB2MS4NCg0KRG1pdHJ5IE9zaXBlbmtvICg1KToNCiAgZG1hLWJ1Zjog
QWRkIF91bmxvY2tlZCBwb3N0Zml4IHRvIGZ1bmN0aW9uIG5hbWVzDQogIGRybS9nZW06IFRha2Ug
cmVzZXJ2YXRpb24gbG9jayBmb3Igdm1hcC92dW5tYXAgb3BlcmF0aW9ucw0KICBkbWEtYnVmOiBN
b3ZlIGFsbCBkbWEtYnVmcyB0byBkeW5hbWljIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KICBtZWRp
YTogdmlkZW9idWYyOiBTdG9wIHVzaW5nIGludGVybmFsIGRtYS1idWYgbG9jaw0KICBkbWEtYnVm
OiBSZW1vdmUgaW50ZXJuYWwgbG9jaw0KDQogRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1i
dWYucnN0ICAgICAgICAgIHwgICA2ICsNCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAg
ICAgICAgICAgICAgICAgfCAyNTMgKysrKysrKysrKysrKy0tLS0tDQogZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jICAgICAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJt
L2FybWFkYS9hcm1hZGFfZ2VtLmMgICAgICAgICAgIHwgIDE0ICstDQogZHJpdmVycy9ncHUvZHJt
L2RybV9jbGllbnQuYyAgICAgICAgICAgICAgICAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJt
L2RybV9nZW0uYyAgICAgICAgICAgICAgICAgICAgIHwgIDI0ICsrDQogZHJpdmVycy9ncHUvZHJt
L2RybV9nZW1fY21hX2hlbHBlci5jICAgICAgICAgIHwgICA2ICstDQogZHJpdmVycy9ncHUvZHJt
L2RybV9nZW1fZnJhbWVidWZmZXJfaGVscGVyLmMgIHwgICA2ICstDQogZHJpdmVycy9ncHUvZHJt
L2RybV9nZW1fc2htZW1faGVscGVyLmMgICAgICAgIHwgICA2ICstDQogZHJpdmVycy9ncHUvZHJt
L2RybV9wcmltZS5jICAgICAgICAgICAgICAgICAgIHwgIDEyICstDQogZHJpdmVycy9ncHUvZHJt
L2V0bmF2aXYvZXRuYXZpdl9nZW1fcHJpbWUuYyAgIHwgICA2ICstDQogZHJpdmVycy9ncHUvZHJt
L2V4eW5vcy9leHlub3NfZHJtX2dlbS5jICAgICAgIHwgICAyICstDQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAgIHwgIDE0ICstDQogLi4uL2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMgIHwgIDIwICstDQogZHJpdmVycy9ncHUvZHJt
L29tYXBkcm0vb21hcF9nZW1fZG1hYnVmLmMgICAgIHwgICA4ICstDQogZHJpdmVycy9ncHUvZHJt
L3F4bC9xeGxfb2JqZWN0LmMgICAgICAgICAgICAgIHwgIDE3ICstDQogZHJpdmVycy9ncHUvZHJt
L3F4bC9xeGxfcHJpbWUuYyAgICAgICAgICAgICAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJt
L3RlZ3JhL2dlbS5jICAgICAgICAgICAgICAgICAgIHwgIDI3ICstDQogZHJpdmVycy9pbmZpbmli
YW5kL2NvcmUvdW1lbV9kbWFidWYuYyAgICAgICAgIHwgIDExICstDQogLi4uL2NvbW1vbi92aWRl
b2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYyAgIHwgIDI2ICstDQogLi4uL21lZGlhL2NvbW1v
bi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5jIHwgIDIzICstDQogLi4uL2NvbW1vbi92aWRl
b2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYyAgICAgIHwgIDE3ICstDQogLi4uL3BsYXRmb3JtL252
aWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNhY2hlLmMgIHwgIDEyICstDQogZHJpdmVycy9taXNjL2Zh
c3RycGMuYyAgICAgICAgICAgICAgICAgICAgICAgIHwgIDEyICstDQogZHJpdmVycy94ZW4vZ250
ZGV2LWRtYWJ1Zi5jICAgICAgICAgICAgICAgICAgIHwgIDE0ICstDQogaW5jbHVkZS9kcm0vZHJt
X2dlbS5oICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAzICsNCiBpbmNsdWRlL2xpbnV4L2Rt
YS1idWYuaCAgICAgICAgICAgICAgICAgICAgICAgfCAgNzEgKystLS0NCiAyOCBmaWxlcyBjaGFu
Z2VkLCAzNzIgaW5zZXJ0aW9ucygrKSwgMjU0IGRlbGV0aW9ucygtKQ0KDQotLSANCjIuMzYuMQ0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
