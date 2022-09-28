Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A735EE57F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:23:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DD863F511
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:23:54 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id B791F3F598
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:18:25 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EAFB666022C7;
	Wed, 28 Sep 2022 20:18:21 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392705;
	bh=fZnTUTQr3QLzm0jtSttVhNcnfmXvbA4RmJRVMLoWphc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IkR+QrnUT3c5KaLxBLm0AqA2EcE7+Jt+7LjK9vj1hVcTk2com126ETRais472fahl
	 VKhiayGfuFsb27rqSLCaPH+84Qw0yo3MgA3+8xE6sIlcjd/C7+V15lOp6CbDoxxxhD
	 Xg4bR/B5aMaAHznlSfEWbV7UO079mico9ojj3GIfG1FBiC5fTbMaCgkOwVyjabbr58
	 ED1IBiL39HeivVtumy5sbNgRqV6sVNMCX2TiLUhxysjgvyhGqOb+Nqwxo7p45kFPJs
	 m3zQfKgGNAc2/9Z51l2/22tF6uyhaZPPEq8fwjZu/zQ9urABN15JDPXrRLrXlqZHYa
	 bFg30Vpzg2+rQ==
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
Date: Wed, 28 Sep 2022 22:15:58 +0300
Message-Id: <20220928191600.5874-20-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: B791F3F598
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
	URIBL_BLOCKED(0.00)[collabora.com:email,collabora.com:dkim,amd.com:email,linaro.org:email];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=IkR+QrnU;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: BWECBLYXP4SCZMMIL4TBBMBVW7OSFNPT
X-Message-ID-Hash: BWECBLYXP4SCZMMIL4TBBMBVW7OSFNPT
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 19/21] dma-buf: Document dynamic locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BWECBLYXP4SCZMMIL4TBBMBVW7OSFNPT/>
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
dGFrZSB0aGUgcmVzZXJ2YXRpb24gbG9jayBhbmQNCndoZW4gbm90Lg0KDQpBY2tlZC1ieTogU3Vt
aXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NClJldmlld2VkLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBEbWl0
cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KLS0tDQogRG9jdW1l
bnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0IHwgIDYgKysrDQogZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYyAgICAgICAgICAgIHwgNjQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0K
IDIgZmlsZXMgY2hhbmdlZCwgNzAgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBp
L2RtYS1idWYucnN0DQppbmRleCAzNmE3NmNiZTkwOTUuLjYyMmI4MTU2ZDIxMiAxMDA2NDQNCi0t
LSBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdA0KKysrIGIvRG9jdW1lbnRh
dGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0DQpAQCAtMTE5LDYgKzExOSwxMiBAQCBETUEgQnVm
ZmVyIGlvY3Rscw0KIA0KIC4uIGtlcm5lbC1kb2M6OiBpbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1
Zi5oDQogDQorRE1BLUJVRiBsb2NraW5nIGNvbnZlbnRpb24NCit+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+DQorDQorLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCisgICA6ZG9jOiBsb2NraW5nIGNvbnZlbnRpb24NCisNCiBLZXJuZWwgRnVuY3Rp
b25zIGFuZCBTdHJ1Y3R1cmVzIFJlZmVyZW5jZQ0KIH5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
YyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IDI0NTJiNGM4MjU4NC4uZTA0ZDUw
NDQ0MWE1IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTc5NSw2ICs3OTUsNzAgQEAgc3RhdGljIHN0cnVj
dCBzZ190YWJsZSAqIF9fbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoLA0KIAlyZXR1cm4gc2dfdGFibGU7DQogfQ0KIA0KKy8qKg0KKyAqIERPQzogbG9ja2luZyBj
b252ZW50aW9uDQorICoNCisgKiBJbiBvcmRlciB0byBhdm9pZCBkZWFkbG9jayBzaXR1YXRpb25z
IGJldHdlZW4gZG1hLWJ1ZiBleHBvcnRzIGFuZCBpbXBvcnRlcnMsDQorICogYWxsIGRtYS1idWYg
QVBJIHVzZXJzIG11c3QgZm9sbG93IHRoZSBjb21tb24gZG1hLWJ1ZiBsb2NraW5nIGNvbnZlbnRp
b24uDQorICoNCisgKiBDb252ZW50aW9uIGZvciBpbXBvcnRlcnMNCisgKg0KKyAqIDEuIEltcG9y
dGVycyBtdXN0IGhvbGQgdGhlIGRtYS1idWYgcmVzZXJ2YXRpb24gbG9jayB3aGVuIGNhbGxpbmcg
dGhlc2UNCisgKiAgICBmdW5jdGlvbnM6DQorICoNCisgKiAgICAgLSBkbWFfYnVmX3BpbigpDQor
ICogICAgIC0gZG1hX2J1Zl91bnBpbigpDQorICogICAgIC0gZG1hX2J1Zl9tYXBfYXR0YWNobWVu
dCgpDQorICogICAgIC0gZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KCkNCisgKiAgICAgLSBkbWFf
YnVmX3ZtYXAoKQ0KKyAqICAgICAtIGRtYV9idWZfdnVubWFwKCkNCisgKg0KKyAqIDIuIEltcG9y
dGVycyBtdXN0IG5vdCBob2xkIHRoZSBkbWEtYnVmIHJlc2VydmF0aW9uIGxvY2sgd2hlbiBjYWxs
aW5nIHRoZXNlDQorICogICAgZnVuY3Rpb25zOg0KKyAqDQorICogICAgIC0gZG1hX2J1Zl9hdHRh
Y2goKQ0KKyAqICAgICAtIGRtYV9idWZfZHluYW1pY19hdHRhY2goKQ0KKyAqICAgICAtIGRtYV9i
dWZfZGV0YWNoKCkNCisgKiAgICAgLSBkbWFfYnVmX2V4cG9ydCgNCisgKiAgICAgLSBkbWFfYnVm
X2ZkKCkNCisgKiAgICAgLSBkbWFfYnVmX2dldCgpDQorICogICAgIC0gZG1hX2J1Zl9wdXQoKQ0K
KyAqICAgICAtIGRtYV9idWZfbW1hcCgpDQorICogICAgIC0gZG1hX2J1Zl9iZWdpbl9jcHVfYWNj
ZXNzKCkNCisgKiAgICAgLSBkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKCkNCisgKiAgICAgLSBkbWFf
YnVmX21hcF9hdHRhY2htZW50X3VubG9ja2VkKCkNCisgKiAgICAgLSBkbWFfYnVmX3VubWFwX2F0
dGFjaG1lbnRfdW5sb2NrZWQoKQ0KKyAqICAgICAtIGRtYV9idWZfdm1hcF91bmxvY2tlZCgpDQor
ICogICAgIC0gZG1hX2J1Zl92dW5tYXBfdW5sb2NrZWQoKQ0KKyAqDQorICogQ29udmVudGlvbiBm
b3IgZXhwb3J0ZXJzDQorICoNCisgKiAxLiBUaGVzZSAmZG1hX2J1Zl9vcHMgY2FsbGJhY2tzIGFy
ZSBpbnZva2VkIHdpdGggdW5sb2NrZWQgZG1hLWJ1Zg0KKyAqICAgIHJlc2VydmF0aW9uIGFuZCBl
eHBvcnRlciBjYW4gdGFrZSB0aGUgbG9jazoNCisgKg0KKyAqICAgICAtICZkbWFfYnVmX29wcy5h
dHRhY2goKQ0KKyAqICAgICAtICZkbWFfYnVmX29wcy5kZXRhY2goKQ0KKyAqICAgICAtICZkbWFf
YnVmX29wcy5yZWxlYXNlKCkNCisgKiAgICAgLSAmZG1hX2J1Zl9vcHMuYmVnaW5fY3B1X2FjY2Vz
cygpDQorICogICAgIC0gJmRtYV9idWZfb3BzLmVuZF9jcHVfYWNjZXNzKCkNCisgKg0KKyAqIDIu
IFRoZXNlICZkbWFfYnVmX29wcyBjYWxsYmFja3MgYXJlIGludm9rZWQgd2l0aCBsb2NrZWQgZG1h
LWJ1Zg0KKyAqICAgIHJlc2VydmF0aW9uIGFuZCBleHBvcnRlciBjYW4ndCB0YWtlIHRoZSBsb2Nr
Og0KKyAqDQorICogICAgIC0gJmRtYV9idWZfb3BzLnBpbigpDQorICogICAgIC0gJmRtYV9idWZf
b3BzLnVucGluKCkNCisgKiAgICAgLSAmZG1hX2J1Zl9vcHMubWFwX2RtYV9idWYoKQ0KKyAqICAg
ICAtICZkbWFfYnVmX29wcy51bm1hcF9kbWFfYnVmKCkNCisgKiAgICAgLSAmZG1hX2J1Zl9vcHMu
bW1hcCgpDQorICogICAgIC0gJmRtYV9idWZfb3BzLnZtYXAoKQ0KKyAqICAgICAtICZkbWFfYnVm
X29wcy52dW5tYXAoKQ0KKyAqDQorICogMy4gRXhwb3J0ZXJzIG11c3QgaG9sZCB0aGUgZG1hLWJ1
ZiByZXNlcnZhdGlvbiBsb2NrIHdoZW4gY2FsbGluZyB0aGVzZQ0KKyAqICAgIGZ1bmN0aW9uczoN
CisgKg0KKyAqICAgICAtIGRtYV9idWZfbW92ZV9ub3RpZnkoKQ0KKyAqLw0KKw0KIC8qKg0KICAq
IGRtYV9idWZfZHluYW1pY19hdHRhY2ggLSBBZGQgdGhlIGRldmljZSB0byBkbWFfYnVmJ3MgYXR0
YWNobWVudHMgbGlzdA0KICAqIEBkbWFidWY6CQlbaW5dCWJ1ZmZlciB0byBhdHRhY2ggZGV2aWNl
IHRvLg0KLS0gDQoyLjM3LjMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
