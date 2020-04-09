Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D32F1A37A7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 18:00:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 700CC665C3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 16:00:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5C8F4665B6; Thu,  9 Apr 2020 16:00:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	FSL_HELO_FAKE,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C139665BA;
	Thu,  9 Apr 2020 16:00:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EC7D6665B5
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 16:00:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D87F3665BA; Thu,  9 Apr 2020 16:00:04 +0000 (UTC)
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by lists.linaro.org (Postfix) with ESMTPS id 0B659665B5
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 16:00:04 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id r14so4291637pfl.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Apr 2020 09:00:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=aQRKpekxDIbOTQGjAcEIQGsYobF8qM0SxjsCWTw2ZsI=;
 b=D1mi7mYUEf+B9QyMF+yiTyJAC+xxkNBIj/QKDfsl3qjfxCoftyf0GJwAqBE5SAIg4i
 hdABuHPry5vU7AYyPLJ+toPO7E1iFjhqFP76syBqMFe/d2Rgtykr88zGP2UPrhGq9e34
 f4Uc6zhcLJd0xR0i4VlfDvwP9TNU0QwLHb7AIDXh425cuTL1V3drLaKbnogyp7cT21Ok
 Hz3x/HVCqBsY8u53e7EmfgSQwLP+93joALk9SWCwoY58Omt9KzgsrqeXQ3HDGqJB2VYF
 MK7yhpnky9whMntrBXpR9hnZGOgOsTFbJZV7FHsFEpl1HQCnHxgBv43ECz/85DXpwhf9
 tePQ==
X-Gm-Message-State: AGi0PuYshEMwtAN8KXB/6WWu6ii25QU/h2c4x8rp+rIK/wb4PywlheIL
 s7+gMh90WiPF+bw9MbKuEzA=
X-Google-Smtp-Source: APiQypJjp3TKUZfafGLvg6qEU9KISYf3/iG0IoFzAvoBFmETLO9Bl0QvCAR/K1DmpfYnyGtmiu0e2g==
X-Received: by 2002:a65:580d:: with SMTP id g13mr110923pgr.45.1586448003209;
 Thu, 09 Apr 2020 09:00:03 -0700 (PDT)
Received: from google.com ([2601:647:4001:3000::50e3])
 by smtp.gmail.com with ESMTPSA id a24sm10081726pgd.50.2020.04.09.09.00.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 09:00:01 -0700 (PDT)
Date: Thu, 9 Apr 2020 08:59:59 -0700
From: Minchan Kim <minchan@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200409155959.GB247701@google.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-10-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-10-hch@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [Linaro-mm-sig] [PATCH 09/28] mm: rename CONFIG_PGTABLE_MAPPING
 to CONFIG_ZSMALLOC_PGTABLE_MAPPING
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDE6NTk6MDdQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gUmVuYW1lIHRoZSBLY29uZmlnIHZhcmlhYmxlIHRvIGNsYXJpZnkgdGhlIHNj
b3BlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgpB
Y2tlZC1ieTogTWluY2hhbiBLaW0gPG1pbmNoYW5Aa2VybmVsLm9yZz4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
