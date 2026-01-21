Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKFuHxnOcGkOaAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:01:13 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB1E57449
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:01:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E6C4401BE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 13:01:12 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id AA92A40141
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 12:59:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Bgu2bHAk;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6AD53600AA;
	Wed, 21 Jan 2026 12:59:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73E54C19421;
	Wed, 21 Jan 2026 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769000394;
	bh=p5A57x2ML6ijm4DUYOv5yNl/9WgFsMaBe4B+t34Ueu4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Bgu2bHAkHMR/M+vKnRgSzqRNbT/nZu4dmR6qTZVbksWjxxbfG5r0XQu4ZvjS2xoSu
	 kf634oD8satFXndwsk79FHK+mGI8n0dEF9cwaiKWN+Xlx68y2uKuVIBQNT+KWfxQSg
	 YtwOADQ2Taz6hnGN3XTQ+0g4dUg2AQmOubVtWKf6iTxNu8pPb+aVPIHPSTFb6jZmIE
	 PHhPB+/TTj4Pv2QM3i+KEsEZ0cMOYKo7GEeJQWPbhtOkl4P2kwqVkTz5CLXGIoNOym
	 lvR3voUgpvWnOe5kUSati4ByTwuCtyCXzwy//FdzB2cCxlqk8UiTjIJaqtpS8KDPnR
	 u9e5Is4MyVM7Q==
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
Date: Wed, 21 Jan 2026 14:59:13 +0200
Message-ID: <20260121-dmabuf-revoke-v4-5-d311cbc8633d@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
References: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-a6db3
X-Spamd-Bar: ----
Message-ID-Hash: YD5CQBNCXD3IVRFR7ELYL6DUGNADKEIE
X-Message-ID-Hash: YD5CQBNCXD3IVRFR7ELYL6DUGNADKEIE
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 5/8] dma-buf: Add check function for revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YD5CQBNCXD3IVRFR7ELYL6DUGNADKEIE/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,nvidia.com:email,nvidia.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 3AB1E57449
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KQSBETUEtYnVmIHJl
dm9rZSBtZWNoYW5pc20gdGhhdCBhbGxvd3MgYW4gZXhwb3J0ZXIgdG8gZXhwbGljaXRseQ0KaW52
YWxpZGF0ZSAoImtpbGwiKSBhIHNoYXJlZCBidWZmZXIgYWZ0ZXIgaXQgaGFzIGJlZW4gaGFuZGVk
IG91dCB0bw0KaW1wb3J0ZXJzLiBPbmNlIHJldm9rZWQsIGFsbCBmdXJ0aGVyIENQVSBhbmQgZGV2
aWNlIGFjY2VzcyBpcyBibG9ja2VkLCBhbmQNCmltcG9ydGVycyBjb25zaXN0ZW50bHkgb2JzZXJ2
ZSBmYWlsdXJlLg0KDQpUaGlzIHJlcXVpcmVzIGJvdGggaW1wb3J0ZXJzIGFuZCBleHBvcnRlcnMg
dG8gaG9ub3IgdGhlIHJldm9rZSBjb250cmFjdC4NCg0KRm9yIGltcG9ydGVycywgdGhpcyBtZWFu
cyBpbXBsZW1lbnRpbmcgLmludmFsaWRhdGVfbWFwcGluZ3MoKS4gRm9yIGV4cG9ydGVycywNCnRo
aXMgbWVhbnMgaW1wbGVtZW50aW5nIHRoZSAucGluKCkgYW5kL29yIC5hdHRhY2goKSBjYWxsYmFj
aywgd2hpY2ggY2hlY2sgdGhlDQpkbWHigJFidWYgYXR0YWNobWVudCBmb3IgYSB2YWxpZCByZXZv
a2UgaW1wbGVtZW50YXRpb24uDQoNClNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVv
bnJvQG52aWRpYS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMzIgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0NCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAg
IHwgIDEgKw0KIDIgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMNCmluZGV4IDE2MjkzMTJkMzY0YS4uMjBmZWYzZmIzYmRmIDEwMDY0NA0K
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYw0KQEAgLTEyNDIsMTMgKzEyNDIsNDMgQEAgdm9pZCBkbWFfYnVmX3VubWFwX2F0dGFj
aG1lbnRfdW5sb2NrZWQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KIH0NCiBF
WFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQsICJE
TUFfQlVGIik7DQogDQorLyoqDQorICogZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlIC0gY2hlY2sg
aWYgYSBETUEtYnVmIGltcG9ydGVyIGltcGxlbWVudHMNCisgKiByZXZva2Ugc2VtYW50aWNzLg0K
KyAqIEBhdHRhY2g6IHRoZSBETUEtYnVmIGF0dGFjaG1lbnQgdG8gY2hlY2sNCisgKg0KKyAqIFJl
dHVybnMgdHJ1ZSBpZiB0aGUgRE1BLWJ1ZiBpbXBvcnRlciBjYW4gaGFuZGxlIGludmFsaWRhdGlu
ZyBpdCdzIG1hcHBpbmdzDQorICogYXQgYW55IHRpbWUsIGV2ZW4gYWZ0ZXIgcGlubmluZyBhIGJ1
ZmZlci4NCisgKi8NCitib29sIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZShzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2gpDQorew0KKwlyZXR1cm4gYXR0YWNoLT5pbXBvcnRlcl9vcHMg
JiYNCisJICAgICAgIGF0dGFjaC0+aW1wb3J0ZXJfb3BzLT5pbnZhbGlkYXRlX21hcHBpbmdzOw0K
K30NCitFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX2F0dGFjaF9yZXZvY2FibGUsICJETUFf
QlVGIik7DQorDQogLyoqDQogICogZG1hX2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdzIC0gbm90aWZ5
IGF0dGFjaG1lbnRzIHRoYXQgRE1BLWJ1ZiBpcyBtb3ZpbmcNCiAgKg0KICAqIEBkbWFidWY6CVtp
bl0JYnVmZmVyIHdoaWNoIGlzIG1vdmluZw0KICAqDQogICogSW5mb3JtcyBhbGwgYXR0YWNobWVu
dHMgdGhhdCB0aGV5IG5lZWQgdG8gZGVzdHJveSBhbmQgcmVjcmVhdGUgYWxsIHRoZWlyDQotICog
bWFwcGluZ3MuDQorICogbWFwcGluZ3MuIElmIHRoZSBhdHRhY2htZW50IGlzIGR5bmFtaWMgdGhl
biB0aGUgZHluYW1pYyBpbXBvcnRlciBpcyBleHBlY3RlZA0KKyAqIHRvIGludmFsaWRhdGUgYW55
IGNhY2hlcyBpdCBoYXMgb2YgdGhlIG1hcHBpbmcgcmVzdWx0IGFuZCBwZXJmb3JtIGEgbmV3DQor
ICogbWFwcGluZyByZXF1ZXN0IGJlZm9yZSBhbGxvd2luZyBIVyB0byBkbyBhbnkgZnVydGhlciBE
TUEuDQorICoNCisgKiBJZiB0aGUgYXR0YWNobWVudCBpcyBwaW5uZWQgdGhlbiB0aGlzIGluZm9y
bXMgdGhlIHBpbm5lZCBpbXBvcnRlciB0aGF0DQorICogdGhlIHVuZGVybHlpbmcgbWFwcGluZyBp
cyBubyBsb25nZXIgYXZhaWxhYmxlLiBQaW5uZWQgaW1wb3J0ZXJzIG1heSB0YWtlDQorICogdGhp
cyBpcyBhcyBhIHBlcm1hbmVudCByZXZvY2F0aW9uIHNvIGV4cG9ydGVycyBzaG91bGQgbm90IHRy
aWdnZXIgaXQNCisgKiBsaWdodGx5Lg0KKyAqDQorICogRm9yIGxlZ2FjeSBwaW5uZWQgaW1wb3J0
ZXJzIHRoYXQgY2Fubm90IHN1cHBvcnQgaW52YWxpZGF0aW9uIHRoaXMgaXMgYSBOT1AuDQorICog
RHJpdmVycyBjYW4gY2FsbCBkbWFfYnVmX2F0dGFjaF9yZXZvY2FibGUoKSB0byBkZXRlcm1pbmUg
aWYgdGhlIGltcG9ydGVyDQorICogc3VwcG9ydHMgdGhpcy4NCisgKg0KKyAqIE5PVEU6IFRoZSBp
bnZhbGlkYXRpb24gdHJpZ2dlcnMgYXN5bmNocm9ub3VzIEhXIG9wZXJhdGlvbiBhbmQgdGhlIGNh
bGxlcnMNCisgKiBuZWVkIHRvIHdhaXQgZm9yIHRoaXMgb3BlcmF0aW9uIHRvIGNvbXBsZXRlIGJ5
IGNhbGxpbmcNCisgKiB0byBkbWFfcmVzdl93YWl0X3RpbWVvdXQoKS4NCiAgKi8NCiB2b2lkIGRt
YV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KIHsNCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oDQppbmRleCBkNWMzY2UyYjNhYTQuLjJhYTljN2QwOGFiYiAxMDA2NDQNCi0tLSBhL2luY2x1
ZGUvbGludXgvZG1hLWJ1Zi5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KQEAgLTYw
MSw2ICs2MDEsNyBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqLA0KIHZvaWQgZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50
KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKiwgc3RydWN0IHNnX3RhYmxlICosDQogCQkJCWVu
dW0gZG1hX2RhdGFfZGlyZWN0aW9uKTsNCiB2b2lkIGRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5n
cyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Zik7DQorYm9vbCBkbWFfYnVmX2F0dGFjaF9yZXZvY2Fi
bGUoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKTsNCiBpbnQgZG1hX2J1Zl9iZWdp
bl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLA0KIAkJCSAgICAgZW51bSBkbWFf
ZGF0YV9kaXJlY3Rpb24gZGlyKTsNCiBpbnQgZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hX2J1ZiwNCg0KLS0gDQoyLjUyLjANCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
