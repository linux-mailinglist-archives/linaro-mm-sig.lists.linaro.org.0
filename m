Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C00C8AB3A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 16:40:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5D4F3F8EB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 15:40:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	by lists.linaro.org (Postfix) with ESMTPS id 3F79D3F806
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 15:40:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=UDWiD84L;
	spf=pass (lists.linaro.org: domain of maarten.lankhorst@linux.intel.com designates 192.198.163.11 as permitted sender) smtp.mailfrom=maarten.lankhorst@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1764171606; x=1795707606;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=eiOyf4PPCC5BPzh21IyIWJ2IEXjl5NsUns4X8e/v5V0=;
  b=UDWiD84Lhd3D9ekoNRigngdDtl4mGmr7DeEW3xh0t+mIjRYi6k1VMUr3
   AHdYcLvY0KK7f7PAcq0NjzJsu0GLhQNCXq6EhkgKzVhIfFjpdk6M/+zjw
   PNNBNZNAWytATZkSUIC4rShP2phf5Vt0wrojmr28GAV2p1GkJLaxg6Wuw
   AMTP/piTEnzNzOCUSqsHEt5WpMWSDqDsADaWgriCkCOgJcvOIfKUzvHCY
   mV+6fnVxwhXCxtmf+bPgErIOfKysQCd96/TNzUmtpzV1qApFJl5RnDBeZ
   UezDZDc4MaaQfjUC/F3m1wlfsdJemLOZ7XzlcWI0Qtpvu3fbxkW3YPgCu
   A==;
X-CSE-ConnectionGUID: TpDhdufsTKy8tLgZeUBuQA==
X-CSE-MsgGUID: 2BUZ7dm0SQKo2ycVrkNpHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="76840485"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800";
   d="scan'208";a="76840485"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2025 07:40:05 -0800
X-CSE-ConnectionGUID: KGSGpFdFQomTJy7tMtg9oA==
X-CSE-MsgGUID: QYRJHGmORaC+kHZXBk8FHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800";
   d="scan'208";a="193065802"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO [10.245.245.178]) ([10.245.245.178])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2025 07:40:02 -0800
Message-ID: <847eb5a7-7464-40f2-81ea-7bf2ff009a31@linux.intel.com>
Date: Wed, 26 Nov 2025 16:39:59 +0100
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
 <7346d42b-3ad7-4170-900f-73d8ed356f71@linux.intel.com>
 <cc43a512-b979-4c11-a413-ab5108dab466@amd.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <cc43a512-b979-4c11-a413-ab5108dab466@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3F79D3F806
X-Spamd-Bar: ------
Message-ID-Hash: PPGKLZWBDDGTOPBWQ6DJ66ESS73GKCTW
X-Message-ID-Hash: PPGKLZWBDDGTOPBWQ6DJ66ESS73GKCTW
X-MailFrom: maarten.lankhorst@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 19/28] drm/ttm: rework pipelined eviction fence handling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PPGKLZWBDDGTOPBWQ6DJ66ESS73GKCTW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5LA0KDQpEZW4gMjAyNS0xMS0yNiBrbC4gMTY6MzYsIHNrcmV2IENocmlzdGlhbiBLw7ZuaWc6
DQo+IE9uIDExLzI2LzI1IDE2OjM0LCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToNCj4+IEhleSwN
Cj4+DQo+PiBEZW4gMjAyNS0xMS0yMSBrbC4gMTY6MTIsIHNrcmV2IENocmlzdGlhbiBLw7ZuaWc6
DQo+Pj4gT24gMTEvMjEvMjUgMTE6MTIsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3Rl
Og0KPj4+PiBVbnRpbCBub3cgdHRtIHN0b3JlZCBhIHNpbmdsZSBwaXBlbGluZWQgZXZpY3Rpb24g
ZmVuY2Ugd2hpY2ggbWVhbnMNCj4+Pj4gZHJpdmVycyBoYWQgdG8gdXNlIGEgc2luZ2xlIGVudGl0
eSBmb3IgdGhlc2UgZXZpY3Rpb25zLg0KPj4+Pg0KPj4+PiBUbyBsaWZ0IHRoaXMgcmVxdWlyZW1l
bnQsIHRoaXMgY29tbWl0IGFsbG93cyB1cCB0byA4IGVudGl0aWVzIHRvDQo+Pj4+IGJlIHVzZWQu
DQo+Pj4+DQo+Pj4+IElkZWFsbHkgYSBkbWFfcmVzdiBvYmplY3Qgd291bGQgaGF2ZSBiZWVuIHVz
ZWQgYXMgYSBjb250YWluZXIgb2YNCj4+Pj4gdGhlIGV2aWN0aW9uIGZlbmNlcywgYnV0IHRoZSBs
b2NraW5nIHJ1bGVzIG1ha2VzIGl0IGNvbXBsZXguDQo+Pj4+IGRtYV9yZXN2IGFsbCBoYXZlIHRo
ZSBzYW1lIHd3X2NsYXNzLCB3aGljaCBtZWFucyAiQXR0ZW1wdGluZyB0bw0KPj4+PiBsb2NrIG1v
cmUgbXV0ZXhlcyBhZnRlciB3d19hY3F1aXJlX2RvbmUuIiBpcyBhbiBlcnJvci4NCj4+Pj4NCj4+
Pj4gT25lIGFsdGVybmF0aXZlIGNvbnNpZGVyZWQgd2FzIHRvIGludHJvZHVjZWQgYSAybmQgd3df
Y2xhc3MgZm9yDQo+Pj4+IHNwZWNpZmljIHJlc3YgdG8gaG9sZCBhIHNpbmdsZSAidHJhbnNpZW50
IiBsb2NrICg9IHRoZSByZXN2IGxvY2sNCj4+Pj4gd291bGQgb25seSBiZSBoZWxkIGZvciBhIHNo
b3J0IHBlcmlvZCwgd2l0aG91dCB0YWtpbmcgYW55IG90aGVyDQo+Pj4+IGxvY2tzKS4NCj4+Pj4N
Cj4+Pj4gVGhlIG90aGVyIG9wdGlvbiwgaXMgdG8gc3RhdGljYWxseSByZXNlcnZlIGEgZmVuY2Ug
YXJyYXksIGFuZA0KPj4+PiBleHRlbmQgdGhlIGV4aXN0aW5nIGNvZGUgdG8gZGVhbCB3aXRoIE4g
ZmVuY2VzLCBpbnN0ZWFkIG9mIDEuDQo+Pj4+DQo+Pj4+IFRoZSBkcml2ZXIgaXMgc3RpbGwgcmVz
cG9uc2libGUgdG8gcmVzZXJ2ZSB0aGUgY29ycmVjdCBudW1iZXINCj4+Pj4gb2YgZmVuY2Ugc2xv
dHMuDQo+Pj4+DQo+Pj4+IC0tLQ0KPj4+PiB2MjoNCj4+Pj4gLSBzaW1wbGlmaWVkIGNvZGUNCj4+
Pj4gLSBkcm9wcGVkIG5fZmVuY2VzDQo+Pj4+IC0gbmFtZSBjaGFuZ2VzDQo+Pj4+IHYzOiB1c2Ug
dHRtX3Jlc291cmNlX21hbmFnZXJfY2xlYW51cA0KPj4+PiAtLS0NCj4+Pj4NCj4+Pj4gU2lnbmVk
LW9mZi1ieTogUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxvdXgt
cHJheWVyQGFtZC5jb20+DQo+Pj4NCj4+PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+DQo+Pj4gR29pbmcgdG8gcHVzaCBzZXBhcmF0
ZWx5IHRvIGRybS1taXNjLW5leHQgb24gTW9uZGF5Lg0KPj4+DQo+PiBQdXNoaW5nIHRoaXMgYnJv
a2UgZHJtLXRpcCwgdGhlIGFtZCBkcml2ZXIgZmFpbHMgdG8gYnVpbGQsIGFzIGl0J3Mgbm90IHVz
aW5nIHRoZSBldmljdGlvbl9mZW5jZXMgYXJyYXkuDQo+IA0KPiBUaGFua3MgZm9yIHRoZSBub3Rl
ISBCdXQgaHVpPyBXZSBjaGFuZ2VkIGFtZGdwdSB0byBub3QgdG91Y2ggdGhlIG1vdmUgZmVuY2Uu
DQo+IA0KPiBHaXZlIG1lIGEgc2Vjb25kLmNvbW1pdCAxM2JlYzIxZjVmNGNkYWJkZjA2NzI1ZTVh
OGRlZTBiOWI1NmZmNjcxIChIRUFEIC0+IGRybS10aXAsIGRybS10aXAvZHJtLXRpcCwgZHJtLXRp
cC9IRUFEKQ0KDQpBdXRob3I6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCkRhdGU6ICAgV2VkIE5vdiAyNiAxMzoxMzowMyAyMDI1ICswMTAwDQoNCiAgICBkcm0t
dGlwOiAyMDI1eS0xMW0tMjZkLTEyaC0xMm0tNDFzIFVUQyBpbnRlZ3JhdGlvbiBtYW5pZmVzdA0K
DQpkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmM6MjE4ODozNDogZXJyb3I6
IOKAmHN0cnVjdCB0dG1fcmVzb3VyY2VfbWFuYWdlcuKAmSBoYXMgbm8gbWVtYmVyIG5hbWVkIOKA
mG1vdmXigJkNCiAyMTg4IHwgICAgICAgICAgICAgICAgIGRtYV9mZW5jZV9wdXQobWFuLT5tb3Zl
KTsNCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn4NCmRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYzoyMTg5OjIwOiBlcnJvcjog4oCYc3RydWN0
IHR0bV9yZXNvdXJjZV9tYW5hZ2Vy4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYbW92ZeKAmQ0K
IDIxODkgfCAgICAgICAgICAgICAgICAgbWFuLT5tb3ZlID0gTlVMTDsNCiAgICAgIHwgICAgICAg
ICAgICAgICAgICAgIF5+DQoNCklzIHdoYXQgSSBzZWUuDQoNCktpbmQgcmVnYXJkcywNCn5NYWFy
dGVuIExhbmtob3JzdA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
