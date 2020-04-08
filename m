Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5441A1B6D95
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:55:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7861C619EA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:55:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6967666031; Fri, 24 Apr 2020 05:55:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 581EA66583;
	Fri, 24 Apr 2020 05:30:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 959A9615AD
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:32:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 73CAF665BE; Wed,  8 Apr 2020 15:32:53 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 7155F615AD
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:32:52 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7D40368CEC; Wed,  8 Apr 2020 17:32:45 +0200 (CEST)
Date: Wed, 8 Apr 2020 17:32:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mark Rutland <mark.rutland@arm.com>
Message-ID: <20200408153244.GA27818@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-19-hch@lst.de>
 <20200408123835.GB36478@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408123835.GB36478@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Catalin marinas <catalin.marinas@arm.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, "K. Y. Srinivasan" <kys@microsoft.com>,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Christoph Hellwig <hch@lst.de>, Peter Zijlstra <peterz@infradead.org>,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [Linaro-mm-sig] [PATCH 18/28] mm: enforce that vmap can't map
	pages executable
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDE6Mzg6MzZQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+ID4gK3N0YXRpYyBpbmxpbmUgcGdwcm90X3QgcGdwcm90X254KHBncHJvdF90IHByb3Qp
Cj4gPiArewo+ID4gKwlyZXR1cm4gX19wZ3Byb3QocGdwcm90X3ZhbChwcm90KSB8IF9QQUdFX05Y
KTsKPiA+ICt9Cj4gPiArI2RlZmluZSBwZ3Byb3RfbnggcGdwcm90X254Cj4gPiArCj4gPiAgI2lm
ZGVmIENPTkZJR19YODZfUEFFCj4gCj4gSSByZWNrb24gZm9yIGFybTY0IHdlIGNhbiBkbyBzaW1p
bGFyIGluIG91ciA8YXNtL3BndGFibGUuaD46Cj4gCj4gI2RlZmluZSBwZ3Byb3RfbngocGdwcm90
X3QgcHJvdCkgXAo+IAlfX3BncHJvdF9tb2RpZnkocHJvdCwgMCwgUFRFX1BYTikKPiAKPiAuLi4g
bWF0Y2hpbmcgdGhlIHN0eWxlIG9mIG91ciBleGlzdGluZyBwZ3Byb3RfKigpIG1vZGlmaWVyIGhl
bHBlcnMuCgpJJ3ZlIGFkZGVkIHRoYXQgZm9yIHRoZSBuZXh0IHZlcnNpb24gd2l0aCBhdHRyaWJ1
dGlvbiB0byB5b3UuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
