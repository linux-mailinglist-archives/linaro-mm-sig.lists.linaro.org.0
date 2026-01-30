Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mL/UFIm0fGm7OQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:39:21 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E84DABB359
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:39:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13EB93F99C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 13:39:20 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 32B47401E3
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 13:37:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lPkS8oOq;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A6848443EA;
	Fri, 30 Jan 2026 13:37:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2CBAC4CEF7;
	Fri, 30 Jan 2026 13:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769780276;
	bh=BadvRp2kMbYiE6vohEKv25VeRPZoBeiAhKDHz+nyIJs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lPkS8oOqgSFwkSTrkhU0/7w1YTiXWrBwmNLdSrmnI505F0sCH2YnugM/smtGpOYdx
	 raV66aWR0nKu5TZK3XZ5aPV/DTrldO8qLyqO0ga6eB2QjF4EhZCyCn4wMn5dMeI8tI
	 OlC3ShlpvpYlEfrUnpj1MASBnoXseoaAvPuxH87WPOAmwSmfWKFQFaBCWWG6Gx71hA
	 /k3NqfAqm9qEPlzB7TEFfIjKzx62DrLS0kwYXj7B5pmZi7kwUWHvp9//JdsNwEunV8
	 kMoNJAIwUgS+dxBumKWfWkadG3CJb74es60RejSM97JAK8HGE9Lxl+y3JxOBjWrD7Z
	 GMyPknJMh9dAQ==
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
Date: Fri, 30 Jan 2026 15:37:23 +0200
Message-ID: <20260130-dmabuf-revoke-v6-7-06278f9b7bf0@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260130-dmabuf-revoke-v6-0-06278f9b7bf0@nvidia.com>
References: <20260130-dmabuf-revoke-v6-0-06278f9b7bf0@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-47773
X-Spamd-Bar: ---
Message-ID-Hash: DY2FSCNELB4L7BT226GVK6VDTPOPNBDT
X-Message-ID-Hash: DY2FSCNELB4L7BT226GVK6VDTPOPNBDT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DY2FSCNELB4L7BT226GVK6VDTPOPNBDT/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,intel.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,shazbot.org:email]
X-Rspamd-Queue-Id: E84DABB359
X-Rspamd-Action: no action

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KVGlsbCBub3cgVkZJ
TyBoYXMgcmVqZWN0ZWQgcGlubmVkIGltcG9ydGVycywgbGFyZ2VseSB0byBhdm9pZCBiZWluZyB1
c2VkDQp3aXRoIHRoZSBSRE1BIHBpbm5lZCBpbXBvcnRlciB0aGF0IGNhbm5vdCBoYW5kbGUgYSBt
b3ZlX25vdGlmeSgpIHRvIHJldm9rZQ0KYWNjZXNzLg0KDQpVc2luZyBkbWFfYnVmX2F0dGFjaF9y
ZXZvY2FibGUoKSBpdCBjYW4gdGVsbCB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHBpbm5lZA0KaW1w
b3J0ZXJzIHRoYXQgc3VwcG9ydCB0aGUgZmxvdyBkZXNjcmliZWQgaW4gZG1hX2J1Zl9pbnZhbGlk
YXRlX21hcHBpbmdzKCkNCmFuZCB0aG9zZSB0aGF0IGRvbid0Lg0KDQpUaHVzIHBlcm1pdCBjb21w
YXRpYmxlIHBpbm5lZCBpbXBvcnRlcnMuDQoNClRoaXMgaXMgb25lIG9mIHR3byBpdGVtcyBJT01N
VUZEIHJlcXVpcmVzIHRvIHJlbW92ZSBpdHMgcHJpdmF0ZSBpbnRlcmZhY2UNCnRvIFZGSU8ncyBk
bWEtYnVmLg0KDQpSZXZpZXdlZC1ieTogS2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5jb20+
DQpSZXZpZXdlZC1ieTogQWxleCBXaWxsaWFtc29uIDxhbGV4QHNoYXpib3Qub3JnPg0KUmV2aWV3
ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25l
ZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQotLS0NCiBkcml2
ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIHwgMzcgKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAyNyBk
ZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1h
YnVmLmMgYi9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQppbmRleCA0ODU1MTU2
MjlmZTQuLjIwZDhhNDUyNDcxZCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19w
Y2lfZG1hYnVmLmMNCisrKyBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCkBA
IC0yMiwxNiArMjIsNiBAQCBzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiB7DQogCXU4IHJldm9rZWQg
OiAxOw0KIH07DQogDQotc3RhdGljIGludCB2ZmlvX3BjaV9kbWFfYnVmX3BpbihzdHJ1Y3QgZG1h
X2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50KQ0KLXsNCi0JcmV0dXJuIC1FT1BOT1RTVVBQOw0K
LX0NCi0NCi1zdGF0aWMgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX3VucGluKHN0cnVjdCBkbWFfYnVm
X2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQpDQotew0KLQkvKiBEbyBub3RoaW5nICovDQotfQ0KLQ0K
IHN0YXRpYyBpbnQgdmZpb19wY2lfZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1
ZiwNCiAJCQkJICAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCkNCiB7DQpA
QCAtNDMsNiArMzMsOSBAQCBzdGF0aWMgaW50IHZmaW9fcGNpX2RtYV9idWZfYXR0YWNoKHN0cnVj
dCBkbWFfYnVmICpkbWFidWYsDQogCWlmIChwcml2LT5yZXZva2VkKQ0KIAkJcmV0dXJuIC1FTk9E
RVY7DQogDQorCWlmICghZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKGF0dGFjaG1lbnQpKQ0KKwkJ
cmV0dXJuIC1FT1BOT1RTVVBQOw0KKw0KIAlyZXR1cm4gMDsNCiB9DQogDQpAQCAtMTA3LDggKzEw
MCw2IEBAIHN0YXRpYyB2b2lkIHZmaW9fcGNpX2RtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmKQ0KIH0NCiANCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIHZmaW9f
cGNpX2RtYWJ1Zl9vcHMgPSB7DQotCS5waW4gPSB2ZmlvX3BjaV9kbWFfYnVmX3BpbiwNCi0JLnVu
cGluID0gdmZpb19wY2lfZG1hX2J1Zl91bnBpbiwNCiAJLmF0dGFjaCA9IHZmaW9fcGNpX2RtYV9i
dWZfYXR0YWNoLA0KIAkubWFwX2RtYV9idWYgPSB2ZmlvX3BjaV9kbWFfYnVmX21hcCwNCiAJLnVu
bWFwX2RtYV9idWYgPSB2ZmlvX3BjaV9kbWFfYnVmX3VubWFwLA0KQEAgLTM1Nyw3ICszNDgsOCBA
QCB2b2lkIHZmaW9fcGNpX2RtYV9idWZfbW92ZShzdHJ1Y3QgdmZpb19wY2lfY29yZV9kZXZpY2Ug
KnZkZXYsIGJvb2wgcmV2b2tlZCkNCiANCiAJCWlmIChwcml2LT5yZXZva2VkICE9IHJldm9rZWQp
IHsNCiAJCQlkbWFfcmVzdl9sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQotCQkJcHJp
di0+cmV2b2tlZCA9IHJldm9rZWQ7DQorCQkJaWYgKHJldm9rZWQpDQorCQkJCXByaXYtPnJldm9r
ZWQgPSB0cnVlOw0KIAkJCWRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncyhwcml2LT5kbWFidWYp
Ow0KIAkJCWRtYV9yZXN2X3dhaXRfdGltZW91dChwcml2LT5kbWFidWYtPnJlc3YsDQogCQkJCQkg
ICAgICBETUFfUkVTVl9VU0FHRV9CT09LS0VFUCwgZmFsc2UsDQpAQCAtMzY1LDE3ICszNTcsNyBA
QCB2b2lkIHZmaW9fcGNpX2RtYV9idWZfbW92ZShzdHJ1Y3QgdmZpb19wY2lfY29yZV9kZXZpY2Ug
KnZkZXYsIGJvb2wgcmV2b2tlZCkNCiAJCQlkbWFfcmVzdl91bmxvY2socHJpdi0+ZG1hYnVmLT5y
ZXN2KTsNCiAJCQlpZiAocmV2b2tlZCkgew0KIAkJCQlrcmVmX3B1dCgmcHJpdi0+a3JlZiwgdmZp
b19wY2lfZG1hX2J1Zl9kb25lKTsNCi0JCQkJLyogTGV0J3Mgd2FpdCB0aWxsIGFsbCBETUEgdW5t
YXAgYXJlIGNvbXBsZXRlZC4gKi8NCi0JCQkJd2FpdCA9IHdhaXRfZm9yX2NvbXBsZXRpb25fdGlt
ZW91dCgNCi0JCQkJCSZwcml2LT5jb21wLCBzZWNzX3RvX2ppZmZpZXMoMSkpOw0KLQkJCQkvKg0K
LQkJCQkgKiBJZiB5b3Ugc2VlIHRoaXMgV0FSTl9PTiwgaXQgbWVhbnMgdGhhdA0KLQkJCQkgKiBp
bXBvcnRlciBkaWRuJ3QgY2FsbCB1bm1hcCBpbiByZXNwb25zZSB0bw0KLQkJCQkgKiBkbWFfYnVm
X2ludmFsaWRhdGVfbWFwcGluZ3MoKSB3aGljaCBpcyBub3QNCi0JCQkJICogYWxsb3dlZC4NCi0J
CQkJICovDQotCQkJCVdBUk4oIXdhaXQsDQotCQkJCSAgICAgIlRpbWVkIG91dCB3YWl0aW5nIGZv
ciBETUFCVUYgdW5tYXAsIGltcG9ydGVyIGhhcyBhIGJyb2tlbiBpbnZhbGlkYXRlX21hcHBpbmco
KSIpOw0KKwkJCQl3YWl0X2Zvcl9jb21wbGV0aW9uKCZwcml2LT5jb21wKTsNCiAJCQl9IGVsc2Ug
ew0KIAkJCQkvKg0KIAkJCQkgKiBLcmVmIGlzIGluaXRpYWxpemUgYWdhaW4sIGJlY2F1c2Ugd2hl
biByZXZva2UNCkBAIC0zODksNiArMzcxLDkgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX21vdmUo
c3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCBib29sIHJldm9rZWQpDQogCQkJCSAq
IHByaXYtPnJldm9rZWQgPT0gdHJ1ZS4NCiAJCQkJICovDQogCQkJCXJlaW5pdF9jb21wbGV0aW9u
KCZwcml2LT5jb21wKTsNCisJCQkJZG1hX3Jlc3ZfbG9jayhwcml2LT5kbWFidWYtPnJlc3YsIE5V
TEwpOw0KKwkJCQlwcml2LT5yZXZva2VkID0gZmFsc2U7DQorCQkJCWRtYV9yZXN2X3VubG9jayhw
cml2LT5kbWFidWYtPnJlc3YpOw0KIAkJCX0NCiAJCX0NCiAJCWZwdXQocHJpdi0+ZG1hYnVmLT5m
aWxlKTsNCkBAIC00MTcsOSArNDAyLDcgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX2NsZWFudXAo
c3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2KQ0KIAkJCQkgICAgICBNQVhfU0NIRURV
TEVfVElNRU9VVCk7DQogCQlkbWFfcmVzdl91bmxvY2socHJpdi0+ZG1hYnVmLT5yZXN2KTsNCiAJ
CWtyZWZfcHV0KCZwcml2LT5rcmVmLCB2ZmlvX3BjaV9kbWFfYnVmX2RvbmUpOw0KLQkJd2FpdCA9
IHdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91dCgmcHJpdi0+Y29tcCwNCi0JCQkJCQkgICBzZWNz
X3RvX2ppZmZpZXMoMSkpOw0KLQkJV0FSTl9PTighd2FpdCk7DQorCQl3YWl0X2Zvcl9jb21wbGV0
aW9uKCZwcml2LT5jb21wKTsNCiAJCXZmaW9fZGV2aWNlX3B1dF9yZWdpc3RyYXRpb24oJnZkZXYt
PnZkZXYpOw0KIAkJZnB1dChwcml2LT5kbWFidWYtPmZpbGUpOw0KIAl9DQoNCi0tIA0KMi41Mi4w
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
