Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC6A601564
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:30:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88DEB3F499
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:30:45 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 78ED53F4B7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:25:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=ixNK8eoh;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 715C5660239A;
	Mon, 17 Oct 2022 18:25:13 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027517;
	bh=eaLjCraTT1GPpkqMnTrFN+ZZRUAD0dWcnDH9iWQk4VI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ixNK8eohTZgM2hHUpOqkP/I1+ZB7GD4+Z60Drk4AVVEZG/+20R9WWaGDvdVAV7cZH
	 WeXOID4YN2Y7kPUxJK7df3J0vPzstg4yys3ZfjmVsKXOwrxHDw9xyEuKT6tAHgCR5W
	 oCHvK69pbMyBVExD6g/rtvRiNgbfG0+oWjruHDpUiVhAIAe8sluf4sj/BH42tLGRFM
	 VJAsK1ud0P03KUjJiG5ZOx/Igribw+Gt6AOziTQDUbkx+WxQROg7Dnu9R90QmqlnON
	 VVOt86H40NG7i/aigFJRg6wIKosNxFUtGR7whUXP++xAYpk9Yib5upxLekMRAojW5U
	 5YN8YeQcX9EGQ==
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
Date: Mon, 17 Oct 2022 20:22:25 +0300
Message-Id: <20221017172229.42269-18-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 78ED53F4B7
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
Message-ID-Hash: 62HXBRR5HPW22AHFMXS2P7GZJFMEHJRL
X-Message-ID-Hash: 62HXBRR5HPW22AHFMXS2P7GZJFMEHJRL
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 17/21] dma-buf: Move dma_buf_map_attachment() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/62HXBRR5HPW22AHFMXS2P7GZJFMEHJRL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TW92ZSBkbWEtYnVmIGF0dGFjaG1lbnQgbWFwcGluZyBmdW5jdGlvbnMgdG8gdGhlIGR5bmFtaWMg
bG9ja2luZw0Kc3BlY2lmaWNhdGlvbiBieSBhc3NlcnRpbmcgdGhhdCB0aGUgcmVzZXJ2YXRpb24g
bG9jayBpcyBoZWxkLg0KDQpBY2tlZC1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGlu
YXJvLm9yZz4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5r
b0Bjb2xsYWJvcmEuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDEwICsr
LS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygt
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMNCmluZGV4IGQ2ODVhNWFkYjEyMi4uZjU0YzY0OWY5MjJhIDEwMDY0NA0K
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYw0KQEAgLTEwMzgsOCArMTAzOCw3IEBAIHN0cnVjdCBzZ190YWJsZSAqZG1hX2J1Zl9t
YXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQogCWlmIChX
QVJOX09OKCFhdHRhY2ggfHwgIWF0dGFjaC0+ZG1hYnVmKSkNCiAJCXJldHVybiBFUlJfUFRSKC1F
SU5WQUwpOw0KIA0KLQlpZiAoZG1hX2J1Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMoYXR0YWNoKSkN
Ci0JCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCisJZG1hX3Jl
c3ZfYXNzZXJ0X2hlbGQoYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KIA0KIAlpZiAoYXR0YWNoLT5z
Z3QpIHsNCiAJCS8qDQpAQCAtMTA1NCw3ICsxMDUzLDYgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFf
YnVmX21hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCiAJ
fQ0KIA0KIAlpZiAoZG1hX2J1Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSkgew0KLQkJZG1h
X3Jlc3ZfYXNzZXJ0X2hlbGQoYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KIAkJaWYgKCFJU19FTkFC
TEVEKENPTkZJR19ETUFCVUZfTU9WRV9OT1RJRlkpKSB7DQogCQkJciA9IGF0dGFjaC0+ZG1hYnVm
LT5vcHMtPnBpbihhdHRhY2gpOw0KIAkJCWlmIChyKQ0KQEAgLTExNDMsMTUgKzExNDEsMTEgQEAg
dm9pZCBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAq
YXR0YWNoLA0KIAlpZiAoV0FSTl9PTighYXR0YWNoIHx8ICFhdHRhY2gtPmRtYWJ1ZiB8fCAhc2df
dGFibGUpKQ0KIAkJcmV0dXJuOw0KIA0KLQlpZiAoZG1hX2J1Zl9hdHRhY2htZW50X2lzX2R5bmFt
aWMoYXR0YWNoKSkNCi0JCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVmLT5yZXN2
KTsNCisJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KIA0KIAlp
ZiAoYXR0YWNoLT5zZ3QgPT0gc2dfdGFibGUpDQogCQlyZXR1cm47DQogDQotCWlmIChkbWFfYnVm
X2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKQ0KLQkJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYXR0
YWNoLT5kbWFidWYtPnJlc3YpOw0KLQ0KIAlfX3VubWFwX2RtYV9idWYoYXR0YWNoLCBzZ190YWJs
ZSwgZGlyZWN0aW9uKTsNCiANCiAJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1
ZikgJiYNCi0tIA0KMi4zNy4zDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
