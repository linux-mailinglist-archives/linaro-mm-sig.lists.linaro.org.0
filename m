Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C92105B7ADB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 21:29:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A7DC479F3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Sep 2022 19:29:44 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 72B76489FF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Sep 2022 19:29:38 +0000 (UTC)
Received: from dimapc.. (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5CF496601FF7;
	Tue, 13 Sep 2022 20:29:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663097377;
	bh=PA8s1xebg4jnJB7FxTsQkH7ZwWxPD9Te59Bfb4p8xQA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BsvEpwxJgd2N75zCmwMOeeDg3YWzRkUHNfhs2et5tOTELNGPjBC7w43HGRT25+q+l
	 yKL8nqE1GEvLQ4EGyh9kA19j7v+rtMW2VLx6c9TmV2XiioI6IgI++qG2+5dlR+ppYK
	 JIXhx6p1HPQRCI9VGx18EScCC6vSaAZYFBLbnNGV/+nNDXf5Y6vNnImSIkEKQljMqa
	 wCa0kkc6xvlVIw8HNirCOD+0n/PylnaE2E9lmfhjHHhWMbWCRu0wG+J8Ke4xYMP0TZ
	 sFluo+c23ce59vhnWdFdXNl5GcPK9Uj6Lvb0LIOYnArXer7TmhnAol3GmmugzTzFfA
	 kRSsduAILLw4A==
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
Date: Tue, 13 Sep 2022 22:27:52 +0300
Message-Id: <20220913192757.37727-17-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: 47CTORI2Z3JX4VJNPAEIVGU243ITNGHO
X-Message-ID-Hash: 47CTORI2Z3JX4VJNPAEIVGU243ITNGHO
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 16/21] dma-buf: Move dma_buf_attach() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/47CTORI2Z3JX4VJNPAEIVGU243ITNGHO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TW92ZSBkbWEtYnVmIGF0dGFjaG1lbnQgQVBJIGZ1bmN0aW9ucyB0byB0aGUgZHluYW1pYyBsb2Nr
aW5nIHNwZWNpZmljYXRpb24NCmJ5IHRha2luZyB0aGUgcmVzZXJ2YXRpb24gbG9jayBhcm91bmQg
dGhlIG1hcHBpbmcgb3BlcmF0aW9ucy4gVGhlIHN0cmljdA0KbG9ja2luZyBjb252ZW50aW9uIHBy
ZXZlbnRzIGRlYWRsb2NrIHNpdHVhdGlvbnMgZm9yIGRtYS1idWYgaW1wb3J0ZXJzIGFuZA0KZXhw
b3J0ZXJzLg0KDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVu
a29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAyMCAr
KysrKysrKy0tLS0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEy
IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IDgwZmQ2Y2NjODhjNi4uYjQwNmY0MmQx
ZWJlIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTg1OSw4ICs4NTksOCBAQCBkbWFfYnVmX2R5bmFtaWNf
YXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkZXZpY2UgKmRldiwNCiAJICAg
IGRtYV9idWZfaXNfZHluYW1pYyhkbWFidWYpKSB7DQogCQlzdHJ1Y3Qgc2dfdGFibGUgKnNndDsN
CiANCisJCWRtYV9yZXN2X2xvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YsIE5VTEwpOw0KIAkJaWYg
KGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpIHsNCi0JCQlkbWFfcmVzdl9sb2Nr
KGF0dGFjaC0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsNCiAJCQlyZXQgPSBkbWFidWYtPm9wcy0+cGlu
KGF0dGFjaCk7DQogCQkJaWYgKHJldCkNCiAJCQkJZ290byBlcnJfdW5sb2NrOw0KQEAgLTg3Myw4
ICs4NzMsNyBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYs
IHN0cnVjdCBkZXZpY2UgKmRldiwNCiAJCQlyZXQgPSBQVFJfRVJSKHNndCk7DQogCQkJZ290byBl
cnJfdW5waW47DQogCQl9DQotCQlpZiAoZG1hX2J1Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVm
KSkNCi0JCQlkbWFfcmVzdl91bmxvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KKwkJZG1hX3Jl
c3ZfdW5sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCiAJCWF0dGFjaC0+c2d0ID0gc2d0Ow0K
IAkJYXR0YWNoLT5kaXIgPSBETUFfQklESVJFQ1RJT05BTDsNCiAJfQ0KQEAgLTg5MCw4ICs4ODks
NyBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVj
dCBkZXZpY2UgKmRldiwNCiAJCWRtYWJ1Zi0+b3BzLT51bnBpbihhdHRhY2gpOw0KIA0KIGVycl91
bmxvY2s6DQotCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKQ0KLQkJZG1h
X3Jlc3ZfdW5sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCisJZG1hX3Jlc3ZfdW5sb2NrKGF0
dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCiANCiAJZG1hX2J1Zl9kZXRhY2goZG1hYnVmLCBhdHRhY2gp
Ow0KIAlyZXR1cm4gRVJSX1BUUihyZXQpOw0KQEAgLTkzNywyMSArOTM1LDE5IEBAIHZvaWQgZG1h
X2J1Zl9kZXRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYXR0YWNoKQ0KIAlpZiAoV0FSTl9PTighZG1hYnVmIHx8ICFhdHRhY2gpKQ0KIAkJcmV0
dXJuOw0KIA0KKwlkbWFfcmVzdl9sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsNCisN
CiAJaWYgKGF0dGFjaC0+c2d0KSB7DQotCQlpZiAoZG1hX2J1Zl9pc19keW5hbWljKGF0dGFjaC0+
ZG1hYnVmKSkNCi0JCQlkbWFfcmVzdl9sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsN
CiANCiAJCV9fdW5tYXBfZG1hX2J1ZihhdHRhY2gsIGF0dGFjaC0+c2d0LCBhdHRhY2gtPmRpcik7
DQogDQotCQlpZiAoZG1hX2J1Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSkgew0KKwkJaWYg
KGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpDQogCQkJZG1hYnVmLT5vcHMtPnVu
cGluKGF0dGFjaCk7DQotCQkJZG1hX3Jlc3ZfdW5sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsN
Ci0JCX0NCiAJfQ0KLQ0KLQlkbWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQogCWxp
c3RfZGVsKCZhdHRhY2gtPm5vZGUpOw0KKw0KIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2
KTsNCisNCiAJaWYgKGRtYWJ1Zi0+b3BzLT5kZXRhY2gpDQogCQlkbWFidWYtPm9wcy0+ZGV0YWNo
KGRtYWJ1ZiwgYXR0YWNoKTsNCiANCi0tIA0KMi4zNy4zDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
