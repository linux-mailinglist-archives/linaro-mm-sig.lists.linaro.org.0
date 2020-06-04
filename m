Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5211EE144
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 11:28:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCD7F61726
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 09:28:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B3BCB60BF7; Thu,  4 Jun 2020 09:28:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2507C6097E;
	Thu,  4 Jun 2020 09:27:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4B40B608E0
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 09:27:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3F64A608C9; Thu,  4 Jun 2020 09:27:30 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 875F4608C9
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 09:27:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21392771-1500050 for multiple; Thu, 04 Jun 2020 10:27:01 +0100
MIME-Version: 1.0
In-Reply-To: <CAKMK7uGLAPvvgHCCZhg0cea3Fz=Zqhf-GKS2OC3mZudYe3mKhw@mail.gmail.com>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-4-daniel.vetter@ffwll.ch>
 <edbfc1aa-9297-8202-cef8-1facafaa0dfe@shipmail.org>
 <CAKMK7uGLAPvvgHCCZhg0cea3Fz=Zqhf-GKS2OC3mZudYe3mKhw@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <159126281827.25109.3992161193069793005@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 04 Jun 2020 10:26:58 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, amd-gfx list <amd-gfx@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Thomas Hellstrom <thomas.hellstrom@intel.com>, DRI Development <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@intel.com>, Mika Kuoppala <mika.kuoppala@intel.com>, Christian König <christian.koenig@amd.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 03/18] dma-fence: basic lockdep
	annotations
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

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDIwLTA2LTA0IDEwOjIxOjQ2KQo+IE9uIFRodSwgSnVu
IDQsIDIwMjAgYXQgMTA6NTcgQU0gVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKQo+IDx0aG9tYXNf
b3NAc2hpcG1haWwub3JnPiB3cm90ZToKPiA+Cj4gPgo+ID4gT24gNi80LzIwIDEwOjEyIEFNLCBE
YW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gLi4uCj4gPiA+IFRocmVhZCBBOgo+ID4gPgo+ID4gPiAg
ICAgICBtdXRleF9sb2NrKEEpOwo+ID4gPiAgICAgICBtdXRleF91bmxvY2soQSk7Cj4gPiA+Cj4g
PiA+ICAgICAgIGRtYV9mZW5jZV9zaWduYWwoKTsKPiA+ID4KPiA+ID4gVGhyZWFkIEI6Cj4gPiA+
Cj4gPiA+ICAgICAgIG11dGV4X2xvY2soQSk7Cj4gPiA+ICAgICAgIGRtYV9mZW5jZV93YWl0KCk7
Cj4gPiA+ICAgICAgIG11dGV4X3VubG9jayhBKTsKPiA+ID4KPiA+ID4gVGhyZWFkIEIgaXMgYmxv
Y2tlZCBvbiBBIHNpZ25hbGxpbmcgdGhlIGZlbmNlLCBidXQgQSBuZXZlciBnZXRzIGFyb3VuZAo+
ID4gPiB0byB0aGF0IGJlY2F1c2UgaXQgY2Fubm90IGFjcXVpcmUgdGhlIGxvY2sgQS4KPiA+ID4K
PiA+ID4gTm90ZSB0aGF0IGRtYV9mZW5jZV93YWl0KCkgaXMgYWxsb3dlZCB0byBiZSBuZXN0ZWQg
d2l0aGluCj4gPiA+IGRtYV9mZW5jZV9iZWdpbi9lbmRfc2lnbmFsbGluZyBzZWN0aW9ucy4gVG8g
YWxsb3cgdGhpcyB0byBoYXBwZW4gdGhlCj4gPiA+IHJlYWQgbG9jayBuZWVkcyB0byBiZSB1cGdy
YWRlZCB0byBhIHdyaXRlIGxvY2ssIHdoaWNoIG1lYW5zIHRoYXQgYW55Cj4gPiA+IG90aGVyIGxv
Y2sgaXMgYWNxdWlyZWQgYmV0d2VlbiB0aGUgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKSBj
YWxsIGFuZAo+ID4gPiB0aGUgY2FsbCB0byBkbWFfZmVuY2Vfd2FpdCgpLCBhbmQgc3RpbGwgaGVs
ZCwgdGhpcyB3aWxsIHJlc3VsdCBpbiBhbgo+ID4gPiBpbW1lZGlhdGUgbG9ja2RlcCBjb21wbGFp
bnQuIFRoZSBvbmx5IG90aGVyIG9wdGlvbiB3b3VsZCBiZSB0byBub3QKPiA+ID4gYW5ub3RhdGUg
c3VjaCBjYWxscywgZGVmZWF0aW5nIHRoZSBwb2ludC4gVGhlcmVmb3JlIHRoZXNlIGFubm90YXRp
b25zCj4gPiA+IGNhbm5vdCBiZSBzcHJpbmtsZWQgb3ZlciB0aGUgY29kZSBlbnRpcmVseSBtaW5k
bGVzcyB0byBhdm9pZCBmYWxzZQo+ID4gPiBwb3NpdGl2ZXMuCj4gPgo+ID4gSnVzdCByZWFsaXpl
ZCwgaXNuJ3QgdGhhdCBleGFtcGxlIGFjdHVhbGx5IGEgdHJ1ZSBwb3NpdGl2ZSwgb3IgYXQgbGVh
c3QKPiA+IGEgZ3JlYXQgY2FuZGlkYXRlIGZvciBhIHRydWUgcG9zaXRpdmUsIHNpbmNlIGlmIGFu
b3RoZXIgdGhyZWFkIHJlZW50ZXJzCj4gPiB0aGF0IHNpZ25hbGluZyBwYXRoLCBpdCB3aWxsIGJs
b2NrIG9uIHRoYXQgbXV0ZXgsIGFuZCB0aGUgZmVuY2Ugd291bGQKPiA+IG5ldmVyIGJlIHNpZ25h
bGVkIHVubGVzcyB0aGVyZSBpcyBhbm90aGVyIHNpZ25hbGluZyBwYXRoPwo+IAo+IE5vdCBzdXJl
IEkgdW5kZXJzdGFuZCBmdWxseSwgYnV0IEkgdGhpbmsgdGhlIGFuc3dlciBpcyAiaXQncyBjb21w
bGljYXRlZCIuCgpTZWUgY2Q4MDg0ZjkxYzAyICgibG9ja2luZy9sb2NrZGVwOiBBcHBseSBjcm9z
c3JlbGVhc2UgdG8gY29tcGxldGlvbnMiKQoKZG1hX2ZlbmNlIHVzYWdlIGhlcmUgaXMgbm90aGlu
ZyBidXQgYW5vdGhlciBuYW1lIGZvciBhIGNvbXBsZXRpb24uCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
