Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAC38DBEB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2019 19:32:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4D1361719
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2019 17:32:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A607C617F5; Wed, 14 Aug 2019 17:32:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9290A617FC;
	Wed, 14 Aug 2019 17:31:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5E05360767
 for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2019 17:23:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4A0A3617FC; Wed, 14 Aug 2019 17:23:02 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 69B6660767
 for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2019 17:22:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18108014-1500050 for multiple; Wed, 14 Aug 2019 18:22:55 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>, christian.koenig@amd.com
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156580237838.2301.9210706924490719639@skylake-alporthouse-com>
References: <20190807135312.1730-1-christian.koenig@amd.com>
 <20190807135312.1730-4-christian.koenig@amd.com>
 <156518744066.6198.17572013738158664135@skylake-alporthouse-com>
 <ccc20434-0380-c0b8-1ccb-1f7d9ae1a4a5@gmail.com>
 <20190814153908.GI7444@phenom.ffwll.local>
 <156580096818.2714.13643616122908209617@skylake-alporthouse-com>
 <156580237838.2301.9210706924490719639@skylake-alporthouse-com>
Message-ID: <156580337387.2301.16070325716888990772@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 14 Aug 2019 18:22:53 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTQgMTg6MDY6MTgpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDgtMTQgMTc6NDI6NDgpCj4gPiBRdW90aW5nIERhbmllbCBWZXR0ZXIg
KDIwMTktMDgtMTQgMTY6Mzk6MDgpCj4gPiA+ID4gPiA+ICsgICAgICAgfSB3aGlsZSAocmN1X2Fj
Y2Vzc19wb2ludGVyKG9iai0+ZmVuY2VfZXhjbCkgIT0gKmV4Y2wpOwo+ID4gPiAKPiA+ID4gV2hh
dCBpZiBzb21lb25lIGlzIHJlYWwgZmFzdCAobGlrZSByZWFsbHkgcmVhbCBmYXN0KSBhbmQgcmVj
eWNsZXMgdGhlCj4gPiA+IGV4Y2x1c2l2ZSBmZW5jZSBzbyB5b3UgcmVhZCB0aGUgc2FtZSBwb2lu
dGVyIHR3aWNlLCBidXQgZXZlcnl0aGluZyBlbHNlCj4gPiA+IGNoYW5nZWQ/IHJldXNlZCBmZW5j
ZSBwb2ludGVyIGlzIGEgbG90IG1vcmUgbGlrZWx5IHRoYW4gc2VxbG9jayB3cmFwcGluZwo+ID4g
PiBhcm91bmQuCj4gPiAKPiA+IEl0J3MgYW4gZXhjbHVzaXZlIGZlbmNlLiBJZiBpdCBpcyByZXBs
YWNlZCwgaXQgbXVzdCBiZSBsYXRlciB0aGFuIGFsbAo+ID4gdGhlIHNoYXJlZCBmZW5jZXMgKGFu
ZCBkZXBlbmRlbnQgb24gdGhlbSBkaXJlY3RseSBvciBpbmRpcmVjdGx5KSwgYW5kCj4gPiBzbyBz
dGlsbCBhIGNvbnNpc3RlbnQgc25hcHNob3QuCj4gCj4gQW4gZXh0ZW5zaW9uIG9mIHRoYXQgYXJn
dW1lbnQgc2F5cyB3ZSBkb24ndCBldmVuIG5lZWQgdG8gbG9vcCwKPiAKPiAqbGlzdCA9IHJjdV9k
ZXJlZmVyZW5jZShvYmotPmZlbmNlKTsKPiAqc2hhcmVkX2NvdW50ID0gKmxpc3QgPyAoKmxpc3Qp
LT5zaGFyZWRfY291bnQgOiAwOwo+IHNtcF9ybWIoKTsKPiAqZXhjbCA9IHJjdV9kZXJlZmVyZW5j
ZShvYmotPmZlbmNlX2V4Y2wpOwo+IAo+IEdpdmVzIGEgY29uc2lzdGVudCBzbmFwc2hvdC4gSXQg
ZG9lc24ndCBtYXR0ZXIgaWYgdGhlIGZlbmNlX2V4Y2wgaXMKPiBiZWZvcmUgb3IgYWZ0ZXIgdGhl
IHNoYXJlZF9saXN0IC0tIGlmIGl0J3MgYWZ0ZXIsIGl0J3MgYSBzdXBlcnNldCBvZiBhbGwKPiBm
ZW5jZXMsIGlmIGl0J3MgYmVmb3JlLCB3ZSBoYXZlIGEgY29ycmVjdCBsaXN0IG9mIHNoYXJlZCBm
ZW5jZXMgdGhlCj4gZWFybGllciBmZW5jZV9leGNsLgoKVGhlIHByb2JsZW0gaXMgdGhhdCB0aGUg
cG9pbnQgb2YgdGhlIGxvb3AgaXMgdGhhdCB3ZSBkbyBuZWVkIGEgY2hlY2sgb24KdGhlIGZlbmNl
cyBhZnRlciB0aGUgZnVsbCBtZW1vcnkgYmFycmllci4KClRoaW5raW5nIG9mIHRoZSByYXRpb25h
bGUgYmVhdGVuIG91dCBmb3IgZG1hX2ZlbmNlX2dldF9leGNsX3JjdV9zYWZlKCkKCldlIGRvbid0
IGhhdmUgYSBmdWxsIG1lbW9yeSBiYXJyaWVyIGhlcmUsIHNvIHRoaXMgY2Fubm90IGJlIHVzZWQg
c2FmZWx5CmluIGxpZ2h0IG9mIGZlbmNlIHJlYWxsb2NhdGlvbi4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
