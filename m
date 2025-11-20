Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DFEC754A5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 17:18:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D10D3F98A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 16:18:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
	by lists.linaro.org (Postfix) with ESMTPS id 6E9663F90A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 16:17:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=StMadqWu;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 192.198.163.10 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763655471; x=1795191471;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=/2fPZfB59KUyz2Lm6t6OUzeT1S0pxU0VW+s/4VKpB3w=;
  b=StMadqWu895iJe053u9fKvCJorJuklve25ifkunhQNx0CCwvOJQuA54q
   7ql/whQFCD2WgMhI0qQqNnCBeTEh/NtCb0LOJ9XR+6dlRbniFS85DNmeu
   41KbAN3PtlQAVDolyVHWfAd2p0FSDd+LtGrDDcay0cNVZL8t+Ppp3dKcT
   g/X5KyRZD6sPP/h+D6Txr1dqZVsfVrrjcJXsVC3RTFeJMsEc164tpWUfm
   booEPRyGi7Nduvy5LQEFUqMFvZyRuHYkk/dg3UlU11YaG6F/oPlA1JKrS
   oUJq6WKi2PUJWSRIIeq9xRpi8ZFQqe1ja/Z3w6jbF8aIlDa76t6Dyr138
   Q==;
X-CSE-ConnectionGUID: A0shAXItSfWSPpIftCASGg==
X-CSE-MsgGUID: a9V1KvBeQDu7dRHYTmG3Bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="77093103"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800";
   d="scan'208";a="77093103"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 08:17:50 -0800
X-CSE-ConnectionGUID: DfPRgqgtQXurIL07N/mL/g==
X-CSE-MsgGUID: tmc9Dr2xRveyYCoS7r69RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800";
   d="scan'208";a="190650292"
Received: from agladkov-desk.ger.corp.intel.com (HELO [10.245.244.142]) ([10.245.244.142])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 08:17:47 -0800
Message-ID: <0401ba0139881d7d9a060876bdf7924888034265.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
	intel-xe@lists.freedesktop.org
Date: Thu, 20 Nov 2025 17:17:44 +0100
In-Reply-To: <20251120161435.3674556-1-mika.kuoppala@linux.intel.com>
References: <20251120161435.3674556-1-mika.kuoppala@linux.intel.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26:c];
	MIME_GOOD(-0.10)[text/plain];
	DWL_DNSWL_BLOCKED(0.00)[intel.com:dkim];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6E9663F90A
X-Spamd-Bar: ------
Message-ID-Hash: FSD6JOLJKAE4KELKVPXLUEHJYSDPB4WS
X-Message-ID-Hash: FSD6JOLJKAE4KELKVPXLUEHJYSDPB4WS
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Matthew Brost <matthew.brost@intel.com>, Stuart Summers <stuart.summers@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/xe: Fix memory leak when handling pagefault vma
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FSD6JOLJKAE4KELKVPXLUEHJYSDPB4WS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDI1LTExLTIwIGF0IDE4OjE0ICswMjAwLCBNaWthIEt1b3BwYWxhIHdyb3RlOg0K
PiBXaGVuIHRoZSBwYWdlZmF1bHQgaGFuZGxpbmcgY29kZSB3YXMgbW92ZWQgdG8gYSBuZXcgZmls
ZSwgYW4gZXh0cmENCj4gZHJtX2V4ZWNfaW5pdCgpIHdhcyBhZGRlZCB0byB0aGUgVk1BIHBhdGgu
IFRoaXMgY2FsbCBpcyB1bm5lY2Vzc2FyeQ0KPiBiZWNhdXNlDQo+IHhlX3ZhbGlkYXRpb25fY3R4
X2luaXQoKSBhbHJlYWR5IHBlcmZvcm1zIGEgZHJtX2V4ZWNfaW5pdCgpLA0KPiByZXN1bHRpbmcg
aW4gYQ0KPiBtZW1vcnkgbGVhayByZXBvcnRlZCBieSBrbWVtbGVhay4NCj4gDQo+IFJlbW92ZSB0
aGUgcmVkdW5kYW50IGRybV9leGVjX2luaXQoKSBmcm9tIHRoZSBWTUEgcGFnZWZhdWx0IGhhbmRs
aW5nDQo+IGNvZGUuDQo+IA0KPiBGaXhlczogZmI1NDRiODQ0NTA4ICgiZHJtL3hlOiBJbXBsZW1l
bnQgeGVfcGFnZWZhdWx0X3F1ZXVlX3dvcmsiKQ0KPiBDYzogTWF0dGhldyBCcm9zdCA8bWF0dGhl
dy5icm9zdEBpbnRlbC5jb20+DQo+IENjOiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNA
aW50ZWwuY29tPg0KPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5j
b20+DQo+IENjOiAiVGhvbWFzIEhlbGxzdHLDtm0iIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4g
Q2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+IENjOiAiQ2hyaXN0
aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gQ2M6IGludGVsLXhlQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+
IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcNCj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2
bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS94ZS94ZV9wYWdlZmF1bHQuYyB8IDEgLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGRl
bGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3BhZ2Vm
YXVsdC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3BhZ2VmYXVsdC5jDQo+IGluZGV4IGZl
M2U0MDE0NTAxMi4uYWZiMDY1OThiNmUxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
eGUveGVfcGFnZWZhdWx0LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3BhZ2VmYXVs
dC5jDQo+IEBAIC0xMDIsNyArMTAyLDYgQEAgc3RhdGljIGludCB4ZV9wYWdlZmF1bHRfaGFuZGxl
X3ZtYShzdHJ1Y3QgeGVfZ3QNCj4gKmd0LCBzdHJ1Y3QgeGVfdm1hICp2bWEsDQo+IMKgDQo+IMKg
CS8qIExvY2sgVk0gYW5kIEJPcyBkbWEtcmVzdiAqLw0KPiDCoAl4ZV92YWxpZGF0aW9uX2N0eF9p
bml0KCZjdHgsICZ2bS0+eGUtPnZhbCwgJmV4ZWMsIChzdHJ1Y3QNCj4geGVfdmFsX2ZsYWdzKSB7
fSk7DQo+IC0JZHJtX2V4ZWNfaW5pdCgmZXhlYywgMCwgMCk7DQo+IMKgCWRybV9leGVjX3VudGls
X2FsbF9sb2NrZWQoJmV4ZWMpIHsNCj4gwqAJCWVyciA9IHhlX3BhZ2VmYXVsdF9iZWdpbigmZXhl
Yywgdm1hLCB0aWxlLT5tZW0udnJhbSwNCj4gwqAJCQkJCSBuZWVkc192cmFtID09IDEpOw0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
