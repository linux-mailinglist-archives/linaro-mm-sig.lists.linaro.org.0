Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 276F33243F6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Feb 2021 19:47:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A09B667C7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Feb 2021 18:47:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3B087667DB; Wed, 24 Feb 2021 18:47:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 271946677C;
	Wed, 24 Feb 2021 18:47:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 57C6F665A0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Feb 2021 18:47:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4628C6677C; Wed, 24 Feb 2021 18:47:00 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 by lists.linaro.org (Postfix) with ESMTPS id 641B0665A0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Feb 2021 18:46:59 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id s15so2237050qtq.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Feb 2021 10:46:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VrjvjB78Kh6dNXfIIH+c0MkGaNwqdx16pxLGBYXPvwM=;
 b=EppP1us+fjvnWitQWjS7gy8lYqSCvF9+jkZkQ2LDOhR/QqGtmJFxhhSFzUUMwXdorl
 J3T/YUB07nbpg9DVlBN4Gih8osmBmZmnkGbSOgGbKh1bA/EbEgT/vq33rdJdLbtfrkba
 rL/L8P2AL0fFjCEe9LeGhDobZi5gHisJqQ4io0q217p1i7QxD5w9n1a6eo4LKGCqJwLq
 7NakGFF/Xb0eQxF6PkTjhPVJC2cBSKbWPPalX9RpcQ6tLlseB0XRBNscYV313B32YMp5
 LTvtltXeiq1/qY7C9gdt9kQnhi3AnbvLb0dkMamB8F8CAD8Bh/da7OrfbJr/6VTdfDoD
 dREA==
X-Gm-Message-State: AOAM532t00ceJ7OgZNGbs+PEyw2g80uv5aM7ZTY8+Np7WnbwPYj5Gk7L
 k1b3IblBuEd6KdIIMsaIzVhEGw==
X-Google-Smtp-Source: ABdhPJxW9xJMQxdNXP/6Q9rzo3S7DhLtVdo2G2c7/gZ8wtaJRcPsqAqAlDlqAQRUSlE9KXebcfKo2g==
X-Received: by 2002:ac8:5ac9:: with SMTP id d9mr29408484qtd.123.1614192419030; 
 Wed, 24 Feb 2021 10:46:59 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-162-115-133.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.115.133])
 by smtp.gmail.com with ESMTPSA id i75sm2129440qke.47.2021.02.24.10.46.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Feb 2021 10:46:58 -0800 (PST)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lEzBZ-00GmDm-Ok; Wed, 24 Feb 2021 14:46:57 -0400
Date: Wed, 24 Feb 2021 14:46:57 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20210224184657.GR2643399@ziepe.ca>
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
 <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Matthew Wilcox <willy@infradead.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require VM_PFNMAP vma for
 mmap
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

T24gV2VkLCBGZWIgMjQsIDIwMjEgYXQgMDk6NDU6NTFBTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKCj4gSG0gSSBmaWd1cmVkIGV2ZXJ5b25lIGp1c3QgdXNlcyBNQVBfU0hBUkVEIGZvciBi
dWZmZXIgb2JqZWN0cyBzaW5jZQo+IENPVyByZWFsbHkgbWFrZXMgYWJzb2x1dGVseSBubyBzZW5z
ZS4gSG93IHdvdWxkIHdlIGVuZm9yY2UgdGhpcz8KCkluIFJETUEgd2UgdGVzdAoKZHJpdmVycy9p
bmZpbmliYW5kL2NvcmUvaWJfY29yZV91dmVyYnMuYzogICAgICAgaWYgKCEodm1hLT52bV9mbGFn
cyAmIFZNX1NIQVJFRCkpCgpEdXJpbmcgbW1hcCB0byByZWplY3QgdXNlIG9mIE1BUF9QUklWQVRF
IG9uIEJBUiBwYWdlcy4KCkphc29uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
