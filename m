Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E589AD394C0
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 13:09:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 140F43F9A7
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 12:09:34 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id D5B274015B
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jan 2026 12:09:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XdjxvoAb;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7D3D66013F;
	Sun, 18 Jan 2026 12:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE81EC116D0;
	Sun, 18 Jan 2026 12:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768738146;
	bh=mm/K0ex6EqQRFx0JMS0zNSZNpU/4euJk26DLE2qJ+Sg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XdjxvoAbIavBsv0zTjO6R8fbQF+rxDrEloDI17HSRw8EIMmoYlO9e1JGeDF8ygBSb
	 DgwxwjM8cAFCAImsdYX98/uO47x5W1qIPn3fige+rpGGzGlpmwjq7Ok/0jl5ByFJ9b
	 cW+oTr0vpV5iwQKEPd5148hv8WsL1c3CHBPmXd5PXyHwliz2vu3R9i43p6R6s5940h
	 ZX3ASx3BaOF7dBiCLwTlnbHl215ruHoxrswzGJx2pYciOIg59FfiwJ8ITh7pe3o0ZU
	 8b0hRA+t/hwDIB5bHfms2Jwu8MP0Q5b6aRT04w/rPh/GwaBNN+UaRhpSex9bA+Zz+W
	 Z/RNRyxV/ZtLw==
From: Leon Romanovsky <leon@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Gerd Hoffmann <kraxel@redhat.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Gurchetan Singh <gurchetansingh@chromium.org>,
	Chia-I Wu <olvaffe@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	=?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Kevin Tian <kevin.tian@intel.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Alex Williamson <alex@shazbot.org>
Date: Sun, 18 Jan 2026 14:08:47 +0200
Message-ID: <20260118-dmabuf-revoke-v2-3-a03bb27c0875@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-a6db3
X-Rspamd-Queue-Id: D5B274015B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[tor.source.kernel.org:helo,tor.source.kernel.org:rdns,nvidia.com:email,nvidia.com:mid];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: NTLG67SYEXQS45KUDJBMOAJIBT3ZYHGV
X-Message-ID-Hash: NTLG67SYEXQS45KUDJBMOAJIBT3ZYHGV
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 3/4] iommufd: Require DMABUF revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NTLG67SYEXQS45KUDJBMOAJIBT3ZYHGV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KSU9NTVVGRCBkb2Vz
IG5vdCBzdXBwb3J0IHBhZ2UgZmF1bHQgaGFuZGxpbmcsIGFuZCBhZnRlciBhIGNhbGwgdG8NCi5p
bnZhbGlkYXRlX21hcHBpbmdzKCkgYWxsIG1hcHBpbmdzIGJlY29tZSBpbnZhbGlkLiBFbnN1cmUg
dGhhdA0KdGhlIElPTU1VRkQgRE1BQlVGIGltcG9ydGVyIGlzIGJvdW5kIHRvIGEgcmV2b2tl4oCR
YXdhcmUgRE1BQlVGIGV4cG9ydGVyDQooZm9yIGV4YW1wbGUsIFZGSU8pLg0KDQpTaWduZWQtb2Zm
LWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KLS0tDQogZHJpdmVycy9p
b21tdS9pb21tdWZkL3BhZ2VzLmMgfCA5ICsrKysrKysrLQ0KIDEgZmlsZSBjaGFuZ2VkLCA4IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUv
aW9tbXVmZC9wYWdlcy5jIGIvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCmluZGV4IDc2
ZjkwMGZhMTY4Ny4uYTVlYjJiYzRlZjQ4IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9pb21tdS9pb21t
dWZkL3BhZ2VzLmMNCisrKyBiL2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jDQpAQCAtMTUw
MSwxNiArMTUwMSwyMiBAQCBzdGF0aWMgaW50IGlvcHRfbWFwX2RtYWJ1ZihzdHJ1Y3QgaW9tbXVm
ZF9jdHggKmljdHgsIHN0cnVjdCBpb3B0X3BhZ2VzICpwYWdlcywNCiAJCW11dGV4X3VubG9jaygm
cGFnZXMtPm11dGV4KTsNCiAJfQ0KIA0KLQlyYyA9IHN5bV92ZmlvX3BjaV9kbWFfYnVmX2lvbW11
ZmRfbWFwKGF0dGFjaCwgJnBhZ2VzLT5kbWFidWYucGh5cyk7DQorCXJjID0gZG1hX2J1Zl9waW4o
YXR0YWNoKTsNCiAJaWYgKHJjKQ0KIAkJZ290byBlcnJfZGV0YWNoOw0KIA0KKwlyYyA9IHN5bV92
ZmlvX3BjaV9kbWFfYnVmX2lvbW11ZmRfbWFwKGF0dGFjaCwgJnBhZ2VzLT5kbWFidWYucGh5cyk7
DQorCWlmIChyYykNCisJCWdvdG8gZXJyX3VucGluOw0KKw0KIAlkbWFfcmVzdl91bmxvY2soZG1h
YnVmLT5yZXN2KTsNCiANCiAJLyogT24gc3VjY2VzcyBpb3B0X3JlbGVhc2VfcGFnZXMoKSB3aWxs
IGRldGFjaCBhbmQgcHV0IHRoZSBkbWFidWYuICovDQogCXBhZ2VzLT5kbWFidWYuYXR0YWNoID0g
YXR0YWNoOw0KIAlyZXR1cm4gMDsNCiANCitlcnJfdW5waW46DQorCWRtYV9idWZfdW5waW4oYXR0
YWNoKTsNCiBlcnJfZGV0YWNoOg0KIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCiAJ
ZG1hX2J1Zl9kZXRhY2goZG1hYnVmLCBhdHRhY2gpOw0KQEAgLTE2NTYsNiArMTY2Miw3IEBAIHZv
aWQgaW9wdF9yZWxlYXNlX3BhZ2VzKHN0cnVjdCBrcmVmICprcmVmKQ0KIAlpZiAoaW9wdF9pc19k
bWFidWYocGFnZXMpICYmIHBhZ2VzLT5kbWFidWYuYXR0YWNoKSB7DQogCQlzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmID0gcGFnZXMtPmRtYWJ1Zi5hdHRhY2gtPmRtYWJ1ZjsNCiANCisJCWRtYV9idWZf
dW5waW4ocGFnZXMtPmRtYWJ1Zi5hdHRhY2gpOw0KIAkJZG1hX2J1Zl9kZXRhY2goZG1hYnVmLCBw
YWdlcy0+ZG1hYnVmLmF0dGFjaCk7DQogCQlkbWFfYnVmX3B1dChkbWFidWYpOw0KIAkJV0FSTl9P
TighbGlzdF9lbXB0eSgmcGFnZXMtPmRtYWJ1Zi50cmFja2VyKSk7DQoNCi0tIA0KMi41Mi4wDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
