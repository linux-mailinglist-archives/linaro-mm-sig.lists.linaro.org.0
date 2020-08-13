Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 73659243427
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Aug 2020 08:50:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8200E60EFE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Aug 2020 06:50:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 76D1C666D7; Thu, 13 Aug 2020 06:50:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RDNS_NONE,SPF_HELO_SOFTFAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88B2160EFF;
	Thu, 13 Aug 2020 06:49:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BFFC360D77
 for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Aug 2020 06:49:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A436660EFF; Thu, 13 Aug 2020 06:49:42 +0000 (UTC)
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by lists.linaro.org (Postfix) with ESMTPS id 3947B60D77
 for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Aug 2020 06:49:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22112507-1500050 for multiple; Thu, 13 Aug 2020 07:49:25 +0100
MIME-Version: 1.0
In-Reply-To: <20200812235544.2289895-1-jcrouse@codeaurora.org>
References: <20200812235544.2289895-1-jcrouse@codeaurora.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jordan Crouse <jcrouse@codeaurora.org>, linux-arm-msm@vger.kernel.org
Date: Thu, 13 Aug 2020 07:49:24 +0100
Message-ID: <159730136458.14054.18114194663048046416@build.alporthouse.com>
User-Agent: alot/0.9
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Gustavo Padovan <gustavo@padovan.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian König <christian.koenig@amd.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [RFC PATCH v1] dma-fence-array: Deal with
	sub-fences that are signaled late
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

UXVvdGluZyBKb3JkYW4gQ3JvdXNlICgyMDIwLTA4LTEzIDAwOjU1OjQ0KQo+IFRoaXMgaXMgYW4g
UkZDIGJlY2F1c2UgSSdtIHN0aWxsIHRyeWluZyB0byBncm9rIHRoZSBjb3JyZWN0IGJlaGF2aW9y
Lgo+IAo+IENvbnNpZGVyIGEgZG1hX2ZlbmNlX2FycmF5IGNyZWF0ZWQgdHdvIHR3byBmZW5jZSBh
bmQgc2lnbmFsX29uX2FueSBpcyB0cnVlLgo+IEEgcmVmZXJlbmNlIHRvIGRtYV9mZW5jZV9hcnJh
eSBpcyB0YWtlbiBmb3IgZWFjaCB3YWl0aW5nIGZlbmNlLgo+IAo+IFdoZW4gdGhlIGNsaWVudCBj
YWxscyBkbWFfZmVuY2Vfd2FpdCgpIG9ubHkgb25lIG9mIHRoZSBmZW5jZXMgaXMgc2lnbmFsZWQu
Cj4gVGhlIGNsaWVudCByZXR1cm5zIHN1Y2Nlc3NmdWxseSBmcm9tIHRoZSB3YWl0IGFuZCBwdXRz
IGl0J3MgcmVmZXJlbmNlIHRvCj4gdGhlIGFycmF5IGZlbmNlIGJ1dCB0aGUgYXJyYXkgZmVuY2Ug
c3RpbGwgcmVtYWlucyBiZWNhdXNlIG9mIHRoZSByZW1haW5pbmcKPiB1bi1zaWduYWxlZCBmZW5j
ZS4KPiAKPiBOb3cgY29uc2lkZXIgdGhhdCB0aGUgdW5zaWduYWxlZCBmZW5jZSBpcyBzaWduYWxl
ZCB3aGlsZSB0aGUgdGltZWxpbmUgaXMgYmVpbmcKPiBkZXN0cm95ZWQgbXVjaCBsYXRlci4gVGhl
IHRpbWVsaW5lIGRlc3Ryb3kgY2FsbHMgZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoKS4gVGhlCj4g
Zm9sbG93aW5nIHNlcXVlbmNlIG9jY3VyczoKPiAKPiAxKSBkbWFfZmVuY2VfYXJyYXlfY2JfZnVu
YyBpcyBjYWxsZWQKPiAKPiAyKSBhcnJheS0+bnVtX3BlbmRpbmcgaXMgMCAoYmVjYXVzZSBpdCB3
YXMgc2V0IHRvIDEgZHVlIHRvIHNpZ25hbF9vbl9hbnkpIHNvIHRoZQo+IGNhbGxiYWNrIGZ1bmN0
aW9uIGNhbGxzIGRtYV9mZW5jZV9wdXQoKSBpbnN0ZWFkIG9mIHRyaWdnZXJpbmcgdGhlIGlycSB3
b3JrCj4gCj4gMykgVGhlIGFycmF5IGZlbmNlIGlzIHJlbGVhc2VkIHdoaWNoIGluIHR1cm4gcHV0
cyB0aGUgbGluZ2VyaW5nIGZlbmNlIHdoaWNoIGlzCj4gdGhlbiByZWxlYXNlZAo+IAo+IDQpIGRl
YWRsb2NrIHdpdGggdGhlIHRpbWVsaW5lCgpJdCdzIHRoZSBzYW1lIHJlY3Vyc2l2ZSBsb2NrIGFz
IHdlIHByZXZpb3VzbHkgcmVzb2x2ZWQgaW4gc3dfc3luYy5jIGJ5CnJlbW92aW5nIHRoZSBsb2Nr
aW5nIGZyb20gdGltZWxpbmVfZmVuY2VfcmVsZWFzZSgpLgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
