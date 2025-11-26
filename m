Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBJEJKsA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 48029410D49
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6174543CC3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:30:50 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id A2BDE3F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 13:20:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=SlzUKnq7;
	spf=pass (lists.linaro.org: domain of phasta@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=phasta@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 242B940BFF;
	Wed, 26 Nov 2025 13:20:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06F58C113D0;
	Wed, 26 Nov 2025 13:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764163234;
	bh=lgAu6095fUG7URUtB5h9h1pWeOKehgRUT+IfEnrX0L8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SlzUKnq7+JYkCPIISBxuVSJtdfIbgnro2PHCDrhP1dJKS3DVMtUcilQacvEz/ee17
	 n/rAZbBLl1tDeiGBZMIfP903XFYmcmrpBfkc8FMNkSMAS5rh0UfG9DP0he9+bjVsGh
	 X8NmWUTmwUR3GL7sikPHs0vQ2bTo45s6VLia93pI3VaJ0ZubUQToiKczIjcBU3OYJH
	 76rPpa7YG4R/HdNwlS3tq9eBfDQfTnu4JO+iNOIJ01Ta2z0h+YCkqh/kjqfGUp2F4F
	 Hm0Zlee+s4KQs9RusVyTgY9xIZfMwbSIzZxLh5C2T1MI6nNapaHJFzmkrvgHBUK7NB
	 bgrvQM/LDGb7A==
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
Date: Wed, 26 Nov 2025 14:19:14 +0100
Message-ID: <20251126131914.149445-7-phasta@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251126131914.149445-2-phasta@kernel.org>
References: <20251126131914.149445-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YRXAND2ZJM6XPGJH3BNLTFHXDWN5YLBE
X-Message-ID-Hash: YRXAND2ZJM6XPGJH3BNLTFHXDWN5YLBE
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:04 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org, Philipp Stanner <phasta@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/6] drm/ttm: Remove return check of dma_fence_signal()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YRXAND2ZJM6XPGJH3BNLTFHXDWN5YLBE/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 48029410D49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlIHJldHVybiBjb2RlIG9mIGRtYV9mZW5jZV9zaWduYWwoKSBpcyBub3QgdXNlZnVsIGFuZCBz
aGFsbCBiZSByZW1vdmVkDQpmcm9tIHRoZSBrZXJuZWwuIFRvIGRvIHNvLCBhbGwgdXNlcnMgbXVz
dCBiZSByZW1vdmVkLg0KDQpSZW1vdmUgdXNhZ2Ugb2YgZG1hX2ZlbmNlX3NpZ25hbCgpJ3MgcmV0
dXJuIGNvZGUuDQoNClN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2Vy
bmVsLm9yZz4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdGVzdHMvdHRtX2JvX3ZhbGlkYXRl
X3Rlc3QuYyB8IDMgKystDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90ZXN0cy90dG1fYm9f
dmFsaWRhdGVfdGVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90ZXN0cy90dG1fYm9fdmFsaWRh
dGVfdGVzdC5jDQppbmRleCAxYmNjNjc5NzdmNDguLjM0OTU3NjI0OTEwZiAxMDA2NDQNCi0tLSBh
L2RyaXZlcnMvZ3B1L2RybS90dG0vdGVzdHMvdHRtX2JvX3ZhbGlkYXRlX3Rlc3QuYw0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3R0bS90ZXN0cy90dG1fYm9fdmFsaWRhdGVfdGVzdC5jDQpAQCAtNjky
LDcgKzY5Miw4IEBAIHN0YXRpYyBpbnQgdGhyZWFkZWRfZmVuY2Vfc2lnbmFsKHZvaWQgKmFyZykN
CiANCiAJbXNsZWVwKDIwKTsNCiANCi0JcmV0dXJuIGRtYV9mZW5jZV9zaWduYWwoZmVuY2UpOw0K
KwlkbWFfZmVuY2Vfc2lnbmFsKGZlbmNlKTsNCisJcmV0dXJuIDA7DQogfQ0KIA0KIHN0YXRpYyB2
b2lkIHR0bV9ib192YWxpZGF0ZV9tb3ZlX2ZlbmNlX25vdF9zaWduYWxlZChzdHJ1Y3Qga3VuaXQg
KnRlc3QpDQotLSANCjIuNDkuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
