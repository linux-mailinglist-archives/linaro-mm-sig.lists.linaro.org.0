Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8565EE578
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:22:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 841963F506
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:22:00 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 2A8123F1AA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:18:06 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7104266022A1;
	Wed, 28 Sep 2022 20:18:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392685;
	bh=rursgbmP7QEQ6FtIuHaTGEHDv1XGwQXcoPlxwDcrJ6M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cKGxqPxYTnJ7gbSl0REsz3t7EmPZugORuORA/i+Eu6nf3wo8qgtjKEeB16t8yiLnM
	 GpEdA62cAm8sDPyj272ejFN71JzjqE7yO8ppnTz1wASTNkmtA3VEVZJxsiCVofcVVW
	 SUQH7vNMHZnwexAQkur7IMYehvAm3NYstj6pdhug8aOopPw1o695tXKbOCWtnPJVZ5
	 yfBCmGcFqLfCePTr18+hJpDGgZh142vXWvkAdez2oLO4M+rykKMdYLhjS/B/G6KI1R
	 Afr5YFpzTupgbYVM6tTE5bAe4s7GaGbt10HQYxv9yUSf9cSpTjLQ8MB+w9LDsRK81S
	 0sT0jJc2nn9rA==
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
Date: Wed, 28 Sep 2022 22:15:52 +0300
Message-Id: <20220928191600.5874-14-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 2A8123F1AA
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
	URIBL_BLOCKED(0.00)[amd.com:email,collabora.com:email,collabora.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=cKGxqPxY;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: E4SVVO5E6NZYRL45LIDQAPDRVC2YHPGA
X-Message-ID-Hash: E4SVVO5E6NZYRL45LIDQAPDRVC2YHPGA
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 13/21] media: videobuf2: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E4SVVO5E6NZYRL45LIDQAPDRVC2YHPGA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBWNEwyIG1lbW9yeSBhbGxvY2F0b3JzIHRvIHRoZSBjb21tb24gZHluYW1pYyBkbWEt
YnVmIGxvY2tpbmcNCmNvbnZlbnRpb24gYnkgc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2
ZXJzaW9ucyBvZiBkbWEtYnVmIEFQSQ0KZnVuY3Rpb25zLg0KDQpBY2tlZC1ieTogVG9tYXN6IEZp
Z2EgPHRmaWdhQGNocm9taXVtLm9yZz4NCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRt
aXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KLS0tDQogZHJpdmVycy9tZWRpYS9jb21tb24v
dmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMgfCAxMSArKysrKystLS0tLQ0KIGRyaXZl
cnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMgICAgIHwgIDggKysr
Ky0tLS0NCiBkcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2Mu
YyAgICB8ICA2ICsrKy0tLQ0KIDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTIg
ZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVm
Mi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jDQppbmRleCA2NzhiMzU5NzE3YzQuLjc5ZjRkODMwMWZi
YiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjIt
ZG1hLWNvbnRpZy5jDQorKysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9i
dWYyLWRtYS1jb250aWcuYw0KQEAgLTEwMSw3ICsxMDEsNyBAQCBzdGF0aWMgdm9pZCAqdmIyX2Rj
X3ZhZGRyKHN0cnVjdCB2YjJfYnVmZmVyICp2Yiwgdm9pZCAqYnVmX3ByaXYpDQogCWlmIChidWYt
PmRiX2F0dGFjaCkgew0KIAkJc3RydWN0IGlvc3lzX21hcCBtYXA7DQogDQotCQlpZiAoIWRtYV9i
dWZfdm1hcChidWYtPmRiX2F0dGFjaC0+ZG1hYnVmLCAmbWFwKSkNCisJCWlmICghZG1hX2J1Zl92
bWFwX3VubG9ja2VkKGJ1Zi0+ZGJfYXR0YWNoLT5kbWFidWYsICZtYXApKQ0KIAkJCWJ1Zi0+dmFk
ZHIgPSBtYXAudmFkZHI7DQogDQogCQlyZXR1cm4gYnVmLT52YWRkcjsNCkBAIC03MTEsNyArNzEx
LDcgQEAgc3RhdGljIGludCB2YjJfZGNfbWFwX2RtYWJ1Zih2b2lkICptZW1fcHJpdikNCiAJfQ0K
IA0KIAkvKiBnZXQgdGhlIGFzc29jaWF0ZWQgc2NhdHRlcmxpc3QgZm9yIHRoaXMgYnVmZmVyICov
DQotCXNndCA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoYnVmLT5kYl9hdHRhY2gsIGJ1Zi0+ZG1h
X2Rpcik7DQorCXNndCA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoYnVmLT5kYl9h
dHRhY2gsIGJ1Zi0+ZG1hX2Rpcik7DQogCWlmIChJU19FUlIoc2d0KSkgew0KIAkJcHJfZXJyKCJF
cnJvciBnZXR0aW5nIGRtYWJ1ZiBzY2F0dGVybGlzdFxuIik7DQogCQlyZXR1cm4gLUVJTlZBTDsN
CkBAIC03MjIsNyArNzIyLDggQEAgc3RhdGljIGludCB2YjJfZGNfbWFwX2RtYWJ1Zih2b2lkICpt
ZW1fcHJpdikNCiAJaWYgKGNvbnRpZ19zaXplIDwgYnVmLT5zaXplKSB7DQogCQlwcl9lcnIoImNv
bnRpZ3VvdXMgY2h1bmsgaXMgdG9vIHNtYWxsICVsdS8lbHVcbiIsDQogCQkgICAgICAgY29udGln
X3NpemUsIGJ1Zi0+c2l6ZSk7DQotCQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoYnVmLT5kYl9h
dHRhY2gsIHNndCwgYnVmLT5kbWFfZGlyKTsNCisJCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91
bmxvY2tlZChidWYtPmRiX2F0dGFjaCwgc2d0LA0KKwkJCQkJCSAgYnVmLT5kbWFfZGlyKTsNCiAJ
CXJldHVybiAtRUZBVUxUOw0KIAl9DQogDQpAQCAtNzUwLDEwICs3NTEsMTAgQEAgc3RhdGljIHZv
aWQgdmIyX2RjX3VubWFwX2RtYWJ1Zih2b2lkICptZW1fcHJpdikNCiAJfQ0KIA0KIAlpZiAoYnVm
LT52YWRkcikgew0KLQkJZG1hX2J1Zl92dW5tYXAoYnVmLT5kYl9hdHRhY2gtPmRtYWJ1ZiwgJm1h
cCk7DQorCQlkbWFfYnVmX3Z1bm1hcF91bmxvY2tlZChidWYtPmRiX2F0dGFjaC0+ZG1hYnVmLCAm
bWFwKTsNCiAJCWJ1Zi0+dmFkZHIgPSBOVUxMOw0KIAl9DQotCWRtYV9idWZfdW5tYXBfYXR0YWNo
bWVudChidWYtPmRiX2F0dGFjaCwgc2d0LCBidWYtPmRtYV9kaXIpOw0KKwlkbWFfYnVmX3VubWFw
X2F0dGFjaG1lbnRfdW5sb2NrZWQoYnVmLT5kYl9hdHRhY2gsIHNndCwgYnVmLT5kbWFfZGlyKTsN
CiANCiAJYnVmLT5kbWFfYWRkciA9IDA7DQogCWJ1Zi0+ZG1hX3NndCA9IE5VTEw7DQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYyBi
L2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMNCmluZGV4
IGZhNjkxNThhNjViMS4uMzZlY2RlYThkNzA3IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9tZWRpYS9j
b21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYw0KKysrIGIvZHJpdmVycy9tZWRpYS9j
b21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYw0KQEAgLTMwOSw3ICszMDksNyBAQCBz
dGF0aWMgdm9pZCAqdmIyX2RtYV9zZ192YWRkcihzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIsIHZvaWQg
KmJ1Zl9wcml2KQ0KIA0KIAlpZiAoIWJ1Zi0+dmFkZHIpIHsNCiAJCWlmIChidWYtPmRiX2F0dGFj
aCkgew0KLQkJCXJldCA9IGRtYV9idWZfdm1hcChidWYtPmRiX2F0dGFjaC0+ZG1hYnVmLCAmbWFw
KTsNCisJCQlyZXQgPSBkbWFfYnVmX3ZtYXBfdW5sb2NrZWQoYnVmLT5kYl9hdHRhY2gtPmRtYWJ1
ZiwgJm1hcCk7DQogCQkJYnVmLT52YWRkciA9IHJldCA/IE5VTEwgOiBtYXAudmFkZHI7DQogCQl9
IGVsc2Ugew0KIAkJCWJ1Zi0+dmFkZHIgPSB2bV9tYXBfcmFtKGJ1Zi0+cGFnZXMsIGJ1Zi0+bnVt
X3BhZ2VzLCAtMSk7DQpAQCAtNTY1LDcgKzU2NSw3IEBAIHN0YXRpYyBpbnQgdmIyX2RtYV9zZ19t
YXBfZG1hYnVmKHZvaWQgKm1lbV9wcml2KQ0KIAl9DQogDQogCS8qIGdldCB0aGUgYXNzb2NpYXRl
ZCBzY2F0dGVybGlzdCBmb3IgdGhpcyBidWZmZXIgKi8NCi0Jc2d0ID0gZG1hX2J1Zl9tYXBfYXR0
YWNobWVudChidWYtPmRiX2F0dGFjaCwgYnVmLT5kbWFfZGlyKTsNCisJc2d0ID0gZG1hX2J1Zl9t
YXBfYXR0YWNobWVudF91bmxvY2tlZChidWYtPmRiX2F0dGFjaCwgYnVmLT5kbWFfZGlyKTsNCiAJ
aWYgKElTX0VSUihzZ3QpKSB7DQogCQlwcl9lcnIoIkVycm9yIGdldHRpbmcgZG1hYnVmIHNjYXR0
ZXJsaXN0XG4iKTsNCiAJCXJldHVybiAtRUlOVkFMOw0KQEAgLTU5NCwxMCArNTk0LDEwIEBAIHN0
YXRpYyB2b2lkIHZiMl9kbWFfc2dfdW5tYXBfZG1hYnVmKHZvaWQgKm1lbV9wcml2KQ0KIAl9DQog
DQogCWlmIChidWYtPnZhZGRyKSB7DQotCQlkbWFfYnVmX3Z1bm1hcChidWYtPmRiX2F0dGFjaC0+
ZG1hYnVmLCAmbWFwKTsNCisJCWRtYV9idWZfdnVubWFwX3VubG9ja2VkKGJ1Zi0+ZGJfYXR0YWNo
LT5kbWFidWYsICZtYXApOw0KIAkJYnVmLT52YWRkciA9IE5VTEw7DQogCX0NCi0JZG1hX2J1Zl91
bm1hcF9hdHRhY2htZW50KGJ1Zi0+ZGJfYXR0YWNoLCBzZ3QsIGJ1Zi0+ZG1hX2Rpcik7DQorCWRt
YV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZChidWYtPmRiX2F0dGFjaCwgc2d0LCBidWYt
PmRtYV9kaXIpOw0KIA0KIAlidWYtPmRtYV9zZ3QgPSBOVUxMOw0KIH0NCmRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYyBiL2RyaXZl
cnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItdm1hbGxvYy5jDQppbmRleCA5NDgx
NTJmMTU5NmIuLjc4MzFiZjU0NTg3NCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9u
L3ZpZGVvYnVmMi92aWRlb2J1ZjItdm1hbGxvYy5jDQorKysgYi9kcml2ZXJzL21lZGlhL2NvbW1v
bi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYw0KQEAgLTM3Niw3ICszNzYsNyBAQCBzdGF0
aWMgaW50IHZiMl92bWFsbG9jX21hcF9kbWFidWYodm9pZCAqbWVtX3ByaXYpDQogCXN0cnVjdCBp
b3N5c19tYXAgbWFwOw0KIAlpbnQgcmV0Ow0KIA0KLQlyZXQgPSBkbWFfYnVmX3ZtYXAoYnVmLT5k
YnVmLCAmbWFwKTsNCisJcmV0ID0gZG1hX2J1Zl92bWFwX3VubG9ja2VkKGJ1Zi0+ZGJ1ZiwgJm1h
cCk7DQogCWlmIChyZXQpDQogCQlyZXR1cm4gLUVGQVVMVDsNCiAJYnVmLT52YWRkciA9IG1hcC52
YWRkcjsNCkBAIC0zODksNyArMzg5LDcgQEAgc3RhdGljIHZvaWQgdmIyX3ZtYWxsb2NfdW5tYXBf
ZG1hYnVmKHZvaWQgKm1lbV9wcml2KQ0KIAlzdHJ1Y3QgdmIyX3ZtYWxsb2NfYnVmICpidWYgPSBt
ZW1fcHJpdjsNCiAJc3RydWN0IGlvc3lzX21hcCBtYXAgPSBJT1NZU19NQVBfSU5JVF9WQUREUihi
dWYtPnZhZGRyKTsNCiANCi0JZG1hX2J1Zl92dW5tYXAoYnVmLT5kYnVmLCAmbWFwKTsNCisJZG1h
X2J1Zl92dW5tYXBfdW5sb2NrZWQoYnVmLT5kYnVmLCAmbWFwKTsNCiAJYnVmLT52YWRkciA9IE5V
TEw7DQogfQ0KIA0KQEAgLTM5OSw3ICszOTksNyBAQCBzdGF0aWMgdm9pZCB2YjJfdm1hbGxvY19k
ZXRhY2hfZG1hYnVmKHZvaWQgKm1lbV9wcml2KQ0KIAlzdHJ1Y3QgaW9zeXNfbWFwIG1hcCA9IElP
U1lTX01BUF9JTklUX1ZBRERSKGJ1Zi0+dmFkZHIpOw0KIA0KIAlpZiAoYnVmLT52YWRkcikNCi0J
CWRtYV9idWZfdnVubWFwKGJ1Zi0+ZGJ1ZiwgJm1hcCk7DQorCQlkbWFfYnVmX3Z1bm1hcF91bmxv
Y2tlZChidWYtPmRidWYsICZtYXApOw0KIA0KIAlrZnJlZShidWYpOw0KIH0NCi0tIA0KMi4zNy4z
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
