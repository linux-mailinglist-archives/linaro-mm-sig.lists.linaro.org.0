Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OPFHDa0fGm7OQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:37:58 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0575BBB28C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:37:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30B6B401DD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 13:37:57 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 37460401D3
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 13:37:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Q8c5ft4i;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 62B2060125;
	Fri, 30 Jan 2026 13:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E95AC116C6;
	Fri, 30 Jan 2026 13:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769780258;
	bh=+QM2qm9n4iaFpnhJwfs3GnPxSGtlBrgmoDMGbKtOF5c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Q8c5ft4ii7n/SVPjuDA8ZsDerXppJvgtaBTHv6z+wRYKJMw++zFUSHOhcvHYB7IzY
	 z1e2yJVMdpc3lLi2iGaxMPPJvRcvZMjntndllw7+86OO2An0KaQHif/mT8D015x2Mc
	 ADyyNFuS5CwfJCv+OB80JZSrQJ71BKV1mgzzhD1wOrIGm7pPu7Q++d+fgSBpE6yDxD
	 K+NjdKno0cU347prhDQMECMqq9XTBYjXNORvp2nFgHHYnY1EtPvhsxBiweYPy+bBnd
	 5OQ/4PgYe8erlbuv1LrBPKHQSRlDuU3k1GvKMhJy1I/PWu4YAEzr6RgxF2qB4rB8AK
	 Xj6gxdxffZAjw==
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
Date: Fri, 30 Jan 2026 15:37:18 +0200
Message-ID: <20260130-dmabuf-revoke-v6-2-06278f9b7bf0@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260130-dmabuf-revoke-v6-0-06278f9b7bf0@nvidia.com>
References: <20260130-dmabuf-revoke-v6-0-06278f9b7bf0@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-47773
X-Spamd-Bar: ----
Message-ID-Hash: LRTUXRRLXWCNFOCTYTSMTGT2NBCKF6EV
X-Message-ID-Hash: LRTUXRRLXWCNFOCTYTSMTGT2NBCKF6EV
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 2/8] dma-buf: Rename dma_buf_move_notify() to dma_buf_invalidate_mappings()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LRTUXRRLXWCNFOCTYTSMTGT2NBCKF6EV/>
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
	RCPT_COUNT_TWELVE(0.00)[35];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 0575BBB28C
X-Rspamd-Action: no action

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KQWxvbmcgd2l0aCBy
ZW5hbWluZyB0aGUgLm1vdmVfbm90aWZ5KCkgY2FsbGJhY2ssIHJlbmFtZSB0aGUgY29ycmVzcG9u
ZGluZw0KZG1hLWJ1ZiBjb3JlIGZ1bmN0aW9uLiBUaGlzIG1ha2VzIHRoZSBleHBlY3RlZCBiZWhh
dmlvciBjbGVhciB0byBleHBvcnRlcnMNCmNhbGxpbmcgdGhpcyBmdW5jdGlvbi4NCg0KUmV2aWV3
ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25l
ZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQotLS0NCiBkcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAgICAgfCA4ICsrKystLS0tDQogZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIHwgMiArLQ0KIGRyaXZlcnMv
Z3B1L2RybS94ZS94ZV9iby5jICAgICAgICAgICAgICAgICB8IDIgKy0NCiBkcml2ZXJzL2lvbW11
L2lvbW11ZmQvc2VsZnRlc3QuYyAgICAgICAgICAgfCAyICstDQogZHJpdmVycy92ZmlvL3BjaS92
ZmlvX3BjaV9kbWFidWYuYyAgICAgICAgIHwgNCArKy0tDQogaW5jbHVkZS9saW51eC9kbWEtYnVm
LmggICAgICAgICAgICAgICAgICAgIHwgMiArLQ0KIDYgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggNTljYzY0N2JmNDBl
Li5lMTJkYjU0MGM0MTMgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQor
KysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtOTEyLDcgKzkxMiw3IEBAIGRtYV9i
dWZfcGluX29uX21hcChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQogICogMy4g
RXhwb3J0ZXJzIG11c3QgaG9sZCB0aGUgZG1hLWJ1ZiByZXNlcnZhdGlvbiBsb2NrIHdoZW4gY2Fs
bGluZyB0aGVzZQ0KICAqICAgIGZ1bmN0aW9uczoNCiAgKg0KLSAqICAgICAtIGRtYV9idWZfbW92
ZV9ub3RpZnkoKQ0KKyAqICAgICAtIGRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncygpDQogICov
DQogDQogLyoqDQpAQCAtMTI0NywxNCArMTI0NywxNCBAQCB2b2lkIGRtYV9idWZfdW5tYXBfYXR0
YWNobWVudF91bmxvY2tlZChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQogRVhQ
T1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkLCAiRE1B
X0JVRiIpOw0KIA0KIC8qKg0KLSAqIGRtYV9idWZfbW92ZV9ub3RpZnkgLSBub3RpZnkgYXR0YWNo
bWVudHMgdGhhdCBETUEtYnVmIGlzIG1vdmluZw0KKyAqIGRtYV9idWZfaW52YWxpZGF0ZV9tYXBw
aW5ncyAtIG5vdGlmeSBhdHRhY2htZW50cyB0aGF0IERNQS1idWYgaXMgbW92aW5nDQogICoNCiAg
KiBAZG1hYnVmOglbaW5dCWJ1ZmZlciB3aGljaCBpcyBtb3ZpbmcNCiAgKg0KICAqIEluZm9ybXMg
YWxsIGF0dGFjaG1lbnRzIHRoYXQgdGhleSBuZWVkIHRvIGRlc3Ryb3kgYW5kIHJlY3JlYXRlIGFs
bCB0aGVpcg0KICAqIG1hcHBpbmdzLg0KICAqLw0KLXZvaWQgZG1hX2J1Zl9tb3ZlX25vdGlmeShz
dHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KK3ZvaWQgZG1hX2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdz
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQogew0KIAlzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50
ICphdHRhY2g7DQogDQpAQCAtMTI2NCw3ICsxMjY0LDcgQEAgdm9pZCBkbWFfYnVmX21vdmVfbm90
aWZ5KHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQogCQlpZiAoYXR0YWNoLT5pbXBvcnRlcl9vcHMp
DQogCQkJYXR0YWNoLT5pbXBvcnRlcl9vcHMtPmludmFsaWRhdGVfbWFwcGluZ3MoYXR0YWNoKTsN
CiB9DQotRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9tb3ZlX25vdGlmeSwgIkRNQV9CVUYi
KTsNCitFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3MsICJE
TUFfQlVGIik7DQogDQogLyoqDQogICogRE9DOiBjcHUgYWNjZXNzDQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jDQppbmRleCBlMDhmNThkZTRiMTcuLmY3M2RjOTlk
MTg4NyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmpl
Y3QuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jDQpA
QCAtMTI3MCw3ICsxMjcwLDcgQEAgdm9pZCBhbWRncHVfYm9fbW92ZV9ub3RpZnkoc3RydWN0IHR0
bV9idWZmZXJfb2JqZWN0ICpibywNCiANCiAJaWYgKGFiby0+dGJvLmJhc2UuZG1hX2J1ZiAmJiAh
ZHJtX2dlbV9pc19pbXBvcnRlZCgmYWJvLT50Ym8uYmFzZSkgJiYNCiAJICAgIG9sZF9tZW0gJiYg
b2xkX21lbS0+bWVtX3R5cGUgIT0gVFRNX1BMX1NZU1RFTSkNCi0JCWRtYV9idWZfbW92ZV9ub3Rp
ZnkoYWJvLT50Ym8uYmFzZS5kbWFfYnVmKTsNCisJCWRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5n
cyhhYm8tPnRiby5iYXNlLmRtYV9idWYpOw0KIA0KIAkvKiBtb3ZlX25vdGlmeSBpcyBjYWxsZWQg
YmVmb3JlIG1vdmUgaGFwcGVucyAqLw0KIAl0cmFjZV9hbWRncHVfYm9fbW92ZShhYm8sIG5ld19t
ZW0gPyBuZXdfbWVtLT5tZW1fdHlwZSA6IC0xLA0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS94ZS94ZV9iby5jIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMNCmluZGV4IGJmNGVlOTc2
YjY4MC4uN2QwMmNkOWE4NTAxIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2Jv
LmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jDQpAQCAtODE5LDcgKzgxOSw3IEBA
IHN0YXRpYyBpbnQgeGVfYm9fbW92ZV9ub3RpZnkoc3RydWN0IHhlX2JvICpibywNCiANCiAJLyog
RG9uJ3QgY2FsbCBtb3ZlX25vdGlmeSgpIGZvciBpbXBvcnRlZCBkbWEtYnVmcy4gKi8NCiAJaWYg
KHR0bV9iby0+YmFzZS5kbWFfYnVmICYmICF0dG1fYm8tPmJhc2UuaW1wb3J0X2F0dGFjaCkNCi0J
CWRtYV9idWZfbW92ZV9ub3RpZnkodHRtX2JvLT5iYXNlLmRtYV9idWYpOw0KKwkJZG1hX2J1Zl9p
bnZhbGlkYXRlX21hcHBpbmdzKHR0bV9iby0+YmFzZS5kbWFfYnVmKTsNCiANCiAJLyoNCiAJICog
VFRNIGhhcyBhbHJlYWR5IG51a2VkIHRoZSBtbWFwIGZvciB1cyAoc2VlIHR0bV9ib191bm1hcF92
aXJ0dWFsKSwNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2lvbW11ZmQvc2VsZnRlc3QuYyBi
L2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9zZWxmdGVzdC5jDQppbmRleCA1NTBmZjM2ZGVjM2EuLmY2
MGNiZDUzMjhjYyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9zZWxmdGVzdC5j
DQorKysgYi9kcml2ZXJzL2lvbW11L2lvbW11ZmQvc2VsZnRlc3QuYw0KQEAgLTIwODEsNyArMjA4
MSw3IEBAIHN0YXRpYyBpbnQgaW9tbXVmZF90ZXN0X2RtYWJ1Zl9yZXZva2Uoc3RydWN0IGlvbW11
ZmRfdWNtZCAqdWNtZCwgaW50IGZkLA0KIAlwcml2ID0gZG1hYnVmLT5wcml2Ow0KIAlkbWFfcmVz
dl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQogCXByaXYtPnJldm9rZWQgPSByZXZva2VkOw0K
LQlkbWFfYnVmX21vdmVfbm90aWZ5KGRtYWJ1Zik7DQorCWRtYV9idWZfaW52YWxpZGF0ZV9tYXBw
aW5ncyhkbWFidWYpOw0KIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCiANCiBlcnJf
cHV0Og0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMgYi9k
cml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQppbmRleCA0YmU0YTg1MDA1Y2IuLmQ4
Y2VhZmFiZWY0OCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVm
LmMNCisrKyBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCkBAIC0zMzIsNyAr
MzMyLDcgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX21vdmUoc3RydWN0IHZmaW9fcGNpX2NvcmVf
ZGV2aWNlICp2ZGV2LCBib29sIHJldm9rZWQpDQogCQlpZiAocHJpdi0+cmV2b2tlZCAhPSByZXZv
a2VkKSB7DQogCQkJZG1hX3Jlc3ZfbG9jayhwcml2LT5kbWFidWYtPnJlc3YsIE5VTEwpOw0KIAkJ
CXByaXYtPnJldm9rZWQgPSByZXZva2VkOw0KLQkJCWRtYV9idWZfbW92ZV9ub3RpZnkocHJpdi0+
ZG1hYnVmKTsNCisJCQlkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3MocHJpdi0+ZG1hYnVmKTsN
CiAJCQlkbWFfcmVzdl91bmxvY2socHJpdi0+ZG1hYnVmLT5yZXN2KTsNCiAJCX0NCiAJCWZwdXQo
cHJpdi0+ZG1hYnVmLT5maWxlKTsNCkBAIC0zNTMsNyArMzUzLDcgQEAgdm9pZCB2ZmlvX3BjaV9k
bWFfYnVmX2NsZWFudXAoc3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2KQ0KIAkJbGlz
dF9kZWxfaW5pdCgmcHJpdi0+ZG1hYnVmc19lbG0pOw0KIAkJcHJpdi0+dmRldiA9IE5VTEw7DQog
CQlwcml2LT5yZXZva2VkID0gdHJ1ZTsNCi0JCWRtYV9idWZfbW92ZV9ub3RpZnkocHJpdi0+ZG1h
YnVmKTsNCisJCWRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncyhwcml2LT5kbWFidWYpOw0KIAkJ
ZG1hX3Jlc3ZfdW5sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdik7DQogCQl2ZmlvX2RldmljZV9wdXRf
cmVnaXN0cmF0aW9uKCZ2ZGV2LT52ZGV2KTsNCiAJCWZwdXQocHJpdi0+ZG1hYnVmLT5maWxlKTsN
CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1h
LWJ1Zi5oDQppbmRleCAxYjM5NzYzNWM3OTMuLmQ1YzNjZTJiM2FhNCAxMDA2NDQNCi0tLSBhL2lu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KQEAg
LTYwMCw3ICs2MDAsNyBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQo
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqLA0KIAkJCQkJZW51bSBkbWFfZGF0YV9kaXJlY3Rp
b24pOw0KIHZvaWQgZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKiwgc3RydWN0IHNnX3RhYmxlICosDQogCQkJCWVudW0gZG1hX2RhdGFfZGlyZWN0aW9u
KTsNCi12b2lkIGRtYV9idWZfbW92ZV9ub3RpZnkoc3RydWN0IGRtYV9idWYgKmRtYV9idWYpOw0K
K3ZvaWQgZG1hX2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVm
KTsNCiBpbnQgZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVm
LA0KIAkJCSAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyKTsNCiBpbnQgZG1hX2J1Zl9l
bmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwNCg0KLS0gDQoyLjUyLjANCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
