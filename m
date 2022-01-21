Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 905D74B6434
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:20:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8467402E3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:20:48 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by lists.linaro.org (Postfix) with ESMTPS id 2C7903EE0C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jan 2022 07:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1642750280; x=1674286280;
  h=message-id:date:mime-version:subject:to:references:from:
   in-reply-to:content-transfer-encoding;
  bh=ASOROsILjd0PMR1PX1r+grUH0Atx+d5KkMA1O6KZxbA=;
  b=f9KIFVLjq8/ZI48DdMeq8AyV2fPGlXlTtb8JyCNMo8kynbyyz8srLzBQ
   DnJEQyiiEW/R88PGzKjnnP0no2XXnQHi2TrJU6HbB80bngVJ8hMC+kb7e
   VY3tRbPrHWaZLW93EN+Xl+cYL59L8NCy4Pe7/jL27+VNoQCxPnOuAs8lc
   G/EO1t+OaRfWZLzzs9n6EdqB1Sboys+KtRZdeZAZvtS989+0kij8SvvYW
   8UcIUQZFTRfeIXKXu90wGOD6xL/UUnTBvfMD6UZjql09+vqAEYxqbqVqT
   yELXI3DMey7GL7pOtyVD9sef9/t/S/2uWWGJ5CH8zLYtwlQoZLbK6rgmA
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="244407969"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600";
   d="scan'208";a="244407969"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2022 23:31:17 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600";
   d="scan'208";a="533167635"
Received: from hekner-mobl5.ger.corp.intel.com (HELO [10.249.254.132]) ([10.249.254.132])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2022 23:31:15 -0800
Message-ID: <be78e61c-992c-4fa6-7a2b-b9b93310a34d@linux.intel.com>
Date: Fri, 21 Jan 2022 08:31:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 sumit.semwal@linaro.org, gustavo@padovan.org, daniel.vetter@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20220120132747.2348-1-christian.koenig@amd.com>
 <20220120132747.2348-3-christian.koenig@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220120132747.2348-3-christian.koenig@amd.com>
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PFBNY5MF4I6YWQY5OKBD732F3IR5CTCK
X-Message-ID-Hash: PFBNY5MF4I6YWQY5OKBD732F3IR5CTCK
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:20:18 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/9] dma-buf: warn about dma_fence_array container rules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PFBNY5MF4I6YWQY5OKBD732F3IR5CTCK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAxLzIwLzIyIDE0OjI3LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBJdCdzIG5vdCBh
bGxvd2VkIHRvIG5lc3QgYW5vdGhlciBkbWFfZmVuY2UgY29udGFpbmVyIGludG8gYSBkbWFfZmVu
Y2VfYXJyYXkNCj4gb3Igb3RoZXJ3aXNlIHdlIGNhbiBydW4gaW50byByZWN1cnNpb24uDQo+DQo+
IFdhcm4gYWJvdXQgdGhhdCB3aGVuIHdlIGNyZWF0ZSBhIGRtYV9mZW5jZV9hcnJheS4NCj4NCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPiBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4N
Cj4gLS0tDQo+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgMTMgKysrKysr
KysrKysrKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLWFycmF5LmMNCj4gaW5kZXggM2UwN2Y5NjFlMmYzLi40YmZiY2I4ODViYmMg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCj4gQEAgLTE3Niw2ICsxNzYsMTkg
QEAgc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZShpbnQgbnVt
X2ZlbmNlcywNCj4gICANCj4gICAJYXJyYXktPmJhc2UuZXJyb3IgPSBQRU5ESU5HX0VSUk9SOw0K
PiAgIA0KPiArCS8qIGRtYV9mZW5jZV9hcnJheSBvYmplY3RzIHNob3VsZCBuZXZlciBjb250YWlu
IGFueSBvdGhlciBmZW5jZQ0KTml0OiBGaXJzdCBjb21tZW50IGxpbmUgb2YgbXVsdGktbGluZSBj
b21tZW50cyBzaG91bGRuJ3QgY29udGFpbiB0ZXh0Lg0KPiArCSAqIGNvbnRhaW5lcnMgb3Igb3Ro
ZXJ3aXNlIHdlIHJ1biBpbnRvIHJlY3Vyc2lvbiBhbmQgcG90ZW50aWFsIGtlcm5lbA0KPiArCSAq
IHN0YWNrIG92ZXJmbG93IG9uIG9wZXJhdGlvbnMgb24gdGhlIGRtYV9mZW5jZV9hcnJheS4NCj4g
KwkgKg0KPiArCSAqIFRoZSBjb3JyZWN0IHdheSBvZiBoYW5kbGluZyB0aGlzIGlzIHRvIGZsYXR0
ZW4gb3V0IHRoZSBhcnJheSBieSB0aGUNCj4gKwkgKiBjYWxsZXIgaW5zdGVhZC4NCj4gKwkgKg0K
PiArCSAqIEVuZm9yY2UgdGhpcyBoZXJlIGJ5IGNoZWNraW5nIHRoYXQgd2UgZG9uJ3QgY3JlYXRl
IGEgZG1hX2ZlbmNlX2FycmF5DQo+ICsJICogd2l0aCBhbnkgY29udGFpbmVyIGluc2lkZS4NCj4g
KwkgKi8NCj4gKwl3aGlsZSAoc2Vxbm8tLSkNCj4gKwkJV0FSTl9PTihkbWFfZmVuY2VfaXNfY29u
dGFpbmVyKGZlbmNlc1tzZXFub10pKTsNCj4gKw0KDQpzL3NlcW5vL251bV9mZW5jZXMvZyA/DQoN
ClRoYW5rcywNCg0KVGhvbWFzDQoNCg0KDQo+ICAgCXJldHVybiBhcnJheTsNCj4gICB9DQo+ICAg
RVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKTsNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
