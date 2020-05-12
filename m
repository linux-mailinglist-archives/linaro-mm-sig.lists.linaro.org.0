Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A16D1CEF6B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 10:46:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF3EF61885
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 08:46:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9C4EF61892; Tue, 12 May 2020 08:46:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D20C561831;
	Tue, 12 May 2020 08:45:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 24DF8617CF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 08:45:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1792660723; Tue, 12 May 2020 08:45:38 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 3968260723
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 08:45:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2BEE206CC;
 Tue, 12 May 2020 08:45:35 +0000 (UTC)
Date: Tue, 12 May 2020 10:45:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Charan Teja Kalla <charante@codeaurora.org>
Message-ID: <20200512084534.GA3557007@kroah.com>
References: <1588060442-28638-1-git-send-email-charante@codeaurora.org>
 <20200505100806.GA4177627@kroah.com>
 <8424b2ac-3ea6-6e5b-b99c-951a569f493d@codeaurora.org>
 <20200506090002.GA2619587@kroah.com>
 <3bc8dd81-f298-aea0-f218-2e2ef12ca603@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bc8dd81-f298-aea0-f218-2e2ef12ca603@codeaurora.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: fengc@google.com, linux-kernel@vger.kernel.org, ghackmann@google.com,
 linaro-mm-sig@lists.linaro.org, vinmenon@codeaurora.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: fix use-after-free in
	dmabuffs_dname
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

T24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMTA6NDM6MThBTSArMDUzMCwgQ2hhcmFuIFRlamEgS2Fs
bGEgd3JvdGU6Cj4gPiBPaywgYnV0IHdhdGNoIG91dCwgbm93IHlvdSBoYXZlIDIgZGlmZmVyZW50
IHJlZmVyZW5jZSBjb3VudHMgZm9yIHRoZQo+ID4gc2FtZSBzdHJ1Y3R1cmUuICBLZWVwaW5nIHRo
ZW0gY29vcmRpbmF0ZWQgaXMgYWxtb3N0IGFsd2F5cyBhbiBpbXBvc3NpYmxlCj4gPiB0YXNrIHNv
IHlvdSBuZWVkIHRvIG9ubHkgcmVseSBvbiBvbmUuICBJZiB5b3UgY2FuJ3QgdXNlIHRoZSBmaWxl
IGFwaSwKPiA+IGp1c3QgZHJvcCBhbGwgb2YgdGhlIHJlZmVyZW5jZSBjb3VudGluZyBsb2dpYyBp
biB0aGVyZSBhbmQgb25seSB1c2UgdGhlCj4gPiBrcmVmIG9uZS4KPiAKPiBJIGZlZWwgdGhhdCBj
aGFuZ2luZyB0aGUgcmVmY291bnQgbG9naWMgbm93IHRvIGRtYS1idWYgb2JqZWN0cyBpbnZvbHZl
Cj4gY2hhbmdlcyBpbgo+IAo+IHRoZSBjb3JlIGRtYS1idWYgZnJhbWV3b3JrLiBOTz8gSW5zdGVh
ZCwgaG93IGFib3V0IHBhc3NpbmcgdGhlIHVzZXIgcGFzc2VkCj4gbmFtZSBkaXJlY3RseQo+IAo+
IGluIHRoZSAtPmRfZnNkYXRhIGlucGxhY2Ugb2YgZG1hYnVmIG9iamVjdD8gQmVjYXVzZSB3ZSBq
dXN0IG5lZWQgdXNlciBwYXNzZWQKPiBuYW1lIGluIHRoZQo+IAo+IGRtYWJ1ZmZzX2RuYW1lKCku
IFdpdGggdGhpcyB3ZSBjYW4gYXZvaWQgdGhlIG5lZWQgZm9yIGV4dHJhIHJlZmNvdW50IG9uCj4g
ZG1hYnVmLgoKT2RkIGZvcm1hdHRpbmcgOigKCj4gUG9zdGVkIHBhdGNoLVYyOiBodHRwczovL2xr
bWwub3JnL2xrbWwvMjAyMC81LzgvMTU4CgpQbGVhc2UganVzdCBwb3N0IGxpbmtzIHRvIGxvcmUu
a2VybmVsLm9yZywgd2UgaGF2ZSBubyBjb250cm9sIG92ZXIKbGttbC5vcmcgYXQgYWxsLgoKSSds
bCBnbyByZXZpZXcgdGhhdCBwYXRjaCBub3cuLi4KCmdyZWcgay1oCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
