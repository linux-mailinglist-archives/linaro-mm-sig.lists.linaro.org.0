Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C7D2004C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:14:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F9BB61750
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 09:14:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 33EC866592; Fri, 19 Jun 2020 09:14:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C55AB66597;
	Fri, 19 Jun 2020 09:14:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3FA5166588
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 09:14:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 29ECA66597; Fri, 19 Jun 2020 09:14:13 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 9FCC966588
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 09:14:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21546831-1500050 for multiple; Fri, 19 Jun 2020 10:13:39 +0100
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHEwj6jiZkRZ5PaCUNWcuU9oE4KYm4XHZwHnFzEuChZ7w@mail.gmail.com>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-4-daniel.vetter@ffwll.ch>
 <159186243606.1506.4437341616828968890@build.alporthouse.com>
 <CAPM=9ty6r1LuXAH_rf98GH0R9yN3x8xzKPjZG3QyvokpQBR-Hg@mail.gmail.com>
 <CAPj87rM0S2OPssf+WA+pjanT-0Om3yuUM1zUJCv4qTx5VYE=Fw@mail.gmail.com>
 <159255511144.7737.12635440776531222029@build.alporthouse.com>
 <CAKMK7uHEwj6jiZkRZ5PaCUNWcuU9oE4KYm4XHZwHnFzEuChZ7w@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <159255801588.7737.4425728073225310839@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 19 Jun 2020 10:13:35 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: amd-gfx mailing list <amd-gfx@lists.freedesktop.org>, linux-rdma <linux-rdma@vger.kernel.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, Daniel Stone <daniel@fooishbar.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Thomas Hellstrom <thomas.hellstrom@intel.com>, DRI Development <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@intel.com>, Mika Kuoppala <mika.kuoppala@intel.com>, Christian König <christian.koenig@amd.com>, Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 03/18] dma-fence: basic
	lockdep annotations
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

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDIwLTA2LTE5IDA5OjUxOjU5KQo+IE9uIEZyaSwgSnVu
IDE5LCAyMDIwIGF0IDEwOjI1IEFNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPiB3cm90ZToKPiA+IEZvcmNpbmcgYSBnZW5lcmljIHByaW1pdGl2ZSB0byBhbHdheXMgYmUg
cGFydCBvZiB0aGUgc2FtZSBnbG9iYWwgbWFwIGlzCj4gPiBob3JyaWJsZS4KPiAKPiBBbmQgIG5v
IGNvbmNyZXRlIGV4YW1wbGUgb3IgcmVhc29uIGZvciB3aHkgdGhhdCdzIG5vdCBwb3NzaWJsZS4K
PiBCZWNhdXNlIGZyYW5rbHkgaXQncyBub3QgaG9ycmlibGUsIHRoaXMgaXMgd2hhdCB1cHN0cmVh
bSBpcyBhbGwgYWJvdXQ6Cj4gU2hhcmVkIGNvbmNlcHRzLCBzaGFyZWQgY29udHJhY3RzLCBzaGFy
ZWQgY29kZS4KPiAKPiBUaGUgcHJvcG9zZWQgcGF0Y2hlcyBtaWdodCB2ZXJ5IHdlbGwgZW5jb2Rl
IHRoZSB3cm9uZyBjb250cmFjdCwgdGhhdCdzCj4gYWxsIHVwIGZvciBkaXNjdXNzaW9uLiBCdXQg
ZnVuZGFtZW50YWxseSBxdWVzdGlvbmluZyB0aGF0IHdlIG5lZWQgb25lCj4gaXMgbWlzc2luZyB3
aGF0IHVwc3RyZWFtIGlzIGFsbCBhYm91dC4KClRoZW4gSSBoYXZlIG5vdCBjbGVhcmx5IGNvbW11
bmljYXRlZCwgYXMgbXkgb3BpbmlvbiBpcyBub3QgdGhhdAp2YWxpZGF0aW9uIGlzIHdvcnRobGVz
cywgYnV0IHRoYXQgdGhlIGltcGxlbWVudGF0aW9uIGlzIGVuc2hyaW5pbmcgYQpnbG9iYWwgcHJv
cGVydHkgb24gYSBsb3cgbGV2ZWwgcHJpbWl0aXZlIHRoYXQgcHJldmVudHMgaXQgZnJvbSBiZWlu
Zwp1c2VkIGVsc2V3aGVyZS4gQW5kIEkgd2FudCB0byByZXBsYWNlIGNvbXBsZXRpb24gW2NoYWlu
c10gd2l0aCBmZW5jZXMsIGFuZApiaW8gd2l0aCBmZW5jZXMsIGFuZCBjbG9zdXJlcyB3aXRoIGZl
bmNlcywgYW5kIHdoYXQgb3RoZXIgZXF1aXZhbGVuY2llcwp0aGVyZSBhcmUgaW4gdGhlIGtlcm5l
bC4gVGhlIGZlbmNlIGlzIGFzIGNlbnRyYWwgYSBsb2NraW5nIGNvbnN0cnVjdCBhcwpzdHJ1Y3Qg
Y29tcGxldGlvbiBhbmQgZGVzZXJ2ZXMgdG8gYmUgYSBmb3VuZGF0aW9uYWwgcHJpbWl0aXZlIHBy
b3ZpZGVkCmJ5IGtlcm5lbC8gdXNlZCB0aHJvdWdob3V0IGFsbCBkcml2ZXJzIGZvciBkaXNjcmV0
ZSBwcm9ibGVtIGRvbWFpbnMuCgpUaGlzIGlzIG5hcnJvd2luZyBkbWFfZmVuY2Ugd2hlcmVieSBh
ZGRpbmcKCXN0cnVjdCBsb2NrZGVwX21hcCAqZG1hX2ZlbmNlOjp3YWl0X21hcAphbmQgYW5ub3Rh
dGluZyBsaW5rYWdlLCBhbGxvd3MgeW91IHRvIGNvbnRpbnVlIHRvIHNwZWNpZnkgdGhhdCBhbGwK
ZG1hX2ZlbmNlIHVzZWQgZm9yIGEgcGFydGljdWxhciBwdXJwb3NlIG11c3QgZm9sbG93IGNvbW1v
biBydWxlcywKd2l0aG91dCByZXN0cmljdGluZyB0aGUgcHJpbWl0aXZlIGZvciB1c2VzIG91dHNp
ZGUgb2YgdGhpcyBzY29wZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
