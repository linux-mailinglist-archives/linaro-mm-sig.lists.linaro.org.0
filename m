Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7681F97D1F3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Sep 2024 09:46:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 245D94121C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Sep 2024 07:46:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	by lists.linaro.org (Postfix) with ESMTPS id DF8D040F39
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Sep 2024 07:46:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=gNjDDKay;
	spf=none (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com has no SPF policy when checking 192.198.163.15) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1726818397; x=1758354397;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=sh9MfekUbazKEajbVSy1ZCdAZiqR3S/QEcTbLqenAdA=;
  b=gNjDDKay384YvSl3izCn65MRUwBb/C6UW7xTmdb7rQrzJqLppmjv2xVj
   MUiqc7P+rBrhrp42FfNNmaFpOnUZ9CO8/cBYdF/LMtnZ5drSeA1aWBhge
   eiy97YwmqSyvW5P4/zgyOcaSG3MNJANpFnG+RrFwf4Wcc3E40zXrl2wuG
   XH1czyOjp/9HMHr3UJGbbYytAxULhuyJ17KfQqKjIIFXtcCxbAOxYLEqr
   rRByjyWvkEt3Z/s8MO/hy/qHbLTNFHTffTq3LGT1zd534zx0uqijqpBe/
   yaGAYne+Tx4N799m+l8IiHZyv3BREleOIbnNcrcPjEpkA/Q5GxNt9iAXq
   g==;
X-CSE-ConnectionGUID: dgGGvgGMRTaHdEcptwxC7Q==
X-CSE-MsgGUID: patQfvXgScuXU2nEKk/rGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25961483"
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600";
   d="scan'208";a="25961483"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Sep 2024 00:46:36 -0700
X-CSE-ConnectionGUID: 3sUMhZ/vSxuQWSRbBEh1yg==
X-CSE-MsgGUID: Ge+iiJX/ROKrhVGt+YbvZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600";
   d="scan'208";a="70453949"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO [10.245.245.0]) ([10.245.245.0])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Sep 2024 00:46:34 -0700
Message-ID: <3a31238d9477902b63499a5587e6c79bbfe293a0.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Date: Fri, 20 Sep 2024 09:46:31 +0200
In-Reply-To: <b6808146-b798-45b6-b2b3-61d97825a85f@amd.com>
References: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
	 <be9b192a-a125-6774-bb4f-8b9fb517ce0d@linux.intel.com>
	 <ZrxYdIDdEJXRTFrn@phenom.ffwll.local>
	 <0d406a89b1b63ebf53c5d0848843c72299c1ff75.camel@linux.intel.com>
	 <a97c5f63053000b5fcfc14cb56c79c8ff976b4ad.camel@linux.intel.com>
	 <b6808146-b798-45b6-b2b3-61d97825a85f@amd.com>
Autocrypt: addr=thomas.hellstrom@linux.intel.com; prefer-encrypt=mutual;
 keydata=mDMEZaWU6xYJKwYBBAHaRw8BAQdAj/We1UBCIrAm9H5t5Z7+elYJowdlhiYE8zUXgxcFz360SFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCBMaW51eCBlbWFpbCkgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPoiTBBMWCgA7FiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQuBaTVQrGBr/yQAD/Z1B+Kzy2JTuIy9LsKfC9FJmt1K/4qgaVeZMIKCAxf2UBAJhmZ5jmkDIf6YghfINZlYq6ixyWnOkWMuSLmELwOsgPuDgEZaWU6xIKKwYBBAGXVQEFAQEHQF9v/LNGegctctMWGHvmV/6oKOWWf/vd4MeqoSYTxVBTAwEIB4h4BBgWCgAgFiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwwACgkQuBaTVQrGBr/P2QD9Gts6Ee91w3SzOelNjsus/DcCTBb3fRugJoqcfxjKU0gBAKIFVMvVUGbhlEi6EFTZmBZ0QIZEIzOOVfkaIgWelFEH
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Bar: ---
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DF8D040F39
X-Spamd-Result: default: False [-3.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[intel.com:+]
Message-ID-Hash: AMNV3URFQWXKSZLVBYAJTTBSVPYLRILA
X-Message-ID-Hash: AMNV3URFQWXKSZLVBYAJTTBSVPYLRILA
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: RESEND Re: [RFC PATCH] dma-buf/dma-fence: Use a successful read_trylock() annotation for dma_fence_begin_signalling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AMNV3URFQWXKSZLVBYAJTTBSVPYLRILA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDI0LTA5LTE4IGF0IDE1OjE4ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBTb3JyeSwgc29tZWhvdyBjb21wbGV0ZWx5IG1pc3NlZCB0aGF0LiBGZWVsIGZyZWUgdG8g
cHVzaCBpdCB0byANCj4gZHJtLW1pc2MtbmV4dC4NCj4gDQo+IENocmlzdGlhbi4NCg0KUHVzaGVk
LCB0aGFua3MuDQovVGhvbWFzDQoNCg0KPiANCj4gQW0gMTguMDkuMjQgdW0gMTQ6MzQgc2Nocmll
YiBUaG9tYXMgSGVsbHN0csO2bToNCj4gPiBDaHJpc3RpYW4sDQo+ID4gDQo+ID4gUGluZz8NCj4g
PiANCj4gPiANCj4gPiBPbiBXZWQsIDIwMjQtMDgtMTQgYXQgMTA6MzcgKzAyMDAsIFRob21hcyBI
ZWxsc3Ryw7ZtIHdyb3RlOg0KPiA+ID4gQ2hyaXN0aWFuLA0KPiA+ID4gDQo+ID4gPiBBY2sgdG8g
bWVyZ2UgdGhpcyB0aHJvdWdoIGRybS1taXNjLW5leHQsIG9yIGRvIHlvdSB3YW50IHRvIHBpY2sN
Cj4gPiA+IGl0IHVwDQo+ID4gPiBmb3IgZG1hLWJ1Zj8NCj4gPiA+IA0KPiA+ID4gVGhhbmtzLA0K
PiA+ID4gVGhvbWFzDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gT24gV2VkLCAyMDI0LTA4LTE0IGF0
IDA5OjEwICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0KPiA+ID4gPiBPbiBGcmksIE1heSAy
NiwgMjAyMyBhdCAwMToxMToyOFBNICswMjAwLCBUaG9tYXMgSGVsbHN0csO2bQ0KPiA+ID4gPiB3
cm90ZToNCj4gPiA+ID4gPiBEYW5pZWwsDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gT24gNC8yOC8y
MyAxNDo1MiwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6DQo+ID4gPiA+ID4gPiBDb25kc2lkZXIg
dGhlIGZvbGxvd2luZyBjYWxsIHNlcXVlbmNlOg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiAv
KiBVcHBlciBsYXllciAqLw0KPiA+ID4gPiA+ID4gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmco
KTsNCj4gPiA+ID4gPiA+IGxvY2sodGFpbnRlZF9zaGFyZWRfbG9jayk7DQo+ID4gPiA+ID4gPiAv
KiBEcml2ZXIgY2FsbGJhY2sgKi8NCj4gPiA+ID4gPiA+IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxs
aW5nKCk7DQo+ID4gPiA+ID4gPiAuLi4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGhlIGRy
aXZlciBtaWdodCBoZXJlIHVzZSBhIHV0aWxpdHkgdGhhdCBpcyBhbm5vdGF0ZWQgYXMNCj4gPiA+
ID4gPiA+IGludGVuZGVkDQo+ID4gPiA+ID4gPiBmb3IgdGhlDQo+ID4gPiA+ID4gPiBkbWEtZmVu
Y2Ugc2lnbmFsbGluZyBjcml0aWNhbCBwYXRoLiBOb3cgaWYgdGhlIHVwcGVyIGxheWVyDQo+ID4g
PiA+ID4gPiBpc24ndA0KPiA+ID4gPiA+ID4gY29ycmVjdGx5DQo+ID4gPiA+ID4gPiBhbm5vdGF0
ZWQgeWV0IGZvciB3aGF0ZXZlciByZWFzb24sIHJlc3VsdGluZyBpbg0KPiA+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gPiAvKiBVcHBlciBsYXllciAqLw0KPiA+ID4gPiA+ID4gbG9jayh0YWludGVkX3No
YXJlZF9sb2NrKTsNCj4gPiA+ID4gPiA+IC8qIERyaXZlciBjYWxsYmFjayAqLw0KPiA+ID4gPiA+
ID4gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+
ID4gV2Ugd2lsbCByZWNlaXZlIGEgZmFsc2UgbG9ja2RlcCBsb2NraW5nIG9yZGVyIHZpb2xhdGlv
bg0KPiA+ID4gPiA+ID4gbm90aWZpY2F0aW9uIGZyb20NCj4gPiA+ID4gPiA+IGRtYV9mZW5jZV9i
ZWdpbl9zaWduYWxsaW5nKCkuIEhvd2V2ZXIgZW50ZXJpbmcgYSBkbWEtZmVuY2UNCj4gPiA+ID4g
PiA+IHNpZ25hbGxpbmcNCj4gPiA+ID4gPiA+IGNyaXRpY2FsIHNlY3Rpb24gaXRzZWxmIGRvZXNu
J3QgYmxvY2sgYW5kIGNvdWxkIG5vdCBjYXVzZSBhDQo+ID4gPiA+ID4gPiBkZWFkbG9jay4NCj4g
PiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gU28gdXNlIGEgc3VjY2Vzc2Z1bCByZWFkX3RyeWxvY2so
KSBhbm5vdGF0aW9uIGluc3RlYWQgZm9yDQo+ID4gPiA+ID4gPiBkbWFfZmVuY2VfYmVnaW5fc2ln
bmFsbGluZygpLiBUaGF0IHdpbGwgbWFrZSBzdXJlIHRoYXQgdGhlDQo+ID4gPiA+ID4gPiBsb2Nr
aW5nIG9yZGVyDQo+ID4gPiA+ID4gPiBpcyBjb3JyZWN0bHkgcmVnaXN0ZXJlZCBpbiB0aGUgZmly
c3QgY2FzZSwgYW5kIGRvZXNuJ3QNCj4gPiA+ID4gPiA+IHJlZ2lzdGVyDQo+ID4gPiA+ID4gPiBh
bnkNCj4gPiA+ID4gPiA+IGxvY2tpbmcgb3JkZXIgaW4gdGhlIHNlY29uZCBjYXNlLg0KPiA+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gPiBUaGUgYWx0ZXJuYXRpdmUgaXMgb2YgY291cnNlIHRvIG1ha2Ug
c3VyZSB0aGF0IHRoZSAiVXBwZXINCj4gPiA+ID4gPiA+IGxheWVyIg0KPiA+ID4gPiA+ID4gaXMg
YWx3YXlzDQo+ID4gPiA+ID4gPiBjb3JyZWN0bHkgYW5ub3RhdGVkLiBCdXQgZXhwZXJpZW5jZSBz
aG93cyB0aGF0J3Mgbm90IGVhc2lseQ0KPiA+ID4gPiA+ID4gYWNoaWV2YWJsZQ0KPiA+ID4gPiA+
ID4gaW4gYWxsIGNhc2VzLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBUaG9tYXMgSGVsbHN0csO2bQ0KPiA+ID4gPiA+ID4gPHRob21hcy5oZWxsc3Ryb21AbGludXgu
aW50ZWwuY29tPg0KPiA+ID4gPiA+IFJlc3VycmVjdGluZyB0aGUgZGlzY3Vzc2lvbiBvbiB0aGlz
IG9uZS4gSSBjYW4ndCBzZWUgYQ0KPiA+ID4gPiA+IHNpdHVhdGlvbg0KPiA+ID4gPiA+IHdoZXJl
IHdlDQo+ID4gPiA+ID4gd291bGQgbWlzcyAqcmVsZXZhbnQqIGxvY2tpbmcNCj4gPiA+ID4gPiBv
cmRlciB2aW9sYXRpb24gd2FybmluZ3Mgd2l0aCB0aGlzIHBhdGNoLiBPZmMgaWYgd2UgaGF2ZSBh
DQo+ID4gPiA+ID4gc2NoZWR1bGVyDQo+ID4gPiA+ID4gYW5ub3RhdGlvbiBwYXRjaCB0aGF0IHdv
dWxkIHdvcmsgZmluZSBhcyB3ZWxsLCBidXQgdGhlIGxhY2sNCj4gPiA+ID4gPiBvZg0KPiA+ID4g
PiA+IGFubm90YXRpb24gaW4NCj4gPiA+ID4gPiB0aGUgc2NoZWR1bGVyIGNhbGxiYWNrcyBpcyBy
ZWFsbHkgc3RhcnRpbmcgdG8gaHVydCB1cy4NCj4gPiA+ID4gWWVhaCB0aGlzIGlzIGp1c3QgYSBi
aXQgdG9vIGJyYWluLW1lbHRpbmcgdG8gcmV2aWV3LCBidXQgSQ0KPiA+ID4gPiBjb25jdXINCj4g
PiA+ID4gbm93Lg0KPiA+ID4gPiANCj4gPiA+ID4gUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiAN
Cj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiA+IEkgdGhpbmsg
d2hhdCB3b3VsZCBoZWxwIGlzIHNvbWUgbG9ja2RlcCBzZWxmdGVzdHMgdG8gY2hlY2sgdGhhdA0K
PiA+ID4gPiB3ZQ0KPiA+ID4gPiBib3RoDQo+ID4gPiA+IGNhdGNoIHRoZSBzdHVmZiB3ZSB3YW50
IHRvLCBhbmQgZG9uJ3QgaW5jdXIgZmFsc2UgcG9zaXRpdmVzLg0KPiA+ID4gPiBNYXliZQ0KPiA+
ID4gPiB3aXRoIGENCj4gPiA+ID4gcGxlYSB0aGF0IGxvY2tkZXAgc2hvdWxkIGhhdmUgc29tZSBu
YXRpdmUgZm9ybSBvZiBjcm9zcy1yZWxlYXNlDQo+ID4gPiA+IGFubm90YXRpb25zIC4uLg0KPiA+
ID4gPiANCj4gPiA+ID4gQnV0IGRlZmluaXRlbHkgc2VwZXJhdGUgcGF0Y2ggc2V0LCBzaW5jZSBp
dCBtaWdodCB0YWtlIGEgZmV3DQo+ID4gPiA+IHJvdW5kcw0KPiA+ID4gPiBvZg0KPiA+ID4gPiBy
ZXZpZXcgYnkgbG9ja2RlcCBmb2xrcy4NCj4gPiA+ID4gLVNpbWENCj4gPiA+ID4gDQo+ID4gPiA+
ID4gVGhhbmtzLA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFRob21hcw0KPiA+ID4gPiA+IA0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gPiDCoMKgIGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDYgKysrLS0tDQo+ID4gPiA+ID4gPiDCoMKgIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMg
Yi9kcml2ZXJzL2RtYS0NCj4gPiA+ID4gPiA+IGJ1Zi9kbWEtDQo+ID4gPiA+ID4gPiBmZW5jZS5j
DQo+ID4gPiA+ID4gPiBpbmRleCBmMTc3YzU2MjY5YmIuLjE3ZjYzMjc2OGVmOSAxMDA2NDQNCj4g
PiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiA+ID4gPiA+ID4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ID4gPiA+ID4gPiBAQCAtMzA4LDgg
KzMwOCw4IEBAIGJvb2wgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcodm9pZCkNCj4gPiA+ID4g
PiA+IMKgwqDCoAlpZiAoaW5fYXRvbWljKCkpDQo+ID4gPiA+ID4gPiDCoMKgwqAJCXJldHVybiB0
cnVlOw0KPiA+ID4gPiA+ID4gLQkvKiAuLi4gYW5kIG5vbi1yZWN1cnNpdmUgcmVhZGxvY2sgKi8N
Cj4gPiA+ID4gPiA+IC0JbG9ja19hY3F1aXJlKCZkbWFfZmVuY2VfbG9ja2RlcF9tYXAsIDAsIDAs
IDEsIDEsDQo+ID4gPiA+ID4gPiBOVUxMLA0KPiA+ID4gPiA+ID4gX1JFVF9JUF8pOw0KPiA+ID4g
PiA+ID4gKwkvKiAuLi4gYW5kIG5vbi1yZWN1cnNpdmUgc3VjY2Vzc2Z1bCByZWFkX3RyeWxvY2sN
Cj4gPiA+ID4gPiA+ICovDQo+ID4gPiA+ID4gPiArCWxvY2tfYWNxdWlyZSgmZG1hX2ZlbmNlX2xv
Y2tkZXBfbWFwLCAwLCAxLCAxLCAxLA0KPiA+ID4gPiA+ID4gTlVMTCwNCj4gPiA+ID4gPiA+IF9S
RVRfSVBfKTsNCj4gPiA+ID4gPiA+IMKgwqDCoAlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+ID4gPiDC
oMKgIH0NCj4gPiA+ID4gPiA+IEBAIC0zNDAsNyArMzQwLDcgQEAgdm9pZCBfX2RtYV9mZW5jZV9t
aWdodF93YWl0KHZvaWQpDQo+ID4gPiA+ID4gPiDCoMKgwqAJbG9ja19tYXBfYWNxdWlyZSgmZG1h
X2ZlbmNlX2xvY2tkZXBfbWFwKTsNCj4gPiA+ID4gPiA+IMKgwqDCoAlsb2NrX21hcF9yZWxlYXNl
KCZkbWFfZmVuY2VfbG9ja2RlcF9tYXApOw0KPiA+ID4gPiA+ID4gwqDCoMKgCWlmICh0bXApDQo+
ID4gPiA+ID4gPiAtCQlsb2NrX2FjcXVpcmUoJmRtYV9mZW5jZV9sb2NrZGVwX21hcCwgMCwgMCwN
Cj4gPiA+ID4gPiA+IDEsDQo+ID4gPiA+ID4gPiAxLA0KPiA+ID4gPiA+ID4gTlVMTCwgX1RISVNf
SVBfKTsNCj4gPiA+ID4gPiA+ICsJCWxvY2tfYWNxdWlyZSgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFw
LCAwLCAxLA0KPiA+ID4gPiA+ID4gMSwNCj4gPiA+ID4gPiA+IDEsDQo+ID4gPiA+ID4gPiBOVUxM
LCBfVEhJU19JUF8pOw0KPiA+ID4gPiA+ID4gwqDCoCB9DQo+ID4gPiA+ID4gPiDCoMKgICNlbmRp
Zg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
