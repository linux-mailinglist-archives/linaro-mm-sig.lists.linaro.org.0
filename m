Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3874443E0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Nov 2021 15:51:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C965F60A71
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Nov 2021 14:51:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ADD0560ACA; Wed,  3 Nov 2021 14:51:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50F3F603A5;
	Wed,  3 Nov 2021 14:51:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E897C60244
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Nov 2021 14:50:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E65A9603A5; Wed,  3 Nov 2021 14:50:57 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id AC06F60244
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Nov 2021 14:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id EA636202037;
 Wed,  3 Nov 2021 15:50:54 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id n_YKq6VrpC2F; Wed,  3 Nov 2021 15:50:54 +0100 (CET)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id 4F7D9202033;
 Wed,  3 Nov 2021 15:50:54 +0100 (CET)
Received: from [127.0.0.1] by thor with esmtp (Exim 4.95)
 (envelope-from <michel@daenzer.net>) id 1miHbJ-000sW6-DO;
 Wed, 03 Nov 2021 15:50:53 +0100
Message-ID: <20cfea36-a8cc-7bd1-9604-57efdf4710e2@daenzer.net>
Date: Wed, 3 Nov 2021 15:50:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-CA
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210723075857.4065-1-michel@daenzer.net>
 <f5f37693-bfe2-e52f-172b-00f4aa94dbd9@amd.com>
 <4cf94f59-f953-f5d7-9901-cfe5fd63bfbc@daenzer.net>
 <884050b3-5e7d-c00b-5467-290cfc57e0ea@gmail.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
In-Reply-To: <884050b3-5e7d-c00b-5467-290cfc57e0ea@gmail.com>
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

T24gMjAyMS0wNy0yMyAxMDoyMiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAyMy4wNy4y
MSB1bSAxMDoxOSBzY2hyaWViIE1pY2hlbCBEw6RuemVyOgo+PiBPbiAyMDIxLTA3LTIzIDEwOjA0
IGEubS4sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBBbSAyMy4wNy4yMSB1bSAwOTo1OCBz
Y2hyaWViIE1pY2hlbCBEw6RuemVyOgo+Pj4+IEZyb206IE1pY2hlbCBEw6RuemVyIDxtZGFlbnpl
ckByZWRoYXQuY29tPgo+Pj4+Cj4+Pj4gVGhpcyBtYWtlcyBzdXJlIHdlIGRvbid0IGhpdCB0aGUK
Pj4+Pgo+Pj4+IMKgwqDCoMKgwqBCVUdfT04oZG1hYnVmLT5jYl9pbi5hY3RpdmUgfHwgZG1hYnVm
LT5jYl9vdXQuYWN0aXZlKTsKPj4+Pgo+Pj4+IGluIGRtYV9idWZfcmVsZWFzZSwgd2hpY2ggY291
bGQgYmUgdHJpZ2dlcmVkIGJ5IHVzZXIgc3BhY2UgY2xvc2luZyB0aGUKPj4+PiBkbWEtYnVmIGZp
bGUgZGVzY3JpcHRpb24gd2hpbGUgdGhlcmUgYXJlIG91dHN0YW5kaW5nIGZlbmNlIGNhbGxiYWNr
cwo+Pj4+IGZyb20gZG1hX2J1Zl9wb2xsLgo+Pj4gSSB3YXMgYWxzbyB3b25kZXJpbmcgdGhlIHNh
bWUgdGhpbmcgd2hpbGUgd29ya2luZyBvbiB0aGlzLCBidXQgdGhlbiB0aG91Z2h0IHRoYXQgdGhl
IHBvbGwgaW50ZXJmYWNlIHdvdWxkIHRha2UgY2FyZSBvZiB0aGlzLgo+PiBJIHdhcyBhYmxlIHRv
IGhpdCB0aGUgQlVHX09OIHdpdGggaHR0cHM6Ly9naXRsYWIuZ25vbWUub3JnL0dOT01FL211dHRl
ci8tL21lcmdlX3JlcXVlc3RzLzE4ODAgLgo+Pgo+Pgo+Pj4+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnCj4+Pj4gU2lnbmVkLW9mZi1ieTogTWljaGVsIETDpG56ZXIgPG1kYWVuemVyQHJlZGhh
dC5jb20+Cj4+Pj4gLS0tCj4+Pj4gwqDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTgg
KysrKysrKysrKysrLS0tLS0tCj4+Pj4gwqDCoCAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+Pj4+IGluZGV4IDZjNTIw
YzliZDkzYy4uZWMyNTQ5OGE5NzFmIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMKPj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4+Pj4gQEAgLTY1
LDEyICs2NSw5IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZGVudHJ5ICpk
ZW50cnkpCj4+Pj4gwqDCoMKgwqDCoMKgIEJVR19PTihkbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIp
Owo+Pj4+IMKgwqAgwqDCoMKgwqDCoCAvKgo+Pj4+IC3CoMKgwqDCoCAqIEFueSBmZW5jZXMgdGhh
dCBhIGRtYS1idWYgcG9sbCBjYW4gd2FpdCBvbiBzaG91bGQgYmUgc2lnbmFsZWQKPj4+PiAtwqDC
oMKgwqAgKiBiZWZvcmUgcmVsZWFzaW5nIGRtYS1idWYuIFRoaXMgaXMgdGhlIHJlc3BvbnNpYmls
aXR5IG9mIGVhY2gKPj4+PiAtwqDCoMKgwqAgKiBkcml2ZXIgdGhhdCB1c2VzIHRoZSByZXNlcnZh
dGlvbiBvYmplY3RzLgo+Pj4+IC3CoMKgwqDCoCAqCj4+Pj4gLcKgwqDCoMKgICogSWYgeW91IGhp
dCB0aGlzIEJVRygpIGl0IG1lYW5zIHNvbWVvbmUgZHJvcHBlZCB0aGVpciByZWYgdG8gdGhlCj4+
Pj4gLcKgwqDCoMKgICogZG1hLWJ1ZiB3aGlsZSBzdGlsbCBoYXZpbmcgcGVuZGluZyBvcGVyYXRp
b24gdG8gdGhlIGJ1ZmZlci4KPj4+PiArwqDCoMKgwqAgKiBJZiB5b3UgaGl0IHRoaXMgQlVHKCkg
aXQgY291bGQgbWVhbjoKPj4+PiArwqDCoMKgwqAgKiAqIFRoZXJlJ3MgYSBmaWxlIHJlZmVyZW5j
ZSBpbWJhbGFuY2UgaW4gZG1hX2J1Zl9wb2xsIC8gZG1hX2J1Zl9wb2xsX2NiIG9yIHNvbWV3aGVy
ZSBlbHNlCj4+Pj4gK8KgwqDCoMKgICogKiBkbWFidWYtPmNiX2luL291dC5hY3RpdmUgYXJlIG5v
bi0wIGRlc3BpdGUgbm8gcGVuZGluZyBmZW5jZSBjYWxsYmFjawo+Pj4+IMKgwqDCoMKgwqDCoMKg
ICovCj4+Pj4gwqDCoMKgwqDCoMKgIEJVR19PTihkbWFidWYtPmNiX2luLmFjdGl2ZSB8fCBkbWFi
dWYtPmNiX291dC5hY3RpdmUpOwo+Pj4+IMKgwqAgQEAgLTE5Niw2ICsxOTMsNyBAQCBzdGF0aWMg
bG9mZl90IGRtYV9idWZfbGxzZWVrKHN0cnVjdCBmaWxlICpmaWxlLCBsb2ZmX3Qgb2Zmc2V0LCBp
bnQgd2hlbmNlKQo+Pj4+IMKgwqAgc3RhdGljIHZvaWQgZG1hX2J1Zl9wb2xsX2NiKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCBzdHJ1Y3QgZG1hX2ZlbmNlX2NiICpjYikKPj4+PiDCoMKgIHsKPj4+
PiDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9idWZfcG9sbF9jYl90ICpkY2IgPSAoc3RydWN0IGRt
YV9idWZfcG9sbF9jYl90ICopY2I7Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
ID0gY29udGFpbmVyX29mKGRjYi0+cG9sbCwgc3RydWN0IGRtYV9idWYsIHBvbGwpOwo+Pj4+IMKg
wqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIGZsYWdzOwo+Pj4+IMKgwqAgwqDCoMKgwqDCoCBzcGlu
X2xvY2tfaXJxc2F2ZSgmZGNiLT5wb2xsLT5sb2NrLCBmbGFncyk7Cj4+Pj4gQEAgLTIwMyw2ICsy
MDEsOCBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3BvbGxfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UsIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQo+Pj4+IMKgwqDCoMKgwqDCoCBkY2ItPmFjdGl2
ZSA9IDA7Cj4+Pj4gwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRjYi0+cG9s
bC0+bG9jaywgZmxhZ3MpOwo+Pj4+IMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KGZlbmNlKTsK
Pj4+PiArwqDCoMKgIC8qIFBhaXJlZCB3aXRoIGdldF9maWxlIGluIGRtYV9idWZfcG9sbCAqLwo+
Pj4+ICvCoMKgwqAgZnB1dChkbWFidWYtPmZpbGUpOwo+Pj4gSXMgY2FsbGluZyBmcHV0KCkgaW4g
aW50ZXJydXB0IGNvbnRleHQgb2s/IElJUkMgdGhhdCBjb3VsZCBwb3RlbnRpYWxseSBzbGVlcC4K
Pj4gTG9va3MgZmluZSBBRkFJQ1Q6IEl0IGhhcwo+Pgo+PiDCoMKgwqDCoMKgwqDCoCBpZiAobGlr
ZWx5KCFpbl9pbnRlcnJ1cHQoKSAmJiAhKHRhc2stPmZsYWdzICYgUEZfS1RIUkVBRCkpKSB7Cj4+
Cj4+IGFuZCBhcyBhIGZhbGxiYWNrIGZvciB0aGF0LCBpdCBhZGRzIHRoZSBmaWxlIHRvIGEgbG9j
ay1sZXNzIGRlbGF5ZWRfZnB1dF9saXN0IHdoaWNoIGlzIHByb2Nlc3NlZCBieSBhIHdvcmtxdWV1
ZS4KPiAKPiBBaCwgeWVzIHRoYXQgbWFrZXMgc2Vuc2UuCj4gCj4gRmVsbCBmcmVlIHRvIGFkZCBS
ZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgoK
VGhhbmtzISBBRkFJQ1QgdGhpcyBmaXggY2FuIGJlIG1lcmdlZCBub3cgZm9yIDUuMTY/CgoKLS0g
CkVhcnRobGluZyBNaWNoZWwgRMOkbnplciAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICBo
dHRwczovL3JlZGhhdC5jb20KTGlicmUgc29mdHdhcmUgZW50aHVzaWFzdCAgICAgICAgICB8ICAg
ICAgICAgTWVzYSBhbmQgWHdheWxhbmQgZGV2ZWxvcGVyCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
