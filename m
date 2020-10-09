Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D8A289BBE
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 10 Oct 2020 00:25:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FD0E66518
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 22:25:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2E75E6650A; Fri,  9 Oct 2020 22:25:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AA82664EC;
	Fri,  9 Oct 2020 22:25:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7A45D6606C
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 22:25:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 67860664EC; Fri,  9 Oct 2020 22:25:12 +0000 (UTC)
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by lists.linaro.org (Postfix) with ESMTPS id 2B7296606C
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 22:25:11 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id w5so5530610qvn.12
 for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Oct 2020 15:25:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=8oWWXTJLgz6k0eoay/wZw+xNoGlz9otu+1gTZ3QYQTU=;
 b=Nk5oFw3i2eR7quyz2VT3d/qDxx0cm5DrdzZa6YFp5MbyHdNJHiE8w/4nXO+2dmQPIr
 I2uOz84EEn+KgbOru2z5zdk0MlgwbxXn4KtBexoKjZBNXNwRcGjNYMCfKa5OmNnl+lRf
 2pnZBawE8o5/gcADc7h8YH06xtULcZIxclYoK8oMMNWRyYELqXMFUxp98UqypZeYKrWG
 ZeRURHOTWysbFCJpk7p7A0tBqwmyR1VIhB0dTfhFaxbrL/V9hT1sUNHvWJzHpwap5DOA
 1cKGrRLbiacVLeqLXIbPEIB+T4f6OL/cY382OPFe+cjJIOQ6CFLZJz7eHztYVY+GieFw
 UiHQ==
X-Gm-Message-State: AOAM5301D5pfjOXK1P5DAQ296S2iaG2hKFpkayb/lwxi/i4jfHH6+Z3B
 /q1hQGWG8YuIg+pzYNYmoq5gjA==
X-Google-Smtp-Source: ABdhPJx4KrjLeEug0hrbNvxkGQnKMdvwXI9Ssl/PdIck48j/G9dQSZkfDxN9OyPFgyOzHX6NhQzoFg==
X-Received: by 2002:a0c:9a01:: with SMTP id p1mr14524630qvd.61.1602282310859; 
 Fri, 09 Oct 2020 15:25:10 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id t3sm7141813qtq.24.2020.10.09.15.25.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 15:25:10 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kR0p3-002qLD-KY; Fri, 09 Oct 2020 19:25:09 -0300
Date: Fri, 9 Oct 2020 19:25:09 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <20201009222509.GC5177@ziepe.ca>
References: <20201009150342.1979-1-christian.koenig@amd.com>
 <20201009150420.450833e3830b9d39a2385dd9@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009150420.450833e3830b9d39a2385dd9@linux-foundation.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Miaohe Lin <linmiaohe@huawei.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-mm@kvack.org, willy@infradead.org, daniel@ffwll.ch, jhubbard@nvidia.com,
 airlied@redhat.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/6] mm: mmap: fix fput in error path
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

T24gRnJpLCBPY3QgMDksIDIwMjAgYXQgMDM6MDQ6MjBQTSAtMDcwMCwgQW5kcmV3IE1vcnRvbiB3
cm90ZToKPiBPbiBGcmksICA5IE9jdCAyMDIwIDE3OjAzOjM3ICswMjAwICJDaHJpc3RpYW4gS8O2
bmlnIiA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+ID4gUGF0
Y2ggIjQ5NWMxMGNjMWMwYyBDSFJPTUlVTTogZG1hLWJ1ZjogcmVzdG9yZSBhcmdzLi4uIgo+ID4g
YWRkcyBhIHdvcmthcm91bmQgZm9yIGEgYnVnIGluIG1tYXBfcmVnaW9uLgo+ID4gCj4gPiBBcyB0
aGUgY29tbWVudCBzdGF0ZXMgLT5tbWFwKCkgY2FsbGJhY2sgY2FuIGNoYW5nZQo+ID4gdm1hLT52
bV9maWxlIGFuZCBzbyB3ZSBtaWdodCBjYWxsIGZwdXQoKSBvbiB0aGUgd3JvbmcgZmlsZS4KPiA+
IAo+ID4gUmV2ZXJ0IHRoZSB3b3JrYXJvdW5kIGFuZCBwcm9wZXIgZml4IHRoaXMgaW4gbW1hcF9y
ZWdpb24uCj4gPiAKPiAKPiBEb2Vzbid0IHRoaXMgcGF0Y2ggc2VyaWVzIGFkZHJlc3MgdGhlIHNh
bWUgdGhpbmcgYXMKPiBodHRwczovL2xrbWwua2VybmVsLm9yZy9yLzIwMjAwOTE2MDkwNzMzLjMx
NDI3LTEtbGlubWlhb2hlQGh1YXdlaS5jb20/CgpTYW1lIGJhc2ljIGlzc3VlLCBsb29rcyBsaWtl
IGJvdGggb2YgdGhlc2UgcGF0Y2hlcyBzaG91bGQgYmUgY29tYmluZWQKdG8gcGx1ZyBpdCBmdWxs
eS4KCkphc29uIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
