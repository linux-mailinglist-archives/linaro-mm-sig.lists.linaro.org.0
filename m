Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1458EBA9EC8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 18:03:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFD0D45D5A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 16:02:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	by lists.linaro.org (Postfix) with ESMTPS id 7223F3F6DA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 16:02:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="ev/wvcJc";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 192.198.163.13 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1759161775; x=1790697775;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=sa4vOqStlRWx+pnElXwlq41XYsVMuUc+Fv3EjNwqrl8=;
  b=ev/wvcJcthca34YProv+9Ie1p5gz9O8fB8MzroXMJuFLmEv++6vFVTvb
   uXyGbdYSYy3i+vkR+0Dy82wzn+vIkXWMK/Krd3ikvlFjUJHOK/pxo1j9U
   cuBx3z3yh8tPefh8UM4Z1vz1PgjcoUZ2+jE3yBZ3qp5ipfhf0UnCNcQ24
   YVR2go35TMj1HwLvPucjHEkwcnYN677aN+h4/ASYqJTQoVdMoq6YCfH6F
   8wdE+0fC86J0hhfdSJZ0ynUGQJypc5/EucRXau8i7FMB93yFd11NYN1xI
   vWXdIiF0ou1grYPr5tvDog/qtByvXEK0Fg0zWlAmtTOCi4JLa41NbcL9J
   A==;
X-CSE-ConnectionGUID: qJc0MQCIRj2+2MtTZTTzLg==
X-CSE-MsgGUID: wyGe2gWoQemyk0UgyagVUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="64030385"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800";
   d="scan'208";a="64030385"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Sep 2025 09:02:54 -0700
X-CSE-ConnectionGUID: lcRhvZM1R7y6Kq3HHw3jGA==
X-CSE-MsgGUID: 8EWJNpPdT76OhVsFiJbUzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800";
   d="scan'208";a="178082855"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO [10.245.245.197]) ([10.245.245.197])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Sep 2025 09:02:52 -0700
Message-ID: <071c1bedd6fd902da9725c74c1b892c9fe76179c.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Christian =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>
Date: Mon, 29 Sep 2025 18:02:50 +0200
In-Reply-To: <20250929124535.GI2617119@nvidia.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
	 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
	 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
	 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
	 <20250926144128.GD2617119@nvidia.com>
	 <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
	 <20250926160036.GE2617119@nvidia.com>
	 <f33a4344-545a-43f4-9a3b-24bf070d559c@amd.com>
	 <20250929124535.GI2617119@nvidia.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 7223F3F6DA
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-7.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
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
Message-ID-Hash: ZABBNSLVTGFVZT4EEGCHBFTNBPCAEURK
X-Message-ID-Hash: ZABBNSLVTGFVZT4EEGCHBFTNBPCAEURK
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZABBNSLVTGFVZT4EEGCHBFTNBPCAEURK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIE1vbiwgMjAyNS0wOS0yOSBhdCAwOTo0NSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOg0KPiBPbiBNb24sIFNlcCAyOSwgMjAyNSBhdCAxMDoxNjozMEFNICswMjAwLCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOg0KPiANCj4gPiBUaGUgcG9pbnQgaXMgdGhhdCB0aGUgZXhwb3J0
ZXIgbWFuYWdlcyBhbGwgYWNjZXNzZXMgdG8gaXQncyBidWZmZXINCj4gPiBhbmQgdGhlcmUgY2Fu
IGJlIG1vcmUgdGhhbiBvbmUgaW1wb3J0ZXIgYWNjZXNzaW5nIGl0IGF0IHRoZSBzYW1lDQo+ID4g
dGltZS4NCj4gPiANCj4gPiBTbyB3aGVuIGFuIGV4cG9ydGVyIHNlZXMgdGhhdCBpdCBhbHJlYWR5
IGhhcyBhbiBpbXBvcnRlciB3aGljaCBjYW4NCj4gPiBvbmx5IGRvIERNQSB0byBzeXN0ZW0gbWVt
b3J5IGl0IHdpbGwgZXhwb3NlIG9ubHkgRE1BIGFkZHJlc3MgdG8gYWxsDQo+ID4gb3RoZXIgaW1w
b3J0ZXJzIGFzIHdlbGwuDQo+IA0KPiBJIHdvdWxkIHJlcGhyYXNlIHRoYXQsIGlmIHRoZSBleHBv
cnRlciBzdXBwb3J0cyBtdWx0aXBsZSBwbGFjZW1lbnQNCj4gb3B0aW9ucyBmb3IgdGhlIG1lbW9y
eSAoVlJBTS9DUFUgZm9yIGV4YW1wbGUpIHRoZW4gaXQgbmVlZHMgdG8gdHJhY2sNCj4gd2hpY2gg
cGxhY2VtZW50IG9wdGlvbnMgYWxsIGl0cyBpbXBvcnRlciBzdXBwb3J0IGFuZCBuZXZlciBwbGFj
ZSB0aGUNCj4gbWVtb3J5IHNvbWVwbGFjZSBhbiBhY3RpdmUgaW1wb3J0ZXIgY2Fubm90IHJlYWNo
Lg0KPiANCj4gSSBkb24ndCB3YW50IHRvIHNheSB0aGF0IGp1c3QgYmVjYXVzZSBvbmUgaW1wb3J0
ZXIgd2FudHMgdG8gdXNlDQo+IGRtYV9hZGRyX3QgdGhlbiBhbGwgcHJpdmF0ZSBpbnRlcmNvbm5l
Y3Qgb3B0aW9ucyBhcmUgZGlzYWJsZWQuIElmIHRoZQ0KPiBtZW1vcnkgaXMgaW4gVlJBTSB0aGVu
IG11bHRpcGxlIGltcG9ydGVycyB1c2luZyBwcml2YXRlIGludGVyY29ubmVjdA0KPiBjb25jdXJy
ZW50bHkgd2l0aCBkbWFfYWRkcl90IHNob3VsZCBiZSBwb3NzaWJsZS4NCj4gDQo+IFRoaXMgc2Vl
bXMgbGlrZSBpdCBpcyBtYWtpbmcgdGhlIGFyZ3VtZW50IHRoYXQgdGhlIGV4cG9ydGVyIGRvZXMg
bmVlZA0KPiB0byBrbm93IHRoZSBpbXBvcnRlciBjYXBhYmlsaXR5IHNvIGl0IGNhbiBmaWd1cmUg
b3V0IHdoYXQgcGxhY2VtZW50DQo+IG9wdGlvbnMgYXJlIHZhbGlkLg0KPiANCj4gPiA+IEkgZGlk
bid0IHNrZXRjaCBmdXJ0aGVyLCBidXQgSSB0aGluayB0aGUgZXhwb3J0ZXIgYW5kIGltcG9ydGVy
DQo+ID4gPiBzaG91bGQNCj4gPiA+IGJvdGggYmUgcHJvdmlkaW5nIGEgY29tcGF0aWJsZSBsaXN0
IGFuZCB0aGVuIGluIGFsbW9zdCBhbGwgY2FzZXMNCj4gPiA+IHRoZQ0KPiA+ID4gY29yZSBjb2Rl
IHNob3VsZCBkbyB0aGUgbWF0Y2hpbmcuDQo+ID4gDQo+ID4gTW9yZSBvciBsZXNzIG1hdGNoZXMg
bXkgaWRlYS4gSSB3b3VsZCBqdXN0IHN0YXJ0IHdpdGggdGhlIGV4cG9ydGVyDQo+ID4gcHJvdmlk
aW5nIGEgbGlzdCBvZiBob3cgaXQncyBidWZmZXIgaXMgYWNjZXNzaWJsZSBiZWNhdXNlIGl0IGtu
b3dzDQo+ID4gYWJvdXQgb3RoZXIgaW1wb3J0ZXJzIGFuZCBjYW4gcHJlLXJlZHVjZSB0aGUgbGlz
dCBpZiBuZWNlc3NhcnkuDQo+IA0KPiBJIHRoaW5rIHRoZSBpbXBvcnRlciBhbHNvIGhhcyB0byBh
ZHZlcnRpc2Ugd2hhdCBpdCBpcyBhYmxlIHRvDQo+IHN1cHBvcnQuDQo+IEEgYmlnIHBvaW50IG9m
IHRoZSBwcml2YXRlIGludGVyY29ubmVjdCBpcyB0aGF0IGl0IHdvbid0IHVzZQ0KPiBzY2F0dGVy
bGlzdCBzbyBpdCBuZWVkcyB0byBiZSBhIG5lZ290aWF0ZWQgZmVhdHVyZS4NCj4gDQo+ID4gPiBG
b3IgZXhhbXBsZSwgd2UgaGF2ZSBzb21lIHN5c3RlbXMgd2l0aCBtdWx0aXBhdGggUENJLiBUaGlz
IGNvdWxkDQo+ID4gPiBhY3R1YWxseSBzdXBwb3J0IHRob3NlIHByb3Blcmx5LiBUaGUgUkRNQSBO
SUMgaGFzIHR3byBzdHJ1Y3QNCj4gPiA+IGRldmljZXMNCj4gPiA+IGl0IG9wZXJhdGVzIHdpdGgg
ZGlmZmVyZW50IHBhdGhzLCBzbyBpdCB3b3VsZCB3cml0ZSBvdXQgdHdvDQo+ID4gPiAmZG1hYnVm
X2dlbmVyaWNfZG1hX2FkZHJfdCdzIC0gb25lIGZvciBlYWNoLg0KPiA+IA0KPiA+IFRoYXQgaXMg
YWN0dWFsbHkgc29tZXRoaW5nIHdlIHRyeSByYXRoZXIgaGFyZCB0byBhdm9pZC4gRS5nLiB0aGUN
Cj4gPiBleHBvcnRlciBzaG91bGQgb2ZmZXIgb25seSBvbmUgcGF0aCB0byBlYWNoIGltcG9ydGVy
Lg0KPiANCj4gUmVhbCBzeXN0ZW1zIGhhdmUgbXVsdGlwYXRoLiBXZSBuZWVkIHRvIGRvIGEgTnhN
IG5lZ290aWF0aW9uIHdoZXJlDQo+IGJvdGggc2lkZXMgb2ZmZXIgYWxsIHRoZWlyIHBhdGhzIGFu
ZCB0aGUgYmVzdCBxdWFsaXR5IHBhdGggaXMNCj4gc2VsZWN0ZWQuDQo+IA0KPiBPbmNlIHRoZSBh
dHRhY2htZW50IGlzIG1hZGUgaXQgc2hvdWxkIGJlIG9uZSBpbnRlcmNvbm5lY3QgYW5kIG9uZQ0K
PiBzdGFibGUgYWRkcmVzcyB3aXRoaW4gdGhhdCBpbnRlcmNvbm5lY3QuDQo+IA0KPiBJbiB0aGlz
IGV4YW1wbGUgSSdkIGV4cGVjdCB0aGUgWGUgR1BVIGRyaXZlciB0byBhbHdheXMgb2ZmZXIgaXRz
DQo+IHByaXZhdGUgaW50ZXJjb25uZWN0IGFuZCBhIGRtYV9hZGRyX3QgYmFzZWQgaW50ZXJjb25u
Y3QgYXMgYm90aA0KPiBleHBvcnRlciBhbmQgaW1wb3J0ZXIuIFRoZSBjb3JlIGNvZGUgc2hvdWxk
IHNlbGVjdCBvbmUgZm9yIHRoZQ0KPiBhdHRhY2htZW50Lg0KPiANCj4gPiBXZSBjYW4gb2YgY291
cnNlIGRvIGxvYWQgYmFsYW5jaW5nIG9uIGEgcm91bmQgcm9iaW4gYmFzZXMuDQo+IA0KPiBJJ20g
bm90IHRoaW5raW5nIGFib3V0IGxvYWQgYmFsYW5jaW5nLCBtb3JlIGEgJ3F1YWxpdHkgb2YgcGF0
aCcNCj4gbWV0cmljLg0KDQpUaGlzIHNvdW5kcyBsaWtlIGl0J3MgZ2V0dGluZyBpbmNyZWFzaW5n
bHkgY29tcGxleC4gVEJIIEkgdGhpbmsgdGhhdCBhdA0KbGVhc3QgYWxsIGZhc3QgaW50ZXJjb25u
ZWN0cyB3ZSBoYXZlIGluIHRoZSBwbGFubmluZyBmb3IgeGUgZWl0aGVyIGFyZQ0KZmluZSB3aXRo
IGZhbGxpbmcgYmFjayB0byB0aGUgY3VycmVudCBwY2llLXAycCAvIGRtYS1idWYgb3IgaW4gd29y
c3QNCmNhc2Ugc3lzdGVtIG1lbW9yeS4gVGhlIHZpcnR1YWwgaW50ZXJjb25uZWN0IHdlJ3ZlIGJl
ZW4gZGlzY3Vzc2luZw0Kd291bGQgcHJvYmFibHkgbm90IGJlIGFibGUgdG8gZmFsbCBiYWNrIGF0
IGFsbCB1bmxlc3MgbmVnb3RpYXRpb24gZ2V0cw0Kc29tZWhvdyBmb3J3YXJkZWQgdG8gdGhlIHZt
IGd1ZXN0Lg0KDQpTbyBJIHdvbmRlciB3aGV0aGVyIGZvciBub3cgaXQncyBzaW1wbHkgc3VmZmlj
aWVudCB0byANCg0Kc2dfdGFibGVfcmVwbGFjZW1lbnQgPSBkbWFfYnVmX21hcF9pbnRlcmNvbm5l
Y3QoKTsNCg0KaWYgKElTX0VSUk9SKHNnX2xpc3RfcmVwbGFjZW1lbnQpKSB7DQoJc2dfdGFibGUg
PSBkbWFfYnVmX21hcF9hdHRhY2htZW50KCk7DQoJaWYgKElTX0VSUk9SKHNnX3RhYmxlKSkNCgkJ
YmFpbCgpOw0KfQ0KDQovVGhvbWFzDQoNCg0KDQoNCj4gDQo+IEphc29uDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
