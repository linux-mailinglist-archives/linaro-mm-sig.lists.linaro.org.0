Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D452C16F55D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Feb 2020 02:54:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 182BB60E41
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Feb 2020 01:54:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E430B6183E; Wed, 26 Feb 2020 01:54:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51B4860F08;
	Wed, 26 Feb 2020 01:54:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5ED52603C1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Feb 2020 01:54:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 45F9560F08; Wed, 26 Feb 2020 01:54:21 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 77831603C1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Feb 2020 01:54:20 +0000 (UTC)
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CAE820732;
 Wed, 26 Feb 2020 01:54:19 +0000 (UTC)
Date: Tue, 25 Feb 2020 17:54:18 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Cong Wang <xiyou.wangcong@gmail.com>
Message-Id: <20200225175418.2d3af2180cbf895b727ce4b1@linux-foundation.org>
In-Reply-To: <20200225204446.11378-1-xiyou.wangcong@gmail.com>
References: <20200225204446.11378-1-xiyou.wangcong@gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chenbo Feng <fengc@google.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 syzbot+b2098bc44728a4efb3e9@syzkaller.appspotmail.com,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: free dmabuf->name in
	dma_buf_release()
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

T24gVHVlLCAyNSBGZWIgMjAyMCAxMjo0NDo0NiAtMDgwMCBDb25nIFdhbmcgPHhpeW91Lndhbmdj
b25nQGdtYWlsLmNvbT4gd3JvdGU6Cgo+IGRtYS1idWZmIG5hbWUgY2FuIGJlIHNldCB2aWEgRE1B
X0JVRl9TRVRfTkFNRSBpb2N0bCwgYnV0IG9uY2Ugc2V0Cj4gaXQgbmV2ZXIgZ2V0cyBmcmVlZC4K
PiAKPiBGcmVlIGl0IGluIGRtYV9idWZfcmVsZWFzZSgpLgo+IAo+IC4uLgo+Cj4gLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMK
PiBAQCAtMTA4LDYgKzEwOCw3IEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBp
bm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxlKQo+ICAJCWRtYV9yZXN2X2ZpbmkoZG1hYnVm
LT5yZXN2KTsKPiAgCj4gIAltb2R1bGVfcHV0KGRtYWJ1Zi0+b3duZXIpOwo+ICsJa2ZyZWUoZG1h
YnVmLT5uYW1lKTsKPiAgCWtmcmVlKGRtYWJ1Zik7Cj4gIAlyZXR1cm4gMDsKPiAgfQoKb3cuICBJ
cyB0aGF0IGlvY3RsIHByaXZpbGVnZWQ/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
