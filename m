Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOcNJDn34GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9A640FD01
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77C04404F4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:50:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	by lists.linaro.org (Postfix) with ESMTPS id A1A2F3F7EC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 04:48:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=cs+D27KN;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of vivek.kasireddy@intel.com designates 198.175.65.12 as permitted sender) smtp.mailfrom=vivek.kasireddy@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761540519; x=1793076519;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lxFUsUvyr1966bGCJMZqZqmUE971d/cX9NW4srJNETE=;
  b=cs+D27KNy1BgCCWisIAGFt9fvR47rg6QQjbLmt67o08Pic9PWY6/acso
   qbtCA0oqNxGyPCV5XssVYUGxtKPllyWFvrotLMJr4G8XA67xEsNQkNv+v
   6jPbwS+Hj0/UF0fd6crWAXwOfAqDuv7Vv8ugb8uSxsAwp0/yuxN3MNcjI
   q0HtkhhJJWpc+u6PsutHiMukgzimCtdeYecet91BTyZIRukrydGcfxIL+
   QP+Ny+L9WCct0QGA4pcl5qJaajov5CiBUJj1WvFoProisdyqYb2m4FJ+n
   BfBd/O/AQDNAHjXBPQHzBc3RBfRbDbmIIH19nlkB6xkdOsokeC3dbkgAf
   g==;
X-CSE-ConnectionGUID: EYoGrFbzQQOTz/88ph5oCg==
X-CSE-MsgGUID: IykBMfhDReiEOmICKAhqlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75058936"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000";
   d="scan'208";a="75058936"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2025 21:48:37 -0700
X-CSE-ConnectionGUID: aRLkuwB+QhWyDXjLM6KugQ==
X-CSE-MsgGUID: Eu1wa7rlS/CvUy5lYRXnjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000";
   d="scan'208";a="188992982"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2025 21:48:37 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Sun, 26 Oct 2025 21:44:15 -0700
Message-ID: <20251027044712.1676175-4-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
References: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
X-Spamd-Bar: ------
X-MailFrom: vivek.kasireddy@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L4RMNF4YUJDCOXO2PIEONRJLIWNYZ46S
X-Message-ID-Hash: L4RMNF4YUJDCOXO2PIEONRJLIWNYZ46S
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:23 +0000
CC: Vivek Kasireddy <vivek.kasireddy@intel.com>, Jason Gunthorpe <jgg@nvidia.com>, Christian Koenig <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 3/8] dma-buf: Create and expose IOV interconnect to all exporters/importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L4RMNF4YUJDCOXO2PIEONRJLIWNYZ46S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	DATE_IN_PAST(1.00)[4114];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.983];
	FROM_NEQ_ENVFROM(0.00)[vivek.kasireddy@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,ffwll.ch:email,intel.com:mid,intel.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email]
X-Rspamd-Queue-Id: 6C9A640FD01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlIElPViBpbnRlcmNvbm5lY3QgaXMgYSB2aXJ0dWFsIGludGVyY29ubmVjdCBiZXR3ZWVuIGFu
IFNSSU9WDQpwaHlzaWNhbCBmdW5jdGlvbiAoUEYpIGFuZCBpdHMgdmlydHVhbCBmdW5jdGlvbnMg
KFZGcykuIEluIG9yZGVyDQpmb3IgbmVnb3RpYXRpb24gKG9yIG1hdGNoKSB0byBzdWNjZWVkLCB0
aGUgZXhwb3J0ZXIgaXMgZXhwZWN0ZWQNCnRvIGJlIGEgVkYgd2hpbGUgdGhlIGltcG9ydGVyIGlz
IGV4cGVjdGVkIHRvIGJlIHRoZSBQRi4NCg0KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQG52aWRp
YS5jb20+DQpDYzogQ2hyaXN0aWFuIEtvZW5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
Q2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogVGhvbWFzIEhl
bGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KQ2M6IFNpbW9uYSBW
ZXR0ZXIgPHNpbW9uYS52ZXR0ZXJAZmZ3bGwuY2g+DQpTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNp
cmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi1pbnRlcmNvbm5lY3QuYyB8IDMgKysrDQogaW5jbHVkZS9saW51eC9kbWEtYnVmLWlu
dGVyY29ubmVjdC5oICAgfCA3ICsrKysrKysNCiAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLWludGVyY29ubmVj
dC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtaW50ZXJjb25uZWN0LmMNCmluZGV4IDEyZGI3
N2U2YjlmMS4uNDkyZTRkM2ZlNGM4IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYtaW50ZXJjb25uZWN0LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLWludGVyY29u
bmVjdC5jDQpAQCAtMTU5LDMgKzE1OSw2IEBAIGJvb2wgZG1hX2J1Zl9tYXRjaF9pbnRlcmNvbm5l
Y3RzKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCiAJcmV0dXJuIGZhbHNlOw0K
IH0NCiBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX21hdGNoX2ludGVyY29ubmVjdHMsICJE
TUFfQlVGIik7DQorDQorQ1JFQVRFX0lOVEVSQ09OTkVDVChpb3YpDQorRVhQT1JUX1NZTUJPTF9O
U19HUEwoaW92X2ludGVyY29ubmVjdCwgIkRNQV9CVUYiKTsNCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L2RtYS1idWYtaW50ZXJjb25uZWN0LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYtaW50
ZXJjb25uZWN0LmgNCmluZGV4IGVmZTNjYTFjMzU0YS4uMzdkZWUxYTI2ZjI0IDEwMDY0NA0KLS0t
IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLWludGVyY29ubmVjdC5oDQorKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1idWYtaW50ZXJjb25uZWN0LmgNCkBAIC0yMCw2ICsyMCwxMyBAQA0KIA0KIHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQ7DQogDQorLyoqDQorICogVGhlIGlvdiBpbnRlcmNvbm5lY3Qg
aW5zdGFuY2Ugd291bGQgYmUgY3JlYXRlZCBhbmQgZXhwb3J0ZWQgb3V0IG9mDQorICogZG1hLWJ1
Zi1pbnRlcmNvbm5lY3QuYyBhcyBpdCBpcyBhIGdsb2JhbCBpbnRlcmNvbm5lY3QgdGhhdCBpcyBl
eHBlY3RlZA0KKyAqIHRvIGJlIHN1cHBvcnRlZCBieSBkaWZmZXJlbnQgZXhwb3J0ZXJzIGFuZCBp
bXBvcnRlcnMuDQorICovDQorZXh0ZXJuIGNvbnN0IHN0cnVjdCBkbWFfYnVmX2ludGVyY29ubmVj
dCAqaW92X2ludGVyY29ubmVjdDsNCisNCiAvKioNCiAgKiBzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNv
bm5lY3QgLSBob2xkcyBpbmZvIGFzc29jaWF0ZWQgd2l0aCBhbiBpbnRlcmNvbm5lY3QNCiAgKiBA
bmFtZTogbmFtZSBvZiB0aGUgaW50ZXJjb25uZWN0Lg0KLS0gDQoyLjUwLjENCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
