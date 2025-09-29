Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6709DBA85E9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 10:16:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECC3044B56
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 08:16:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	by lists.linaro.org (Postfix) with ESMTPS id C3A7B41226
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 08:16:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=U42egk9f;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 192.198.163.14 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1759133795; x=1790669795;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=SnlqN1mumhwBKc4PNmKCKRfU3VEW0DNHRfvCd0sbaJs=;
  b=U42egk9f53wlpIpGjDZQuAWAC1yqGWY9HASk8seGDLA0+7vBuUgdBY/H
   sI9GzhSDgwntBUh3jcAyxo6pEfGh1s3vmSeBVrsduOSav5I8ZQ0UNAK7q
   P2OsT6fPT93t/tx3PcN3gjdXauaHxpfv9jfOSbYITbE722OD/4pN84eXP
   u9Jp3kbTucDmfR/H7qpkd5NFQec+QTOHUCnBgRmCss4ZPzW0vB3OLikF7
   L2XIi3vOFcN8F6HbvJ7nnxz+f09Ga9Im1bih8eGLuKeaE026KXOBcjwht
   9uGjzUa3Bn8ReeRIYmZ/OycbSCrzBnmZqepojRT0j/oF2LUaWeQqCzP5n
   Q==;
X-CSE-ConnectionGUID: iNeqbE2pTdOLbsMirnZjOQ==
X-CSE-MsgGUID: oad0kj0RTj+ugXgbCxvzQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="61417112"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800";
   d="scan'208";a="61417112"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Sep 2025 01:16:33 -0700
X-CSE-ConnectionGUID: 0JxY8mmpQ4Sad/Ggo2Z17w==
X-CSE-MsgGUID: pZlUf9WmQK6XlelLVKn/iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800";
   d="scan'208";a="178601499"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO [10.245.245.197]) ([10.245.245.197])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Sep 2025 01:16:31 -0700
Message-ID: <d3cc5b7fe4189c6f529b532273ece34c9c0e975f.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Christian =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>
Date: Mon, 29 Sep 2025 10:16:29 +0200
In-Reply-To: <20250926160036.GE2617119@nvidia.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
	 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
	 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
	 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
	 <20250926144128.GD2617119@nvidia.com>
	 <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
	 <20250926160036.GE2617119@nvidia.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: C3A7B41226
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-7.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6CHL2SGQAZOUMFX7CU35RTCLIJ4XR2IS
X-Message-ID-Hash: 6CHL2SGQAZOUMFX7CU35RTCLIJ4XR2IS
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6CHL2SGQAZOUMFX7CU35RTCLIJ4XR2IS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDI1LTA5LTI2IGF0IDEzOjAwIC0wMzAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6
DQo+IE9uIEZyaSwgU2VwIDI2LCAyMDI1IGF0IDA0OjUxOjI5UE0gKzAyMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6DQo+ID4gT24gMjYuMDkuMjUgMTY6NDEsIEphc29uIEd1bnRob3JwZSB3cm90
ZToNCj4gPiA+IE9uIEZyaSwgU2VwIDI2LCAyMDI1IGF0IDAzOjUxOjIxUE0gKzAyMDAsIFRob21h
cyBIZWxsc3Ryw7ZtIHdyb3RlOg0KPiA+ID4gDQo+ID4gPiA+IFdlbGwgYm90aCBleHBvcnRlciBh
bmQgZXhwb3J0ZXIgaGFzIHNwZWNpZmljIGluZm9ybWF0aW9uIFdSVA0KPiA+ID4gPiB0aGlzLiBU
aGUNCj4gPiA+ID4gdWx0aW1hdGUgZGVjaXNpb24gaXMgZG9uZSBpbiB0aGUgZXhwb3J0ZXIgYXR0
YWNoKCkgY2FsbGJhY2ssDQo+ID4gPiA+IGp1c3QgbGlrZQ0KPiA+ID4gPiBwY2llX3AycC4gQW5k
IHRoZSBleHBvcnRlciBhY2tub3dsZWRnZXMgdGhhdCBieSBzZXR0aW5nIHRoZQ0KPiA+ID4gPiBk
bWFfYnVmX2F0dGFjaG1lbnQ6OmludGVyY29ubmVjdF9hdHRhY2ggZmllbGQuIEluIGFuYWxvZ3kg
d2l0aA0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gZG1hX2J1Zl9hdHRhY2htZW50OjpwZWVyMnBlZXIg
bWVtYmVyLg0KPiA+ID4gDQo+ID4gPiBIYXZpbmcgYSBzaW5nbGUgb3B0aW9uIHNlZW1zIHRvbyBs
aW1pdGVkIHRvIG1lLi4NCj4gPiANCj4gPiBZZWFoLCBhZ3JlZS4NCj4gPiANCj4gPiA+IEkgdGhp
bmsgaXQgd291bGQgYmUgbmljZSBpZiB0aGUgaW1wb3J0ZXIgY291bGQgc3VwcGx5IGEgbGlzdCBv
Zg0KPiA+ID4gJ2ludGVyY29ubmVjdHMnIGl0IGNhbiBhY2NlcHQsIGVnOg0KPiA+ID4gDQo+ID4g
PiDCoC0gVlJBTSBvZmZzZXQgd2l0aGluIHRoaXMgc3BlY2lmaWMgVlJBTSBtZW1vcnkNCj4gPiA+
IMKgLSBkbWFfYWRkcl90IGZvciB0aGlzIHN0cnVjdCBkZXZpY2UNCj4gPiA+IMKgLSAiSU9WQSIg
Zm9yIHRoaXMgaW5pdGlhdG9yIG9uIGEgcHJpdmF0ZSBpbnRlcmNvbm5lY3QNCj4gPiA+IMKgLSBQ
Q0kgYmFyIHNsaWNlDQo+ID4gPiDCoC0gcGh5c19hZGRyX3QgKHVzZWQgYmV0d2VlbiB2ZmlvLCBr
dm0sIGlvbW11ZmQpDQo+ID4gDQo+ID4gSSB3b3VsZCByYXRoZXIgc2F5IHRoYXQgdGhlIGV4cG9y
dGVyIHNob3VsZCBwcm92aWRlIHRoZSBsaXN0IG9mDQo+ID4gd2hhdA0KPiA+IGludGVyY29ubmVj
dHMgdGhlIGJ1ZmZlciBtaWdodCBiZSBhY2Nlc3NpYmxlIHRocm91Z2guDQo+IA0KPiBFaXRoZXIg
ZGlyZWN0aW9uIHdvcmtzLCBJIHNrZXRjaGVkIGl0IGxpa2UgdGhpcyBiZWNhdXNlIEkgdGhvdWdo
dA0KPiB0aGVyZSB3ZXJlIG1vcmUgaW1wb3J0ZXJzIHRoYW4gZXhwb3J0ZXJzLCBhbmQgaW4gdGhl
IGZsb3cgaXQgaXMgZWFzeQ0KPiBmb3IgdGhlIGltcG9ydGVyIHRvIHByb3ZpZGUgYSBsaXN0IG9u
IHRoZSBzdGFjaw0KPiANCj4gSSBkaWRuJ3Qgc2tldGNoIGZ1cnRoZXIsIGJ1dCBJIHRoaW5rIHRo
ZSBleHBvcnRlciBhbmQgaW1wb3J0ZXIgc2hvdWxkDQo+IGJvdGggYmUgcHJvdmlkaW5nIGEgY29t
cGF0aWJsZSBsaXN0IGFuZCB0aGVuIGluIGFsbW9zdCBhbGwgY2FzZXMgdGhlDQo+IGNvcmUgY29k
ZSBzaG91bGQgZG8gdGhlIG1hdGNoaW5nLg0KPiANCj4gSWYgdGhlIGltcG9ydGVyIHdvcmtzIGFz
IEkgc2hvd2VkLCB0aGVuIHRoZSBleHBvcnRlciB2ZXJzaW9uIHdvdWxkIGJlDQo+IGluIGFuIG9w
Og0KPiANCj4gaW50IGV4cG9ydGVyX25lZ290aWF0ZV9vcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
LA0KPiDCoMKgIHN0cnVjdCBkbWFfYnVmX2ludGVyY29ubmVjdF9uZWdvdGlhdGlvbiAqaW1wb3J0
ZXJfc3VwcG9ydCwgc2l6ZV90DQo+IGltcG9ydGVyX2xlbikNCj4gew0KPiDCoMKgwqDCoCBzdHJ1
Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3RfbmVnb3RpYXRpb24gZXhwb3J0ZXJfc3VwcG9ydFsyXSA9
IHsNCj4gwqDCoMKgwqDCoMKgwqDCoCBbMF0gPSB7LmludGVyY29ubmVjdCA9IG15c2VsZi0+eGVf
dnJhbX0sDQo+IMKgwqDCoMKgwqDCoMKgwqAgWzFdID0gey5pbnRlcmNvbm5lY3QgPSAmZG1hYnVm
X2dlbmVyaWNfZG1hX2FkZHJfdCwNCj4gLmludGVyY29ubmVjdF9hcmdzID0gZXhwb3J0ZXJfZGV2
fSwNCj4gwqDCoMKgwqAgfTsNCj4gwqDCoMKgwqAgcmV0dXJuIGRtYV9idWZfaGVscGVyX25lZ290
aWF0ZShkbWFidWYsIGV4cG9ydGVyX3N1cHBvcnQsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBBUlJBWV9TSVpFKGV4cG9ydGVyX3N1cHBvcnQpLCBpbXBvcnRlcl9zdXBwb3J0LA0KPiBpbXBv
cnRlcl9sZW4pOw0KPiB9DQo+IA0KPiBXaGljaCB0aGUgZG1hX2J1Zl9uZWdvdGlhdGUoKSBjYWxs
cy4NCj4gDQo+IFRoZSBjb3JlIGNvZGUgZG9lcyB0aGUgbWF0Y2hpbmcgZ2VuZXJpY2FsbHksIHBy
b2JhYmx5IHRoZXJlIGlzIGENCj4gc3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0IG1hdGNoKCkg
b3AgaXQgdXNlcyB0byBoZWxwIHRoaXMgcHJvY2Vzcy4NCj4gDQo+IEkgZG9uJ3QgdGhpbmsgaW1w
b3J0ZXIgb3IgZXhwb3J0ZXIgc2hvdWxkIGJlIG9wZW4gY29kaW5nIGFueQ0KPiBtYXRjaGluZy4N
Cj4gDQo+IEZvciBleGFtcGxlLCB3ZSBoYXZlIHNvbWUgc3lzdGVtcyB3aXRoIG11bHRpcGF0aCBQ
Q0kuIFRoaXMgY291bGQNCj4gYWN0dWFsbHkgc3VwcG9ydCB0aG9zZSBwcm9wZXJseS4gVGhlIFJE
TUEgTklDIGhhcyB0d28gc3RydWN0IGRldmljZXMNCj4gaXQgb3BlcmF0ZXMgd2l0aCBkaWZmZXJl
bnQgcGF0aHMsIHNvIGl0IHdvdWxkIHdyaXRlIG91dCB0d28NCj4gJmRtYWJ1Zl9nZW5lcmljX2Rt
YV9hZGRyX3QncyAtIG9uZSBmb3IgZWFjaC4NCj4gDQo+IFRoZSBHUFUgd291bGQgZG8gdGhlIHNh
bWUuIFRoZSBjb3JlIGNvZGUgY2FuIGhhdmUgZ2VuZXJpYyBjb2RlIHRvDQo+IGV2YWx1YXRlIGlm
IFAyUCBpcyBwb3NzaWJsZSBhbmQgZXN0aW1hdGUgc29tZSBRT1IgYmV0d2VlbiB0aGUNCj4gb3B0
aW9ucy4NCg0KVGhpcyBzb3VuZHMgT0sgd2l0aCBtZS4gSSBoYXZlIHNvbWUgYWRkaXRpb25hbCBx
dWVzdGlvbnMsIHRob3VnaCwNCg0KMSkgRXZlcnlib2R5IGFncmVlcyB0aGF0IHRoZSBpbnRlcmNv
bm5lY3QgdXNlZCBpcyBhIHByb3BlcnR5IG9mIHRoZQ0KYXR0YWNobWVudD8gSXQgc2hvdWxkIGJl
IG5lZ290aWF0ZWQgZHVyaW5nIGF0dGFjaCgpPw0KDQoyKSBkbWEtYnVmIHBjaWUtcDJwIGFsbG93
cyB0cmFuc3BhcmVudCBmYWxsYmFjayB0byBzeXN0ZW0gbWVtb3J5IGRtYS0NCmJ1Zi4gSSB0aGlu
ayB0aGF0IGlzIGEgZ29vZCB0aGluZyB0byBrZWVwIGV2ZW4gZm9yIG90aGVyIGludGVyY29ubmVj
dHMNCihpZiBwb3NzaWJsZSkuIExpa2UgaWYgc29tZW9uZSB3YW50cyB0byBwdWxsIHRoZSBuZXR3
b3JrIGNhYmxlLCB3ZQ0KY291bGQgdHJpZ2dlciBhIG1vdmVfbm90aWZ5KCkgYW5kIG9uIG5leHQg
bWFwKCkgd2UnZCBmYWxsIGJhY2suIEFueQ0KaWRlYXMgYXJvdW5kIHRoaXM/DQoNClRoYW5rcywN
ClRob21hcw0KDQoNCg0KPiANCj4gSmFzb24NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
