Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B900A2CBEB4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 14:51:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECB27665E3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 13:51:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DDC3B665F2; Wed,  2 Dec 2020 13:51:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6079B66597;
	Wed,  2 Dec 2020 13:51:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 40A3960999
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 13:51:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2DCE166597; Wed,  2 Dec 2020 13:51:28 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 7F0C760999
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 13:51:26 +0000 (UTC)
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kkSX9-0001iK-JN; Wed, 02 Dec 2020 13:51:03 +0000
Date: Wed, 2 Dec 2020 13:51:03 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Minchan Kim <minchan@kernel.org>
Message-ID: <20201202135103.GA5902@infradead.org>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-4-minchan@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201201175144.3996569-4-minchan@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, Brian.Starkey@arm.com,
 linux-media@vger.kernel.org, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, willy@infradead.org,
 linaro-mm-sig@lists.linaro.org, linux-mm <linux-mm@kvack.org>,
 john.stultz@linaro.org, christian.koenig@amd.com, joaodias@google.com,
 hridya@google.com, Andrew Morton <akpm@linux-foundation.org>,
 pullip.cho@samsung.com, surenb@google.com, iamjoonsoo.kim@lge.com,
 vbabka@suse.cz, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v2 3/4] dma-buf: add export symbol for
	dma-heap
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

T24gVHVlLCBEZWMgMDEsIDIwMjAgYXQgMDk6NTE6NDNBTSAtMDgwMCwgTWluY2hhbiBLaW0gd3Jv
dGU6Cj4gRnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4gCj4gVGhlIGhl
YXBzIGNvdWxkIGJlIGFkZGVkIGFzIG1vZHVsZSwgc28gc29tZSBmdW5jdGlvbnMgc2hvdWxkCj4g
YmUgZXhwb3J0ZWQgdG8gcmVnaXN0ZXIgZG1hLWhlYXBzLiBBbmQgZG1hLWhlYXAgb2YgbW9kdWxl
IGNhbiB1c2UKPiBjbWEgYXJlYSB0byBhbGxvY2F0ZSBhbmQgZnJlZS4gSG93ZXZlciB0aGUgZnVu
Y3Rpb24gcmVsYXRlZCBjbWEKPiBpcyBub3QgZXhwb3J0ZWQgbm93LiBMZXQncyBleHBvcnQgdGhl
bSBmb3IgbmV4dCBwYXRjaGVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEh5ZXNvbyBZdSA8aHllc29v
Lnl1QHNhbXN1bmcuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtl
cm5lbC5vcmc+CgpOQUsuICBJIHJlYWxseSBkb24ndCB0aGluayBhbnkgbW9kdWxlIGhhcyBidXNp
bmVzcyBnYWluaW5nIHRoYXQKa2luZCBvZiBsb3ctbGV2ZWwgYWNjZXNzIHRvIHRoZSB2YXJpb3Vz
IHN5bWJvbHMuICBJIHRoaW5rIGluIGdlbmVyYWwKeW91ciBoZWFwIGNhbiBqdXN0IGJlIGJ1aWx0
LWluIGFuZCB3ZSBzaG91bGQgYmUgZmluZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
