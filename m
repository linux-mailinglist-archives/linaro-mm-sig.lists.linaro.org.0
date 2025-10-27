Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEJiGUf34GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C73E40FD17
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44857404E5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:50:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	by lists.linaro.org (Postfix) with ESMTPS id 207773F7F0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 04:48:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=EwiEDXpY;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of vivek.kasireddy@intel.com designates 198.175.65.12 as permitted sender) smtp.mailfrom=vivek.kasireddy@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761540519; x=1793076519;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=CvW8mMopgiskI6nzqkjC/nTU7/cwciLyHgd8H3wgFT4=;
  b=EwiEDXpYh/a4x7LDG1zSGbzRI1WUQ/OXuMVXitw+gcsNbM4ysts6C4Ap
   /MQNDKfKxVChCj3syx+r3tFtw5ajg0wTxgEbWtwtqUNqW1FIBQpRMH9Ug
   TJ0D/UrI9QuPu6OX9cAuNjiQkiamLte2SHkCxOagsfyfUVi5KLEncHXIg
   NNw8Rsenuu9WX9Eg2hkqkrMQkRGwwhrhNlKbG4bas3JjHpBg2dK/Ngfut
   kGqIt4vE2zFs+UnO0vFnekWpXzLE5KpMh+GPF9taHxEqqsyu3hZJoVwu1
   3KPcPUX5gp6T4c2HmnlWJLFRxOFhuQK7QyF8+izVInGGxiPI8GhHGDHKF
   g==;
X-CSE-ConnectionGUID: hSpKRiqXRqWLaydRp13KyA==
X-CSE-MsgGUID: nHt/4rXSRI+uSDiLwf5tag==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75058939"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000";
   d="scan'208";a="75058939"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2025 21:48:37 -0700
X-CSE-ConnectionGUID: dfCdQDeUSoSv6/ji/OIq3Q==
X-CSE-MsgGUID: pIZwa8pPTX+bPw3NeLngRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000";
   d="scan'208";a="188992989"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2025 21:48:37 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Sun, 26 Oct 2025 21:44:17 -0700
Message-ID: <20251027044712.1676175-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
References: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
X-Spamd-Bar: ------
X-MailFrom: vivek.kasireddy@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 34C5MKZP7IHWVDSJK7U7JCURSRGZ2LN5
X-Message-ID-Hash: 34C5MKZP7IHWVDSJK7U7JCURSRGZ2LN5
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:24 +0000
CC: Vivek Kasireddy <vivek.kasireddy@intel.com>, Jason Gunthorpe <jgg@nvidia.com>, Christian Koenig <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 5/8] drm/xe/dma_buf: Add support for IOV interconnect
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/34C5MKZP7IHWVDSJK7U7JCURSRGZ2LN5/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,ffwll.ch:email,intel.com:mid,intel.com:email,linaro.org:email,nvidia.com:email,amd.com:email]
X-Rspamd-Queue-Id: 3C73E40FD17
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

UHJvdmlkZSBhIGNhbGxiYWNrIGZvciBzdXBwb3J0c19pbnRlcmNvbm5lY3RzKCkgdG8gaW5kaWNh
dGUgdG8NCnRoZSBkbWEtYnVmIGNvcmUgYW5kIHRvIHRoZSBleHBvcnRlciB0aGF0IFhlIHN1cHBv
cnRzIGludGVyY29ubmVjdHMuDQpOb3RlIHRoYXQgWGUgd291bGQgc3VwcG9ydCBJT1YgaW50ZXJj
b25uZWN0IG9ubHkgaWYgdGhlIGJ1ZmZlcg0KaXMgbG9jYXRlZCBpbiBWUkFNIHJlZ2lvbi4NCg0K
Q2M6IEphc29uIEd1bnRob3JwZSA8amdnQG52aWRpYS5jb20+DQpDYzogQ2hyaXN0aWFuIEtvZW5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vt
d2FsQGxpbmFyby5vcmc+DQpDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21A
bGludXguaW50ZWwuY29tPg0KQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYS52ZXR0ZXJAZmZ3bGwu
Y2g+DQpTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRl
bC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jIHwgMTcgKysrKysr
KysrKysrKysrKy0NCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYyBiL2Ry
aXZlcnMvZ3B1L2RybS94ZS94ZV9kbWFfYnVmLmMNCmluZGV4IGE3ZDY3NzI1YzNlZS4uNGExYWE0
N2VmYmM2IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYw0KKysr
IGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYw0KQEAgLTEzLDYgKzEzLDcgQEANCiAj
aW5jbHVkZSA8ZHJtL2RybV9wcmltZS5oPg0KICNpbmNsdWRlIDxkcm0vdHRtL3R0bV90dC5oPg0K
IA0KKyNpbmNsdWRlICJyZWdzL3hlX2JhcnMuaCINCiAjaW5jbHVkZSAidGVzdHMveGVfdGVzdC5o
Ig0KICNpbmNsdWRlICJ4ZV9iby5oIg0KICNpbmNsdWRlICJ4ZV9kZXZpY2UuaCINCkBAIC0yNzQs
OSArMjc1LDIzIEBAIHN0YXRpYyB2b2lkIHhlX2RtYV9idWZfbW92ZV9ub3RpZnkoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQ0KIAlYRV9XQVJOX09OKHhlX2JvX2V2aWN0KGJvLCBl
eGVjKSk7DQogfQ0KIA0KK3N0YXRpYyBib29sDQoreGVfZG1hX2J1Zl9zdXBwb3J0c19pbnRlcmNv
bm5lY3RzKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCisJCQkJICBjb25zdCBz
dHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3RfbWF0Y2ggKmV4cCwNCisJCQkJICB1bnNpZ25lZCBp
bnQgZXhwX2ljcykNCit7DQorCWNvbnN0IHN0cnVjdCBkbWFfYnVmX2ludGVyY29ubmVjdF9tYXRj
aCBzdXBwb3J0c19pY3NbXSA9IHsNCisJCU1BVENIX0lOVEVSQ09OTkVDVChpb3ZfaW50ZXJjb25u
ZWN0LCBhdHRhY2gtPmRldiwgTE1FTV9CQVIpLA0KKwl9Ow0KKw0KKwlyZXR1cm4gZG1hX2J1Zl9t
YXRjaF9pbnRlcmNvbm5lY3RzKGF0dGFjaCwgZXhwLCBleHBfaWNzLCBzdXBwb3J0c19pY3MsDQor
CQkJCQkgICBBUlJBWV9TSVpFKHN1cHBvcnRzX2ljcykpOw0KK30NCisNCiBzdGF0aWMgY29uc3Qg
c3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyB4ZV9kbWFfYnVmX2F0dGFjaF9vcHMgPSB7DQogCS5h
bGxvd19wZWVyMnBlZXIgPSB0cnVlLA0KLQkubW92ZV9ub3RpZnkgPSB4ZV9kbWFfYnVmX21vdmVf
bm90aWZ5DQorCS5tb3ZlX25vdGlmeSA9IHhlX2RtYV9idWZfbW92ZV9ub3RpZnksDQorCS5zdXBw
b3J0c19pbnRlcmNvbm5lY3RzID0geGVfZG1hX2J1Zl9zdXBwb3J0c19pbnRlcmNvbm5lY3RzLA0K
IH07DQogDQogI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9YRV9LVU5JVF9URVNUKQ0KLS0gDQoy
LjUwLjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
