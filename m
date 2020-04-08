Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 750131A2488
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 17:02:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93A9B666E7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 15:02:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 79AFB666EE; Wed,  8 Apr 2020 15:02:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBC74666DD;
	Wed,  8 Apr 2020 15:01:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B09F5666DD
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:01:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 99B94666EA; Wed,  8 Apr 2020 15:01:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id BDAB0666DD
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:01:04 +0000 (UTC)
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCCM-0006Vd-CA; Wed, 08 Apr 2020 15:01:02 +0000
To: Christoph Hellwig <hch@lst.de>, Andrew Morton
 <akpm@linux-foundation.org>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Minchan Kim
 <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <c0c86feb-b3d8-78f2-127f-71d682ffc51f@infradead.org>
Date: Wed, 8 Apr 2020 08:01:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200408115926.1467567-11-hch@lst.de>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
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

SGksCgpPbiA0LzgvMjAgNDo1OSBBTSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4gZGlmZiAt
LWdpdCBhL21tL0tjb25maWcgYi9tbS9LY29uZmlnCj4gaW5kZXggMzY5NDlhOTQyNWI4Li42MTRj
Yzc4NmI1MTkgMTAwNjQ0Cj4gLS0tIGEvbW0vS2NvbmZpZwo+ICsrKyBiL21tL0tjb25maWcKPiBA
QCAtNzAyLDcgKzcwMiw3IEBAIGNvbmZpZyBaU01BTExPQwo+ICAKPiAgY29uZmlnIFpTTUFMTE9D
X1BHVEFCTEVfTUFQUElORwo+ICAJYm9vbCAiVXNlIHBhZ2UgdGFibGUgbWFwcGluZyB0byBhY2Nl
c3Mgb2JqZWN0IGluIHpzbWFsbG9jIgo+IC0JZGVwZW5kcyBvbiBaU01BTExPQwo+ICsJZGVwZW5k
cyBvbiBaU01BTExPQz15CgpJdCdzIGEgYm9vbCBzbyB0aGlzIHNob3VsZG4ndCBtYXR0ZXIuLi4g
bm90IG5lZWRlZC4KCj4gIAloZWxwCj4gIAkgIEJ5IGRlZmF1bHQsIHpzbWFsbG9jIHVzZXMgYSBj
b3B5LWJhc2VkIG9iamVjdCBtYXBwaW5nIG1ldGhvZCB0bwo+ICAJICBhY2Nlc3MgYWxsb2NhdGlv
bnMgdGhhdCBzcGFuIHR3byBwYWdlcy4gSG93ZXZlciwgaWYgYSBwYXJ0aWN1bGFyCgoKLS0gCn5S
YW5keQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
