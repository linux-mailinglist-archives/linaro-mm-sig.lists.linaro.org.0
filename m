Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 599D85A8E31
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:17:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E4C03EF28
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:17:21 +0000 (UTC)
Received: from mail-m11885.qiye.163.com (mail-m11885.qiye.163.com [115.236.118.85])
	by lists.linaro.org (Postfix) with ESMTPS id B1DD23EC14
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Aug 2022 10:02:31 +0000 (UTC)
Received: from [192.168.111.100] (unknown [58.22.7.114])
	by mail-m11885.qiye.163.com (Hmail) with ESMTPA id B6C864C0A76;
	Tue,  9 Aug 2022 18:02:28 +0800 (CST)
Message-ID: <6b3e82f9-6902-fd5c-c67d-e2c42c995133@rock-chips.com>
Date: Tue, 9 Aug 2022 18:02:27 +0800
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
From: Chen Jeffy <jeffy.chen@rock-chips.com>
In-Reply-To: <71e47fe6-440b-e9ea-cd66-8362c41428ca@amd.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGhlMVh5LS0tMTE4dHU8ZSVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDI6KRw5Aj0wPy0WDDoQFBgz
	DUkKFDVVSlVKTU1LS0hCSE9CT01KVTMWGhIXVREeHR0CVRgTHhU7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPTkJINwY+
X-HM-Tid: 0a82820e436a2eb9kusnb6c864c0a76
X-MailFrom: jeffy.chen@rock-chips.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5I234UNI3IQN42RXK3UHNAEVPV5QBFS6
X-Message-ID-Hash: 5I234UNI3IQN42RXK3UHNAEVPV5QBFS6
X-Mailman-Approved-At: Thu, 01 Sep 2022 06:17:09 +0000
CC: Andy Yan <andy.yan@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, David Airlie <airlied@linux.ie>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-media@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/gem: Fix GEM handle release errors
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5I234UNI3IQN42RXK3UHNAEVPV5QBFS6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiA4Lzkg5pif5pyf5LqMIDE3OjA4LCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOg0KPiBIaSBKZWZmeSwNCj4gDQo+IEFtIDA5LjA4LjIyIHVtIDA5OjU1IHNjaHJpZWIg
Q2hyaXN0aWFuIEvDtm5pZzoNCj4+IFtTTklQXQ0KPj4+Pg0KPj4+Pj4NCj4+Pj4+DQo+Pj4+PiBT
byB3ZSBhcmUgYWxsb3dpbmcgR0VNIG9iamVjdCB0byBoYXZlIG11bHRpcGxlIGhhbmRsZXMsIGFu
ZCBHRU0gDQo+Pj4+PiBvYmplY3QgY291bGQgaGF2ZSBhdCBtb3N0IG9uZSBkbWEtYnVmLCBkb2Vz
bid0IHRoYXQgbWVhbnMgdGhhdCANCj4+Pj4+IGRtYS1idWYgY291bGQgbWFwIHRvIG11bHRpcGxl
IGhhbmRsZXM/DQo+Pj4+DQo+Pj4+IE5vLCBhdCBsZWFzdCBub3QgZm9yIHRoZSBzYW1lIEdFTSBm
aWxlIHByaXZhdGUuIFRoYXQncyB0aGUgcmVhc29uIA0KPj4+PiB3aHkgdGhlIHJiIGlzIGluZGV4
ZWQgYnkgdGhlIGRtYV9idWYgb2JqZWN0IGFuZCBub3QgdGhlIGhhbmRsZS4NCj4+Pj4NCj4+Pj4g
SW4gb3RoZXIgd29yZHMgdGhlIHJiIGlzIHNvIHRoYXQgeW91IGhhdmUgZXhhY3RseSBvbmUgaGFu
ZGxlIGZvciANCj4+Pj4gZWFjaCBkbWFfYnVmIGluIGVhY2ggZmlsZSBwcml2YXRlLg0KPj4+DQo+
Pj4gSSBkb24ndCB0aGluayBzbywgYmVjYXVzZSBpZiB1c2VyIGdldCBtdWx0aXBsZSBoYW5kbGVz
IGZvciB0aGUgc2FtZSANCj4+PiBHRU0gb2JqIGFuZCB1c2UgZHJtX2dlbV9wcmltZV9oYW5kbGVf
dG9fZmQoKSBmb3IgdGhvc2UgaGFuZGxlcw0KPj4NCj4+IE1obSwgdGhhdCB3b3Jrcz8gVGhpcyBp
cyBpbGxlZ2FsIGFuZCBzaG91bGQgaGF2ZSBiZWVuIHByZXZlbnRlZCBzb21laG93Lg0KPiANCj4g
QXQgbGVhc3QgSSBzZWUgdGhlIHByb2JsZW0gbm93LiBJJ20ganVzdCBub3Qgc3VyZSBob3cgdG8g
Zml4IGl0Lg0KPiANCj4gWW91ciB2MiBwYXRjaCBpbmRlZWQgcHJldmVudHMgbGVha2FnZSBvZiB0
aGUgZHJtX3ByaW1lX21lbWJlciBmb3IgdGhlIA0KPiBhZGRpdGlvbmFsIGhhbmRsZXMsIGJ1dCB0
aG9zZSBzaG91bGRuJ3QgaGF2ZSBiZWVuIGFkZGVkIGluIHRoZSBmaXJzdCBwbGFjZS4NCj4gDQo+
IFRoZSBpc3N1ZSBpcyB0aGF0IHdpdGggdGhpcyB3ZSBtYWtlIGl0IHVucHJlZGljdGFibGUgd2hp
Y2ggaGFuZGxlIGlzIA0KPiByZXR1cm5lZC4gRS5nLiBpZiB3ZSBoYXZlIGhhbmRsZSAyLDUsNyBp
dCBjYW4gYmUgdGhhdCBiZWNhdXNlIG9mIA0KPiByZS1iYWxhbmNpbmcgdGhlIHRyZWUgc29tZXRp
bWVzIDIgYW5kIHNvbWV0aW1lcyA1IGlzIHJldHVybmVkLg0KDQpNYXliZSBjYWNoZSB0aGUgbGF0
ZXN0IHJldHVybmVkIGhhbmRsZSBpbiB0aGUgb2JqKGFmdGVyIA0KZHJtX2dlbV9wcmltZV9mZF90
b19oYW5kbGUpLCBhbmQgY2xlYXIgaXQgd2hlbiB0aGF0IGhhbmRsZSBiZWVuIGRlbGV0ZWQgDQpp
biBkcm1fZ2VtX2hhbmRsZV9kZWxldGUoKT8NCg0KU29tZXRoaW5nIGxpa2U6DQpkcm1fZ2VtX3By
aW1lX2ZkX3RvX2hhbmRsZQ0KICAgaGFuZGxlID0gZHJtX3ByaW1lX2xvb2t1cF9idWZfaGFuZGxl
KGJ1ZikNCiAgIG9iaiA9IG9ial9mcm9tX2hhbmRsZShoYW5kbGUpDQogICBpZiAhb2JqLT5wcmlt
YXJ5X2hhbmRsZQ0KICAgICBvYmotPnByaW1hcnlfaGFuZGxlID0gaGFuZGxlDQogICByZXR1cm4g
b2JqLT5wcmltYXJ5X2hhbmRsZQ0KDQpPciBtYXliZSBsaW1pdCBHRU0gb2JqIHdpdGggYSBzaW5n
bGUgbGlmZXRpbWUgaGFuZGxlPw0KDQo+IA0KPiBUaGF0J3Mgbm90IHJlYWxseSBhIGdvb2QgaWRl
YSBhbmQgYnJlYWtzIGEgY291cGxlIG9mIGFzc3VtcHRpb25zIGFzIGZhciANCj4gYXMgSSBrbm93
Lg0KPiANCj4gSWRlYXM/DQo+IA0KPiBUaGFua3MsDQo+IENocmlzdGlhbi4NCj4gDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
