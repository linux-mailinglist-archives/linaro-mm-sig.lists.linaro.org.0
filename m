Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNFzEZi0fGnSOQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:39:36 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D4958BB362
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:39:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1375F3F909
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 13:39:35 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 01AE8401DD
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 13:38:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Q0ogsA2n;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 73584442E2;
	Fri, 30 Jan 2026 13:38:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 775F2C16AAE;
	Fri, 30 Jan 2026 13:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769780280;
	bh=xc+xbxZ3oNBD2JuFMoUcoiVyL/l5Ver5G6iPoq8UFrM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Q0ogsA2nGpR8nklaG4pEkRkeI6hb46F+eL/oUPNazRxlwqrUfQORu5NNxJpb6qXeT
	 QlBTP87FQkuQ2AZZvBVJW/eRMaOa4JnMSrMCYPek+tU36FLeT0W+7vWjFjxzuGyupi
	 PZWpL4RGCLcgJcjn9u+0R2hXCx19b5DYP5nTC/arAD7qYxvIR6M/sojIbVmuzmyDhS
	 Scf29wyOvPNUh8uqGVfv9qk0qu182PCsE19BpnhH+flk2j7RfBUNEeB2HWJB6ApKR1
	 /5wguQpJlppcGNx0IjsanCiyy8O3ztNnj5T53ThxeOMye5EwtgnefDKguy20AZAbYM
	 jNlmzujQtm4Rg==
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
Date: Fri, 30 Jan 2026 15:37:24 +0200
Message-ID: <20260130-dmabuf-revoke-v6-8-06278f9b7bf0@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260130-dmabuf-revoke-v6-0-06278f9b7bf0@nvidia.com>
References: <20260130-dmabuf-revoke-v6-0-06278f9b7bf0@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-47773
X-Spamd-Bar: ----
Message-ID-Hash: VRIKYCK622NN53R7IYFDPKJHWF5YNYSC
X-Message-ID-Hash: VRIKYCK622NN53R7IYFDPKJHWF5YNYSC
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 8/8] iommufd: Add dma_buf_pin()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VRIKYCK622NN53R7IYFDPKJHWF5YNYSC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[36];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,intel.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: D4958BB362
X-Rspamd-Action: no action

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KSU9NTVVGRCByZWxp
ZXMgb24gYSBwcml2YXRlIHByb3RvY29sIHdpdGggVkZJTywgYW5kIHRoaXMgYWx3YXlzIG9wZXJh
dGVkDQppbiBwaW5uZWQgbW9kZS4NCg0KTm93IHRoYXQgVkZJTyBjYW4gc3VwcG9ydCBwaW5uZWQg
aW1wb3J0ZXJzIHVwZGF0ZSBJT01NVUZEIHRvIGludm9rZSB0aGUNCm5vcm1hbCBkbWEtYnVmIGZs
b3cgdG8gcmVxdWVzdCBwaW4uDQoNClRoaXMgaXNuJ3QgZW5vdWdoIHRvIGFsbG93IElPTU1VRkQg
dG8gd29yayB3aXRoIG90aGVyIGV4cG9ydGVycywgaXQgc3RpbGwNCm5lZWRzIGEgd2F5IHRvIGdl
dCB0aGUgcGh5c2ljYWwgYWRkcmVzcyBsaXN0IHdoaWNoIGlzIGFub3RoZXIgc2VyaWVzLg0KDQpJ
T01NVUZEIHN1cHBvcnRzIHRoZSBkZWZpbmVkIHJldm9rZSBzZW1hbnRpY3MuIEl0IGltbWVkaWF0
ZWx5IHN0b3BzIGFuZA0KZmVuY2VzIGFjY2VzcyB0byB0aGUgbWVtb3J5IGluc2lkZSBpdCdzIGlu
dmFsaWRhdGVfbWFwcGluZ3MoKSBjYWxsYmFjaywNCmFuZCBpdCBjdXJyZW50bHkgZG9lc24ndCB1
c2Ugc2NhdHRlcmxpc3RzIHNvIGRvZXNuJ3QgY2FsbCBtYXAvdW5tYXAgYXQNCmFsbC4NCg0KSXQg
aXMgZXhwZWN0ZWQgdGhhdCBhIGZ1dHVyZSByZXZpc2lvbiBjYW4gc3luY2hyb25vdXNseSBjYWxs
IHVubWFwIGZyb20NCnRoZSBtb3ZlX25vdGlmeSBjYWxsYmFjayBhcyB3ZWxsLg0KDQpSZXZpZXdl
ZC1ieTogS2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5jb20+DQpSZXZpZXdlZC1ieTogSmFz
b24gR3VudGhvcnBlIDxqZ2dAbnZpZGlhLmNvbT4NCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zz
a3kgPGxlb25yb0BudmlkaWEuY29tPg0KLS0tDQogZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2Vz
LmMgfCA5ICsrKysrKysrLQ0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jIGIv
ZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCmluZGV4IDc2ZjkwMGZhMTY4Ny4uYTVlYjJi
YzRlZjQ4IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCisrKyBi
L2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jDQpAQCAtMTUwMSwxNiArMTUwMSwyMiBAQCBz
dGF0aWMgaW50IGlvcHRfbWFwX2RtYWJ1ZihzdHJ1Y3QgaW9tbXVmZF9jdHggKmljdHgsIHN0cnVj
dCBpb3B0X3BhZ2VzICpwYWdlcywNCiAJCW11dGV4X3VubG9jaygmcGFnZXMtPm11dGV4KTsNCiAJ
fQ0KIA0KLQlyYyA9IHN5bV92ZmlvX3BjaV9kbWFfYnVmX2lvbW11ZmRfbWFwKGF0dGFjaCwgJnBh
Z2VzLT5kbWFidWYucGh5cyk7DQorCXJjID0gZG1hX2J1Zl9waW4oYXR0YWNoKTsNCiAJaWYgKHJj
KQ0KIAkJZ290byBlcnJfZGV0YWNoOw0KIA0KKwlyYyA9IHN5bV92ZmlvX3BjaV9kbWFfYnVmX2lv
bW11ZmRfbWFwKGF0dGFjaCwgJnBhZ2VzLT5kbWFidWYucGh5cyk7DQorCWlmIChyYykNCisJCWdv
dG8gZXJyX3VucGluOw0KKw0KIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCiANCiAJ
LyogT24gc3VjY2VzcyBpb3B0X3JlbGVhc2VfcGFnZXMoKSB3aWxsIGRldGFjaCBhbmQgcHV0IHRo
ZSBkbWFidWYuICovDQogCXBhZ2VzLT5kbWFidWYuYXR0YWNoID0gYXR0YWNoOw0KIAlyZXR1cm4g
MDsNCiANCitlcnJfdW5waW46DQorCWRtYV9idWZfdW5waW4oYXR0YWNoKTsNCiBlcnJfZGV0YWNo
Og0KIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCiAJZG1hX2J1Zl9kZXRhY2goZG1h
YnVmLCBhdHRhY2gpOw0KQEAgLTE2NTYsNiArMTY2Miw3IEBAIHZvaWQgaW9wdF9yZWxlYXNlX3Bh
Z2VzKHN0cnVjdCBrcmVmICprcmVmKQ0KIAlpZiAoaW9wdF9pc19kbWFidWYocGFnZXMpICYmIHBh
Z2VzLT5kbWFidWYuYXR0YWNoKSB7DQogCQlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmID0gcGFnZXMt
PmRtYWJ1Zi5hdHRhY2gtPmRtYWJ1ZjsNCiANCisJCWRtYV9idWZfdW5waW4ocGFnZXMtPmRtYWJ1
Zi5hdHRhY2gpOw0KIAkJZG1hX2J1Zl9kZXRhY2goZG1hYnVmLCBwYWdlcy0+ZG1hYnVmLmF0dGFj
aCk7DQogCQlkbWFfYnVmX3B1dChkbWFidWYpOw0KIAkJV0FSTl9PTighbGlzdF9lbXB0eSgmcGFn
ZXMtPmRtYWJ1Zi50cmFja2VyKSk7DQoNCi0tIA0KMi41Mi4wDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
