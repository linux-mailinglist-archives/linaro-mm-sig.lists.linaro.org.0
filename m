Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KaHIDH/4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:24:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B4323410A85
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:24:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63A67404EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:24:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	by lists.linaro.org (Postfix) with ESMTPS id 465353F859
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 16:14:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="i/udynMr";
	spf=pass (lists.linaro.org: domain of mika.kuoppala@linux.intel.com designates 192.198.163.8 as permitted sender) smtp.mailfrom=mika.kuoppala@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763655288; x=1795191288;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=8FQ3Hx/P7dpdV17EIj8i93hlmzauTJyPVO0chUYXFTc=;
  b=i/udynMrazYiV76xzXKBLQkdw+XXGXxxERv1xBmBQDHsKz6YxCSsw4SG
   X/iAYAPlWHMXKQaFpWqynMtIMsTv08XlSfZXY7uHmRmNoi2hQgkShqFzd
   D4gzemu1+eMzjVQb5RDJIU5YbzpvXElFt2TxORmJjrDwhF1YVuUS2hKlV
   PGnSZ1AoSejQBK6p4LtF9NconUJiQi2NRmz7f4oPmmphEm1gpJDFeDbCb
   1uRNUzJkbGacKP5vHG5aWW+is1NOMnApILJL3bqXOxSVsOu6VwDgy8NJ6
   TWDohBuJIkw5BZogbGWp3fhm+/EQjqJtALG3dHpmxYOjv4m684ruLJ68q
   A==;
X-CSE-ConnectionGUID: nhwF7I3HRqGMpx9uozQdZw==
X-CSE-MsgGUID: qEQrFmnJQEmDEQESACdJpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="83353094"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800";
   d="scan'208";a="83353094"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 08:14:46 -0800
X-CSE-ConnectionGUID: 6kyUDZjeRrCVQr+kF9Zn2A==
X-CSE-MsgGUID: h8yGTxHUTLyjCrItzSWwxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800";
   d="scan'208";a="191529642"
Received: from carterle-desk.ger.corp.intel.com (HELO mkuoppal-desk.intel.com) ([10.245.246.16])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 08:14:43 -0800
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Thu, 20 Nov 2025 18:14:35 +0200
Message-ID: <20251120161435.3674556-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: -----
X-MailFrom: mika.kuoppala@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BHJUHFVJN7DJVO5UAPTKIIPFY6VMQXMA
X-Message-ID-Hash: BHJUHFVJN7DJVO5UAPTKIIPFY6VMQXMA
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:06 +0000
CC: Mika Kuoppala <mika.kuoppala@linux.intel.com>, Matthew Brost <matthew.brost@intel.com>, Stuart Summers <stuart.summers@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/xe: Fix memory leak when handling pagefault vma
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BHJUHFVJN7DJVO5UAPTKIIPFY6VMQXMA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	DATE_IN_PAST(1.00)[3527];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FROM_NEQ_ENVFROM(0.00)[mika.kuoppala@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,intel.com:email,linux.intel.com:mid,lists.freedesktop.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email]
X-Rspamd-Queue-Id: B4323410A85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

V2hlbiB0aGUgcGFnZWZhdWx0IGhhbmRsaW5nIGNvZGUgd2FzIG1vdmVkIHRvIGEgbmV3IGZpbGUs
IGFuIGV4dHJhDQpkcm1fZXhlY19pbml0KCkgd2FzIGFkZGVkIHRvIHRoZSBWTUEgcGF0aC4gVGhp
cyBjYWxsIGlzIHVubmVjZXNzYXJ5IGJlY2F1c2UNCnhlX3ZhbGlkYXRpb25fY3R4X2luaXQoKSBh
bHJlYWR5IHBlcmZvcm1zIGEgZHJtX2V4ZWNfaW5pdCgpLCByZXN1bHRpbmcgaW4gYQ0KbWVtb3J5
IGxlYWsgcmVwb3J0ZWQgYnkga21lbWxlYWsuDQoNClJlbW92ZSB0aGUgcmVkdW5kYW50IGRybV9l
eGVjX2luaXQoKSBmcm9tIHRoZSBWTUEgcGFnZWZhdWx0IGhhbmRsaW5nIGNvZGUuDQoNCkZpeGVz
OiBmYjU0NGI4NDQ1MDggKCJkcm0veGU6IEltcGxlbWVudCB4ZV9wYWdlZmF1bHRfcXVldWVfd29y
ayIpDQpDYzogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+DQpDYzogU3R1
YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4NCkNjOiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCkNjOiAiVGhvbWFzIEhlbGxzdHLDtm0iIDx0
aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJp
Z28udml2aUBpbnRlbC5jb20+DQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJv
Lm9yZz4NCkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
CkNjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW51eC1tZWRpYUB2Z2Vy
Lmtlcm5lbC5vcmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxh
IDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS94
ZS94ZV9wYWdlZmF1bHQuYyB8IDEgLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pDQoN
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfcGFnZWZhdWx0LmMgYi9kcml2ZXJz
L2dwdS9kcm0veGUveGVfcGFnZWZhdWx0LmMNCmluZGV4IGZlM2U0MDE0NTAxMi4uYWZiMDY1OThi
NmUxIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3BhZ2VmYXVsdC5jDQorKysg
Yi9kcml2ZXJzL2dwdS9kcm0veGUveGVfcGFnZWZhdWx0LmMNCkBAIC0xMDIsNyArMTAyLDYgQEAg
c3RhdGljIGludCB4ZV9wYWdlZmF1bHRfaGFuZGxlX3ZtYShzdHJ1Y3QgeGVfZ3QgKmd0LCBzdHJ1
Y3QgeGVfdm1hICp2bWEsDQogDQogCS8qIExvY2sgVk0gYW5kIEJPcyBkbWEtcmVzdiAqLw0KIAl4
ZV92YWxpZGF0aW9uX2N0eF9pbml0KCZjdHgsICZ2bS0+eGUtPnZhbCwgJmV4ZWMsIChzdHJ1Y3Qg
eGVfdmFsX2ZsYWdzKSB7fSk7DQotCWRybV9leGVjX2luaXQoJmV4ZWMsIDAsIDApOw0KIAlkcm1f
ZXhlY191bnRpbF9hbGxfbG9ja2VkKCZleGVjKSB7DQogCQllcnIgPSB4ZV9wYWdlZmF1bHRfYmVn
aW4oJmV4ZWMsIHZtYSwgdGlsZS0+bWVtLnZyYW0sDQogCQkJCQkgbmVlZHNfdnJhbSA9PSAxKTsN
Ci0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
