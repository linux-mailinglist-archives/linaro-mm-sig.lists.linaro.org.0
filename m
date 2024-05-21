Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1505D8CA8B1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 May 2024 09:17:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D0A2D443A4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 May 2024 07:17:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	by lists.linaro.org (Postfix) with ESMTPS id F127B3F39E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 May 2024 07:17:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=RJ9rGrda;
	spf=none (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com has no SPF policy when checking 192.198.163.13) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1716275846; x=1747811846;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PLYRnoYqgg1L6orz8LmegrmBhEJAKmkEgady1KTsHxc=;
  b=RJ9rGrdambxrbWFSAVg8epwbAf5XPd3iphMKRt0GEE9M4ZcMgga9/51Y
   iEaLfoFvzQQOa7nXS3CwaaFiTGKeTW6jp7HOWIV28pDH8e0wMEwli9mFN
   Tk40MD3WCkOp9fzhQVCFf0QO9+K6Z49RVflQIqCBZ9tXv3aKG4chU+u/L
   16VHYKa4a+tUSNtx6sVmY6NKGHT/RQ9w9K9ljI1jyJZyz0T9/YUjtPsSP
   lJTC43Ejx+ZeiLojMfrEnHmK/6384DQiRAgdffuWJdHE2mfZr9H667g2C
   Ps1JBLVqjUk5ErFiubeHTBuqYjNlcUVBsdvTdtZhdkwPYyvxpR0SnLhU3
   Q==;
X-CSE-ConnectionGUID: RoePUNIcRMy8KBKV+3qd+Q==
X-CSE-MsgGUID: vkm+t6vlRp64t5BNnVJzEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="15393479"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000";
   d="scan'208";a="15393479"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2024 00:17:24 -0700
X-CSE-ConnectionGUID: CcyjFvGgQTuvTWYbgI77cg==
X-CSE-MsgGUID: tIKzPYFfS4WPK/amzZ6b8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000";
   d="scan'208";a="37336772"
Received: from unknown (HELO fedora..) ([10.245.246.159])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2024 00:17:20 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Tue, 21 May 2024 09:16:30 +0200
Message-ID: <20240521071639.77614-13-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240521071639.77614-1-thomas.hellstrom@linux.intel.com>
References: <20240521071639.77614-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F127B3F39E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[intel.com:+]
Message-ID-Hash: G5H667IY7MQF6V64D7QHHM243SAKISXT
X-Message-ID-Hash: G5H667IY7MQF6V64D7QHHM243SAKISXT
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>, Matthew Brost <matthew.brost@intel.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH v3 12/21] dma-buf/dma-resv: Introduce dma_resv_trylock_ctx()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G5H667IY7MQF6V64D7QHHM243SAKISXT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIHRoZSBkcm1fZXhlY190cnlsb2NrKCkgZnVuY3Rpb25hbGl0eSwgdGhlcmUgaXMgYSBuZWVk
IHRvIGJlIGFibGUNCnRvIHRyeWxvY2sgYSBkbWEtcmVzdiBvYmplY3QgYXMgcGFydCBvZiBhIGRy
bV9leGVjIHRyYW5zYWN0aW9uLg0KVGhlcmVmb3JlIGV4cG9zZSBhIHZhcmlhbnQgb2YgZG1hX3Jl
c3ZfdHJ5bG9jayB0aGF0IGFsc28gdGFrZXMNCmEgc3RydWN0IHd3X2FjcXVpcmVfY3R4IHBhcmFt
ZXRlci4NCg0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
CkNjOiBTb21hbGFwdXJhbSBBbWFyYW5hdGggPEFtYXJhbmF0aC5Tb21hbGFwdXJhbUBhbWQuY29t
Pg0KQ2M6IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPg0KQ2M6IDxkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPg0KQ2M6IDxsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmc+DQpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBsaW51eC5pbnRlbC5jb20+DQotLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggfCAy
MyArKysrKysrKysrKysrKysrKysrKysrLQ0KIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2
LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCmluZGV4IDhkMGUzNGRhZDQ0Ni4uNjhkYWU4
ZjJhMjJjIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oDQorKysgYi9pbmNs
dWRlL2xpbnV4L2RtYS1yZXN2LmgNCkBAIC00MDUsNiArNDA1LDI3IEBAIHN0YXRpYyBpbmxpbmUg
aW50IGRtYV9yZXN2X2xvY2tfc2xvd19pbnRlcnJ1cHRpYmxlKHN0cnVjdCBkbWFfcmVzdiAqb2Jq
LA0KIAlyZXR1cm4gd3dfbXV0ZXhfbG9ja19zbG93X2ludGVycnVwdGlibGUoJm9iai0+bG9jaywg
Y3R4KTsNCiB9DQogDQorLyoqDQorICogZG1hX3Jlc3ZfdHJ5bG9ja19jdHggLSB0cnlsb2NrIHRo
ZSByZXNlcnZhdGlvbiBvYmplY3QNCisgKiBAb2JqOiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0DQor
ICogQGN0eDogVGhlIHd3IGFjcXVpcmUgY29udGV4dCBvciBOVUxMLg0KKyAqDQorICogVHJpZXMg
dG8gbG9jayB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0IGZvciBleGNsdXNpdmUgYWNjZXNzIGFuZCBt
b2RpZmljYXRpb24uDQorICogTm90ZSwgdGhhdCB0aGUgbG9jayBpcyBvbmx5IGFnYWluc3Qgb3Ro
ZXIgd3JpdGVycywgcmVhZGVycyB3aWxsIHJ1bg0KKyAqIGNvbmN1cnJlbnRseSB3aXRoIGEgd3Jp
dGVyIHVuZGVyIFJDVS4gVGhlIHNlcWxvY2sgaXMgdXNlZCB0byBub3RpZnkgcmVhZGVycw0KKyAq
IGlmIHRoZXkgb3ZlcmxhcCB3aXRoIGEgd3JpdGVyLiBUaGUgY29udGV4dCBwYXJhbWV0ZXIgZW5z
dXJlcyB0aGF0IG90aGVyDQorICogd3cgdHJhbnNhY3Rpb25zIGNhbiBwZXJmb3JtIGRlYWRsb2Nr
IGJhY2tvZmYgaWYgbmVjZXNzYXJ5LCBhbmQgdGhhdA0KKyAqIHN1YnNlcXVlbnQgYXR0ZW1wdHMg
dG8gZG1hX3Jlc3ZfbG9jaygpIEBvYmogZm9yIEBjdHggd2lsbCByZXR1cm4NCisgKiAtRUFMUkVB
RFkuDQorICoNCisgKiBSZXR1cm46IHRydWUgaWYgdGhlIGxvY2sgd2FzIGFjcXVpcmVkLCBmYWxz
ZSBvdGhlcndpc2UuDQorICovDQorc3RhdGljIGlubGluZSBib29sIF9fbXVzdF9jaGVjaw0KK2Rt
YV9yZXN2X3RyeWxvY2tfY3R4KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3Qgd3dfYWNxdWly
ZV9jdHggKmN0eCkNCit7DQorCXJldHVybiB3d19tdXRleF90cnlsb2NrKCZvYmotPmxvY2ssIGN0
eCk7DQorfQ0KKw0KIC8qKg0KICAqIGRtYV9yZXN2X3RyeWxvY2sgLSB0cnlsb2NrIHRoZSByZXNl
cnZhdGlvbiBvYmplY3QNCiAgKiBAb2JqOiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0DQpAQCAtNDIx
LDcgKzQ0Miw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IGRtYV9yZXN2X2xvY2tfc2xvd19pbnRlcnJ1
cHRpYmxlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLA0KICAqLw0KIHN0YXRpYyBpbmxpbmUgYm9vbCBf
X211c3RfY2hlY2sgZG1hX3Jlc3ZfdHJ5bG9jayhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikNCiB7DQot
CXJldHVybiB3d19tdXRleF90cnlsb2NrKCZvYmotPmxvY2ssIE5VTEwpOw0KKwlyZXR1cm4gZG1h
X3Jlc3ZfdHJ5bG9ja19jdHgob2JqLCBOVUxMKTsNCiB9DQogDQogLyoqDQotLSANCjIuNDQuMA0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
