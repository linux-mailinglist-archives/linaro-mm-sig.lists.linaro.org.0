Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B291A3CA2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2020 00:58:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC3E8665B5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 22:58:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B8849665F7; Thu,  9 Apr 2020 22:58:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,TVD_SUBJ_WIPE_DEBT,T_SPF_HELO_PERMERROR
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E800166609;
	Thu,  9 Apr 2020 22:57:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9D80F665B5
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 22:57:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8856666609; Thu,  9 Apr 2020 22:57:57 +0000 (UTC)
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by lists.linaro.org (Postfix) with ESMTPS id 8066A665B5
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 22:57:55 +0000 (UTC)
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 039Muffv010125
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 9 Apr 2020 17:56:47 -0500
Message-ID: <0f360b9cb72b80bae0d0db8150f65598c2776268.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 10 Apr 2020 08:56:41 +1000
In-Reply-To: <CAKMK7uHtkLvdsWFGiAtkzVa5mpnDvXkn3CHZQ6bgJ_enbyAc8A@mail.gmail.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
 <20200408122504.GO3456981@phenom.ffwll.local>
 <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
 <CAKMK7uHtkLvdsWFGiAtkzVa5mpnDvXkn3CHZQ6bgJ_enbyAc8A@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>, Linux MM <linux-mm@kvack.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 "open list:GENERIC INCLUDE/A..." <linux-arch@vger.kernel.org>,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, X86 ML <x86@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Peter Zijlstra <peterz@infradead.org>,
 Nitin Gupta <ngupta@vflare.org>, Haiyang Zhang <haiyangz@microsoft.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 bpf <bpf@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg 
 Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [Linaro-mm-sig] [PATCH 19/28] gpu/drm: remove the powerpc hack
 in drm_legacy_sg_alloc
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

T24gVGh1LCAyMDIwLTA0LTA5IGF0IDExOjQxICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+
IE5vdyBpZiB0aGVzZSBib3hlcyBkaWRuJ3QgZXZlciBoYXZlIGFncCB0aGVuIEkgdGhpbmsgd2Ug
Y2FuIGdldCBhd2F5Cj4gd2l0aCBkZWxldGluZyB0aGlzLCBzaW5jZSB3ZSd2ZSBhbHJlYWR5IGRl
bGV0ZWQgdGhlIGxlZ2FjeSByYWRlb24KPiBkcml2ZXIuIEFuZCB0aGF0IG9uZSB1c2VkIHZtYWxs
b2MgZm9yIGV2ZXJ5dGhpbmcuIFRoZSBuZXcga21zIG9uZSBkb2VzCj4gdXNlIHRoZSBkbWEtYXBp
IGlmIHRoZSBncHUgaXNuJ3QgY29ubmVjdGVkIHRocm91Z2ggYWdwCgpEZWZpbml0ZWx5IG5vIEFH
UCB0aGVyZS4KCkNoZWVycwpCZW4uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
