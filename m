Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6CAC739CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 12:04:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B8963F7A1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 11:04:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	by lists.linaro.org (Postfix) with ESMTPS id 228E03F69B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 11:04:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=h43GKWX3;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 192.198.163.13 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763636675; x=1795172675;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=qY4iz8vRxeI2vbkflJyrv/cHwEXqr2dgwNE/Eha7pEw=;
  b=h43GKWX3NCO8LDRXJnqiar/atVWn3Wke46uv1Mryp6JsOxM05rhxffGS
   SaWfv9FiJjGqNGAghSbAirZ4Y0xC5kuOFeD+e6m9KH8vM6ewa/H5qxXc+
   KMpRlJlVnjPqMxwsk+PGIasWwRG9greMewenAYLIy8urI3yavnNcazC3r
   E1XBKU+M2ZOfIPB7YtZrsp6pi2rnHcNryzFsbqojiE9+3crLMIiaT5NEv
   EqrxR7KuyHVPxPRFCdRerojfQGIQkbqq8wJa1CZLPOUc6HS8Mscq36iZk
   ADpehAMPI3rF089h8QctDUmzPEDc2TE/7cvWbUeiYvmABo0KbC4VbU/vq
   Q==;
X-CSE-ConnectionGUID: +IS5F9BeTVOXjRZf85PpKw==
X-CSE-MsgGUID: maknKtq6RayDiwe0XWectw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="68307977"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000";
   d="scan'208";a="68307977"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 03:04:34 -0800
X-CSE-ConnectionGUID: slshScBUT3qTys+qrixn+Q==
X-CSE-MsgGUID: i4D01uSBTaei2uUY9iTRTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000";
   d="scan'208";a="228643691"
Received: from agladkov-desk.ger.corp.intel.com (HELO fedora) ([10.245.244.142])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 03:04:30 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Thu, 20 Nov 2025 12:03:39 +0100
Message-ID: <20251120110341.2425-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
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
X-Rspamd-Queue-Id: 228E03F69B
X-Spamd-Bar: -----
Message-ID-Hash: LFRV56HNLSON2GCXHHIPX3QOQMGGPWCD
X-Message-ID-Hash: LFRV56HNLSON2GCXHHIPX3QOQMGGPWCD
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Waiman Long <longman@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 0/2] locking/ww_mutex, dma-buf/dma-resv: Improve detection of unheld locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LFRV56HNLSON2GCXHHIPX3QOQMGGPWCD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V1cgbXV0ZXhlcyBhbmQgZG1hLXJlc3Ygb2JqZWN0cywgd2hpY2ggZW1iZWQgdGhlbSwgdHlwaWNh
bGx5IGhhdmUgYQ0KbnVtYmVyIG9mIGxvY2tzIGJlbG9ja2luZyB0byB0aGUgc2FtZSBsb2NrIGNs
YXNzLiBIb3dldmVyDQpjb2RlIHVzaW5nIHRoZW0gdHlwaWNhbGx5IHdhbnQgdG8gdmVyaWZ5IHRo
ZSBsb2NraW5nIG9uDQpvYmplY3QgZ3JhbnVsYXJpdHksIG5vdCBsb2NrLWNsYXNzIGdyYW51bGFy
aXR5Lg0KDQpUaGlzIHNlcmllcyBhZGQgd3dfbXV0ZXggZnVuY3Rpb25zIHRvIGZhY2lsaXRhdGUg
dGhhdCwNCihwYXRjaCAxKSBhbmQgdXRpbGl6ZXMgdGhlc2UgZnVuY3Rpb25zIGluIHRoZSBkbWEt
cmVzdiBsb2NrDQpjaGVja3MuDQoNClRob21hcyBIZWxsc3Ryw7ZtICgyKToNCiAga2VybmVsL2xv
Y2tpbmcvd3dfbXV0ZXg6IEFkZCBwZXItbG9jayBsb2NrLWNoZWNrIGhlbHBlcnMNCiAgZG1hLWJ1
Zi9kbWEtcmVzdjogSW1wcm92ZSB0aGUgZG1hLXJlc3YgbG9ja2RlcCBjaGVja3MNCg0KIGluY2x1
ZGUvbGludXgvZG1hLXJlc3YuaCB8ICA3ICsrKysrLS0NCiBpbmNsdWRlL2xpbnV4L3d3X211dGV4
LmggfCAxOCArKysrKysrKysrKysrKysrKysNCiBrZXJuZWwvbG9ja2luZy9tdXRleC5jICAgfCAx
MCArKysrKysrKysrDQogMyBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQ0KDQotLSANCjIuNTEuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
