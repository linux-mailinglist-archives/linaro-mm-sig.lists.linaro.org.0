Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9691A24C4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 17:12:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA080666E2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 15:12:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CA366666EB; Wed,  8 Apr 2020 15:12:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F3D1666DC;
	Wed,  8 Apr 2020 15:12:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0DC00666D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:12:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F333C666DC; Wed,  8 Apr 2020 15:12:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by lists.linaro.org (Postfix) with ESMTPS id E15AA666D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:12:23 +0000 (UTC)
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCN3-0004v8-A7; Wed, 08 Apr 2020 15:12:05 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 64B9E300478;
 Wed,  8 Apr 2020 17:12:03 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 2B71F2BB026A0; Wed,  8 Apr 2020 17:12:03 +0200 (CEST)
Date: Wed, 8 Apr 2020 17:12:03 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20200408151203.GN20730@hirez.programming.kicks-ass.net>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <c0c86feb-b3d8-78f2-127f-71d682ffc51f@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0c86feb-b3d8-78f2-127f-71d682ffc51f@infradead.org>
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDg6MDE6MDBBTSAtMDcwMCwgUmFuZHkgRHVubGFwIHdy
b3RlOgo+IEhpLAo+IAo+IE9uIDQvOC8yMCA0OjU5IEFNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90
ZToKPiA+IGRpZmYgLS1naXQgYS9tbS9LY29uZmlnIGIvbW0vS2NvbmZpZwo+ID4gaW5kZXggMzY5
NDlhOTQyNWI4Li42MTRjYzc4NmI1MTkgMTAwNjQ0Cj4gPiAtLS0gYS9tbS9LY29uZmlnCj4gPiAr
KysgYi9tbS9LY29uZmlnCj4gPiBAQCAtNzAyLDcgKzcwMiw3IEBAIGNvbmZpZyBaU01BTExPQwo+
ID4gIAo+ID4gIGNvbmZpZyBaU01BTExPQ19QR1RBQkxFX01BUFBJTkcKPiA+ICAJYm9vbCAiVXNl
IHBhZ2UgdGFibGUgbWFwcGluZyB0byBhY2Nlc3Mgb2JqZWN0IGluIHpzbWFsbG9jIgo+ID4gLQlk
ZXBlbmRzIG9uIFpTTUFMTE9DCj4gPiArCWRlcGVuZHMgb24gWlNNQUxMT0M9eQo+IAo+IEl0J3Mg
YSBib29sIHNvIHRoaXMgc2hvdWxkbid0IG1hdHRlci4uLiBub3QgbmVlZGVkLgoKTXkgbW0vS2Nv
bmZpZyBoYXM6Cgpjb25maWcgWlNNQUxMT0MKCXRyaXN0YXRlICJNZW1vcnkgYWxsb2NhdG9yIGZv
ciBjb21wcmVzc2VkIHBhZ2VzIgoJZGVwZW5kcyBvbiBNTVUKCndoaWNoIEkgdGhpbmsgbWVhbnMg
aXQgY2FuIGJlIG1vZHVsYXIsIG5vPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
