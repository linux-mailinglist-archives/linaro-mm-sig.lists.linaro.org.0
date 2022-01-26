Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EE24B648B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:40:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E635D3EE2C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:40:10 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by lists.linaro.org (Postfix) with ESMTPS id 4F2263EE15
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jan 2022 20:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643229404; x=1674765404;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=IrlXjlrSWxXOy2UwGYcFGyJqa/q0NhSjnDXBLVc54aM=;
  b=nYXdENojTnIfFWSy/UWY/JRcZlxAQMtYBCPfOTM0N2YPZpAfZJQp/uAv
   6zycUXA9vMPxWcXZ8duZfzAN/Ew/LI0sbL/eLGowFjaB/SU+kBDZsJjB1
   s6eMVD+p/g9T8Nr3XyV6PCnOecRHTXXmzMgr32VqxVhiyqBvVUHYGpn03
   HETjZQtvGcpoid+z78HkaAYeR05mYO2ncpY9gegSFq4zb/HB4lPvKUR7g
   RSSan0ZC/qPQp65dbYdC5KFt451TrqElKJDk+INuUbO0Bp05POgCH3C+3
   typ6mkIdHzx9yN8R6bfG5qATqKGPPTb7kbsgozUkMSWT+v6Aeu9lCD6kN
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245480774"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600";
   d="scan'208";a="245480774"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2022 12:36:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600";
   d="scan'208";a="581221519"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2022 12:36:23 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 12:36:52 -0800
Message-Id: <20220126203702.1784589-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.0
In-Reply-To: <20220126203702.1784589-1-lucas.demarchi@intel.com>
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
X-MailFrom: lucas.demarchi@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FSOUFGYG7TNLWSM3VU7GX2RCX2JL7EVO
X-Message-ID-Hash: FSOUFGYG7TNLWSM3VU7GX2RCX2JL7EVO
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:39:03 +0000
CC: dri-devel@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 09/19] dma-buf-map: Add wrapper over memset
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FSOUFGYG7TNLWSM3VU7GX2RCX2JL7EVO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SnVzdCBsaWtlIG1lbWNweV90b2lvKCksIHRoZXJlIGlzIGFsc28gbmVlZCB0byB3cml0ZSBhIGRp
cmVjdCB2YWx1ZSB0byBhDQptZW1vcnkgYmxvY2suIEFkZCBkbWFfYnVmX21hcF9tZW1zZXQoKSB0
byBhYnN0cmFjdCBtZW1zZXQoKSB2cyBtZW1zZXRfaW8oKQ0KDQpDYzogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBs
aW5hcm8ub3JnPg0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4NCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQpDYzog
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQotLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1i
dWYtbWFwLmggfCAxNyArKysrKysrKysrKysrKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNl
cnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYtbWFwLmggYi9p
bmNsdWRlL2xpbnV4L2RtYS1idWYtbWFwLmgNCmluZGV4IDM1MTRhODU5ZjYyOC4uYzlmYjA0MjY0
Y2QwIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oDQorKysgYi9pbmNs
dWRlL2xpbnV4L2RtYS1idWYtbWFwLmgNCkBAIC0zMTcsNiArMzE3LDIzIEBAIHN0YXRpYyBpbmxp
bmUgdm9pZCBkbWFfYnVmX21hcF9tZW1jcHlfdG8oc3RydWN0IGRtYV9idWZfbWFwICpkc3QsIGNv
bnN0IHZvaWQgKnNyDQogCQltZW1jcHkoZHN0LT52YWRkciwgc3JjLCBsZW4pOw0KIH0NCiANCisv
KioNCisgKiBkbWFfYnVmX21hcF9tZW1zZXQgLSBNZW1zZXQgaW50byBkbWEtYnVmIG1hcHBpbmcN
CisgKiBAZHN0OglUaGUgZG1hLWJ1ZiBtYXBwaW5nIHN0cnVjdHVyZQ0KKyAqIEB2YWx1ZToJVGhl
IHZhbHVlIHRvIHNldA0KKyAqIEBsZW46CVRoZSBudW1iZXIgb2YgYnl0ZXMgdG8gc2V0IGluIGRz
dA0KKyAqDQorICogU2V0IHZhbHVlIGluIGRtYS1idWYgbWFwcGluZy4gRGVwZW5kaW5nIG9uIHRo
ZSBidWZmZXIncyBsb2NhdGlvbiwgdGhlIGhlbHBlcg0KKyAqIHBpY2tzIHRoZSBjb3JyZWN0IG1l
dGhvZCBvZiBhY2Nlc3NpbmcgdGhlIG1lbW9yeS4NCisgKi8NCitzdGF0aWMgaW5saW5lIHZvaWQg
ZG1hX2J1Zl9tYXBfbWVtc2V0KHN0cnVjdCBkbWFfYnVmX21hcCAqZHN0LCBpbnQgdmFsdWUsIHNp
emVfdCBsZW4pDQorew0KKwlpZiAoZHN0LT5pc19pb21lbSkNCisJCW1lbXNldF9pbyhkc3QtPnZh
ZGRyX2lvbWVtLCB2YWx1ZSwgbGVuKTsNCisJZWxzZQ0KKwkJbWVtc2V0KGRzdC0+dmFkZHIsIHZh
bHVlLCBsZW4pOw0KK30NCisNCiAvKioNCiAgKiBkbWFfYnVmX21hcF9pbmNyIC0gSW5jcmVtZW50
cyB0aGUgYWRkcmVzcyBzdG9yZWQgaW4gYSBkbWEtYnVmIG1hcHBpbmcNCiAgKiBAbWFwOglUaGUg
ZG1hLWJ1ZiBtYXBwaW5nIHN0cnVjdHVyZQ0KLS0gDQoyLjM1LjANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
