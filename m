Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 886694EC4B5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:42:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C004B3EE97
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:42:40 +0000 (UTC)
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
	by lists.linaro.org (Postfix) with ESMTPS id C19D73EA59
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 06:01:27 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5aef5a.dynamic.kabel-deutschland.de [95.90.239.90])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	(Authenticated sender: pmenzel)
	by mx.molgen.mpg.de (Postfix) with ESMTPSA id A45BF61EA1929;
	Tue, 29 Mar 2022 08:01:25 +0200 (CEST)
Message-ID: <e0680f5f-c8fe-2bbb-dfee-cf9c148d60da@molgen.mpg.de>
Date: Tue, 29 Mar 2022 08:01:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?B?5p2O55yf6IO9?= <lizhenneng@kylinos.cn>
References: <1l3bxtj7h5f-1l3d7rcmiz8@nsmail6.0>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <1l3bxtj7h5f-1l3d7rcmiz8@nsmail6.0>
X-MailFrom: pmenzel@molgen.mpg.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZACBO3RQINTPZFQALKEB6JQXLOM4JAAM
X-Message-ID-Hash: ZACBO3RQINTPZFQALKEB6JQXLOM4JAAM
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:41:03 +0000
CC: Andrey Grodzovsky <andrey.grodzovsky@amd.com>, Pan Xinhui <Xinhui.Pan@amd.com>, Guchun Chen <guchun.chen@amd.com>, David Airlie <airlied@linux.ie>, Lijo Lazar <lijo.lazar@amd.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Kevin Wang <kevin1.wang@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Evan Quan <evan.quan@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?UmU6IOWbnuWkjTogUmU6IFtQQVRDSF0gZHJtL2FtZGdwdTogcmVzb2x2ZSBzMyBoYW5nIGZvciByNzM0MA==?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZACBO3RQINTPZFQALKEB6JQXLOM4JAAM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGVhciDmnY7nnJ8sDQoNCg0KW1lvdXIgbWFpbGVyIGZvcm1hdHRlZCB0aGUgbWVzc2FnZSBvZGRs
eS4gTWF5YmUgY29uZmlndXJlIGl0IHRvIHVzZSBvbmx5IA0KcGxhaW4gdGV4dCBlbWFpbCB3aXRo
IG5vIEhUTUwgcGFydHMg4oCTIGNvbW1vbiBpbiBMaW51eCBrZXJuZWwgY29tbXVuaXR5IA0K4oCT
LCBvciwgaWYgbm90IHBvc3NpYmxlLCBzd2l0Y2ggdG8gc29tZXRoaW5nIGVsc2UgKE1vemlsbGEg
VGh1bmRlcmJpcmQsIOKApikuXQ0KDQoNCkFtIDI5LjAzLjIyIHVtIDA0OjU0IHNjaHJpZWIg5p2O
55yf6IO9Og0KDQpb4oCmXQ0KDQo+ICrml6XjgIDmnJ/vvJoqMjAyMi0wMy0yOCAxNTozOA0KPiAq
5Y+R5Lu25Lq677yaKlBhdWwgTWVuemVsDQoNClvigKZdDQoNCj4gQW0gMjguMDMuMjIgdW0gMDk6
MzYgc2NocmllYiBQYXVsIE1lbnplbDoNCj4gICA+IERlYXIgWmhlbm5lbmcsDQo+ICAgPg0KPiAg
ID4NCj4gICA+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4NCj4gICA+DQo+ICAgPiBBbSAyOC4w
My4yMiB1bSAwNjowNSBzY2hyaWViIFpoZW5uZW5nIExpOg0KPiAgID4+IFRoaXMgaXMgYSB3b3Jr
YXJvdW5kIGZvciBzMyBoYW5nIGZvciByNzM0MChhbWRncHUpLg0KPiAgID4NCj4gICA+IElzIGl0
IGhhbmdpbmcgd2hlbiByZXN1bWluZyBmcm9tIFMzPw0KPiANCj4gWWVzLCB0aGlzIGZ1bmMgaXMg
YSBkZWxheWVkIHdvcmsgYWZ0ZXIgaW5pdCBncmFwaGljcyBjYXJkLg0KDQpUaGFuayBmb3IgY2xh
cmlmeWluZyBpdC4NCg0KPiAgID4gTWF5YmUgYWxzbyB1c2UgdGhlIGxpbmUgYmVsb3cgZm9yDQo+
ICAgPiB0aGUgY29tbWl0IG1lc3NhZ2Ugc3VtbWFyeToNCj4gICA+DQo+ICAgPiBkcm0vYW1kZ3B1
OiBBZGQgMSBtcyBkZWxheSB0byBpbml0IGhhbmRsZXIgdG8gZml4IHMzIHJlc3VtZSBoYW5nDQo+
ICAgPg0KPiAgID4gQWxzbywgcGxlYXNlIGFkZCBhIHNwYWNlIGJlZm9yZSB0aGUgKCBpbiDigJxy
NzM0MChhbWRncHUp4oCdLg0KPiAgID4NCj4gICA+PiBXaGVuIHdlIHRlc3QgczMgd2l0aCByNzM0
MCBvbiBhcm02NCBwbGF0Zm9ybSwgZ3JhcGhpY3MgY2FyZCB3aWxsIGhhbmcgdXAsDQo+ICAgPj4g
dGhlIGVycm9yIG1lc3NhZ2UgYXJlIGFzIGZvbGxvd3M6DQo+ICAgPj4gTWFyICA0IDAxOjE0OjEx
IGdyZWF0d2FsbC1HVy1YWFhYWFgtWFhYIGtlcm5lbDogWyAgICAxLjU5OTM3NF1bIDddIFsgIFQy
OTFdIGFtZGdwdSAwMDAwOjAyOjAwLjA6IGZiMDogYW1kZ3B1ZHJtZmIgZnJhbWUgYnVmZmVyIGRl
dmljZQ0KPiAgID4+IE1hciAgNCAwMToxNDoxMSBncmVhdHdhbGwtR1ctWFhYWFhYLVhYWCBrZXJu
ZWw6IFsgICAgMS42MTI4NjldWyA3XSBbICBUMjkxXSBbZHJtOmFtZGdwdV9kZXZpY2VfaXBfbGF0
ZV9pbml0IFthbWRncHVdXSAqRVJST1IqIGxhdGVfaW5pdCBvZiBJUCBibG9ja2ZhaWxlZCAtMjIN
Cj4gICA+PiBNYXIgIDQgMDE6MTQ6MTEgZ3JlYXR3YWxsLUdXLVhYWFhYWC1YWFgga2VybmVsOiBb
ICAgIDEuNjIzMzkyXVsgN10gWyAgVDI5MV0gYW1kZ3B1IDAwMDA6MDI6MDAuMDogYW1kZ3B1X2Rl
dmljZV9pcF9sYXRlX2luaXQgZmFpbGVkDQo+ICAgPj4gTWFyICA0IDAxOjE0OjExIGdyZWF0d2Fs
bC1HVy1YWFhYWFgtWFhYIGtlcm5lbDogWyAgICAxLjYzMDY5Nl1bIDddIFsgIFQyOTFdIGFtZGdw
dSAwMDAwOjAyOjAwLjA6IEZhdGFsIGVycm9yIGR1cmluZyBHUFUgaW5pdA0KPiAgID4+IE1hciAg
NCAwMToxNDoxMSBncmVhdHdhbGwtR1ctWFhYWFhYLVhYWCBrZXJuZWw6IFsgICAgMS42Mzc0Nzdd
WyA3XSBbICBUMjkxXSBbZHJtXSBhbWRncHU6IGZpbmlzaGluZyBkZXZpY2UuDQo+ICAgPg0KPiAg
ID4gVGhlIHByZWZpeCBpbiB0aGUgYmVnaW5uaW5nIGlzIG5vdCByZWFsbHkgbmVlZGVkLiBPbmx5
IHRoZSBzdHVmZiBhZnRlcg0KPiAgID4gYGtlcm5lbDogYC4NCj4gICA+DQo+ICAgPiBNYXliZSBh
bHNvIGFkZCB0aGUgb3V0cHV0IG9mIGBsc3BjaSAtbm4gLXMg4oCmYCBmb3IgdGhhdCByNzM0MCBk
ZXZpY2UuDQo+ICAgPg0KPiAgID4+IENoYW5nZS1JZDogSTUwNDhiMzg5NGMwY2E5ZmFmMmY0ODQ3
ZGRhYjYxZjllYjE3YjQ4MjMNCj4gICA+DQo+ICAgPiBXaXRob3V0IHRoZSBHZXJyaXQgaW5zdGFu
Y2UgdGhpcyBiZWxvbmdzIHRvLCB0aGUgQ2hhbmdlLUlkIGlzIG9mIG5vIHVzZQ0KPiAgID4gaW4g
dGhlIHB1YmxpYy4NCj4gICA+DQo+ICAgPj4gU2lnbmVkLW9mZi1ieTogWmhlbm5lbmcgTGkNCj4g
ICA+PiAtLS0NCj4gICA+PiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZp
Y2UuYyB8IDIgKysNCj4gICA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykNCj4g
ICA+Pg0KPiAgID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZGV2aWNlLmMNCj4gICA+PiBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
ZXZpY2UuYw0KPiAgID4+IGluZGV4IDM5ODdlY2IyNGVmNC4uMWVjZWQ5OTFiNWIyIDEwMDY0NA0K
PiAgID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYw0K
PiAgID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYw0K
PiAgID4+IEBAIC0yOTAzLDYgKzI5MDMsOCBAQCBzdGF0aWMgdm9pZA0KPiAgID4+IGFtZGdwdV9k
ZXZpY2VfZGVsYXllZF9pbml0X3dvcmtfaGFuZGxlcihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmsp
DQo+ICAgPj4gICAgICAgICAgIGNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgYW1kZ3B1X2Rldmlj
ZSwgZGVsYXllZF9pbml0X3dvcmsud29yayk7DQo+ICAgPj4gICAgICAgaW50IHI7DQo+ICAgPj4g
KyAgICBtZGVsYXkoMSk7DQo+ICAgPj4gKw0KPiAgID4NCj4gDQo+ICAgPiBXb3csIEkgd29uZGVy
IGhvdyBsb25nIGl0IHRvb2sgeW91IHRvIGZpbmQgdGhhdCB3b3JrYXJvdW5kLg0KPiANCj4gQWJv
dXQgMyBtb250aHMsIEkgdHJ5IHRvIGFkZCB0aGlzIGRlbGF5DQo+IHdvcmsoYW1kZ3B1X2Rldmlj
ZV9kZWxheWVkX2luaXRfd29ya19oYW5kbGVyKSBmcm9tIDIwMDBtcyB0byAyNTAwbXMsIG9yIHVz
ZSBtYigpDQo+IGluc3RlYWQgb2YgbWRlbGF5KDEpLCBidXQgaXQncyB1c2VsZXNzLCBJIGRvbid0
IGtub3cgdGhlIHJlYXNvbu+8jHRoZSBvY2N1cnJlbmNlDQo+IHByb2JhYmlsaXR5ICBvZiB0aGlz
IGJ1ZyBpcyBvbmUgdGVuLXRob3VzYW5kdGgsIGRvIHlvdSBrbm93IHRoZSBwb3NzaWJsZSByZWFz
b25zPw0KDQpPaCwgaXTigJlzIG5vdCBldmVuIGFsd2F5cyByZXByb2R1Y2libGUuIFRoYXQgaXMg
aGFyZC4gRGlkIHlvdSB0cnkgYW5vdGhlciANCmdyYXBoaWNzIGNhcmQgb3IgYW5vdGhlciBBUk0g
Ym9hcmQgdG8gcnVsZSBvdXQgaGFyZHdhcmUgc3BlY2lmaWMgaXNzdWVzPw0KDQpTb3JyeSwgSSBk
byBub3QuIE1heWJlIHRoZSBkZXZlbG9wZXJzIHdpdGggYWNjZXNzIHRvIG5vbi1wdWJsaWMgDQpk
YXRhc2hlZXRzIGFuZCBlcnJhdGFzIGtub3cuDQoNCj4gICA+PiAgICAgICByID0gYW1kZ3B1X2li
X3JpbmdfdGVzdHMoYWRldik7DQo+ICAgPj4gICAgICAgaWYgKHIpDQo+ICAgPj4gICAgICAgICAg
IERSTV9FUlJPUigiaWIgcmluZyB0ZXN0IGZhaWxlZCAoJWQpLlxuIiwgcik7DQoNCg0KS2luZCBy
ZWdhcmRzLA0KDQpQYXVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
