Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD3348E999
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 13:05:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D7063ED2F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 12:05:38 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id F0FFA3EDFB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 12:04:59 +0000 (UTC)
X-UUID: e5208be35f204fa3ab74d54ddbb1e62a-20220114
X-UUID: e5208be35f204fa3ab74d54ddbb1e62a-20220114
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <guangming.cao@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 282408363; Fri, 14 Jan 2022 20:04:54 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.792.15; Fri, 14 Jan 2022 20:04:53 +0800
Received: from mszswglt01 (10.16.20.20) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 14 Jan 2022 20:04:52 +0800
Message-ID: <82faa62f1bc946cf2f9ee2f7d15c567162238eab.camel@mediatek.com>
From: Guangming.Cao <guangming.cao@mediatek.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "John
 Stultz" <john.stultz@linaro.org>
Date: Fri, 14 Jan 2022 20:05:48 +0800
In-Reply-To: <6b8182a1-7cdc-7369-5c34-e6d0c24efcca@amd.com>
References: <CAO_48GF=ttKqSOm9GRoA3Mq+-RQOtRjWp449XPcz-wH=kjaTjw@mail.gmail.com>
	 <20220113123406.11520-1-guangming.cao@mediatek.com>
	 <4f88205c1b344aea8608960e2f85b8f4@intel.com>
	 <e657f5257cbf4955817b0bbf037de9f9@intel.com>
	 <24157767-dc29-bbdd-5428-d89ecc6b9606@amd.com>
	 <CALAqxLXRtYDNQ8y1efVGa4SwUH_oAaHviZFjsOVSNFmUHnCCeQ@mail.gmail.com>
	 <6b8182a1-7cdc-7369-5c34-e6d0c24efcca@amd.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
Message-ID-Hash: NWMSRRSN2FYOJ65445GKSNZQOMVGWCS6
X-Message-ID-Hash: NWMSRRSN2FYOJ65445GKSNZQOMVGWCS6
X-MailFrom: guangming.cao@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "wsd_upstream@mediatek.com" <wsd_upstream@mediatek.com>, "libo.kang@mediatek.com" <libo.kang@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "yf.wang@mediatek.com" <yf.wang@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "lmark@codeaurora.org" <lmark@codeaurora.org>, "benjamin.gaignard@linaro.org" <benjamin.gaignard@linaro.org>, "bo.song@mediatek.com" <bo.song@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "labbott@redhat.com" <labbott@redhat.com>, "mingyuan.ma@mediatek.com" <mingyuan.ma@mediatek.com>, "jianjiao.zeng@mediatek.com" <jianjiao.zeng@mediatek.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NWMSRRSN2FYOJ65445GKSNZQOMVGWCS6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDIyLTAxLTE0IGF0IDA4OjE2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBBbSAxNC4wMS4yMiB1bSAwMDoyNiBzY2hyaWViIEpvaG4gU3R1bHR6Og0KPiA+IE9uIFRo
dSwgSmFuIDEzLCAyMDIyIGF0IDU6MDUgQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA+IDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+ID4gQW0gMTMuMDEuMjIgdW0gMTQ6MDAgc2No
cmllYiBSdWhsLCBNaWNoYWVsIEo6DQo+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gPiA+ID4gPiBGcm9tOiBkcmktZGV2ZWwgPGRyaS1kZXZlbC1ib3VuY2VzQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZz4gT24NCj4gPiA+ID4gPiBCZWhhbGYgT2YNCj4gPiA+ID4gPiBSdWhsLCBN
aWNoYWVsIEoNCj4gPiA+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+
ID4gPiBGcm9tOiBkcmktZGV2ZWwgPGRyaS1kZXZlbC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZz4NCj4gPiA+ID4gPiA+IE9uIEJlaGFsZiBPZg0KPiA+ID4gPiA+ID4gZ3VhbmdtaW5nLmNh
b0BtZWRpYXRlay5jb20NCj4gPiA+ID4gPiA+ICsgICAvKg0KPiA+ID4gPiA+ID4gKyAgICAqIElu
dmFsaWQgc2l6ZSBjaGVjay4gVGhlICJsZW4iIHNob3VsZCBiZSBsZXNzIHRoYW4NCj4gPiA+ID4g
PiA+IHRvdGFscmFtLg0KPiA+ID4gPiA+ID4gKyAgICAqDQo+ID4gPiA+ID4gPiArICAgICogV2l0
aG91dCB0aGlzIGNoZWNrLCBvbmNlIHRoZSBpbnZhbGlkIHNpemUgYWxsb2NhdGlvbg0KPiA+ID4g
PiA+ID4gcnVucyBvbiBhIHByb2Nlc3MNCj4gPiA+ID4gPiA+IHRoYXQNCj4gPiA+ID4gPiA+ICsg
ICAgKiBjYW4ndCBiZSBraWxsZWQgYnkgT09NIGZsb3coc3VjaCBhcyAiZ3JhbGxvYyIgb24NCj4g
PiA+ID4gPiA+IEFuZHJvaWQgZGV2aWNlcyksIGl0DQo+ID4gPiA+ID4gPiB3aWxsDQo+ID4gPiA+
ID4gPiArICAgICogY2F1c2UgYSBrZXJuZWwgZXhjZXB0aW9uLCBhbmQgdG8gbWFrZSBtYXR0ZXJz
IHdvcnNlLA0KPiA+ID4gPiA+ID4gd2UgY2FuJ3QgZmluZA0KPiA+ID4gPiA+ID4gd2hvIGFyZSB1
c2luZw0KPiA+ID4gPiA+ID4gKyAgICAqIHNvIG1hbnkgbWVtb3J5IHdpdGggImRtYV9idWZfZGVi
dWdfc2hvdyIgc2luY2UgdGhlDQo+ID4gPiA+ID4gPiByZWxldmFudA0KPiA+ID4gPiA+ID4gZG1h
LWJ1ZiBoYXNuJ3QgZXhwb3J0ZWQuDQo+ID4gPiA+ID4gPiArICAgICovDQo+ID4gPiA+ID4gPiAr
ICAgaWYgKGxlbiA+PiBQQUdFX1NISUZUID4gdG90YWxyYW1fcGFnZXMoKSkNCj4gPiA+ID4gPiAN
Cj4gPiA+ID4gPiBJZiB5b3VyICJoZWFwIiBpcyBmcm9tIGNtYSwgaXMgdGhpcyBzdGlsbCBhIHZh
bGlkIGNoZWNrPw0KPiA+ID4gPiANCj4gPiA+ID4gQW5kIHRoaW5raW5nIGEgYml0IGZ1cnRoZXIs
IGlmIEkgY3JlYXRlIGEgaGVhcCBmcm9tIHNvbWV0aGluZw0KPiA+ID4gPiBlbHNlIChzYXkgZGV2
aWNlIG1lbW9yeSksDQo+ID4gPiA+IHlvdSB3aWxsIG5lZWQgdG8gYmUgYWJsZSB0byBmaWd1cmUg
b3V0IHRoZSBtYXhpbXVtIGFsbG93YWJsZQ0KPiA+ID4gPiBjaGVjayBmb3IgdGhlIHNwZWNpZmlj
DQo+ID4gPiA+IGhlYXAuDQo+ID4gPiA+IA0KPiA+ID4gPiBNYXliZSB0aGUgaGVhcCBuZWVkcyBh
IGNhbGxiYWNrIGZvciBtYXggc2l6ZT8NClllcywgSSBhZ3JlZSB3aXRoIHRoaXMgc29sdXRpb24u
DQpJZiBkbWEtaGVhcCBmcmFtZXdvcmsgc3VwcG9ydCB0aGlzIHZpYSBhZGRpbmcgYSBjYWxsYmFj
ayB0byBzdXBwb3J0IGl0LA0Kc2VlbXMgaXQncyBtb3JlIGNsZWFyIHRoYW4gYWRkaW5nIGEgbGlt
aXRhdGlvbiBpbiBkbWEtaGVhcCBmcmFtZXdvcmsNCnNpbmNlIGVhY2ggaGVhcCBtYXliZSBoYXMg
ZGlmZmVyZW50IGxpbWl0YXRpb24uDQpJZiB5b3UgcHJlZmVyIGFkZGluZyBjYWxsYmFjaywgSSBj
YW4gdXBkYXRlIHRoaXMgcGF0Y2ggYW5kIGFkZCB0b3RhbHJhbQ0KbGltaXRhdGlvbiB0byBzeXN0
ZW0gZG1hLWhlYXAuDQoNClRoYW5rcyENCkd1YW5nbWluZw0KPiA+ID4gDQo+ID4gPiBXZWxsIHdl
IGN1cnJlbnRseSBtYWludGFpbiBhIHNlcGFyYXRlIGFsbG9jYXRvciBhbmQgZG9uJ3QgdXNlDQo+
ID4gPiBkbWEtaGVhcCwNCj4gPiA+IGJ1dCB5ZXMgd2UgaGF2ZSBzeXN0ZW1zIHdpdGggMTZHaUIg
ZGV2aWNlIGFuZCBvbmx5IDhHaUIgc3lzdGVtDQo+ID4gPiBtZW1vcnkgc28NCj4gPiA+IHRoYXQg
Y2hlY2sgaGVyZSBpcyBjZXJ0YWlubHkgbm90IGNvcnJlY3QuDQo+ID4gDQo+ID4gR29vZCBwb2lu
dC4NCj4gPiANCj4gPiA+IEluIGdlbmVyYWwgSSB3b3VsZCByYXRoZXIgbGV0IHRoZSBzeXN0ZW0g
cnVuIGludG8gLUVOT01FTSBvcg0KPiA+ID4gLUVJTlZBTA0KPiA+ID4gZnJvbSB0aGUgYWxsb2Nh
dG9yIGluc3RlYWQuDQoNCkZvciBzeXN0ZW0gZG1hLWhlYXAsIGl0IGRvZXNuJ3Qga25vdyBob3cg
bWVtb3J5IGlzIGF2YWxpYWJsZSB3aGVuDQphbGxvY2F0aW5nIG1lbW9yeSwgc28sIHVzZSB0b3Rh
bHJhbV9wYWdlcygpIGp1c3QgdG8gcHJldmVudCBjYXNlcyB3aGljaA0Kd2lsbCBjYXVzZSBvb20g
ZGVmaW5pdGVseS4NCg0KSnVzdCBsaWtlIFBBR0UgYWxpZ24sIHRoaXMgY2hlY2sgaXMgY2FuIGJl
IHVzZWQgZm9yIGFsbCBoZWFwcyBzaW5jZQ0KdGhlcmUgaXMgbm8gZG1hLWhlYXAgY2FuIGFsbG9j
IG1lbW9yeSBsYXJnZXIgdGhhbiB0b3RhbHJhbS4gRnV0aGVybW9yZSwNCmlmIHZlbmRvcnMgaW1w
bGVtZW50IGEgdmFyaWV0eSBvZiBkbWEtaGVhcCBsaWtlIHN5c3RlbSBoZWFwIGZvciBzcGVjaWFs
DQp1c2FnZXMsIHNlZW1zIG5lZWQgdG8gYWRkIHRoaXMgY2hlY2sgdG8gZWFjaCBkbWEtaGVhcCwg
YW5kIEkgdGhpbmsgdGhpcw0KaXMgdW5uZWNlc3NhcnkuDQpJZiB0aGUgZG1hLWhlYXAgaGFzIGl0
J3Mgb3duIHNwZWNpYWwgbGltaXRhdGlvbnMgZm9yIHNpemUsIGFuZCBhZGQgaXQNCmludG8gaGVh
cCBpbXBsZW1lbnRhdGlvbiBpcyBnb29kLg0KDQpUaGFua3MhDQpHdWFuZ21pbmcNCj4gPiANCj4g
PiBQcm9iYWJseSB0aGUgc2ltcGxlciBzb2x1dGlvbiBpcyB0byBwdXNoIHRoZSBhbGxvY2F0aW9u
IGNoZWNrIHRvDQo+ID4gdGhlDQo+ID4gaGVhcCBkcml2ZXIsIHJhdGhlciB0aGFuIGRvaW5nIGl0
IGF0IHRoZSB0b3AgbGV2ZWwgaGVyZS4NCj4gPiANCj4gPiBGb3IgQ01BIG9yIG90aGVyIGNvbnRp
Z3VvdXMgaGVhcHMsIGxldHRpbmcgdGhlIGFsbG9jYXRvciBmYWlsIGlzDQo+ID4gZmFzdA0KPiA+
IGVub3VnaC4gRm9yIG5vbmNvbnRpZ3VvdXMgYnVmZmVycywgbGlrZSB0aGUgc3lzdGVtIGhlYXAs
IHRoZQ0KPiA+IGFsbG9jYXRpb24gY2FuIGJ1cm4gYSBsb3Qgb2YgdGltZSBhbmQgY29uc3VtZSBh
IGxvdCBvZiBtZW1vcnkNCj4gPiAoY2F1c2luZw0KPiA+IG90aGVyIHRyb3VibGUpIGJlZm9yZSBh
IGxhcmdlIGFsbG9jYXRpb24gbWlnaHQgbmF0dXJhbGx5IGZhaWwuDQo+IA0KPiBZZWFoLCBsZXR0
aW5nIGEgYWxsb2NfcGFnZSgpIGxvb3AgcnVuIGZvciBhIHdoaWxlIGlzIHVzdWFsbHkgbm90IG5p
Y2UNCj4gYXQgDQo+IGFsbCA6KQ0KPiANCj4gWW91IGNhbiBzdGlsbCBkbyBhIHNhbml0eSBjaGVj
ayBoZXJlLCBlLmcuIHRoZSBzaXplIHNob3VsZCBuZXZlcg0KPiBoYXZlIA0KPiB0aGUgbW9zdCBz
aWduaWZpY2FudCBiaXQgc2V0IGZvciBleGFtcGxlLg0KPiANClllcywgdGhpcyBpcyBhIGdvb2Qg
c29sdXRpb24uIEJ1dCBpZiB0aGlzIGEgcG9zaXRpdmUgdmFsdWUsIGxhcmdlciB0aGFuDQp0b3Rh
bHJhbSwgaXQgY2FuIGFsc28gcGFzcyB0aGlzIGNoZWNrLCBhbmQgY2F1c2UgT09NIGFmdGVyIHNv
bWUgdGltZS4NCg0KPkZyb20gZGljdXNzaW9uIGFib3ZlLCBzZWVtcyBmaW5kaW5nIGEgcHJvcGVy
IHNvbHV0aW9uIHRoYXQgY2FuIGp1ZGdlDQp0aGUgc2l6ZSBpcyB2YWxpZCBvciBub3QgZm9yIGVh
Y2ggZG1hLWhlYXAgaXMgbW9yZSBpbXBvcnRhbnQuDQoNClRoYW5rcyENCkd1YW5nbWluZw0KDQo+
IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+ID4gDQo+ID4gdGhhbmtzDQo+ID4gLWpvaG4N
Cj4gDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
