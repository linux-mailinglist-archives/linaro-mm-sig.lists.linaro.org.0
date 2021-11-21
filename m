Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 696B74585FC
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Nov 2021 19:49:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83F2761C3D
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Nov 2021 18:49:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 73BB7620D9; Sun, 21 Nov 2021 18:49:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E431261A3F;
	Sun, 21 Nov 2021 18:49:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 53ECB60BD4
 for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Nov 2021 18:49:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 488A561A3F; Sun, 21 Nov 2021 18:49:14 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
 by lists.linaro.org (Postfix) with ESMTPS id 4071C60BD4
 for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Nov 2021 18:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de; 
 s=default2002;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID;
 bh=/h9j2JDuTj2d8830SLDJcdaobewaUQwnY1GZuvNRZyY=; b=lmDJ5a6k00Cf69H5Fck+3FdweN
 URDsuJzv/thoCS37//i1cRKTR2PObz9ZJwiSH1wbxb6fpi5hjzV6y7aQzoMvVKNCOCpnsfbBHhRfR
 fsA+VPzqJajbeXXvtQ0xoFGH7joUK7SNnX6DuK6GsSWmAmVJ1gMb8bd4FVzUl7bOyHV+0yEN4Jls/
 JKCRCyTUCuoQMgKbjzTGqpReb1Vj1S+E/gjTcqS22k56QYPEASSWfK1hjDIL4zcoB5PKYP2ugFTbV
 Mco5BYscY/Cm9YZkTwYtM+cj2HdXNKNnniMFPsSLzSTkqgrHpDTm3hc/yU+veazQUILhG4Bj2qzvx
 CFDF2V6Q==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
 by www381.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <lars@metafoo.de>)
 id 1mortf-0001N0-W7; Sun, 21 Nov 2021 19:49:04 +0100
Received: from [82.135.83.112] (helo=[192.168.178.20])
 by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <lars@metafoo.de>)
 id 1mortf-000PXU-JM; Sun, 21 Nov 2021 19:49:03 +0100
To: Paul Cercueil <paul@crapouillou.net>
References: <20211115141925.60164-1-paul@crapouillou.net>
 <20211115141925.60164-2-paul@crapouillou.net>
 <e2689f0d-dc16-2519-57df-d98caadb07b0@metafoo.de>
 <0COX2R.BSNX3NW8N48T@crapouillou.net>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <332d001d-8b5a-bba2-c490-ed2e5efd0b1d@metafoo.de>
Date: Sun, 21 Nov 2021 19:49:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <0COX2R.BSNX3NW8N48T@crapouillou.net>
Content-Language: en-US
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.103.3/26360/Sun Nov 21 10:19:26 2021)
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

T24gMTEvMjEvMjEgNjo1MiBQTSwgUGF1bCBDZXJjdWVpbCB3cm90ZToKPiBIaSBMYXJzLAo+Cj4g
TGUgZGltLiwgbm92LiAyMSAyMDIxIGF0IDE3OjIzOjM1ICswMTAwLCBMYXJzLVBldGVyIENsYXVz
ZW4gCj4gPGxhcnNAbWV0YWZvby5kZT4gYSDDqWNyaXQgOgo+PiBPbiAxMS8xNS8yMSAzOjE5IFBN
LCBQYXVsIENlcmN1ZWlsIHdyb3RlOgo+Pj4gVGhlIGJ1ZmZlci1kbWEgY29kZSB3YXMgdXNpbmcg
dHdvIHF1ZXVlcywgaW5jb21pbmcgYW5kIG91dGdvaW5nLCB0bwo+Pj4gbWFuYWdlIHRoZSBzdGF0
ZSBvZiB0aGUgYmxvY2tzIGluIHVzZS4KPj4+Cj4+PiBXaGlsZSB0aGlzIHRvdGFsbHkgd29ya3Ms
IGl0IGFkZHMgc29tZSBjb21wbGV4aXR5IHRvIHRoZSBjb2RlLAo+Pj4gZXNwZWNpYWxseSBzaW5j
ZSB0aGUgY29kZSBvbmx5IG1hbmFnZXMgMiBibG9ja3MuIEl0IGlzIG11Y2ggZWFzaWVyIHRvCj4+
PiBqdXN0IGNoZWNrIGVhY2ggYmxvY2sncyBzdGF0ZSBtYW51YWxseSwgYW5kIGtlZXAgYSBjb3Vu
dGVyIGZvciB0aGUgbmV4dAo+Pj4gYmxvY2sgdG8gZGVxdWV1ZS4KPj4+Cj4+PiBTaW5jZSB0aGUg
bmV3IERNQUJVRiBiYXNlZCBBUEkgd291bGRuJ3QgdXNlIHRoZXNlIGluY29taW5nIGFuZCBvdXRn
b2luZwo+Pj4gcXVldWVzIGFueXdheSwgZ2V0dGluZyByaWQgb2YgdGhlbSBub3cgbWFrZXMgdGhl
IHVwY29taW5nIGNoYW5nZXMKPj4+IHNpbXBsZXIuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogUGF1
bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+Cj4+IFRoZSBvdXRnb2luZyBxdWV1ZSBp
cyBnb2luZyB0byBiZSByZXBsYWNlZCBieSBmZW5jZXMsIGJ1dCBJIHRoaW5rIHdlIAo+PiBuZWVk
IHRvIGtlZXAgdGhlIGluY29taW5nIHF1ZXVlLgo+Cj4gQmxvY2tzIGFyZSBhbHdheXMgYWNjZXNz
ZWQgaW4gc2VxdWVudGlhbCBvcmRlciwgc28gd2Ugbm93IGhhdmUgYSAKPiAicXVldWUtPm5leHRf
ZGVxdWV1ZSIgdGhhdCBjeWNsZXMgYmV0d2VlbiB0aGUgYnVmZmVycyBhbGxvY2F0ZWQgZm9yIAo+
IGZpbGVpby4KPgo+Pj4gWy4uLl0KPj4+IEBAIC00NDIsMjggKzQzNSwzMyBAQCBFWFBPUlRfU1lN
Qk9MX0dQTChpaW9fZG1hX2J1ZmZlcl9kaXNhYmxlKTsKPj4+IMKgIHN0YXRpYyB2b2lkIGlpb19k
bWFfYnVmZmVyX2VucXVldWUoc3RydWN0IGlpb19kbWFfYnVmZmVyX3F1ZXVlIAo+Pj4gKnF1ZXVl
LAo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaWlvX2RtYV9idWZmZXJfYmxvY2sgKmJsb2NrKQo+Pj4g
wqAgewo+Pj4gLcKgwqDCoCBpZiAoYmxvY2stPnN0YXRlID09IElJT19CTE9DS19TVEFURV9ERUFE
KSB7Cj4+PiArwqDCoMKgIGlmIChibG9jay0+c3RhdGUgPT0gSUlPX0JMT0NLX1NUQVRFX0RFQUQp
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWlvX2J1ZmZlcl9ibG9ja19wdXQoYmxvY2spOwo+Pj4g
LcKgwqDCoCB9IGVsc2UgaWYgKHF1ZXVlLT5hY3RpdmUpIHsKPj4+ICvCoMKgwqAgZWxzZSBpZiAo
cXVldWUtPmFjdGl2ZSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpaW9fZG1hX2J1ZmZlcl9zdWJt
aXRfYmxvY2socXVldWUsIGJsb2NrKTsKPj4+IC3CoMKgwqAgfSBlbHNlIHsKPj4+ICvCoMKgwqAg
ZWxzZQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGJsb2NrLT5zdGF0ZSA9IElJT19CTE9DS19TVEFU
RV9RVUVVRUQ7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgbGlzdF9hZGRfdGFpbCgmYmxvY2stPmhlYWQs
ICZxdWV1ZS0+aW5jb21pbmcpOwo+PiBJZiBpaW9fZG1hX2J1ZmZlcl9lbnF1ZXVlKCkgaXMgY2Fs
bGVkIHdpdGggYSBkbWFidWYgYW5kIHRoZSBidWZmZXIgaXMgCj4+IG5vdCBhY3RpdmUsIGl0IHdp
bGwgYmUgbWFya2VkIGFzIHF1ZXVlZCwgYnV0IHdlIGRvbid0IGFjdHVhbGx5IGtlZXAgYSAKPj4g
cmVmZXJlbmNlIHRvIGl0IGFueXdoZXJlLiBJdCB3aWxsIG5ldmVyIGJlIHN1Ym1pdHRlZCB0byB0
aGUgRE1BLCBhbmQgCj4+IGl0IHdpbGwgbmV2ZXIgYmUgc2lnbmFsZWQgYXMgY29tcGxldGVkLgo+
Cj4gV2UgZG8ga2VlcCBhIHJlZmVyZW5jZSB0byB0aGUgYnVmZmVycywgaW4gdGhlIHF1ZXVlLT5m
aWxlaW8uYmxvY2tzIAo+IGFycmF5LiBXaGVuIHRoZSBidWZmZXIgaXMgZW5hYmxlZCwgYWxsIHRo
ZSBibG9ja3MgaW4gdGhhdCBhcnJheSB0aGF0IAo+IGFyZSBpbiB0aGUgInF1ZXVlZCIgc3RhdGUg
d2lsbCBiZSBzdWJtaXR0ZWQgdG8gdGhlIERNQS4KPgpCdXQgbm90IHdoZW4gdXNlZCBpbiBjb21i
aW5hdGlvbiB3aXRoIHRoZSBETUEgYnVmIGNoYW5nZXMgbGF0ZXIgaW4gdGhpcyAKc2VyaWVzLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
