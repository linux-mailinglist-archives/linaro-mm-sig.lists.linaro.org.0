Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AB38DC12
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2019 19:40:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1670B617F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2019 17:40:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 073BA6180C; Wed, 14 Aug 2019 17:40:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A519F617FC;
	Wed, 14 Aug 2019 17:39:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ED7DD61719
 for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2019 17:38:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D9CAF617FC; Wed, 14 Aug 2019 17:38:29 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 4BD7761719
 for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2019 17:38:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18109191-1500050 for multiple; Wed, 14 Aug 2019 18:38:22 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>, christian.koenig@amd.com
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156580337387.2301.16070325716888990772@skylake-alporthouse-com>
References: <20190807135312.1730-1-christian.koenig@amd.com>
 <20190807135312.1730-4-christian.koenig@amd.com>
 <156518744066.6198.17572013738158664135@skylake-alporthouse-com>
 <ccc20434-0380-c0b8-1ccb-1f7d9ae1a4a5@gmail.com>
 <20190814153908.GI7444@phenom.ffwll.local>
 <156580096818.2714.13643616122908209617@skylake-alporthouse-com>
 <156580237838.2301.9210706924490719639@skylake-alporthouse-com>
 <156580337387.2301.16070325716888990772@skylake-alporthouse-com>
Message-ID: <156580430044.2301.14073232724312766697@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 14 Aug 2019 18:38:20 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTQgMTg6MjI6NTMpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDgtMTQgMTg6MDY6MTgpCj4gPiBRdW90aW5nIENocmlzIFdpbHNvbiAo
MjAxOS0wOC0xNCAxNzo0Mjo0OCkKPiA+ID4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA4
LTE0IDE2OjM5OjA4KQo+ID4gPiA+ID4gPiA+ICsgICAgICAgfSB3aGlsZSAocmN1X2FjY2Vzc19w
b2ludGVyKG9iai0+ZmVuY2VfZXhjbCkgIT0gKmV4Y2wpOwo+ID4gPiA+IAo+ID4gPiA+IFdoYXQg
aWYgc29tZW9uZSBpcyByZWFsIGZhc3QgKGxpa2UgcmVhbGx5IHJlYWwgZmFzdCkgYW5kIHJlY3lj
bGVzIHRoZQo+ID4gPiA+IGV4Y2x1c2l2ZSBmZW5jZSBzbyB5b3UgcmVhZCB0aGUgc2FtZSBwb2lu
dGVyIHR3aWNlLCBidXQgZXZlcnl0aGluZyBlbHNlCj4gPiA+ID4gY2hhbmdlZD8gcmV1c2VkIGZl
bmNlIHBvaW50ZXIgaXMgYSBsb3QgbW9yZSBsaWtlbHkgdGhhbiBzZXFsb2NrIHdyYXBwaW5nCj4g
PiA+ID4gYXJvdW5kLgo+ID4gPiAKPiA+ID4gSXQncyBhbiBleGNsdXNpdmUgZmVuY2UuIElmIGl0
IGlzIHJlcGxhY2VkLCBpdCBtdXN0IGJlIGxhdGVyIHRoYW4gYWxsCj4gPiA+IHRoZSBzaGFyZWQg
ZmVuY2VzIChhbmQgZGVwZW5kZW50IG9uIHRoZW0gZGlyZWN0bHkgb3IgaW5kaXJlY3RseSksIGFu
ZAo+ID4gPiBzbyBzdGlsbCBhIGNvbnNpc3RlbnQgc25hcHNob3QuCj4gPiAKPiA+IEFuIGV4dGVu
c2lvbiBvZiB0aGF0IGFyZ3VtZW50IHNheXMgd2UgZG9uJ3QgZXZlbiBuZWVkIHRvIGxvb3AsCj4g
PiAKPiA+ICpsaXN0ID0gcmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVuY2UpOwo+ID4gKnNoYXJlZF9j
b3VudCA9ICpsaXN0ID8gKCpsaXN0KS0+c2hhcmVkX2NvdW50IDogMDsKPiA+IHNtcF9ybWIoKTsK
PiA+ICpleGNsID0gcmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVuY2VfZXhjbCk7Cj4gPiAKPiA+IEdp
dmVzIGEgY29uc2lzdGVudCBzbmFwc2hvdC4gSXQgZG9lc24ndCBtYXR0ZXIgaWYgdGhlIGZlbmNl
X2V4Y2wgaXMKPiA+IGJlZm9yZSBvciBhZnRlciB0aGUgc2hhcmVkX2xpc3QgLS0gaWYgaXQncyBh
ZnRlciwgaXQncyBhIHN1cGVyc2V0IG9mIGFsbAo+ID4gZmVuY2VzLCBpZiBpdCdzIGJlZm9yZSwg
d2UgaGF2ZSBhIGNvcnJlY3QgbGlzdCBvZiBzaGFyZWQgZmVuY2VzIHRoZQo+ID4gZWFybGllciBm
ZW5jZV9leGNsLgo+IAo+IFRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIHBvaW50IG9mIHRoZSBsb29w
IGlzIHRoYXQgd2UgZG8gbmVlZCBhIGNoZWNrIG9uCj4gdGhlIGZlbmNlcyBhZnRlciB0aGUgZnVs
bCBtZW1vcnkgYmFycmllci4KPiAKPiBUaGlua2luZyBvZiB0aGUgcmF0aW9uYWxlIGJlYXRlbiBv
dXQgZm9yIGRtYV9mZW5jZV9nZXRfZXhjbF9yY3Vfc2FmZSgpCj4gCj4gV2UgZG9uJ3QgaGF2ZSBh
IGZ1bGwgbWVtb3J5IGJhcnJpZXIgaGVyZSwgc28gdGhpcyBjYW5ub3QgYmUgdXNlZCBzYWZlbHkK
PiBpbiBsaWdodCBvZiBmZW5jZSByZWFsbG9jYXRpb24uCgppLmUuIHdlIG5lZWQgdG8gcmVzdG9y
ZSB0aGUgbG9vcHMgaW4gdGhlIGNhbGxlcnMsCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9idXN5LmMKaW5kZXggYTJhZmYxZDgyOTBlLi5mMDE5MDYyYzhjZDcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwpAQCAtMTEwLDYgKzExMCw3IEBAIGk5MTVf
Z2VtX2J1c3lfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKICAgICAg
ICAgKiB0byByZXBvcnQgdGhlIG92ZXJhbGwgYnVzeW5lc3MuIFRoaXMgaXMgd2hhdCB0aGUgd2Fp
dC1pb2N0bCBkb2VzLgogICAgICAgICAqCiAgICAgICAgICovCityZXRyeToKICAgICAgICBkbWFf
cmVzdl9mZW5jZXMob2JqLT5iYXNlLnJlc3YsICZleGNsLCAmbGlzdCwgJnNoYXJlZF9jb3VudCk7
CgogICAgICAgIC8qIFRyYW5zbGF0ZSB0aGUgZXhjbHVzaXZlIGZlbmNlIHRvIHRoZSBSRUFEICph
bmQqIFdSSVRFIGVuZ2luZSAqLwpAQCAtMTIyLDYgKzEyMywxMCBAQCBpOTE1X2dlbV9idXN5X2lv
Y3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAgICAgICAgICAgICAgICBh
cmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNlKTsKICAgICAgICB9CgorICAgICAg
IHNtcF9ybWIoKTsKKyAgICAgICBpZiAoZXhjbCAhPSByY3VfYWNjZXNzX3BvaW50ZXIob2JqLT5i
YXNlLnJlc3YtPmZlbmNlX2V4Y2wpKQorICAgICAgICAgICAgICAgZ290byByZXRyeTsKKwoKd3Jh
cCB0aGF0IHVwIGFzCgpzdGF0aWMgaW5saW5lIGJvb2wKZG1hX3Jlc3ZfZmVuY2VzX3JldHJ5KHN0
cnVjdCBkbWFfcmVzdiAqcmVzdiwgc3RydWN0IGRtYV9mZW5jZSAqZXhjbCkKewoJc21wX3JtYigp
OwoJcmV0dXJuIGV4Y2wgIT0gcmN1X2FjY2Vzc19wb2ludGVyKHJlc3YtPmZlbmNlX2V4Y2wpOwp9
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
