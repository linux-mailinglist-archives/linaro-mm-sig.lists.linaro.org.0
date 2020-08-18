Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 947B3248BF4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 18:48:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7B9F60F4C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 16:48:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ACFEC618E0; Tue, 18 Aug 2020 16:48:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9EB46162C;
	Tue, 18 Aug 2020 16:48:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7E22E60D77
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 16:48:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 70EC56162C; Tue, 18 Aug 2020 16:48:18 +0000 (UTC)
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by lists.linaro.org (Postfix) with ESMTPS id 7462660D77
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 16:48:17 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id b16so21874173ioj.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 09:48:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KImiBwzNWf5aXeRH8pMXlYk8GtbO84LBcSTU7lw7AYE=;
 b=WM1cfiXnXdhCcfGtKKHydZs/JkQJH+lObm+muzNTHWdvG7ND1WPaqhe6bStRqrk59p
 1vXwBQTpl31LJRtoO7LVV1N7PmTYa5/oRZyhAom8W1Bbu+I3x/2EG9Ml1FwzRUXmYjE1
 f5sZyISOhX5tVMc3G0Xv1UCZmW+d/x8uxmP0QHYCONHlhYHHhbpagmTNL8+2BQUKrez3
 CbNzCrou7Ei7avM8Edfub1gOnIljPI9GvuAC4zl7NxRm37S7tXTkQCblF3RPlYnM/6SO
 MUpYSx37yc6bEo+QzzMwPvQGmN0voDCqYbDPrXQqXgQTYwxGJDwtidfx+Ubk7qnSDh1G
 2ZTQ==
X-Gm-Message-State: AOAM533AZnqkFs2M3KHp9+sJtmRXz0cHvca4v6FOu8rj7OasnfG8obaD
 mAuLkrwQr9tFzEapNMzFww==
X-Google-Smtp-Source: ABdhPJwJYfpD4QBhfIN9mFdiDnmYYj+3q6cflyF3DxQm7aifzQDaQgcPKMWkNslzO9FXrSXFaDSQlA==
X-Received: by 2002:a6b:e216:: with SMTP id z22mr15957990ioc.97.1597769296997; 
 Tue, 18 Aug 2020 09:48:16 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
 by smtp.gmail.com with ESMTPSA id 82sm11101331ioc.34.2020.08.18.09.48.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 09:48:16 -0700 (PDT)
Received: (nullmailer pid 3602657 invoked by uid 1000);
 Tue, 18 Aug 2020 16:48:12 -0000
Date: Tue, 18 Aug 2020 10:48:12 -0600
From: Rob Herring <robh@kernel.org>
To: Hyesoo Yu <hyesoo.yu@samsung.com>
Message-ID: <20200818164812.GA3602349@bogus>
References: <20200818080415.7531-1-hyesoo.yu@samsung.com>
 <CGME20200818074554epcas2p2702e648ba975ea6fbe33c84396b152a9@epcas2p2.samsung.com>
 <20200818080415.7531-4-hyesoo.yu@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200818080415.7531-4-hyesoo.yu@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 benjamin.gaignard@linaro.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org,
 john.stultz@linaro.org, pullip.cho@samsung.com, surenb@google.com,
 akpm@linux-foundation.org, vbabka@suse.cz, linux-kernel@vger.kernel.org,
 lmark@codeaurora.org, Brian.Starkey@arm.com, minchan@kernel.org,
 joaodias@google.com, iamjoonsoo.kim@lge.com, christian.koenig@amd.com
Subject: Re: [Linaro-mm-sig] [PATCH 3/3] dma-heap: Devicetree binding for
	chunk heap
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

T24gVHVlLCAxOCBBdWcgMjAyMCAxNzowNDoxNSArMDkwMCwgSHllc29vIFl1IHdyb3RlOgo+IERv
Y3VtZW50IGRldmljZXRyZWUgYmluZGluZyBmb3IgY2h1bmsgaGVhcCBvbiBkbWEgaGVhcCBmcmFt
ZXdvcmsKPiAKPiBTaWduZWQtb2ZmLWJ5OiBIeWVzb28gWXUgPGh5ZXNvby55dUBzYW1zdW5nLmNv
bT4KPiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hLWJ1Zi9jaHVua19oZWFwLnlh
bWwgICAgfCA0NiArKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0NiBp
bnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZG1hLWJ1Zi9jaHVua19oZWFwLnlhbWwKPiAKCgpNeSBib3QgZm91bmQgZXJy
b3JzIHJ1bm5pbmcgJ21ha2UgZHRfYmluZGluZ19jaGVjaycgb24geW91ciBwYXRjaDoKCi9idWls
ZHMvcm9iaGVycmluZy9saW51eC1kdC1yZXZpZXcvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2RtYS1idWYvY2h1bmtfaGVhcC5leGFtcGxlLmR0LnlhbWw6IGNodW5rX2RlZmF1bHRf
aGVhcDogJ2FsaWdubWVudCcsICdtZW1vcnktcmVnaW9uJyBkbyBub3QgbWF0Y2ggYW55IG9mIHRo
ZSByZWdleGVzOiAncGluY3RybC1bMC05XSsnCgoKU2VlIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFi
cy5vcmcvcGF0Y2gvMTM0NjY4NwoKSWYgeW91IGFscmVhZHkgcmFuICdtYWtlIGR0X2JpbmRpbmdf
Y2hlY2snIGFuZCBkaWRuJ3Qgc2VlIHRoZSBhYm92ZQplcnJvcihzKSwgdGhlbiBtYWtlIHN1cmUg
ZHQtc2NoZW1hIGlzIHVwIHRvIGRhdGU6CgpwaXAzIGluc3RhbGwgZ2l0K2h0dHBzOi8vZ2l0aHVi
LmNvbS9kZXZpY2V0cmVlLW9yZy9kdC1zY2hlbWEuZ2l0QG1hc3RlciAtLXVwZ3JhZGUKClBsZWFz
ZSBjaGVjayBhbmQgcmUtc3VibWl0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
