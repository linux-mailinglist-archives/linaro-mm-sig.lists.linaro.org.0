Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E635E1A257B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 17:38:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A34C60F23
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 15:38:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0E7056663F; Wed,  8 Apr 2020 15:38:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 871D8665FF;
	Wed,  8 Apr 2020 15:38:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2483B60F23
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:38:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 156E9665FF; Wed,  8 Apr 2020 15:38:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 0140860F23
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:38:10 +0000 (UTC)
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCm9-0006Y5-CG; Wed, 08 Apr 2020 15:38:07 +0000
To: Christoph Hellwig <hch@lst.de>, Matthew Wilcox <willy@infradead.org>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <c0c86feb-b3d8-78f2-127f-71d682ffc51f@infradead.org>
 <20200408151203.GN20730@hirez.programming.kicks-ass.net>
 <20200408151519.GQ21484@bombadil.infradead.org>
 <20200408153602.GA28081@lst.de>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <ce1cb560-2670-c79d-48eb-e4dd423aecb0@infradead.org>
Date: Wed, 8 Apr 2020 08:37:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200408153602.GA28081@lst.de>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 David Airlie <airlied@linux.ie>, Nitin Gupta <ngupta@vflare.org>,
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

T24gNC84LzIwIDg6MzYgQU0sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IE9uIFdlZCwgQXBy
IDA4LCAyMDIwIGF0IDA4OjE1OjE5QU0gLTA3MDAsIE1hdHRoZXcgV2lsY294IHdyb3RlOgo+Pj4+
PiAgY29uZmlnIFpTTUFMTE9DX1BHVEFCTEVfTUFQUElORwo+Pj4+PiAgCWJvb2wgIlVzZSBwYWdl
IHRhYmxlIG1hcHBpbmcgdG8gYWNjZXNzIG9iamVjdCBpbiB6c21hbGxvYyIKPj4+Pj4gLQlkZXBl
bmRzIG9uIFpTTUFMTE9DCj4+Pj4+ICsJZGVwZW5kcyBvbiBaU01BTExPQz15Cj4+Pj4KPj4+PiBJ
dCdzIGEgYm9vbCBzbyB0aGlzIHNob3VsZG4ndCBtYXR0ZXIuLi4gbm90IG5lZWRlZC4KPj4+Cj4+
PiBNeSBtbS9LY29uZmlnIGhhczoKPj4+Cj4+PiBjb25maWcgWlNNQUxMT0MKPj4+IAl0cmlzdGF0
ZSAiTWVtb3J5IGFsbG9jYXRvciBmb3IgY29tcHJlc3NlZCBwYWdlcyIKPj4+IAlkZXBlbmRzIG9u
IE1NVQo+Pj4KPj4+IHdoaWNoIEkgdGhpbmsgbWVhbnMgaXQgY2FuIGJlIG1vZHVsYXIsIG5vPwo+
Pgo+PiBSYW5keSBtZWFucyB0aGF0IFpTTUFMTE9DX1BHVEFCTEVfTUFQUElORyBpcyBhIGJvb2ws
IHNvIEkgdGhpbmsgaGNoJ3MgcGF0Y2gKPj4gaXMgd3JvbmcgLi4uIGlmIFpTTUFMTE9DIGlzICdt
JyB0aGVuIFpTTUFMTE9DX1BHVEFCTEVfTUFQUElORyB3b3VsZCBiZWNvbWUKPj4gJ24nIGluc3Rl
YWQgb2YgJ3knLgo+IAo+IEluIExpbnVzJyB0cmVlIHlvdSBjYW4gc2VsZWN0IFBHVEFCTEVfTUFQ
UElORz15IHdpdGggWlNNQUxMT0M9bSwKPiBhbmQgdGhhdCBmaXRzIG15IHVuZGVyc3RhbmRpbmcg
b2YgdGhlIGtidWlsZCBsYW5ndWFnZS4gIFdpdGggdGhpcwo+IHBhdGNoIEkgY2FuJ3QgYW55bW9y
ZS4KPiAKCk1ha2VzIHNlbnNlLiB0aGFua3MuCgotLSAKflJhbmR5CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
