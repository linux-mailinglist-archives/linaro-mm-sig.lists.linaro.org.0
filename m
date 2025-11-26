Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKvrL5gA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3519D410D16
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47F9E43C9A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:30:31 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 657973F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 13:20:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=R6nsMVaK;
	spf=pass (lists.linaro.org: domain of phasta@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=phasta@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C2AD24439E;
	Wed, 26 Nov 2025 13:20:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC226C116C6;
	Wed, 26 Nov 2025 13:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764163214;
	bh=ltdOJycY3sDDX0uPBNfRJ/CZ9LopyY+2sk6yZsVKKWQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=R6nsMVaKLj1Y2h5Ioo+V9XAsLOzvKmNbMLQ0j3D2jrrzIzb0TDhhOI/B4NIt5txT2
	 3RvDpCssxHjcZwqL1cwsyYUsScnL2b6bir3kVh4XMRms0Sa6w7LYpVyjQaB5I32zhd
	 WXB9sJhr4m7EaQkVjZXI/Y3zCbWLisj54C1CyG6fyXzz+mIUpSbTaIHiJeccZ105H9
	 5N7cA9lI9CuUL0hXYElx9TpWe86JRCBbmEQpC0+UxQGxRohhECN/otmgwoycbH5sLG
	 PxtJvcM3npDalTTZdtJENGNZ3y3zfy5qTUglAcdgefDlZUx1KFYFLclOX1DDbd8Ic4
	 5l6r0aJjXAolg==
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
Date: Wed, 26 Nov 2025 14:19:11 +0100
Message-ID: <20251126131914.149445-4-phasta@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251126131914.149445-2-phasta@kernel.org>
References: <20251126131914.149445-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NVONVSBELPMZF7IG5M542F2ZZWVYEJLA
X-Message-ID-Hash: NVONVSBELPMZF7IG5M542F2ZZWVYEJLA
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:03 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org, Philipp Stanner <phasta@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/6] amd/amdkfd: Ignore return code of dma_fence_signal()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NVONVSBELPMZF7IG5M542F2ZZWVYEJLA/>
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
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 3519D410D16
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlIHJldHVybiBjb2RlIG9mIGRtYV9mZW5jZV9zaWduYWwoKSBpcyBub3QgcmVhbGx5IHVzZWZ1
bCBhcyB0aGVyZSBpcw0Kbm90aGluZyByZWFzb25hYmxlIHRvIGRvIGlmIGEgZmVuY2Ugd2FzIGFs
cmVhZHkgc2lnbmFsZWQuIFRoYXQgcmV0dXJuDQpjb2RlIHNoYWxsIGJlIHJlbW92ZWQgZnJvbSB0
aGUga2VybmVsLg0KDQpJZ25vcmUgZG1hX2ZlbmNlX3NpZ25hbCgpJ3MgcmV0dXJuIGNvZGUuDQoN
ClN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KU2lnbmVkLW9mZi1ieTogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCi0t
LQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMgfCA1ICsrLS0tDQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCg0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfcHJvY2Vzcy5jDQppbmRleCBkZGZlMzBjMTNlOWQuLjk1
MGZhZmE0YjNjMyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9w
cm9jZXNzLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMN
CkBAIC0xOTg2LDcgKzE5ODYsNiBAQCBrZmRfcHJvY2Vzc19ncHVpZF9mcm9tX25vZGUoc3RydWN0
IGtmZF9wcm9jZXNzICpwLCBzdHJ1Y3Qga2ZkX25vZGUgKm5vZGUsDQogc3RhdGljIGludCBzaWdu
YWxfZXZpY3Rpb25fZmVuY2Uoc3RydWN0IGtmZF9wcm9jZXNzICpwKQ0KIHsNCiAJc3RydWN0IGRt
YV9mZW5jZSAqZWY7DQotCWludCByZXQ7DQogDQogCXJjdV9yZWFkX2xvY2soKTsNCiAJZWYgPSBk
bWFfZmVuY2VfZ2V0X3JjdV9zYWZlKCZwLT5lZik7DQpAQCAtMTk5NCwxMCArMTk5MywxMCBAQCBz
dGF0aWMgaW50IHNpZ25hbF9ldmljdGlvbl9mZW5jZShzdHJ1Y3Qga2ZkX3Byb2Nlc3MgKnApDQog
CWlmICghZWYpDQogCQlyZXR1cm4gLUVJTlZBTDsNCiANCi0JcmV0ID0gZG1hX2ZlbmNlX3NpZ25h
bChlZik7DQorCWRtYV9mZW5jZV9zaWduYWwoZWYpOw0KIAlkbWFfZmVuY2VfcHV0KGVmKTsNCiAN
Ci0JcmV0dXJuIHJldDsNCisJcmV0dXJuIDA7DQogfQ0KIA0KIHN0YXRpYyB2b2lkIGV2aWN0X3By
b2Nlc3Nfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCi0tIA0KMi40OS4wDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
