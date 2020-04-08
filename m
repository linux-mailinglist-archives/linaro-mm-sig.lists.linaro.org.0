Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A6A1A21FD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 14:26:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C56E66645
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 12:26:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3F30C666C8; Wed,  8 Apr 2020 12:26:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D419966627;
	Wed,  8 Apr 2020 12:25:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 88E1266631
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:25:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7BD436663F; Wed,  8 Apr 2020 12:25:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by lists.linaro.org (Postfix) with ESMTPS id 3F3CA6663B
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:25:16 +0000 (UTC)
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9lQ-0001k8-35; Wed, 08 Apr 2020 12:25:04 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 833F5300478;
 Wed,  8 Apr 2020 14:25:01 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 702412BA90A66; Wed,  8 Apr 2020 14:25:01 +0200 (CEST)
Date: Wed, 8 Apr 2020 14:25:01 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200408122501.GA20713@hirez.programming.kicks-ass.net>
References: <20200408115926.1467567-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [Linaro-mm-sig] decruft the vmalloc API
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDE6NTg6NThQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gSGkgYWxsLAo+IAo+IFBldGVyIG5vdGljZWQgdGhhdCB3aXRoIHNvbWUgZHVt
YiBsdWNrIHlvdSBjYW4gdG9hc3QgdGhlIGtlcm5lbCBhZGRyZXNzCj4gc3BhY2Ugd2l0aCBleHBv
cnRlZCB2bWFsbG9jIHN5bWJvbHMuCj4gCj4gSSB1c2VkIHRoaXMgYXMgYW4gb3Bwb3J0dW5pdHkg
dG8gZGVjcnVmdCB0aGUgdm1hbGxvYy5jIEFQSSBhbmQgbWFrZSBpdAo+IG11Y2ggbW9yZSBzeXN0
ZW1hdGljLiAgVGhpcyBhbHNvIHJlbW92ZXMgYW55IGNoYW5jZSB0byBjcmVhdGUgdm1hbGxvYwo+
IG1hcHBpbmdzIG91dHNpZGUgdGhlIGRlc2lnbmF0ZWQgYXJlYXMgb3IgdXNpbmcgZXhlY3V0YWJs
ZSBwZXJtaXNzaW9ucwo+IGZyb20gbW9kdWxlcy4gIEJlc2lkZXMgdGhhdCBpdCByZW1vdmVzIG1v
cmUgdGhhbiAzMDAgbGluZXMgb2YgY29kZS4KPiAKCkxvb2tzIGdyZWF0LCB0aGFua3MgZm9yIGRv
aW5nIHRoaXMhCgpBY2tlZC1ieTogUGV0ZXIgWmlqbHN0cmEgKEludGVsKSA8cGV0ZXJ6QGluZnJh
ZGVhZC5vcmc+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
