Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CA376C739D8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 12:05:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DED8A3F7A1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 11:05:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	by lists.linaro.org (Postfix) with ESMTPS id 2FD4B3F8F7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 11:04:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="Cz/YSM+G";
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 192.198.163.13 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763636682; x=1795172682;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=cJ9+AHKcuOWPh52l0sFwdJo0i/z7RcPFiHsIZr076JA=;
  b=Cz/YSM+G2SYBY2/tabAXjsp7GoYWHIHy1QA8iLns0eD/r61dl1CYsLMY
   RPfvaRWeIOZNOu11U1WIuoJBE+MdnPPwgzcC73BKdbhfvLzUo/hrgsiX2
   QHRtZBhn495T2txTOzWLDkOBdrNRcTQwO/wXMk5VPmhtdYjakiRffMFT+
   N3LWNlGHZMX7dDr1MAKSWUlhbkI/xNZh4ccyvabQT5lB+IhDRfONTLseS
   6//sTXP0KkZ1YHPNe9xoKBXPEcSmk4L3qKoZzFcpLcF78U3J6iE0T2jzc
   t+RCnmeTIsJwU+OG4px40mQW6tW3SvtK0Kwme4ejT3TcNZKvA9eHwUamP
   g==;
X-CSE-ConnectionGUID: esM9OrTuRymz0MUGyJAtvQ==
X-CSE-MsgGUID: 8xcwpSBKTbu9FPM75we68Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="68308013"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000";
   d="scan'208";a="68308013"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 03:04:41 -0800
X-CSE-ConnectionGUID: +0IbbpFWSYGhstTHsbJhsQ==
X-CSE-MsgGUID: Zv9oplZMR/ml0fWkFf0Mvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000";
   d="scan'208";a="228643711"
Received: from agladkov-desk.ger.corp.intel.com (HELO fedora) ([10.245.244.142])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 03:04:34 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Thu, 20 Nov 2025 12:03:40 +0100
Message-ID: <20251120110341.2425-2-thomas.hellstrom@linux.intel.com>
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
X-Rspamd-Queue-Id: 2FD4B3F8F7
X-Spamd-Bar: ------
Message-ID-Hash: 73NNSSRBPTUALFBQYM7TVMQEVKS44OZX
X-Message-ID-Hash: 73NNSSRBPTUALFBQYM7TVMQEVKS44OZX
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Waiman Long <longman@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 1/2] kernel/locking/ww_mutex: Add per-lock lock-check helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/73NNSSRBPTUALFBQYM7TVMQEVKS44OZX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q29kZSB1c2luZyB3d19tdXRleGVzIHR5cGljYWxseSBieSBkZXNpZ24gaGF2ZSBhIG51bWJlciBv
Zg0Kc3VjaCBtdXRleGVzIHNoYXJpbmcgdGhlIHNhbWUgd3dfY2xhc3MsIGFuZCB3aXRoaW4gYSB3
dyB0cmFuc2FjdGlvbg0KdGhleSBhcmUgYWxsIGxvY2tkZXAgYW5ub3RhdGVkIHVzaW5nIGEgbmVz
dF9sb2NrIHdoaWNoIG1lYW5zDQp0aGF0IG11bHRpcGxlIHd3X211dGV4ZXMgb2YgdGhlIHNhbWUg
bG9ja2RlcCBjbGFzcyBtYXkgYmUgbG9ja2VkIGF0DQp0aGUgc2FtZSB0aW1lLiBUaGF0IG1lYW5z
IHRoYXQgbG9ja19pc19oZWxkKCkgcmV0dXJucyB0cnVlIGFuZA0KbG9ja2RlcF9hc3NlcnRfaGVs
ZCgpIGRvZXNuJ3QgZmlyZSBhcyBsb25nIGFzIHRoZXJlIGlzIGEgKnNpbmdsZSoNCnd3X211dGV4
IGhlbGQgb2YgdGhlIHNhbWUgY2xhc3MuIElPVyB3aXRoaW4gYSBXVyB0cmFuc2FjdGlvbi4NCg0K
Q29kZSB1c2luZyB0aGVzZSBtdXRleGVzIHR5cGljYWxseSB3YW50IHRvIGFzc2VydCB0aGF0IGlu
ZGl2aWR1YWwNCnd3X211dGV4ZXMgYXJlIGhlbGQuIE5vdCB0aGF0IGFueSB3d19tdXRleCBvZiB0
aGUgc2FtZSBjbGFzcyBpcw0KaGVsZC4NCg0KSW50cm9kdWNlIGZ1bmN0aW9ucyB0aGF0IGNhbiBi
ZSB1c2VkIGZvciB0aGF0Lg0KDQpSRkM6IFBsYWNlbWVudCBvZiB0aGUgZnVuY3Rpb25zPyBsb2Nr
ZGVwLmM/IEFyZSB0aGUgI2lmZGVmcyB0ZXN0aW5nIGZvcg0KdGhlIGNvcnJlY3QgY29uZmlnPw0K
DQpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51
eC5pbnRlbC5jb20+DQotLS0NCiBpbmNsdWRlL2xpbnV4L3d3X211dGV4LmggfCAxOCArKysrKysr
KysrKysrKysrKysNCiBrZXJuZWwvbG9ja2luZy9tdXRleC5jICAgfCAxMCArKysrKysrKysrDQog
MiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L3d3X211dGV4LmggYi9pbmNsdWRlL2xpbnV4L3d3X211dGV4LmgNCmluZGV4IDQ1ZmY2
ZjdhODcyYi4uN2JjMGY1MzNkZWE2IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC93d19tdXRl
eC5oDQorKysgYi9pbmNsdWRlL2xpbnV4L3d3X211dGV4LmgNCkBAIC0zODAsNCArMzgwLDIyIEBA
IHN0YXRpYyBpbmxpbmUgYm9vbCB3d19tdXRleF9pc19sb2NrZWQoc3RydWN0IHd3X211dGV4ICps
b2NrKQ0KIAlyZXR1cm4gd3dfbXV0ZXhfYmFzZV9pc19sb2NrZWQoJmxvY2stPmJhc2UpOw0KIH0N
CiANCisjaWZkZWYgQ09ORklHX1BST1ZFX0xPQ0tJTkcNCisNCitib29sIHd3X211dGV4X2hlbGQo
c3RydWN0IHd3X211dGV4ICpsb2NrKTsNCisNCisjZWxzZSAvKiBDT05GSUdfUFJPVkVfTE9DS0lO
RyAqLw0KKw0KK3N0YXRpYyBpbmxpbmUgYm9vbCB3d19tdXRleF9oZWxkKHN0cnVjdCB3d19tdXRl
eCAqbG9jaykNCit7DQorCXJldHVybiB0cnVlOw0KK30NCisNCisjZW5kaWYgLyogQ09ORklHX1BS
T1ZFX0xPQ0tJTkcgKi8NCisNCitzdGF0aWMgaW5saW5lIHZvaWQgd3dfbXV0ZXhfYXNzZXJ0X2hl
bGQoc3RydWN0IHd3X211dGV4ICpsb2NrKQ0KK3sNCisJbG9ja2RlcF9hc3NlcnQod3dfbXV0ZXhf
aGVsZChsb2NrKSk7DQorfQ0KKw0KICNlbmRpZg0KZGlmZiAtLWdpdCBhL2tlcm5lbC9sb2NraW5n
L211dGV4LmMgYi9rZXJuZWwvbG9ja2luZy9tdXRleC5jDQppbmRleCBkZTdkNjcwMmNkOTYuLjM3
ODY4YjczOWVmZCAxMDA2NDQNCi0tLSBhL2tlcm5lbC9sb2NraW5nL211dGV4LmMNCisrKyBiL2tl
cm5lbC9sb2NraW5nL211dGV4LmMNCkBAIC0xMTc0LDMgKzExNzQsMTMgQEAgaW50IGF0b21pY19k
ZWNfYW5kX211dGV4X2xvY2soYXRvbWljX3QgKmNudCwgc3RydWN0IG11dGV4ICpsb2NrKQ0KIAly
ZXR1cm4gMTsNCiB9DQogRVhQT1JUX1NZTUJPTChhdG9taWNfZGVjX2FuZF9tdXRleF9sb2NrKTsN
CisNCisjaWZkZWYgQ09ORklHX1BST1ZFX0xPQ0tJTkcNCisNCitib29sIHd3X211dGV4X2hlbGQo
c3RydWN0IHd3X211dGV4ICpsb2NrKQ0KK3sNCisJcmV0dXJuIF9fd3dfbXV0ZXhfb3duZXIoJmxv
Y2stPmJhc2UpID09IGN1cnJlbnQ7DQorfQ0KK0VYUE9SVF9TWU1CT0wod3dfbXV0ZXhfaGVsZCk7
DQorDQorI2VuZGlmIC8qIENPTkZJR19QUk9WRV9MT0NLSU5HICovDQotLSANCjIuNTEuMQ0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
