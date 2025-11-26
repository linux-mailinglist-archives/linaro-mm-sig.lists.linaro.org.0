Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGCRA54A4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A5037410D24
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A932343CC3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:30:36 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id BD53A3F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 13:20:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=KLN6C2Wx;
	spf=pass (lists.linaro.org: domain of phasta@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=phasta@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3CB1044346;
	Wed, 26 Nov 2025 13:20:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D077C113D0;
	Wed, 26 Nov 2025 13:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764163221;
	bh=MN344wm2Ixu5X6Egt125oaRBPXXL6wOJJ8cpucZ04iA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KLN6C2WxyaGLUphoRIvUajESUcR/xNOR+7fMO/ABWSP+mXxmpoAAqQVtXfRLExvTc
	 SHrYcieFx+oJIAIIpPsikBV7AlKohQDi3P3L9XlfRc/R0rQyx3hXhfkOxgi1TVkpGR
	 vu3+lvtFLZrjiqNSZ3DSkk7SvXT2C7IGLmlY7IAE/e2YBZHik2G2uG86XzNj3goi7q
	 oFQqGbp0EeUdB7hxktU5GTHGrf4Ugn2d6Z/GlxFvP8yVotOajkcvYV+PercoshxZqo
	 QMnkU/DrukJ2Zqfh5CB4FFW5NbPNqCHSZez5AxeD+gRPeP6pPbCCSHSjlPCt/IGkrw
	 38tlRKl6OYtRA==
From: Philipp Stanner <phasta@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Gustavo Padovan <gustavo@padovan.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Felix Kuehling <Felix.Kuehling@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>,
	Huang Rui <ray.huang@amd.com>,
	Matthew Auld <matthew.auld@intel.com>,
	Matthew Brost <matthew.brost@intel.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 26 Nov 2025 14:19:12 +0100
Message-ID: <20251126131914.149445-5-phasta@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251126131914.149445-2-phasta@kernel.org>
References: <20251126131914.149445-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FM3FMSMJ5PKYXEGDOVUWKBYPUECUBFNE
X-Message-ID-Hash: FM3FMSMJ5PKYXEGDOVUWKBYPUECUBFNE
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:03 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org, Philipp Stanner <phasta@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/6] drm/gpu/xe: Ignore dma_fenc_signal() return code
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FM3FMSMJ5PKYXEGDOVUWKBYPUECUBFNE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[3386];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,kernel.org,suse.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:email]
X-Rspamd-Queue-Id: A5037410D24
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlIHJldHVybiBjb2RlIG9mIGRtYV9mZW5jZV9zaWduYWwoKSBpcyBub3QgcmVhbGx5IHVzZWZ1
bCBhcyB0aGVyZSBpcw0Kbm90aGluZyByZWFzb25hYmxlIHRvIGRvIGlmIGEgZmVuY2Ugd2FzIGFs
cmVhZHkgc2lnbmFsZWQuIFRoYXQgcmV0dXJuDQpjb2RlIHNoYWxsIGJlIHJlbW92ZWQgZnJvbSB0
aGUga2VybmVsLg0KDQpJZ25vcmUgZG1hX2ZlbmNlX3NpZ25hbCgpJ3MgcmV0dXJuIGNvZGUuDQoN
ClN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KU2lnbmVkLW9mZi1ieTogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCi0t
LQ0KIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9od19mZW5jZS5jIHwgNSArKy0tLQ0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0veGUveGVfaHdfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9o
d19mZW5jZS5jDQppbmRleCBiMmEwYzQ2ZGZjZDQuLjk1OWIzMGRkZTcyNCAxMDA2NDQNCi0tLSBh
L2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9od19mZW5jZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0v
eGUveGVfaHdfZmVuY2UuYw0KQEAgLTg1LDcgKzg1LDYgQEAgdm9pZCB4ZV9od19mZW5jZV9pcnFf
ZmluaXNoKHN0cnVjdCB4ZV9od19mZW5jZV9pcnEgKmlycSkNCiB7DQogCXN0cnVjdCB4ZV9od19m
ZW5jZSAqZmVuY2UsICpuZXh0Ow0KIAl1bnNpZ25lZCBsb25nIGZsYWdzOw0KLQlpbnQgZXJyOw0K
IAlib29sIHRtcDsNCiANCiAJaWYgKFhFX1dBUk5fT04oIWxpc3RfZW1wdHkoJmlycS0+cGVuZGlu
ZykpKSB7DQpAQCAtOTMsOSArOTIsOSBAQCB2b2lkIHhlX2h3X2ZlbmNlX2lycV9maW5pc2goc3Ry
dWN0IHhlX2h3X2ZlbmNlX2lycSAqaXJxKQ0KIAkJc3Bpbl9sb2NrX2lycXNhdmUoJmlycS0+bG9j
aywgZmxhZ3MpOw0KIAkJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGZlbmNlLCBuZXh0LCAmaXJx
LT5wZW5kaW5nLCBpcnFfbGluaykgew0KIAkJCWxpc3RfZGVsX2luaXQoJmZlbmNlLT5pcnFfbGlu
ayk7DQotCQkJZXJyID0gZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoJmZlbmNlLT5kbWEpOw0KKwkJ
CVhFX1dBUk5fT04oZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZygmZmVuY2UtPmRtYSkpOw0K
KwkJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKCZmZW5jZS0+ZG1hKTsNCiAJCQlkbWFfZmVuY2Vf
cHV0KCZmZW5jZS0+ZG1hKTsNCi0JCQlYRV9XQVJOX09OKGVycik7DQogCQl9DQogCQlzcGluX3Vu
bG9ja19pcnFyZXN0b3JlKCZpcnEtPmxvY2ssIGZsYWdzKTsNCiAJCWRtYV9mZW5jZV9lbmRfc2ln
bmFsbGluZyh0bXApOw0KLS0gDQoyLjQ5LjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
