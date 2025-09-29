Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DFABA8634
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 10:25:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFF92456B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 08:25:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	by lists.linaro.org (Postfix) with ESMTPS id 915B041226
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 08:25:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=gdL05l+G;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 198.175.65.11 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1759134312; x=1790670312;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=SkljFC53J8twn2X6cXUMB3XSIOvCtrGLWbPUzii5Oss=;
  b=gdL05l+G5z+PJBKWe7mtFa+ZEuWdinDBoMjdhqnCoDLy3xEa0X73VZyJ
   yHueo2vmsRT76VB5eXbauA+UTBZDfRLTT0teO4FYr6ULbQjFOp+A3Dv/B
   RjWo6zVWjcGEJR0dejmERd1Kk6tGJZNDKIpH5BjQ9MefG4jjctpc4Y0a7
   jmyNDiFQq/wa2kmo9IY2R8yoSEcOhzrNEXeeN2dmuLQq0mW/EwL7m+Y2N
   6vDk2+Av/6ppcI3sf6evq94FkzmpMVzWiWQXm879ZQYDvOh79Ca/SYnqd
   9x5PvmpENbHhehuhYhjq+gLFs7HSZJzc1XuunX9h99fAGXXiZHqkNoPhy
   w==;
X-CSE-ConnectionGUID: rlhE74ezTwWnMqqLdtk/Qg==
X-CSE-MsgGUID: 2uF3gf7aQW+cOpoIleEk6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="71617572"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800";
   d="scan'208";a="71617572"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Sep 2025 01:25:11 -0700
X-CSE-ConnectionGUID: oBV59mbYQf2bxdiXMpjNew==
X-CSE-MsgGUID: Dm+G7RNJT/6nFeaAElQvZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800";
   d="scan'208";a="178234154"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO [10.245.245.197]) ([10.245.245.197])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Sep 2025 01:25:09 -0700
Message-ID: <42520738dbc23174181db7d31d55de56996fba88.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jason
 Gunthorpe <jgg@nvidia.com>
Date: Mon, 29 Sep 2025 10:25:06 +0200
In-Reply-To: <a5ffd1ee-b0b5-40bd-b68f-3779ca70dcae@amd.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
	 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
	 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
	 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
	 <20250926144128.GD2617119@nvidia.com>
	 <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
	 <20250926160036.GE2617119@nvidia.com>
	 <d3cc5b7fe4189c6f529b532273ece34c9c0e975f.camel@linux.intel.com>
	 <a5ffd1ee-b0b5-40bd-b68f-3779ca70dcae@amd.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 915B041226
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-7.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	HAS_ORG_HEADER(0.00)[];
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
Message-ID-Hash: HBFFTBPDR5YX7UQZDK5R3UIS4OQ2GVWV
X-Message-ID-Hash: HBFFTBPDR5YX7UQZDK5R3UIS4OQ2GVWV
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HBFFTBPDR5YX7UQZDK5R3UIS4OQ2GVWV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDI1LTA5LTI5IGF0IDEwOjIwICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAyOS4wOS4yNSAxMDoxNiwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6DQo+ID4gT24g
RnJpLCAyMDI1LTA5LTI2IGF0IDEzOjAwIC0wMzAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6DQo+
ID4gPiBPbiBGcmksIFNlcCAyNiwgMjAyNSBhdCAwNDo1MToyOVBNICswMjAwLCBDaHJpc3RpYW4g
S8O2bmlnIHdyb3RlOg0KPiA+ID4gPiBPbiAyNi4wOS4yNSAxNjo0MSwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOg0KPiA+ID4gPiA+IE9uIEZyaSwgU2VwIDI2LCAyMDI1IGF0IDAzOjUxOjIxUE0gKzAy
MDAsIFRob21hcyBIZWxsc3Ryw7ZtDQo+ID4gPiA+ID4gd3JvdGU6DQo+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gPiBXZWxsIGJvdGggZXhwb3J0ZXIgYW5kIGV4cG9ydGVyIGhhcyBzcGVjaWZpYyBpbmZv
cm1hdGlvbg0KPiA+ID4gPiA+ID4gV1JUDQo+ID4gPiA+ID4gPiB0aGlzLiBUaGUNCj4gPiA+ID4g
PiA+IHVsdGltYXRlIGRlY2lzaW9uIGlzIGRvbmUgaW4gdGhlIGV4cG9ydGVyIGF0dGFjaCgpDQo+
ID4gPiA+ID4gPiBjYWxsYmFjaywNCj4gPiA+ID4gPiA+IGp1c3QgbGlrZQ0KPiA+ID4gPiA+ID4g
cGNpZV9wMnAuIEFuZCB0aGUgZXhwb3J0ZXIgYWNrbm93bGVkZ2VzIHRoYXQgYnkgc2V0dGluZyB0
aGUNCj4gPiA+ID4gPiA+IGRtYV9idWZfYXR0YWNobWVudDo6aW50ZXJjb25uZWN0X2F0dGFjaCBm
aWVsZC4gSW4gYW5hbG9neQ0KPiA+ID4gPiA+ID4gd2l0aA0KPiA+ID4gPiA+ID4gdGhlDQo+ID4g
PiA+ID4gPiBkbWFfYnVmX2F0dGFjaG1lbnQ6OnBlZXIycGVlciBtZW1iZXIuDQo+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gSGF2aW5nIGEgc2luZ2xlIG9wdGlvbiBzZWVtcyB0b28gbGltaXRlZCB0byBt
ZS4uDQo+ID4gPiA+IA0KPiA+ID4gPiBZZWFoLCBhZ3JlZS4NCj4gPiA+ID4gDQo+ID4gPiA+ID4g
SSB0aGluayBpdCB3b3VsZCBiZSBuaWNlIGlmIHRoZSBpbXBvcnRlciBjb3VsZCBzdXBwbHkgYSBs
aXN0DQo+ID4gPiA+ID4gb2YNCj4gPiA+ID4gPiAnaW50ZXJjb25uZWN0cycgaXQgY2FuIGFjY2Vw
dCwgZWc6DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gwqAtIFZSQU0gb2Zmc2V0IHdpdGhpbiB0aGlz
IHNwZWNpZmljIFZSQU0gbWVtb3J5DQo+ID4gPiA+ID4gwqAtIGRtYV9hZGRyX3QgZm9yIHRoaXMg
c3RydWN0IGRldmljZQ0KPiA+ID4gPiA+IMKgLSAiSU9WQSIgZm9yIHRoaXMgaW5pdGlhdG9yIG9u
IGEgcHJpdmF0ZSBpbnRlcmNvbm5lY3QNCj4gPiA+ID4gPiDCoC0gUENJIGJhciBzbGljZQ0KPiA+
ID4gPiA+IMKgLSBwaHlzX2FkZHJfdCAodXNlZCBiZXR3ZWVuIHZmaW8sIGt2bSwgaW9tbXVmZCkN
Cj4gPiA+ID4gDQo+ID4gPiA+IEkgd291bGQgcmF0aGVyIHNheSB0aGF0IHRoZSBleHBvcnRlciBz
aG91bGQgcHJvdmlkZSB0aGUgbGlzdCBvZg0KPiA+ID4gPiB3aGF0DQo+ID4gPiA+IGludGVyY29u
bmVjdHMgdGhlIGJ1ZmZlciBtaWdodCBiZSBhY2Nlc3NpYmxlIHRocm91Z2guDQo+ID4gPiANCj4g
PiA+IEVpdGhlciBkaXJlY3Rpb24gd29ya3MsIEkgc2tldGNoZWQgaXQgbGlrZSB0aGlzIGJlY2F1
c2UgSSB0aG91Z2h0DQo+ID4gPiB0aGVyZSB3ZXJlIG1vcmUgaW1wb3J0ZXJzIHRoYW4gZXhwb3J0
ZXJzLCBhbmQgaW4gdGhlIGZsb3cgaXQgaXMNCj4gPiA+IGVhc3kNCj4gPiA+IGZvciB0aGUgaW1w
b3J0ZXIgdG8gcHJvdmlkZSBhIGxpc3Qgb24gdGhlIHN0YWNrDQo+ID4gPiANCj4gPiA+IEkgZGlk
bid0IHNrZXRjaCBmdXJ0aGVyLCBidXQgSSB0aGluayB0aGUgZXhwb3J0ZXIgYW5kIGltcG9ydGVy
DQo+ID4gPiBzaG91bGQNCj4gPiA+IGJvdGggYmUgcHJvdmlkaW5nIGEgY29tcGF0aWJsZSBsaXN0
IGFuZCB0aGVuIGluIGFsbW9zdCBhbGwgY2FzZXMNCj4gPiA+IHRoZQ0KPiA+ID4gY29yZSBjb2Rl
IHNob3VsZCBkbyB0aGUgbWF0Y2hpbmcuDQo+ID4gPiANCj4gPiA+IElmIHRoZSBpbXBvcnRlciB3
b3JrcyBhcyBJIHNob3dlZCwgdGhlbiB0aGUgZXhwb3J0ZXIgdmVyc2lvbg0KPiA+ID4gd291bGQg
YmUNCj4gPiA+IGluIGFuIG9wOg0KPiA+ID4gDQo+ID4gPiBpbnQgZXhwb3J0ZXJfbmVnb3RpYXRl
X29wKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQo+ID4gPiDCoMKgIHN0cnVjdCBkbWFfYnVmX2lu
dGVyY29ubmVjdF9uZWdvdGlhdGlvbiAqaW1wb3J0ZXJfc3VwcG9ydCwNCj4gPiA+IHNpemVfdA0K
PiA+ID4gaW1wb3J0ZXJfbGVuKQ0KPiA+ID4gew0KPiA+ID4gwqDCoMKgwqAgc3RydWN0IGRtYV9i
dWZfaW50ZXJjb25uZWN0X25lZ290aWF0aW9uIGV4cG9ydGVyX3N1cHBvcnRbMl0NCj4gPiA+ID0g
ew0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCBbMF0gPSB7LmludGVyY29ubmVjdCA9IG15c2VsZi0+
eGVfdnJhbX0sDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgIFsxXSA9IHsuaW50ZXJjb25uZWN0ID0g
JmRtYWJ1Zl9nZW5lcmljX2RtYV9hZGRyX3QsDQo+ID4gPiAuaW50ZXJjb25uZWN0X2FyZ3MgPSBl
eHBvcnRlcl9kZXZ9LA0KPiA+ID4gwqDCoMKgwqAgfTsNCj4gPiA+IMKgwqDCoMKgIHJldHVybiBk
bWFfYnVmX2hlbHBlcl9uZWdvdGlhdGUoZG1hYnVmLCBleHBvcnRlcl9zdXBwb3J0LA0KPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEFSUkFZX1NJWkUoZXhwb3J0ZXJfc3VwcG9ydCksIGlt
cG9ydGVyX3N1cHBvcnQsDQo+ID4gPiBpbXBvcnRlcl9sZW4pOw0KPiA+ID4gfQ0KPiA+ID4gDQo+
ID4gPiBXaGljaCB0aGUgZG1hX2J1Zl9uZWdvdGlhdGUoKSBjYWxscy4NCj4gPiA+IA0KPiA+ID4g
VGhlIGNvcmUgY29kZSBkb2VzIHRoZSBtYXRjaGluZyBnZW5lcmljYWxseSwgcHJvYmFibHkgdGhl
cmUgaXMgYQ0KPiA+ID4gc3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0IG1hdGNoKCkgb3AgaXQg
dXNlcyB0byBoZWxwIHRoaXMNCj4gPiA+IHByb2Nlc3MuDQo+ID4gPiANCj4gPiA+IEkgZG9uJ3Qg
dGhpbmsgaW1wb3J0ZXIgb3IgZXhwb3J0ZXIgc2hvdWxkIGJlIG9wZW4gY29kaW5nIGFueQ0KPiA+
ID4gbWF0Y2hpbmcuDQo+ID4gPiANCj4gPiA+IEZvciBleGFtcGxlLCB3ZSBoYXZlIHNvbWUgc3lz
dGVtcyB3aXRoIG11bHRpcGF0aCBQQ0kuIFRoaXMgY291bGQNCj4gPiA+IGFjdHVhbGx5IHN1cHBv
cnQgdGhvc2UgcHJvcGVybHkuIFRoZSBSRE1BIE5JQyBoYXMgdHdvIHN0cnVjdA0KPiA+ID4gZGV2
aWNlcw0KPiA+ID4gaXQgb3BlcmF0ZXMgd2l0aCBkaWZmZXJlbnQgcGF0aHMsIHNvIGl0IHdvdWxk
IHdyaXRlIG91dCB0d28NCj4gPiA+ICZkbWFidWZfZ2VuZXJpY19kbWFfYWRkcl90J3MgLSBvbmUg
Zm9yIGVhY2guDQo+ID4gPiANCj4gPiA+IFRoZSBHUFUgd291bGQgZG8gdGhlIHNhbWUuIFRoZSBj
b3JlIGNvZGUgY2FuIGhhdmUgZ2VuZXJpYyBjb2RlIHRvDQo+ID4gPiBldmFsdWF0ZSBpZiBQMlAg
aXMgcG9zc2libGUgYW5kIGVzdGltYXRlIHNvbWUgUU9SIGJldHdlZW4gdGhlDQo+ID4gPiBvcHRp
b25zLg0KPiA+IA0KPiA+IFRoaXMgc291bmRzIE9LIHdpdGggbWUuIEkgaGF2ZSBzb21lIGFkZGl0
aW9uYWwgcXVlc3Rpb25zLCB0aG91Z2gsDQo+ID4gDQo+ID4gMSkgRXZlcnlib2R5IGFncmVlcyB0
aGF0IHRoZSBpbnRlcmNvbm5lY3QgdXNlZCBpcyBhIHByb3BlcnR5IG9mIHRoZQ0KPiA+IGF0dGFj
aG1lbnQ/IEl0IHNob3VsZCBiZSBuZWdvdGlhdGVkIGR1cmluZyBhdHRhY2goKT8NCj4gDQo+IFll
cywgYXR0YWNoIGFsbG93cyB0aGUgZXhwb3J0ZXIgdG8ga25vdyB3aG8gd2FudHMgdG8gYWNjZXNz
IGl0J3MNCj4gYnVmZmVyLg0KPiANCj4gTWFwL3VubWFwIHRoZW4gcmVxdWVzdHMgdGhlIGFjdHVh
bCBsb2NhdGlvbiB3aGVyZSB0aGUgZXhwb3J0ZXIgaGFzDQo+IG1vdmVkIHRoZSBidWZmZXIgc28g
dGhhdCBpdCBpcyBhY2Nlc3NpYmxlIGJ5IGV2ZXJ5Ym9keS4NCj4gDQo+ID4gMikgZG1hLWJ1ZiBw
Y2llLXAycCBhbGxvd3MgdHJhbnNwYXJlbnQgZmFsbGJhY2sgdG8gc3lzdGVtIG1lbW9yeQ0KPiA+
IGRtYS0NCj4gPiBidWYuIEkgdGhpbmsgdGhhdCBpcyBhIGdvb2QgdGhpbmcgdG8ga2VlcCBldmVu
IGZvciBvdGhlcg0KPiA+IGludGVyY29ubmVjdHMNCj4gPiAoaWYgcG9zc2libGUpLiBMaWtlIGlm
IHNvbWVvbmUgd2FudHMgdG8gcHVsbCB0aGUgbmV0d29yayBjYWJsZSwgd2UNCj4gPiBjb3VsZCB0
cmlnZ2VyIGEgbW92ZV9ub3RpZnkoKSBhbmQgb24gbmV4dCBtYXAoKSB3ZSdkIGZhbGwgYmFjay4g
QW55DQo+ID4gaWRlYXMgYXJvdW5kIHRoaXM/DQo+IA0KPiBXZSBhbHJlYWR5IGRvIHRoYXQgaWYg
bmV3IGltcG9ydGVycyBjb21lIGFsb25nLg0KPiANCj4gRS5nLiB5b3UgaGF2ZSBhIGNvbm5lY3Rp
b24gd2hpY2ggY2FuIGRvIFBDSWUgUDJQIGFuZCB0aGVuIHN1ZGRlbmx5DQo+IHNvbWVib2R5IGF0
dGFjaGVzIHdoaWNoIGNhbiBvbmx5IGRvIERNQSB0byBzeXN0ZW0gbWVtb3J5LiBJbiB0aGF0DQo+
IHNpdHVhdGlvbiB3ZSB1c2UgbW92ZV9ub3RpZnkgdG8gbW92ZSB0aGUgYnVmZmVyIGludG8gc3lz
dGVtIG1lbW9yeQ0KPiBhbmQgaW1wb3J0cyByZS1tYXAgaXQgdG8gZ3Jhc3AgdGhlIG5ldyBsb2Nh
dGlvbi4NCg0KU3VyZSwgSnVzdCB3YW5kZXJpbmcgd2hldGhlciB3ZSBzaG91bGQgZG9jdW1lbnQg
YW5kIHJlcXVpcmUgdGhhdCBhbHNvDQpmb3IgZmFzdCBpbnRlcmNvbm5lY3RzLiBTbyB0aGF0IGlm
IHdlIHVzZSBhIG5ldyBtYXBfYXR0YWNobWVudCgpDQpmdW5jdGlvbiwgbGlrZSB3YXMgc3VnZ2Vz
dGVkIGVhbGllciwgaWYgdGhhdCBmYWlscywgdGhlIGltcG9ydGVyIHNob3VsZA0KaWRlYWxseSBy
ZXRyeSB3aXRoIHRoZSBvbGQgb25lIHRvIGdldCBhbiBzZy1saXN0IHRvIHN5c3RlbSBtZW1vcnk/
DQoNClRoYW5rcywNClRob21hcw0KDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4g
DQo+ID4gDQo+ID4gVGhhbmtzLA0KPiA+IFRob21hcw0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+ID4g
DQo+ID4gPiBKYXNvbg0KPiA+IA0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
