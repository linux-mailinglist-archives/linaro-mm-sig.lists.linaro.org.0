Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 253C76014DB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:25:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C86A3F4E8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:25:13 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 36D423F4B7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:24:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=PrnB+hIp;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B7BE26602375;
	Mon, 17 Oct 2022 18:24:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027460;
	bh=EgoLeiRcyZ6rtEkUvPDBuaLVPAM8w09Garsg2bXjQi4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PrnB+hIpA9nwg2noU4fw+jB4a5k6TAdFBgwjbcFxVz4gk0UicobU4SqAdnv7n/+Fv
	 DJ7sexIP36v9XLtCie4IsYLHM6LIpvhnOmhLdUNDAysHo/uA/+yHjSW79yrwqYRRdx
	 kJHArdUBp/9a/UnH0mVzeItwf3wiKEFMPynUYOrb+cqAybh4okxZQVRLMirSWWRJfH
	 k+Crle1O0httVnbUldJzvMWHEmQmpgPyBbDCm8dUF74V2VrKwJwEppEPNLO9J9mH/t
	 WOp20K9YDLdmcwPdYJlkaOizOtnfkVum8yrn2ZwIpTiD9kxZnJyv1wo7kwmgq/u8ff
	 ON+xlwHL8eqCg==
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
Date: Mon, 17 Oct 2022 20:22:10 +0300
Message-Id: <20221017172229.42269-3-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 36D423F4B7
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
Message-ID-Hash: HDP36SC2R24KDTUB6PWZEQ6MTKEBLWWP
X-Message-ID-Hash: HDP36SC2R24KDTUB6PWZEQ6MTKEBLWWP
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 02/21] dma-buf: Add unlocked variant of attachment-mapping functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HDP36SC2R24KDTUB6PWZEQ6MTKEBLWWP/>
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
b24gbG9jayBleHBsaWNpdGx5Lg0KDQpBY2tlZC1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13
YWxAbGluYXJvLm9yZz4NCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lw
ZW5rb0Bjb2xsYWJvcmEuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDUz
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KIGluY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oICAgfCAgNiArKysrKw0KIDIgZmlsZXMgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygr
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMNCmluZGV4IGU5NWZjOGRjM2FlZC4uM2U0MDYwZGFkYjc0IDEwMDY0NA0K
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYw0KQEAgLTExMDAsNiArMTEwMCwzNCBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZf
bWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KIH0NCiBF
WFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX21hcF9hdHRhY2htZW50LCBETUFfQlVGKTsNCiAN
CisvKioNCisgKiBkbWFfYnVmX21hcF9hdHRhY2htZW50X3VubG9ja2VkIC0gUmV0dXJucyB0aGUg
c2NhdHRlcmxpc3QgdGFibGUgb2YgdGhlIGF0dGFjaG1lbnQ7DQorICogbWFwcGVkIGludG8gX2Rl
dmljZV8gYWRkcmVzcyBzcGFjZS4gSXMgYSB3cmFwcGVyIGZvciBtYXBfZG1hX2J1ZigpIG9mIHRo
ZQ0KKyAqIGRtYV9idWZfb3BzLg0KKyAqIEBhdHRhY2g6CVtpbl0JYXR0YWNobWVudCB3aG9zZSBz
Y2F0dGVybGlzdCBpcyB0byBiZSByZXR1cm5lZA0KKyAqIEBkaXJlY3Rpb246CVtpbl0JZGlyZWN0
aW9uIG9mIERNQSB0cmFuc2Zlcg0KKyAqDQorICogVW5sb2NrZWQgdmFyaWFudCBvZiBkbWFfYnVm
X21hcF9hdHRhY2htZW50KCkuDQorICovDQorc3RydWN0IHNnX3RhYmxlICoNCitkbWFfYnVmX21h
cF9hdHRhY2htZW50X3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwN
CisJCQkJZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQ0KK3sNCisJc3RydWN0IHNn
X3RhYmxlICpzZ190YWJsZTsNCisNCisJbWlnaHRfc2xlZXAoKTsNCisNCisJaWYgKFdBUk5fT04o
IWF0dGFjaCB8fCAhYXR0YWNoLT5kbWFidWYpKQ0KKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7
DQorDQorCWRtYV9yZXN2X2xvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YsIE5VTEwpOw0KKwlzZ190
YWJsZSA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoYXR0YWNoLCBkaXJlY3Rpb24pOw0KKwlkbWFf
cmVzdl91bmxvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KKw0KKwlyZXR1cm4gc2dfdGFibGU7
DQorfQ0KK0VYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfbWFwX2F0dGFjaG1lbnRfdW5sb2Nr
ZWQsIERNQV9CVUYpOw0KKw0KIC8qKg0KICAqIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCAtIHVu
bWFwcyBhbmQgZGVjcmVhc2VzIHVzZWNvdW50IG9mIHRoZSBidWZmZXI7bWlnaHQNCiAgKiBkZWFs
bG9jYXRlIHRoZSBzY2F0dGVybGlzdCBhc3NvY2lhdGVkLiBJcyBhIHdyYXBwZXIgZm9yIHVubWFw
X2RtYV9idWYoKSBvZg0KQEAgLTExMzYsNiArMTE2NCwzMSBAQCB2b2lkIGRtYV9idWZfdW5tYXBf
YXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQogfQ0KIEVYUE9S
VF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCwgRE1BX0JVRik7DQogDQor
LyoqDQorICogZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkIC0gdW5tYXBzIGFuZCBk
ZWNyZWFzZXMgdXNlY291bnQgb2YgdGhlIGJ1ZmZlcjttaWdodA0KKyAqIGRlYWxsb2NhdGUgdGhl
IHNjYXR0ZXJsaXN0IGFzc29jaWF0ZWQuIElzIGEgd3JhcHBlciBmb3IgdW5tYXBfZG1hX2J1Zigp
IG9mDQorICogZG1hX2J1Zl9vcHMuDQorICogQGF0dGFjaDoJW2luXQlhdHRhY2htZW50IHRvIHVu
bWFwIGJ1ZmZlciBmcm9tDQorICogQHNnX3RhYmxlOglbaW5dCXNjYXR0ZXJsaXN0IGluZm8gb2Yg
dGhlIGJ1ZmZlciB0byB1bm1hcA0KKyAqIEBkaXJlY3Rpb246CVtpbl0JZGlyZWN0aW9uIG9mIERN
QSB0cmFuc2Zlcg0KKyAqDQorICogVW5sb2NrZWQgdmFyaWFudCBvZiBkbWFfYnVmX3VubWFwX2F0
dGFjaG1lbnQoKS4NCisgKi8NCit2b2lkIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tl
ZChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQorCQkJCSAgICAgICBzdHJ1Y3Qg
c2dfdGFibGUgKnNnX3RhYmxlLA0KKwkJCQkgICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24g
ZGlyZWN0aW9uKQ0KK3sNCisJbWlnaHRfc2xlZXAoKTsNCisNCisJaWYgKFdBUk5fT04oIWF0dGFj
aCB8fCAhYXR0YWNoLT5kbWFidWYgfHwgIXNnX3RhYmxlKSkNCisJCXJldHVybjsNCisNCisJZG1h
X3Jlc3ZfbG9jayhhdHRhY2gtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQorCWRtYV9idWZfdW5tYXBf
YXR0YWNobWVudChhdHRhY2gsIHNnX3RhYmxlLCBkaXJlY3Rpb24pOw0KKwlkbWFfcmVzdl91bmxv
Y2soYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KK30NCitFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFf
YnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQsIERNQV9CVUYpOw0KKw0KIC8qKg0KICAqIGRt
YV9idWZfbW92ZV9ub3RpZnkgLSBub3RpZnkgYXR0YWNobWVudHMgdGhhdCBETUEtYnVmIGlzIG1v
dmluZw0KICAqDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRl
L2xpbnV4L2RtYS1idWYuaA0KaW5kZXggOGRhYTA1NGRkN2ZlLi5mMTFiNWJiYzJmMzcgMTAwNjQ0
DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEt
YnVmLmgNCkBAIC02MjcsNiArNjI3LDEyIEBAIGludCBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3Mo
c3RydWN0IGRtYV9idWYgKmRtYV9idWYsDQogCQkJICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlv
biBkaXIpOw0KIGludCBkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFf
YnVmLA0KIAkJCSAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcik7DQorc3RydWN0IHNnX3Rh
YmxlICoNCitkbWFfYnVmX21hcF9hdHRhY2htZW50X3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0dGFjaCwNCisJCQkJZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9u
KTsNCit2b2lkIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZChzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2gsDQorCQkJCSAgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnNnX3Rh
YmxlLA0KKwkJCQkgICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKTsNCiAN
CiBpbnQgZG1hX2J1Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICosIHN0cnVjdCB2bV9hcmVhX3N0cnVj
dCAqLA0KIAkJIHVuc2lnbmVkIGxvbmcpOw0KLS0gDQoyLjM3LjMNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
