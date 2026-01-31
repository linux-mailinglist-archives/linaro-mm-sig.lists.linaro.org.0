Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iB0sKdGUfWnQSgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 31 Jan 2026 06:36:17 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B410C0D76
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 31 Jan 2026 06:36:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BF573F961
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 31 Jan 2026 05:36:16 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 0C551401D3
	for <linaro-mm-sig@lists.linaro.org>; Sat, 31 Jan 2026 05:34:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=uJdD3UUT;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A2494387C;
	Sat, 31 Jan 2026 05:34:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B07C1C19422;
	Sat, 31 Jan 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769837694;
	bh=lXD3Rfmrq9ID2Phy2qOuoiFRYX7CFuqYnX/mCIn2d/Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uJdD3UUTvFVZ1bRRWcfac7E2Miig22lWJ0Vdj0fqat20b+afqAxwxDcGADCeOe6r+
	 dSULAUUKTv9DRSSwjGE8Jh1hvQaT83fJdQ8X4+t40pSbEGaU2gXVPQMvEE79tNYFs6
	 0SR8//5HGdjJYUVS8hHjCSwBt9DycPFUSm6jcidAT1fADs4ETvGOW1H5bOLzMr/F95
	 zCrJ7XrYRxny/BEYqw205a2U01qNka3wt0hY2vohqW/17+cstkTE5GgWPnV4+LlrMJ
	 v2xIGQlWMfA/+QHXJv153fzHFZyXdOAbArLuKXEEJzgQ+vpGLpGBxfemJXLQ5LxmN9
	 yeUh1saKO3Y/w==
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
Date: Sat, 31 Jan 2026 07:34:17 +0200
Message-ID: <20260131-dmabuf-revoke-v7-7-463d956bd527@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-47773
X-Spamd-Bar: ----
Message-ID-Hash: WT35KCUTJPC2JAPZ2RPGAQBCTB5T6HHM
X-Message-ID-Hash: WT35KCUTJPC2JAPZ2RPGAQBCTB5T6HHM
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WT35KCUTJPC2JAPZ2RPGAQBCTB5T6HHM/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email,shazbot.org:email,intel.com:email,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 4B410C0D76
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
ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIHwgMTUgKysrLS0tLS0tLS0tLS0tDQogMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIGIvZHJpdmVycy92ZmlvL3Bj
aS92ZmlvX3BjaV9kbWFidWYuYw0KaW5kZXggNzhkNDdlMjYwZjM0Li5hNWZiODBlMDY4ZWUgMTAw
NjQ0DQotLS0gYS9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQorKysgYi9kcml2
ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQpAQCAtMjIsMTYgKzIyLDYgQEAgc3RydWN0
IHZmaW9fcGNpX2RtYV9idWYgew0KIAl1OCByZXZva2VkIDogMTsNCiB9Ow0KIA0KLXN0YXRpYyBp
bnQgdmZpb19wY2lfZG1hX2J1Zl9waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
bWVudCkNCi17DQotCXJldHVybiAtRU9QTk9UU1VQUDsNCi19DQotDQotc3RhdGljIHZvaWQgdmZp
b19wY2lfZG1hX2J1Zl91bnBpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50
KQ0KLXsNCi0JLyogRG8gbm90aGluZyAqLw0KLX0NCi0NCiBzdGF0aWMgaW50IHZmaW9fcGNpX2Rt
YV9idWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQogCQkJCSAgIHN0cnVjdCBkbWFf
YnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQpDQogew0KQEAgLTQzLDYgKzMzLDkgQEAgc3RhdGlj
IGludCB2ZmlvX3BjaV9kbWFfYnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KIAlp
ZiAocHJpdi0+cmV2b2tlZCkNCiAJCXJldHVybiAtRU5PREVWOw0KIA0KKwlpZiAoIWRtYV9idWZf
YXR0YWNoX3Jldm9jYWJsZShhdHRhY2htZW50KSkNCisJCXJldHVybiAtRU9QTk9UU1VQUDsNCisN
CiAJcmV0dXJuIDA7DQogfQ0KIA0KQEAgLTEwNyw4ICsxMDAsNiBAQCBzdGF0aWMgdm9pZCB2Zmlv
X3BjaV9kbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCiB9DQogDQogc3Rh
dGljIGNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyB2ZmlvX3BjaV9kbWFidWZfb3BzID0gew0KLQku
cGluID0gdmZpb19wY2lfZG1hX2J1Zl9waW4sDQotCS51bnBpbiA9IHZmaW9fcGNpX2RtYV9idWZf
dW5waW4sDQogCS5hdHRhY2ggPSB2ZmlvX3BjaV9kbWFfYnVmX2F0dGFjaCwNCiAJLm1hcF9kbWFf
YnVmID0gdmZpb19wY2lfZG1hX2J1Zl9tYXAsDQogCS51bm1hcF9kbWFfYnVmID0gdmZpb19wY2lf
ZG1hX2J1Zl91bm1hcCwNCg0KLS0gDQoyLjUyLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
