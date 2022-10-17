Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E243A601560
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:30:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F398F3F499
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:30:24 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id F34433EC47
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:25:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b="c/m/3UKS";
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 09FA166023A3;
	Mon, 17 Oct 2022 18:25:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027513;
	bh=tqLpeFJU2Utf7ZkDmJ6+Yo9KZW5+mtoG82+i9UwVYdE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=c/m/3UKSAhvWZZMB6F3ciRlgqywUvzk0M2oKZRJ97q7dS5pgXIfI0goi0jXEVVxXT
	 DCPsdIqyXkTrXE1CYoRrtYwgd0Uq0vfAuzdvHXaU0+c5DjnzsdLc7uwCz5qgQJCBBg
	 T6HTSnLud0r/FbEMDJpiDyQUvZdS2Xy1Xc+lfs/qzyDI7DR6sGuyQHDNGuYan2qV7G
	 2b9Fy70+kL02cvGj3kPmhrmQm2jkgq6hjm4H7tgnPmXnWqPpODMKpOvvTEZBAM3OJ1
	 1jdwHv7T4n2thoOeSHgo5+FEHCvz2PtMw221fkSYukUlytADnRTwzd8Iffm6DV3FRB
	 VRpWOgnXohnfg==
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
Date: Mon, 17 Oct 2022 20:22:24 +0300
Message-Id: <20221017172229.42269-17-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: F34433EC47
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
Message-ID-Hash: LRA4QZED3T7U46AUO342JPTDFLIAONQO
X-Message-ID-Hash: LRA4QZED3T7U46AUO342JPTDFLIAONQO
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 16/21] dma-buf: Move dma_buf_attach() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LRA4QZED3T7U46AUO342JPTDFLIAONQO/>
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
b3J0ZXJzLg0KDQpBY2tlZC1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9y
Zz4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQpTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xs
YWJvcmEuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDIwICsrKysrKysr
LS0tLS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRp
b25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggMmM0MzgxYmI5NDc4Li5kNjg1YTVhZGIxMjIgMTAw
NjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jDQpAQCAtODU5LDggKzg1OSw4IEBAIGRtYV9idWZfZHluYW1pY19hdHRhY2go
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRldmljZSAqZGV2LA0KIAkgICAgZG1hX2J1
Zl9pc19keW5hbWljKGRtYWJ1ZikpIHsNCiAJCXN0cnVjdCBzZ190YWJsZSAqc2d0Ow0KIA0KKwkJ
ZG1hX3Jlc3ZfbG9jayhhdHRhY2gtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQogCQlpZiAoZG1hX2J1
Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSkgew0KLQkJCWRtYV9yZXN2X2xvY2soYXR0YWNo
LT5kbWFidWYtPnJlc3YsIE5VTEwpOw0KIAkJCXJldCA9IGRtYWJ1Zi0+b3BzLT5waW4oYXR0YWNo
KTsNCiAJCQlpZiAocmV0KQ0KIAkJCQlnb3RvIGVycl91bmxvY2s7DQpAQCAtODczLDggKzg3Myw3
IEBAIGRtYV9idWZfZHluYW1pY19hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0
IGRldmljZSAqZGV2LA0KIAkJCXJldCA9IFBUUl9FUlIoc2d0KTsNCiAJCQlnb3RvIGVycl91bnBp
bjsNCiAJCX0NCi0JCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKQ0KLQkJ
CWRtYV9yZXN2X3VubG9jayhhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7DQorCQlkbWFfcmVzdl91bmxv
Y2soYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KIAkJYXR0YWNoLT5zZ3QgPSBzZ3Q7DQogCQlhdHRh
Y2gtPmRpciA9IERNQV9CSURJUkVDVElPTkFMOw0KIAl9DQpAQCAtODkwLDggKzg4OSw3IEBAIGRt
YV9idWZfZHluYW1pY19hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRldmlj
ZSAqZGV2LA0KIAkJZG1hYnVmLT5vcHMtPnVucGluKGF0dGFjaCk7DQogDQogZXJyX3VubG9jazoN
Ci0JaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpDQotCQlkbWFfcmVzdl91
bmxvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KKwlkbWFfcmVzdl91bmxvY2soYXR0YWNoLT5k
bWFidWYtPnJlc3YpOw0KIA0KIAlkbWFfYnVmX2RldGFjaChkbWFidWYsIGF0dGFjaCk7DQogCXJl
dHVybiBFUlJfUFRSKHJldCk7DQpAQCAtOTM3LDIxICs5MzUsMTkgQEAgdm9pZCBkbWFfYnVmX2Rl
dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICph
dHRhY2gpDQogCWlmIChXQVJOX09OKCFkbWFidWYgfHwgIWF0dGFjaCkpDQogCQlyZXR1cm47DQog
DQorCWRtYV9yZXN2X2xvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YsIE5VTEwpOw0KKw0KIAlpZiAo
YXR0YWNoLT5zZ3QpIHsNCi0JCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYp
KQ0KLQkJCWRtYV9yZXN2X2xvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YsIE5VTEwpOw0KIA0KIAkJ
X191bm1hcF9kbWFfYnVmKGF0dGFjaCwgYXR0YWNoLT5zZ3QsIGF0dGFjaC0+ZGlyKTsNCiANCi0J
CWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKSB7DQorCQlpZiAoZG1hX2J1
Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSkNCiAJCQlkbWFidWYtPm9wcy0+dW5waW4oYXR0
YWNoKTsNCi0JCQlkbWFfcmVzdl91bmxvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KLQkJfQ0K
IAl9DQotDQotCWRtYV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCBOVUxMKTsNCiAJbGlzdF9kZWwo
JmF0dGFjaC0+bm9kZSk7DQorDQogCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOw0KKw0K
IAlpZiAoZG1hYnVmLT5vcHMtPmRldGFjaCkNCiAJCWRtYWJ1Zi0+b3BzLT5kZXRhY2goZG1hYnVm
LCBhdHRhY2gpOw0KIA0KLS0gDQoyLjM3LjMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
