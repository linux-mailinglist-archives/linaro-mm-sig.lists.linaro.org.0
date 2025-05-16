Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B4658AB9820
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 May 2025 10:53:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4F34454F1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 May 2025 08:53:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	by lists.linaro.org (Postfix) with ESMTPS id 9518D4122D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 May 2025 08:53:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="SUbAL/Xw";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=none (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com has no SPF policy when checking 192.198.163.16) smtp.mailfrom=thomas.hellstrom@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1747385614; x=1778921614;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=KL9ZtRnXbrdcGOl3WvPHJ6aj37du5XLO0lBZbwRCsM0=;
  b=SUbAL/Xw5bQPC4qwwdAAgY4CTWD9nm/55c7EBwwNGW4piDsdvG24HZA9
   3sLUUdPkFQxjeVCposVuW3RdKGpWRC+WXy+ThDtZDs9eHmZlfHl9H0D5W
   GBxBkFjgsuMKNfgLZGjKB0pIJNb1J4cBeMHEQYl+XR/hhL/oEl0CdqPIA
   i1r1BW07/BLM/dAIPd45dX/ohEhp7DCWYGOt4KBco1hbZHo6VNmi1U/9A
   6jzPRXQj0n3NV5JgEjNzDpMp0w2oCQaOf/zPlvNLq2x+sO6iey5z9HX7U
   CECxi0Qn8RgSADRv1oS1q0/Y16KOH1F0MkthOPqEmaq0N100JMKz3QnrD
   A==;
X-CSE-ConnectionGUID: Yenovp3lSBajTLxnLxWhsQ==
X-CSE-MsgGUID: XuKKvsgmT2Cm+4yXgwOIJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="36967683"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600";
   d="scan'208";a="36967683"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2025 01:53:32 -0700
X-CSE-ConnectionGUID: /ipcHQ89TpWmf4IQ3ZL5LA==
X-CSE-MsgGUID: QepjbHrAQN6/Vq9FAvMOFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600";
   d="scan'208";a="138522038"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO [10.245.245.131]) ([10.245.245.131])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2025 01:53:31 -0700
Message-ID: <ce7159c2d2dc6f425be48085a93aabf0cbe9f20c.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Date: Fri, 16 May 2025 10:53:27 +0200
In-Reply-To: <0a890d19-27a1-4525-83e6-cfc082dfab37@amd.com>
References: <703610a4db0324db05ece8e83fff864717c2e6c2.camel@linux.intel.com>
	 <0a890d19-27a1-4525-83e6-cfc082dfab37@amd.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9518D4122D
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[intel.com:dkim];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[mgamail.intel.com:helo,mgamail.intel.com:rdns,linux.intel.com:mid,linaro.org:email];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[192.198.163.16:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: ALE4ZHQ5X3XMBZEMEQK35WCK5I5JNSPW
X-Message-ID-Hash: ALE4ZHQ5X3XMBZEMEQK35WCK5I5JNSPW
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, DMA BUFFER SHARING FRAMEWORK <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Sharing dma-bufs using a driver-private interconnect
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ALE4ZHQ5X3XMBZEMEQK35WCK5I5JNSPW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDI1LTA1LTE2IGF0IDEwOjQ0ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBIaSBUaG9tYXMsDQo+IA0KPiBPbiA1LzE2LzI1IDEwOjMzLCBUaG9tYXMgSGVsbHN0csO2
bSB3cm90ZToNCj4gPiBIaSENCj4gPiANCj4gPiBJIHByZXZpb3VzbHkgZGlzY3Vzc2VkIHRoaXMg
d2l0aCBTaW1vbmEgb24gSVJDIGJ1dCB3b3VsZCBsaWtlIHRvDQo+ID4gZ2V0DQo+ID4gc29tZSBm
ZWVkYmFjayBhbHNvIGZyb20gYSB3aWRlciBhdWRpZW5jZToNCj4gPiANCj4gPiBXZSdyZSBwbGFu
bmluZyB0byBzaGFyZSBkbWEtYnVmcyB1c2luZyBhIGZhc3QgaW50ZXJjb25uZWN0IGluIGEgd2F5
DQo+ID4gc2ltaWxhciB0byBwY2llLXAycDoNCj4gPiANCj4gPiBUaGUgcm91Z2ggcGxhbiBpcyB0
byBpZGVudGlmeSBkbWEtYnVmcyBjYXBhYmxlIG9mIHNoYXJpbmcgdGhpcyB3YXkNCj4gPiBieQ0K
PiA+IGxvb2tpbmcgYXQgdGhlIGFkZHJlc3Mgb2YgZWl0aGVyIHRoZSBkbWEtYnVmIG9wcyBhbmQg
LyBvciB0aGUNCj4gPiBpbXBvcnRlcl9vcHMgdG8gY29uY2x1ZGUgaXQncyBhIGRldmljZSB1c2lu
ZyB0aGUgc2FtZSBkcml2ZXIgKG9yDQo+ID4gcG9zc2libHkgY2hpbGQgZHJpdmVyKSBhbmQgdGhl
biB0YWtlIHNwZWNpYWwgYWN0aW9uIHdoZW4gdGhlIGRtYS0NCj4gPiBhZGRyZXNzZXMgYXJlIG9i
dGFpbmVkLiBOb3RoaW5nIHZpc2libGUgb3V0c2lkZSBvZiB0aGUgeGUgZHJpdmVyIG9yDQo+ID4g
aXRzDQo+ID4gY2hpbGQgZHJpdmVyLg0KPiANCj4gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGF0IHNo
b3VsZCB3b3JrIGFuZCB3ZSBoYXZlIHJlY29tbWVuZGVkIGRvaW5nDQo+IGV4YWN0bHkgdGhhdCB0
byBtdWx0aXBsZSBwZW9wbGUgaW4gdGhlIHBhc3QuDQo+IMKgDQo+ID4gQXJlIHRoZXJlIGFueSBh
YnNvbHV0ZSAiRE9OJ1QicyBvciByZWNvbW1lbmRhdGlvbnMgdG8ga2VlcCBpbiBtaW5kDQo+ID4g
V1JUDQo+ID4gdG8gdGhpcyBhcHByb2FjaD8NCj4gDQo+IE15IG9ubHkgcmVxdWlyZW1lbnQgaXMg
dGhhdCB5b3Ugd3JpdGUgdXAgc29tZSBkb2N1bWVudGF0aW9uDQo+IChwcmVmZXJhYmxlIGVpdGhl
ciBpbiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIG9yDQo+IERvY3VtZW50YXRpb24vZHJpdmVy
LWFwaS9kbWEtYnVmLnJzdCkgaG93IGRyaXZlcnMgc2hvdWxkIGRvIHRoaXMsDQo+IHdoYXQgdGhl
IGltcGxpY2F0aW9ucyB3aXRoIHRoZSByZXN0IG9mIHRoZSBETUEtYnVmIGludGVyZmFjZSBpcw0K
PiBldGMuLi4gZXRjLi4uDQo+IA0KPiBUaGUgZ29hbCBpcyB0byBuYWlsIGRvd24gaG93IHRvIGRv
IGRyaXZlciBwcml2YXRlIGludGVyZmFjZXMgd2l0aG91dA0KPiBicmVha2luZyBpbnRlcm9wZXJh
YmlsaXR5IHdpdGggZHJpdmVycyB3aG8gZG9uJ3QgcGFydGljaXBhdGUgaW4gdGhhdC4NCg0KT2ss
IFdpbGwgZW5zdXJlIHRoYXQgd2UgYWRoZXJlIHRvIHRoaXMuDQoNClRoYW5rcywNClRob21hcw0K
DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+ID4gDQo+ID4gVGhhbmtzLA0K
PiA+IFRob21hcw0KPiA+IA0KPiApDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+IExpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
