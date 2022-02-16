Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E2C4B8509
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 10:59:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C1243ECE4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 09:59:05 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by lists.linaro.org (Postfix) with ESMTPS id 4E92A3ECE4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Feb 2022 09:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645005541; x=1676541541;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=2Nl47R+l/Dyorm/plhVMc/vkL37v28gUnjuXNQsPVTw=;
  b=L8MJnHCwjhDYyejbODIcMufEc9OGsJA5Pb4zGB9LR4TViidXrepapyJ5
   HPMXadhO9IeE9iOEQscypTbSNO56bBUD998Kzl+uZUnWgUYta2R0ZAUAv
   KkmkcCbVcNrQOsefnEMecJqNN+EQvi18emEnkHfYAr0SOUUd+spGvkzP4
   39kRx7ZaZljEUHv/CcF/JybE3vjgLME+CEwzfyTILP9j1HQvg9sMPTH8f
   nnjzu1WBRb+94OGmEcLT3mdHT3qpWHpi3JPkXcP3xjt6aET6j+zAHSpEZ
   698AcYKTgzNgZvDAYrq54Rumy8gy5EKFZJmrpvXhu3bcC/voMmPMjKcjF
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="311306931"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600";
   d="scan'208";a="311306931"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2022 01:57:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600";
   d="scan'208";a="502952891"
Received: from sphadnis-mobl1.amr.corp.intel.com (HELO [10.212.82.113]) ([10.212.82.113])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2022 01:57:52 -0800
Message-ID: <9a7b0e48-b00f-be11-7fc7-bc26719cbc1e@linux.intel.com>
Date: Wed, 16 Feb 2022 09:57:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20220216083849.91239-1-jiapeng.chong@linux.alibaba.com>
 <87h78z5gmp.fsf@intel.com> <YgzBpX2SKCh4cb19@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YgzBpX2SKCh4cb19@intel.com>
Message-ID-Hash: E6BHC45F5TWX7AUJTN26YUIPYSCZ2BGA
X-Message-ID-Hash: E6BHC45F5TWX7AUJTN26YUIPYSCZ2BGA
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, airlied@linux.ie, intel-gfx@lists.freedesktop.org, Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, rodrigo.vivi@intel.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/i915/gt: fix unsigned integer to signed assignment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E6BHC45F5TWX7AUJTN26YUIPYSCZ2BGA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAxNi8wMi8yMDIyIDA5OjE5LCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+IE9uIFdlZCwg
RmViIDE2LCAyMDIyIGF0IDExOjAyOjA2QU0gKzAyMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPj4g
T24gV2VkLCAxNiBGZWIgMjAyMiwgSmlhcGVuZyBDaG9uZyA8amlhcGVuZy5jaG9uZ0BsaW51eC5h
bGliYWJhLmNvbT4gd3JvdGU6DQo+Pj4gRWxpbWluYXRlIHRoZSBmb2xsb3cgc21hdGNoIHdhcm5p
bmc6DQo+Pj4NCj4+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlz
c2lvbi5jOjQ2NDANCj4+PiBndWNfY3JlYXRlX3ZpcnR1YWwoKSB3YXJuOiBhc3NpZ25pbmcgKC0y
KSB0byB1bnNpZ25lZCB2YXJpYWJsZQ0KPj4+ICd2ZS0+YmFzZS5pbnN0YW5jZScuDQo+Pj4NCj4+
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jOjQ2NDEN
Cj4+PiBndWNfY3JlYXRlX3ZpcnR1YWwoKSB3YXJuOiBhc3NpZ25pbmcgKC0yKSB0byB1bnNpZ25l
ZCB2YXJpYWJsZQ0KPj4+ICd2ZS0+YmFzZS51YWJpX2luc3RhbmNlJy4NCj4+Pg0KPj4+IFJlcG9y
dGVkLWJ5OiBBYmFjaSBSb2JvdCA8YWJhY2lAbGludXguYWxpYmFiYS5jb20+DQo+Pj4gU2lnbmVk
LW9mZi1ieTogSmlhcGVuZyBDaG9uZyA8amlhcGVuZy5jaG9uZ0BsaW51eC5hbGliYWJhLmNvbT4N
Cj4+DQo+PiBUaGUgcmVwb3J0IHNlZW1zIHRvIGJlIHZhbGlkLCBidXQgSSBkb24ndCB0aGluayB0
aGlzIGlzIHRoZSBmaXguDQo+Pg0KPj4gV2hlcmUgZG8gd2UgZXZlbiBjaGVjayBmb3IgaW52YWxp
ZCBpbnN0YW5jZS91YWJpX2luc3RhbmNlIGluIGNvZGU/DQo+IA0KPiBUaGUgd2hvbGUgdGhpbmcg
c2VlbXMgcmF0aGVyIHBvb3JseSBkb2N1bWVudGVkIGFzIHRoZXJlJ3MgYSBtYXRjaGluZw0KPiB1
YWJpIHN0cnVjdCB3aXRoIF9fdTE2J3MgYW5kIHRoZSBuZWdhdGl2ZSB2YWx1ZXMgYXJlIGRlZmlu
ZWQgcmlnaHQNCj4gdGhlcmUgaW4gdGhlIHVhcGkgaGVhZGVyIGFzIHdlbGwuDQoNCk5lZ2F0aXZl
IG9uZXMgYXJlIGV4Y2VwdGlvbiB2YWx1ZXMgdG8gYmUgdXNlZCBpbiBjb25qdW5jdGlvbiB3aXRo
IHRoZSB2aXJ0dWFsIGVuZ2luZSB1YXBpIChzZWUgIkRPQzogVmlydHVhbCBFbmdpbmUgdUFQSSIg
YW5kIGFsc28gY29tbWVudCBuZXh0IHRvIEk5MTVfQ09OVEVYVF9QQVJBTV9FTkdJTkVTKS4NCg0K
QUZBSUsgYXNzaWduaW5nIG5lZ2F0aXZlIGludCB0byB1bnNpZ25lZCBpbnQgaXMgZGVmaW5lZCBh
bmQgZmluZS4NCg0KQ29tcGlsZXIgZG9lcyB3YXJuIG9uIGNvbXBhcmlzb25zIHdoaWNoIGlzIHdo
eSB3ZSBoYXZlOg0KDQouL2dlbS9pOTE1X2dlbV9idXN5LmM6ICBpZiAoaWQgPT0gKHUxNilJOTE1
X0VOR0lORV9DTEFTU19JTlZBTElEKQ0KLi9nZW0vaTkxNV9nZW1fYnVzeS5jOiAgaWYgKGlkID09
ICh1MTYpSTkxNV9FTkdJTkVfQ0xBU1NfSU5WQUxJRCkNCi4vZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
YzogICAgICAgICAgICAgICBpZiAoY2kuZW5naW5lX2NsYXNzID09ICh1MTYpSTkxNV9FTkdJTkVf
Q0xBU1NfSU5WQUxJRCAmJg0KLi9nZW0vaTkxNV9nZW1fY29udGV4dC5jOiAgICAgICAgICAgICAg
ICAgICBjaS5lbmdpbmVfaW5zdGFuY2UgPT0gKHUxNilJOTE1X0VOR0lORV9DTEFTU19JTlZBTElE
X05PTkUpDQoNClNvIEkgdGhpbmsgbm8gYWN0aW9uIG5lZWRlZCBoZXJlLg0KDQpSZWdhcmRzLA0K
DQpUdnJ0a28NCiAgDQo+Pg0KPj4gQlIsDQo+PiBKYW5pLg0KPj4NCj4+DQo+Pj4gLS0tDQo+Pj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCB8IDQgKystLQ0K
Pj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+
Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
dHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oDQo+
Pj4gaW5kZXggMzYzNjViZGJlMWVlLi5kYzdjYzA2YzY4ZTcgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgNCj4+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaA0KPj4+IEBAIC0zMjgsMTAg
KzMyOCwxMCBAQCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzIHsNCj4+PiAgIAlpbnRlbF9lbmdpbmVf
bWFza190IGxvZ2ljYWxfbWFzazsNCj4+PiAgIA0KPj4+ICAgCXU4IGNsYXNzOw0KPj4+IC0JdTgg
aW5zdGFuY2U7DQo+Pj4gKwlzOCBpbnN0YW5jZTsNCj4+PiAgIA0KPj4+ICAgCXUxNiB1YWJpX2Ns
YXNzOw0KPj4+IC0JdTE2IHVhYmlfaW5zdGFuY2U7DQo+Pj4gKwlzMTYgdWFiaV9pbnN0YW5jZTsN
Cj4+PiAgIA0KPj4+ICAgCXUzMiB1YWJpX2NhcGFiaWxpdGllczsNCj4+PiAgIAl1MzIgY29udGV4
dF9zaXplOw0KPj4NCj4+IC0tIA0KPj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcg0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
