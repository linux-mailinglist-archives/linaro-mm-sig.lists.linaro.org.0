Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B9BB9F6ED
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 15:09:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 038E2440E5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 13:09:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	by lists.linaro.org (Postfix) with ESMTPS id 9C66B45D62
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Sep 2025 13:09:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=MZBsKw8z;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 198.175.65.21 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1758805756; x=1790341756;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=1yeksaWAq4V6BaDhQbrC0Viq6IggnZtrq6qYX3rMGdQ=;
  b=MZBsKw8zGZoAhA7Slamfoe9DZvo/37aaY7gETygT9hMvrfAG04thMzyi
   rYUK36OWV48Gce+lG0IixRPO90tU8Z4Bd1Ctwur0JH6nWuAyJK9AOZFq0
   aPm6sdHvozE0c3MyG3HzAwHA7csGYCOoPwqvfMs9OYoD4uZvh6QRjqKJ4
   tHYlmBNucZ/A97K4AXiTZp0RC0f2DflzY4nwiO3IaVw86XzmEyYT3qyJ/
   J2+y0qOEwbP6RoIf04mI3lYCwamZdwHvX3/o9CaNxKowLa+52lBBsMZBA
   pG9fK5BIpdIOoUbyh0C0HkSN4WFarZs6jhhJA/MRh0wsRFGi1vtuebHP3
   g==;
X-CSE-ConnectionGUID: Lem6LHwuTJ+l60HsNQ2/8w==
X-CSE-MsgGUID: 6S/UJk/gQtKVUTE1MBoGyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61035816"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400";
   d="scan'208";a="61035816"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2025 06:09:16 -0700
X-CSE-ConnectionGUID: SeOdXka9Q8yRdM297PtsgQ==
X-CSE-MsgGUID: WdQONycdTvqgPpp5BMByQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800";
   d="scan'208";a="201011381"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO fedora) ([10.245.244.100])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2025 06:09:12 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Thu, 25 Sep 2025 15:08:48 +0200
Message-ID: <20250925130849.12021-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925130849.12021-1-thomas.hellstrom@linux.intel.com>
References: <20250925130849.12021-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 9C66B45D62
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TGONE6KA6ZRIRYSIHD5DLVP7R3SKKJL4
X-Message-ID-Hash: TGONE6KA6ZRIRYSIHD5DLVP7R3SKKJL4
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TGONE6KA6ZRIRYSIHD5DLVP7R3SKKJL4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkIGEgZnVuY3Rpb24gdG8gdGhlIGRtYV9idWZfYXR0YWNoX29wcyB0byBpbmRpY2F0ZSB3aGV0
aGVyIHRoZQ0KY29ubmVjdGlvbiBpcyBhIHByaXZhdGUgaW50ZXJjb25uZWN0LiBJZiBzbyB0aGUg
ZnVuY3Rpb24gcmV0dXJucw0KdGhlIGFkZHJlc3MgdG8gYW4gaW50ZXJjb25uZWN0LWRlZmluZWQg
c3RydWN0dXJlIHRoYXQgY2FuIGJlDQp1c2VkIGZvciBmdXJ0aGVyIG5lZ290aWF0aW5nLg0KDQpB
bHNvIGFkZCBhIGZpZWxkIHRvIHRoZSBkbWFfYnVmX2F0dGFjaG1lbnQgdGhhdCBpbmRpY2F0ZXMg
d2hldGhlcg0KYSBwcml2YXRlIGludGVyY29ubmVjdCBpcyB1c2VkIGJ5IHRoZSBhdHRhY2htZW50
Lg0KDQpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBs
aW51eC5pbnRlbC5jb20+DQotLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCB8IDE1ICsrKysr
KysrKysrKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQpp
bmRleCBkNThlMzI5YWMwZTcuLmU3MTkxZWRiMjEyNSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KQEAgLTQ3NSw2ICs0
NzUsMTkgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyB7DQogCSAqIHBvaW50IHRvIHRoZSBu
ZXcgbG9jYXRpb24gb2YgdGhlIERNQS1idWYuDQogCSAqLw0KIAl2b2lkICgqbW92ZV9ub3RpZnkp
KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCk7DQorDQorCS8qKg0KKwkgKiBAc3Vw
cG9ydHNfaW50ZXJjb25uZWN0OiBbb3B0aW9uYWxdIC0gRG9lcyB0aGUgZHJpdmVyIHN1cHBvcnQg
YSBsb2NhbCBpbnRlcmNvbm5lY3Q/DQorCSAqDQorCSAqIERvZXMgdGhlIGltcG9ydGVyIHN1cHBv
cnQgYSBwcml2YXRlIGludGVyY29ubmVjdD8gVGhlIGludGVyY29ubmVjdCBpcw0KKwkgKiBpZGVu
dGlmaWVkIHVzaW5nIGEgdW5pcXVlIGFkZHJlc3MgZGVmaW5lZCBieSB0aGUgZXhwb3J0ZXIgYW5k
IGRlY2xhcmVkDQorCSAqIGluIGEgcHJvdG9jb2wgaGVhZGVyLiAoUkZDOiBTaG91bGQgdGhpcyBi
ZSBhIHN0cnVjdCBpbnN0ZWFkKS4NCisJICoNCisJICogUmV0dXJuOiBBIHBvaW50ZXIgdG8gdGhl
IGludGVyY29ubmVjdC1wcml2YXRlIGF0dGFjaF9vcHMgc3RydWN0dXJlIGlmIHN1cHBvcnRlZCwN
CisJICogJU5VTEwgb3RoZXJ3aXNlLg0KKwkgKi8NCisJY29uc3Qgdm9pZCAqKCpzdXBwb3J0c19p
bnRlcmNvbm5lY3QpKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCisJCQkJCSAg
ICAgY29uc3Qgdm9pZCAqaW50ZXJjb25uZWN0KTsNCiB9Ow0KIA0KIC8qKg0KQEAgLTQ4NCw2ICs0
OTcsNyBAQCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIHsNCiAgKiBAbm9kZTogbGlzdCBvZiBk
bWFfYnVmX2F0dGFjaG1lbnQsIHByb3RlY3RlZCBieSBkbWFfcmVzdiBsb2NrIG9mIHRoZSBkbWFi
dWYuDQogICogQHBlZXIycGVlcjogdHJ1ZSBpZiB0aGUgaW1wb3J0ZXIgY2FuIGhhbmRsZSBwZWVy
IHJlc291cmNlcyB3aXRob3V0IHBhZ2VzLg0KICAqIEBwcml2OiBleHBvcnRlciBzcGVjaWZpYyBh
dHRhY2htZW50IGRhdGEuDQorICogQGludGVyY29ubmVjdDogUHJpdmF0ZSBpbnRlcmNvbm5lY3Qg
dG8gdXNlIGlmIGFueSwgTlVMTCBvdGhlcndpc2UuDQogICogQGltcG9ydGVyX29wczogaW1wb3J0
ZXIgb3BlcmF0aW9ucyBmb3IgdGhpcyBhdHRhY2htZW50LCBpZiBwcm92aWRlZA0KICAqIGRtYV9i
dWZfbWFwL3VubWFwX2F0dGFjaG1lbnQoKSBtdXN0IGJlIGNhbGxlZCB3aXRoIHRoZSBkbWFfcmVz
diBsb2NrIGhlbGQuDQogICogQGltcG9ydGVyX3ByaXY6IGltcG9ydGVyIHNwZWNpZmljIGF0dGFj
aG1lbnQgZGF0YS4NCkBAIC01MDMsNiArNTE3LDcgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCB7DQogCXN0cnVjdCBsaXN0X2hlYWQgbm9kZTsNCiAJYm9vbCBwZWVyMnBlZXI7DQogCWNvbnN0
IHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgKmltcG9ydGVyX29wczsNCisJY29uc3Qgdm9pZCAq
aW50ZXJjb25uZWN0Ow0KIAl2b2lkICppbXBvcnRlcl9wcml2Ow0KIAl2b2lkICpwcml2Ow0KIH07
DQotLSANCjIuNTEuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
