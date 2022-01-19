Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF864937D5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 10:58:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F7AC3EE87
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 09:58:19 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 01B363EDB3
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 09:58:14 +0000 (UTC)
X-UUID: 087ae5db9dc54b29966646a78aa513c7-20220119
X-UUID: 087ae5db9dc54b29966646a78aa513c7-20220119
Received: from mtkcas11.mediatek.inc [(172.21.101.40)] by mailgw02.mediatek.com
	(envelope-from <guangming.cao@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 421905681; Wed, 19 Jan 2022 17:58:10 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.792.15; Wed, 19 Jan 2022 17:58:09 +0800
Received: from mszswglt01 (10.16.20.20) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 19 Jan 2022 17:58:08 +0800
Message-ID: <f09938519f1fcf51f20a0de5eb4063b0ff1a1e87.camel@mediatek.com>
From: Guangming.Cao <guangming.cao@mediatek.com>
To: John Stultz <john.stultz@linaro.org>
Date: Wed, 19 Jan 2022 17:59:07 +0800
In-Reply-To: <CALAqxLUSjHoLpgFLcvqmDfv7Uip2VwHS5d_5x2nzw=P3rA2NDA@mail.gmail.com>
References: <CAO_48GF=ttKqSOm9GRoA3Mq+-RQOtRjWp449XPcz-wH=kjaTjw@mail.gmail.com>
	 <20220113123406.11520-1-guangming.cao@mediatek.com>
	 <4f88205c1b344aea8608960e2f85b8f4@intel.com>
	 <e657f5257cbf4955817b0bbf037de9f9@intel.com>
	 <24157767-dc29-bbdd-5428-d89ecc6b9606@amd.com>
	 <CALAqxLXRtYDNQ8y1efVGa4SwUH_oAaHviZFjsOVSNFmUHnCCeQ@mail.gmail.com>
	 <6b8182a1-7cdc-7369-5c34-e6d0c24efcca@amd.com>
	 <82faa62f1bc946cf2f9ee2f7d15c567162238eab.camel@mediatek.com>
	 <CALAqxLUSjHoLpgFLcvqmDfv7Uip2VwHS5d_5x2nzw=P3rA2NDA@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
Message-ID-Hash: LRKA7BAAWLAXF4FM4EWHEL7BKC53X3ZP
X-Message-ID-Hash: LRKA7BAAWLAXF4FM4EWHEL7BKC53X3ZP
X-MailFrom: guangming.cao@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "wsd_upstream@mediatek.com" <wsd_upstream@mediatek.com>, "libo.kang@mediatek.com" <libo.kang@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "yf.wang@mediatek.com" <yf.wang@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "lmark@codeaurora.org" <lmark@codeaurora.org>, "benjamin.gaignard@linaro.org" <benjamin.gaignard@linaro.org>, "bo.song@mediatek.com" <bo.song@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "labbott@redhat.com" <labbott@redhat.com>, "mingyuan.ma@mediatek.com" <mingyuan.ma@mediatek.com>, "jianjiao.zeng@mediatek.com" <jianjiao.zeng@mediatek.com>, "linux-media
 @vger.kernel.org" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LRKA7BAAWLAXF4FM4EWHEL7BKC53X3ZP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDIyLTAxLTE0IGF0IDE3OjE3IC0wODAwLCBKb2huIFN0dWx0eiB3cm90ZToNCj4g
T24gRnJpLCBKYW4gMTQsIDIwMjIgYXQgNDowNCBBTSBHdWFuZ21pbmcuQ2FvDQo+IDxndWFuZ21p
bmcuY2FvQG1lZGlhdGVrLmNvbT4gd3JvdGU6DQo+ID4gDQo+ID4gT24gRnJpLCAyMDIyLTAxLTE0
IGF0IDA4OjE2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+ID4gQW0gMTQuMDEu
MjIgdW0gMDA6MjYgc2NocmllYiBKb2huIFN0dWx0ejoNCj4gPiA+ID4gT24gVGh1LCBKYW4gMTMs
IDIwMjIgYXQgNTowNSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo+ID4gPiA+IDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+ID4gPiA+IEFtIDEzLjAxLjIyIHVtIDE0OjAwIHNjaHJp
ZWIgUnVobCwgTWljaGFlbCBKOg0KPiA+ID4gPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiA+ID4gPiA+ID4gPiBGcm9tOiBkcmktZGV2ZWwgPGRyaS1kZXZlbC1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4NCj4gPiA+ID4gPiA+ID4gT24NCj4gPiA+ID4gPiA+ID4gQmVo
YWxmIE9mDQo+ID4gPiA+ID4gPiA+IFJ1aGwsIE1pY2hhZWwgSg0KPiA+ID4gPiA+ID4gPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+ID4gPiA+ID4gRnJvbTogZHJpLWRldmVs
IDwNCj4gPiA+ID4gPiA+ID4gPiBkcmktZGV2ZWwtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5v
cmc+DQo+ID4gPiA+ID4gPiA+ID4gT24gQmVoYWxmIE9mDQo+ID4gPiA+ID4gPiA+ID4gZ3Vhbmdt
aW5nLmNhb0BtZWRpYXRlay5jb20NCj4gPiA+ID4gPiA+ID4gPiArICAgLyoNCj4gPiA+ID4gPiA+
ID4gPiArICAgICogSW52YWxpZCBzaXplIGNoZWNrLiBUaGUgImxlbiIgc2hvdWxkIGJlIGxlc3MN
Cj4gPiA+ID4gPiA+ID4gPiB0aGFuDQo+ID4gPiA+ID4gPiA+ID4gdG90YWxyYW0uDQo+ID4gPiA+
ID4gPiA+ID4gKyAgICAqDQo+ID4gPiA+ID4gPiA+ID4gKyAgICAqIFdpdGhvdXQgdGhpcyBjaGVj
aywgb25jZSB0aGUgaW52YWxpZCBzaXplDQo+ID4gPiA+ID4gPiA+ID4gYWxsb2NhdGlvbg0KPiA+
ID4gPiA+ID4gPiA+IHJ1bnMgb24gYSBwcm9jZXNzDQo+ID4gPiA+ID4gPiA+ID4gdGhhdA0KPiA+
ID4gPiA+ID4gPiA+ICsgICAgKiBjYW4ndCBiZSBraWxsZWQgYnkgT09NIGZsb3coc3VjaCBhcyAi
Z3JhbGxvYyIgb24NCj4gPiA+ID4gPiA+ID4gPiBBbmRyb2lkIGRldmljZXMpLCBpdA0KPiA+ID4g
PiA+ID4gPiA+IHdpbGwNCj4gPiA+ID4gPiA+ID4gPiArICAgICogY2F1c2UgYSBrZXJuZWwgZXhj
ZXB0aW9uLCBhbmQgdG8gbWFrZSBtYXR0ZXJzDQo+ID4gPiA+ID4gPiA+ID4gd29yc2UsDQo+ID4g
PiA+ID4gPiA+ID4gd2UgY2FuJ3QgZmluZA0KPiA+ID4gPiA+ID4gPiA+IHdobyBhcmUgdXNpbmcN
Cj4gPiA+ID4gPiA+ID4gPiArICAgICogc28gbWFueSBtZW1vcnkgd2l0aCAiZG1hX2J1Zl9kZWJ1
Z19zaG93IiBzaW5jZQ0KPiA+ID4gPiA+ID4gPiA+IHRoZQ0KPiA+ID4gPiA+ID4gPiA+IHJlbGV2
YW50DQo+ID4gPiA+ID4gPiA+ID4gZG1hLWJ1ZiBoYXNuJ3QgZXhwb3J0ZWQuDQo+ID4gPiA+ID4g
PiA+ID4gKyAgICAqLw0KPiA+ID4gPiA+ID4gPiA+ICsgICBpZiAobGVuID4+IFBBR0VfU0hJRlQg
PiB0b3RhbHJhbV9wYWdlcygpKQ0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gSWYgeW91
ciAiaGVhcCIgaXMgZnJvbSBjbWEsIGlzIHRoaXMgc3RpbGwgYSB2YWxpZCBjaGVjaz8NCj4gPiA+
ID4gPiA+IA0KPiA+ID4gPiA+ID4gQW5kIHRoaW5raW5nIGEgYml0IGZ1cnRoZXIsIGlmIEkgY3Jl
YXRlIGEgaGVhcCBmcm9tDQo+ID4gPiA+ID4gPiBzb21ldGhpbmcNCj4gPiA+ID4gPiA+IGVsc2Ug
KHNheSBkZXZpY2UgbWVtb3J5KSwNCj4gPiA+ID4gPiA+IHlvdSB3aWxsIG5lZWQgdG8gYmUgYWJs
ZSB0byBmaWd1cmUgb3V0IHRoZSBtYXhpbXVtDQo+ID4gPiA+ID4gPiBhbGxvd2FibGUNCj4gPiA+
ID4gPiA+IGNoZWNrIGZvciB0aGUgc3BlY2lmaWMNCj4gPiA+ID4gPiA+IGhlYXAuDQo+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+IE1heWJlIHRoZSBoZWFwIG5lZWRzIGEgY2FsbGJhY2sgZm9yIG1h
eCBzaXplPw0KPiA+IA0KPiA+IFllcywgSSBhZ3JlZSB3aXRoIHRoaXMgc29sdXRpb24uDQo+ID4g
SWYgZG1hLWhlYXAgZnJhbWV3b3JrIHN1cHBvcnQgdGhpcyB2aWEgYWRkaW5nIGEgY2FsbGJhY2sg
dG8gc3VwcG9ydA0KPiA+IGl0LA0KPiA+IHNlZW1zIGl0J3MgbW9yZSBjbGVhciB0aGFuIGFkZGlu
ZyBhIGxpbWl0YXRpb24gaW4gZG1hLWhlYXANCj4gPiBmcmFtZXdvcmsNCj4gPiBzaW5jZSBlYWNo
IGhlYXAgbWF5YmUgaGFzIGRpZmZlcmVudCBsaW1pdGF0aW9uLg0KPiA+IElmIHlvdSBwcmVmZXIg
YWRkaW5nIGNhbGxiYWNrLCBJIGNhbiB1cGRhdGUgdGhpcyBwYXRjaCBhbmQgYWRkDQo+ID4gdG90
YWxyYW0NCj4gPiBsaW1pdGF0aW9uIHRvIHN5c3RlbSBkbWEtaGVhcC4NCj4gDQo+IElmIHRoZSBt
YXggdmFsdWUgaXMgcGVyLWhlYXAsIHdoeSBub3QgZW5mb3JjZSB0aGF0IHZhbHVlIGluIHRoZQ0K
PiBwZXItaGVhcCBhbGxvY2F0aW9uIGZ1bmN0aW9uPw0KPiANCj4gTW92aW5nIHRoZSBjaGVjayB0
byB0aGUgaGVhcCBhbGxvYyB0byBtZSBzZWVtcyBzaW1wbGVyIHRvIG1lIHRoYW4NCj4gYWRkaW5n
IGNvbXBsZXhpdHkgdG8gdGhlIGluZnJhc3RydWN0dXJlIHRvIGFkZCBhIGhlYXAgbWF4X3NpemUN
Cj4gY2FsbGJhY2suIElzIHRoZXJlIHNvbWUgb3RoZXIgdXNlIGZvciB0aGUgY2FsbGJhY2sgdGhh
dCB5b3UgZW52aXNpb24/DQo+IA0KPiB0aGFua3MNCj4gLWpvaG4NCg0KVGhhbmtzIGZvciB5b3Vy
IGNvbW1lbnQuDQoNCklmIHlvdSB0aGluayBtYXggdGhlIHZhbHVlIGlzIHBlci1oZWFwLCB3aHkg
bm90IGFkZCBhbiBvcHRpb25hbA0KY2FsbGJhY2sgZm9yIGRtYS1oZWFwIHRvIHNvbHZlIHRoaXMg
aXNzdWUocHJldmVudCBjb25zdW1pbmcgdG9vIG11Y2gNCnRpbWUgZm9yIGEgZG9vbWVkIHRvIGZh
aWwgYWxsb2NhdGlvbiksIGlmIHRoZSBkbWEtaGVhcCBkb2Vzbid0IGhhdmUgYQ0Kc3BlY2lhbCBz
aXplIGNoZWNrLCBqdXN0IHVzZSB0aGUgZGVmYXVsdCB2YWx1ZSh0b3RhbHJhbSkgaW4gZG1hLWhl
YXAgDQpmcmFtZXdvcmsgdG8gZG8gdGhlIHNpemUgY2hlY2suDQoNClllcywgZm9yIGxpbnV4IGRt
YS1oZWFwcywgb25seSBzeXN0ZW0taGVhcCBuZWVkcyBpdCwgc28gYWRkaW5nIGl0IGluDQpzeXN0
ZW0gaGVhcCBpcyB0aGUgc2ltcGxlc3QuIEhvd2V2ZXIsIHRoZXJlIGFyZSBtYW55IHZlbmRvciBk
bWEtaGVhcHMNCmxpa2Ugc3lzdGVtLWhlYXAgd2hpY2ggd29uJ3QgYmUgdXBsb2FkZWQgdG8gbGlu
dXggY29kZWJhc2UsIGFuZCBtYXliZQ0KaGF2ZSBzYW1lIGxpbWl0YXRpb24sIGFsbCB0aGVzZSBo
ZWFwcyBuZWVkIHRvIGFkZCB0aGUgc2FtZSBsaW1pdGF0aW9uLg0KSSBqdXN0IHRoaW5rIGl0J3Mg
Ym9yaW5nLiBIb3dldmVyLCBJZiB5b3UgdGhpbmsgZGlzY3Vzc2luZyB0aGVzZSBhYnNlbnQNCmNh
c2VzIGJhc2VkIG9uIGN1cnJlbnQgbGludXggY29kZSBpcyBtZWFuaW5nbGVzcywgSSBhbHNvIGFn
cmVlIHRvIGl0Lg0KDQpTbywgdG8gc3VtbWFyaXplLCBpZiB5b3Ugc3RpbGwgdGhpbmsgYWRkaW5n
IGl0IGluIHN5c3RlbV9oZWFwLmMgaXMNCmJldHRlciwgSSBhbHNvIGFncmVlIGFuZCBJIHdpbGwg
dXBkYXRlIHRoZSBwYXRjaCB0byBhZGQgaXQgaW4NCnN5c3RlbV9oZWFwLmMNCg0KVGhhbmtzfg0K
R3VhbmdtaW5nDQoNCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IExpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdA0KPiBMaW51eC1tZWRpYXRl
a0BsaXN0cy5pbmZyYWRlYWQub3JnDQo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
