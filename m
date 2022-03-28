Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D944EC49B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:41:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60EBB3EC72
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:41:28 +0000 (UTC)
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
	by lists.linaro.org (Postfix) with ESMTPS id B18803EA27
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 07:36:23 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aef5a.dynamic.kabel-deutschland.de [95.90.239.90])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	(Authenticated sender: pmenzel)
	by mx.molgen.mpg.de (Postfix) with ESMTPSA id 48F0061EA1927;
	Mon, 28 Mar 2022 09:36:21 +0200 (CEST)
Message-ID: <cd36a994-0c13-201c-522d-5f8af53e1e87@molgen.mpg.de>
Date: Mon, 28 Mar 2022 09:36:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Zhenneng Li <lizhenneng@kylinos.cn>
References: <20220328040536.4121797-1-lizhenneng@kylinos.cn>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220328040536.4121797-1-lizhenneng@kylinos.cn>
X-MailFrom: pmenzel@molgen.mpg.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6NFD5UZAT2P6H7LMYIWPOVTODOD2RK2C
X-Message-ID-Hash: 6NFD5UZAT2P6H7LMYIWPOVTODOD2RK2C
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:40:31 +0000
CC: Alex Deucher <alexander.deucher@amd.com>, Andrey Grodzovsky <andrey.grodzovsky@amd.com>, Jack Zhang <Jack.Zhang1@amd.com>, Lijo Lazar <lijo.lazar@amd.com>, Guchun Chen <guchun.chen@amd.com>, David Airlie <airlied@linux.ie>, Pan Xinhui <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Kevin Wang <kevin1.wang@amd.com>, Evan Quan <evan.quan@amd.com>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: resolve s3 hang for r7340
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6NFD5UZAT2P6H7LMYIWPOVTODOD2RK2C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGVhciBaaGVubmVuZywNCg0KDQpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guDQoNCkFtIDI4LjAz
LjIyIHVtIDA2OjA1IHNjaHJpZWIgWmhlbm5lbmcgTGk6DQo+IFRoaXMgaXMgYSB3b3JrYXJvdW5k
IGZvciBzMyBoYW5nIGZvciByNzM0MChhbWRncHUpLg0KDQpJcyBpdCBoYW5naW5nIHdoZW4gcmVz
dW1pbmcgZnJvbSBTMz8gTWF5YmUgYWxzbyB1c2UgdGhlIGxpbmUgYmVsb3cgZm9yIA0KdGhlIGNv
bW1pdCBtZXNzYWdlIHN1bW1hcnk6DQoNCmRybS9hbWRncHU6IEFkZCAxIG1zIGRlbGF5IHRvIGlu
aXQgaGFuZGxlciB0byBmaXggczMgcmVzdW1lIGhhbmcNCg0KQWxzbywgcGxlYXNlIGFkZCBhIHNw
YWNlIGJlZm9yZSB0aGUgKCBpbiDigJxyNzM0MChhbWRncHUp4oCdLg0KDQo+IFdoZW4gd2UgdGVz
dCBzMyB3aXRoIHI3MzQwIG9uIGFybTY0IHBsYXRmb3JtLCBncmFwaGljcyBjYXJkIHdpbGwgaGFu
ZyB1cCwNCj4gdGhlIGVycm9yIG1lc3NhZ2UgYXJlIGFzIGZvbGxvd3M6DQo+IE1hciAgNCAwMTox
NDoxMSBncmVhdHdhbGwtR1ctWFhYWFhYLVhYWCBrZXJuZWw6IFsgICAgMS41OTkzNzRdWyA3XSBb
ICBUMjkxXSBhbWRncHUgMDAwMDowMjowMC4wOiBmYjA6IGFtZGdwdWRybWZiIGZyYW1lIGJ1ZmZl
ciBkZXZpY2UNCj4gTWFyICA0IDAxOjE0OjExIGdyZWF0d2FsbC1HVy1YWFhYWFgtWFhYIGtlcm5l
bDogWyAgICAxLjYxMjg2OV1bIDddIFsgIFQyOTFdIFtkcm06YW1kZ3B1X2RldmljZV9pcF9sYXRl
X2luaXQgW2FtZGdwdV1dICpFUlJPUiogbGF0ZV9pbml0IG9mIElQIGJsb2NrIDxzaV9kcG0+IGZh
aWxlZCAtMjINCj4gTWFyICA0IDAxOjE0OjExIGdyZWF0d2FsbC1HVy1YWFhYWFgtWFhYIGtlcm5l
bDogWyAgICAxLjYyMzM5Ml1bIDddIFsgIFQyOTFdIGFtZGdwdSAwMDAwOjAyOjAwLjA6IGFtZGdw
dV9kZXZpY2VfaXBfbGF0ZV9pbml0IGZhaWxlZA0KPiBNYXIgIDQgMDE6MTQ6MTEgZ3JlYXR3YWxs
LUdXLVhYWFhYWC1YWFgga2VybmVsOiBbICAgIDEuNjMwNjk2XVsgN10gWyAgVDI5MV0gYW1kZ3B1
IDAwMDA6MDI6MDAuMDogRmF0YWwgZXJyb3IgZHVyaW5nIEdQVSBpbml0DQo+IE1hciAgNCAwMTox
NDoxMSBncmVhdHdhbGwtR1ctWFhYWFhYLVhYWCBrZXJuZWw6IFsgICAgMS42Mzc0NzddWyA3XSBb
ICBUMjkxXSBbZHJtXSBhbWRncHU6IGZpbmlzaGluZyBkZXZpY2UuDQoNClRoZSBwcmVmaXggaW4g
dGhlIGJlZ2lubmluZyBpcyBub3QgcmVhbGx5IG5lZWRlZC4gT25seSB0aGUgc3R1ZmYgYWZ0ZXIg
DQpga2VybmVsOiBgLg0KDQpNYXliZSBhbHNvIGFkZCB0aGUgb3V0cHV0IG9mIGBsc3BjaSAtbm4g
LXMg4oCmYCBmb3IgdGhhdCByNzM0MCBkZXZpY2UuDQoNCj4gQ2hhbmdlLUlkOiBJNTA0OGIzODk0
YzBjYTlmYWYyZjQ4NDdkZGFiNjFmOWViMTdiNDgyMw0KDQpXaXRob3V0IHRoZSBHZXJyaXQgaW5z
dGFuY2UgdGhpcyBiZWxvbmdzIHRvLCB0aGUgQ2hhbmdlLUlkIGlzIG9mIG5vIHVzZSANCmluIHRo
ZSBwdWJsaWMuDQoNCj4gU2lnbmVkLW9mZi1ieTogWmhlbm5lbmcgTGkgPGxpemhlbm5lbmdAa3ls
aW5vcy5jbj4NCj4gLS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rl
dmljZS5jIHwgMiArKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMNCj4gaW5kZXggMzk4
N2VjYjI0ZWY0Li4xZWNlZDk5MWI1YjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZGV2aWNlLmMNCj4gQEAgLTI5MDMsNiArMjkwMyw4IEBAIHN0YXRpYyB2b2lk
IGFtZGdwdV9kZXZpY2VfZGVsYXllZF9pbml0X3dvcmtfaGFuZGxlcihzdHJ1Y3Qgd29ya19zdHJ1
Y3QgKndvcmspDQo+ICAgCQljb250YWluZXJfb2Yod29yaywgc3RydWN0IGFtZGdwdV9kZXZpY2Us
IGRlbGF5ZWRfaW5pdF93b3JrLndvcmspOw0KPiAgIAlpbnQgcjsNCj4gICANCj4gKwltZGVsYXko
MSk7DQo+ICsNCg0KV293LCBJIHdvbmRlciBob3cgbG9uZyBpdCB0b29rIHlvdSB0byBmaW5kIHRo
YXQgd29ya2Fyb3VuZC4NCg0KPiAgIAlyID0gYW1kZ3B1X2liX3JpbmdfdGVzdHMoYWRldik7DQo+
ICAgCWlmIChyKQ0KPiAgIAkJRFJNX0VSUk9SKCJpYiByaW5nIHRlc3QgZmFpbGVkICglZCkuXG4i
LCByKTsNCg0KDQpLaW5kIHJlZ2FyZHMsDQoNClBhdWwNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
