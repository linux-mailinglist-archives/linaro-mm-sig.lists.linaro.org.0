Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 483DC5B7AC4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:28:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D69B479F5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:28:34 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id A50B5479F9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:28:31 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8381B6601FF7;
	Tue, 13 Sep 2022 20:28:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097310;
	bh=53La71f514cRlyPX02axfYETy7/5rU+94la/fncKuAA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UTktdsuzlLEjZRV4y564jQvGmlyVn7c9RUmBYuLYhk3c6ghf5a8xoP6deddjYQ4ws
	 VENd50KYYSFNLfAXK/vUDWgYUS1sgXZeLF4OEKqOowA2RrHv0/ppPB3ETuYZ+olJkW
	 2/dyqW7O+D5yDyYTxkcQCTYHBluypn66o5rP3JNQma9b5G3qVXvb8VAoCs5Rr3wdC+
	 nLzrAxq/FAUzDqlkGY35/7eeGp4qf65SiE1a7XWICoXea0b0ZbwoLZUcK8KXxfrZUH
	 Bucad+FDAYMQA57OK6cFxxDmE74T8BFVY1cKG9F3LIm+9W7s+Q8qVcD4TW+XYz6R1x
	 t3YJks3ArnXGA==
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
Date: Tue, 13 Sep 2022 22:27:38 +0300
Message-Id: <20220913192757.37727-3-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: DG7ABYUH5PISC7OJEOHI7ZPBWFBZAMDA
X-Message-ID-Hash: DG7ABYUH5PISC7OJEOHI7ZPBWFBZAMDA
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 02/21] dma-buf: Add unlocked variant of attachment-mapping functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DG7ABYUH5PISC7OJEOHI7ZPBWFBZAMDA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkIHVubG9ja2VkIHZhcmlhbnQgb2YgZG1hX2J1Zl9tYXAvdW5tYXBfYXR0YWNobWVudCgpIHRo
YXQgd2lsbA0KYmUgdXNlZCBieSBkcml2ZXJzIHRoYXQgZG9uJ3QgdGFrZSB0aGUgcmVzZXJ2YXRp
b24gbG9jayBleHBsaWNpdGx5Lg0KDQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0
cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgfCA1MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiBpbmNsdWRl
L2xpbnV4L2RtYS1idWYuaCAgIHwgIDYgKysrKysNCiAyIGZpbGVzIGNoYW5nZWQsIDU5IGluc2Vy
dGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCAwNzg4MGEzNGUzNjcuLjUwZGI3NTcxZGM0YiAx
MDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCisrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMNCkBAIC0xMTAwLDYgKzExMDAsMzQgQEAgc3RydWN0IHNnX3RhYmxlICpk
bWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwN
CiB9DQogRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9tYXBfYXR0YWNobWVudCwgRE1BX0JV
Rik7DQogDQorLyoqDQorICogZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZCAtIFJldHVy
bnMgdGhlIHNjYXR0ZXJsaXN0IHRhYmxlIG9mIHRoZSBhdHRhY2htZW50Ow0KKyAqIG1hcHBlZCBp
bnRvIF9kZXZpY2VfIGFkZHJlc3Mgc3BhY2UuIElzIGEgd3JhcHBlciBmb3IgbWFwX2RtYV9idWYo
KSBvZiB0aGUNCisgKiBkbWFfYnVmX29wcy4NCisgKiBAYXR0YWNoOglbaW5dCWF0dGFjaG1lbnQg
d2hvc2Ugc2NhdHRlcmxpc3QgaXMgdG8gYmUgcmV0dXJuZWQNCisgKiBAZGlyZWN0aW9uOglbaW5d
CWRpcmVjdGlvbiBvZiBETUEgdHJhbnNmZXINCisgKg0KKyAqIFVubG9ja2VkIHZhcmlhbnQgb2Yg
ZG1hX2J1Zl9tYXBfYXR0YWNobWVudCgpLg0KKyAqLw0KK3N0cnVjdCBzZ190YWJsZSAqDQorZG1h
X2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICph
dHRhY2gsDQorCQkJCWVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikNCit7DQorCXN0
cnVjdCBzZ190YWJsZSAqc2dfdGFibGU7DQorDQorCW1pZ2h0X3NsZWVwKCk7DQorDQorCWlmIChX
QVJOX09OKCFhdHRhY2ggfHwgIWF0dGFjaC0+ZG1hYnVmKSkNCisJCXJldHVybiBFUlJfUFRSKC1F
SU5WQUwpOw0KKw0KKwlkbWFfcmVzdl9sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsN
CisJc2dfdGFibGUgPSBkbWFfYnVmX21hcF9hdHRhY2htZW50KGF0dGFjaCwgZGlyZWN0aW9uKTsN
CisJZG1hX3Jlc3ZfdW5sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCisNCisJcmV0dXJuIHNn
X3RhYmxlOw0KK30NCitFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX21hcF9hdHRhY2htZW50
X3VubG9ja2VkLCBETUFfQlVGKTsNCisNCiAvKioNCiAgKiBkbWFfYnVmX3VubWFwX2F0dGFjaG1l
bnQgLSB1bm1hcHMgYW5kIGRlY3JlYXNlcyB1c2Vjb3VudCBvZiB0aGUgYnVmZmVyO21pZ2h0DQog
ICogZGVhbGxvY2F0ZSB0aGUgc2NhdHRlcmxpc3QgYXNzb2NpYXRlZC4gSXMgYSB3cmFwcGVyIGZv
ciB1bm1hcF9kbWFfYnVmKCkgb2YNCkBAIC0xMTM2LDYgKzExNjQsMzEgQEAgdm9pZCBkbWFfYnVm
X3VubWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KIH0N
CiBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQsIERNQV9CVUYp
Ow0KIA0KKy8qKg0KKyAqIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZCAtIHVubWFw
cyBhbmQgZGVjcmVhc2VzIHVzZWNvdW50IG9mIHRoZSBidWZmZXI7bWlnaHQNCisgKiBkZWFsbG9j
YXRlIHRoZSBzY2F0dGVybGlzdCBhc3NvY2lhdGVkLiBJcyBhIHdyYXBwZXIgZm9yIHVubWFwX2Rt
YV9idWYoKSBvZg0KKyAqIGRtYV9idWZfb3BzLg0KKyAqIEBhdHRhY2g6CVtpbl0JYXR0YWNobWVu
dCB0byB1bm1hcCBidWZmZXIgZnJvbQ0KKyAqIEBzZ190YWJsZToJW2luXQlzY2F0dGVybGlzdCBp
bmZvIG9mIHRoZSBidWZmZXIgdG8gdW5tYXANCisgKiBAZGlyZWN0aW9uOglbaW5dCWRpcmVjdGlv
biBvZiBETUEgdHJhbnNmZXINCisgKg0KKyAqIFVubG9ja2VkIHZhcmlhbnQgb2YgZG1hX2J1Zl91
bm1hcF9hdHRhY2htZW50KCkuDQorICovDQordm9pZCBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRf
dW5sb2NrZWQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KKwkJCQkgICAgICAg
c3RydWN0IHNnX3RhYmxlICpzZ190YWJsZSwNCisJCQkJICAgICAgIGVudW0gZG1hX2RhdGFfZGly
ZWN0aW9uIGRpcmVjdGlvbikNCit7DQorCW1pZ2h0X3NsZWVwKCk7DQorDQorCWlmIChXQVJOX09O
KCFhdHRhY2ggfHwgIWF0dGFjaC0+ZG1hYnVmIHx8ICFzZ190YWJsZSkpDQorCQlyZXR1cm47DQor
DQorCWRtYV9yZXN2X2xvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YsIE5VTEwpOw0KKwlkbWFfYnVm
X3VubWFwX2F0dGFjaG1lbnQoYXR0YWNoLCBzZ190YWJsZSwgZGlyZWN0aW9uKTsNCisJZG1hX3Jl
c3ZfdW5sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCit9DQorRVhQT1JUX1NZTUJPTF9OU19H
UEwoZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkLCBETUFfQlVGKTsNCisNCiAvKioN
CiAgKiBkbWFfYnVmX21vdmVfbm90aWZ5IC0gbm90aWZ5IGF0dGFjaG1lbnRzIHRoYXQgRE1BLWJ1
ZiBpcyBtb3ZpbmcNCiAgKg0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIv
aW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCmluZGV4IDhkYWEwNTRkZDdmZS4uZjExYjViYmMyZjM3
IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCisrKyBiL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oDQpAQCAtNjI3LDYgKzYyNywxMiBAQCBpbnQgZG1hX2J1Zl9iZWdpbl9jcHVf
YWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLA0KIAkJCSAgICAgZW51bSBkbWFfZGF0YV9k
aXJlY3Rpb24gZGlyKTsNCiBpbnQgZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1
ZiAqZG1hX2J1ZiwNCiAJCQkgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpOw0KK3N0cnVj
dCBzZ190YWJsZSAqDQorZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZChzdHJ1Y3QgZG1h
X2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQorCQkJCWVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRp
cmVjdGlvbik7DQordm9pZCBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KKwkJCQkgICAgICAgc3RydWN0IHNnX3RhYmxl
ICpzZ190YWJsZSwNCisJCQkJICAgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlv
bik7DQogDQogaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAqLCBzdHJ1Y3Qgdm1fYXJl
YV9zdHJ1Y3QgKiwNCiAJCSB1bnNpZ25lZCBsb25nKTsNCi0tIA0KMi4zNy4zDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
