Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CAF4EC49D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:41:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 166553EC78
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:41:33 +0000 (UTC)
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
	by lists.linaro.org (Postfix) with ESMTPS id 0CD343EA27
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 07:38:56 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aef5a.dynamic.kabel-deutschland.de [95.90.239.90])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: pmenzel)
	by mx.molgen.mpg.de (Postfix) with ESMTPSA id BB57661EA1927;
	Mon, 28 Mar 2022 09:38:54 +0200 (CEST)
Message-ID: <2e91b545-bde3-3626-e889-be268d01971c@molgen.mpg.de>
Date: Mon, 28 Mar 2022 09:38:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Zhenneng Li <lizhenneng@kylinos.cn>
References: <20220328040536.4121797-1-lizhenneng@kylinos.cn>
 <cd36a994-0c13-201c-522d-5f8af53e1e87@molgen.mpg.de>
In-Reply-To: <cd36a994-0c13-201c-522d-5f8af53e1e87@molgen.mpg.de>
X-MailFrom: pmenzel@molgen.mpg.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6VJ46JLDRLUNXOKCNCG7AOMIAENE4VK5
X-Message-ID-Hash: 6VJ46JLDRLUNXOKCNCG7AOMIAENE4VK5
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:40:33 +0000
CC: Andrey Grodzovsky <andrey.grodzovsky@amd.com>, Pan Xinhui <Xinhui.Pan@amd.com>, Guchun Chen <guchun.chen@amd.com>, David Airlie <airlied@linux.ie>, Lijo Lazar <lijo.lazar@amd.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Kevin Wang <kevin1.wang@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Evan Quan <evan.quan@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: resolve s3 hang for r7340
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6VJ46JLDRLUNXOKCNCG7AOMIAENE4VK5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

W0NjOiAtSmFjayBaaGFuZyAoaW52YWxpZCBhZGRyZXNzKQ0KDQpBbSAyOC4wMy4yMiB1bSAwOToz
NiBzY2hyaWViIFBhdWwgTWVuemVsOg0KPiBEZWFyIFpoZW5uZW5nLA0KPiANCj4gDQo+IFRoYW5r
IHlvdSBmb3IgeW91ciBwYXRjaC4NCj4gDQo+IEFtIDI4LjAzLjIyIHVtIDA2OjA1IHNjaHJpZWIg
Wmhlbm5lbmcgTGk6DQo+PiBUaGlzIGlzIGEgd29ya2Fyb3VuZCBmb3IgczMgaGFuZyBmb3Igcjcz
NDAoYW1kZ3B1KS4NCj4gDQo+IElzIGl0IGhhbmdpbmcgd2hlbiByZXN1bWluZyBmcm9tIFMzPyBN
YXliZSBhbHNvIHVzZSB0aGUgbGluZSBiZWxvdyBmb3IgDQo+IHRoZSBjb21taXQgbWVzc2FnZSBz
dW1tYXJ5Og0KPiANCj4gZHJtL2FtZGdwdTogQWRkIDEgbXMgZGVsYXkgdG8gaW5pdCBoYW5kbGVy
IHRvIGZpeCBzMyByZXN1bWUgaGFuZw0KPiANCj4gQWxzbywgcGxlYXNlIGFkZCBhIHNwYWNlIGJl
Zm9yZSB0aGUgKCBpbiDigJxyNzM0MChhbWRncHUp4oCdLg0KPiANCj4+IFdoZW4gd2UgdGVzdCBz
MyB3aXRoIHI3MzQwIG9uIGFybTY0IHBsYXRmb3JtLCBncmFwaGljcyBjYXJkIHdpbGwgaGFuZyB1
cCwNCj4+IHRoZSBlcnJvciBtZXNzYWdlIGFyZSBhcyBmb2xsb3dzOg0KPj4gTWFywqAgNCAwMTox
NDoxMSBncmVhdHdhbGwtR1ctWFhYWFhYLVhYWCBrZXJuZWw6IFvCoMKgwqAgMS41OTkzNzRdWyA3
XSBbwqAgVDI5MV0gYW1kZ3B1IDAwMDA6MDI6MDAuMDogZmIwOiBhbWRncHVkcm1mYiBmcmFtZSBi
dWZmZXIgZGV2aWNlDQo+PiBNYXLCoCA0IDAxOjE0OjExIGdyZWF0d2FsbC1HVy1YWFhYWFgtWFhY
IGtlcm5lbDogW8KgwqDCoCAxLjYxMjg2OV1bIDddIFvCoCBUMjkxXSBbZHJtOmFtZGdwdV9kZXZp
Y2VfaXBfbGF0ZV9pbml0IFthbWRncHVdXSAqRVJST1IqIGxhdGVfaW5pdCBvZiBJUCBibG9jayA8
c2lfZHBtPiBmYWlsZWQgLTIyDQo+PiBNYXLCoCA0IDAxOjE0OjExIGdyZWF0d2FsbC1HVy1YWFhY
WFgtWFhYIGtlcm5lbDogW8KgwqDCoCAxLjYyMzM5Ml1bIDddIFvCoCBUMjkxXSBhbWRncHUgMDAw
MDowMjowMC4wOiBhbWRncHVfZGV2aWNlX2lwX2xhdGVfaW5pdCBmYWlsZWQNCj4+IE1hcsKgIDQg
MDE6MTQ6MTEgZ3JlYXR3YWxsLUdXLVhYWFhYWC1YWFgga2VybmVsOiBbwqDCoMKgIDEuNjMwNjk2
XVsgN10gW8KgIFQyOTFdIGFtZGdwdSAwMDAwOjAyOjAwLjA6IEZhdGFsIGVycm9yIGR1cmluZyBH
UFUgaW5pdA0KPj4gTWFywqAgNCAwMToxNDoxMSBncmVhdHdhbGwtR1ctWFhYWFhYLVhYWCBrZXJu
ZWw6IFvCoMKgwqAgMS42Mzc0NzddWyA3XSBbwqAgVDI5MV0gW2RybV0gYW1kZ3B1OiBmaW5pc2hp
bmcgZGV2aWNlLg0KPiANCj4gVGhlIHByZWZpeCBpbiB0aGUgYmVnaW5uaW5nIGlzIG5vdCByZWFs
bHkgbmVlZGVkLiBPbmx5IHRoZSBzdHVmZiBhZnRlciANCj4gYGtlcm5lbDogYC4NCj4gDQo+IE1h
eWJlIGFsc28gYWRkIHRoZSBvdXRwdXQgb2YgYGxzcGNpIC1ubiAtcyDigKZgIGZvciB0aGF0IHI3
MzQwIGRldmljZS4NCj4gDQo+PiBDaGFuZ2UtSWQ6IEk1MDQ4YjM4OTRjMGNhOWZhZjJmNDg0N2Rk
YWI2MWY5ZWIxN2I0ODIzDQo+IA0KPiBXaXRob3V0IHRoZSBHZXJyaXQgaW5zdGFuY2UgdGhpcyBi
ZWxvbmdzIHRvLCB0aGUgQ2hhbmdlLUlkIGlzIG9mIG5vIHVzZSANCj4gaW4gdGhlIHB1YmxpYy4N
Cj4gDQo+PiBTaWduZWQtb2ZmLWJ5OiBaaGVubmVuZyBMaSA8bGl6aGVubmVuZ0BreWxpbm9zLmNu
Pg0KPj4gLS0tDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNl
LmMgfCAyICsrDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+Pg0KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYyAN
Cj4+IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jDQo+PiBpbmRl
eCAzOTg3ZWNiMjRlZjQuLjFlY2VkOTkxYjViMiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jDQo+PiBAQCAtMjkwMyw2ICsyOTAzLDggQEAgc3Rh
dGljIHZvaWQgDQo+PiBhbWRncHVfZGV2aWNlX2RlbGF5ZWRfaW5pdF93b3JrX2hhbmRsZXIoc3Ry
dWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRhaW5lcl9v
Zih3b3JrLCBzdHJ1Y3QgYW1kZ3B1X2RldmljZSwgZGVsYXllZF9pbml0X3dvcmsud29yayk7DQo+
PiDCoMKgwqDCoMKgIGludCByOw0KPj4gK8KgwqDCoCBtZGVsYXkoMSk7DQo+PiArDQo+IA0KPiBX
b3csIEkgd29uZGVyIGhvdyBsb25nIGl0IHRvb2sgeW91IHRvIGZpbmQgdGhhdCB3b3JrYXJvdW5k
Lg0KPiANCj4+IMKgwqDCoMKgwqAgciA9IGFtZGdwdV9pYl9yaW5nX3Rlc3RzKGFkZXYpOw0KPj4g
wqDCoMKgwqDCoCBpZiAocikNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBEUk1fRVJST1IoImliIHJp
bmcgdGVzdCBmYWlsZWQgKCVkKS5cbiIsIHIpOw0KPiANCj4gDQo+IEtpbmQgcmVnYXJkcywNCj4g
DQo+IFBhdWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
