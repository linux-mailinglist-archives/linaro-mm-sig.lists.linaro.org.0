Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FF0C739DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 12:05:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EB903F811
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 11:05:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	by lists.linaro.org (Postfix) with ESMTPS id 9B0673F69B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 11:04:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Qx2jndeU;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 192.198.163.13 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763636684; x=1795172684;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=x0BJhxyGfR1XqEF23p9JtlRqYIN+PgNt9iKj9D425XA=;
  b=Qx2jndeU4CcPI0iwNHCvXDgRLaqHnxLHSUu93iRUPFwOjFL+q0+o+Ixd
   ZDs0UrBho1F+DM58EKMeVVKPOgN486m5O/+Nt5uyAK3TXPYH6Ce7GIKgb
   CFx0vRh26CR5clZ/DZMew03+iJxp7xiUsbvtuimvFEWnQLsnqcWcZ+pej
   r0GaP3FYugM+NpHv1wfEbvnHmDAf+1C24lPaAQSbrc0rysEFcMNtVdQF9
   D7+oN+amu9EMk5k7yGb+oAPv5XzIoiLn16MI1Kh1I/QSazuJDCOaa2pZ3
   N1KH1fbKD4rvp8Wlw6pAlh8DuPa9oeo4IGtjq69ux0aEXpD7OAWubpxnN
   A==;
X-CSE-ConnectionGUID: oaJpHFRmQgKO3PgDWDeFVg==
X-CSE-MsgGUID: 6we/c5/zQ628V4n6n7Ey0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="68308037"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000";
   d="scan'208";a="68308037"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 03:04:43 -0800
X-CSE-ConnectionGUID: 5H/ovCg6RZaTR+4534E+pw==
X-CSE-MsgGUID: U9eLlPA7SiyXBK4n683UDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000";
   d="scan'208";a="228643730"
Received: from agladkov-desk.ger.corp.intel.com (HELO fedora) ([10.245.244.142])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 03:04:40 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Thu, 20 Nov 2025 12:03:41 +0100
Message-ID: <20251120110341.2425-3-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251120110341.2425-1-thomas.hellstrom@linux.intel.com>
References: <20251120110341.2425-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,infradead.org,redhat.com,kernel.org,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9B0673F69B
X-Spamd-Bar: ------
Message-ID-Hash: S4WAT6NRKSNY27GPWPWZXC26KWVF3NX5
X-Message-ID-Hash: S4WAT6NRKSNY27GPWPWZXC26KWVF3NX5
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Waiman Long <longman@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 2/2] dma-buf/dma-resv: Improve the dma-resv lockdep checks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S4WAT6NRKSNY27GPWPWZXC26KWVF3NX5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RW5zdXJlIHRoYXQgZG1hX3Jlc3ZfaGVsZCgpIGFuZCBkbWFfcmVzdl9hc3NlcnRfaGVsZCgpIG9w
ZXJhdGUNCm9uIGluZGl2aWR1YWwgcmVzZXJ2YXRpb24gb2JqZWN0cyB3aXRoaW4gYSBXVyB0cmFu
c2FjdGlvbiByYXRoZXINCnRoYW4gb24gdGhlIHJlc2VydmF0aW9uIFdXIGNsYXNzLg0KDQpTaWdu
ZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRl
bC5jb20+DQotLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggfCA3ICsrKysrLS0NCiAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oDQpp
bmRleCBjNWFiNmZkOWViZTguLjAwMWRlMzg4MGZkZSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGlu
dXgvZG1hLXJlc3YuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oDQpAQCAtMzA4LDgg
KzMwOCwxMSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZG1hX3Jlc3ZfaXRlcl9pc19yZXN0YXJ0ZWQo
c3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcikNCiAJICAgICBmZW5jZSA9IGRtYV9yZXN2X2l0
ZXJfZmlyc3QoY3Vyc29yKTsgZmVuY2U7CVwNCiAJICAgICBmZW5jZSA9IGRtYV9yZXN2X2l0ZXJf
bmV4dChjdXJzb3IpKQ0KIA0KLSNkZWZpbmUgZG1hX3Jlc3ZfaGVsZChvYmopIGxvY2tkZXBfaXNf
aGVsZCgmKG9iaiktPmxvY2suYmFzZSkNCi0jZGVmaW5lIGRtYV9yZXN2X2Fzc2VydF9oZWxkKG9i
aikgbG9ja2RlcF9hc3NlcnRfaGVsZCgmKG9iaiktPmxvY2suYmFzZSkNCisjZGVmaW5lIGRtYV9y
ZXN2X2hlbGQob2JqKSAobG9ja2RlcF9pc19oZWxkKCYob2JqKS0+bG9jay5iYXNlKSAmJiB3d19t
dXRleF9oZWxkKCYob2JqKS0+bG9jaykpDQorI2RlZmluZSBkbWFfcmVzdl9hc3NlcnRfaGVsZChv
YmopIGRvIHsJCQlcDQorCQlsb2NrZGVwX2Fzc2VydF9oZWxkKCYob2JqKS0+bG9jay5iYXNlKTsg
XA0KKwkJd3dfbXV0ZXhfYXNzZXJ0X2hlbGQoJihvYmopLT5sb2NrKTsJXA0KKwl9IHdoaWxlICgw
KQ0KIA0KICNpZmRlZiBDT05GSUdfREVCVUdfTVVURVhFUw0KIHZvaWQgZG1hX3Jlc3ZfcmVzZXRf
bWF4X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaik7DQotLSANCjIuNTEuMQ0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
