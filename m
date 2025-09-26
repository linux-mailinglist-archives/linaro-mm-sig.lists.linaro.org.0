Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EB2BA3005
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 10:46:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA0C4459A3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 08:46:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	by lists.linaro.org (Postfix) with ESMTPS id 3F0A24475B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Sep 2025 08:46:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=EkXGJLOj;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 192.198.163.12 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1758876408; x=1790412408;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=RWW210PDr2oUkOjX/ILOMWhF7nSjRu9ntBzl0do/OF8=;
  b=EkXGJLOjtxteUgOyRFaZVTRYx8iY4+ae6n9BP7Rmv9Ydd8KvLegpIdEq
   9xdk7/TMAEBR/iEcFs2SxPyn1QiOQSeFKsqs1RiI5sepqgywvEZD8Qs1m
   DF7cqrNsF2A+D0bVcI3H7XRADgt8VmVwfDTVFu8DiRbmgJrtNS5/2xp5z
   T5TLPLcPCXyi1dE6MCchOrWHwZVYnbbim8nHRlrGaL3Oo5jA8w3xbM5G4
   SG72fzn7E55CVi8L7BMLYopUbobouK73rG9fUx2g1ooUGgmAz6zksrhLD
   r+NyrKhyQqaCuZcsAP9Tz4l8oOum8jiWNRswemEP4hCfhX0BXGSevCotM
   A==;
X-CSE-ConnectionGUID: ViFJnN6eRy+iqT0exvnLbw==
X-CSE-MsgGUID: ybos29N/TP+FsgQAbDn9SQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="65054054"
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800";
   d="scan'208";a="65054054"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Sep 2025 01:46:47 -0700
X-CSE-ConnectionGUID: rylidwQnTzigjQ8gzic4eA==
X-CSE-MsgGUID: w5377SOpT7masOIv5dh0Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800";
   d="scan'208";a="182839717"
Received: from opintica-mobl1 (HELO fedora) ([10.245.244.247])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Sep 2025 01:46:44 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Fri, 26 Sep 2025 10:46:22 +0200
Message-ID: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: 3F0A24475B
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
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
Message-ID-Hash: 6C66YSUASWVDPZRPS5E4RYDFYN3XKEOM
X-Message-ID-Hash: 6C66YSUASWVDPZRPS5E4RYDFYN3XKEOM
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Jason Gunthorpe <jgg@nvidia.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH v2 0/2] dma-buf private interconnect POC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6C66YSUASWVDPZRPS5E4RYDFYN3XKEOM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VHdvIHBhdGNoZXMgdG8gaW1wbGVtZW50IGEgZ2VuZXJpYyBmcmFtZXdvcmsgZm9yIGRtYS1idWYg
dG8gc3VwcG9ydA0KbG9jYWwgcHJpdmF0ZSBpbnRlcmNvbm5lY3RzLCBpbiBwYXJ0aWN1bGFyIGlu
dGVyY29ubmVjdHMgdGhhdCBhcmUgbm90DQpkcml2ZXItcHJpdmF0ZS4NCg0KVGhlIGludGVyY29u
bmVjdCBzdXBwb3J0IGlzIG5lZ290aWF0ZWQgYXMgcGFydCBvZiBhbiBhdHRhY2htZW50IGFuZCBp
cw0Kbm90IGEgcHJvcGVydHkgb2YgdGhlIGRtYS1idWYgaXRzZWxmLiBKdXN0IGxpa2UgcGNpZSBw
MnAgc3VwcG9ydC4NCg0KVGhlIGZpcnN0IHBhdGNoIGFkZHMgbWVtYmVycyB0byB0aGUgZG1hX2J1
Zl9hdHRhY2hfb3BzIGFuZCB0byB0aGUNCmRtYV9idWZfYXR0YWNobWVudCBzdHJ1Y3R1cmUuIFRo
ZXNlIGFyZSBuZWVkZWQgZm9yIGdlbmVyaWMgY2hlY2sgb2YNCmludGVyY29ubmVjdCBzdXBwb3J0
LCB0eXBpY2FsbHkgd2hlbiBhbiBpbnRlcmNvbm5lY3QgaXMgc2hhcmVkIGJldHdlZW4NCmRyaXZl
cnMuIEZvciB0cnVseSBkcml2ZXItcHJpdmF0ZSBpbnRlcmNvbm5lY3RzIHRoZXkgYXJlIG5vdA0K
c3RyaWN0bHkgbmVlZGVkLCBidXQgc3RpbGwgY291bGQgYmUgY29udmVuaWVudC4NCg0KVGhlIHNl
Y29uZCBwYXRjaCBpbXBsZW1lbnRzIGFuIGludGVyY29ubmVjdCBuZWdvdGlhdGlvbiBmb3IgeGUs
DQp3aXRob3V0IGFjdHVhbGx5IGNoYW5naW5nIHRoZSBwcm90b2NvbCBpdHNlbGYgZnJvbSBwY2ll
X3AycC4NCkp1c3QgYXMgYW4gZXhhbXBsZS4gVGhpcyBwYXRjaCBpcyBub3QgaW50ZW5kZWQgdG8g
YmUgbWVyZ2VkLg0KDQpOb3RlOiBUaGlzIFJGQyBvbmx5IGRlYWxzIHdpdGggaW50ZXJjb25uZWN0
IG5lZ290aWF0aW9uLiBUaGUNCmF0dGFjaG1lbnQgc3RhdGUgYW5kIHdoYXQgZGF0YS1zdHJ1Y3R1
cmUgdG8gdXNlIHRvIGNvbnZleSB0aGUgbWFwcGluZw0KaW5mb3JtYXRpb24gaXMgbm90IGRlYWx0
IHdpdGggaW4gdGhpcyBSRkMuDQoNCnYyOg0KLSBHZXQgcmlkIG9mIHZvaWQgcG9pbnRlcnMgYW5k
IGluc3RlYWQgcHJvdmlkZSBnZW5lcmljIHN0cnVjdHVyZXMNCiAgdGhhdCBhcmUgaW50ZW5kZWQg
dG8gYmUgZW1iZWRkZWQgLyBzdWJjbGFzc2VkIGZvciBlYWNoIGludGVyY29ubmVjdA0KICBpbXBs
ZW1lbnRhdGlvbi4NCg0KVGhvbWFzIEhlbGxzdHLDtm0gKDIpOg0KICBkbWEtYnVmOiBBZGQgc3Vw
cG9ydCBmb3IgcHJpdmF0ZSBpbnRlcmNvbm5lY3RzDQogIGRybS94ZS9kbWEtYnVmOiBBZGQgZ2Vu
ZXJpYyBpbnRlcmNvbm5lY3Qgc3VwcG9ydCBmcmFtZXdvcmsNCg0KIGRyaXZlcnMvZ3B1L2RybS94
ZS90ZXN0cy94ZV9kbWFfYnVmLmMgfCAxMiArKy0tLQ0KIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9k
bWFfYnVmLmMgICAgICAgfCA3MyArKysrKysrKysrKysrKysrKysrKysrKystLS0NCiBkcml2ZXJz
L2dwdS9kcm0veGUveGVfZG1hX2J1Zi5oICAgICAgIHwgIDEgLQ0KIGRyaXZlcnMvZ3B1L2RybS94
ZS94ZV9pbnRlcmNvbm5lY3QuaCAgfCAzMSArKysrKysrKysrKysNCiBpbmNsdWRlL2xpbnV4L2Rt
YS1idWYuaCAgICAgICAgICAgICAgIHwgNTEgKysrKysrKysrKysrKysrKysrKw0KIDUgZmlsZXMg
Y2hhbmdlZCwgMTU1IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQ0KIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0veGUveGVfaW50ZXJjb25uZWN0LmgNCg0KLS0gDQoyLjUx
LjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
