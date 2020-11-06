Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F462AA087
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Nov 2020 23:48:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CB12666D8
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Nov 2020 22:48:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3000166604; Fri,  6 Nov 2020 22:48:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 560CC619BF;
	Fri,  6 Nov 2020 22:48:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 06B7460688
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Nov 2020 22:48:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E263C619BF; Fri,  6 Nov 2020 22:48:14 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 1B73A60688
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Nov 2020 22:48:14 +0000 (UTC)
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9578E2087E;
 Fri,  6 Nov 2020 22:48:12 +0000 (UTC)
Date: Fri, 6 Nov 2020 14:48:11 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: =?ISO-8859-1?Q?"Christian_K=F6nig"?= <ckoenig.leichtzumerken@gmail.com>
Message-Id: <20201106144811.cf228ca9278ec78887d42960@linux-foundation.org>
In-Reply-To: <20201106114806.46015-2-christian.koenig@amd.com>
References: <20201106114806.46015-1-christian.koenig@amd.com>
 <20201106114806.46015-2-christian.koenig@amd.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: mmap: fix fput in error path v2
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

T24gRnJpLCAgNiBOb3YgMjAyMCAxMjo0ODowNSArMDEwMCAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNr
b2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKCj4gUGF0Y2ggIjQ5NWMxMGNj
MWMwYyBDSFJPTUlVTTogZG1hLWJ1ZjogcmVzdG9yZSBhcmdzLi4uIgo+IGFkZHMgYSB3b3JrYXJv
dW5kIGZvciBhIGJ1ZyBpbiBtbWFwX3JlZ2lvbi4KPiAKPiBBcyB0aGUgY29tbWVudCBzdGF0ZXMg
LT5tbWFwKCkgY2FsbGJhY2sgY2FuIGNoYW5nZQo+IHZtYS0+dm1fZmlsZSBhbmQgc28gd2UgbWln
aHQgY2FsbCBmcHV0KCkgb24gdGhlIHdyb25nIGZpbGUuCj4gCj4gUmV2ZXJ0IHRoZSB3b3JrYXJv
dW5kIGFuZCBwcm9wZXIgZml4IHRoaXMgaW4gbW1hcF9yZWdpb24uCj4gCgpTZWVtcyBjb3JyZWN0
LCBiZXN0IEkgY2FuIHRlbGwuICBQcmVzdW1hYmx5IGFsbCAtPm1tYXAoKSBpbnN0YW5jZXMgd2ls
bApjb3JyZWN0bHkgZnB1dCgpIHRvIG9yaWdpbmFsIGZpbGUqIGlmIHRoZXkncmUgcmV3cml0aW5n
IHZtYS0+dm1fZmlsZS4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
