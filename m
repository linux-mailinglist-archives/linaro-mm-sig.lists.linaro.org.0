Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DF884B50
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 14:20:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 793F0617F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 12:20:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6A5D7617FC; Wed,  7 Aug 2019 12:20:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 584D4617F2;
	Wed,  7 Aug 2019 12:19:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7E2C9617DA
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 12:19:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 71975617F2; Wed,  7 Aug 2019 12:19:52 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id B556E617F1
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 12:19:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17917724-1500050 for multiple; Wed, 07 Aug 2019 13:19:14 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20190806150134.104222-1-christian.koenig@amd.com>
 <20190806150134.104222-8-christian.koenig@amd.com>
 <156512144622.6198.5051468008483309313@skylake-alporthouse-com>
 <7fc516cd-bbd7-1829-1851-7d7deadb0468@gmail.com>
In-Reply-To: <7fc516cd-bbd7-1829-1851-7d7deadb0468@gmail.com>
Message-ID: <156518035127.6198.2346142882693144294@skylake-alporthouse-com>
Date: Wed, 07 Aug 2019 13:19:11 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 8/8] dma-buf: nuke reservation_object
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA3IDEzOjA4OjM4KQo+IEFtIDA2LjA4
LjE5IHVtIDIxOjU3IHNjaHJpZWIgQ2hyaXMgV2lsc29uOgo+ID4gSWYgd2UgYWRkIHRvIHNoYXJl
ZC1saXN0IGR1cmluZyB0aGUgcmVhZCwgLi4uIEhtbSwgYWN0dWFsbHkgd2Ugc2hvdWxkCj4gPiBy
ZXR1cm4gbnVtX2xpc3QsIGkuZS4KPiA+Cj4gPiBkbyB7Cj4gPiAgICAgICAqbGlzdCA9IHJjdV9k
ZXJlZmVyZW5jZShvYmotPmZlbmNlKTsKPiA+ICAgICAgIG51bV9saXN0ID0gKmxpc3QgPyAoKmxp
c3QpLT5jb3VudCA6IDA7Cj4gPiAgICAgICBzbXBfcm1iKCk7Cj4gPiB9IHdoaWxlICguLi4pCj4g
Pgo+ID4gcmV0dXJuIG51bV9saXN0Lgo+ID4KPiA+IGFzIHRoZSByZWxhdGlvbnNoaXAgYmV0d2Vl
biB0aGUgY291bnQgYW5kIHRoZSBmZW5jZSBlbnRyaWVzIGlzIGFsc28KPiA+IGRldGVybWluZWQg
YnkgdGhlIG1iIGluIGFkZF9zaGFyZWRfZmVuY2UuCj4gCj4gSSd2ZSByZWFkIHRoYXQgbXVsdGlw
bGUgdGltZXMgbm93LCBidXQgY2FuJ3QgZm9sbG93LiBXaHkgc2hvdWxkIHdlIGRvIHRoaXM/Cj4g
Cj4gVGhlIG9ubHkgaW1wb3J0YW50IHRoaW5nIGlzIHRoYXQgdGhlIHJlYWRlcnMgc2VlIHRoZSBu
ZXcgZmVuY2UgYmVmb3JlIAo+IHRoZSBpbmNyZW1lbnQgb2YgdGhlIG51bWJlciBvZiBmZW5jZXMu
CgpFeGFjdGx5LiBXZSBvcmRlciB0aGUgc3RvcmUgc28gdGhhdCB0aGUgZmVuY2UgaXMgaW4gdGhl
IGxpc3QgYmVmb3JlIHdlCnVwZGF0ZSB0aGUgY291bnQgKHNvIHRoYXQgd2UgZG9uJ3QgcmVhZCBn
YXJiYWdlIGJlY2F1c2UgdGhlIGZlbmNlIGlzbid0CnRoZXJlIHlldCkuCgpCdXQgd2UgZG9uJ3Qg
aGF2ZSB0aGUgZXF1aXZhbGVudCBoZXJlIGZvciB0aGUgcmVhZCBvbmNlIHRoZSBybWIgaXMKcmVt
b3ZlZCBmcm9tIHRoZSBzZXFjb3VudF9yZWFkX2JlZ2luL2VuZCBsb29waW5nLiBXZSBuZWVkIHRv
IHNlZSB0aGUKdXBkYXRlIGluIHRoZSBzYW1lIG9yZGVyIGFzIHdhcyBzdG9yZWQsIGFuZCBvbmx5
IHVzZSB0aGUgY29oZXJlbnQKcG9ydGlvbiBvZiB0aGUgbGlzdC4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
