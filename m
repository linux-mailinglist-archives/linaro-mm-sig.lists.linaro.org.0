Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 722631B6D9B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:55:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 969996602B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:55:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7C99E6013A; Fri, 24 Apr 2020 05:55:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDAEE6658B;
	Fri, 24 Apr 2020 05:30:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2D06B665BE
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:36:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 21D0B66626; Wed,  8 Apr 2020 15:36:08 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id D1010665BE
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:36:06 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0291668C4E; Wed,  8 Apr 2020 17:36:02 +0200 (CEST)
Date: Wed, 8 Apr 2020 17:36:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20200408153602.GA28081@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <c0c86feb-b3d8-78f2-127f-71d682ffc51f@infradead.org>
 <20200408151203.GN20730@hirez.programming.kicks-ass.net>
 <20200408151519.GQ21484@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408151519.GQ21484@bombadil.infradead.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: linux-hyperv@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Christoph Hellwig <hch@lst.de>, David Airlie <airlied@linux.ie>,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
 iommu@lists.linux-foundation.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [Linaro-mm-sig] [PATCH 10/28] mm: only allow page table
 mappings for built-in zsmalloc
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDg6MTU6MTlBTSAtMDcwMCwgTWF0dGhldyBXaWxjb3gg
d3JvdGU6Cj4gPiA+ID4gIGNvbmZpZyBaU01BTExPQ19QR1RBQkxFX01BUFBJTkcKPiA+ID4gPiAg
CWJvb2wgIlVzZSBwYWdlIHRhYmxlIG1hcHBpbmcgdG8gYWNjZXNzIG9iamVjdCBpbiB6c21hbGxv
YyIKPiA+ID4gPiAtCWRlcGVuZHMgb24gWlNNQUxMT0MKPiA+ID4gPiArCWRlcGVuZHMgb24gWlNN
QUxMT0M9eQo+ID4gPiAKPiA+ID4gSXQncyBhIGJvb2wgc28gdGhpcyBzaG91bGRuJ3QgbWF0dGVy
Li4uIG5vdCBuZWVkZWQuCj4gPiAKPiA+IE15IG1tL0tjb25maWcgaGFzOgo+ID4gCj4gPiBjb25m
aWcgWlNNQUxMT0MKPiA+IAl0cmlzdGF0ZSAiTWVtb3J5IGFsbG9jYXRvciBmb3IgY29tcHJlc3Nl
ZCBwYWdlcyIKPiA+IAlkZXBlbmRzIG9uIE1NVQo+ID4gCj4gPiB3aGljaCBJIHRoaW5rIG1lYW5z
IGl0IGNhbiBiZSBtb2R1bGFyLCBubz8KPiAKPiBSYW5keSBtZWFucyB0aGF0IFpTTUFMTE9DX1BH
VEFCTEVfTUFQUElORyBpcyBhIGJvb2wsIHNvIEkgdGhpbmsgaGNoJ3MgcGF0Y2gKPiBpcyB3cm9u
ZyAuLi4gaWYgWlNNQUxMT0MgaXMgJ20nIHRoZW4gWlNNQUxMT0NfUEdUQUJMRV9NQVBQSU5HIHdv
dWxkIGJlY29tZQo+ICduJyBpbnN0ZWFkIG9mICd5Jy4KCkluIExpbnVzJyB0cmVlIHlvdSBjYW4g
c2VsZWN0IFBHVEFCTEVfTUFQUElORz15IHdpdGggWlNNQUxMT0M9bSwKYW5kIHRoYXQgZml0cyBt
eSB1bmRlcnN0YW5kaW5nIG9mIHRoZSBrYnVpbGQgbGFuZ3VhZ2UuICBXaXRoIHRoaXMKcGF0Y2gg
SSBjYW4ndCBhbnltb3JlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
