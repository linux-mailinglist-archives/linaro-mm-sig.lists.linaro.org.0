Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 087228DA41
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2019 19:16:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B4DE61891
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2019 17:16:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2D11E61898; Wed, 14 Aug 2019 17:16:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B7F96184D;
	Wed, 14 Aug 2019 17:15:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9C2196188F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2019 17:12:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8C9996188D; Wed, 14 Aug 2019 17:12:08 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 8BA0D618DF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2019 17:07:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18106770-1500050 for multiple; Wed, 14 Aug 2019 18:06:19 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>, christian.koenig@amd.com
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156580096818.2714.13643616122908209617@skylake-alporthouse-com>
References: <20190807135312.1730-1-christian.koenig@amd.com>
 <20190807135312.1730-4-christian.koenig@amd.com>
 <156518744066.6198.17572013738158664135@skylake-alporthouse-com>
 <ccc20434-0380-c0b8-1ccb-1f7d9ae1a4a5@gmail.com>
 <20190814153908.GI7444@phenom.ffwll.local>
 <156580096818.2714.13643616122908209617@skylake-alporthouse-com>
Message-ID: <156580237838.2301.9210706924490719639@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 14 Aug 2019 18:06:18 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTQgMTc6NDI6NDgpCj4gUXVvdGluZyBEYW5p
ZWwgVmV0dGVyICgyMDE5LTA4LTE0IDE2OjM5OjA4KQo+ID4gPiA+ID4gKyAgICAgICB9IHdoaWxl
IChyY3VfYWNjZXNzX3BvaW50ZXIob2JqLT5mZW5jZV9leGNsKSAhPSAqZXhjbCk7Cj4gPiAKPiA+
IFdoYXQgaWYgc29tZW9uZSBpcyByZWFsIGZhc3QgKGxpa2UgcmVhbGx5IHJlYWwgZmFzdCkgYW5k
IHJlY3ljbGVzIHRoZQo+ID4gZXhjbHVzaXZlIGZlbmNlIHNvIHlvdSByZWFkIHRoZSBzYW1lIHBv
aW50ZXIgdHdpY2UsIGJ1dCBldmVyeXRoaW5nIGVsc2UKPiA+IGNoYW5nZWQ/IHJldXNlZCBmZW5j
ZSBwb2ludGVyIGlzIGEgbG90IG1vcmUgbGlrZWx5IHRoYW4gc2VxbG9jayB3cmFwcGluZwo+ID4g
YXJvdW5kLgo+IAo+IEl0J3MgYW4gZXhjbHVzaXZlIGZlbmNlLiBJZiBpdCBpcyByZXBsYWNlZCwg
aXQgbXVzdCBiZSBsYXRlciB0aGFuIGFsbAo+IHRoZSBzaGFyZWQgZmVuY2VzIChhbmQgZGVwZW5k
ZW50IG9uIHRoZW0gZGlyZWN0bHkgb3IgaW5kaXJlY3RseSksIGFuZAo+IHNvIHN0aWxsIGEgY29u
c2lzdGVudCBzbmFwc2hvdC4KCkFuIGV4dGVuc2lvbiBvZiB0aGF0IGFyZ3VtZW50IHNheXMgd2Ug
ZG9uJ3QgZXZlbiBuZWVkIHRvIGxvb3AsCgoqbGlzdCA9IHJjdV9kZXJlZmVyZW5jZShvYmotPmZl
bmNlKTsKKnNoYXJlZF9jb3VudCA9ICpsaXN0ID8gKCpsaXN0KS0+c2hhcmVkX2NvdW50IDogMDsK
c21wX3JtYigpOwoqZXhjbCA9IHJjdV9kZXJlZmVyZW5jZShvYmotPmZlbmNlX2V4Y2wpOwoKR2l2
ZXMgYSBjb25zaXN0ZW50IHNuYXBzaG90LiBJdCBkb2Vzbid0IG1hdHRlciBpZiB0aGUgZmVuY2Vf
ZXhjbCBpcwpiZWZvcmUgb3IgYWZ0ZXIgdGhlIHNoYXJlZF9saXN0IC0tIGlmIGl0J3MgYWZ0ZXIs
IGl0J3MgYSBzdXBlcnNldCBvZiBhbGwKZmVuY2VzLCBpZiBpdCdzIGJlZm9yZSwgd2UgaGF2ZSBh
IGNvcnJlY3QgbGlzdCBvZiBzaGFyZWQgZmVuY2VzIHRoZQplYXJsaWVyIGZlbmNlX2V4Y2wuCi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
