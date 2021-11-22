Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C294590F7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Nov 2021 16:09:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D53B4622B0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Nov 2021 15:09:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C19F662167; Mon, 22 Nov 2021 15:09:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F18160C6A;
	Mon, 22 Nov 2021 15:09:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2061C60714
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Nov 2021 15:09:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1217060B91; Mon, 22 Nov 2021 15:09:04 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
 by lists.linaro.org (Postfix) with ESMTPS id 0A8B960714
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Nov 2021 15:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de; 
 s=default2002;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID;
 bh=etu9YMUmHzasU+XwW6nQHDIBMOGhRRs59fj7iJUc9rc=; b=BaYq3aYuoIk4qqZ+qqsEQI9UhP
 yNAe+Ow0sjoJju5JZCniJxYrzgjWpDxiKUuZTsyi7sDf2jebsnClCedL5TwZiVvzKn+XZid0LNGgd
 6It9is0Knf5c1ICKsmTFY+0a5SzKCa9Rt8J59YmtnS6lf4DxVU/ic2P/kMydblHHB+ObL+tL0xS5T
 ksJdPeYH0S/foXcRZLFW2CkZnjISf4pOduWchnORKLDJfswYAumHZKcdQHtTzTATu33FyfLtSE8cz
 pua3iqlKCZJ5tvqQJpyUShFcu9z7G2kzpomyyiYu+NRq7XfVWa8UfOHb6wDzSHyFkWdtQL6aVN0bj
 +zCeVV5g==;
Received: from sslproxy01.your-server.de ([78.46.139.224])
 by www381.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <lars@metafoo.de>)
 id 1mpAw8-000Bss-C6; Mon, 22 Nov 2021 16:08:52 +0100
Received: from [82.135.83.112] (helo=[192.168.178.20])
 by sslproxy01.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <lars@metafoo.de>)
 id 1mpAw8-000Btg-2M; Mon, 22 Nov 2021 16:08:52 +0100
To: Paul Cercueil <paul@crapouillou.net>
References: <20211115141925.60164-1-paul@crapouillou.net>
 <20211115141925.60164-2-paul@crapouillou.net>
 <e2689f0d-dc16-2519-57df-d98caadb07b0@metafoo.de>
 <0COX2R.BSNX3NW8N48T@crapouillou.net>
 <332d001d-8b5a-bba2-c490-ed2e5efd0b1d@metafoo.de>
 <AMUX2R.XLGW1EZOMU9B2@crapouillou.net>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <d542865e-2a0b-089f-e63c-b24d16c58ec6@metafoo.de>
Date: Mon, 22 Nov 2021 16:08:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <AMUX2R.XLGW1EZOMU9B2@crapouillou.net>
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

T24gMTEvMjEvMjEgOTowOCBQTSwgUGF1bCBDZXJjdWVpbCB3cm90ZToKPgo+Cj4gTGUgZGltLiwg
bm92LiAyMSAyMDIxIGF0IDE5OjQ5OjAzICswMTAwLCBMYXJzLVBldGVyIENsYXVzZW4gCj4gPGxh
cnNAbWV0YWZvby5kZT4gYSDDqWNyaXQgOgo+PiBPbiAxMS8yMS8yMSA2OjUyIFBNLCBQYXVsIENl
cmN1ZWlsIHdyb3RlOgo+Pj4gSGkgTGFycywKPj4+Cj4+PiBMZSBkaW0uLCBub3YuIDIxIDIwMjEg
YXQgMTc6MjM6MzUgKzAxMDAsIExhcnMtUGV0ZXIgQ2xhdXNlbiAKPj4+IH88bGFyc0BtZXRhZm9v
LmRlPiBhIMOpY3JpdCA6Cj4+Pj4gT24gMTEvMTUvMjEgMzoxOSBQTSwgUGF1bCBDZXJjdWVpbCB3
cm90ZToKPj4+Pj4gVGhlIGJ1ZmZlci1kbWEgY29kZSB3YXMgdXNpbmcgdHdvIHF1ZXVlcywgaW5j
b21pbmcgYW5kIG91dGdvaW5nLCB0bwo+Pj4+PiBtYW5hZ2UgdGhlIHN0YXRlIG9mIHRoZSBibG9j
a3MgaW4gdXNlLgo+Pj4+Pgo+Pj4+PiBXaGlsZSB0aGlzIHRvdGFsbHkgd29ya3MsIGl0IGFkZHMg
c29tZSBjb21wbGV4aXR5IHRvIHRoZSBjb2RlLAo+Pj4+PiBlc3BlY2lhbGx5IHNpbmNlIHRoZSBj
b2RlIG9ubHkgbWFuYWdlcyAyIGJsb2Nrcy4gSXQgaXMgbXVjaCBlYXNpZXIgdG8KPj4+Pj4ganVz
dCBjaGVjayBlYWNoIGJsb2NrJ3Mgc3RhdGUgbWFudWFsbHksIGFuZCBrZWVwIGEgY291bnRlciBm
b3IgdGhlIAo+Pj4+PiBuZXh0Cj4+Pj4+IGJsb2NrIHRvIGRlcXVldWUuCj4+Pj4+Cj4+Pj4+IFNp
bmNlIHRoZSBuZXcgRE1BQlVGIGJhc2VkIEFQSSB3b3VsZG4ndCB1c2UgdGhlc2UgaW5jb21pbmcg
YW5kIAo+Pj4+PiBvdXRnb2luZwo+Pj4+PiBxdWV1ZXMgYW55d2F5LCBnZXR0aW5nIHJpZCBvZiB0
aGVtIG5vdyBtYWtlcyB0aGUgdXBjb21pbmcgY2hhbmdlcwo+Pj4+PiBzaW1wbGVyLgo+Pj4+Pgo+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4K
Pj4+PiBUaGUgb3V0Z29pbmcgcXVldWUgaXMgZ29pbmcgdG8gYmUgcmVwbGFjZWQgYnkgZmVuY2Vz
LCBidXQgSSB0aGluayAKPj4+PiB3ZSB/f25lZWQgdG8ga2VlcCB0aGUgaW5jb21pbmcgcXVldWUu
Cj4+Pgo+Pj4gQmxvY2tzIGFyZSBhbHdheXMgYWNjZXNzZWQgaW4gc2VxdWVudGlhbCBvcmRlciwg
c28gd2Ugbm93IGhhdmUgYSAKPj4+IH8icXVldWUtPm5leHRfZGVxdWV1ZSIgdGhhdCBjeWNsZXMg
YmV0d2VlbiB0aGUgYnVmZmVycyBhbGxvY2F0ZWQgZm9yIAo+Pj4gf2ZpbGVpby4KPj4+Cj4+Pj4+
IFsuLi5dCj4+Pj4+IEBAIC00NDIsMjggKzQzNSwzMyBAQCBFWFBPUlRfU1lNQk9MX0dQTChpaW9f
ZG1hX2J1ZmZlcl9kaXNhYmxlKTsKPj4+Pj4gwqAgc3RhdGljIHZvaWQgaWlvX2RtYV9idWZmZXJf
ZW5xdWV1ZShzdHJ1Y3QgaWlvX2RtYV9idWZmZXJfcXVldWUgCj4+Pj4+IH9/fypxdWV1ZSwKPj4+
Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaWlvX2RtYV9idWZmZXJfYmxvY2sgKmJsb2NrKQo+Pj4+PiDC
oCB7Cj4+Pj4+IC3CoMKgwqAgaWYgKGJsb2NrLT5zdGF0ZSA9PSBJSU9fQkxPQ0tfU1RBVEVfREVB
RCkgewo+Pj4+PiArwqDCoMKgIGlmIChibG9jay0+c3RhdGUgPT0gSUlPX0JMT0NLX1NUQVRFX0RF
QUQpCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpaW9fYnVmZmVyX2Jsb2NrX3B1dChibG9jayk7
Cj4+Pj4+IC3CoMKgwqAgfSBlbHNlIGlmIChxdWV1ZS0+YWN0aXZlKSB7Cj4+Pj4+ICvCoMKgwqAg
ZWxzZSBpZiAocXVldWUtPmFjdGl2ZSkKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlpb19kbWFf
YnVmZmVyX3N1Ym1pdF9ibG9jayhxdWV1ZSwgYmxvY2spOwo+Pj4+PiAtwqDCoMKgIH0gZWxzZSB7
Cj4+Pj4+ICvCoMKgwqAgZWxzZQo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgYmxvY2stPnN0YXRl
ID0gSUlPX0JMT0NLX1NUQVRFX1FVRVVFRDsKPj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGxpc3RfYWRk
X3RhaWwoJmJsb2NrLT5oZWFkLCAmcXVldWUtPmluY29taW5nKTsKPj4+PiBJZiBpaW9fZG1hX2J1
ZmZlcl9lbnF1ZXVlKCkgaXMgY2FsbGVkIHdpdGggYSBkbWFidWYgYW5kIHRoZSBidWZmZXIgCj4+
Pj4gaXMgf39ub3QgYWN0aXZlLCBpdCB3aWxsIGJlIG1hcmtlZCBhcyBxdWV1ZWQsIGJ1dCB3ZSBk
b24ndCBhY3R1YWxseSAKPj4+PiBrZWVwIGEgf39yZWZlcmVuY2UgdG8gaXQgYW55d2hlcmUuIEl0
IHdpbGwgbmV2ZXIgYmUgc3VibWl0dGVkIHRvIAo+Pj4+IHRoZSBETUEsIGFuZCB/f2l0IHdpbGwg
bmV2ZXIgYmUgc2lnbmFsZWQgYXMgY29tcGxldGVkLgo+Pj4KPj4+IFdlIGRvIGtlZXAgYSByZWZl
cmVuY2UgdG8gdGhlIGJ1ZmZlcnMsIGluIHRoZSBxdWV1ZS0+ZmlsZWlvLmJsb2NrcyAKPj4+IH9h
cnJheS4gV2hlbiB0aGUgYnVmZmVyIGlzIGVuYWJsZWQsIGFsbCB0aGUgYmxvY2tzIGluIHRoYXQg
YXJyYXkgCj4+PiB0aGF0IH9hcmUgaW4gdGhlICJxdWV1ZWQiIHN0YXRlIHdpbGwgYmUgc3VibWl0
dGVkIHRvIHRoZSBETUEuCj4+Pgo+PiBCdXQgbm90IHdoZW4gdXNlZCBpbiBjb21iaW5hdGlvbiB3
aXRoIHRoZSBETUEgYnVmIGNoYW5nZXMgbGF0ZXIgaW4gCj4+IHRoaXMgc2VyaWVzLgo+Pgo+Cj4g
VGhhdCdzIHN0aWxsIHRoZSBjYXNlIGFmdGVyIHRoZSBETUFCVUYgY2hhbmdlcyBvZiB0aGUgc2Vy
aWVzLiBPciBjYW4gCj4geW91IHBvaW50IG1lIGV4YWN0bHkgd2hhdCB5b3UgdGhpbmsgaXMgYnJv
a2VuPwo+CldoZW4geW91IGFsbG9jYXRlIGEgRE1BQlVGIHdpdGggdGhlIGFsbG9jYXRlIElPQ1RM
IGFuZCB0aGVuIHN1Ym1pdCBpdCAKd2l0aCB0aGUgZW5xdWV1ZSBJT0NUTCBiZWZvcmUgdGhlIGJ1
ZmZlciBpcyBlbmFibGVkIGl0IHdpbGwgZW5kIHVwIAptYXJrZWQgYXMgcXVldWVkLCBidXQgbm90
IGFjdHVhbGx5IGJlIHF1ZXVlZCBhbnl3aGVyZS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
