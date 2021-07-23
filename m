Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6404D3D368B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 10:20:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2EEC6314A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 08:19:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C42EE60591; Fri, 23 Jul 2021 08:19:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C035606A3;
	Fri, 23 Jul 2021 08:19:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 101076057D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 08:19:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 05DF0606A3; Fri, 23 Jul 2021 08:19:54 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id D9FCA6057D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 08:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id 63ED820201B;
 Fri, 23 Jul 2021 10:19:51 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id s2CfGk7xNlVi; Fri, 23 Jul 2021 10:19:51 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id EDA9620201A;
 Fri, 23 Jul 2021 10:19:50 +0200 (CEST)
Received: from localhost ([::1]) by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1m6qPO-000B7e-5b; Fri, 23 Jul 2021 10:19:50 +0200
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210723075857.4065-1-michel@daenzer.net>
 <f5f37693-bfe2-e52f-172b-00f4aa94dbd9@amd.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <4cf94f59-f953-f5d7-9901-cfe5fd63bfbc@daenzer.net>
Date: Fri, 23 Jul 2021 10:19:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <f5f37693-bfe2-e52f-172b-00f4aa94dbd9@amd.com>
Content-Language: en-CA
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf/poll: Get a file reference for
 outstanding fence callbacks
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMS0wNy0yMyAxMDowNCBhLm0uLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+IEFtIDIz
LjA3LjIxIHVtIDA5OjU4IHNjaHJpZWIgTWljaGVsIETDpG56ZXI6Cj4+IEZyb206IE1pY2hlbCBE
w6RuemVyIDxtZGFlbnplckByZWRoYXQuY29tPgo+Pgo+PiBUaGlzIG1ha2VzIHN1cmUgd2UgZG9u
J3QgaGl0IHRoZQo+Pgo+PiDCoMKgwqDCoEJVR19PTihkbWFidWYtPmNiX2luLmFjdGl2ZSB8fCBk
bWFidWYtPmNiX291dC5hY3RpdmUpOwo+Pgo+PiBpbiBkbWFfYnVmX3JlbGVhc2UsIHdoaWNoIGNv
dWxkIGJlIHRyaWdnZXJlZCBieSB1c2VyIHNwYWNlIGNsb3NpbmcgdGhlCj4+IGRtYS1idWYgZmls
ZSBkZXNjcmlwdGlvbiB3aGlsZSB0aGVyZSBhcmUgb3V0c3RhbmRpbmcgZmVuY2UgY2FsbGJhY2tz
Cj4+IGZyb20gZG1hX2J1Zl9wb2xsLgo+IAo+IEkgd2FzIGFsc28gd29uZGVyaW5nIHRoZSBzYW1l
IHRoaW5nIHdoaWxlIHdvcmtpbmcgb24gdGhpcywgYnV0IHRoZW4gdGhvdWdodCB0aGF0IHRoZSBw
b2xsIGludGVyZmFjZSB3b3VsZCB0YWtlIGNhcmUgb2YgdGhpcy4KCkkgd2FzIGFibGUgdG8gaGl0
IHRoZSBCVUdfT04gd2l0aCBodHRwczovL2dpdGxhYi5nbm9tZS5vcmcvR05PTUUvbXV0dGVyLy0v
bWVyZ2VfcmVxdWVzdHMvMTg4MCAuCgoKPj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPj4g
U2lnbmVkLW9mZi1ieTogTWljaGVsIETDpG56ZXIgPG1kYWVuemVyQHJlZGhhdC5jb20+Cj4+IC0t
LQo+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTggKysrKysrKysrKysrLS0tLS0t
Cj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMKPj4gaW5kZXggNmM1MjBjOWJkOTNjLi5lYzI1NDk4YTk3MWYgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPj4gKysrIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYwo+PiBAQCAtNjUsMTIgKzY1LDkgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9y
ZWxlYXNlKHN0cnVjdCBkZW50cnkgKmRlbnRyeSkKPj4gwqDCoMKgwqDCoCBCVUdfT04oZG1hYnVm
LT52bWFwcGluZ19jb3VudGVyKTsKPj4gwqAgwqDCoMKgwqDCoCAvKgo+PiAtwqDCoMKgwqAgKiBB
bnkgZmVuY2VzIHRoYXQgYSBkbWEtYnVmIHBvbGwgY2FuIHdhaXQgb24gc2hvdWxkIGJlIHNpZ25h
bGVkCj4+IC3CoMKgwqDCoCAqIGJlZm9yZSByZWxlYXNpbmcgZG1hLWJ1Zi4gVGhpcyBpcyB0aGUg
cmVzcG9uc2liaWxpdHkgb2YgZWFjaAo+PiAtwqDCoMKgwqAgKiBkcml2ZXIgdGhhdCB1c2VzIHRo
ZSByZXNlcnZhdGlvbiBvYmplY3RzLgo+PiAtwqDCoMKgwqAgKgo+PiAtwqDCoMKgwqAgKiBJZiB5
b3UgaGl0IHRoaXMgQlVHKCkgaXQgbWVhbnMgc29tZW9uZSBkcm9wcGVkIHRoZWlyIHJlZiB0byB0
aGUKPj4gLcKgwqDCoMKgICogZG1hLWJ1ZiB3aGlsZSBzdGlsbCBoYXZpbmcgcGVuZGluZyBvcGVy
YXRpb24gdG8gdGhlIGJ1ZmZlci4KPj4gK8KgwqDCoMKgICogSWYgeW91IGhpdCB0aGlzIEJVRygp
IGl0IGNvdWxkIG1lYW46Cj4+ICvCoMKgwqDCoCAqICogVGhlcmUncyBhIGZpbGUgcmVmZXJlbmNl
IGltYmFsYW5jZSBpbiBkbWFfYnVmX3BvbGwgLyBkbWFfYnVmX3BvbGxfY2Igb3Igc29tZXdoZXJl
IGVsc2UKPj4gK8KgwqDCoMKgICogKiBkbWFidWYtPmNiX2luL291dC5hY3RpdmUgYXJlIG5vbi0w
IGRlc3BpdGUgbm8gcGVuZGluZyBmZW5jZSBjYWxsYmFjawo+PiDCoMKgwqDCoMKgwqAgKi8KPj4g
wqDCoMKgwqDCoCBCVUdfT04oZG1hYnVmLT5jYl9pbi5hY3RpdmUgfHwgZG1hYnVmLT5jYl9vdXQu
YWN0aXZlKTsKPj4gwqAgQEAgLTE5Niw2ICsxOTMsNyBAQCBzdGF0aWMgbG9mZl90IGRtYV9idWZf
bGxzZWVrKHN0cnVjdCBmaWxlICpmaWxlLCBsb2ZmX3Qgb2Zmc2V0LCBpbnQgd2hlbmNlKQo+PiDC
oCBzdGF0aWMgdm9pZCBkbWFfYnVmX3BvbGxfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHN0
cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGRtYV9i
dWZfcG9sbF9jYl90ICpkY2IgPSAoc3RydWN0IGRtYV9idWZfcG9sbF9jYl90ICopY2I7Cj4+ICvC
oMKgwqAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IGNvbnRhaW5lcl9vZihkY2ItPnBvbGwsIHN0
cnVjdCBkbWFfYnVmLCBwb2xsKTsKPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIGZsYWdzOwo+
PiDCoCDCoMKgwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKCZkY2ItPnBvbGwtPmxvY2ssIGZsYWdz
KTsKPj4gQEAgLTIwMyw2ICsyMDEsOCBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3BvbGxfY2Ioc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UsIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQo+PiDCoMKgwqDC
oMKgIGRjYi0+YWN0aXZlID0gMDsKPj4gwqDCoMKgwqDCoCBzcGluX3VubG9ja19pcnFyZXN0b3Jl
KCZkY2ItPnBvbGwtPmxvY2ssIGZsYWdzKTsKPj4gwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KGZl
bmNlKTsKPj4gK8KgwqDCoCAvKiBQYWlyZWQgd2l0aCBnZXRfZmlsZSBpbiBkbWFfYnVmX3BvbGwg
Ki8KPj4gK8KgwqDCoCBmcHV0KGRtYWJ1Zi0+ZmlsZSk7Cj4gCj4gSXMgY2FsbGluZyBmcHV0KCkg
aW4gaW50ZXJydXB0IGNvbnRleHQgb2s/IElJUkMgdGhhdCBjb3VsZCBwb3RlbnRpYWxseSBzbGVl
cC4KCkxvb2tzIGZpbmUgQUZBSUNUOiBJdCBoYXMKCgkJaWYgKGxpa2VseSghaW5faW50ZXJydXB0
KCkgJiYgISh0YXNrLT5mbGFncyAmIFBGX0tUSFJFQUQpKSkgewoKYW5kIGFzIGEgZmFsbGJhY2sg
Zm9yIHRoYXQsIGl0IGFkZHMgdGhlIGZpbGUgdG8gYSBsb2NrLWxlc3MgZGVsYXllZF9mcHV0X2xp
c3Qgd2hpY2ggaXMgcHJvY2Vzc2VkIGJ5IGEgd29ya3F1ZXVlLgoKCi0tIApFYXJ0aGxpbmcgTWlj
aGVsIETDpG56ZXIgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgaHR0cHM6Ly9yZWRoYXQu
Y29tCkxpYnJlIHNvZnR3YXJlIGVudGh1c2lhc3QgICAgICAgICAgICAgfCAgICAgICAgICAgICBN
ZXNhIGFuZCBYIGRldmVsb3BlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
