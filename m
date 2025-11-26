Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AO17GaMA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CCA410D33
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4132343D1F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:30:42 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 250F73F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 13:20:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=TwtlcmIl;
	spf=pass (lists.linaro.org: domain of phasta@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=phasta@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9C6BD44346;
	Wed, 26 Nov 2025 13:20:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89199C116B1;
	Wed, 26 Nov 2025 13:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764163227;
	bh=UWZRmAEzkRqq5oGLP1a96kp5nn+UOgdKzQBXsbq4Mcc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TwtlcmIlc7KO7bkTPkzH6jVSl0c0R12kc6TX9T7fQ2Z88iPp6WbrfIkqrHVAY8oyV
	 sTD4ZtmpevXeOQ8otE8u/HMIAOCWUNURuiB8yFzWBH+4THH8FAGv6kXCTfUpp1Rfyj
	 3A/rYMsX0hPycQYG/bp+iKnWpoRPl5Djqyv0/6nj76SU4aGAPZHcOK8QiZv8ez9kJR
	 d0KFSmR0lj6gdUB2bU/9mwbdzzfYfNOZFrK+GhnugiPGBOmbHkEG5+KO7HCSxYj7ii
	 d1VDQ2ToDs0voceBmjaEJLdXGjuv3FR3ffa+lZW1Hez+8c7Z2WhjDyVnuGi0oS1VLD
	 Ui6T8oE/fHQVg==
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
Date: Wed, 26 Nov 2025 14:19:13 +0100
Message-ID: <20251126131914.149445-6-phasta@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251126131914.149445-2-phasta@kernel.org>
References: <20251126131914.149445-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EFZDRMEZVOM7437UGWGE5A4BA4NICLSV
X-Message-ID-Hash: EFZDRMEZVOM7437UGWGE5A4BA4NICLSV
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:04 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org, Philipp Stanner <phasta@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/6] dma-buf: Don't misuse dma_fence_signal()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EFZDRMEZVOM7437UGWGE5A4BA4NICLSV/>
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
X-Rspamd-Queue-Id: 39CCA410D33
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlIHJldHVybiBjb2RlIG9mIGRtYV9mZW5jZV9zaWduYWwoKSBpcyBub3QgcmVhbGx5IHVzZWZ1
bCBhcyB0aGVyZSBpcw0Kbm90aGluZyByZWFzb25hYmxlIHRvIGRvIGlmIGEgZmVuY2Ugd2FzIGFs
cmVhZHkgc2lnbmFsZWQuIFRoYXQgcmV0dXJuDQpjb2RlIHNoYWxsIGJlIHJlbW92ZWQgZnJvbSB0
aGUga2VybmVsLg0KDQpNb3Jlb3ZlciwgZG1hX2ZlbmNlX3NpZ25hbCgpIHNob3VsZCBub3QgYmUg
dXNlZCB0byBjaGVjayB3aGV0aGVyIGZlbmNlcw0KYXJlIHNpZ25hbGVkLiBUaGF0J3Mgd2hhdCBk
bWFfZmVuY2VfaXNfc2lnbmFsZWQoKSBhbmQNCmRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWco
KSBleGlzdCBmb3IuDQoNClJlcGxhY2UgdGhlIG5vbi1jYW5vbmljYWwgdXNhZ2Ugb2YgZG1hX2Zl
bmNlX3NpZ25hbCgpLg0KDQpTdWdnZXN0ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3Rh
QGtlcm5lbC5vcmc+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgfCA3ICsr
LS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0K
DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jIGIvZHJpdmVycy9k
bWEtYnVmL3N0LWRtYS1mZW5jZS5jDQppbmRleCAyN2EzNjA0NTQxMGIuLjlmYzkzODU5ZjM2ZiAx
MDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVy
cy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQpAQCAtMTI2LDE3ICsxMjYsMTQgQEAgc3RhdGljIGlu
dCB0ZXN0X3NpZ25hbGluZyh2b2lkICphcmcpDQogCQlnb3RvIGVycl9mcmVlOw0KIAl9DQogDQot
CWlmIChkbWFfZmVuY2Vfc2lnbmFsKGYpKSB7DQotCQlwcl9lcnIoIkZlbmNlIHJlcG9ydGVkIGJl
aW5nIGFscmVhZHkgc2lnbmFsZWRcbiIpOw0KLQkJZ290byBlcnJfZnJlZTsNCi0JfQ0KKwlkbWFf
ZmVuY2Vfc2lnbmFsKGYpOw0KIA0KIAlpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZChmKSkgew0K
IAkJcHJfZXJyKCJGZW5jZSBub3QgcmVwb3J0aW5nIHNpZ25hbGVkXG4iKTsNCiAJCWdvdG8gZXJy
X2ZyZWU7DQogCX0NCiANCi0JaWYgKCFkbWFfZmVuY2Vfc2lnbmFsKGYpKSB7DQorCWlmICghZG1h
X2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhmKSkgew0KIAkJcHJfZXJyKCJGZW5jZSByZXBvcnRl
ZCBub3QgYmVpbmcgYWxyZWFkeSBzaWduYWxlZFxuIik7DQogCQlnb3RvIGVycl9mcmVlOw0KIAl9
DQotLSANCjIuNDkuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
