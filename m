Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BFF50A616
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 18:45:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 087C647FC8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:45:19 +0000 (UTC)
Received: from ssl.serverraum.org (ssl.serverraum.org [176.9.125.105])
	by lists.linaro.org (Postfix) with ESMTPS id DD2D13EC0E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Apr 2022 11:09:05 +0000 (UTC)
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ssl.serverraum.org (Postfix) with ESMTPSA id 65CC922247;
	Tue,  5 Apr 2022 13:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2016061301;
	t=1649156944;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HhCRNMxeN/GjO55RvomQG0xoJmMvvbdrMDnAktj+ZOw=;
	b=cNqMfgmXtFPvgEEwbWq+VnwdvMuscRpK20137u0iJSnBDLVHoJFUu5w4qyLSMk8UBd8eum
	0HMbGVUDIyLdMdlDNStBDi+KY7vBSzta24pjZddLL/yJGIlyoEPC3VL3TgfKTOY12IUtu8
	hkJrB7ZhYGB9P1u1D5xx4Y+a7XRIo5o=
MIME-Version: 1.0
Date: Tue, 05 Apr 2022 13:09:04 +0200
From: Michael Walle <michael@walle.cc>
To: Codrin.Ciubotariu@microchip.com
In-Reply-To: <360914ee-594c-86bc-2436-aa863a67953a@microchip.com>
References: <20220303161724.3324948-1-michael@walle.cc>
 <46e1be55-9377-75b7-634d-9eadbebc98d7@microchip.com>
 <bc32f1107786ebcbfb4952e1a6142304@walle.cc>
 <360914ee-594c-86bc-2436-aa863a67953a@microchip.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <27f124c9adaf8a4fbdfb7a38456c4a2e@walle.cc>
X-Sender: michael@walle.cc
X-MailFrom: michael@walle.cc
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CCKUGG2WUNSAFT3BKAG32LRDHZP6DGS5
X-Message-ID-Hash: CCKUGG2WUNSAFT3BKAG32LRDHZP6DGS5
X-Mailman-Approved-At: Thu, 21 Apr 2022 16:45:14 +0000
CC: Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com, Claudiu.Beznea@microchip.com, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: at91: use dma safe buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CCKUGG2WUNSAFT3BKAG32LRDHZP6DGS5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAyMi0wNC0wNSAxMjowMiwgc2NocmllYiBDb2RyaW4uQ2l1Ym90YXJpdUBtaWNyb2NoaXAu
Y29tOg0KPiBPbiAwNS4wNC4yMDIyIDEyOjM4LCBNaWNoYWVsIFdhbGxlIHdyb3RlOg0KPj4gQW0g
MjAyMi0wNC0wNSAxMToyMywgc2NocmllYiBDb2RyaW4uQ2l1Ym90YXJpdUBtaWNyb2NoaXAuY29t
Og0KPj4+PiArwqDCoMKgwqDCoMKgIGlmIChkZXYtPnVzZV9kbWEpIHsNCj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2J1ZiA9IGkyY19nZXRfZG1hX3NhZmVfbXNnX2J1Ziht
X3N0YXJ0LCAxKTsNCj4+PiANCj4+PiBJZiB5b3Ugd2FudCwgeW91IGNvdWxkIGp1c3QgZGV2LT5i
dWYgPSBpMmNfZ2V0X2RtYV9zYWZlLi4uDQo+PiANCj4+IEJ1dCB3aGVyZSBpcyB0aGUgZXJyb3Ig
aGFuZGxpbmcgaW4gdGhhdCBjYXNlPyBkZXYtPmJ1ZiB3aWxsDQo+PiBiZSBOVUxMLCB3aGljaCBp
cyBldmVudHVhbGx5IHBhc3NlZCB0byBkbWFfbWFwX3NpbmdsZSgpLg0KPj4gDQo+PiBBbHNvLCBJ
IG5lZWQgdGhlIGRtYV9idWYgZm9yIHRoZSBpMmNfcHV0X2RtYV9zYWZlX21zZ19idWYoKQ0KPj4g
Y2FsbCBhbnl3YXksIGJlY2F1c2UgZGV2LT5idWYgd2lsbCBiZSBtb2RpZmllZCBkdXJpbmcNCj4+
IHByb2Nlc3NpbmcuDQo+IA0KPiBZb3Ugc3RpbGw6DQo+IAlpZiAoIWRldi0+YnVmKSB7DQo+IAkJ
cmV0ID0gLUVOT01FTTsNCj4gCQlnb3RvIG91dDsNCj4gCX0NCj4gDQo+IFNvLCBhdDkxX2RvX3R3
aV90cmFuc2ZlcigpL2RtYV9tYXBfc2luZ2xlKCkgd2lsbCBub3QgYmUgY2FsbGVkLg0KDQpBaGgs
IEkgbWlzdW5kZXJzdG9vZCB5b3UuIFllcywgYnV0IGFzIEkgc2FpZCwgSSBuZWVkIHRoZSBkbWFf
YnVmDQp0ZW1wb3JhcnkgdmFyaWFibGUgYW55d2F5LCBiZWNhdXNlIGRldi0+YnVmIGlzIG1vZGlm
aWVkLCBlZy4gc2VlDQphdDkxX3R3aV9yZWFkX2RhdGFfZG1hX2NhbGxiYWNrKCkuDQoNCi1taWNo
YWVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
