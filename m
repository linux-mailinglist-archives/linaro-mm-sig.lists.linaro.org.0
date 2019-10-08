Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 071F4CFF23
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Oct 2019 18:44:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB84860F55
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Oct 2019 16:44:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9A495618C2; Tue,  8 Oct 2019 16:44:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05332617D4;
	Tue,  8 Oct 2019 16:43:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D111660C60
 for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Oct 2019 16:43:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C2528617D4; Tue,  8 Oct 2019 16:43:37 +0000 (UTC)
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by lists.linaro.org (Postfix) with ESMTPS id 7E57A60C60
 for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Oct 2019 16:43:36 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id f20so16239146edv.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 08 Oct 2019 09:43:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=UzErhGeNOu6CjM03E40KoyC+AbhFMlmjMb+mV7sZ084=;
 b=LuPJpuoK9RM/z1BJPX8k23C2vBEMhj1nUn91bPCbIDXcnaZeYAwt1W5X/yD3BFgg94
 q4o04bngpXXsQxjO8GmboRs3YRwBMY2gAMfYri/y7QYzOCTytDCRAiriWWYZQWscs8u0
 B4PF0ae41jFdJPb9U3/d7NNJniujqM3YoGjK6JgePfs7njqFgg9rKz9/i2TpCuw/T/m1
 cc4gpS5fSbDJfR6v/OaOcrrm0ttMLdVX/KqHG1mLV+OAd7PoAdqt8yCrps//SC24EkPp
 WlpCC1NkUJdKe9kRHCcqzBHleUJLyuxmtsu7bwu7tzUhveZoDfXKuP4n+R8dKSC1/gsD
 Rrtw==
X-Gm-Message-State: APjAAAWyd/GVA2/+Sz0pS6ukXAFuKGQo6qUXlTJGpjMTei88xtSeUf8H
 nW35c1bI/JRKBpBUgIor7vsO8g==
X-Google-Smtp-Source: APXvYqxUrI++czRZZH6dfzHJ4mkVe3aiDHQThkh6vAfDivxyNchdAlNRK8CySlWhwt2wKsEatq8aVA==
X-Received: by 2002:a05:6402:1212:: with SMTP id
 c18mr35129488edw.259.1570553015591; 
 Tue, 08 Oct 2019 09:43:35 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j6sm2335714ejv.36.2019.10.08.09.43.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 09:43:34 -0700 (PDT)
Date: Tue, 8 Oct 2019 18:43:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
Message-ID: <20191008164332.GT16989@phenom.ffwll.local>
References: <20190922074900.853-1-yuq825@gmail.com>
 <CAKMK7uHro9W8GqvuVf0Ruji691U7Trc_jmS3U-OEacLFDH6P1A@mail.gmail.com>
 <910b33a2-36ec-1ed3-e487-adfa61b5ec0e@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <910b33a2-36ec-1ed3-e487-adfa61b5ec0e@amd.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "lima@lists.freedesktop.org" <lima@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Qiang Yu <yuq825@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf/resv: fix exclusive fence get
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

T24gTW9uLCBTZXAgMzAsIDIwMTkgYXQgMDg6NTc6MzJBTSArMDAwMCwgS29lbmlnLCBDaHJpc3Rp
YW4gd3JvdGU6Cj4gQW0gMzAuMDkuMTkgdW0gMDk6MjIgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+
ID4gT24gU3VuLCBTZXAgMjIsIDIwMTkgYXQgMjowOCBQTSBRaWFuZyBZdSA8eXVxODI1QGdtYWls
LmNvbT4gd3JvdGU6Cj4gPj4gVGhpcyBjYXVzZXMga2VybmVsIGNyYXNoIHdoZW4gdGVzdGluZyBs
aW1hIGRyaXZlci4KPiA+Pgo+ID4+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Cj4gPj4gRml4ZXM6IGI4YzAzNmRmYzY2ZiAoImRtYS1idWY6IHNpbXBsaWZ5
IHJlc2VydmF0aW9uX29iamVjdF9nZXRfZmVuY2VzX3JjdSBhIGJpdCIpCj4gPj4gU2lnbmVkLW9m
Zi1ieTogUWlhbmcgWXUgPHl1cTgyNUBnbWFpbC5jb20+Cj4gPiBTZWxmdGVzdCBmb3IgdGhpcyB3
b3VsZCBiZSBsb3ZlbHksIG5vdyB0aGF0IHRoZSBiYXNpYyBpbmZyYXN0cnVjdHVyZQo+ID4gaXMg
aW4gcGxhY2UgLi4uCj4gCj4gV2hhdCBkbyB5b3UgaGF2ZSBpbiBtaW5kPyBJIHdvdWxkbid0IGV2
ZW4ga25vdyB3aGVyZSB0byBzdGFydCB0byB3cml0ZSAKPiBhbiB1bml0IHRlc3QgZm9yIHRoaXMu
CgoxLiBzZXQgYSBmZXcgZmVuY2VzIChib3RoIGV4Y2wgKyBzaGFyZWQpIGluIGEgZG1hX3Jlc3YK
Mi4gZ2V0IHRoZW0KMy4gY2hlY2sgdGhhdCB3ZSBnb3QgdGhlbSBhbGwKNC4gbm90aWNlIHRoYXQg
dGhlIGV4bHVzaXZlIGZlbmNlIGlzbid0IGFjdHVhbGx5IGluIHRoZSBhcnJheSAoYmVjYXVzZSB3
ZQppbmNyZW1lbnQgdGhlIGluZGV4IGJlZm9yZSBzdG9yaW5nLCBzbyB0aGUgZXhjbHVzaXZlIGZl
bmNlIGVuZGVkIHBhc3QgdGhlCmFycmF5KS4gRm9yIHJvYnVzdG5lc3MgdGhlIHRlc3Qgc2hvdWxk
IGNoZWNrIHRoYXQgdGhlIGZlbmNlcyBhcmUgbGlzdGVkIGluCmFueSBvcmRlciwgbm90IGp1c3Qg
dGhlIG9uZSB0aGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBnaXZlcyB5b3UuCgpJIGd1ZXNzIHRo
ZSBhY3R1YWwgY3Jhc2ggaGFwcGVucyB3aGVuIHdlJ3JlIHVubHVja3kgYW5kIG92ZXJmbG93IHRo
ZQphbGxvY2F0aW9uLCB3aGljaCBpcyBwcm9iYWJseSBtb3JlIHJhcmUuIEJ1dCBLQVNBTiBzaG91
bGQgaGVscCBjYXRjaCB0aGF0CnRvbyAocnVuIHRoYXQgaW4geW91ciBDSSBpZiB5b3UgZG9uJ3Qg
ZG8gdGhhdCB5ZXQsIGl0J3MgcHJldHR5CmltcHJlc3NpdmUpLgoKT3IgYW0gSSB0b3RhbGx5IG1p
c3VuZGVyc3RhbmRpbmcgd2hhdCdzIGdvaW5nIHdyb25nIGhlcmU/Ci1EYW5pZWwKPiAKPiBDaHJp
c3RpYW4uCj4gCj4gPiAtRGFuaWVsCj4gPgo+ID4+IC0tLQo+ID4+ICAgZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMgfCAyICstCj4gPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4gPj4gaW5kZXggNDJhOGYzZjEx
NjgxLi43MDkwMDI1MTU1NTAgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1y
ZXN2LmMKPiA+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+ID4+IEBAIC00NzEs
NyArNDcxLDcgQEAgaW50IGRtYV9yZXN2X2dldF9mZW5jZXNfcmN1KHN0cnVjdCBkbWFfcmVzdiAq
b2JqLAo+ID4+ICAgICAgICAgIGlmIChwZmVuY2VfZXhjbCkKPiA+PiAgICAgICAgICAgICAgICAg
ICpwZmVuY2VfZXhjbCA9IGZlbmNlX2V4Y2w7Cj4gPj4gICAgICAgICAgZWxzZSBpZiAoZmVuY2Vf
ZXhjbCkKPiA+PiAtICAgICAgICAgICAgICAgc2hhcmVkWysrc2hhcmVkX2NvdW50XSA9IGZlbmNl
X2V4Y2w7Cj4gPj4gKyAgICAgICAgICAgICAgIHNoYXJlZFtzaGFyZWRfY291bnQrK10gPSBmZW5j
ZV9leGNsOwo+ID4+Cj4gPj4gICAgICAgICAgaWYgKCFzaGFyZWRfY291bnQpIHsKPiA+PiAgICAg
ICAgICAgICAgICAgIGtmcmVlKHNoYXJlZCk7Cj4gPj4gLS0KPiA+PiAyLjE3LjEKPiA+Pgo+ID4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gZHJp
LWRldmVsIG1haWxpbmcgbGlzdAo+ID4+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiA+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1k
ZXZlbAo+ID4KPiA+Cj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50
ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
