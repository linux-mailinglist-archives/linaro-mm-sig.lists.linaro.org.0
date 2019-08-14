Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F0E8DC3A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2019 19:49:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B21E617FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2019 17:49:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1DD9861838; Wed, 14 Aug 2019 17:49:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F046F6180C;
	Wed, 14 Aug 2019 17:48:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BE23A617FC
 for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2019 17:48:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A703A6180F; Wed, 14 Aug 2019 17:48:33 +0000 (UTC)
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by lists.linaro.org (Postfix) with ESMTPS id 34CA8617FC
 for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2019 17:48:32 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id f22so16703edt.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2019 10:48:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=qwqWaeu+GhOdKofjdqb5LYI6e2TpebWGOHjix0xqdCI=;
 b=BdwGulhx/krOKdfV+1pgH7yRw2qpiyG4Y2GSTphPh/gYgcq5YmWyGavoNB5TWm7Qj8
 RpzoTJpBrp5UnImHBdcH4oy03Nty0Xu1CzmC+dCffERhOWfE3F84VgPb9TwZSGN6TVTz
 2sNV1Ud5rfNx+tZv2F4WUfp3Qs+//UR+4lhqf0sWQHr8A7qSQNFcCg6u5fuq6Nrd0LPg
 bG9zBFpRxPBRzEtVEaF1gHvHWdbz6oFumtXO6F0OPt21ngM+j3GBv6crSLWJhj1NhY3D
 tpqU2q3b2knBdYah0oKeQwv6BthcJ/suFLURRNTZyBT/emvQM6asCgNveiQJ5Qgc4CKu
 H6YA==
X-Gm-Message-State: APjAAAXgLTNNjRwDfx2LyiYaAs1wbkcPhLQtYmgoflBZL0fytUUX6Vt3
 4oU3/uF/BkzkN0VyWDqDv1SP+A==
X-Google-Smtp-Source: APXvYqy0XZqW2pohQNep9BKDJAa/CK2Zn7VFhcrL2tO0wF1v5ThIITP720l/YgaLoGaD8PbSSAy77A==
X-Received: by 2002:a50:b62b:: with SMTP id b40mr870003ede.56.1565804911248;
 Wed, 14 Aug 2019 10:48:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id j57sm81611eda.61.2019.08.14.10.48.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 10:48:30 -0700 (PDT)
Date: Wed, 14 Aug 2019 19:48:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190814174828.GS7444@phenom.ffwll.local>
References: <20190807135312.1730-1-christian.koenig@amd.com>
 <20190807135312.1730-4-christian.koenig@amd.com>
 <156518744066.6198.17572013738158664135@skylake-alporthouse-com>
 <ccc20434-0380-c0b8-1ccb-1f7d9ae1a4a5@gmail.com>
 <20190814153908.GI7444@phenom.ffwll.local>
 <156580096818.2714.13643616122908209617@skylake-alporthouse-com>
 <20190814170625.GK7444@phenom.ffwll.local>
 <156580322834.2301.14370001730544642496@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156580322834.2301.14370001730544642496@skylake-alporthouse-com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>,
 christian.koenig@amd.com
Subject: Re: [Linaro-mm-sig] [PATCH 4/4] dma-buf: nuke reservation_object
	seq number
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

T24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMDY6MjA6MjhQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgRGFuaWVsIFZldHRlciAoMjAxOS0wOC0xNCAxODowNjoyNikKPiA+IE9u
IFdlZCwgQXVnIDE0LCAyMDE5IGF0IDA1OjQyOjQ4UE0gKzAxMDAsIENocmlzIFdpbHNvbiB3cm90
ZToKPiA+ID4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA4LTE0IDE2OjM5OjA4KQo+IFtz
bmlwXQo+ID4gPiA+ID4gPiA+ICAgICAgICAgIGlmIChvbGQpCj4gPiA+ID4gPiA+ID4gLSAgICAg
ICAgICAgICAgIG9sZC0+c2hhcmVkX2NvdW50ID0gMDsKPiA+ID4gPiA+ID4gPiAtICAgICAgIHdy
aXRlX3NlcWNvdW50X2VuZCgmb2JqLT5zZXEpOwo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICBzbXBfc3RvcmVfbWIob2xkLT5zaGFyZWRfY291bnQsIDApOwo+ID4gPiA+IAo+ID4gPiA+IFNv
IHlvdXIgY29tbWVudCBhbmQgdGhlIGtlcm5lbGRvYyBkb24ndCBtYXRjaCB1cC4gUXVvdGluZwo+
ID4gPiA+IERvY3VtZW50YXRpb24vbWVtb3J5LWJhcnJpZXJzLnR4dDoKPiA+ID4gPiAKPiA+ID4g
PiAgICAgIFRoaXMgYXNzaWducyB0aGUgdmFsdWUgdG8gdGhlIHZhcmlhYmxlIGFuZCB0aGVuIGlu
c2VydHMgYSBmdWxsIG1lbW9yeQo+ID4gPiA+ICAgICAgYmFycmllciBhZnRlciBpdC4gIEl0IGlz
bid0IGd1YXJhbnRlZWQgdG8gaW5zZXJ0IGFueXRoaW5nIG1vcmUgdGhhbiBhCj4gPiA+ID4gICAg
ICBjb21waWxlciBiYXJyaWVyIGluIGEgVVAgY29tcGlsYXRpb24uCj4gPiA+ID4gCj4gPiA+ID4g
U28gb3JkZXIgaXMgMS4gc3RvcmUgMi4gZmVuY2UsIGJ1dCB5b3VyIGNvbW1lbnQgc3VnZ2VzdHMg
eW91IHdhbnQgaXQgdGhlCj4gPiA+ID4gb3RoZXIgd2F5IHJvdW5kLgo+ID4gPiAKPiA+ID4gV2hh
dCdzIG1vcmUgd2VpcmQgaXMgdGhhdCBpdCBpcyBhIGZ1bGx5IHNlcmlhbGlzaW5nIGluc3RydWN0
aW9uIHRoYXQgaXMKPiA+ID4gdXNlZCB0byBmZW5jZSBmaXJzdCBhcyBwYXJ0IG9mIHRoZSB1cGRh
dGUuIElmIHRoYXQncyB3YXkgUGV0ZXJaIHVzZXMKPiA+ID4gaXQuLi4KPiA+IAo+ID4gSSBoYXZl
bid0IGxvb2tlZCBhdCB0aGUgaW1wbGVtZW50YXRpb25zIHRiaCwganVzdCBnb2luZyB3aXRoIHRo
ZSB0ZXh0LiBPcgo+ID4gZG8geW91IG1lYW4gaW4gdGhlIHdyaXRlX3NlcWxvY2sgdGhhdCB3ZSdy
ZSByZXBsYWNpbmc/Cj4gCj4gTmFoLCBJIG1pc3JlbWVtYmVyZWQgc2V0X2N1cnJlbnRfc3RhdGUo
KSwgYWxsIHRoYXQgaW1wbGllcyBpcyB0aGUgZmVuY2UKPiBpcyBiZWZvcmUgdGhlIGZvbGxvd2lu
ZyBpbnN0cnVjdGlvbnMuIEkgaGF2ZSBzb21lIHJlY29sbGVjdGlvbiB0aGF0IGl0Cj4gY2FuIGJl
IHVzZWQgYXMgYSBSRUxFQVNFIG9wZXJhdGlvbiAoaWYgb25seSBiZWNhdXNlIGl0IGlzIGEgbG9j
a2VkIHhjaGcpLgo+IElmIGFsbCBlbHNlIGZhaWxzLCBtYWtlIGl0IGFuIHhjaGdfcmVsZWFzZSgp
LiBPciBub3JtYWwgYXNzaWdubWVudCArCj4gc21wX3dtYigpLgoKWWVhaCB0aGF0IG9uZSBpcyBj
YWxsZWQgc21wX3N0b3JlX3JlbGVhc2UsIG5vdCBzbXBfc3RvcmVfbWIuIEkgdGhpbmsKc21wX3N0
b3JlX3JlbGVhc2UgaXMgdGhlIHJpZ2h0IG9uZSBoZXJlLgoKPiA+ID4gSXQncyBhbiBleGNsdXNp
dmUgZmVuY2UuIElmIGl0IGlzIHJlcGxhY2VkLCBpdCBtdXN0IGJlIGxhdGVyIHRoYW4gYWxsCj4g
PiA+IHRoZSBzaGFyZWQgZmVuY2VzIChhbmQgZGVwZW5kZW50IG9uIHRoZW0gZGlyZWN0bHkgb3Ig
aW5kaXJlY3RseSksIGFuZAo+ID4gPiBzbyBzdGlsbCBhIGNvbnNpc3RlbnQgc25hcHNob3QuCj4g
PiAKPiA+IEknbSBub3Qgd29ycmllZCBhYm91dCB0aGUgZmVuY2UsIHRoYXQgcGFydCBpcyBmaW5l
LiBCdXQgd2UncmUgZGVmYWN0bwo+ID4gdXNpbmcgdGhlIGZlbmNlIGFzIGEgZmFuY3kgc2VxbG9j
ay1vZi1zb3J0cy4gQW5kIGlmIHRoZSBmZW5jZSBnZXRzIHJldXNlZAo+ID4gYW5kIHRoZSBwb2lu
dGVycyBtYXRjaCwgdGhlbiBvdXIgc2VxbG9jay1vZi1zb3J0cyBicmVha3MuIEJ1dCBJIGhhdmVu
J3QKPiA+IGxvb2tlZCBhcm91bmQgd2hldGhlciB0aGVyZSdzIG1vcmUgaW4gdGhlIGNvZGUgdGhh
dCBtYWtlcyB0aGlzIGFuCj4gPiBpcnJlbGV2YW50IGlzc3VlLgo+IAo+IE5vLCBpdCBzaG91bGQg
bm90IGJyZWFrIGlmIHdlIHJlcGxhY2UgdGhlIGZlbmNlIHdpdGggdGhlIHNhbWUgcG9pbnRlci4K
PiBJZiB0aGUgZmVuY2UgcG9pbnRlciBleHBpcmVzLCByZXVzZWQgYW5kIGFzc2lnbmVkIGJhY2sg
YXMgdGhlIGV4Y2xfZmVuY2UKPiAtLSBpdCBpcyBzdGlsbCB0aGUgZXhjbF9mZW5jZSBhbmQgYnkg
dGhlIHByb3BlcnRpZXMgb2YgdGhhdAo+IGV4Y2xfZmVuY2UgY29uc3RydWN0aW9uLCBpdCBpcyBs
YXRlciB0aGFuIHRoZSBzaGFyZWRfZmVuY2VzLgoKU28gSSB0aG91Z2h0IHRoZSBydWxlcyBhcmUg
dGhhdCBpZiB3ZSBoYXZlIGFuIGV4Y2x1c2l2ZSBmZW5jZSBhbmQgc2hhcmVkCmZlbmNlcyBib3Ro
IHByZXNlbnQsIHRoZW4gdGhlIHNoYXJlZCBmZW5jZXMgYXJlIGFmdGVyIHRoZSBleGNsdXNpdmUg
b25lLgoKQnV0IGlmIHdlIHJhY2UgaGVyZSwgdGhlbiBJIHRoaW5rIHdlIGNvdWxkIGFjY2lkZW50
YWxseSBzYW1wbGUgc2hhcmVkCmZlbmNlcyBmcm9tIF9iZWZvcmVfIHRoZSBleGNsdXNpdmUgZmVu
Y2VzLiBSb3VnaCB0aW1lbGluZToKCmV4bHVzaXZlIGZlbmNlIDEgLT4gc2hhcmVkIGZlbmNlIDIg
LT4gZXhjbHVzaXZlIGZlbmNlLCBidXQgcmV1c2VzIG1lbW9yeQpvZiBmZW5jZSAxCgpUaGVuIHdl
IHNhbXBsZSBmZW5jZSAxLCBjYXB0dXJlIHRoZSBzaGFyZWQgZmVuY2UgMiwgYW5kIG5vdGljZSB0
aGF0IHRoZQpleGNsdXNpdmUgZmVuY2UgcG9pbnRlciBpcyB0aGUgc2FtZSAoYnV0IG5vdCB0aGUg
ZmVuY2Ugb24gdGhlIHRpbWVsaW5lKQphbmQgY29uY2x1ZGUgdGhhdCB3ZSBnb3QgYSBjb25zaXN0
ZW50IHNhbXBsZS4KCkJ1dCB0aGUgb25seSBjb25zaXN0ZW50IHNhbXBsZSB3aXRoIHRoZSBuZXcg
ZmVuY2Ugc3RhdGUgd291bGQgYmUgb25seSB0aGUKZXhjbHVzaXZlIGZlbmNlLgoKUmVtaW5kcyBt
ZSBJIGZvcmdvdCB0byBsb29rIGZvciB0aGUgdXN1YWwga3JlZl9nZXRfdW5sZXNzX3plcm8gdHJp
Y2tlcnkgd2UKYWxzbyBuZWVkIHRvIGRvIGhlcmUgdG8gbWFrZSBzdXJlIHdlIGhhdmUgdGhlIHJp
Z2h0IGZlbmNlLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJ
bnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
