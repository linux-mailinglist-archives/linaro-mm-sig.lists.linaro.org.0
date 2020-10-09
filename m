Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3CB289B80
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 10 Oct 2020 00:05:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6D3866519
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 22:05:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A8C9966524; Fri,  9 Oct 2020 22:05:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79554664EC;
	Fri,  9 Oct 2020 22:04:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 71721664DF
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 22:04:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 66668664FE; Fri,  9 Oct 2020 22:04:55 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id DF283664DF
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 22:04:22 +0000 (UTC)
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21CE12225B;
 Fri,  9 Oct 2020 22:04:21 +0000 (UTC)
Date: Fri, 9 Oct 2020 15:04:20 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: =?ISO-8859-1?Q?"Christian_K=F6nig"?= <ckoenig.leichtzumerken@gmail.com>
Message-Id: <20201009150420.450833e3830b9d39a2385dd9@linux-foundation.org>
In-Reply-To: <20201009150342.1979-1-christian.koenig@amd.com>
References: <20201009150342.1979-1-christian.koenig@amd.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Miaohe Lin <linmiaohe@huawei.com>, jgg@ziepe.ca, jhubbard@nvidia.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, willy@infradead.org,
 daniel@ffwll.ch, airlied@redhat.com, linux-media@vger.kernel.org
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

T24gRnJpLCAgOSBPY3QgMjAyMCAxNzowMzozNyArMDIwMCAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNr
b2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKCj4gUGF0Y2ggIjQ5NWMxMGNj
MWMwYyBDSFJPTUlVTTogZG1hLWJ1ZjogcmVzdG9yZSBhcmdzLi4uIgo+IGFkZHMgYSB3b3JrYXJv
dW5kIGZvciBhIGJ1ZyBpbiBtbWFwX3JlZ2lvbi4KPiAKPiBBcyB0aGUgY29tbWVudCBzdGF0ZXMg
LT5tbWFwKCkgY2FsbGJhY2sgY2FuIGNoYW5nZQo+IHZtYS0+dm1fZmlsZSBhbmQgc28gd2UgbWln
aHQgY2FsbCBmcHV0KCkgb24gdGhlIHdyb25nIGZpbGUuCj4gCj4gUmV2ZXJ0IHRoZSB3b3JrYXJv
dW5kIGFuZCBwcm9wZXIgZml4IHRoaXMgaW4gbW1hcF9yZWdpb24uCj4gCgpEb2Vzbid0IHRoaXMg
cGF0Y2ggc2VyaWVzIGFkZHJlc3MgdGhlIHNhbWUgdGhpbmcgYXMKaHR0cHM6Ly9sa21sLmtlcm5l
bC5vcmcvci8yMDIwMDkxNjA5MDczMy4zMTQyNy0xLWxpbm1pYW9oZUBodWF3ZWkuY29tPwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
