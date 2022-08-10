Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C106E5A9A41
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 16:29:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFA17479BE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 14:29:48 +0000 (UTC)
Received: from mail-m11885.qiye.163.com (mail-m11885.qiye.163.com [115.236.118.85])
	by lists.linaro.org (Postfix) with ESMTPS id E0E654049D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 04:16:21 +0000 (UTC)
Received: from [192.168.111.100] (unknown [58.22.7.114])
	by mail-m11885.qiye.163.com (Hmail) with ESMTPA id C437A4C0160;
	Wed, 10 Aug 2022 12:16:18 +0800 (CST)
Message-ID: <05488346-ebbd-b1d9-4094-a83daf65f6db@rock-chips.com>
Date: Wed, 10 Aug 2022 12:16:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20220803083237.3701-1-jeffy.chen@rock-chips.com>
 <c7cb225b-7f21-8d9a-773b-efc655e6332c@amd.com>
 <7cd16264-fa84-7b50-f3ed-64f7f22dcef2@rock-chips.com>
 <64bf4e4b-4e22-0ff0-5f92-76f603c04ec0@amd.com>
 <cd806954-e94e-aec8-2b0c-4047da9a92ec@rock-chips.com>
 <0e284f57-e03c-f128-f6e7-52a58edbcd54@amd.com>
 <71e47fe6-440b-e9ea-cd66-8362c41428ca@amd.com>
 <6b3e82f9-6902-fd5c-c67d-e2c42c995133@rock-chips.com>
 <cb478ae3-a6c6-ea90-a47c-13d52b606942@amd.com>
From: Chen Jeffy <jeffy.chen@rock-chips.com>
In-Reply-To: <cb478ae3-a6c6-ea90-a47c-13d52b606942@amd.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTUIeVh9KT0oaGh0ZHhpLTVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NQw6HCo6ET0rMywTAQ0sGhY#
	NB0KCS5VSlVKTU1LSktPQkxCTktIVTMWGhIXVREeHR0CVRgTHhU7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFNSUtINwY+
X-HM-Tid: 0a8285f7b2cd2eb9kusnc437a4c0160
X-MailFrom: jeffy.chen@rock-chips.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SEVBL6S6EW4SLGD6PVITO3UWYU6MIMCQ
X-Message-ID-Hash: SEVBL6S6EW4SLGD6PVITO3UWYU6MIMCQ
X-Mailman-Approved-At: Thu, 01 Sep 2022 14:29:44 +0000
CC: Andy Yan <andy.yan@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, David Airlie <airlied@linux.ie>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-media@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/gem: Fix GEM handle release errors
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SEVBL6S6EW4SLGD6PVITO3UWYU6MIMCQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiA4Lzkg5pif5pyf5LqMIDE4OjE4LCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOg0KPiBIaSBKZWZmeSwNCj4gDQo+IEFtIDA5LjA4LjIyIHVtIDEyOjAyIHNjaHJpZWIg
Q2hlbiBKZWZmeToNCj4+IEhpIENocmlzdGlhbiwNCj4+DQo+PiBPbiA4Lzkg5pif5pyf5LqMIDE3
OjA4LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IEhpIEplZmZ5LA0KPj4+DQo+Pj4gQW0g
MDkuMDguMjIgdW0gMDk6NTUgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPj4+PiBbU05JUF0N
Cj4+Pj4+Pg0KPj4+Pj4+Pg0KPj4+Pj4+Pg0KPj4+Pj4+PiBTbyB3ZSBhcmUgYWxsb3dpbmcgR0VN
IG9iamVjdCB0byBoYXZlIG11bHRpcGxlIGhhbmRsZXMsIGFuZCBHRU0gDQo+Pj4+Pj4+IG9iamVj
dCBjb3VsZCBoYXZlIGF0IG1vc3Qgb25lIGRtYS1idWYsIGRvZXNuJ3QgdGhhdCBtZWFucyB0aGF0
IA0KPj4+Pj4+PiBkbWEtYnVmIGNvdWxkIG1hcCB0byBtdWx0aXBsZSBoYW5kbGVzPw0KPj4+Pj4+
DQo+Pj4+Pj4gTm8sIGF0IGxlYXN0IG5vdCBmb3IgdGhlIHNhbWUgR0VNIGZpbGUgcHJpdmF0ZS4g
VGhhdCdzIHRoZSByZWFzb24gDQo+Pj4+Pj4gd2h5IHRoZSByYiBpcyBpbmRleGVkIGJ5IHRoZSBk
bWFfYnVmIG9iamVjdCBhbmQgbm90IHRoZSBoYW5kbGUuDQo+Pj4+Pj4NCj4+Pj4+PiBJbiBvdGhl
ciB3b3JkcyB0aGUgcmIgaXMgc28gdGhhdCB5b3UgaGF2ZSBleGFjdGx5IG9uZSBoYW5kbGUgZm9y
IA0KPj4+Pj4+IGVhY2ggZG1hX2J1ZiBpbiBlYWNoIGZpbGUgcHJpdmF0ZS4NCj4+Pj4+DQo+Pj4+
PiBJIGRvbid0IHRoaW5rIHNvLCBiZWNhdXNlIGlmIHVzZXIgZ2V0IG11bHRpcGxlIGhhbmRsZXMg
Zm9yIHRoZSBzYW1lIA0KPj4+Pj4gR0VNIG9iaiBhbmQgdXNlIGRybV9nZW1fcHJpbWVfaGFuZGxl
X3RvX2ZkKCkgZm9yIHRob3NlIGhhbmRsZXMNCj4+Pj4NCj4+Pj4gTWhtLCB0aGF0IHdvcmtzPyBU
aGlzIGlzIGlsbGVnYWwgYW5kIHNob3VsZCBoYXZlIGJlZW4gcHJldmVudGVkIA0KPj4+PiBzb21l
aG93Lg0KPj4+DQo+Pj4gQXQgbGVhc3QgSSBzZWUgdGhlIHByb2JsZW0gbm93LiBJJ20ganVzdCBu
b3Qgc3VyZSBob3cgdG8gZml4IGl0Lg0KPj4+DQo+Pj4gWW91ciB2MiBwYXRjaCBpbmRlZWQgcHJl
dmVudHMgbGVha2FnZSBvZiB0aGUgZHJtX3ByaW1lX21lbWJlciBmb3IgdGhlIA0KPj4+IGFkZGl0
aW9uYWwgaGFuZGxlcywgYnV0IHRob3NlIHNob3VsZG4ndCBoYXZlIGJlZW4gYWRkZWQgaW4gdGhl
IGZpcnN0IA0KPj4+IHBsYWNlLg0KPj4+DQo+Pj4gVGhlIGlzc3VlIGlzIHRoYXQgd2l0aCB0aGlz
IHdlIG1ha2UgaXQgdW5wcmVkaWN0YWJsZSB3aGljaCBoYW5kbGUgaXMgDQo+Pj4gcmV0dXJuZWQu
IEUuZy4gaWYgd2UgaGF2ZSBoYW5kbGUgMiw1LDcgaXQgY2FuIGJlIHRoYXQgYmVjYXVzZSBvZiAN
Cj4+PiByZS1iYWxhbmNpbmcgdGhlIHRyZWUgc29tZXRpbWVzIDIgYW5kIHNvbWV0aW1lcyA1IGlz
IHJldHVybmVkLg0KPj4NCj4+IE1heWJlIGNhY2hlIHRoZSBsYXRlc3QgcmV0dXJuZWQgaGFuZGxl
IGluIHRoZSBvYmooYWZ0ZXIgDQo+PiBkcm1fZ2VtX3ByaW1lX2ZkX3RvX2hhbmRsZSksIGFuZCBj
bGVhciBpdCB3aGVuIHRoYXQgaGFuZGxlIGJlZW4gDQo+PiBkZWxldGVkIGluIGRybV9nZW1faGFu
ZGxlX2RlbGV0ZSgpPw0KPiANCj4gVGhhdCB3b24ndCB3b3JrLiBUaGUgaGFuZGxlIGlzIHBlciBm
cHJpdiwgYnV0IHRoZSBzYW1lIG9iamVjdCBpcyB1c2VkIGJ5IA0KPiBtdWx0aXBsZSBmcHJpdiBp
bnN0YW5jZXMuID4NCj4gV2hhdCB3ZSBjb3VsZCBtYXliZSBkbyBpcyB0byBwcmV2ZW50IGFkZGlu
ZyBtdWx0aXBsZSBsb2NrdXAgc3RydWN0dXJlcyANCj4gd2hlbiB0aGVyZSBpcyBhbHJlYWR5IG9u
ZSwgYnV0IHRoYXQncyBub3Qgc29tZXRoaW5nIEkgY2FuIGVhc2lseSBqdWRnZS4NCg0KU28gbWF5
YmUgd2UgbmVlZCB0byBwcm90ZWN0IHRoYXQgdW5pcXVlIGxvb2t1cCBzdHJ1Y3R1cmUgYmVlbiBk
ZWxldGVkIA0KYmVmb3JlIGRlbGV0aW5nIHRoZSBsYXN0IGhhbmRsZSwgYW5kIG1ha2UgdGhlIGhh
bmRsZSB1bmlxdWUgZm9yIEdFTSBvYmosIA0KaW4gY2FzZSBvZiB0aGF0IHVuaXF1ZSBsb29rdXAn
cyBoYW5kbGUgYmVlbiBkZWxldGVkIGVhcmxpZXIgdGhhdCBvdGhlcnM/DQoNCkhvdyBhYm91dCBh
ZGRpbmcgYSBHRU0gb2JqIHJidHJlZSB0b28sIGFuZCBtYWtlIGRybV9wcmltZV9tZW1iZXIga3Jl
Zi1lZD8NCg0KU28gdGhlIA0KZHJtX3ByaW1lX2FkZF9idWZfaGFuZGxlL2RybV9nZW1faGFuZGxl
X2NyZWF0ZV90YWlsL2RybV9nZW1faGFuZGxlX2RlbGV0ZSANCndvdWxkIGJlIGxvb2tpbmcgdXAg
ZHJtX3ByaW1lX21lbWJlciBieSBHRU0gb2JqLCB0aGVuIHVwZGF0ZSBkbWFidWYgcmIgDQphbmQg
aW5jL2RlYyBkcm1fcHJpbWVfbWVtYmVyJ3Mga3JlZiwgDQpkcm1fZ2VtX3ByaW1lX2ZkX3RvX2hh
bmRsZS9kcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCByZW1haW4gdW5jaGFuZ2VkLg0KDQo+IA0K
PiBEYW5pZWwgc2VlbXMgdG8gYmUgZWl0aGVyIHZlcnkgYnVzeSBvciBvbiB2YWNhdGlvbiBvdGhl
cndpc2UgaGUgd291bGQgDQo+IGhhdmUgY2hpbWVkIGluIGJ5IG5vdy4NCj4gDQo+IEFueXdheSwg
eW91ciBwYXRjaCBzZWVtcyB0byBhdCBsZWFzdCBmaXggdGhlIG9mIGhhbmQgbWVtb3J5IGxlYWss
IHNvIA0KPiBmZWVsIGZyZWUgdG8gYWRkIG15IHJiIHRvIHRoZSB2MiBhbmQgcHVzaCBpdCB0byBk
cm0tbWlzYy1maXhlcyBmb3Igbm93Lg0KPiANCj4gVGhhbmtzLA0KPiBDaHJpc3RpYW4uDQo+IA0K
Pj4NCj4+DQo+PiBTb21ldGhpbmcgbGlrZToNCj4+IGRybV9nZW1fcHJpbWVfZmRfdG9faGFuZGxl
DQo+PiDCoCBoYW5kbGUgPSBkcm1fcHJpbWVfbG9va3VwX2J1Zl9oYW5kbGUoYnVmKQ0KPj4gwqAg
b2JqID0gb2JqX2Zyb21faGFuZGxlKGhhbmRsZSkNCj4+IMKgIGlmICFvYmotPnByaW1hcnlfaGFu
ZGxlDQo+PiDCoMKgwqAgb2JqLT5wcmltYXJ5X2hhbmRsZSA9IGhhbmRsZQ0KPj4gwqAgcmV0dXJu
IG9iai0+cHJpbWFyeV9oYW5kbGUNCj4+DQo+PiBPciBtYXliZSBsaW1pdCBHRU0gb2JqIHdpdGgg
YSBzaW5nbGUgbGlmZXRpbWUgaGFuZGxlPw0KPj4NCj4+Pg0KPj4+IFRoYXQncyBub3QgcmVhbGx5
IGEgZ29vZCBpZGVhIGFuZCBicmVha3MgYSBjb3VwbGUgb2YgYXNzdW1wdGlvbnMgYXMgDQo+Pj4g
ZmFyIGFzIEkga25vdy4NCj4+Pg0KPj4+IElkZWFzPw0KPj4+DQo+Pj4gVGhhbmtzLA0KPj4+IENo
cmlzdGlhbi4NCj4+Pg0KPj4NCj4gDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
