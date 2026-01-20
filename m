Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KE0KEmWvb2lBGgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 17:37:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A1E47BCF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 17:37:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0004401F4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 14:08:55 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 17E49401B6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 14:07:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=M3RmBw8O;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B364C60132;
	Tue, 20 Jan 2026 14:07:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A481BC16AAE;
	Tue, 20 Jan 2026 14:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768918060;
	bh=L6OTT3mPtqYVA8mPyQyKoyFwZdirdGqFu8l/X01cJfo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M3RmBw8Oc4lRgNdb/8GwB0L3CvMNnEvnPKDMWTWvUfIVq6JI4nZJ6uIuLq/vhnaiQ
	 ITyA88tLQNKl69RqtoPneRB3Z8JQ5mFdAcCfs2O4oLJbm1gsAjG6HHHpIRoGIUzCdd
	 5MiAcqiZRKbIFwfZBFd+4BAXxfbshgLgVNY6MBojSn78gFZwEKUcTk0qr5cEqlociP
	 +CiKD2i78akTx548vLZI6+GvlBIfIwdQ7oVKd/NcxyCMHCnwgnsZU0V41p2KdNnT/3
	 I45GmWSMqRkJH/nVlz1o4avGTI4hjGoVJdHM5p7nTi3LKkMYl8G0FGFznibFGnL6B6
	 tisqgYNfrTwBQ==
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
Date: Tue, 20 Jan 2026 16:07:05 +0200
Message-ID: <20260120-dmabuf-revoke-v3-5-b7e0b07b8214@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-a6db3
X-Spamd-Bar: ----
Message-ID-Hash: CFJ4YWUJBFOWMF74GUZE6CIIR5HQRMXV
X-Message-ID-Hash: CFJ4YWUJBFOWMF74GUZE6CIIR5HQRMXV
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 5/7] iommufd: Pin dma-buf importer for revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CFJ4YWUJBFOWMF74GUZE6CIIR5HQRMXV/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: D0A1E47BCF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KSU9NTVVGRCBkb2Vz
IG5vdCBzdXBwb3J0IHBhZ2UgZmF1bHQgaGFuZGxpbmcsIGFuZCBhZnRlciBhIGNhbGwgdG8NCi5p
bnZhbGlkYXRlX21hcHBpbmdzKCkgYWxsIG1hcHBpbmdzIGJlY29tZSBpbnZhbGlkLiBFbnN1cmUg
dGhhdA0KdGhlIElPTU1VRkQgZG1hLWJ1ZiBpbXBvcnRlciBpcyBib3VuZCB0byBhIHJldm9rZeKA
kWF3YXJlIGRtYS1idWYNCmV4cG9ydGVyIChmb3IgZXhhbXBsZSwgVkZJTykuDQoNClNpZ25lZC1v
ZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQotLS0NCiBkcml2ZXJz
L2lvbW11L2lvbW11ZmQvcGFnZXMuYyB8IDkgKysrKysrKystDQogMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21t
dS9pb21tdWZkL3BhZ2VzLmMgYi9kcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYw0KaW5kZXgg
NzZmOTAwZmExNjg3Li5hNWViMmJjNGVmNDggMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2lvbW11L2lv
bW11ZmQvcGFnZXMuYw0KKysrIGIvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCkBAIC0x
NTAxLDE2ICsxNTAxLDIyIEBAIHN0YXRpYyBpbnQgaW9wdF9tYXBfZG1hYnVmKHN0cnVjdCBpb21t
dWZkX2N0eCAqaWN0eCwgc3RydWN0IGlvcHRfcGFnZXMgKnBhZ2VzLA0KIAkJbXV0ZXhfdW5sb2Nr
KCZwYWdlcy0+bXV0ZXgpOw0KIAl9DQogDQotCXJjID0gc3ltX3ZmaW9fcGNpX2RtYV9idWZfaW9t
bXVmZF9tYXAoYXR0YWNoLCAmcGFnZXMtPmRtYWJ1Zi5waHlzKTsNCisJcmMgPSBkbWFfYnVmX3Bp
bihhdHRhY2gpOw0KIAlpZiAocmMpDQogCQlnb3RvIGVycl9kZXRhY2g7DQogDQorCXJjID0gc3lt
X3ZmaW9fcGNpX2RtYV9idWZfaW9tbXVmZF9tYXAoYXR0YWNoLCAmcGFnZXMtPmRtYWJ1Zi5waHlz
KTsNCisJaWYgKHJjKQ0KKwkJZ290byBlcnJfdW5waW47DQorDQogCWRtYV9yZXN2X3VubG9jayhk
bWFidWYtPnJlc3YpOw0KIA0KIAkvKiBPbiBzdWNjZXNzIGlvcHRfcmVsZWFzZV9wYWdlcygpIHdp
bGwgZGV0YWNoIGFuZCBwdXQgdGhlIGRtYWJ1Zi4gKi8NCiAJcGFnZXMtPmRtYWJ1Zi5hdHRhY2gg
PSBhdHRhY2g7DQogCXJldHVybiAwOw0KIA0KK2Vycl91bnBpbjoNCisJZG1hX2J1Zl91bnBpbihh
dHRhY2gpOw0KIGVycl9kZXRhY2g6DQogCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOw0K
IAlkbWFfYnVmX2RldGFjaChkbWFidWYsIGF0dGFjaCk7DQpAQCAtMTY1Niw2ICsxNjYyLDcgQEAg
dm9pZCBpb3B0X3JlbGVhc2VfcGFnZXMoc3RydWN0IGtyZWYgKmtyZWYpDQogCWlmIChpb3B0X2lz
X2RtYWJ1ZihwYWdlcykgJiYgcGFnZXMtPmRtYWJ1Zi5hdHRhY2gpIHsNCiAJCXN0cnVjdCBkbWFf
YnVmICpkbWFidWYgPSBwYWdlcy0+ZG1hYnVmLmF0dGFjaC0+ZG1hYnVmOw0KIA0KKwkJZG1hX2J1
Zl91bnBpbihwYWdlcy0+ZG1hYnVmLmF0dGFjaCk7DQogCQlkbWFfYnVmX2RldGFjaChkbWFidWYs
IHBhZ2VzLT5kbWFidWYuYXR0YWNoKTsNCiAJCWRtYV9idWZfcHV0KGRtYWJ1Zik7DQogCQlXQVJO
X09OKCFsaXN0X2VtcHR5KCZwYWdlcy0+ZG1hYnVmLnRyYWNrZXIpKTsNCg0KLS0gDQoyLjUyLjAN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
