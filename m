Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6773A2F5477
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 22:10:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 885DA617D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 21:10:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 79D4A66734; Wed, 13 Jan 2021 21:10:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RDNS_NONE,SPF_HELO_SOFTFAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C9A6666E9;
	Wed, 13 Jan 2021 21:10:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3C8F060813
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 21:10:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2BB42666E9; Wed, 13 Jan 2021 21:10:21 +0000 (UTC)
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by lists.linaro.org (Postfix) with ESMTPS id 2996760813
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 21:10:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23589380-1500050 for multiple; Wed, 13 Jan 2021 21:08:56 +0000
MIME-Version: 1.0
In-Reply-To: <CAKMK7uEnnEj_YAR5Tm3jpS7MNPkqB43JBhQnY_K0YQ+LE9wL1g@mail.gmail.com>
References: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
 <161055261490.6195.7986280621869334351@build.alporthouse.com>
 <CAKMK7uEnnEj_YAR5Tm3jpS7MNPkqB43JBhQnY_K0YQ+LE9wL1g@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 13 Jan 2021 21:08:54 +0000
Message-ID: <161057213487.6195.581396740566956696@build.alporthouse.com>
User-Agent: alot/0.9
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: open@lists.linaro.org, moderated@lists.linaro.org, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, DRI Development <dri-devel@lists.freedesktop.org>, Christian König <christian.koenig@amd.com>, DMA BUFFER SHARING FRAMEWORK <linaro-mm-sig@lists.linaro.org>, David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>, list@lists.linaro.org, DMA BUFFER SHARING FRAMEWORK <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH] drm-buf: Add debug option
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

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDIxLTAxLTEzIDIwOjUwOjExKQo+IE9uIFdlZCwgSmFu
IDEzLCAyMDIxIGF0IDQ6NDMgUE0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+ID4KPiA+IFF1b3RpbmcgRGFuaWVsIFZldHRlciAoMjAyMS0wMS0xMyAxNDow
NjowNCkKPiA+ID4gV2UgaGF2ZSB0b28gbWFueSBwZW9wbGUgYWJ1c2luZyB0aGUgc3RydWN0IHBh
Z2UgdGhleSBjYW4gZ2V0IGF0IGJ1dAo+ID4gPiByZWFsbHkgc2hvdWxkbid0IGluIGltcG9ydGVy
cy4gQXNpZGUgZnJvbSB0aGF0IHRoZSBiYWNraW5nIHBhZ2UgbWlnaHQKPiA+ID4gc2ltcGx5IG5v
dCBleGlzdCAoZm9yIGR5bmFtaWMgcDJwIG1hcHBpbmdzKSBsb29raW5nIGF0IGl0IGFuZCB1c2lu
ZyBpdAo+ID4gPiBlLmcuIGZvciBtbWFwIGNhbiBhbHNvIHdyZWFrIHRoZSBwYWdlIGhhbmRsaW5n
IG9mIHRoZSBleHBvcnRlcgo+ID4gPiBjb21wbGV0ZWx5LiBJbXBvcnRlcnMgcmVhbGx5IG11c3Qg
Z28gdGhyb3VnaCB0aGUgcHJvcGVyIGludGVyZmFjZSBsaWtlCj4gPiA+IGRtYV9idWZfbW1hcCBm
b3IgZXZlcnl0aGluZy4KPiA+Cj4gPiBJZiB0aGUgZXhwb3J0ZXIgZG9lc24ndCB3YW50IHRvIGV4
cG9zZSB0aGUgc3RydWN0IHBhZ2UsIHdoeSBhcmUgdGhleQo+ID4gc2V0dGluZyBpdCBpbiB0aGUg
ZXhwb3J0ZWQgc2dfdGFibGU/Cj4gCj4gWW91IG5lZWQgdG8gc3RvcmUgaXQgc29tZXdoZXJlLCBv
dGhlcndpc2UgdGhlIGRtYS1hcGkgZG9lc24ndCB3b3JrLgo+IEVzc2VudGlhbGx5IHRoaXMgYWNo
aWV2ZXMgY2xlYXJpbmcvcmVzZXR0aW5nIHRoZSBzdHJ1Y3QgcGFnZSBwb2ludGVyLAo+IHdpdGhv
dXQgYWRkaXRpb25hbCBhbGxvY2F0aW9ucyBzb21ld2hlcmUsIG9yIHRvbnMgb2YgZHJpdmVyIGNo
YW5nZXMKPiAoc2luY2UgcHJlc3VtYWJseSB0aGUgZHJpdmVyIGRvZXMga2VlcCB0cmFjayBvZiB0
aGUgc3RydWN0IHBhZ2UKPiBzb21ld2hlcmUgdG9vKS4KCk9ubHkgZm9yIG1hcHBpbmcsIGFuZCB0
aGF0J3MgYmVmb3JlIHRoZSBleHBvcnQgLS0gaWYgdGhlcmUncyBldmVuIGEKc3RydWN0IHBhZ2Ug
dG8gYmVnaW4gd2l0aC4KIAo+IEFsc28gYXMgbG9uZyBhcyB3ZSBoYXZlIHJhbmRvbSBpbXBvcnRl
cnMgbG9va2luZyBhdCBzdHJ1Y3QgcGFnZSB3ZQo+IGNhbid0IGp1c3QgcmVtb3ZlIGl0LCBvciBj
cmFzaGVzIGV2ZXJ5d2hlcmUuIFNvIGl0IGhhcyB0byBiZSBzb21lCj4gZGVidWcgb3B0aW9uIHlv
dSBjYW4gZGlzYWJsZS4KClRvdGFsbHkgYWdyZWVkIHRoYXQgbm90aGluZyBnZW5lcmljIGNhbiBy
ZWx5IG9uIHBhZ2VzIGJlaW5nIHRyYW5zcG9ydGVkCnZpYSBkbWEtYnVmLCBhbmQgbWVtZmQgaXMg
dGhlcmUgaWYgeW91IGRvIHdhbnQgYSBzdWl0YWJsZSB0cmFuc3BvcnQuIFRoZQpvbmUgSSBkb24n
dCBrbm93IGFib3V0IGlzIGRtYS1idWYgaGVhcCwgZG8gYm90aCBwYXJ0aWVzIHRoZXJlIGNvbnNl
bnQgdG8KdHJhbnNwb3J0IHBhZ2VzIHZpYSB0aGUgZG1hLWJ1Zj8gaS5lLiBkbyB0aGV5IGhhdmUg
c3BlY2lhbCBjYXNlcyBmb3IKaW1wb3J0L2V4cG9ydCBiZXR3ZWVuIGhlYXBzPwotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
