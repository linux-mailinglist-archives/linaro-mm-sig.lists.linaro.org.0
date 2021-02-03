Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6DE30D122
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 02:57:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3B6961786
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 01:57:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E5740617F5; Wed,  3 Feb 2021 01:57:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FD1B6601F;
	Wed,  3 Feb 2021 01:56:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6055A61786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 01:56:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5171E619D7; Wed,  3 Feb 2021 01:56:39 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 1D93A66534
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 01:56:27 +0000 (UTC)
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l77Ob-00G1Gl-Gl; Wed, 03 Feb 2021 01:55:54 +0000
Date: Wed, 3 Feb 2021 01:55:53 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Suren Baghdasaryan <surenb@google.com>
Message-ID: <20210203015553.GX308988@casper.infradead.org>
References: <20210203003134.2422308-1-surenb@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210203003134.2422308-1-surenb@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, sspatil@google.com,
 christian.koenig@amd.com, kernel-team@android.com, jajones@nvidia.com,
 linux-kernel@vger.kernel.org, lmark@codeaurora.org, Brian.Starkey@arm.com,
 hch@infradead.org, minchan@kernel.org, linux-mm@kvack.org,
 john.stultz@linaro.org, dri-devel@lists.freedesktop.org,
 cgoldswo@codeaurora.org, hridya@google.com, akpm@linux-foundation.org,
 robin.murphy@arm.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

T24gVHVlLCBGZWIgMDIsIDIwMjEgYXQgMDQ6MzE6MzNQTSAtMDgwMCwgU3VyZW4gQmFnaGRhc2Fy
eWFuIHdyb3RlOgo+IFJlcGxhY2UgQlVHX09OKHZtYS0+dm1fZmxhZ3MgJiBWTV9QRk5NQVApIGlu
IHZtX2luc2VydF9wYWdlIHdpdGgKPiBXQVJOX09OX09OQ0UgYW5kIHJldHVybmluZyBhbiBlcnJv
ci4gVGhpcyBpcyB0byBlbnN1cmUgdXNlcnMgb2YgdGhlCj4gdm1faW5zZXJ0X3BhZ2UgdGhhdCBz
ZXQgVk1fUEZOTUFQIGFyZSBub3RpZmllZCBvZiB0aGUgd3JvbmcgZmxhZyB1c2FnZQo+IGFuZCBn
ZXQgYW4gaW5kaWNhdGlvbiBvZiBhbiBlcnJvciB3aXRob3V0IHBhbmljaW5nIHRoZSBrZXJuZWwu
Cj4gVGhpcyB3aWxsIGhlbHAgaWRlbnRpZnlpbmcgZHJpdmVycyB0aGF0IG5lZWQgdG8gY2xlYXIg
Vk1fUEZOTUFQIGJlZm9yZQo+IHVzaW5nIGRtYWJ1ZiBzeXN0ZW0gaGVhcCB3aGljaCBpcyBtb3Zp
bmcgdG8gdXNlIHZtX2luc2VydF9wYWdlLgoKTkFDSy4KClRoZSBzeXN0ZW0gbWF5IG5vdCBfcGFu
aWNfLCBidXQgaXQgaXMgY2xlYXJseSBub3cgX2Jyb2tlbl8uICBUaGUgZGV2aWNlCmRvZXNuJ3Qg
d29yaywgYW5kIHNvIHRoZSBzeXN0ZW0gaXMgdXNlbGVzcy4gIFlvdSBoYXZlbid0IHJlYWxseSBp
bXByb3ZlZAphbnl0aGluZyBoZXJlLiAgSnVzdCBibG9hdGVkIHRoZSBrZXJuZWwgd2l0aCB5ZXQg
YW5vdGhlciBfT05DRSB2YXJpYWJsZQp0aGF0IGluIGEgbm9ybWFsIHN5c3RlbSB3aWxsIG5ldmVy
IGV2ZXIgZXZlciBiZSB0cmlnZ2VyZWQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
