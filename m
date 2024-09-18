Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C5397BC49
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Sep 2024 14:34:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AA5E41252
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Sep 2024 12:34:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	by lists.linaro.org (Postfix) with ESMTPS id 547133F49E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Sep 2024 12:34:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="kYRRb/FT";
	spf=none (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com has no SPF policy when checking 192.198.163.9) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1726662872; x=1758198872;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=bZbV7ze0i1dB7v5BDyvTK4JJd7HVSRJeS0x/d1Wd2Hk=;
  b=kYRRb/FT1Qf3on63hMlDqCqvv4610D+tyqeNGNnEo8ISNWDbi7xgeXo2
   Z98LUfpsbXese82DYMMwf9IsaO14pkdDwsSoqIVLaJiaxnjO2nL5YRDV3
   zhL9qOOmSU9/1vXa3bZC7xqUpob18OZuMlGvsvJ3VQmR9kAq6gYim9kV1
   lgdO/pqVXCgxDO8Lm61ylaL8G/Hdpc/n432jgwnhTyIszDCMRgHy2K04k
   PbOyBDegIS15TpEL4esPZ98BAGQ9u8xC4hPfqVJsCKFzq1a7xqf+V2zH2
   ZMV2Qf8XL+Wj2uEmq0ygqw3UUizmn7mcWF+NyqtPZRS46foBwnjr59xbF
   g==;
X-CSE-ConnectionGUID: YgKzJyO1Tzu9p/RAbe45Og==
X-CSE-MsgGUID: vuahow0ZTFChxviZJ2hgeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36237859"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600";
   d="scan'208";a="36237859"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Sep 2024 05:34:30 -0700
X-CSE-ConnectionGUID: ZTeNLq2IQpG0/jAfu09X1w==
X-CSE-MsgGUID: 3yHErZuyS/eQ9cnbMe4SdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600";
   d="scan'208";a="70021600"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO [10.245.245.230]) ([10.245.245.230])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Sep 2024 05:34:28 -0700
Message-ID: <a97c5f63053000b5fcfc14cb56c79c8ff976b4ad.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian Koenig <christian.koenig@amd.com>
Date: Wed, 18 Sep 2024 14:34:26 +0200
In-Reply-To: <0d406a89b1b63ebf53c5d0848843c72299c1ff75.camel@linux.intel.com>
References: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
	 <be9b192a-a125-6774-bb4f-8b9fb517ce0d@linux.intel.com>
	 <ZrxYdIDdEJXRTFrn@phenom.ffwll.local>
	 <0d406a89b1b63ebf53c5d0848843c72299c1ff75.camel@linux.intel.com>
Autocrypt: addr=thomas.hellstrom@linux.intel.com; prefer-encrypt=mutual;
 keydata=mDMEZaWU6xYJKwYBBAHaRw8BAQdAj/We1UBCIrAm9H5t5Z7+elYJowdlhiYE8zUXgxcFz360SFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCBMaW51eCBlbWFpbCkgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPoiTBBMWCgA7FiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQuBaTVQrGBr/yQAD/Z1B+Kzy2JTuIy9LsKfC9FJmt1K/4qgaVeZMIKCAxf2UBAJhmZ5jmkDIf6YghfINZlYq6ixyWnOkWMuSLmELwOsgPuDgEZaWU6xIKKwYBBAGXVQEFAQEHQF9v/LNGegctctMWGHvmV/6oKOWWf/vd4MeqoSYTxVBTAwEIB4h4BBgWCgAgFiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwwACgkQuBaTVQrGBr/P2QD9Gts6Ee91w3SzOelNjsus/DcCTBb3fRugJoqcfxjKU0gBAKIFVMvVUGbhlEi6EFTZmBZ0QIZEIzOOVfkaIgWelFEH
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Bar: ---
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 547133F49E
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
Message-ID-Hash: BLNN2NIZDFLCPTPWBPWIPCEMGRGOML2G
X-Message-ID-Hash: BLNN2NIZDFLCPTPWBPWIPCEMGRGOML2G
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] RESEND Re: [RFC PATCH] dma-buf/dma-fence: Use a successful read_trylock() annotation for dma_fence_begin_signalling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BLNN2NIZDFLCPTPWBPWIPCEMGRGOML2G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2hyaXN0aWFuLA0KDQpQaW5nPw0KDQoNCk9uIFdlZCwgMjAyNC0wOC0xNCBhdCAxMDozNyArMDIw
MCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6DQo+IENocmlzdGlhbiwNCj4gDQo+IEFjayB0byBt
ZXJnZSB0aGlzIHRocm91Z2ggZHJtLW1pc2MtbmV4dCwgb3IgZG8geW91IHdhbnQgdG8gcGljayBp
dCB1cA0KPiBmb3IgZG1hLWJ1Zj8NCj4gDQo+IFRoYW5rcywNCj4gVGhvbWFzDQo+IA0KPiANCj4g
T24gV2VkLCAyMDI0LTA4LTE0IGF0IDA5OjEwICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0K
PiA+IE9uIEZyaSwgTWF5IDI2LCAyMDIzIGF0IDAxOjExOjI4UE0gKzAyMDAsIFRob21hcyBIZWxs
c3Ryw7ZtIHdyb3RlOg0KPiA+ID4gRGFuaWVsLA0KPiA+ID4gDQo+ID4gPiBPbiA0LzI4LzIzIDE0
OjUyLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToNCj4gPiA+ID4gQ29uZHNpZGVyIHRoZSBmb2xs
b3dpbmcgY2FsbCBzZXF1ZW5jZToNCj4gPiA+ID4gDQo+ID4gPiA+IC8qIFVwcGVyIGxheWVyICov
DQo+ID4gPiA+IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7DQo+ID4gPiA+IGxvY2sodGFp
bnRlZF9zaGFyZWRfbG9jayk7DQo+ID4gPiA+IC8qIERyaXZlciBjYWxsYmFjayAqLw0KPiA+ID4g
PiBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOw0KPiA+ID4gPiAuLi4NCj4gPiA+ID4gDQo+
ID4gPiA+IFRoZSBkcml2ZXIgbWlnaHQgaGVyZSB1c2UgYSB1dGlsaXR5IHRoYXQgaXMgYW5ub3Rh
dGVkIGFzDQo+ID4gPiA+IGludGVuZGVkDQo+ID4gPiA+IGZvciB0aGUNCj4gPiA+ID4gZG1hLWZl
bmNlIHNpZ25hbGxpbmcgY3JpdGljYWwgcGF0aC4gTm93IGlmIHRoZSB1cHBlciBsYXllcg0KPiA+
ID4gPiBpc24ndA0KPiA+ID4gPiBjb3JyZWN0bHkNCj4gPiA+ID4gYW5ub3RhdGVkIHlldCBmb3Ig
d2hhdGV2ZXIgcmVhc29uLCByZXN1bHRpbmcgaW4NCj4gPiA+ID4gDQo+ID4gPiA+IC8qIFVwcGVy
IGxheWVyICovDQo+ID4gPiA+IGxvY2sodGFpbnRlZF9zaGFyZWRfbG9jayk7DQo+ID4gPiA+IC8q
IERyaXZlciBjYWxsYmFjayAqLw0KPiA+ID4gPiBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygp
Ow0KPiA+ID4gPiANCj4gPiA+ID4gV2Ugd2lsbCByZWNlaXZlIGEgZmFsc2UgbG9ja2RlcCBsb2Nr
aW5nIG9yZGVyIHZpb2xhdGlvbg0KPiA+ID4gPiBub3RpZmljYXRpb24gZnJvbQ0KPiA+ID4gPiBk
bWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpLiBIb3dldmVyIGVudGVyaW5nIGEgZG1hLWZlbmNl
DQo+ID4gPiA+IHNpZ25hbGxpbmcNCj4gPiA+ID4gY3JpdGljYWwgc2VjdGlvbiBpdHNlbGYgZG9l
c24ndCBibG9jayBhbmQgY291bGQgbm90IGNhdXNlIGENCj4gPiA+ID4gZGVhZGxvY2suDQo+ID4g
PiA+IA0KPiA+ID4gPiBTbyB1c2UgYSBzdWNjZXNzZnVsIHJlYWRfdHJ5bG9jaygpIGFubm90YXRp
b24gaW5zdGVhZCBmb3INCj4gPiA+ID4gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKS4gVGhh
dCB3aWxsIG1ha2Ugc3VyZSB0aGF0IHRoZQ0KPiA+ID4gPiBsb2NraW5nIG9yZGVyDQo+ID4gPiA+
IGlzIGNvcnJlY3RseSByZWdpc3RlcmVkIGluIHRoZSBmaXJzdCBjYXNlLCBhbmQgZG9lc24ndCBy
ZWdpc3Rlcg0KPiA+ID4gPiBhbnkNCj4gPiA+ID4gbG9ja2luZyBvcmRlciBpbiB0aGUgc2Vjb25k
IGNhc2UuDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGUgYWx0ZXJuYXRpdmUgaXMgb2YgY291cnNlIHRv
IG1ha2Ugc3VyZSB0aGF0IHRoZSAiVXBwZXINCj4gPiA+ID4gbGF5ZXIiDQo+ID4gPiA+IGlzIGFs
d2F5cw0KPiA+ID4gPiBjb3JyZWN0bHkgYW5ub3RhdGVkLiBCdXQgZXhwZXJpZW5jZSBzaG93cyB0
aGF0J3Mgbm90IGVhc2lseQ0KPiA+ID4gPiBhY2hpZXZhYmxlDQo+ID4gPiA+IGluIGFsbCBjYXNl
cy4NCj4gPiA+ID4gDQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtDQo+
ID4gPiA+IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IA0KPiA+ID4g
UmVzdXJyZWN0aW5nIHRoZSBkaXNjdXNzaW9uIG9uIHRoaXMgb25lLiBJIGNhbid0IHNlZSBhIHNp
dHVhdGlvbg0KPiA+ID4gd2hlcmUgd2UNCj4gPiA+IHdvdWxkIG1pc3MgKnJlbGV2YW50KiBsb2Nr
aW5nDQo+ID4gPiBvcmRlciB2aW9sYXRpb24gd2FybmluZ3Mgd2l0aCB0aGlzIHBhdGNoLiBPZmMg
aWYgd2UgaGF2ZSBhDQo+ID4gPiBzY2hlZHVsZXINCj4gPiA+IGFubm90YXRpb24gcGF0Y2ggdGhh
dCB3b3VsZCB3b3JrIGZpbmUgYXMgd2VsbCwgYnV0IHRoZSBsYWNrIG9mDQo+ID4gPiBhbm5vdGF0
aW9uIGluDQo+ID4gPiB0aGUgc2NoZWR1bGVyIGNhbGxiYWNrcyBpcyByZWFsbHkgc3RhcnRpbmcg
dG8gaHVydCB1cy4NCj4gPiANCj4gPiBZZWFoIHRoaXMgaXMganVzdCBhIGJpdCB0b28gYnJhaW4t
bWVsdGluZyB0byByZXZpZXcsIGJ1dCBJIGNvbmN1cg0KPiA+IG5vdy4NCj4gPiANCj4gPiBSZXZp
ZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCj4gDQo+IA0K
PiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+ID4gDQo+ID4gSSB0aGluayB3aGF0IHdv
dWxkIGhlbHAgaXMgc29tZSBsb2NrZGVwIHNlbGZ0ZXN0cyB0byBjaGVjayB0aGF0IHdlDQo+ID4g
Ym90aA0KPiA+IGNhdGNoIHRoZSBzdHVmZiB3ZSB3YW50IHRvLCBhbmQgZG9uJ3QgaW5jdXIgZmFs
c2UgcG9zaXRpdmVzLiBNYXliZQ0KPiA+IHdpdGggYQ0KPiA+IHBsZWEgdGhhdCBsb2NrZGVwIHNo
b3VsZCBoYXZlIHNvbWUgbmF0aXZlIGZvcm0gb2YgY3Jvc3MtcmVsZWFzZQ0KPiA+IGFubm90YXRp
b25zIC4uLg0KPiA+IA0KPiA+IEJ1dCBkZWZpbml0ZWx5IHNlcGVyYXRlIHBhdGNoIHNldCwgc2lu
Y2UgaXQgbWlnaHQgdGFrZSBhIGZldyByb3VuZHMNCj4gPiBvZg0KPiA+IHJldmlldyBieSBsb2Nr
ZGVwIGZvbGtzLg0KPiA+IC1TaW1hDQo+ID4gDQo+ID4gPiANCj4gPiA+IFRoYW5rcywNCj4gPiA+
IA0KPiA+ID4gVGhvbWFzDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiA+IC0tLQ0KPiA+
ID4gPiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCA2ICsrKy0tLQ0KPiA+ID4gPiDC
oCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+ID4g
PiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtDQo+ID4gPiA+IGZlbmNlLmMNCj4gPiA+ID4gaW5kZXggZjE3N2M1
NjI2OWJiLi4xN2Y2MzI3NjhlZjkgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMN
Cj4gPiA+ID4gQEAgLTMwOCw4ICszMDgsOCBAQCBib29sIGRtYV9mZW5jZV9iZWdpbl9zaWduYWxs
aW5nKHZvaWQpDQo+ID4gPiA+IMKgwqAJaWYgKGluX2F0b21pYygpKQ0KPiA+ID4gPiDCoMKgCQly
ZXR1cm4gdHJ1ZTsNCj4gPiA+ID4gLQkvKiAuLi4gYW5kIG5vbi1yZWN1cnNpdmUgcmVhZGxvY2sg
Ki8NCj4gPiA+ID4gLQlsb2NrX2FjcXVpcmUoJmRtYV9mZW5jZV9sb2NrZGVwX21hcCwgMCwgMCwg
MSwgMSwgTlVMTCwNCj4gPiA+ID4gX1JFVF9JUF8pOw0KPiA+ID4gPiArCS8qIC4uLiBhbmQgbm9u
LXJlY3Vyc2l2ZSBzdWNjZXNzZnVsIHJlYWRfdHJ5bG9jayAqLw0KPiA+ID4gPiArCWxvY2tfYWNx
dWlyZSgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFwLCAwLCAxLCAxLCAxLCBOVUxMLA0KPiA+ID4gPiBf
UkVUX0lQXyk7DQo+ID4gPiA+IMKgwqAJcmV0dXJuIGZhbHNlOw0KPiA+ID4gPiDCoCB9DQo+ID4g
PiA+IEBAIC0zNDAsNyArMzQwLDcgQEAgdm9pZCBfX2RtYV9mZW5jZV9taWdodF93YWl0KHZvaWQp
DQo+ID4gPiA+IMKgwqAJbG9ja19tYXBfYWNxdWlyZSgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFwKTsN
Cj4gPiA+ID4gwqDCoAlsb2NrX21hcF9yZWxlYXNlKCZkbWFfZmVuY2VfbG9ja2RlcF9tYXApOw0K
PiA+ID4gPiDCoMKgCWlmICh0bXApDQo+ID4gPiA+IC0JCWxvY2tfYWNxdWlyZSgmZG1hX2ZlbmNl
X2xvY2tkZXBfbWFwLCAwLCAwLCAxLA0KPiA+ID4gPiAxLA0KPiA+ID4gPiBOVUxMLCBfVEhJU19J
UF8pOw0KPiA+ID4gPiArCQlsb2NrX2FjcXVpcmUoJmRtYV9mZW5jZV9sb2NrZGVwX21hcCwgMCwg
MSwgMSwNCj4gPiA+ID4gMSwNCj4gPiA+ID4gTlVMTCwgX1RISVNfSVBfKTsNCj4gPiA+ID4gwqAg
fQ0KPiA+ID4gPiDCoCAjZW5kaWYNCj4gPiANCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
