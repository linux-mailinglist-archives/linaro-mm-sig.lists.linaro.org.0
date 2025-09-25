Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 52046B9F6E1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 15:09:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6D9D45D6A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 13:09:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	by lists.linaro.org (Postfix) with ESMTPS id 18EEF43B90
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Sep 2025 13:09:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=O6mvTaAn;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 198.175.65.21 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1758805754; x=1790341754;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=GsKHdglgRH+vt2LpbLLhq32Pp1RworSWPVGYRz1tIHc=;
  b=O6mvTaAnWVtvqINfgwHfPHBPKKQUa5SmaPYELthoOjaZ+cBWLBEeF3tq
   phTVtIYANu34X4qAb7GuFOEQKwMyfFuNhzNpGLlj3JVVWrri44rtd057s
   m8cIf1Yx0Ek6tkZ6jkgL5k2t/euEdmUWjmCcu80bW1vrEKOC2ywlta6Cn
   Exq/yep3VbmjVfUJ6fD7lkb+yzOUW4jKKrcQioL42OqTWN04C0TZUx1TZ
   b1wzX6aw3hBwegMgh+TmwuNpWY9zeyFpTo5KaFz5X9PIPhfsATW12KLKn
   i3EPlyd7hBrJzhA67T3wOeZwB7yWxD0j03G9rw0E7u5UnkQIV2B+9tGwc
   A==;
X-CSE-ConnectionGUID: rQZ50FSmS9CfhRNflgVL3w==
X-CSE-MsgGUID: eosAQNOyTK21S+nqAuUDfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61035808"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400";
   d="scan'208";a="61035808"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2025 06:09:13 -0700
X-CSE-ConnectionGUID: GCE5j6CSQCiyjIxpHj4hMg==
X-CSE-MsgGUID: 7A+rRfQJSPOeUNfL5Z913Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800";
   d="scan'208";a="201011361"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO fedora) ([10.245.244.100])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2025 06:09:09 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Thu, 25 Sep 2025 15:08:47 +0200
Message-ID: <20250925130849.12021-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: 18EEF43B90
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
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
Message-ID-Hash: OLSXXRFH5VT6M5D6QRNZROMRVLZJK4ZX
X-Message-ID-Hash: OLSXXRFH5VT6M5D6QRNZROMRVLZJK4ZX
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 0/2] dma-buf private interconnect POC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OLSXXRFH5VT6M5D6QRNZROMRVLZJK4ZX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VHdvIHBhdGNoZXMgdG8gaW1wbGVtZW50IGEgZ2VuZXJpYyBmcmFtZXdvcmsgZm9yIGRtYS1idWYg
dG8gc3VwcG9ydA0KbG9jYWwgcHJpdmF0ZSBpbnRlcmNvbm5lY3RzLg0KVGhlIGludGVyY29ubmVj
dCBzdXBwb3J0IGlzIG5lZ290aWF0ZWQgYXMgcGFydCBvZiBhbiBhdHRhY2htZW50IGFuZCBpcw0K
bm90IGEgcHJvcGVydHkgb2YgdGhlIGRtYS1idWYgaXRzZWxmLiBKdXN0IGxpa2UgcGNpZSBwMnAg
c3VwcG9ydC4NCg0KVGhlIGZpcnN0IHBhdGNoIGFkZHMgbWVtYmVycyB0byB0aGUgZG1hX2J1Zl9h
dHRhY2hfb3BzIGFuZCB0byB0aGUNCmRtYV9idWZfYXR0YWNobWVudCBzdHJ1Y3R1cmUuIFRoZXNl
IGFyZSBuZWVkZWQgZm9yIGdlbmVyaWMgY2hlY2sgb2YNCmludGVyY29ubmVjdCBzdXBwb3J0LCB0
eXBpY2FsbHkgd2hlbiBhbiBpbnRlcmNvbm5lY3QgaXMgc2hhcmVkIGJldHdlZW4NCmRyaXZlcnMu
IEZvciB0cnVseSBkcml2ZXItcHJpdmF0ZSBpbnRlcmNvbm5lY3RzIHRoZXkgYXJlIG5vdA0Kc3Ry
aWN0bHkgbmVlZGVkLCBidXQgc3RpbGwgY291bGQgYmUgY29udmVuaWVudC4NCg0KVGhlIHNlY29u
ZCBwYXRjaCBpbXBsZW1lbnRzIGFuIGludGVyY29ubmVjdCBuZWdvdGlhdGlvbiBmb3IgeGUsDQp3
aXRob3V0IGFjdHVhbGx5IGNoYW5naW5nIHRoZSBwcm90b2NvbCBpdHNlbGYgZnJvbSBwY2llX3Ay
cC4NCkp1c3QgYXMgYW4gZXhhbXBsZS4NCg0KVGhvbWFzIEhlbGxzdHLDtm0gKDIpOg0KICBkbWEt
YnVmOiBBZGQgc3VwcG9ydCBmb3IgcHJpdmF0ZSBpbnRlcmNvbm5lY3RzDQogIGRybS94ZS9kbWEt
YnVmOiBBZGQgZ2VuZXJpYyBpbnRlcmNvbm5lY3Qgc3VwcG9ydCBmcmFtZXdvcmsNCg0KIGRyaXZl
cnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmMgfCAxMiArKystLS0NCiBkcml2ZXJzL2dw
dS9kcm0veGUveGVfZG1hX2J1Zi5jICAgICAgIHwgNTQgKysrKysrKysrKysrKysrKysrKysrKyst
LS0tDQogZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuaCAgICAgICB8ICAxIC0NCiBkcml2
ZXJzL2dwdS9kcm0veGUveGVfaW50ZXJjb25uZWN0LmggIHwgMjIgKysrKysrKysrKysNCiBpbmNs
dWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAgICAgIHwgMTUgKysrKysrKysNCiA1IGZpbGVz
IGNoYW5nZWQsIDkwIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0veGUveGVfaW50ZXJjb25uZWN0LmgNCg0KLS0gDQoyLjUx
LjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
