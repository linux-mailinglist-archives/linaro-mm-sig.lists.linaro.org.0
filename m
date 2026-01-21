Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFB4KgvOcGkOaAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:00:59 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FF257441
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:00:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7ACF2401B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 13:00:58 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id A4738401BE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 12:59:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=oHr3E4VO;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2205B42DF7;
	Wed, 21 Jan 2026 12:59:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C20CC19421;
	Wed, 21 Jan 2026 12:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769000390;
	bh=58tlcanDY9T+aBkaQ7vWfXy+++XD4LOLW2oAbnjGDH0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oHr3E4VO5+kpQrrHbqPjTJNKxsFH965nx3z+HGEKVzNi9Z46nDUJ3e+zN65x7aq4g
	 0AYI4kFliWoK103IScu/8h1MlBmeLHpzVrXHj6im/8sP87EFc9h+YDPyu7DDu/Vxkv
	 Xb+DSYCK/LecthYvxo+0fV3b1dbDv+KO5UAGJnm/WfAMELvAQtHHqfc4kSGbYc1gDx
	 oXWcxFpc/uPK6T1m5LO/70qgrjK6E8xkm9TrTso2N6+6wEVeWERTKJusLLY5fR4RCM
	 SBb/OTT0IL9T102lhwc+slhv49nnNQlOllpzQw8rES2gqbrI0TM5sCZerrsJmS8D0o
	 vdQcB72KWVxyA==
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
	Felix Kuehling <Felix.Kuehling@amd.com>,
	Alex Williamson <alex@shazbot.org>,
	Ankit Agrawal <ankita@nvidia.com>,
	Vivek Kasireddy <vivek.kasireddy@intel.com>
Date: Wed, 21 Jan 2026 14:59:14 +0200
Message-ID: <20260121-dmabuf-revoke-v4-6-d311cbc8633d@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
References: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-a6db3
X-Spamd-Bar: ----
Message-ID-Hash: VDB6IJXULVAAEM3QIPG2KEIVDHC2X7MG
X-Message-ID-Hash: VDB6IJXULVAAEM3QIPG2KEIVDHC2X7MG
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 6/8] iommufd: Pin dma-buf importer for revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VDB6IJXULVAAEM3QIPG2KEIVDHC2X7MG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 62FF257441
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KSU9NTVVGRCBkb2Vz
IG5vdCBzdXBwb3J0IHBhZ2UgZmF1bHQgaGFuZGxpbmcsIGFuZCBhZnRlciBhIGNhbGwgdG8NCi5p
bnZhbGlkYXRlX21hcHBpbmdzKCkgYWxsIG1hcHBpbmdzIGJlY29tZSBpbnZhbGlkLiBFbnN1cmUg
dGhhdA0KdGhlIElPTU1VRkQgZG1hLWJ1ZiBpbXBvcnRlciBpcyBib3VuZCB0byBhIHJldm9rZeKA
kWF3YXJlIGRtYS1idWYNCmV4cG9ydGVyIChmb3IgZXhhbXBsZSwgVkZJTykuDQoNCkFja2VkLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2Zm
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
