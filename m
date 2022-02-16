Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEE24B85D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 11:33:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46C4A3EEC4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 10:33:45 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by lists.linaro.org (Postfix) with ESMTPS id 0F0FA3ECAA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Feb 2022 10:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645007621; x=1676543621;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version:content-transfer-encoding;
  bh=0EU2xKs5/be5ABCYsSQiiugsjJ0zBzNPzGsy9hvHN5k=;
  b=e5uyAEH7Q91TUJQIzIlu7tJ+BEhaeLeqekdP++f7VZGRYmLJe+5WeFv/
   VvYDRgfrljwWmYYF1c40j6REuFKmZ3ecjg/hSubHVppaaH9aoFEdEXLDd
   f6iZ+s1h1T7N6pKSAwPsmyt9zDoEVCQnKd/gAJMYpnVt9P2vkYzH0oSbt
   LP/kbrxWdFceSvQbcwrntRbQT0iw+xa4BCYiDB5mycUFIhIjBmj2c9LLf
   pg/cmKbKvM0z7IsLTSNPaIKzw3Rso3QrlJYqyYUkMRbgSTpPOedotKpCA
   8pc6Uz1cle63eRuivs+6kaCwmATAXkug+jMzpJQorgogyrbV39heqYurU
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237980941"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600";
   d="scan'208";a="237980941"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2022 02:33:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600";
   d="scan'208";a="502968616"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost) ([10.252.13.113])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2022 02:33:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ville =?utf-8?B?U3ly?=
 =?utf-8?B?asOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <9a7b0e48-b00f-be11-7fc7-bc26719cbc1e@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220216083849.91239-1-jiapeng.chong@linux.alibaba.com>
 <87h78z5gmp.fsf@intel.com> <YgzBpX2SKCh4cb19@intel.com>
 <9a7b0e48-b00f-be11-7fc7-bc26719cbc1e@linux.intel.com>
Date: Wed, 16 Feb 2022 12:33:30 +0200
Message-ID: <87leyb3xtx.fsf@intel.com>
MIME-Version: 1.0
Message-ID-Hash: LJWCJDCL7ZZ2BLA4CTLS2L2QS267R77B
X-Message-ID-Hash: LJWCJDCL7ZZ2BLA4CTLS2L2QS267R77B
X-MailFrom: jani.nikula@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, airlied@linux.ie, intel-gfx@lists.freedesktop.org, Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, rodrigo.vivi@intel.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/i915/gt: fix unsigned integer to signed assignment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LJWCJDCL7ZZ2BLA4CTLS2L2QS267R77B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAxNiBGZWIgMjAyMiwgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6DQo+IE9uIDE2LzAyLzIwMjIgMDk6MTksIFZpbGxlIFN5cmrDpGzD
pCB3cm90ZToNCj4+IE9uIFdlZCwgRmViIDE2LCAyMDIyIGF0IDExOjAyOjA2QU0gKzAyMDAsIEph
bmkgTmlrdWxhIHdyb3RlOg0KPj4+IE9uIFdlZCwgMTYgRmViIDIwMjIsIEppYXBlbmcgQ2hvbmcg
PGppYXBlbmcuY2hvbmdAbGludXguYWxpYmFiYS5jb20+IHdyb3RlOg0KPj4+PiBFbGltaW5hdGUg
dGhlIGZvbGxvdyBzbWF0Y2ggd2FybmluZzoNCj4+Pj4NCj4+Pj4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYzo0NjQwDQo+Pj4+IGd1Y19jcmVhdGVfdmly
dHVhbCgpIHdhcm46IGFzc2lnbmluZyAoLTIpIHRvIHVuc2lnbmVkIHZhcmlhYmxlDQo+Pj4+ICd2
ZS0+YmFzZS5pbnN0YW5jZScuDQo+Pj4+DQo+Pj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2d1Y19zdWJtaXNzaW9uLmM6NDY0MQ0KPj4+PiBndWNfY3JlYXRlX3ZpcnR1YWwoKSB3
YXJuOiBhc3NpZ25pbmcgKC0yKSB0byB1bnNpZ25lZCB2YXJpYWJsZQ0KPj4+PiAndmUtPmJhc2Uu
dWFiaV9pbnN0YW5jZScuDQo+Pj4+DQo+Pj4+IFJlcG9ydGVkLWJ5OiBBYmFjaSBSb2JvdCA8YWJh
Y2lAbGludXguYWxpYmFiYS5jb20+DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IEppYXBlbmcgQ2hvbmcg
PGppYXBlbmcuY2hvbmdAbGludXguYWxpYmFiYS5jb20+DQo+Pj4NCj4+PiBUaGUgcmVwb3J0IHNl
ZW1zIHRvIGJlIHZhbGlkLCBidXQgSSBkb24ndCB0aGluayB0aGlzIGlzIHRoZSBmaXguDQo+Pj4N
Cj4+PiBXaGVyZSBkbyB3ZSBldmVuIGNoZWNrIGZvciBpbnZhbGlkIGluc3RhbmNlL3VhYmlfaW5z
dGFuY2UgaW4gY29kZT8NCj4+IA0KPj4gVGhlIHdob2xlIHRoaW5nIHNlZW1zIHJhdGhlciBwb29y
bHkgZG9jdW1lbnRlZCBhcyB0aGVyZSdzIGEgbWF0Y2hpbmcNCj4+IHVhYmkgc3RydWN0IHdpdGgg
X191MTYncyBhbmQgdGhlIG5lZ2F0aXZlIHZhbHVlcyBhcmUgZGVmaW5lZCByaWdodA0KPj4gdGhl
cmUgaW4gdGhlIHVhcGkgaGVhZGVyIGFzIHdlbGwuDQo+DQo+IE5lZ2F0aXZlIG9uZXMgYXJlIGV4
Y2VwdGlvbiB2YWx1ZXMgdG8gYmUgdXNlZCBpbiBjb25qdW5jdGlvbiB3aXRoIHRoZSB2aXJ0dWFs
IGVuZ2luZSB1YXBpIChzZWUgIkRPQzogVmlydHVhbCBFbmdpbmUgdUFQSSIgYW5kIGFsc28gY29t
bWVudCBuZXh0IHRvIEk5MTVfQ09OVEVYVF9QQVJBTV9FTkdJTkVTKS4NCj4NCj4gQUZBSUsgYXNz
aWduaW5nIG5lZ2F0aXZlIGludCB0byB1bnNpZ25lZCBpbnQgaXMgZGVmaW5lZCBhbmQgZmluZS4N
Cj4NCj4gQ29tcGlsZXIgZG9lcyB3YXJuIG9uIGNvbXBhcmlzb25zIHdoaWNoIGlzIHdoeSB3ZSBo
YXZlOg0KPg0KPiAuL2dlbS9pOTE1X2dlbV9idXN5LmM6ICBpZiAoaWQgPT0gKHUxNilJOTE1X0VO
R0lORV9DTEFTU19JTlZBTElEKQ0KPiAuL2dlbS9pOTE1X2dlbV9idXN5LmM6ICBpZiAoaWQgPT0g
KHUxNilJOTE1X0VOR0lORV9DTEFTU19JTlZBTElEKQ0KPiAuL2dlbS9pOTE1X2dlbV9jb250ZXh0
LmM6ICAgICAgICAgICAgICAgaWYgKGNpLmVuZ2luZV9jbGFzcyA9PSAodTE2KUk5MTVfRU5HSU5F
X0NMQVNTX0lOVkFMSUQgJiYNCj4gLi9nZW0vaTkxNV9nZW1fY29udGV4dC5jOiAgICAgICAgICAg
ICAgICAgICBjaS5lbmdpbmVfaW5zdGFuY2UgPT0gKHUxNilJOTE1X0VOR0lORV9DTEFTU19JTlZB
TElEX05PTkUpDQo+DQo+IFNvIEkgdGhpbmsgbm8gYWN0aW9uIG5lZWRlZCBoZXJlLg0KDQpXZSBu
ZXZlciBjaGVjayBpbnN0YW5jZSBvciB1YWJpX2luc3RhbmNlIG1lbWJlcnMgYWdhaW5zdA0KSTkx
NV9FTkdJTkVfQ0xBU1NfSU5WQUxJRF9WSVJUVUFMIGFueXdoZXJlLg0KDQpCUiwNCkphbmkuDQoN
Cj4NCj4gUmVnYXJkcywNCj4NCj4gVHZydGtvDQo+ICAgDQo+Pj4NCj4+PiBCUiwNCj4+PiBKYW5p
Lg0KPj4+DQo+Pj4NCj4+Pj4gLS0tDQo+Pj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3R5cGVzLmggfCA0ICsrLS0NCj4+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4+Pg0KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaA0KPj4+PiBpbmRleCAzNjM2NWJkYmUxZWUuLmRj
N2NjMDZjNjhlNyAxMDA2NDQNCj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3R5cGVzLmgNCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3R5cGVzLmgNCj4+Pj4gQEAgLTMyOCwxMCArMzI4LDEwIEBAIHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3Mgew0KPj4+PiAgIAlpbnRlbF9lbmdpbmVfbWFza190IGxvZ2ljYWxfbWFzazsN
Cj4+Pj4gICANCj4+Pj4gICAJdTggY2xhc3M7DQo+Pj4+IC0JdTggaW5zdGFuY2U7DQo+Pj4+ICsJ
czggaW5zdGFuY2U7DQo+Pj4+ICAgDQo+Pj4+ICAgCXUxNiB1YWJpX2NsYXNzOw0KPj4+PiAtCXUx
NiB1YWJpX2luc3RhbmNlOw0KPj4+PiArCXMxNiB1YWJpX2luc3RhbmNlOw0KPj4+PiAgIA0KPj4+
PiAgIAl1MzIgdWFiaV9jYXBhYmlsaXRpZXM7DQo+Pj4+ICAgCXUzMiBjb250ZXh0X3NpemU7DQo+
Pj4NCj4+PiAtLSANCj4+PiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyDQo+PiANCg0KLS0gDQpKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
