Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BB27E4B6435
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:20:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2E533EE1D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:20:53 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by lists.linaro.org (Postfix) with ESMTPS id E6FE53EE0C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jan 2022 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1642750389; x=1674286389;
  h=message-id:date:mime-version:subject:to:references:from:
   in-reply-to:content-transfer-encoding;
  bh=j6D2M5eJcGFfscpsShMvN4Ex93Qg3ANgb4qLkoAi0Oo=;
  b=NOrPMVILcHlsOp8qExoCP4uIe1ltY3bcOIk+2udXHtQTovRnItgqSf4+
   Q6nhcJGV9POZMt2cyb/Dds+5yxaS17Wjyvxs+G4Zk3RkAhaoNtjN2QOWH
   9nPT/XxkCdyqoRXKSLBDAw31UZAcB25KtQ2iBQdBmm68sGhgJoL1Bzs+0
   KA1nXXofkcSRg3Xw6btVIfZM4qf+wZFXpDUW8rAZinL1KBOwfEk0sriLY
   NMfwVo9r2wPYmV17z7UydgrLuLhPBHskQY4sEhHvHhBzcxlsj7gQ8rw9Y
   LRcR30x5CzIXfqdObaioB9m8hDhmRhdOBmLnpJRVbe99hrv5wtzp782tc
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="243182708"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600";
   d="scan'208";a="243182708"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2022 23:33:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600";
   d="scan'208";a="533168548"
Received: from hekner-mobl5.ger.corp.intel.com (HELO [10.249.254.132]) ([10.249.254.132])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2022 23:32:59 -0800
Message-ID: <ca907ad0-9199-d13e-5033-7113d732d476@linux.intel.com>
Date: Fri, 21 Jan 2022 08:32:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 sumit.semwal@linaro.org, gustavo@padovan.org, daniel.vetter@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20220120132747.2348-1-christian.koenig@amd.com>
 <20220120132747.2348-4-christian.koenig@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220120132747.2348-4-christian.koenig@amd.com>
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Z23YVURZ7PH2XJ7UA2OA3TZACTKLLUVY
X-Message-ID-Hash: Z23YVURZ7PH2XJ7UA2OA3TZACTKLLUVY
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:20:20 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dma-buf: Warn about dma_fence_chain container rules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z23YVURZ7PH2XJ7UA2OA3TZACTKLLUVY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAxLzIwLzIyIDE0OjI3LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBDaGFpbmluZyBv
ZiBkbWFfZmVuY2VfY2hhaW4gb2JqZWN0cyBpcyBvbmx5IGFsbG93ZWQgdGhyb3VnaCB0aGUgcHJl
dg0KPiBmZW5jZSBhbmQgbm90IHRocm91Z2ggdGhlIGNvbnRhaW5lZCBmZW5jZS4NCj4NCj4gV2Fy
biBhYm91dCB0aGF0IHdoZW4gd2UgY3JlYXRlIGEgZG1hX2ZlbmNlX2NoYWluLg0KPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+
IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPg0KPiAt
LS0NCj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgfCA4ICsrKysrKysrDQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS1jaGFpbi5jDQo+IGluZGV4IDFiNGNiM2U1Y2VjOS4uZmEzM2Y2YjdmNzdiIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCj4gKysrIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQo+IEBAIC0yNTQsNSArMjU0LDEzIEBAIHZvaWQgZG1h
X2ZlbmNlX2NoYWluX2luaXQoc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hhaW4sDQo+ICAgDQo+
ICAgCWRtYV9mZW5jZV9pbml0KCZjaGFpbi0+YmFzZSwgJmRtYV9mZW5jZV9jaGFpbl9vcHMsDQo+
ICAgCQkgICAgICAgJmNoYWluLT5sb2NrLCBjb250ZXh0LCBzZXFubyk7DQo+ICsNCj4gKwkvKiBD
aGFpbmluZyBkbWFfZmVuY2VfY2hhaW4gY29udGFpbmVyIHRvZ2V0aGVyIGlzIG9ubHkgYWxsb3dl
ZCB0aHJvdWdoDQoNCk5pdDogTXVsdGktbGluZSBjb21tZW50Lg0KDQpPdGhlcndpc2UsIFJldmll
d2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5j
b20+DQoNCj4gKwkgKiB0aGUgcHJldiBmZW5jZSBhbmQgbm90IHRocm91Z2ggdGhlIGNvbnRhaW5l
ZCBmZW5jZS4NCj4gKwkgKg0KPiArCSAqIFRoZSBjb3JyZWN0IHdheSBvZiBoYW5kbGluZyB0aGlz
IGlzIHRvIGZsYXR0ZW4gb3V0IHRoZSBmZW5jZQ0KPiArCSAqIHN0cnVjdHVyZSBpbnRvIGEgZG1h
X2ZlbmNlX2FycmF5IGJ5IHRoZSBjYWxsZXIgaW5zdGVhZC4NCj4gKwkgKi8NCj4gKwlXQVJOX09O
KGRtYV9mZW5jZV9pc19jaGFpbihmZW5jZSkpOw0KPiAgIH0NCj4gICBFWFBPUlRfU1lNQk9MKGRt
YV9mZW5jZV9jaGFpbl9pbml0KTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
