Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2417691DAB1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Jul 2024 10:56:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05B503F3AB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Jul 2024 08:56:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	by lists.linaro.org (Postfix) with ESMTPS id 20B0F3EF8D
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jul 2024 08:56:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=KwxLtoyk;
	spf=none (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com has no SPF policy when checking 192.198.163.9) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1719824210; x=1751360210;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=2BjaeP94w46H7n1r91rRWwoo5EsLAWvmvbXZeXccQmY=;
  b=KwxLtoykGkijQFKbG0EXoAWJ0AfgivuUIagssg3iTfH+c/PwuR4YKguD
   trSU3ycI8C+gTc5fyzIs4k8kDppDp9akwkyuxs/iV3fh88yjAgeqNJIV7
   kwe+geH/6YdKp7XVuuWOua6EmCY4T+jE05WYcNwH58LkKUUgrNKM3j0+e
   Z/1+jYM7HZSMHiayBLJqv03D7lTFjeSMDaS0luY5vubL0FSoljZFBAY40
   jASGTmw8JOBNsfFlt23MuBXn2HyQ1WES4V6j8TwFgYYooL+aCMH4wyNKY
   DdsX2WHK2CCG3qV9F4u6Fg9NnDXXac1gtx2yGrDi7/NfTK6KJEZ8HQ+AV
   A==;
X-CSE-ConnectionGUID: uOF3QWdUT72WmApQmvjWcw==
X-CSE-MsgGUID: OhyOkP+oRPqOVr6AWTeLFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11119"; a="27615958"
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800";
   d="scan'208";a="27615958"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2024 01:56:49 -0700
X-CSE-ConnectionGUID: GXt4AAnkRE+jbLwAYf14Jw==
X-CSE-MsgGUID: oiwCi+6pTtSSJPxeEC3Ngw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800";
   d="scan'208";a="45278246"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO [10.245.244.49]) ([10.245.244.49])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2024 01:56:47 -0700
Message-ID: <91cc5e6edbfc09497d9313872af914494f9cb394.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 01 Jul 2024 10:56:34 +0200
In-Reply-To: <Zn77penjAruTgLMM@phenom.ffwll.local>
References: <40611e5ff8c32b99e7863293a0baac078f323d8f.camel@linux.intel.com>
	 <Zn0c8l-yQih3j0NE@phenom.ffwll.local>
	 <6bc17415f36c2a9c689010e1cf397fc75a8df55e.camel@linux.intel.com>
	 <Zn77penjAruTgLMM@phenom.ffwll.local>
Autocrypt: addr=thomas.hellstrom@linux.intel.com; prefer-encrypt=mutual;
 keydata=mDMEZaWU6xYJKwYBBAHaRw8BAQdAj/We1UBCIrAm9H5t5Z7+elYJowdlhiYE8zUXgxcFz360SFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCBMaW51eCBlbWFpbCkgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPoiTBBMWCgA7FiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQuBaTVQrGBr/yQAD/Z1B+Kzy2JTuIy9LsKfC9FJmt1K/4qgaVeZMIKCAxf2UBAJhmZ5jmkDIf6YghfINZlYq6ixyWnOkWMuSLmELwOsgPuDgEZaWU6xIKKwYBBAGXVQEFAQEHQF9v/LNGegctctMWGHvmV/6oKOWWf/vd4MeqoSYTxVBTAwEIB4h4BBgWCgAgFiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwwACgkQuBaTVQrGBr/P2QD9Gts6Ee91w3SzOelNjsus/DcCTBb3fRugJoqcfxjKU0gBAKIFVMvVUGbhlEi6EFTZmBZ0QIZEIzOOVfkaIgWelFEH
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 20B0F3EF8D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	URIBL_BLOCKED(0.00)[intel.com:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VRVLBLC46X6L4BF2CZEODSCH7I6LXUIG
X-Message-ID-Hash: VRVLBLC46X6L4BF2CZEODSCH7I6LXUIG
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: dma_buf_detach lockdep splat
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VRVLBLC46X6L4BF2CZEODSCH7I6LXUIG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDI0LTA2LTI4IGF0IDIwOjA2ICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0K
PiBPbiBUaHUsIEp1biAyNywgMjAyNCBhdCAwMjoxODo0NFBNICswMjAwLCBUaG9tYXMgSGVsbHN0
csO2bSB3cm90ZToNCj4gPiBPbiBUaHUsIDIwMjQtMDYtMjcgYXQgMTA6MDQgKzAyMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6DQo+ID4gPiBPbiBXZWQsIEp1biAyNiwgMjAyNCBhdCAwNTo1ODowMlBN
ICswMjAwLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToNCj4gPiA+ID4gSGkhDQo+ID4gPiA+IA0K
PiA+ID4gPiBJJ20gc2VlaW5nIHRoZSBiZWxvdyBsb2NrZGVwIHNwbGF0IDEpIHdpdGggdGhlIHhl
IGRyaXZlciBpbiBhbg0KPiA+ID4gPiBpbXBvcnRlZA0KPiA+ID4gPiBkbWEtYnVmIG9iamVjdCBk
ZXN0cnVjdGlvbiBwYXRoLg0KPiA+ID4gPiANCj4gPiA+ID4gSXQncyBub3QgYmVjYXVzZSB3ZSBo
b2xkIHRoZSBkbWFfcmVzdiBsb2NrIGF0IHRoYXQgcG9pbnQsIGJ1dA0KPiA+ID4gPiByYXRoZXIN
Cj4gPiA+ID4gYmVjYXVzZSB3ZSBob2xkICphbm90aGVyKiBkbWFfcmVzdiBsb2NrIGF0IHRoYXQg
cG9pbnQsIGFuZCB0aGUNCj4gPiA+ID4gZG1hX3Jlc3YNCj4gPiA+ID4gZGV0YWNoIGhhcHBlbnMg
d2hlbiB0aGUgb2JqZWN0IGlzIGlkbGUsIGluIHRoaXMgY2FzZSBpdCB3YXMNCj4gPiA+ID4gaWRs
ZSBhdA0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gZmluYWwgcHV0KCksIGFuZCBkbWFfYnVmX2RldGFj
aCgpIGlzIGNhbGxlZCBpbiB0aGUgcHV0dGluZw0KPiA+ID4gPiBwcm9jZXNzLg0KPiA+ID4gPiAN
Cj4gPiA+ID4gSG9sZGluZyBhbm90aGVyIGRtYS1idWYgbG9jayBtaWdodCBoYXBwZW4gYXMgcGFy
dCBvZg0KPiA+ID4gPiBkcm1fZXhlY191bmxvY2tfYWxsLCBvciBzaW1wbHkgaWYgdGhlIHdpZGVy
IHZtIGRtYV9yZXN2IHdhcw0KPiA+ID4gPiBoZWxkIGF0DQo+ID4gPiA+IG9iamVjdCBwdXQgdGlt
ZSwgc28gaXQncyBub3QgYW4gdW5jb21tb24gcGF0dGVybiwgZXZlbiBpZiB0aGUNCj4gPiA+ID4g
ZHJtX2V4ZWMNCj4gPiA+ID4gaW5zdGFuY2UgY2FuIGJlIGZpeGVkIGJ5IHB1dHRpbmcgYWxsIGJv
cyBhZnRlciB1bmxvY2tpbmcgdGhlbQ0KPiA+ID4gPiBhbGwuDQo+ID4gPiA+IA0KPiA+ID4gPiBU
d28gc29sdXRpb25zIGNvbWluZyB0byBtaW5kIGhlcmU6DQo+ID4gPiA+IA0KPiA+ID4gPiAxKSBQ
cm92aWRlIGEgZG1hX2J1Zl9kZXRhY2hfbG9ja2VkKCkNCj4gPiA+IA0KPiA+ID4gVGhpcyBzbWVs
bHMgd2F5IHRvbyBtdWNoIGxpa2UgdGhlIGVuZGxlc3MgaGVhZGFjaGVzIHdlIGhhZCB3aXRoDQo+
ID4gPiBkcm1fZ2VtX29iamVjdF9wdXRfbG9ja2VkIGFuZCBmcmllbmRzIGFnYWluc3QNCj4gPiA+
IGRybV9kZXZpY2Uuc3RydWN0X211dGV4LiBPcg0KPiA+ID4gSSdtIG5vdCB1bmRlcnN0YW5kaW5n
IHdoYXQgeW91J3JlIGRvaW5nLCBiZWNhdXNlIEknbSBwcmV0dHkgc3VyZQ0KPiA+ID4geW91DQo+
ID4gPiBoYXZlDQo+ID4gPiB0byB0YWtlIHRoZSBkbWFfcmVzdiBsb2NrIG9uIGZpbmFsIHB1dCgp
IG9mIGltcG9ydGVkIG9iamVjdHMuDQo+ID4gPiBCZWNhdXNlDQo+ID4gPiB0aGF0DQo+ID4gPiBm
aW5hbCBwdXQoKSBpcyBvZiB0aGUgaW1wb3J0IHdyYXBwZXIsIHRoZSBleHBvcnRlciAoYW5kIG90
aGVyDQo+ID4gPiBpbXBvcnRlcnMpDQo+ID4gPiBjYW4gc3RpbGwgZ2V0IGF0IHRoYXQgb2JqZWN0
IGFuZCBzbyBkbWFfcmVzdl9sb2NrIGlzIHZlcnkgbXVjaA0KPiA+ID4gbmVlZGVkLg0KPiA+IA0K
PiA+IFllYWgsIHRoZSBUVE0gZmluYWwgcHV0IGxvb2tzIGxpa2UNCj4gPiANCj4gPiBpZiAoIWRt
YV9yZXN2X3RyeWxvY2soKSB8fCAhaWRsZSkNCj4gPiAJcXVldWVfd29yayhmaW5hbF9kaXN0cnVj
dGlvbik7DQo+ID4gDQo+ID4gZG1hX3Jlc3ZfdW5sb2NrKCk7DQo+ID4gZG1hX2J1Zl9kZXRhY2go
KTsgPC0tLSBsb2NrZGVwIHNwbGF0DQo+ID4gDQo+ID4gSGVyZSdzIHdoZXJlIGEgZG1hX2J1Zl9k
ZXRhY2hfbG9ja2VkKCkgd291bGQndmUgbWFkZSBzZW5zZSBiZWZvcmUNCj4gPiB0aGUNCj4gPiBk
bWFfcmVzdl91bmxvY2soKS4NCj4gPiANCj4gPiBCdXQgaWYgeW91IHRoaW5rIHRoaXMgd2lsbCBj
YXVzZSBncmllZiwgSSdtIGNvbXBsZXRlbHkgZmluZSB3aXRoDQo+ID4gZml4aW5nIHRoaXMgaW4g
VFRNIGJ5IGFsd2F5cyB0YWtpbmcgdGhlIGRlZmVycmluZyBwYXRoLg0KPiANCj4gT2ggSSBtaXN1
bmRlcnN0b29kIHdoYXQgeW91J3ZlIG1lYW50LCBJIHRob3VnaHQgeW91IHdhbnQgdG8gZG8gYSBo
dWdlDQo+IGV4ZXJjaXNlIGluIHBhc3NpbmcgdGhlICJkbyB3ZSBrbm93IHdlJ3JlIGxvY2tlZCIg
ZmxhZyBhbGwgdGhlIHdheQ0KPiB0aHJvdWdoDQo+IGVudGlyZSBjYWxsY2hhaW5zIHRvIGV4cG9y
dGVycy4NCj4gDQo+IElmIGl0J3MganVzdCBzbyB0aGF0IHRoZSBmYXN0cGF0aCBvZiBieXBhc3Np
bmcgdGhlIHdvcmtlciBjYW4NCj4gZnVuY3Rpb24gZm9yDQo+IGltcG9ydGVkIGJ1ZmZlcnMsIHRo
ZW4gSSB0aGluayB0aGF0J3MgZmluZS4gQXMgbG9uZyBhcyB3ZSBqdXN0IHB1bnQNCj4gdG8gdGhl
DQo+IHdvcmtlciBpZiB3ZSBjYW4ndCBnZXQgdGhlIGxvY2suDQoNCk9LLCBUQkgsIHRoZSBkcml2
ZXIgd291bGQgbmVlZCBhIGRybV9wcmltZV9nZW1fZGVzdHJveV9sb2NrZWQoKSBhcyB3ZWxsDQpz
aW5jZSB0aGF0J3MgdGhlIGZ1bmN0aW9uIHRoYXQgY2FsbHMgZG1hX2J1Zl9kZXRhY2guIEJ1dCBU
QkggSSB0aGluaw0KaXQncyB3b3J0aCBpdCBhbnl3YXkgc2luY2UgaWYgd2UganVzdCBtb2RpZnkg
VFRNIHRvIGFsd2F5cyB0YWtlIHRoZQ0KZGVsYXllZCBkZXN0cnVjdGlvbiBwYXRoLCBJIGZpZ3Vy
ZSBtdWNoIGNvZGUgd2lsbCBjb21lIHRvIGRlcGVuZCBvbiBpdA0KYW5kIGl0IHdpbGwgYmUgaW52
YXNpdmUgdG8gdXBkYXRlLg0KDQpJJ2xsIHRha2UgYSBxdWljayBzdGFiIGEgdGhhdCB0byBzZWUg
aG93IHVnbHkgaXQgYmVjb21lcy4NCg0KL1Rob21hcw0KDQoNCj4gLVNpbWENCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
