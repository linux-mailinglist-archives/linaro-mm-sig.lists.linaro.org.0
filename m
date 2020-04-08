Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA351A2561
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 17:37:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFCC366645
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 15:37:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D1DC7666C8; Wed,  8 Apr 2020 15:37:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E266E66626;
	Wed,  8 Apr 2020 15:37:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 719FA665BE
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:37:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 65A4566626; Wed,  8 Apr 2020 15:37:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 694C4665BE
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:37:02 +0000 (UTC)
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCl9-00069a-K4; Wed, 08 Apr 2020 15:36:59 +0000
To: Matthew Wilcox <willy@infradead.org>, Peter Zijlstra <peterz@infradead.org>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <c0c86feb-b3d8-78f2-127f-71d682ffc51f@infradead.org>
 <20200408151203.GN20730@hirez.programming.kicks-ass.net>
 <20200408151519.GQ21484@bombadil.infradead.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <139a494a-f946-fd4b-4854-6ff625e4c24f@infradead.org>
Date: Wed, 8 Apr 2020 08:36:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200408151519.GQ21484@bombadil.infradead.org>
Content-Language: en-US
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
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
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

T24gNC84LzIwIDg6MTUgQU0sIE1hdHRoZXcgV2lsY294IHdyb3RlOgo+IE9uIFdlZCwgQXByIDA4
LCAyMDIwIGF0IDA1OjEyOjAzUE0gKzAyMDAsIFBldGVyIFppamxzdHJhIHdyb3RlOgo+PiBPbiBX
ZWQsIEFwciAwOCwgMjAyMCBhdCAwODowMTowMEFNIC0wNzAwLCBSYW5keSBEdW5sYXAgd3JvdGU6
Cj4+PiBIaSwKPj4+Cj4+PiBPbiA0LzgvMjAgNDo1OSBBTSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3Jv
dGU6Cj4+Pj4gZGlmZiAtLWdpdCBhL21tL0tjb25maWcgYi9tbS9LY29uZmlnCj4+Pj4gaW5kZXgg
MzY5NDlhOTQyNWI4Li42MTRjYzc4NmI1MTkgMTAwNjQ0Cj4+Pj4gLS0tIGEvbW0vS2NvbmZpZwo+
Pj4+ICsrKyBiL21tL0tjb25maWcKPj4+PiBAQCAtNzAyLDcgKzcwMiw3IEBAIGNvbmZpZyBaU01B
TExPQwo+Pj4+ICAKPj4+PiAgY29uZmlnIFpTTUFMTE9DX1BHVEFCTEVfTUFQUElORwo+Pj4+ICAJ
Ym9vbCAiVXNlIHBhZ2UgdGFibGUgbWFwcGluZyB0byBhY2Nlc3Mgb2JqZWN0IGluIHpzbWFsbG9j
Igo+Pj4+IC0JZGVwZW5kcyBvbiBaU01BTExPQwo+Pj4+ICsJZGVwZW5kcyBvbiBaU01BTExPQz15
Cj4+Pgo+Pj4gSXQncyBhIGJvb2wgc28gdGhpcyBzaG91bGRuJ3QgbWF0dGVyLi4uIG5vdCBuZWVk
ZWQuCj4+Cj4+IE15IG1tL0tjb25maWcgaGFzOgo+Pgo+PiBjb25maWcgWlNNQUxMT0MKPj4gCXRy
aXN0YXRlICJNZW1vcnkgYWxsb2NhdG9yIGZvciBjb21wcmVzc2VkIHBhZ2VzIgo+PiAJZGVwZW5k
cyBvbiBNTVUKPj4KPj4gd2hpY2ggSSB0aGluayBtZWFucyBpdCBjYW4gYmUgbW9kdWxhciwgbm8/
CgphY2suIEkgbWlzcmVhZCBpdC4KCj4gUmFuZHkgbWVhbnMgdGhhdCBaU01BTExPQ19QR1RBQkxF
X01BUFBJTkcgaXMgYSBib29sLCBzbyBJIHRoaW5rIGhjaCdzIHBhdGNoCj4gaXMgd3JvbmcgLi4u
IGlmIFpTTUFMTE9DIGlzICdtJyB0aGVuIFpTTUFMTE9DX1BHVEFCTEVfTUFQUElORyB3b3VsZCBi
ZWNvbWUKPiAnbicgaW5zdGVhZCBvZiAneScuCgpzaWdoLCBJIHdpc2ggdGhhdCBJIGhhZCBtZWFu
dCB0aGF0LiA6KQoKdGhhbmtzLgoKLS0gCn5SYW5keQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
