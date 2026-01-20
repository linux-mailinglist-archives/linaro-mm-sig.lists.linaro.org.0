Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EC/Dq2jb2kJDwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 16:47:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE9846AAC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 16:47:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08EFD401DB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 14:08:11 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 96FCA401B8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 14:07:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HRchcWPp;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4B9396011E;
	Tue, 20 Jan 2026 14:07:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DB10C16AAE;
	Tue, 20 Jan 2026 14:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768918049;
	bh=MryhAftyHxYTop+mnKinqTb8eFJW20BmygrDTfbPY2w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HRchcWPpsUvcK+Crk3OAOK761eYKGCH0fgOBvesqeEQQlf1bYaTkU5/cAIoZz24Xg
	 QZOa8k69UfgH0yHQAxr/k5AFdCcArO4JpyQS0ALF7IOK7+5MXk+zQaXz/gMMgMYxTE
	 oN/OiCYRgZMn7+HHLVC8ZS7zvMFhxFJKTXEohcy6HZiZ6em6nCJZ4V8msli3NFxDPo
	 ULsfYeHN5PJhqPiDXsOQsfLXaqDydvqEYPJGjBmI323H0aNfpgB/Gkg/XAf2FMSE0t
	 NXBeQanufm7+6AtVifiTmQhurpZw8xuWsfKDlKQKi/x2zRXK6HWmQL9ZaTNupRUW8w
	 BferpMeWKFc9A==
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
Date: Tue, 20 Jan 2026 16:07:04 +0200
Message-ID: <20260120-dmabuf-revoke-v3-4-b7e0b07b8214@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-a6db3
X-Spamd-Bar: ----
Message-ID-Hash: XVZIQ3NTSFEEUAPA5CRO6EWYUKOQTAL3
X-Message-ID-Hash: XVZIQ3NTSFEEUAPA5CRO6EWYUKOQTAL3
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 4/7] dma-buf: Add check function for revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XVZIQ3NTSFEEUAPA5CRO6EWYUKOQTAL3/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,nvidia.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: BEE9846AAC
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
bnJvQG52aWRpYS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMzcgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KIGluY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oICAgfCAgMSArDQogMiBmaWxlcyBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggYzRmYTM1MDM0YjkyLi5jMDQ4YzgyMmMzZTkgMTAw
NjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jDQpAQCAtMTI1MiwxMyArMTI1Miw0OCBAQCB2b2lkIGRtYV9idWZfdW5zdXBw
b3J0ZWRfaW52YWxpZGF0ZV9tYXBwaW5ncyhzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRh
Y2gpDQogfQ0KIEVYUE9SVF9TWU1CT0xfRk9SX01PRFVMRVMoZG1hX2J1Zl91bnN1cHBvcnRlZF9p
bnZhbGlkYXRlX21hcHBpbmdzLCAiaWJfdXZlcmJzIik7DQogDQorLyoqDQorICogZG1hX2J1Zl9h
dHRhY2hfcmV2b2NhYmxlIC0gY2hlY2sgaWYgYSBETUEtYnVmIGltcG9ydGVyIGltcGxlbWVudHMN
CisgKiByZXZva2Ugc2VtYW50aWNzLg0KKyAqIEBhdHRhY2g6IHRoZSBETUEtYnVmIGF0dGFjaG1l
bnQgdG8gY2hlY2sNCisgKg0KKyAqIFJldHVybnMgdHJ1ZSBpZiB0aGUgRE1BLWJ1ZiBpbXBvcnRl
ciBjYW4gaGFuZGxlIGludmFsaWRhdGluZyBpdCdzIG1hcHBpbmdzDQorICogYXQgYW55IHRpbWUs
IGV2ZW4gYWZ0ZXIgcGlubmluZyBhIGJ1ZmZlci4NCisgKi8NCitib29sIGRtYV9idWZfYXR0YWNo
X3Jldm9jYWJsZShzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQorew0KKwkvKg0K
KwkgKiBUaGVyZSBpcyBubyBuZWVkIHRvIGNoZWNrIGV4aXN0ZW5jZSBvZiAuaW52YWxpZGF0ZV9t
YXBwaW5ncygpIGFzDQorCSAqIGl0IGFsd2F5cyBleGlzdHMgd2hlbiBpbXBvcnRlcl9vcHMgaXMg
c2V0IGluIGRtYV9idWZfZHluYW1pY19hdHRhY2goKS4NCisJICovDQorCXJldHVybiBhdHRhY2gt
PmltcG9ydGVyX29wcyAmJg0KKwkgICAgICAgKGF0dGFjaC0+aW1wb3J0ZXJfb3BzLT5pbnZhbGlk
YXRlX21hcHBpbmdzICE9DQorCQkmZG1hX2J1Zl91bnN1cHBvcnRlZF9pbnZhbGlkYXRlX21hcHBp
bmdzKTsNCit9DQorRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxl
LCAiRE1BX0JVRiIpOw0KKw0KIC8qKg0KICAqIGRtYV9idWZfbW92ZV9ub3RpZnkgLSBub3RpZnkg
YXR0YWNobWVudHMgdGhhdCBETUEtYnVmIGlzIG1vdmluZw0KICAqDQogICogQGRtYWJ1ZjoJW2lu
XQlidWZmZXIgd2hpY2ggaXMgbW92aW5nDQogICoNCiAgKiBJbmZvcm1zIGFsbCBhdHRhY2htZW50
cyB0aGF0IHRoZXkgbmVlZCB0byBkZXN0cm95IGFuZCByZWNyZWF0ZSBhbGwgdGhlaXINCi0gKiBt
YXBwaW5ncy4NCisgKiBtYXBwaW5ncy4gSWYgdGhlIGF0dGFjaG1lbnQgaXMgZHluYW1pYyB0aGVu
IHRoZSBkeW5hbWljIGltcG9ydGVyIGlzIGV4cGVjdGVkDQorICogdG8gaW52YWxpZGF0ZSBhbnkg
Y2FjaGVzIGl0IGhhcyBvZiB0aGUgbWFwcGluZyByZXN1bHQgYW5kIHBlcmZvcm0gYSBuZXcNCisg
KiBtYXBwaW5nIHJlcXVlc3QgYmVmb3JlIGFsbG93aW5nIEhXIHRvIGRvIGFueSBmdXJ0aGVyIERN
QS4NCisgKg0KKyAqIElmIHRoZSBhdHRhY2htZW50IGlzIHBpbm5lZCB0aGVuIHRoaXMgaW5mb3Jt
cyB0aGUgcGlubmVkIGltcG9ydGVyIHRoYXQNCisgKiB0aGUgdW5kZXJseWluZyBtYXBwaW5nIGlz
IG5vIGxvbmdlciBhdmFpbGFibGUuIFBpbm5lZCBpbXBvcnRlcnMgbWF5IHRha2UNCisgKiB0aGlz
IGlzIGFzIGEgcGVybWFuZW50IHJldm9jYXRpb24gc28gZXhwb3J0ZXJzIHNob3VsZCBub3QgdHJp
Z2dlciBpdA0KKyAqIGxpZ2h0bHkuDQorICoNCisgKiBGb3IgbGVnYWN5IHBpbm5lZCBpbXBvcnRl
cnMgdGhhdCBjYW5ub3Qgc3VwcG9ydCBpbnZhbGlkYXRpb24gdGhpcyBpcyBhIE5PUC4NCisgKiBE
cml2ZXJzIGNhbiBjYWxsIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpIHRvIGRldGVybWluZSBp
ZiB0aGUgaW1wb3J0ZXINCisgKiBzdXBwb3J0cyB0aGlzLg0KKyAqDQorICogTk9URTogVGhlIGlu
dmFsaWRhdGlvbiB0cmlnZ2VycyBhc3luY2hyb25vdXMgSFcgb3BlcmF0aW9uIGFuZCB0aGUgY2Fs
bGVycw0KKyAqIG5lZWQgdG8gd2FpdCBmb3IgdGhpcyBvcGVyYXRpb24gdG8gY29tcGxldGUgYnkg
Y2FsbGluZw0KKyAqIHRvIGRtYV9yZXN2X3dhaXRfdGltZW91dCgpLg0KICAqLw0KIHZvaWQgZG1h
X2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KIHsNCmRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQppbmRl
eCA3ZDdkMGE0ZmI3NjIuLmFjMmNlMTI3M2I0YyAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KQEAgLTYwMiw2ICs2MDIs
NyBAQCB2b2lkIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICosIHN0cnVjdCBzZ190YWJsZSAqLA0KIAkJCQllbnVtIGRtYV9kYXRhX2RpcmVjdGlvbik7
DQogdm9pZCBkbWFfYnVmX21vdmVfbm90aWZ5KHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmKTsNCiB2
b2lkIGRtYV9idWZfdW5zdXBwb3J0ZWRfaW52YWxpZGF0ZV9tYXBwaW5ncyhzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2gpOw0KK2Jvb2wgZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCk7DQogDQogaW50IGRtYV9idWZfYmVnaW5f
Y3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwNCiAJCQkgICAgIGVudW0gZG1hX2Rh
dGFfZGlyZWN0aW9uIGRpcik7DQoNCi0tIA0KMi41Mi4wDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
