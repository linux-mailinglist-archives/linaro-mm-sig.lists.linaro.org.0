Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3265140DD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 Apr 2022 05:38:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D673A4800F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 Apr 2022 03:38:03 +0000 (UTC)
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
	by lists.linaro.org (Postfix) with ESMTPS id 1D8533EE85
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 Apr 2022 03:37:59 +0000 (UTC)
Date: Fri, 29 Apr 2022 11:37:33 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1651203477;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TeqiwakqteIi2ux9lGt03PezpQ4Ym4Vpg4af5bUrfCk=;
	b=A8RwEq/r9EAn+Oa7cpOExaCcnom40vxxnKfIQHrrTjJISw1kLb22sEDC7KLr9k5NEQYFBI
	gYWc2ur/A2f5zaV+GQ6X49tdJGex9XeU5NsE7t1L3F3elKVKi6LoEUr2y4hjHIpNrCuUJU
	U/DzOkxM0LsiKRuoLwjq2gG4YkyU++o=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Cai Huoqing <cai.huoqing@linux.dev>
To: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <20220429033733.GA15753@chq-T47>
References: <20220426060808.78225-1-cai.huoqing@linux.dev>
 <YmqgailZKIuY7zTZ@orome>
 <beacfd71-ebd0-7fde-187f-34b7a42a47de@kapsi.fi>
 <aa55c03c-6d22-9718-a2a5-28d9ce114954@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa55c03c-6d22-9718-a2a5-28d9ce114954@nvidia.com>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: linux.dev
Message-ID-Hash: 2VNUI2HO7N4T5CZ6WEQQZG7NLOKJGPU5
X-Message-ID-Hash: 2VNUI2HO7N4T5CZ6WEQQZG7NLOKJGPU5
X-MailFrom: cai.huoqing@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mikko Perttunen <cyndis@kapsi.fi>, Thierry Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linux-tegra@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] drm/nvdla: Add driver support for NVDLA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2VNUI2HO7N4T5CZ6WEQQZG7NLOKJGPU5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjggNOaciCAyMiAxNzozNTo1NiwgSm9uIEh1bnRlciB3cm90ZToNCj4gDQo+IE9uIDI4LzA0
LzIwMjIgMTY6NTYsIE1pa2tvIFBlcnR0dW5lbiB3cm90ZToNCj4gPiBPbiA0LzI4LzIyIDE3OjEw
LCBUaGllcnJ5IFJlZGluZyB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgQXByIDI2LCAyMDIyIGF0IDAy
OjA3OjU3UE0gKzA4MDAsIENhaSBIdW9xaW5nIHdyb3RlOg0KPiA+ID4gPiBUaGUgTlZJRElBIERl
ZXAgTGVhcm5pbmcgQWNjZWxlcmF0b3IgKE5WRExBKSBpcyBhbiBvcGVuIHNvdXJjZSBJUA0KPiA+
ID4gPiB3aGljaCBpcyBpbnRlZ3JhdGVkIGludG8gTlZJRElBIEpldHNvbiBBR1ggWGF2aWVyLA0K
PiA+ID4gPiBzbyBhZGQgZHJpdmVyIHN1cHBvcnQgZm9yIHRoaXMgYWNjZWxlcmF0b3IuIg0KPiA+
ID4gDQo+ID4gPiBIaSwNCj4gPiA+IA0KPiA+ID4gbmljZSB0byBzZWUgdGhpcyB3b3JrIGdvaW5n
IG9uLiBGb3Igc3Vic2VxdWVudCByZXZpc2lvbnMsIGNhbiB5b3UgcGxlYXNlDQo+ID4gPiBhbHNv
IENjIHRoZSBUZWdyYSBtYWlsaW5nIGxpc3QgKGxpbnV4LXRlZ3JhQHZnZXIua2VybmVsLm9yZykg
YXMgd2VsbCBhcw0KPiA+ID4gdGhlIFRlZ3JhIHBsYXRmb3JtIG1haW50YWluZXJzICh0aGF0J3Mg
Sm9uIEh1bnRlciBhbmQgbXlzZWxmKS4gVGhpcyB3aWxsDQo+ID4gPiBtYWtlIHN1cmUgdGhhdCBt
b3JlIHBlb3BsZSB3aXRoIGFuIGludGVyZXN0IGluIHRoaXMgd2lsbCBzZWUgeW91ciB3b3JrLg0K
PiA+ID4gTm90IGV2ZXJ5b25lIGZvbGxvd3MgZHJpLWRldmVsLCBsaW5hcm8tbW0tc2lnIG9yIGxp
bnV4LW1lZGlhLg0KPiA+ID4gDQo+ID4gPiBUaGFua3MsDQo+ID4gPiBUaGllcnJ5DQo+ID4gDQo+
ID4gIEZyb20gYSBxdWljayBnbGFuY2UgaXQgbG9va3MgbGlrZSB0aGlzIGRyaXZlciBwb2tlcyBE
TEEgaGFyZHdhcmUNCj4gPiBkaXJlY3RseSB3aGljaCBpcyBub3QgdGhlIGludGVuZGVkIHByb2dy
YW1taW5nIG1vZGVsIG9uIFRlZ3JhIGhhcmR3YXJlDQo+ID4gKHRoZXJlIGFyZSBGYWxjb24gbWlj
cm9jb250cm9sbGVycyB0aGF0IG9mZmxvYWQgdGFzayBzY2hlZHVsaW5nIGFuZA0KPiA+IHN5bmNo
cm9uaXphdGlvbiBmcm9tIHRoZSBDUFUpLiBUaGUgaGFyZHdhcmUgaXMgYWxzbyBiZWhpbmQgdGhl
IEhvc3QxeA0KPiA+IGJ1cyBzbyBhIHNpbXBsZSBwbGF0Zm9ybSBkZXZpY2UgaXMgbm90IHN1ZmZp
Y2llbnQuDQo+ID4gDQo+ID4gV2FzIHRoaXMgZHJpdmVyIGRldmVsb3BlZCBhZ2FpbnN0IHNvbWUg
cGxhdGZvcm0gd2l0aCBPcGVuRExBIGhhcmR3YXJlDQo+ID4gKGkuZS4gbm90IFRlZ3JhKT8NCj4g
PiANCj4gPiBJZiBzbywgd2UnZCBuZWVkIHRvIHZlcmlmeSBpZiB0aGUgaGFyZHdhcmUgbWF0Y2hl
cyB0aGUgaGFyZHdhcmUgaW4NCj4gPiBUZWdyYTE5NC4gQWxzbywgdGhpcyBkcml2ZXIgbWF5IG5v
dCBiZSBpZGVhbCBmb3IgVGVncmEgcGxhdGZvcm1zIHNpbmNlDQo+ID4gd2Ugd291bGQgbGFjayB0
aGUgaGFyZHdhcmUgc2NoZWR1bGluZyBhbmQgc3luY2hyb25pemF0aW9uIGZhY2lsaXRpZXMuIEl0
DQo+ID4gaXMgbGlrZWx5IG5lY2Vzc2FyeSB0byBoYXZlIHNlcGFyYXRlIGRyaXZlcnMgZm9yIE9w
ZW5ETEEgYW5kIFRlZ3JhJ3MgRExBDQo+ID4gaW50ZWdyYXRpb24uDQo+IA0KPiANCj4gSSBiZWxp
ZXZlIHRoYXQgdGhpcyBpcyBkZXJpdmVkIGZyb20gdGhlIGZvbGxvd2luZyBnaXRodWIgcHJvamVj
dCAuLi4NCj4gDQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9udmRsYS9zdw0KPiANClN1cmUsIGJhc2Vk
IG9uIGh0dHBzOi8vZ2l0aHViLmNvbS9udmRsYS9zdw0KDQpUaGUgY29weXJpZ2h0IHJldGFpbiBp
biB0aGlzIGRyaXZlciwNCmxpa2UgIkNvcHlyaWdodCAoQykgMjAxNy0yMDE4IE5WSURJQSBDT1JQ
T1JBVElPTiINCg0KVGhhbmtzDQpDYWkNCj4gSm9uDQo+IA0KPiAtLSANCj4gbnZwdWJsaWMNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
