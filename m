Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 327E41B6D91
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:54:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 551B2619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:54:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 45F10619CF; Fri, 24 Apr 2020 05:54:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEE3A66576;
	Fri, 24 Apr 2020 05:30:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 528D766626
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:24:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 374EA66631; Wed,  8 Apr 2020 12:24:03 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 1D5AD66626
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:24:02 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 450A868C4E; Wed,  8 Apr 2020 14:23:57 +0200 (CEST)
Date: Wed, 8 Apr 2020 14:23:56 +0200
From: Christoph Hellwig <hch@lst.de>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20200408122356.GA13282@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-18-hch@lst.de>
 <20200408122104.GZ20713@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408122104.GZ20713@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
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
Subject: Re: [Linaro-mm-sig] [PATCH 17/28] mm: remove the prot argument from
	vm_map_ram
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDI6MjE6MDRQTSArMDIwMCwgUGV0ZXIgWmlqbHN0cmEg
d3JvdGU6Cj4gT24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDE6NTk6MTVQTSArMDIwMCwgQ2hyaXN0
b3BoIEhlbGx3aWcgd3JvdGU6Cj4gPiBUaGlzIGlzIGFsd2F5cyBHRlBfS0VSTkVMIC0gZm9yIGxv
bmcgdGVybSBtYXBwaW5ncyB3aXRoIG90aGVyIHByb3BlcnRpZXMKPiA+IHZtYXAgc2hvdWxkIGJl
IHVzZWQuCj4gCj4gIFBBR0VfS0VSTkVMICE9IEdGUF9LRVJORUwgOi0pCgpZZXAuICBUaGUgY29t
cGlsZXIgY29tcGxhaW5lZCBhYm91dCB0aGF0IGEgZmV3IHRpbWVzIDopCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
