Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 889702B7478
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Nov 2020 04:01:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55DB4666F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Nov 2020 03:01:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4591B666F6; Wed, 18 Nov 2020 03:01:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6C8F666ED;
	Wed, 18 Nov 2020 03:01:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 22E98666E0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 03:01:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EEDF5666ED; Wed, 18 Nov 2020 03:01:08 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id E0704666E0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 03:01:06 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id n89so385781otn.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 19:01:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3uJCOUcCa+QNGhT/ES7N0Gs1weA2TXULzhkEQY1X4Jo=;
 b=RXuBE8DTy9dnLDxRNqUZkFlDCZVZARNJ3L6NKXHHAl7TeZguK4/gKkx4poOFKToqMQ
 XCNj/uJE59ixogizNdRjJwu788JDrelHxPB7rsEShM2yJfosdUCEe9R2ie41CqpTVNyr
 AyfBklynNhvkKHufvIpwalH93R06Xlh0UVYjPxBKH/gpqjSzb3nvvw7fjmedM7F59OON
 3lj7UXtT58Wrmdu1rf+cn0m4wqVcJzvL1JFVTsPjrUV+UfzRkfS1novcolzNcW9iQ4SH
 PW3q7ezKsJg4y2Ty16hK3JMQytPzFYyJgn5Fjukpnbv1UTBbfWcG3S84Lod72I2Bh3YE
 OAfQ==
X-Gm-Message-State: AOAM532WR6GQ2m8LCL5RNjitPlOjE6nvNl4frQDfJ8wbs1OPyle1HH8U
 yOXsRYO1Hdx/mBYCTzK8xkUB5NBqZvtW2VsilYSRogd0
X-Google-Smtp-Source: ABdhPJzGGlEp/RY02FjhdSrOME5ixmXEwMqcM3Kp5XSh8B606VPzwVjQm4NMFjXTadyAYc+lrXxzVUAwYI5nu6c9VOY=
X-Received: by 2002:a05:6830:2415:: with SMTP id
 j21mr4976789ots.221.1605668466163; 
 Tue, 17 Nov 2020 19:01:06 -0800 (PST)
MIME-Version: 1.0
References: <20201117181935.3613581-1-minchan@kernel.org>
 <20201117181935.3613581-5-minchan@kernel.org>
In-Reply-To: <20201117181935.3613581-5-minchan@kernel.org>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 17 Nov 2020 19:00:54 -0800
Message-ID: <CALAqxLWqDLHpOHNEayvhDjJeXjEk_uneH2=d9fy8M87EjKfReA@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-mm <linux-mm@kvack.org>, Christian Koenig <christian.koenig@amd.com>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH 4/4] dma-heap: Devicetree binding for
	chunk heap
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBOb3YgMTcsIDIwMjAgYXQgMTA6MTkgQU0gTWluY2hhbiBLaW0gPG1pbmNoYW5Aa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBGcm9tOiBIeWVzb28gWXUgPGh5ZXNvby55dUBzYW1zdW5nLmNv
bT4KPgo+IERvY3VtZW50IGRldmljZXRyZWUgYmluZGluZyBmb3IgY2h1bmsgaGVhcCBvbiBkbWEg
aGVhcCBmcmFtZXdvcmsKPgo+IFNpZ25lZC1vZmYtYnk6IEh5ZXNvbyBZdSA8aHllc29vLnl1QHNh
bXN1bmcuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5v
cmc+Cj4gLS0tCj4gIC4uLi9iaW5kaW5ncy9kbWEtYnVmL2NodW5rX2hlYXAueWFtbCAgICAgICAg
ICB8IDUyICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDUyIGluc2VydGlv
bnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kbWEtYnVmL2NodW5rX2hlYXAueWFtbAo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEtYnVmL2NodW5rX2hlYXAueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEtYnVmL2NodW5rX2hlYXAueWFtbAo+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5mMzgyYmVlMDI3NzgKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS1i
dWYvY2h1bmtfaGVhcC55YW1sCj4gQEAgLTAsMCArMSw1MiBAQAo+ICsjIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiArJVlBTUwgMS4yCj4g
Ky0tLQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2RtYS1idWYvY2h1bmtf
aGVhcC55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFz
L2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBEZXZpY2UgdHJlZSBiaW5kaW5nIGZvciBjaHVuayBo
ZWFwIG9uIERNQSBIRUFQIEZSQU1FV09SSwo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAgLSBTdW1p
dCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+ICsKPiArZGVzY3JpcHRpb246IHwK
PiArICBUaGUgY2h1bmsgaGVhcCBpcyBiYWNrZWQgYnkgdGhlIENvbnRpZ3VvdXMgTWVtb3J5IEFs
bG9jYXRvciAoQ01BKSBhbmQKPiArICBhbGxvY2F0ZXMgdGhlIGJ1ZmZlcnMgdGhhdCBhcmUgbWFk
ZSB1cCB0byBhIGxpc3Qgb2YgZml4ZWQgc2l6ZSBjaHVua3MKPiArICB0YWtlbiBmcm9tIENNQS4g
Q2h1bmsgc2l6ZXMgYXJlIGNvbmZpZ3VyYXRlZCB3aGVuIHRoZSBoZWFwcyBhcmUgY3JlYXRlZC4K
PiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGVudW06Cj4gKyAgICAg
IC0gZG1hX2hlYXAsY2h1bmsKPiArCj4gKyAgbWVtb3J5LXJlZ2lvbjoKPiArICAgIG1heEl0ZW1z
OiAxCj4gKwo+ICsgIGFsaWdubWVudDoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICtyZXF1aXJl
ZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIG1lbW9yeS1yZWdpb24KPiArICAtIGFsaWdubWVu
dAo+ICsKPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICtleGFtcGxlczoKPiAr
ICAtIHwKPiArICAgIHJlc2VydmVkLW1lbW9yeSB7Cj4gKyAgICAgICAgI2FkZHJlc3MtY2VsbHMg
PSA8Mj47Cj4gKyAgICAgICAgI3NpemUtY2VsbHMgPSA8MT47Cj4gKwo+ICsgICAgICAgIGNodW5r
X21lbW9yeTogY2h1bmtfbWVtb3J5IHsKPiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaGFy
ZWQtZG1hLXBvb2wiOwo+ICsgICAgICAgICAgICByZXVzYWJsZTsKPiArICAgICAgICAgICAgc2l6
ZSA9IDwweDEwMDAwMDAwPjsKPiArICAgICAgICB9Owo+ICsgICAgfTsKPiArCj4gKyAgICBjaHVu
a19kZWZhdWx0X2hlYXA6IGNodW5rX2RlZmF1bHRfaGVhcCB7Cj4gKyAgICAgICAgY29tcGF0aWJs
ZSA9ICJkbWFfaGVhcCxjaHVuayI7Cj4gKyAgICAgICAgbWVtb3J5LXJlZ2lvbiA9IDwmY2h1bmtf
bWVtb3J5PjsKPiArICAgICAgICBhbGlnbm1lbnQgPSA8MHgxMDAwMD47Cj4gKyAgICB9OwoKClNv
IEkgc3VzcGVjdCBSb2Igd2lsbCBwdXNoIGJhY2sgb24gdGhpcyBhcyBoZSBoYXMgZm9yIG90aGVy
IGR0CmJpbmRpbmdzIHJlbGF0ZWQgdG8gaW9uL2RtYWJ1ZiBoZWFwcyAoSSB0cmllZCB0byBwdXNo
IGEgc2ltaWxhcgpzb2x1dGlvbiB0byBleHBvcnRpbmcgbXVsdGlwbGUgQ01BIGFyZWFzIHZpYSBk
bWFidWYgaGVhcHMpLgoKVGhlIHByb3Bvc2FsIGhlIHNlZW1lZCB0byBsaWtlIGJlc3Qgd2FzIGhh
dmluZyBhbiBpbi1rZXJuZWwgZnVuY3Rpb24KdGhhdCBhIGRyaXZlciB3b3VsZCBjYWxsIHRvIGlu
aXRpYWxpemUgdGhlIGhlYXAgKGFzc29jaWF0ZWQgd2l0aCB0aGUKQ01BIHJlZ2lvbiB0aGUgZHJp
dmVyIGlzIGludGVyZXN0ZWQgaW4pLiBTaW1pbGFyIHRvIEt1bmloaWtvIEhheWFzaGkncwpwYXRj
aCBoZXJlOgogIC0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8xNTk0OTQ4MjA4LTQ3Mzkt
MS1naXQtc2VuZC1lbWFpbC1oYXlhc2hpLmt1bmloaWtvQHNvY2lvbmV4dC5jb20vCgpUaGUgb25l
IHN0aWNraW5nIHBvaW50IGZvciB0aGF0IHBhdGNoICh3aGljaCBJIHRoaW5rIGlzIGEgZ29vZCBv
bmUpLAppcyB0aGF0IHdlIGRvbid0IGhhdmUgYW55IGluLXRyZWUgdXNlcnMsIHNvIGl0IGNvdWxk
bid0IGJlIG1lcmdlZCB5ZXQuCgpBIHNpbWlsYXIgYXBwcm9hY2ggbWlnaHQgYmUgZ29vZCBoZXJl
LCBidXQgYWdhaW4gd2UgcHJvYmFibHkgbmVlZCB0bwpoYXZlIGF0IGxlYXN0IG9uZSBpbi10cmVl
IHVzZXIgd2hpY2ggY291bGQgY2FsbCBzdWNoIGEgcmVnaXN0cmF0aW9uCmZ1bmN0aW9uLgoKdGhh
bmtzCi1qb2huCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
