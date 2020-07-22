Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 769D52484E4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:40:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C7E065F75
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:40:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7CE04665AA; Tue, 18 Aug 2020 12:40:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08300665EE;
	Tue, 18 Aug 2020 12:32:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 95BA866558
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jul 2020 13:12:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 86D67665E3; Wed, 22 Jul 2020 13:12:12 +0000 (UTC)
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by lists.linaro.org (Postfix) with ESMTPS id 69E7966558
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jul 2020 13:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id D70B13F634;
 Wed, 22 Jul 2020 15:12:09 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LpwrYAHQP3Iq; Wed, 22 Jul 2020 15:12:09 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 420893F29E;
 Wed, 22 Jul 2020 15:12:05 +0200 (CEST)
Received: from [192.168.0.100] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 7831D362551;
 Wed, 22 Jul 2020 15:12:05 +0200 (CEST)
To: Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
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
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <697d1b5e-5d1c-1655-23f8-7a3f652606f3@shipmail.org>
Date: Wed, 22 Jul 2020 15:12:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uF27SifuvMatuP2kJPTf+LVmVbG098cE2cqorYYo7UHkw@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: Felix Kuehling <Felix.Kuehling@amd.com>,
 Daniel Stone <daniels@collabora.com>, linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>, Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
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

Ck9uIDIwMjAtMDctMjIgMTQ6NDEsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4KPiBBaCBJIHRoaW5r
IEkgbWlzdW5kZXJzdG9vZCB3aGljaCBvcHRpb25zIHlvdSB3YW50IHRvIGNvbXBhcmUgaGVyZS4g
SSdtCj4gbm90IHN1cmUgaG93IG11Y2ggcGFpbiBmaXhpbmcgdXAgImRtYS1mZW5jZSBhcyBtZW1v
cnkgZmVuY2UiIHJlYWxseQo+IGlzLiBUaGF0J3Mga2luZGEgd2h5IEkgd2FudCBhIGxvdCBtb3Jl
IHRlc3Rpbmcgb24gbXkgYW5ub3RhdGlvbgo+IHBhdGNoZXMsIHRvIGZpZ3VyZSB0aGF0IG91dC4g
Tm90IG11Y2ggZmVlZGJhY2sgYXNpZGUgZnJvbSBhbWRncHUgYW5kCj4gaW50ZWwsIGFuZCB0aG9z
ZSB0d28gZHJpdmVycyBwcmV0dHkgbXVjaCBuZWVkIHRvIHNvcnQgb3V0IHRoZWlyIG1lbW9yeQo+
IGZlbmNlIGlzc3VlcyBhbnl3YXkgKGJlY2F1c2Ugb2YgdXNlcnB0ciBhbmQgc3R1ZmYgbGlrZSB0
aGF0KS4KPgo+IFRoZSBvbmx5IG90aGVyIGlzc3VlcyBvdXRzaWRlIG9mIHRoZXNlIHR3byBkcml2
ZXJzIEknbSBhd2FyZSBvZjoKPiAtIHZhcmlvdXMgc2NoZWR1bGVyIGRyaXZlcnMgZG9pbmcgYWxs
b2NhdGlvbnMgaW4gdGhlIGRybS9zY2hlZHVsZXIKPiBjcml0aWNhbCBzZWN0aW9uLiBTaW5jZSBh
bGwgYXJtLXNvYyBkcml2ZXJzIGhhdmUgYSBtaWxkbHkgc2hvZGR5Cj4gbWVtb3J5IG1vZGVsIG9m
ICJ3ZSBqdXN0IHBpbiBldmVyeXRoaW5nIiB0aGV5IGRvbid0IHJlYWxseSBoYXZlIHRvCj4gZGVh
bCB3aXRoIHRoaXMuIFNvIHdlIG1pZ2h0IGp1c3QgZGVjbGFyZSBhcm0gYXMgYSBwbGF0Zm9ybSBi
cm9rZW4gYW5kCj4gbm90IHRhaW50IHRoZSBkbWEtZmVuY2UgY3JpdGljYWwgc2VjdGlvbnMgd2l0
aCBmc19yZWNsYWltLiBPdG9oIHdlCj4gbmVlZCB0byBmaXggdGhpcyBmb3IgZHJtL3NjaGVkdWxl
ciBhbnl3YXksIEkgdGhpbmsgYmVzdCBvcHRpb24gd291bGQKPiBiZSB0byBoYXZlIGEgbWVtcG9v
bCBmb3IgaHcgZmVuY2VzIGluIHRoZSBzY2hlZHVsZXIgaXRzZWxmLCBhbmQgYXQKPiB0aGF0IHBv
aW50IGZpeGluZyB0aGUgb3RoZXIgZHJpdmVycyBzaG91bGRuJ3QgYmUgdG9vIG9uZXJvdXMuCj4K
PiAtIHZtd2dmeCBkb2luZyBhIGRtYV9yZXN2IGluIHRoZSBhdG9taWMgY29tbWl0IHRhaWwuIEVu
dGlyZWx5Cj4gb3J0aG9nb25hbCB0byB0aGUgZW50aXJlIG1lbW9yeSBmZW5jZSBkaXNjdXNzaW9u
LgoKV2l0aCB2bXdnZnggdGhlcmUgaXMgYW5vdGhlciBpc3N1ZSB0aGF0IGlzIGhpdCB3aGVuIHRo
ZSBncHUgc2lnbmFscyBhbiAKZXJyb3IuIEF0IHRoYXQgcG9pbnQgdGhlIGJhdGNoIG1pZ2h0IGJl
IHJlc3RhcnRlZCB3aXRoIGEgbmV3IG1ldGEgCmNvbW1hbmQgYnVmZmVyIHRoYXQgbmVlZHMgdG8g
YmUgYWxsb2NhdGVkIG91dCBvZiBhIGRtYSBwb29sLiBpbiB0aGUgCmZlbmNlIGNyaXRpY2FsIHNl
Y3Rpb24uIFRoYXQncyBwcm9iYWJseSBhIGJpdCBuYXN0eSB0byBmaXgsIGJ1dCBub3QgCmltcG9z
c2libGUuCgo+Cj4gSSdtIHByZXR0eSBzdXJlIHRoZXJlJ3MgbW9yZSBidWdzLCBJIGp1c3QgaGF2
ZW4ndCBoZWFyZCBmcm9tIHRoZW0geWV0Lgo+IEFsc28gZHVlIHRvIHRoZSBvcHQtaW4gbmF0dXJl
IG9mIGRtYS1mZW5jZSB3ZSBjYW4gbGltaXQgdGhlIHNjb3BlIG9mCj4gd2hhdCB3ZSBmaXggZmFp
cmx5IG5hdHVyYWxseSwganVzdCBkb24ndCBwdXQgdGhlbSB3aGVyZSBubyBvbmUgY2FyZXMKPiA6
LSkgT2YgY291cnNlIHRoYXQgYWxzbyBoaWRlcyBnZW5lcmFsIGxvY2tpbmcgaXNzdWVzIGluIGRt
YV9mZW5jZQo+IHNpZ25hbGxpbmcgY29kZSwgYnV0IHdlbGwgKnNocnVnKi4KSG1tLCB5ZXMuIEFu
b3RoZXIgcG90ZW50aWFsIGJpZyBwcm9ibGVtIHdvdWxkIGJlIGRyaXZlcnMgdGhhdCB3YW50IHRv
IAp1c2UgZ3B1IHBhZ2UgZmF1bHRzIGluIHRoZSBkbWEtZmVuY2UgY3JpdGljYWwgc2VjdGlvbnMg
d2l0aCB0aGUgCmJhdGNoLWJhc2VkIHByb2dyYW1taW5nIG1vZGVsLgoKL1Rob21hcwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
