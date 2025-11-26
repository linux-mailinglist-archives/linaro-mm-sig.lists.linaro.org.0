Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CC565C8AABF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 16:34:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8E663F8EF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 15:34:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	by lists.linaro.org (Postfix) with ESMTPS id D670E3F7A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 15:34:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=IFH0Y7WH;
	spf=pass (lists.linaro.org: domain of maarten.lankhorst@linux.intel.com designates 198.175.65.12 as permitted sender) smtp.mailfrom=maarten.lankhorst@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1764171263; x=1795707263;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=CCug/MBOMnHF2yMXUk/0NXt665eJWKaxeq4tP0rPVE8=;
  b=IFH0Y7WHmMmYvekqc9p5NHR8LRPL3a9q8kjui21WskqjpPGbUFNk+hEj
   YXnI7oHHBnl5z9RqDZVajhcKVNSA+IOMFWiGHnAiQNtlw0jlHlz+TEEth
   CL28fDhS+1QuGIkZwxpZ4c2hXK61KnUq874wkkvL94vh2VQPyZ5aoJqvR
   QL6mHF67Av511xFtKhooP9393A+JFc3mFq7dVaVlh4m/yk0iq/Gf/SK+t
   znTT0WFyuB2kMkI9HzFiuLIDosA9IHaTOQmXMihbgyxgwnO2D1PqLhnFi
   ADPRJiwmSYyrIpEq0k/phGLyFOkQuTeJ7DXsmw4PtUeYbQeMr1QY7SCSR
   g==;
X-CSE-ConnectionGUID: 3x6eJLgGTDmFUFT7MMwfHg==
X-CSE-MsgGUID: X6GMpFJsQyKgORL2otKtqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77684747"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800";
   d="scan'208";a="77684747"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2025 07:34:21 -0800
X-CSE-ConnectionGUID: scrlhLSzSdSsZostakmPdA==
X-CSE-MsgGUID: By7fM+D4Ska02rjESYC85Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800";
   d="scan'208";a="216326569"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO [10.245.245.178]) ([10.245.245.178])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2025 07:34:19 -0800
Message-ID: <7346d42b-3ad7-4170-900f-73d8ed356f71@linux.intel.com>
Date: Wed, 26 Nov 2025 16:34:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20251121101315.3585-1-pierre-eric.pelloux-prayer@amd.com>
 <20251121101315.3585-20-pierre-eric.pelloux-prayer@amd.com>
 <414584f0-3fdb-41e2-aa26-3776dc514184@amd.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <414584f0-3fdb-41e2-aa26-3776dc514184@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.98%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,intel.com:dkim];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D670E3F7A5
X-Spamd-Bar: ------
Message-ID-Hash: HCJTKUE64XWX75GMLOCXAAOKWMIDIMDN
X-Message-ID-Hash: HCJTKUE64XWX75GMLOCXAAOKWMIDIMDN
X-MailFrom: maarten.lankhorst@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 19/28] drm/ttm: rework pipelined eviction fence handling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HCJTKUE64XWX75GMLOCXAAOKWMIDIMDN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5LA0KDQpEZW4gMjAyNS0xMS0yMSBrbC4gMTY6MTIsIHNrcmV2IENocmlzdGlhbiBLw7ZuaWc6
DQo+IE9uIDExLzIxLzI1IDExOjEyLCBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciB3cm90ZToN
Cj4+IFVudGlsIG5vdyB0dG0gc3RvcmVkIGEgc2luZ2xlIHBpcGVsaW5lZCBldmljdGlvbiBmZW5j
ZSB3aGljaCBtZWFucw0KPj4gZHJpdmVycyBoYWQgdG8gdXNlIGEgc2luZ2xlIGVudGl0eSBmb3Ig
dGhlc2UgZXZpY3Rpb25zLg0KPj4NCj4+IFRvIGxpZnQgdGhpcyByZXF1aXJlbWVudCwgdGhpcyBj
b21taXQgYWxsb3dzIHVwIHRvIDggZW50aXRpZXMgdG8NCj4+IGJlIHVzZWQuDQo+Pg0KPj4gSWRl
YWxseSBhIGRtYV9yZXN2IG9iamVjdCB3b3VsZCBoYXZlIGJlZW4gdXNlZCBhcyBhIGNvbnRhaW5l
ciBvZg0KPj4gdGhlIGV2aWN0aW9uIGZlbmNlcywgYnV0IHRoZSBsb2NraW5nIHJ1bGVzIG1ha2Vz
IGl0IGNvbXBsZXguDQo+PiBkbWFfcmVzdiBhbGwgaGF2ZSB0aGUgc2FtZSB3d19jbGFzcywgd2hp
Y2ggbWVhbnMgIkF0dGVtcHRpbmcgdG8NCj4+IGxvY2sgbW9yZSBtdXRleGVzIGFmdGVyIHd3X2Fj
cXVpcmVfZG9uZS4iIGlzIGFuIGVycm9yLg0KPj4NCj4+IE9uZSBhbHRlcm5hdGl2ZSBjb25zaWRl
cmVkIHdhcyB0byBpbnRyb2R1Y2VkIGEgMm5kIHd3X2NsYXNzIGZvcg0KPj4gc3BlY2lmaWMgcmVz
diB0byBob2xkIGEgc2luZ2xlICJ0cmFuc2llbnQiIGxvY2sgKD0gdGhlIHJlc3YgbG9jaw0KPj4g
d291bGQgb25seSBiZSBoZWxkIGZvciBhIHNob3J0IHBlcmlvZCwgd2l0aG91dCB0YWtpbmcgYW55
IG90aGVyDQo+PiBsb2NrcykuDQo+Pg0KPj4gVGhlIG90aGVyIG9wdGlvbiwgaXMgdG8gc3RhdGlj
YWxseSByZXNlcnZlIGEgZmVuY2UgYXJyYXksIGFuZA0KPj4gZXh0ZW5kIHRoZSBleGlzdGluZyBj
b2RlIHRvIGRlYWwgd2l0aCBOIGZlbmNlcywgaW5zdGVhZCBvZiAxLg0KPj4NCj4+IFRoZSBkcml2
ZXIgaXMgc3RpbGwgcmVzcG9uc2libGUgdG8gcmVzZXJ2ZSB0aGUgY29ycmVjdCBudW1iZXINCj4+
IG9mIGZlbmNlIHNsb3RzLg0KPj4NCj4+IC0tLQ0KPj4gdjI6DQo+PiAtIHNpbXBsaWZpZWQgY29k
ZQ0KPj4gLSBkcm9wcGVkIG5fZmVuY2VzDQo+PiAtIG5hbWUgY2hhbmdlcw0KPj4gdjM6IHVzZSB0
dG1fcmVzb3VyY2VfbWFuYWdlcl9jbGVhbnVwDQo+PiAtLS0NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5
OiBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciA8cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJA
YW1kLmNvbT4NCj4gDQo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+DQo+IA0KPiBHb2luZyB0byBwdXNoIHNlcGFyYXRlbHkgdG8gZHJtLW1p
c2MtbmV4dCBvbiBNb25kYXkuDQo+IA0KUHVzaGluZyB0aGlzIGJyb2tlIGRybS10aXAsIHRoZSBh
bWQgZHJpdmVyIGZhaWxzIHRvIGJ1aWxkLCBhcyBpdCdzIG5vdCB1c2luZyB0aGUgZXZpY3Rpb25f
ZmVuY2VzIGFycmF5Lg0KDQpLaW5kIHJlZ2FyZHMsDQp+TWFhcnRlbiBMYW5raG9yc3QNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
