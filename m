Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C90A512AF2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 07:31:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F85747FB8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 05:31:04 +0000 (UTC)
Received: from out2.migadu.com (out2.migadu.com [188.165.223.204])
	by lists.linaro.org (Postfix) with ESMTPS id 0E5AC47FA4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 12:24:57 +0000 (UTC)
Date: Tue, 26 Apr 2022 20:24:04 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1650975895;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8ihWfybmQBLwWs2JDnc+H/HKvcZbSpd7+Ep5O3IrtFw=;
	b=RxPE+S/KZdvXUPCvXIpza6SglxVNoMOI1kqQVJy2QL5+sq14mkJDaDXHCg/nbpzOaVBdPo
	cdLL7xkr5NfPMQor8TaWV2iOB6XUiyoU2pPVh4qcxYVHHhhyP/Urq0MTP8JFi2VCXp7AFp
	yyhYC5ykSb/j7hdEe6UsQcwRNo+WeYg=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Cai Huoqing <cai.huoqing@linux.dev>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20220426122404.GA6788@chq-T47>
References: <20220426060808.78225-1-cai.huoqing@linux.dev>
 <20220426060808.78225-5-cai.huoqing@linux.dev>
 <618a4f53-0998-1e6b-e32b-8bf2d3057cec@amd.com>
 <CAK8P3a2w1t7Sk897u0ndD66Lwp5a4DuOqqQLN4yHSg=JmrpOHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2w1t7Sk897u0ndD66Lwp5a4DuOqqQLN4yHSg=JmrpOHQ@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: linux.dev
X-MailFrom: cai.huoqing@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TYLYI3KCKN7KHJPK4XDGLJQDVRPKOB74
X-Message-ID-Hash: TYLYI3KCKN7KHJPK4XDGLJQDVRPKOB74
X-Mailman-Approved-At: Thu, 28 Apr 2022 05:30:34 +0000
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] drm/nvdla/uapi: Add UAPI of NVDLA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TYLYI3KCKN7KHJPK4XDGLJQDVRPKOB74/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjYgNOaciCAyMiAxMjo1MDo1MCwgQXJuZCBCZXJnbWFubiB3cm90ZToNCj4gT24gVHVlLCBB
cHIgMjYsIDIwMjIgYXQgODozMSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+IEFtIDI2LjA0LjIyIHVtIDA4OjA4IHNjaHJpZWIgQ2Fp
IEh1b3Fpbmc6DQo+ID4gPiBUaGUgTlZJRElBIERlZXAgTGVhcm5pbmcgQWNjZWxlcmF0b3IgKE5W
RExBKSBpcyBhbiBvcGVuIHNvdXJjZSBJUA0KPiA+ID4gd2hpY2ggaXMgaW50ZWdyYXRlZCBpbnRv
IE5WSURJQSBKZXRzb24gQUdYIFhhdmllciwNCj4gPiA+IHNvIGFkZCBVQVBJIG9mIHRoaXMgZHJp
dmVyLg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IENhaSBIdW9xaW5nIDxjYWkuaHVvcWlu
Z0BsaW51eC5kZXY+DQo+IA0KPiBJIHNhdyB0aGUgcmVwbHkgYnV0IG5vIHRoZSBvcmlnaW5hbCBt
YWlsLCBzbyBJJ2xsIGNvbW1lbnQgaGVyZQ0KSGksIHRoYW5rcyBmb3IgeW91ciByZXBseQ0KVGhl
IHBhdGNoZXMgaGVyZToNCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMjA0MjYwNjA4
MDguNzgyMjUtMy1jYWkuaHVvcWluZ0BsaW51eC5kZXYvDQo+IA0KPiA+ID4gKw0KPiA+ID4gKyNp
ZiAhZGVmaW5lZChfX0tFUk5FTF9fKQ0KPiA+ID4gKyNkZWZpbmUgX191c2VyDQo+ID4gPiArI2Vu
ZGlmDQo+IA0KPiBUaGlzIGlzIGRvbmUgaW4gdGhlICdtYWtlIGhlYWRlcnNfaW5zdGFsbCcgc3Rl
cCwgbm8gbmVlZCB0byBkZWZpbmUgaXQNCj4gc2VwYXJhdGVseS4NCj4gDQo+ID4gPiArI2RlZmlu
ZSBOVkRMQV9OT19USU1FT1VUICAgICgweGZmZmZmZmZmKQ0KPiA+ID4gKyAgICAgX191MzIgdGlt
ZW91dDsNCj4gPg0KPiA+IFdoYXQgZm9ybWF0IGRvZXMgdGhhdCB0aW1lb3V0IHZhbHVlIGhhdmU/
DQo+ID4NCj4gPiBJbiBnZW5lcmFsIGl0IGlzIGJlc3QgcHJhY3RpY2UgdG8gaGF2ZSBhYnNvbHV0
ZSA2NGJpdCBuYW5vc2Vjb25kDQo+ID4gdGltZW91dHMgKHRvIGJlIHVzZWQgd2l0aCBrdGltZSBp
bnNpZGUgdGhlIGtlcm5lbCkgc28gdGhhdCByZXN0YXJ0aW5nDQo+ID4gaW50ZXJydXB0ZWQgSU9D
VExzIHdvcmtzIHNtb290aC4NCj4gDQo+IFdoZW4gdXNpbmcgYWJzb2x1dGUgdmFsdWVzLCBvbmUg
YWxzbyBuZWVkcyB0byBkZWNpZGUgd2hldGhlciB0aGlzIHNob3VsZCBiZQ0KPiByZWFsdGltZSwg
bW9ub3RvbmljIG9yIGJvb3R0aW1lIGFuZCBkb2N1bWVudCB0aGUgZGVjaXNpb24uDQo+IA0KPiAN
Cj4gPiA+ICsgKiBzdHJ1Y3QgbnZkbGFfc3VibWl0X2FyZ3Mgc3RydWN0dXJlIGZvciB0YXNrIHN1
Ym1pdA0KPiA+ID4gKyAqDQo+ID4gPiArICogQHRhc2tzICAgICAgICAgICAgcG9pbnRlciB0byBh
cnJheSBvZiBzdHJ1Y3QgbnZkbGFfaW9jdGxfc3VibWl0X3Rhc2sNCj4gPiA+ICsgKiBAbnVtX3Rh
c2tzICAgICAgICAgICAgICAgIG51bWJlciBvZiBlbnRyaWVzIGluIHRhc2tzDQo+ID4gPiArICog
QGZsYWdzICAgICAgICAgICAgZmxhZ3MgZm9yIHRhc2sgc3VibWl0LCBubyBmbGFncyBkZWZpbmVk
IHlldA0KPiA+ID4gKyAqIEB2ZXJzaW9uICAgICAgICAgIHZlcnNpb24gb2YgdGFzayBzdHJ1Y3R1
cmUNCj4gPiA+ICsgKg0KPiA+ID4gKyAqLw0KPiA+ID4gK3N0cnVjdCBudmRsYV9zdWJtaXRfYXJn
cyB7DQo+ID4gPiArICAgICBfX3U2NCB0YXNrczsNCj4gPiA+ICsgICAgIF9fdTE2IG51bV90YXNr
czsNCj4gPiA+ICsjZGVmaW5lIE5WRExBX01BWF9UQVNLU19QRVJfU1VCTUlUICAgMjQNCj4gPiA+
ICsjZGVmaW5lIE5WRExBX1NVQk1JVF9GTEFHU19BVE9NSUMgICAgKDEgPDwgMCkNCj4gPg0KPiA+
IFdlbGwgdGhhdCAibm8gZmxhZ3MgZGVmaW5lZCB5ZXQiIGZyb20gdGhlIGNvbW1lbnQgYWJvdmUg
aXMgcHJvYmFibHkNCj4gPiBvdXRkYXRlZCA6KQ0KPiANCj4gPiA+ICsgICAgIF9fdTE2IGZsYWdz
Ow0KPiA+ID4gKyAgICAgX191MzIgdmVyc2lvbjsNCj4gPiA+ICt9Ow0KPiANCj4gVmVyc2lvbmVk
IGludGVyZmFjZXMgYXJlIHVzdWFsbHkgYSBiYWQgaWRlYS4gSWYgeW91IGludHJvZHVjZSBhbiBp
b2N0bCBjb21tYW5kLA0KPiBpdCBzaG91bGQgZ2VuZXJhbGx5IGtlZXAgd29ya2luZy4gSWYgeW91
IGV2ZXIgbmVlZCB0byBjaGFuZ2UgdGhlIGludGVyZmFjZSwganVzdA0KPiB1c2UgYSBuZXcgY29t
bWFuZCBudW1iZXIgZm9yIHRoZSBuZXcgdmVyc2lvbi4NCj4gDQo+ID4gPiArLyoqDQo+ID4gPiAr
ICogc3RydWN0IG52ZGxhX2dlbV9jcmVhdGVfYXJncyBmb3IgYWxsb2NhdGluZyBETUEgYnVmZmVy
IHRocm91Z2ggR0VNDQo+ID4gPiArICoNCj4gPiA+ICsgKiBAaGFuZGxlICAgICAgICAgICBoYW5k
bGUgdXBkYXRlZCBieSBrZXJuZWwgYWZ0ZXIgYWxsb2NhdGlvbg0KPiA+ID4gKyAqIEBmbGFncyAg
ICAgICAgICAgIGltcGxlbWVudGF0aW9uIHNwZWNpZmljIGZsYWdzDQo+ID4gPiArICogQHNpemUg
ICAgICAgICAgICAgc2l6ZSBvZiBidWZmZXIgdG8gYWxsb2NhdGUNCj4gPiA+ICsgKi8NCj4gPiA+
ICtzdHJ1Y3QgbnZkbGFfZ2VtX2NyZWF0ZV9hcmdzIHsNCj4gPiA+ICsgICAgIF9fdTMyIGhhbmRs
ZTsNCj4gPiA+ICsgICAgIF9fdTMyIGZsYWdzOw0KPiA+ID4gKyAgICAgX191NjQgc2l6ZTsNCj4g
PiA+ICt9Ow0KPiA+ID4gKw0KPiA+ID4gKy8qKg0KPiA+ID4gKyAqIHN0cnVjdCBudmRsYV9nZW1f
bWFwX29mZnNldF9hcmdzIGZvciBtYXBwaW5nIERNQSBidWZmZXINCj4gPiA+ICsgKg0KPiA+ID4g
KyAqIEBoYW5kbGUgICAgICAgICAgIGhhbmRsZSBvZiB0aGUgYnVmZmVyDQo+ID4gPiArICogQHJl
c2VydmVkICAgICAgICAgcmVzZXJ2ZWQgZm9yIHBhZGRpbmcNCj4gPiA+ICsgKiBAb2Zmc2V0ICAg
ICAgICAgICBvZmZzZXQgdXBkYXRlZCBieSBrZXJuZWwgYWZ0ZXIgbWFwcGluZw0KPiA+ID4gKyAq
Lw0KPiA+ID4gK3N0cnVjdCBudmRsYV9nZW1fbWFwX29mZnNldF9hcmdzIHsNCj4gPiA+ICsgICAg
IF9fdTMyIGhhbmRsZTsNCj4gPiA+ICsgICAgIF9fdTMyIHJlc2VydmVkOw0KPiA+ID4gKyAgICAg
X191NjQgb2Zmc2V0Ow0KPiA+ID4gK307DQo+ID4gPiArDQo+ID4gPiArI2RlZmluZSBEUk1fTlZE
TEFfU1VCTUlUICAgICAgICAgICAgIDB4MDANCj4gPiA+ICsjZGVmaW5lIERSTV9OVkRMQV9HRU1f
Q1JFQVRFIDB4MDENCj4gPiA+ICsjZGVmaW5lIERSTV9OVkRMQV9HRU1fTU1BUCAgICAgICAgICAg
MHgwMg0KPiANCj4gSXMgdGhpcyBhbiBhY3R1YWwgbW1hcCgpIGNhbGwsIG9yIHNvbWV0aGluZyB0
aGF0IG5lZWRzIHRvIGJlIGRvbmUgYmVmb3JlIHRoZQ0KPiBtbWFwKCk/IElzIHRoZSAnaGFuZGxl
JyBhIGZpbGUgZGVzY3JpcHRvciBvciBzb21lIGludGVybmFsIG51bWJlcj8NCkl0J3MgYW4gZ2Vt
IG9iamVjdCBtbWFwIHdoaWNoIGNhbGxzIGRybV9nZW1fZHVtYl9tYXBfb2Zmc2V0KCkgaW5zaWRl
IGFuZA0KdGhlIGhhbmRsZSBpcyBnZW0gb2JqZWN0IGhhbmRsZS4NCg0KVGhhbmtzLA0KQ2FpDQo+
IA0KPiAgICAgICBBcm5kDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
