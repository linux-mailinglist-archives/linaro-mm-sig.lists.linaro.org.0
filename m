Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC4CBA300E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 10:47:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57C5B4475B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 08:47:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	by lists.linaro.org (Postfix) with ESMTPS id D984A447F1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Sep 2025 08:46:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=bf+a58Hj;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 192.198.163.12 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1758876410; x=1790412410;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=/4hbtl1eqvnkOXSA8wF9VF6xUQPhGgLbkuCs6lSSp4c=;
  b=bf+a58HjdKF5P+ddpHAt1N1tmpCV/VIsphSusnBRG79au8ju7dqN11Cy
   ZbTAJFacLA3ZqpnM6R5ltcGjRlrgoHVk2GWX8DlY8IRZtXq3rTwEG7Nt8
   TIrdBzLnW9w0xMpdAmO7DgQlhQSQ5toRxbyVCE69qiwEyw6W4vEfN7yXE
   h5cigW+i/aLOXfFb/9vDndjFkSBJHhmtioSPBK/j3ufNMCpHOYPnNEIg5
   5FtaBwjdPsiNBDjx1KYjZkP0JYW78royB5/hrXBe6Ae3wCt7LMARX8EUy
   EW5UDugHpuVTHIQOd/tdVma+YJB2FSX7LRY/PH/IeDS0wcu18NFZDBrF/
   Q==;
X-CSE-ConnectionGUID: WPRjfi+9SdOzGPrzmzExMA==
X-CSE-MsgGUID: 2VkJ2CqWSSWOCX5hJ+Gksg==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="65054062"
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800";
   d="scan'208";a="65054062"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Sep 2025 01:46:49 -0700
X-CSE-ConnectionGUID: 1X/25W6lT2uL0UQBXmGO1g==
X-CSE-MsgGUID: gu91cI4OT3WapgxNfjcPbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800";
   d="scan'208";a="182839724"
Received: from opintica-mobl1 (HELO fedora) ([10.245.244.247])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Sep 2025 01:46:47 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Fri, 26 Sep 2025 10:46:23 +0200
Message-ID: <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: D984A447F1
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26:c];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[192.198.163.12:from];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: G3WY3B3FFYRVKXPPYE7C6DEEWROMO753
X-Message-ID-Hash: G3WY3B3FFYRVKXPPYE7C6DEEWROMO753
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Jason Gunthorpe <jgg@nvidia.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G3WY3B3FFYRVKXPPYE7C6DEEWROMO753/>
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
aW51eC5pbnRlbC5jb20+DQotLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCB8IDUxICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQogMSBmaWxlIGNoYW5nZWQsIDUx
IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIv
aW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCmluZGV4IGQ1OGUzMjlhYzBlNy4uMjVkYmYxZmVhMDlh
IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCisrKyBiL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oDQpAQCAtNDQyLDYgKzQ0MiwzOSBAQCBzdHJ1Y3QgZG1hX2J1ZiB7DQogI2Vu
ZGlmDQogfTsNCiANCisvKiBSRkM6IFNlcGFyYXRlIGhlYWRlciBmb3IgdGhlIGludGVyY29ubmVj
dCBkZWZpbmVzPyAqLw0KKw0KKy8qKg0KKyAqIHN0cnVjdCBkbWFfYnVmX2ludGVyY29ubmVjdCAt
IFByaXZhdGUgaW50ZXJjb25uZWN0DQorICogQG5hbWU6IFRoZSBuYW1lIG9mIHRoZSBpbnRlcmNv
bm5lY3QNCisgKi8NCitzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3Qgew0KKwljb25zdCBjaGFy
ICpuYW1lOw0KK307DQorDQorLyoqDQorICogc3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0X2F0
dGFjaF9vcHMgLSBJbnRlcmNvbm5lY3QgYXR0YWNoIG9wcyBiYXNlLWNsYXNzDQorICoNCisgKiBE
ZWNsYXJlZCBmb3IgdHlwZS1zYWZldHkuIEludGVyY29ubmVjdCBpbXBsZW1lbnRhdGlvbnMgc2hv
dWxkIHN1YmNsYXNzIHRvDQorICogaW1wbGVtZW50IG5lZ290aWF0aW9uLXNwZWNpZmljIG9wcy4N
CisgKi8NCitzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3RfYXR0YWNoX29wcyB7DQorfTsNCisN
CisvKioNCisgKiBzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3RfYXR0YWNoIC0gSW50ZXJjb25u
ZWN0IHN0YXRlDQorICogQGludGVyY29ubmVjdDogVGhlIHN0cnVjdCBkbWFfYnVmX2ludGVyY29u
bmVjdCBpZGVudGlmeWluZyB0aGUgaW50ZXJjb25uZWN0DQorICoNCisgKiBJbnRlcmNvbm5lY3Qg
aW1wbGVtZW50YXRpb25zIHN1YmNsYXNzIGFzIG5lZWRlZCBmb3IgYXR0YWNobWVudCBzdGF0ZQ0K
KyAqIHRoYXQgY2FuJ3QgYmUgc3RvcmVkIGVsc2V3aGVyZS4gSXQgY291bGQsIGZvciBleGFtcGxl
LCBob2xkIGEgcG9pbnRlcg0KKyAqIHRvIGEgcmVwbGFjZW1lbnQgb2YgdGhlIHNnLWxpc3QgYWZ0
ZXIgdGhlIGF0dGFjaG1lbnQgaGFzIGJlZW4gbWFwcGVkLg0KKyAqIElmIG5vIGFkZGl0aW9uYWwg
c3RhdGUgaXMgbmVlZGVkLCBhbiBleHBvcnRlciBjb3VsZCBkZWZpbmUgYSBzaW5nbGUNCisgKiBz
dGF0aWMgaW5zdGFuY2Ugb2YgdGhpcyBzdHJ1Y3QuDQorICovDQorc3RydWN0IGRtYV9idWZfaW50
ZXJjb25uZWN0X2F0dGFjaCB7DQorCWNvbnN0IHN0cnVjdCBkbWFfYnVmX2ludGVyY29ubmVjdCAq
aW50ZXJjb25uZWN0Ow0KK307DQorDQogLyoqDQogICogc3RydWN0IGRtYV9idWZfYXR0YWNoX29w
cyAtIGltcG9ydGVyIG9wZXJhdGlvbnMgZm9yIGFuIGF0dGFjaG1lbnQNCiAgKg0KQEAgLTQ3NSw2
ICs1MDgsMjEgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyB7DQogCSAqIHBvaW50IHRvIHRo
ZSBuZXcgbG9jYXRpb24gb2YgdGhlIERNQS1idWYuDQogCSAqLw0KIAl2b2lkICgqbW92ZV9ub3Rp
ZnkpKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCk7DQorDQorCS8qKg0KKwkgKiBA
c3VwcG9ydHNfaW50ZXJjb25uZWN0OiBbb3B0aW9uYWxdIC0gRG9lcyB0aGUgZHJpdmVyIHN1cHBv
cnQgYSBsb2NhbCBpbnRlcmNvbm5lY3Q/DQorCSAqDQorCSAqIERvZXMgdGhlIGltcG9ydGVyIHN1
cHBvcnQgYSBwcml2YXRlIGludGVyY29ubmVjdD8gVGhlIGludGVyY29ubmVjdCBpcw0KKwkgKiBp
ZGVudGlmaWVkIHVzaW5nIGEgdW5pcXVlIGFkZHJlc3MgZGVmaW5lZCBpbnN0YW50aWF0ZWQgZWl0
aGVyIGJ5IHRoZSBkcml2ZXINCisJICogaWYgdGhlIGludGVyY29ubmVjdCBpcyBkcml2ZXItcHJp
dmF0ZSBvciBnbG9iYWxseQ0KKwkgKiAoUkZDIGFkZGVkIHRvIHRoZSBkbWEtYnVmLWludGVyY29u
bmVjdC5jIGZpbGUpIGlmIGNyb3NzLWRyaXZlci4NCisJICoNCisJICogUmV0dXJuOiBBIHBvaW50
ZXIgdG8gdGhlIGludGVyY29ubmVjdC1wcml2YXRlIGF0dGFjaF9vcHMgc3RydWN0dXJlIGlmIHN1
cHBvcnRlZCwNCisJICogJU5VTEwgb3RoZXJ3aXNlLg0KKwkgKi8NCisJY29uc3Qgc3RydWN0IGRt
YV9idWZfaW50ZXJjb25uZWN0X2F0dGFjaF9vcHMgKg0KKwkoKnN1cHBvcnRzX2ludGVyY29ubmVj
dCkoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KKwkJCQkgY29uc3Qgc3RydWN0
IGRtYV9idWZfaW50ZXJjb25uZWN0ICppbnRlcmNvbm5lY3QpOw0KIH07DQogDQogLyoqDQpAQCAt
NDg0LDYgKzUzMiw4IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgew0KICAqIEBub2RlOiBs
aXN0IG9mIGRtYV9idWZfYXR0YWNobWVudCwgcHJvdGVjdGVkIGJ5IGRtYV9yZXN2IGxvY2sgb2Yg
dGhlIGRtYWJ1Zi4NCiAgKiBAcGVlcjJwZWVyOiB0cnVlIGlmIHRoZSBpbXBvcnRlciBjYW4gaGFu
ZGxlIHBlZXIgcmVzb3VyY2VzIHdpdGhvdXQgcGFnZXMuDQogICogQHByaXY6IGV4cG9ydGVyIHNw
ZWNpZmljIGF0dGFjaG1lbnQgZGF0YS4NCisgKiBAaW50ZXJjb25uZWN0X2F0dGFjaDogUHJpdmF0
ZSBpbnRlcmNvbm5lY3Qgc3RhdGUgZm9yIHRoZSBjb25uZWN0aW9uIGlmIHVzZWQsDQorICogTlVM
TCBvdGhlcndpc2UuDQogICogQGltcG9ydGVyX29wczogaW1wb3J0ZXIgb3BlcmF0aW9ucyBmb3Ig
dGhpcyBhdHRhY2htZW50LCBpZiBwcm92aWRlZA0KICAqIGRtYV9idWZfbWFwL3VubWFwX2F0dGFj
aG1lbnQoKSBtdXN0IGJlIGNhbGxlZCB3aXRoIHRoZSBkbWFfcmVzdiBsb2NrIGhlbGQuDQogICog
QGltcG9ydGVyX3ByaXY6IGltcG9ydGVyIHNwZWNpZmljIGF0dGFjaG1lbnQgZGF0YS4NCkBAIC01
MDMsNiArNTUzLDcgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCB7DQogCXN0cnVjdCBsaXN0
X2hlYWQgbm9kZTsNCiAJYm9vbCBwZWVyMnBlZXI7DQogCWNvbnN0IHN0cnVjdCBkbWFfYnVmX2F0
dGFjaF9vcHMgKmltcG9ydGVyX29wczsNCisJc3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0X2F0
dGFjaCAqaW50ZXJjb25uZWN0X2F0dGFjaDsNCiAJdm9pZCAqaW1wb3J0ZXJfcHJpdjsNCiAJdm9p
ZCAqcHJpdjsNCiB9Ow0KLS0gDQoyLjUxLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
