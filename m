Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2186D1A4361
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2020 10:11:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 495FC66631
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2020 08:11:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3DC0D66645; Fri, 10 Apr 2020 08:11:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
	TVD_SUBJ_WIPE_DEBT autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4410C66611;
	Fri, 10 Apr 2020 08:11:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1E6FD665F7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2020 08:11:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 10EE366611; Fri, 10 Apr 2020 08:11:15 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id EC98D665F7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2020 08:11:13 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 103so1222068otv.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2020 01:11:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hgf3DAUC4/KD19F9Gq5AGfjZOzS9LXWN/bbu/vFg+qA=;
 b=lk/utX3QQaOcjmHEk9v8jVollsE0K+RrjNGBqu8ZbxupTgIExJXZZe6QxXe6CyP0Oz
 ESHefw6VG9mZY2Y0RWOOXV81Azylvkk3KD+n2UOPstc5Ms2dmEyK0gjiLOBFw5Osg480
 5hY65yr2G+aM6NhbUvi+YCotcvpbb040F4tZCU1Rsy5Anx0OFt3JbDlb6Hh4sZ6CeIl6
 ai6ZSnnQMRyID68SxkK6ehm8dzCnTrl41aVjbNviD9L2YSGzKtEj1TqCwauPwlkpBoNf
 CeygWelRUcS0PRUcjogD46z4r0QS2mUdqqSw1+5X0PxycPLHCxgh9V9HNh6o1QPD0gO7
 SeJA==
X-Gm-Message-State: AGi0PuY4za79ndHsbxFdKaOEFwxfTdKiQvgZzk9gGjknC0xErcvYvNTe
 vaoTaDJtdtK4+yT96MkSpDzCkhYPxlvviib23wWWEA==
X-Google-Smtp-Source: APiQypJumpZ6N8vscDAXJtrZPRakBWDA3qYtIErOA5tqj0XblmFZSMuMiwpkQHsTVZs7vae7PdjUGGhKyrX4Ng8eQNQ=
X-Received: by 2002:a9d:6e8f:: with SMTP id a15mr3449972otr.188.1586506273249; 
 Fri, 10 Apr 2020 01:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
 <20200408122504.GO3456981@phenom.ffwll.local>
 <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
 <CAKMK7uHtkLvdsWFGiAtkzVa5mpnDvXkn3CHZQ6bgJ_enbyAc8A@mail.gmail.com>
 <0f360b9cb72b80bae0d0db8150f65598c2776268.camel@kernel.crashing.org>
In-Reply-To: <0f360b9cb72b80bae0d0db8150f65598c2776268.camel@kernel.crashing.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 10 Apr 2020 10:11:02 +0200
Message-ID: <CAKMK7uHKyN+c5oTEYVursx4at9br7LSXRb8PMoNEAEBh0hfBLQ@mail.gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
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
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
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

T24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgMTI6NTcgQU0gQmVuamFtaW4gSGVycmVuc2NobWlkdAo8
YmVuaEBrZXJuZWwuY3Jhc2hpbmcub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgMjAyMC0wNC0wOSBh
dCAxMTo0MSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IE5vdyBpZiB0aGVzZSBib3hl
cyBkaWRuJ3QgZXZlciBoYXZlIGFncCB0aGVuIEkgdGhpbmsgd2UgY2FuIGdldCBhd2F5Cj4gPiB3
aXRoIGRlbGV0aW5nIHRoaXMsIHNpbmNlIHdlJ3ZlIGFscmVhZHkgZGVsZXRlZCB0aGUgbGVnYWN5
IHJhZGVvbgo+ID4gZHJpdmVyLiBBbmQgdGhhdCBvbmUgdXNlZCB2bWFsbG9jIGZvciBldmVyeXRo
aW5nLiBUaGUgbmV3IGttcyBvbmUgZG9lcwo+ID4gdXNlIHRoZSBkbWEtYXBpIGlmIHRoZSBncHUg
aXNuJ3QgY29ubmVjdGVkIHRocm91Z2ggYWdwCj4KPiBEZWZpbml0ZWx5IG5vIEFHUCB0aGVyZS4K
CkFoIGluIHRoYXQgY2FzZSBJIHRoaW5rIHdlIGNhbiBiZSBzdXJlIHRoYXQgdGhpcyBjb2RlIGlz
IGRlYWQuCgpBY2tlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4K
CkNoZWVycywgRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNo
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
