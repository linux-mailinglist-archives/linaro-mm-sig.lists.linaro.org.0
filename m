Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C99D12484E7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:41:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F161560EFF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:41:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E44D765F75; Tue, 18 Aug 2020 12:41:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6F3C665F3;
	Tue, 18 Aug 2020 12:32:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 93ABC6063E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jul 2020 14:30:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7881166588; Wed, 22 Jul 2020 14:30:17 +0000 (UTC)
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by lists.linaro.org (Postfix) with ESMTPS id 2BC216063E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jul 2020 14:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 48E123F4A0;
 Wed, 22 Jul 2020 16:30:13 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qxFCURGVkHmS; Wed, 22 Jul 2020 16:30:12 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 1A2CA3F418;
 Wed, 22 Jul 2020 16:30:08 +0200 (CEST)
Received: from [192.168.0.100] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 9A868362551;
 Wed, 22 Jul 2020 16:30:09 +0200 (CEST)
To: christian.koenig@amd.com, Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
 <CAPM=9twUWeenf-26GEvkuKo3wHgS3BCyrva=sNaWo6+=A5qdoQ@mail.gmail.com>
 <805c49b7-f0b3-45dc-5fe3-b352f0971527@shipmail.org>
 <CAKMK7uHhhxBC2MvnNnU9FjxJaWkEcP3m5m7AN3yzfw=wxFsckA@mail.gmail.com>
 <92393d26-d863-aac6-6d27-53cad6854e13@shipmail.org>
 <CAKMK7uF8jpyuCF8uUbEeJUedErxqRGa8JY+RuURg7H1XXWXzkw@mail.gmail.com>
 <8fd999f2-cbf6-813c-6ad4-131948fb5cc5@shipmail.org>
 <CAKMK7uH0rcyepP2hDpNB-yuvNyjee1tPmxWUyefS5j7i-N6Pfw@mail.gmail.com>
 <df5414f5-ac5c-d212-500c-b05c7c78ce84@shipmail.org>
 <CAKMK7uF27SifuvMatuP2kJPTf+LVmVbG098cE2cqorYYo7UHkw@mail.gmail.com>
 <697d1b5e-5d1c-1655-23f8-7a3f652606f3@shipmail.org>
 <CAKMK7uGSkgdJyyvGe8SF_vWfgyaCWn5p0GvZZdLvkxmrS6tYbQ@mail.gmail.com>
 <c742c557-f48f-1591-1d1d-a5181b408a67@gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <a046ea93-b303-17d4-add4-efd0a709cfd2@shipmail.org>
Date: Wed, 22 Jul 2020 16:30:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c742c557-f48f-1591-1d1d-a5181b408a67@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: Daniel Stone <daniels@collabora.com>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>, Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document why
 indefinite fences are a bad idea
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Ck9uIDIwMjAtMDctMjIgMTY6MjMsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjIuMDcu
MjAgdW0gMTY6MDcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+PiBPbiBXZWQsIEp1bCAyMiwgMjAy
MCBhdCAzOjEyIFBNIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkKPj4gPHRob21hc19vc0BzaGlw
bWFpbC5vcmc+IHdyb3RlOgo+Pj4gT24gMjAyMC0wNy0yMiAxNDo0MSwgRGFuaWVsIFZldHRlciB3
cm90ZToKPj4+PiBJJ20gcHJldHR5IHN1cmUgdGhlcmUncyBtb3JlIGJ1Z3MsIEkganVzdCBoYXZl
bid0IGhlYXJkIGZyb20gdGhlbSB5ZXQuCj4+Pj4gQWxzbyBkdWUgdG8gdGhlIG9wdC1pbiBuYXR1
cmUgb2YgZG1hLWZlbmNlIHdlIGNhbiBsaW1pdCB0aGUgc2NvcGUgb2YKPj4+PiB3aGF0IHdlIGZp
eCBmYWlybHkgbmF0dXJhbGx5LCBqdXN0IGRvbid0IHB1dCB0aGVtIHdoZXJlIG5vIG9uZSBjYXJl
cwo+Pj4+IDotKSBPZiBjb3Vyc2UgdGhhdCBhbHNvIGhpZGVzIGdlbmVyYWwgbG9ja2luZyBpc3N1
ZXMgaW4gZG1hX2ZlbmNlCj4+Pj4gc2lnbmFsbGluZyBjb2RlLCBidXQgd2VsbCAqc2hydWcqLgo+
Pj4gSG1tLCB5ZXMuIEFub3RoZXIgcG90ZW50aWFsIGJpZyBwcm9ibGVtIHdvdWxkIGJlIGRyaXZl
cnMgdGhhdCB3YW50IHRvCj4+PiB1c2UgZ3B1IHBhZ2UgZmF1bHRzIGluIHRoZSBkbWEtZmVuY2Ug
Y3JpdGljYWwgc2VjdGlvbnMgd2l0aCB0aGUKPj4+IGJhdGNoLWJhc2VkIHByb2dyYW1taW5nIG1v
ZGVsLgo+PiBZZWFoIHRoYXQncyBhIG1hc3NpdmUgY2FuIG9mIHdvcm1zLiBCdXQgbHVja2lseSB0
aGVyZSdzIG5vIHN1Y2ggZHJpdmVyCj4+IG1lcmdlZCBpbiB1cHN0cmVhbSwgc28gaG9wZWZ1bGx5
IHdlIGNhbiB0aGluayBhYm91dCBhbGwgdGhlCj4+IGNvbnN0cmFpbnRzIGFuZCBob3cgdG8gYmVz
dCBhbm5vdGF0ZSZlbmZvcmNlIHRoaXMgYmVmb3JlIHdlIGxhbmQgYW55Cj4+IGNvZGUgYW5kIGhh
dmUgYmlnIHJlZ3JldHMuCj4KPiBEbyB5b3Ugd2FudCBhIGJhZCBuZXdzPyBJIG9uY2UgbWFkZSBh
IHByb3RvdHlwZSBmb3IgdGhhdCB3aGVuIFZlZ2ExMCAKPiBjYW1lIG91dC4KPgo+IEJ1dCB3ZSBh
YmFuZG9uZWQgdGhpcyBhcHByb2FjaCBmb3IgdGhlIHRoZSBiYXRjaCBiYXNlZCBhcHByb2FjaCAK
PiBiZWNhdXNlIG9mIHRoZSBob3JyaWJsZSBwZXJmb3JtYW5jZS4KCkluIGNvbnRleHQgb2YgdGhl
IHByZXZpb3VzIGRpc2N1c3Npb24gSSdkIGNvbnNpZGVyIHRoZSBmYWN0IHRoYXQgaXQncyAKbm90
IHBlcmZvcm1hbnQgaW4gdGhlIGJhdGNoLWJhc2VkIG1vZGVsIGdvb2QgbmV3cyA6KQoKVGhvbWFz
CgoKPgo+IEtGRCBpcyBnb2luZyB0byBzZWUgdGhhdCwgYnV0IHRoaXMgaXMgb25seSB3aXRoIHVz
ZXIgcXVldWVzIGFuZCBubyAKPiBkbWFfZmVuY2UgaW52b2x2ZWQgd2hhdHNvZXZlci4KPgo+IENo
cmlzdGlhbi4KPgo+PiAtRGFuaWVsCj4+Cj4+Cj4+Cj4+IC0tIAo+PiBEYW5pZWwgVmV0dGVyCj4+
IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+PiBodHRwOi8vYmxvZy5mZnds
bC5jaAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBhbWQtZ2Z4IG1haWxpbmcgbGlzdAo+PiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2FtZC1nZngK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
