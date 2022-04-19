Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AAF511160
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Apr 2022 08:40:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5D9F4800B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Apr 2022 06:40:36 +0000 (UTC)
Received: from out1.migadu.com (out1.migadu.com [91.121.223.63])
	by lists.linaro.org (Postfix) with ESMTPS id E71D3402E6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Apr 2022 14:35:58 +0000 (UTC)
Date: Tue, 19 Apr 2022 22:35:29 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1650378957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QawvvwMKEl52ui8qtXQSbeAZjXUbrb0qfB23spQfQ5o=;
	b=V2i84UtxHjyIILi/gKDecMrXxZHmNluIocH16r4VPQD6u4LEOHLM+hQg3Pt5MaSbts9s1F
	pIy1R8GpScNNC3spVtoSLh6JAQcD3kjT7l23TKEbJhDrTtWtr9vSsO1w/8ujxPTvCe0HN4
	KmQ5TaCHq+fTgMKN7hS57OFf0e/ApZk=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Cai Huoqing <cai.huoqing@linux.dev>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20220419143529.GA44323@chq-T47>
References: <20220419135908.39606-1-cai.huoqing@linux.dev>
 <20220419135908.39606-3-cai.huoqing@linux.dev>
 <20bac605-97e6-e5cd-c4e4-83a8121645d8@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20bac605-97e6-e5cd-c4e4-83a8121645d8@amd.com>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: linux.dev
X-MailFrom: cai.huoqing@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FWCAW57MWVWVXTDQWKZYNA7LYEFVMBRI
X-Message-ID-Hash: FWCAW57MWVWVXTDQWKZYNA7LYEFVMBRI
X-Mailman-Approved-At: Wed, 27 Apr 2022 06:40:23 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] drm/nvdla: Add driver support for NVDLA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FWCAW57MWVWVXTDQWKZYNA7LYEFVMBRI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTkgNOaciCAyMiAxNjowNzo0NCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMTku
MDQuMjIgdW0gMTU6NTkgc2NocmllYiBDYWkgSHVvcWluZzoNCj4gPiBUaGUgTlZJRElBIERlZXAg
TGVhcm5pbmcgQWNjZWxlcmF0b3IgKE5WRExBKSBpcyBhbiBvcGVuIHNvdXJjZSBJUA0KPiA+IHdo
aWNoIGlzIGludGVncmF0ZWQgaW50byBOVklESUEgSmV0c29uIEFHWCBYYXZpZXIsDQo+ID4gc28g
YWRkIGRyaXZlciBzdXBwb3J0IGZvciB0aGlzIGFjY2VsZXJhdG9yLg0KPiA+IA0KPiA+IFNpZ25l
ZC1vZmYtYnk6IENhaSBIdW9xaW5nIDxjYWkuaHVvcWluZ0BsaW51eC5kZXY+DQo+ID4gDQo+IA0K
PiBXZWxsIGRvZXNuJ3QgbG9va3Mgc28gYmFkIG9uIGZpcnN0IGdsYW5jZSAocmVnYXJkaW5nIGNv
ZGluZyBzdHlsZSBldGMuLikNCj4gDQo+IEJ1dCBhbSBJIGJsaW5kIG9yIGlzbid0IHRoZXJlIGFu
eSBVQVBJIGZvciB0aGUgZHJpdmVyPyBJIG1lYW4gYWRkaW5nIGEgRFJNDQo+IGRyaXZlciB3aXRo
b3V0IGFueSBjaGFuZ2UgdG8gaW5jbHVkZS91YXBpL2RybSBpcyByZWFsbHkgb2RkLg0KdGhhbmtz
IGZvciB5b3VyIHJlcGx5LCBJIHdpbGwgcmVuYW1lIG52ZGxhX2lvY3RsLmggd2hpY2ggaXMgVUFQ
SSBoZWFkZmlsZSwNCnRoZW4gcHV0IGl0IHRvIGluY2x1ZGUvdWFwaS9kcm0uDQoNCnRoYW5rcywN
CkNhaQ0KPiANCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
