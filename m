Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D1E45912D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Nov 2021 16:18:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DF7462173
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Nov 2021 15:18:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2F3856216D; Mon, 22 Nov 2021 15:18:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA1FD60C6A;
	Mon, 22 Nov 2021 15:18:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2938F60714
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Nov 2021 15:18:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 26ADC60C6A; Mon, 22 Nov 2021 15:18:08 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
 by lists.linaro.org (Postfix) with ESMTPS id 20FC960714
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Nov 2021 15:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de; 
 s=default2002;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID;
 bh=Iz+FdhE+Nx+yB4wSTd3tzB2Vssfh3TskimAiedhv9NI=; b=gD4ezFIG8QLfTiha4MQJeryemC
 L+CDG/3AxR+Jz0IkxVKFTfRnhQK4wjK6OjQL+ge9f9D8Cy2F/F4ZrHU73gnkpTWpFMhW51P1W+Igt
 EPipxqpLphrl5GCtr9BzC5tMklv9sWl+x/Q8H5mxc9WkqZ27j0E3q4pEQijAx9WZmyD1PyiVoyHGQ
 HIVOVt+JDKWPlCb4/KVSDyyzN8buGG+U9WNJ9XdyAMVr97nKNd/q0L/XVCzB1LIBM7Jn6rZLtBrQO
 Y7EcXkiT4+J2sfXvFTm+kBP1PNhL5xKHxpw5LzsX1Tk6YCqXufqyMrguWuGGOSdJTsiehGUlfI0KV
 al+SOU+A==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
 by www381.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <lars@metafoo.de>)
 id 1mpB4y-000E7R-0A; Mon, 22 Nov 2021 16:18:00 +0100
Received: from [82.135.83.112] (helo=[192.168.178.20])
 by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <lars@metafoo.de>)
 id 1mpB4x-0006A2-NY; Mon, 22 Nov 2021 16:17:59 +0100
To: Paul Cercueil <paul@crapouillou.net>
References: <20211115141925.60164-1-paul@crapouillou.net>
 <20211115141925.60164-2-paul@crapouillou.net>
 <e2689f0d-dc16-2519-57df-d98caadb07b0@metafoo.de>
 <0COX2R.BSNX3NW8N48T@crapouillou.net>
 <332d001d-8b5a-bba2-c490-ed2e5efd0b1d@metafoo.de>
 <AMUX2R.XLGW1EZOMU9B2@crapouillou.net>
 <d542865e-2a0b-089f-e63c-b24d16c58ec6@metafoo.de>
 <UQBZ2R.HLXHH4QWJ0JS1@crapouillou.net>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <a5a9a07c-5e71-196f-da48-aa424c7001b0@metafoo.de>
Date: Mon, 22 Nov 2021 16:17:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <UQBZ2R.HLXHH4QWJ0JS1@crapouillou.net>
Content-Language: en-US
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.103.3/26361/Mon Nov 22 10:19:53 2021)
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/15] iio: buffer-dma: Get rid of
 incoming/outgoing queues
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
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Alexandru Ardelean <ardeleanalex@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMTEvMjIvMjEgNDoxNiBQTSwgUGF1bCBDZXJjdWVpbCB3cm90ZToKPiBIaSBMYXJzLAo+Cj4g
TGUgbHVuLiwgbm92LiAyMiAyMDIxIGF0IDE2OjA4OjUxICswMTAwLCBMYXJzLVBldGVyIENsYXVz
ZW4gCj4gPGxhcnNAbWV0YWZvby5kZT4gYSDDqWNyaXQgOgo+PiBPbiAxMS8yMS8yMSA5OjA4IFBN
LCBQYXVsIENlcmN1ZWlsIHdyb3RlOgo+Pj4KPj4+Cj4+PiBMZSBkaW0uLCBub3YuIDIxIDIwMjEg
YXQgMTk6NDk6MDMgKzAxMDAsIExhcnMtUGV0ZXIgQ2xhdXNlbiAKPj4+IH88bGFyc0BtZXRhZm9v
LmRlPiBhIMOpY3JpdCA6Cj4+Pj4gT24gMTEvMjEvMjEgNjo1MiBQTSwgUGF1bCBDZXJjdWVpbCB3
cm90ZToKPj4+Pj4gSGkgTGFycywKPj4+Pj4KPj4+Pj4gTGUgZGltLiwgbm92LiAyMSAyMDIxIGF0
IDE3OjIzOjM1ICswMTAwLCBMYXJzLVBldGVyIENsYXVzZW4gCj4+Pj4+IH9/f388bGFyc0BtZXRh
Zm9vLmRlPiBhIMOpY3JpdCA6Cj4+Pj4+PiBPbiAxMS8xNS8yMSAzOjE5IFBNLCBQYXVsIENlcmN1
ZWlsIHdyb3RlOgo+Pj4+Pj4+IFRoZSBidWZmZXItZG1hIGNvZGUgd2FzIHVzaW5nIHR3byBxdWV1
ZXMsIGluY29taW5nIGFuZCBvdXRnb2luZywgdG8KPj4+Pj4+PiBtYW5hZ2UgdGhlIHN0YXRlIG9m
IHRoZSBibG9ja3MgaW4gdXNlLgo+Pj4+Pj4+Cj4+Pj4+Pj4gV2hpbGUgdGhpcyB0b3RhbGx5IHdv
cmtzLCBpdCBhZGRzIHNvbWUgY29tcGxleGl0eSB0byB0aGUgY29kZSwKPj4+Pj4+PiBlc3BlY2lh
bGx5IHNpbmNlIHRoZSBjb2RlIG9ubHkgbWFuYWdlcyAyIGJsb2Nrcy4gSXQgaXMgbXVjaCAKPj4+
Pj4+PiBlYXNpZXIgdG8KPj4+Pj4+PiBqdXN0IGNoZWNrIGVhY2ggYmxvY2sncyBzdGF0ZSBtYW51
YWxseSwgYW5kIGtlZXAgYSBjb3VudGVyIGZvciAKPj4+Pj4+PiB0aGUgf39/f39uZXh0Cj4+Pj4+
Pj4gYmxvY2sgdG8gZGVxdWV1ZS4KPj4+Pj4+Pgo+Pj4+Pj4+IFNpbmNlIHRoZSBuZXcgRE1BQlVG
IGJhc2VkIEFQSSB3b3VsZG4ndCB1c2UgdGhlc2UgaW5jb21pbmcgYW5kIAo+Pj4+Pj4+IH9/f39/
b3V0Z29pbmcKPj4+Pj4+PiBxdWV1ZXMgYW55d2F5LCBnZXR0aW5nIHJpZCBvZiB0aGVtIG5vdyBt
YWtlcyB0aGUgdXBjb21pbmcgY2hhbmdlcwo+Pj4+Pj4+IHNpbXBsZXIuCj4+Pj4+Pj4KPj4+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4KPj4+
Pj4+IFRoZSBvdXRnb2luZyBxdWV1ZSBpcyBnb2luZyB0byBiZSByZXBsYWNlZCBieSBmZW5jZXMs
IGJ1dCBJIHRoaW5rIAo+Pj4+Pj4gf39/f3dlIH9/bmVlZCB0byBrZWVwIHRoZSBpbmNvbWluZyBx
dWV1ZS4KPj4+Pj4KPj4+Pj4gQmxvY2tzIGFyZSBhbHdheXMgYWNjZXNzZWQgaW4gc2VxdWVudGlh
bCBvcmRlciwgc28gd2Ugbm93IGhhdmUgYSAKPj4+Pj4gf39/fyJxdWV1ZS0+bmV4dF9kZXF1ZXVl
IiB0aGF0IGN5Y2xlcyBiZXR3ZWVuIHRoZSBidWZmZXJzIAo+Pj4+PiBhbGxvY2F0ZWQgZm9yIH9/
f39maWxlaW8uCj4+Pj4+Cj4+Pj4+Pj4gWy4uLl0KPj4+Pj4+PiBAQCAtNDQyLDI4ICs0MzUsMzMg
QEAgRVhQT1JUX1NZTUJPTF9HUEwoaWlvX2RtYV9idWZmZXJfZGlzYWJsZSk7Cj4+Pj4+Pj4gwqAg
c3RhdGljIHZvaWQgaWlvX2RtYV9idWZmZXJfZW5xdWV1ZShzdHJ1Y3QgaWlvX2RtYV9idWZmZXJf
cXVldWUgCj4+Pj4+Pj4gf39/f39/f38qcXVldWUsCj4+Pj4+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3Qg
aWlvX2RtYV9idWZmZXJfYmxvY2sgKmJsb2NrKQo+Pj4+Pj4+IMKgIHsKPj4+Pj4+PiAtwqDCoMKg
IGlmIChibG9jay0+c3RhdGUgPT0gSUlPX0JMT0NLX1NUQVRFX0RFQUQpIHsKPj4+Pj4+PiArwqDC
oMKgIGlmIChibG9jay0+c3RhdGUgPT0gSUlPX0JMT0NLX1NUQVRFX0RFQUQpCj4+Pj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgIGlpb19idWZmZXJfYmxvY2tfcHV0KGJsb2NrKTsKPj4+Pj4+PiAtwqDC
oMKgIH0gZWxzZSBpZiAocXVldWUtPmFjdGl2ZSkgewo+Pj4+Pj4+ICvCoMKgwqAgZWxzZSBpZiAo
cXVldWUtPmFjdGl2ZSkKPj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWlvX2RtYV9idWZmZXJf
c3VibWl0X2Jsb2NrKHF1ZXVlLCBibG9jayk7Cj4+Pj4+Pj4gLcKgwqDCoCB9IGVsc2Ugewo+Pj4+
Pj4+ICvCoMKgwqAgZWxzZQo+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBibG9jay0+c3RhdGUg
PSBJSU9fQkxPQ0tfU1RBVEVfUVVFVUVEOwo+Pj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCBsaXN0X2Fk
ZF90YWlsKCZibG9jay0+aGVhZCwgJnF1ZXVlLT5pbmNvbWluZyk7Cj4+Pj4+PiBJZiBpaW9fZG1h
X2J1ZmZlcl9lbnF1ZXVlKCkgaXMgY2FsbGVkIHdpdGggYSBkbWFidWYgYW5kIHRoZSAKPj4+Pj4+
IGJ1ZmZlciB/f39/aXMgf39ub3QgYWN0aXZlLCBpdCB3aWxsIGJlIG1hcmtlZCBhcyBxdWV1ZWQs
IGJ1dCB3ZSAKPj4+Pj4+IGRvbid0IGFjdHVhbGx5IH9/f39rZWVwIGEgf39yZWZlcmVuY2UgdG8g
aXQgYW55d2hlcmUuIEl0IHdpbGwgCj4+Pj4+PiBuZXZlciBiZSBzdWJtaXR0ZWQgdG8gf39/f3Ro
ZSBETUEsIGFuZCB/f2l0IHdpbGwgbmV2ZXIgYmUgCj4+Pj4+PiBzaWduYWxlZCBhcyBjb21wbGV0
ZWQuCj4+Pj4+Cj4+Pj4+IFdlIGRvIGtlZXAgYSByZWZlcmVuY2UgdG8gdGhlIGJ1ZmZlcnMsIGlu
IHRoZSBxdWV1ZS0+ZmlsZWlvLmJsb2NrcyAKPj4+Pj4gf39/f2FycmF5LiBXaGVuIHRoZSBidWZm
ZXIgaXMgZW5hYmxlZCwgYWxsIHRoZSBibG9ja3MgaW4gdGhhdCAKPj4+Pj4gYXJyYXkgf39/dGhh
dCB/YXJlIGluIHRoZSAicXVldWVkIiBzdGF0ZSB3aWxsIGJlIHN1Ym1pdHRlZCB0byB0aGUgCj4+
Pj4+IERNQS4KPj4+Pj4KPj4+PiBCdXQgbm90IHdoZW4gdXNlZCBpbiBjb21iaW5hdGlvbiB3aXRo
IHRoZSBETUEgYnVmIGNoYW5nZXMgbGF0ZXIgaW4gCj4+Pj4gf390aGlzIHNlcmllcy4KPj4+Pgo+
Pj4KPj4+IFRoYXQncyBzdGlsbCB0aGUgY2FzZSBhZnRlciB0aGUgRE1BQlVGIGNoYW5nZXMgb2Yg
dGhlIHNlcmllcy4gT3IgY2FuIAo+Pj4gf3lvdSBwb2ludCBtZSBleGFjdGx5IHdoYXQgeW91IHRo
aW5rIGlzIGJyb2tlbj8KPj4+Cj4+IFdoZW4geW91IGFsbG9jYXRlIGEgRE1BQlVGIHdpdGggdGhl
IGFsbG9jYXRlIElPQ1RMIGFuZCB0aGVuIHN1Ym1pdCBpdCAKPj4gd2l0aCB0aGUgZW5xdWV1ZSBJ
T0NUTCBiZWZvcmUgdGhlIGJ1ZmZlciBpcyBlbmFibGVkIGl0IHdpbGwgZW5kIHVwIAo+PiBtYXJr
ZWQgYXMgcXVldWVkLCBidXQgbm90IGFjdHVhbGx5IGJlIHF1ZXVlZCBhbnl3aGVyZS4KPj4KPgo+
IE9rLCBpdCB3b3JrcyBmb3IgbWUgYmVjYXVzZSBJIG5ldmVyIGVucXVldWUgYmxvY2tzIGJlZm9y
ZSBlbmFibGluZyB0aGUgCj4gYnVmZmVyLiBJIGNhbiBhZGQgYSByZXF1aXJlbWVudCB0aGF0IGJs
b2NrcyBtdXN0IGJlIGVucXVldWVkIG9ubHkgCj4gYWZ0ZXIgdGhlIGJ1ZmZlciBpcyBlbmFibGVk
LgoKSSBkb24ndCB0aGluayB0aGF0IGlzIGEgZ29vZCBpZGVhLiBUaGlzIHdheSB5b3UgYXJlIGdv
aW5nIHRvIHBvdGVudGlhbGx5IApkcm9wIGRhdGEgYXQgdGhlIGJlZ2luaW5nIG9mIHlvdXIgc3Ry
ZWFtIHdoZW4gdGhlIERNQSBpc24ndCByZWFkeSB5ZXQuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
