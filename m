Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C71074853A9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 14:37:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 063EF3ED93
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 13:37:46 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 2AA4B3ECFA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Jan 2022 06:36:00 +0000 (UTC)
X-UUID: 74e77be901fe420393d4d2238783a093-20220105
X-UUID: 74e77be901fe420393d4d2238783a093-20220105
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <guangming.cao@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 295248893; Wed, 05 Jan 2022 14:35:55 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.792.15; Wed, 5 Jan 2022 14:35:54 +0800
Received: from mszswglt01.gcn.mediatek.inc (10.16.20.20) by
 mtkcas11.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.0.1497.2 via Frontend Transport; Wed, 5 Jan 2022 14:35:53 +0800
From: <guangming.cao@mediatek.com>
To: <christian.koenig@amd.com>
Date: Wed, 5 Jan 2022 14:36:43 +0800
Message-ID: <20220105063643.119874-1-guangming.cao@mediatek.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <c05749d0-4c24-8763-a459-27257b2524ed@amd.com>
References: <c05749d0-4c24-8763-a459-27257b2524ed@amd.com>
MIME-Version: 1.0
X-MTK: N
X-MailFrom: guangming.cao@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5IOTLTOUI26BYJTJ57TX3DPZM242EUUQ
X-Message-ID-Hash: 5IOTLTOUI26BYJTJ57TX3DPZM242EUUQ
X-Mailman-Approved-At: Wed, 05 Jan 2022 13:36:47 +0000
CC: Brian.Starkey@arm.com, benjamin.gaignard@linaro.org, bo.song@mediatek.com, dri-devel@lists.freedesktop.org, guangming.cao@mediatek.com, jianjiao.zeng@mediatek.com, john.stultz@linaro.org, labbott@redhat.com, libo.kang@mediatek.com, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, lmark@codeaurora.org, matthias.bgg@gmail.com, mingyuan.ma@mediatek.com, wsd_upstream@mediatek.com, yf.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5IOTLTOUI26BYJTJ57TX3DPZM242EUUQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogR3VhbmdtaW5nLkNhbyA8Z3VhbmdtaW5nLmNhb0BtZWRpYXRlay5jb20+DQoNCk9uIFR1
ZSwgMjAyMi0wMS0wNCBhdCAwODo0NyArMDEwMCwgQ2hyaXN0aWFuIEvpsIppZyB3cm90ZToNCj4g
QW0gMDMuMDEuMjIgdW0gMTk6NTcgc2NocmllYiBKb2huIFN0dWx0ejoNCj4gPiBPbiBNb24sIERl
YyAyNywgMjAyMSBhdCAxOjUyIEFNIDxndWFuZ21pbmcuY2FvQG1lZGlhdGVrLmNvbT4gd3JvdGU6
DQo+ID4gPiBGcm9tOiBHdWFuZ21pbmcgPEd1YW5nbWluZy5DYW9AbWVkaWF0ZWsuY29tPg0KPiA+
ID4gDQo+ID4gDQo+ID4gVGhhbmtzIGZvciBzdWJtaXR0aW5nIHRoaXMhDQo+ID4gDQo+ID4gPiBB
ZGQgYSBzaXplIGNoZWNrIGZvciBhbGxjYXRpb24gc2luY2UgdGhlIGFsbG9jYXRpb24gc2l6ZSBp
cw0KPiA+IA0KPiA+IG5pdDogImFsbG9jYXRpb24iIGFib3ZlLg0KPiA+IA0KPiA+ID4gYWx3YXlz
IGxlc3MgdGhhbiB0aGUgdG90YWwgRFJBTSBzaXplLg0KPiA+IA0KPiA+IEluIGdlbmVyYWwsIGl0
IG1pZ2h0IGJlIGdvb2QgdG8gYWRkIG1vcmUgY29udGV4dCB0byB0aGUgY29tbWl0DQo+ID4gbWVz
c2FnZQ0KPiA+IHRvIGJldHRlciBhbnN3ZXIgKndoeSogdGhpcyBjaGFuZ2UgaXMgbmVlZGVkIHJh
dGhlciB0aGFuIHdoYXQgdGhlDQo+ID4gY2hhbmdlIGlzIGRvaW5nLiAgaWU6IFdoYXQgbmVnYXRp
dmUgdGhpbmcgaGFwcGVucyB3aXRob3V0IHRoaXMNCj4gPiBjaGFuZ2U/DQo+ID4gQW5kIHNvIGhv
dyBkb2VzIHRoaXMgY2hhbmdlIGF2b2lkIG9yIGltcHJvdmUgdGhpbmdzPw0KPiANCj4gQ29tcGxl
dGVseSBhZ3JlZSwganVzdCBvbmUgbGl0dGxlIGFkZGl0aW9uOiBDb3VsZCB5b3UgYWxzbyBhZGQg
dGhpcw0KPiB3aHkgDQo+IGFzIGNvbW1lbnQgdG8gdGhlIGNvZGU/DQo+IA0KPiBXaGVuIHdlIHN0
dW1ibGUgb3ZlciB0aGlzIGZpdmUgeWVhcnMgZnJvbSBub3cgaXQgaXMgYWJzb2x1dGVseSBub3Qg
DQo+IG9idmlvdXMgd2h5IHdlIGRvIHRoaXMuDQo+IA0KPiBUaGFua3MsDQo+IENocmlzdGlhbi4N
Cj4gDQpUaGFua3MgZm9yIHlvdXIgcmVwbHkhDQpJIHdpbGwgdXBkYXRlIHRoZSByZWxhdGVkIHJl
YXNvbiBpbiB0aGUgcGF0Y2ggbGF0ZXIuDQoNClRoZSByZWFzb24gZm9yIGFkZGluZyB0aGlzIGNo
ZWNrIGlzIHRoYXQgd2UgbWV0IGEgY2FzZSB0aGF0IHRoZSB1c2VyDQpzZW50IGFuIGludmFsaWQg
c2l6ZShJdCBzZWVtcyBpdCdzIGEgbmVnYXRpdmUgdmFsdWUsIE1TQiBpcyAweGZmLCBpdCdzDQps
YXJnZXIgdGhhbiBEUkFNIHNpemUgYWZ0ZXIgY29udmVydCBpdCB0byBzaXplX3QpIHRvIGRtYS1o
ZWFwIHRvIGFsbG9jDQptZW1vcnksIGFuZCB0aGlzIGFsbG9jYXRpb24gd2FzIHJ1bm5pbmcgb24g
YSBwcm9jZXNzKHN1Y2ggYXMgImdyYWxsb2MiDQpvbiBBbmRyb2lkIGRldmljZSkgY2FuJ3QgYmUg
a2lsbGVkIGJ5IE9PTSBmbG93LCBhbmQgd2UgYWxzbyBjb3VsZG4ndA0KZmluZCB0aGUgcmVsYXRl
ZCBkbWFidWYgaW4gImRtYV9idWZfZGVidWdfc2hvdyIgYmVjYXVzZSB0aGUgcmVsYXRlZA0KZG1h
YnVmIHdhcyBub3QgZXhwb3J0ZWQgeWV0IHNpbmNlIHRoZSBhbGxvY2F0aW9uIGlzIHN0aWxsIG9u
IGdvaW5nLg0KDQpTaW5jZSB0aGlzIGludmFsaWQgYXJndW1lbnQgY2FzZSBjYW4gYmUgcHJldmVu
dGVkIGF0IGRtYS1oZWFwIHNpZGUsIHNvLA0KSSBhZGRlZCB0aGlzIHNpemUgY2hlY2ssIGFuZCBt
b3Jlb3ZlciwgdG8gbGV0IGRlYnVnIGl0IGVhc2lseSwgSSBhbHNvDQphZGRlZCBsb2dzIHdoZW4g
c2l6ZSBpcyBiaWdnZXIgdGhhbiBhIHRocmVzaG9sZCB3ZSBzZXQgaW4gbXRrIHN5c3RlbQ0KaGVh
cC4NCklmIHlvdSB0aGluayB0aGF0IHByaW50IGxvZ3MgaW4gZG1hLWhlYXAgZnJhbWV3b3JrIGlz
IGJldHRlciwgSSB3aWxsDQp1cGRhdGUgaXQgaW4gbmV4dCB2ZXJzaW9uLg0KDQpJZiB5b3UgaGF2
ZSBiZXR0ZXIgc29sdXRpb24oc3VjaCBhcyBkdW1wIHRoZSBzaXplIHVuZGVyIGFsbG9jYXRpbmcN
CmluICJkbWFfYnVmX2RlYnVnX3Nob3ciLCB3aGljaCBtYXliZSBuZWVkIGFkZCBnbG9iYWwgdmFy
aWFibGUgdG8gcmVjb3JkDQppdCksIHBsZWFzZSBraW5kbHkgbGV0IG1lIGtub3cuDQpUaGFua3Mg
OikNCkd1YW5nbWluZw0KDQo+ID4gDQo+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHdWFuZ21p
bmcgPEd1YW5nbWluZy5DYW9AbWVkaWF0ZWsuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogamlh
bmppYW8gemVuZyA8amlhbmppYW8uemVuZ0BtZWRpYXRlay5jb20+DQo+ID4gPiAtLS0NCj4gPiA+
IHYyOiAxLiB1cGRhdGUgc2l6ZSBsaW1pdGF0aW9uIGFzIHRvdGFsX2RyYW0gcGFnZSBzaXplLg0K
PiA+ID4gICAgICAyLiB1cGRhdGUgY29tbWl0IG1lc3NhZ2UNCj4gPiA+IC0tLQ0KPiA+ID4gICBk
cml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyB8IDIgKysNCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLQ0KPiA+ID4gaGVhcC5jDQo+ID4g
PiBpbmRleCA1NmJmNWFkMDFhZDUuLmUzOWQyYmU5OGQ2OSAxMDA2NDQNCj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWhlYXAuYw0KPiA+ID4gQEAgLTU1LDYgKzU1LDggQEAgc3RhdGljIGludCBkbWFfaGVhcF9idWZm
ZXJfYWxsb2Moc3RydWN0DQo+ID4gPiBkbWFfaGVhcCAqaGVhcCwgc2l6ZV90IGxlbiwNCj4gPiA+
ICAgICAgICAgIHN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+ID4gPiAgICAgICAgICBpbnQgZmQ7
DQo+ID4gPiANCj4gPiA+ICsgICAgICAgaWYgKGxlbiAvIFBBR0VfU0laRSA+IHRvdGFscmFtX3Bh
Z2VzKCkpDQo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+ID4gDQo+ID4g
VGhpcyBzZWVtcyBzYW5lLiBJIGtub3cgSU9OIHVzZWQgdG8gaGF2ZSBzb21lIDEvMiBvZiBtZW1v
cnkgY2FwIHRvDQo+ID4gYXZvaWQgdW5uZWNlc3NhcnkgbWVtb3J5IHByZXNzdXJlIG9uIGNyYXp5
IGFsbG9jYXRpb25zLg0KPiA+IA0KPiA+IENvdWxkIHlvdSBzZW5kIGFnYWluIHdpdGggYW4gaW1w
cm92ZWQgY29tbWl0IG1lc3NhZ2U/DQo+ID4gDQo+ID4gdGhhbmtzDQo+ID4gLWpvaG4NCj4gDQo+
IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
