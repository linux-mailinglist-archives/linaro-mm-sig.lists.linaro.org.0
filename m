Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 71375BA06EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 17:48:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CDD8440E5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 15:48:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
	by lists.linaro.org (Postfix) with ESMTPS id 4DCE840E0D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Sep 2025 15:48:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=UKG5FPMx;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 198.175.65.17 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1758815322; x=1790351322;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=6uOfs14Aqkmh7ZhIZTYtj1qjeAot/m+urOPf5j3/fJA=;
  b=UKG5FPMxD1FUDpj0o+RDLLXvViVevVPRhJHALDyPN9MCEWgSttoZkHL6
   HwfOaa6XkWSZ5h8B0fE8hCJL7WVWFRLB8lZmv15q6UI01HXdMP50uK6uf
   vmj+ZvlQcus7Hpebr2udVlyCGkHzhNtc3FI/K/PKZWtYVMOc6U5IVZOLd
   ECqy5gj8LlhhKITL2k3HN+h1vCtvLStY+LWKULuMjLqwjsWHdhAf9eIKA
   o3csz/RCRVv7xYIuUOJirNY+vjrjqwLs3N2pJtwDCk0Sds7qL0lanViyf
   4l82Lnehy5vBpsACkT3nF7OhJ+9A8DDBHaLvEQ8d4IW4mF3RTmG46uV08
   w==;
X-CSE-ConnectionGUID: 0f+T3Xj8TGCZXwKXbpn6dw==
X-CSE-MsgGUID: YHVvRJNXT7yynPAYR/nDvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61088466"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400";
   d="scan'208";a="61088466"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2025 08:48:41 -0700
X-CSE-ConnectionGUID: kaVxsxiqS3qF5W5Lh4zMRQ==
X-CSE-MsgGUID: efH8+4EbSHG6IaAlrtAbQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800";
   d="scan'208";a="177209888"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO [10.245.244.100]) ([10.245.244.100])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2025 08:48:39 -0700
Message-ID: <2e518022d743762fc0c5bde8c0918ee47a18b0aa.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Thu, 25 Sep 2025 17:48:36 +0200
In-Reply-To: <20250925130849.12021-2-thomas.hellstrom@linux.intel.com>
References: <20250925130849.12021-1-thomas.hellstrom@linux.intel.com>
	 <20250925130849.12021-2-thomas.hellstrom@linux.intel.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 4DCE840E0D
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[7];
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
Message-ID-Hash: Q6YKOLP2ZQNQ5BJQIKRBTGDYHTZNTVKI
X-Message-ID-Hash: Q6YKOLP2ZQNQ5BJQIKRBTGDYHTZNTVKI
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q6YKOLP2ZQNQ5BJQIKRBTGDYHTZNTVKI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDI1LTA5LTI1IGF0IDE1OjA4ICswMjAwLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90
ZToNCj4gQWRkIGEgZnVuY3Rpb24gdG8gdGhlIGRtYV9idWZfYXR0YWNoX29wcyB0byBpbmRpY2F0
ZSB3aGV0aGVyIHRoZQ0KPiBjb25uZWN0aW9uIGlzIGEgcHJpdmF0ZSBpbnRlcmNvbm5lY3QuIElm
IHNvIHRoZSBmdW5jdGlvbiByZXR1cm5zDQo+IHRoZSBhZGRyZXNzIHRvIGFuIGludGVyY29ubmVj
dC1kZWZpbmVkIHN0cnVjdHVyZSB0aGF0IGNhbiBiZQ0KPiB1c2VkIGZvciBmdXJ0aGVyIG5lZ290
aWF0aW5nLg0KPiANCj4gQWxzbyBhZGQgYSBmaWVsZCB0byB0aGUgZG1hX2J1Zl9hdHRhY2htZW50
IHRoYXQgaW5kaWNhdGVzIHdoZXRoZXINCj4gYSBwcml2YXRlIGludGVyY29ubmVjdCBpcyB1c2Vk
IGJ5IHRoZSBhdHRhY2htZW50Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLD
tm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBpbmNsdWRl
L2xpbnV4L2RtYS1idWYuaCB8IDE1ICsrKysrKysrKysrKysrKw0KPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAxNSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEt
YnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiBpbmRleCBkNThlMzI5YWMwZTcuLmU3
MTkxZWRiMjEyNSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gKysr
IGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gQEAgLTQ3NSw2ICs0NzUsMTkgQEAgc3RydWN0
IGRtYV9idWZfYXR0YWNoX29wcyB7DQo+IMKgCSAqIHBvaW50IHRvIHRoZSBuZXcgbG9jYXRpb24g
b2YgdGhlIERNQS1idWYuDQo+IMKgCSAqLw0KPiDCoAl2b2lkICgqbW92ZV9ub3RpZnkpKHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCk7DQo+ICsNCj4gKwkvKioNCj4gKwkgKiBAc3Vw
cG9ydHNfaW50ZXJjb25uZWN0OiBbb3B0aW9uYWxdIC0gRG9lcyB0aGUgZHJpdmVyDQo+IHN1cHBv
cnQgYSBsb2NhbCBpbnRlcmNvbm5lY3Q/DQo+ICsJICoNCj4gKwkgKiBEb2VzIHRoZSBpbXBvcnRl
ciBzdXBwb3J0IGEgcHJpdmF0ZSBpbnRlcmNvbm5lY3Q/IFRoZQ0KPiBpbnRlcmNvbm5lY3QgaXMN
Cj4gKwkgKiBpZGVudGlmaWVkIHVzaW5nIGEgdW5pcXVlIGFkZHJlc3MgZGVmaW5lZCBieSB0aGUg
ZXhwb3J0ZXINCj4gYW5kIGRlY2xhcmVkDQo+ICsJICogaW4gYSBwcm90b2NvbCBoZWFkZXIuDQoN
CkFjdHVhbGx5IHdlJ2QgcHJvYmFibHkgd2FudCB0byB1c2Ugc29tZXRoaW5nIGxpa2UgYQ0KDQpz
dHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3Qgew0KCWNvbnN0IGNoYXIgKm5hbWU7DQp9Ow0KDQpI
ZXJlLCBhbmQgZm9yIGdsb2JhbGx5IGtub3duIGludGVyY29ubmVjdHMgaGF2ZSB0aGVtDQppbnN0
YW50aWF0ZWQgc29tZXdoZXJlIGNvbW1vbiBzaW5jZSB0aGVyZSBjb3VsZCBiZSBtdWx0aXBsZSBl
eHBvcnRlcnMuDQoNCj4gIChSRkM6IFNob3VsZCB0aGlzIGJlIGEgc3RydWN0IGluc3RlYWQpLg0K
PiArCSAqDQo+ICsJICogUmV0dXJuOiBBIHBvaW50ZXIgdG8gdGhlIGludGVyY29ubmVjdC1wcml2
YXRlIGF0dGFjaF9vcHMNCj4gc3RydWN0dXJlIGlmIHN1cHBvcnRlZCwNCj4gKwkgKiAlTlVMTCBv
dGhlcndpc2UuDQo+ICsJICovDQo+ICsJY29uc3Qgdm9pZCAqKCpzdXBwb3J0c19pbnRlcmNvbm5l
Y3QpKHN0cnVjdA0KPiBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4gKwkJCQkJwqDCoMKg
wqAgY29uc3Qgdm9pZA0KPiAqaW50ZXJjb25uZWN0KTsNCg0KQW5kIHNpbWlsYXJseSBmb3Igc3Ry
aWN0ZXIgdHlwZS1jaGVja2luZyB0aGUgcmV0dXJuIHZhbHVlIGNvdWxkIGJlIGENCnN0cnVjdCBk
bWFfYnVmX2ludGVyY29ubmVjdF9hdHRhY2hfb3BzIHsNCn07DQoNCndoaWNoIGlzIHN1YmNsYXNz
ZWQgZm9yIGVhY2ggaW50ZXJjb25uZWN0LXByaXZhdGUgYXR0YWNoIG9wcy4NCg0KPiDCoH07DQo+
IMKgDQo+IMKgLyoqDQo+IEBAIC00ODQsNiArNDk3LDcgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNo
X29wcyB7DQo+IMKgICogQG5vZGU6IGxpc3Qgb2YgZG1hX2J1Zl9hdHRhY2htZW50LCBwcm90ZWN0
ZWQgYnkgZG1hX3Jlc3YgbG9jayBvZg0KPiB0aGUgZG1hYnVmLg0KPiDCoCAqIEBwZWVyMnBlZXI6
IHRydWUgaWYgdGhlIGltcG9ydGVyIGNhbiBoYW5kbGUgcGVlciByZXNvdXJjZXMNCj4gd2l0aG91
dCBwYWdlcy4NCj4gwqAgKiBAcHJpdjogZXhwb3J0ZXIgc3BlY2lmaWMgYXR0YWNobWVudCBkYXRh
Lg0KPiArICogQGludGVyY29ubmVjdDogUHJpdmF0ZSBpbnRlcmNvbm5lY3QgdG8gdXNlIGlmIGFu
eSwgTlVMTA0KPiBvdGhlcndpc2UuDQo+IMKgICogQGltcG9ydGVyX29wczogaW1wb3J0ZXIgb3Bl
cmF0aW9ucyBmb3IgdGhpcyBhdHRhY2htZW50LCBpZg0KPiBwcm92aWRlZA0KPiDCoCAqIGRtYV9i
dWZfbWFwL3VubWFwX2F0dGFjaG1lbnQoKSBtdXN0IGJlIGNhbGxlZCB3aXRoIHRoZSBkbWFfcmVz
dg0KPiBsb2NrIGhlbGQuDQo+IMKgICogQGltcG9ydGVyX3ByaXY6IGltcG9ydGVyIHNwZWNpZmlj
IGF0dGFjaG1lbnQgZGF0YS4NCj4gQEAgLTUwMyw2ICs1MTcsNyBAQCBzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50IHsNCj4gwqAJc3RydWN0IGxpc3RfaGVhZCBub2RlOw0KPiDCoAlib29sIHBlZXIy
cGVlcjsNCj4gwqAJY29uc3Qgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyAqaW1wb3J0ZXJfb3Bz
Ow0KPiArCWNvbnN0IHZvaWQgKmludGVyY29ubmVjdDsNCg0KY29uc3Qgc3RydWN0IGRtYV9idWZf
aW50ZXJjb25uZWN0ICppbnRlcmNvbm5lY3Q7DQoNCj4gwqAJdm9pZCAqaW1wb3J0ZXJfcHJpdjsN
Cj4gwqAJdm9pZCAqcHJpdjsNCj4gwqB9Ow0KDQovVGhvbWFzDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
