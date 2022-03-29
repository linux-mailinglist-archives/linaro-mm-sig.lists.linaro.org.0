Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 827D54EC4B6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:42:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3A7A3EF82
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:42:45 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by lists.linaro.org (Postfix) with ESMTPS id D06C13EBCC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 07:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648537642; x=1680073642;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=hJCPwH7SOlcNlxTVq5wQ0kZ37jUz1wZR7OY+KI6Gqrg=;
  b=TEs9VjXQmR6Qj6SqgOPb2izvueeT3gt6HQSKVFADs3RxRiuaR2hWfl0j
   4VQ+ImngGQc375qCp0UjqzdIi9twayo+Wsq3bC49Lhex7dUuMjcT8Df5w
   jB3hke2FN0o8Y7KktJcJi6qIbrSu6FIOD6d5NQDJWfocIl3R2XdNRILc/
   U/SBwkYOk1MMMqHYk+jZ46TeYOQGl0p3ZGBFw7DaHt7CREBwxGKENGAz9
   iJl3MDpCUV2n0/ooowZUUw28LQDdUifQRuE5P2dU1ENUwSzsiXdOUQl6r
   rS1bDOT0YRxcN61vMkBG+a6pPg0fsjzc3mbdOa4g9Bky3jrcseUZsQmxt
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="284075400"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400";
   d="scan'208";a="284075400"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 00:07:20 -0700
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400";
   d="scan'208";a="652722563"
Received: from ettammin-mobl1.ger.corp.intel.com (HELO [10.249.254.86]) ([10.249.254.86])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 00:07:03 -0700
Message-ID: <3d46abe4-5113-e1b8-56be-19ac678d62f2@linux.intel.com>
Date: Tue, 29 Mar 2022 09:07:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 ville.syrjala@linux.intel.com, daniel@ffwll.ch
References: <20220329070001.134180-1-christian.koenig@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220329070001.134180-1-christian.koenig@amd.com>
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y5FJSMW6FSSVGRNQ4QW4TAI5GWMA5BCA
X-Message-ID-Hash: Y5FJSMW6FSSVGRNQ4QW4TAI5GWMA5BCA
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:41:06 +0000
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf/sync-file: fix logic error in new fence merge code
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y5FJSMW6FSSVGRNQ4QW4TAI5GWMA5BCA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

Rm9yIHRoZSBzZXJpZXMsDQoNClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFz
LmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+DQoNCg0KT24gMy8yOS8yMiAwOTowMCwgQ2hyaXN0
aWFuIEvDtm5pZyB3cm90ZToNCj4gV2hlbiB0aGUgYXJyYXkgaXMgZW1wdHkgYmVjYXVzZSBldmVy
eXRoaW5nIGlzIHNpZ25hbGVkIHdlIGNhbid0IHVzZQ0KPiBhZGRfZmVuY2UoKSB0byBhZGQgc29t
ZXRoaW5nIGJlY2F1c2UgdGhhdCB3b3VsZCBmaWx0ZXIgdGhlIHNpZ25hbGVkDQo+IGZlbmNlIGFn
YWluLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQo+IEZpeGVzOiA1MTlmNDkwZGIwN2UgKCJkbWEtYnVmL3N5bmMtZmlsZTog
Zml4IHdhcm5pbmcgYWJvdXQgZmVuY2UgY29udGFpbmVycyIpDQo+IC0tLQ0KPiAgIGRyaXZlcnMv
ZG1hLWJ1Zi9zeW5jX2ZpbGUuYyB8IDIgKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9z
eW5jX2ZpbGUuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYw0KPiBpbmRleCBiOGRlYTRl
YzEyM2IuLjUxNGQyMTMyNjFkZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNf
ZmlsZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYw0KPiBAQCAtMjYyLDcg
KzI2Miw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGVfbWVyZ2UoY29uc3Qg
Y2hhciAqbmFtZSwgc3RydWN0IHN5bmNfZmlsZSAqYSwNCj4gICAJfQ0KPiAgIA0KPiAgIAlpZiAo
aW5kZXggPT0gMCkNCj4gLQkJYWRkX2ZlbmNlKGZlbmNlcywgJmluZGV4LCBkbWFfZmVuY2VfZ2V0
X3N0dWIoKSk7DQo+ICsJCWZlbmNlc1tpbmRleCsrXSA9IGRtYV9mZW5jZV9nZXRfc3R1YigpOw0K
PiAgIA0KPiAgIAlpZiAobnVtX2ZlbmNlcyA+IGluZGV4KSB7DQo+ICAgCQlzdHJ1Y3QgZG1hX2Zl
bmNlICoqdG1wOw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
