Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AA52750A61B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 18:46:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE12D3EFC8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:46:02 +0000 (UTC)
Received: from ssl.serverraum.org (ssl.serverraum.org [176.9.125.105])
	by lists.linaro.org (Postfix) with ESMTPS id 94D0B3EA49
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Apr 2022 14:08:32 +0000 (UTC)
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ssl.serverraum.org (Postfix) with ESMTPSA id E473822247;
	Tue,  5 Apr 2022 16:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2016061301;
	t=1649167711;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+6+1BpQJhWpIwzeox1bohwEoCNti4GjMewSwLvafwXw=;
	b=FjoEbM8+1cMTX7ixD4Mw3f9fWtrhCqWB0k1AAf2hdMX7f6oCWMT1wXPAY4BKHa7SJ2Uefh
	nRiJDlkMvxeECN0Hz+B+LZR9gyrz/dw/HfgISScMlZbgJrgFBhpSvJfVcPMr+lyrzY+sRR
	5CsvQ+iUunnCwjuq9CnFA29BcFB2G4c=
MIME-Version: 1.0
Date: Tue, 05 Apr 2022 16:08:30 +0200
From: Michael Walle <michael@walle.cc>
To: Codrin.Ciubotariu@microchip.com
In-Reply-To: <74494dda-e0cd-aa73-7e58-e4359c1ba292@microchip.com>
References: <20220303161724.3324948-1-michael@walle.cc>
 <46e1be55-9377-75b7-634d-9eadbebc98d7@microchip.com>
 <bc32f1107786ebcbfb4952e1a6142304@walle.cc>
 <360914ee-594c-86bc-2436-aa863a67953a@microchip.com>
 <27f124c9adaf8a4fbdfb7a38456c4a2e@walle.cc>
 <74494dda-e0cd-aa73-7e58-e4359c1ba292@microchip.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <9e715ed06a28165446e29483cca7e3d0@walle.cc>
X-Sender: michael@walle.cc
X-MailFrom: michael@walle.cc
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 64BCATBBDAFWSWHT4XUFJRQQP4OGT2TJ
X-Message-ID-Hash: 64BCATBBDAFWSWHT4XUFJRQQP4OGT2TJ
X-Mailman-Approved-At: Thu, 21 Apr 2022 16:45:54 +0000
CC: Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com, Claudiu.Beznea@microchip.com, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: at91: use dma safe buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/64BCATBBDAFWSWHT4XUFJRQQP4OGT2TJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAyMi0wNC0wNSAxNTo1OCwgc2NocmllYiBDb2RyaW4uQ2l1Ym90YXJpdUBtaWNyb2NoaXAu
Y29tOg0KPiBPbiAwNS4wNC4yMDIyIDE0OjA5LCBNaWNoYWVsIFdhbGxlIHdyb3RlOg0KPj4gQW0g
MjAyMi0wNC0wNSAxMjowMiwgc2NocmllYiBDb2RyaW4uQ2l1Ym90YXJpdUBtaWNyb2NoaXAuY29t
Og0KPj4+IE9uIDA1LjA0LjIwMjIgMTI6MzgsIE1pY2hhZWwgV2FsbGUgd3JvdGU6DQo+Pj4+IEFt
IDIwMjItMDQtMDUgMTE6MjMsIHNjaHJpZWIgQ29kcmluLkNpdWJvdGFyaXVAbWljcm9jaGlwLmNv
bToNCj4+Pj4+PiArwqDCoMKgwqDCoMKgIGlmIChkZXYtPnVzZV9kbWEpIHsNCj4+Pj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfYnVmID0gaTJjX2dldF9kbWFfc2FmZV9tc2df
YnVmKG1fc3RhcnQsIDEpOw0KPj4+Pj4gDQo+Pj4+PiBJZiB5b3Ugd2FudCwgeW91IGNvdWxkIGp1
c3QgZGV2LT5idWYgPSBpMmNfZ2V0X2RtYV9zYWZlLi4uDQo+Pj4+IA0KPj4+PiBCdXQgd2hlcmUg
aXMgdGhlIGVycm9yIGhhbmRsaW5nIGluIHRoYXQgY2FzZT8gZGV2LT5idWYgd2lsbA0KPj4+PiBi
ZSBOVUxMLCB3aGljaCBpcyBldmVudHVhbGx5IHBhc3NlZCB0byBkbWFfbWFwX3NpbmdsZSgpLg0K
Pj4+PiANCj4+Pj4gQWxzbywgSSBuZWVkIHRoZSBkbWFfYnVmIGZvciB0aGUgaTJjX3B1dF9kbWFf
c2FmZV9tc2dfYnVmKCkNCj4+Pj4gY2FsbCBhbnl3YXksIGJlY2F1c2UgZGV2LT5idWYgd2lsbCBi
ZSBtb2RpZmllZCBkdXJpbmcNCj4+Pj4gcHJvY2Vzc2luZy4NCj4+PiANCj4+PiBZb3Ugc3RpbGw6
DQo+Pj4gwqDCoMKgwqDCoCBpZiAoIWRldi0+YnVmKSB7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0ID0gLUVOT01FTTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBn
b3RvIG91dDsNCj4+PiDCoMKgwqDCoMKgIH0NCj4+PiANCj4+PiBTbywgYXQ5MV9kb190d2lfdHJh
bnNmZXIoKS9kbWFfbWFwX3NpbmdsZSgpIHdpbGwgbm90IGJlIGNhbGxlZC4NCj4+IA0KPj4gQWho
LCBJIG1pc3VuZGVyc3Rvb2QgeW91LiBZZXMsIGJ1dCBhcyBJIHNhaWQsIEkgbmVlZCB0aGUgZG1h
X2J1Zg0KPj4gdGVtcG9yYXJ5IHZhcmlhYmxlIGFueXdheSwgYmVjYXVzZSBkZXYtPmJ1ZiBpcyBt
b2RpZmllZCwgZWcuIHNlZQ0KPj4gYXQ5MV90d2lfcmVhZF9kYXRhX2RtYV9jYWxsYmFjaygpLg0K
PiBhdDkxX3R3aV9yZWFkX2RhdGFfZG1hX2NhbGxiYWNrKCkgaXMgY2FsbGVkIGFzIGNhbGxiYWNr
IGlmDQo+IGRtYV9hc3luY19pc3N1ZV9wZW5kaW5nKGRtYS0+Y2hhbl9yeCkgaXMgY2FsbGVkLg0K
PiBkbWFfYXN5bmNfaXNzdWVfcGVuZGluZyhkbWEtPmNoYW5fcngpIGlzIGNhbGxlZCBvbg0KPiBh
dDkxX3R3aV9yZWFkX2RhdGFfZG1hKCksIHdoaWNoIGlzIGNhbGxlZCBpbiBhdDkxX2RvX3R3aV90
cmFuc2ZlcigpLA0KPiB3aGljaCB3ZSBkZWNpZGVkIGFib3ZlIHRvIHNraXAgaW4gY2FzZSBvZiBl
cnJvci4NCg0KSXQgaXMgbm90IGFib3V0IGVycm9ycywgeW91IG5lZWQgdGhlIGV4YWN0IHNhbWUg
cG9pbnRlciB5b3UNCmdvdCBmcm9tIGkyY19nZXRfZG1hX3NhZmVfbXNnX2J1ZigpIHRvIGJlIHBh
c3NlZCB0bw0KaTJjX3B1dF9kbWFfc2FmZV9tc2dfYnVmKCkuIEFuZCBiZWNhdXNlIChpbiBzb21l
IGNhc2VzLCBpdA0KaXNuJ3QgcmVhbGx5IG9idmlvdXMpIHRoZSBkZXYtPmJ1ZiB3aWxsIGJlIGFk
dmFuY2VkIGEgZmV3DQpieXRlcywgSSBjYW5ub3QgcGFzcyBkZXYtPmJ1ZiB0byBpMmNfcHV0X2Rt
YV9zYWZlX21zZ19idWYoKS4NCg0KLW1pY2hhZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
