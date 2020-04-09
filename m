Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DA78C1A3849
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 18:51:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16B1D66600
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 16:51:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 099AD66608; Thu,  9 Apr 2020 16:51:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A33E66603;
	Thu,  9 Apr 2020 16:51:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2108466600
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 16:51:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 11E9466611; Thu,  9 Apr 2020 16:51:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 075C666600
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 16:50:52 +0000 (UTC)
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMaNt-0003gC-0y; Thu, 09 Apr 2020 16:50:33 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id B26BC3012D8;
 Thu,  9 Apr 2020 18:50:30 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 962822BA1D82B; Thu,  9 Apr 2020 18:50:30 +0200 (CEST)
Date: Thu, 9 Apr 2020 18:50:30 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Minchan Kim <minchan@kernel.org>
Message-ID: <20200409165030.GG20713@hirez.programming.kicks-ass.net>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <20200409160826.GC247701@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409160826.GC247701@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Christoph Hellwig <hch@lst.de>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 sergey.senozhatsky@gmail.com, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
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

T24gVGh1LCBBcHIgMDksIDIwMjAgYXQgMDk6MDg6MjZBTSAtMDcwMCwgTWluY2hhbiBLaW0gd3Jv
dGU6Cj4gT24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDE6NTk6MDhQTSArMDIwMCwgQ2hyaXN0b3Bo
IEhlbGx3aWcgd3JvdGU6Cj4gPiBUaGlzIGFsbG93cyB0byB1bmV4cG9ydCBtYXBfdm1fYXJlYSBh
bmQgdW5tYXBfa2VybmVsX3JhbmdlLCB3aGljaCBhcmUKPiA+IHJhdGhlciBkZWVwIGludGVybmFs
IGFuZCBzaG91bGQgbm90IGJlIGF2YWlsYWJsZSB0byBtb2R1bGVzLgo+IAo+IEV2ZW4gdGhvdWdo
IEkgZG9uJ3Qga25vdyBob3cgbWFueSB1c2VjYXNlIHdlIGhhdmUgdXNpbmcgenNtYWxsb2MgYXMK
PiBtb2R1bGUoSSBoZWFyZCBvbmx5IG9uY2UgYnkgZHVtYiByZWFzb24pLCBpdCBjb3VsZCBhZmZl
Y3QgZXhpc3RpbmcKPiB1c2Vycy4gVGh1cywgcGxlYXNlIGluY2x1ZGUgY29uY3JldGUgZXhwbGFu
YXRpb24gaW4gdGhlIHBhdGNoIHRvCj4ganVzdGlmeSB3aGVuIHRoZSBjb21wbGFpbiBvY2N1cnMu
CgpUaGUganVzdGlmaWNhdGlvbiBpcyAnd2UgY2FuIHVuZXhwb3J0IGZ1bmN0aW9ucyB0aGF0IGhh
dmUgbm8gc2FuZSByZWFzb24Kb2YgYmVpbmcgZXhwb3J0ZWQgaW4gdGhlIGZpcnN0IHBsYWNlJy4K
ClRoZSBDaGFuZ2Vsb2cgcHJldHR5IG11Y2ggc2F5cyB0aGF0LgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
