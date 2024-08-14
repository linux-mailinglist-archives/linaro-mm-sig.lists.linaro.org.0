Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF0A9516B7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2024 10:37:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A9AB41126
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2024 08:37:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	by lists.linaro.org (Postfix) with ESMTPS id 33D323EAD0
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2024 08:37:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="TPIJ/40n";
	spf=none (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com has no SPF policy when checking 192.198.163.11) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1723624652; x=1755160652;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=r6hQI285XiNG3jP1yP4sfudPxl+4NbESVi71bND8sV0=;
  b=TPIJ/40nr+WWRXdeOiXWm4yU5knnrKMhuPqSKwcKUlLw2X5dWjhva10x
   uqH9qlffAy0pdsOH4exTjX2lB1uWeGyc8qDmtkj6fG1NdLZgog9qruu5P
   du/0WexZ+7xZRv2ThVkQCiNCqBTK72Qo9+DRLkjakN7INX6AyU/CrHveR
   oPQsz5z48BbwpCVdKpMHEojhhjItAB1TsDpIejf5QJ150rhxCQe0kiesQ
   ubY9/HzVoCJI4GH+cXzQI41Rso1b7evVzWC1aK+7jFCKLyNaJ1ghP9d6K
   Rpi+r/5oiTO8X/TGM2Zd+xj5FlpjKBdemE2JVNjAwPPpfHRzssRV+6EVJ
   Q==;
X-CSE-ConnectionGUID: l8g4y24nTiKIvqMqowjj9g==
X-CSE-MsgGUID: l1N+iuBrRAmBmc0CwFExtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32452313"
X-IronPort-AV: E=Sophos;i="6.09,288,1716274800";
   d="scan'208";a="32452313"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2024 01:37:29 -0700
X-CSE-ConnectionGUID: YPXlBIFlS2u7ul1SOEoLGg==
X-CSE-MsgGUID: uH6fRw81QQCTDigiZrWEzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,288,1716274800";
   d="scan'208";a="63350259"
Received: from maurocar-mobl2.ger.corp.intel.com (HELO [10.245.245.21]) ([10.245.245.21])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2024 01:37:28 -0700
Message-ID: <0d406a89b1b63ebf53c5d0848843c72299c1ff75.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian Koenig <christian.koenig@amd.com>
Date: Wed, 14 Aug 2024 10:37:26 +0200
In-Reply-To: <ZrxYdIDdEJXRTFrn@phenom.ffwll.local>
References: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
	 <be9b192a-a125-6774-bb4f-8b9fb517ce0d@linux.intel.com>
	 <ZrxYdIDdEJXRTFrn@phenom.ffwll.local>
Autocrypt: addr=thomas.hellstrom@linux.intel.com; prefer-encrypt=mutual;
 keydata=mDMEZaWU6xYJKwYBBAHaRw8BAQdAj/We1UBCIrAm9H5t5Z7+elYJowdlhiYE8zUXgxcFz360SFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCBMaW51eCBlbWFpbCkgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPoiTBBMWCgA7FiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQuBaTVQrGBr/yQAD/Z1B+Kzy2JTuIy9LsKfC9FJmt1K/4qgaVeZMIKCAxf2UBAJhmZ5jmkDIf6YghfINZlYq6ixyWnOkWMuSLmELwOsgPuDgEZaWU6xIKKwYBBAGXVQEFAQEHQF9v/LNGegctctMWGHvmV/6oKOWWf/vd4MeqoSYTxVBTAwEIB4h4BBgWCgAgFiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwwACgkQuBaTVQrGBr/P2QD9Gts6Ee91w3SzOelNjsus/DcCTBb3fRugJoqcfxjKU0gBAKIFVMvVUGbhlEi6EFTZmBZ0QIZEIzOOVfkaIgWelFEH
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 33D323EAD0
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_IN_DNSWL_MED(-0.20)[192.198.163.11:from];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: BNIA5FCUGFHFI5P346ROLIBJYYFTU4HJ
X-Message-ID-Hash: BNIA5FCUGFHFI5P346ROLIBJYYFTU4HJ
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH] dma-buf/dma-fence: Use a successful read_trylock() annotation for dma_fence_begin_signalling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BNIA5FCUGFHFI5P346ROLIBJYYFTU4HJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2hyaXN0aWFuLA0KDQpBY2sgdG8gbWVyZ2UgdGhpcyB0aHJvdWdoIGRybS1taXNjLW5leHQsIG9y
IGRvIHlvdSB3YW50IHRvIHBpY2sgaXQgdXANCmZvciBkbWEtYnVmPw0KDQpUaGFua3MsDQpUaG9t
YXMNCg0KDQpPbiBXZWQsIDIwMjQtMDgtMTQgYXQgMDk6MTAgKzAyMDAsIERhbmllbCBWZXR0ZXIg
d3JvdGU6DQo+IE9uIEZyaSwgTWF5IDI2LCAyMDIzIGF0IDAxOjExOjI4UE0gKzAyMDAsIFRob21h
cyBIZWxsc3Ryw7ZtIHdyb3RlOg0KPiA+IERhbmllbCwNCj4gPiANCj4gPiBPbiA0LzI4LzIzIDE0
OjUyLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToNCj4gPiA+IENvbmRzaWRlciB0aGUgZm9sbG93
aW5nIGNhbGwgc2VxdWVuY2U6DQo+ID4gPiANCj4gPiA+IC8qIFVwcGVyIGxheWVyICovDQo+ID4g
PiBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOw0KPiA+ID4gbG9jayh0YWludGVkX3NoYXJl
ZF9sb2NrKTsNCj4gPiA+IC8qIERyaXZlciBjYWxsYmFjayAqLw0KPiA+ID4gZG1hX2ZlbmNlX2Jl
Z2luX3NpZ25hbGxpbmcoKTsNCj4gPiA+IC4uLg0KPiA+ID4gDQo+ID4gPiBUaGUgZHJpdmVyIG1p
Z2h0IGhlcmUgdXNlIGEgdXRpbGl0eSB0aGF0IGlzIGFubm90YXRlZCBhcyBpbnRlbmRlZA0KPiA+
ID4gZm9yIHRoZQ0KPiA+ID4gZG1hLWZlbmNlIHNpZ25hbGxpbmcgY3JpdGljYWwgcGF0aC4gTm93
IGlmIHRoZSB1cHBlciBsYXllciBpc24ndA0KPiA+ID4gY29ycmVjdGx5DQo+ID4gPiBhbm5vdGF0
ZWQgeWV0IGZvciB3aGF0ZXZlciByZWFzb24sIHJlc3VsdGluZyBpbg0KPiA+ID4gDQo+ID4gPiAv
KiBVcHBlciBsYXllciAqLw0KPiA+ID4gbG9jayh0YWludGVkX3NoYXJlZF9sb2NrKTsNCj4gPiA+
IC8qIERyaXZlciBjYWxsYmFjayAqLw0KPiA+ID4gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmco
KTsNCj4gPiA+IA0KPiA+ID4gV2Ugd2lsbCByZWNlaXZlIGEgZmFsc2UgbG9ja2RlcCBsb2NraW5n
IG9yZGVyIHZpb2xhdGlvbg0KPiA+ID4gbm90aWZpY2F0aW9uIGZyb20NCj4gPiA+IGRtYV9mZW5j
ZV9iZWdpbl9zaWduYWxsaW5nKCkuIEhvd2V2ZXIgZW50ZXJpbmcgYSBkbWEtZmVuY2UNCj4gPiA+
IHNpZ25hbGxpbmcNCj4gPiA+IGNyaXRpY2FsIHNlY3Rpb24gaXRzZWxmIGRvZXNuJ3QgYmxvY2sg
YW5kIGNvdWxkIG5vdCBjYXVzZSBhDQo+ID4gPiBkZWFkbG9jay4NCj4gPiA+IA0KPiA+ID4gU28g
dXNlIGEgc3VjY2Vzc2Z1bCByZWFkX3RyeWxvY2soKSBhbm5vdGF0aW9uIGluc3RlYWQgZm9yDQo+
ID4gPiBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpLiBUaGF0IHdpbGwgbWFrZSBzdXJlIHRo
YXQgdGhlDQo+ID4gPiBsb2NraW5nIG9yZGVyDQo+ID4gPiBpcyBjb3JyZWN0bHkgcmVnaXN0ZXJl
ZCBpbiB0aGUgZmlyc3QgY2FzZSwgYW5kIGRvZXNuJ3QgcmVnaXN0ZXINCj4gPiA+IGFueQ0KPiA+
ID4gbG9ja2luZyBvcmRlciBpbiB0aGUgc2Vjb25kIGNhc2UuDQo+ID4gPiANCj4gPiA+IFRoZSBh
bHRlcm5hdGl2ZSBpcyBvZiBjb3Vyc2UgdG8gbWFrZSBzdXJlIHRoYXQgdGhlICJVcHBlciBsYXll
ciINCj4gPiA+IGlzIGFsd2F5cw0KPiA+ID4gY29ycmVjdGx5IGFubm90YXRlZC4gQnV0IGV4cGVy
aWVuY2Ugc2hvd3MgdGhhdCdzIG5vdCBlYXNpbHkNCj4gPiA+IGFjaGlldmFibGUNCj4gPiA+IGlu
IGFsbCBjYXNlcy4NCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLD
tm0NCj4gPiA+IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCj4gPiANCj4gPiBS
ZXN1cnJlY3RpbmcgdGhlIGRpc2N1c3Npb24gb24gdGhpcyBvbmUuIEkgY2FuJ3Qgc2VlIGEgc2l0
dWF0aW9uDQo+ID4gd2hlcmUgd2UNCj4gPiB3b3VsZCBtaXNzICpyZWxldmFudCogbG9ja2luZw0K
PiA+IG9yZGVyIHZpb2xhdGlvbiB3YXJuaW5ncyB3aXRoIHRoaXMgcGF0Y2guIE9mYyBpZiB3ZSBo
YXZlIGENCj4gPiBzY2hlZHVsZXINCj4gPiBhbm5vdGF0aW9uIHBhdGNoIHRoYXQgd291bGQgd29y
ayBmaW5lIGFzIHdlbGwsIGJ1dCB0aGUgbGFjayBvZg0KPiA+IGFubm90YXRpb24gaW4NCj4gPiB0
aGUgc2NoZWR1bGVyIGNhbGxiYWNrcyBpcyByZWFsbHkgc3RhcnRpbmcgdG8gaHVydCB1cy4NCj4g
DQo+IFllYWggdGhpcyBpcyBqdXN0IGEgYml0IHRvbyBicmFpbi1tZWx0aW5nIHRvIHJldmlldywg
YnV0IEkgY29uY3VyDQo+IG5vdy4NCj4gDQo+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPg0KDQoNCg0KDQoNCg0KDQoNCg0KDQo+IA0KPiBJIHRoaW5r
IHdoYXQgd291bGQgaGVscCBpcyBzb21lIGxvY2tkZXAgc2VsZnRlc3RzIHRvIGNoZWNrIHRoYXQg
d2UNCj4gYm90aA0KPiBjYXRjaCB0aGUgc3R1ZmYgd2Ugd2FudCB0bywgYW5kIGRvbid0IGluY3Vy
IGZhbHNlIHBvc2l0aXZlcy4gTWF5YmUNCj4gd2l0aCBhDQo+IHBsZWEgdGhhdCBsb2NrZGVwIHNo
b3VsZCBoYXZlIHNvbWUgbmF0aXZlIGZvcm0gb2YgY3Jvc3MtcmVsZWFzZQ0KPiBhbm5vdGF0aW9u
cyAuLi4NCj4gDQo+IEJ1dCBkZWZpbml0ZWx5IHNlcGVyYXRlIHBhdGNoIHNldCwgc2luY2UgaXQg
bWlnaHQgdGFrZSBhIGZldyByb3VuZHMNCj4gb2YNCj4gcmV2aWV3IGJ5IGxvY2tkZXAgZm9sa3Mu
DQo+IC1TaW1hDQo+IA0KPiA+IA0KPiA+IFRoYW5rcywNCj4gPiANCj4gPiBUaG9tYXMNCj4gPiAN
Cj4gPiANCj4gPiANCj4gPiA+IC0tLQ0KPiA+ID4gwqAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jIHwgNiArKystLS0NCj4gPiA+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLQ0KPiA+ID4gZmVuY2UuYw0KPiA+
ID4gaW5kZXggZjE3N2M1NjI2OWJiLi4xN2Y2MzI3NjhlZjkgMTAwNjQ0DQo+ID4gPiAtLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYw0KPiA+ID4gQEAgLTMwOCw4ICszMDgsOCBAQCBib29sIGRtYV9mZW5jZV9iZWdp
bl9zaWduYWxsaW5nKHZvaWQpDQo+ID4gPiDCoMKgCWlmIChpbl9hdG9taWMoKSkNCj4gPiA+IMKg
wqAJCXJldHVybiB0cnVlOw0KPiA+ID4gLQkvKiAuLi4gYW5kIG5vbi1yZWN1cnNpdmUgcmVhZGxv
Y2sgKi8NCj4gPiA+IC0JbG9ja19hY3F1aXJlKCZkbWFfZmVuY2VfbG9ja2RlcF9tYXAsIDAsIDAs
IDEsIDEsIE5VTEwsDQo+ID4gPiBfUkVUX0lQXyk7DQo+ID4gPiArCS8qIC4uLiBhbmQgbm9uLXJl
Y3Vyc2l2ZSBzdWNjZXNzZnVsIHJlYWRfdHJ5bG9jayAqLw0KPiA+ID4gKwlsb2NrX2FjcXVpcmUo
JmRtYV9mZW5jZV9sb2NrZGVwX21hcCwgMCwgMSwgMSwgMSwgTlVMTCwNCj4gPiA+IF9SRVRfSVBf
KTsNCj4gPiA+IMKgwqAJcmV0dXJuIGZhbHNlOw0KPiA+ID4gwqAgfQ0KPiA+ID4gQEAgLTM0MCw3
ICszNDAsNyBAQCB2b2lkIF9fZG1hX2ZlbmNlX21pZ2h0X3dhaXQodm9pZCkNCj4gPiA+IMKgwqAJ
bG9ja19tYXBfYWNxdWlyZSgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFwKTsNCj4gPiA+IMKgwqAJbG9j
a19tYXBfcmVsZWFzZSgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFwKTsNCj4gPiA+IMKgwqAJaWYgKHRt
cCkNCj4gPiA+IC0JCWxvY2tfYWNxdWlyZSgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFwLCAwLCAwLCAx
LCAxLA0KPiA+ID4gTlVMTCwgX1RISVNfSVBfKTsNCj4gPiA+ICsJCWxvY2tfYWNxdWlyZSgmZG1h
X2ZlbmNlX2xvY2tkZXBfbWFwLCAwLCAxLCAxLCAxLA0KPiA+ID4gTlVMTCwgX1RISVNfSVBfKTsN
Cj4gPiA+IMKgIH0NCj4gPiA+IMKgICNlbmRpZg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
