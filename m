Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B44DF24DFB4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Aug 2020 20:33:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1B9760A78
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Aug 2020 18:33:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D4B7860B02; Fri, 21 Aug 2020 18:33:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1855E60999;
	Fri, 21 Aug 2020 18:33:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 784FC607C7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Aug 2020 18:33:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5ACAD60999; Fri, 21 Aug 2020 18:33:09 +0000 (UTC)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by lists.linaro.org (Postfix) with ESMTPS id 521F9607C7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Aug 2020 18:33:08 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id e6so2337285oii.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Aug 2020 11:33:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8nGTtqOdT8QbhAcolfnXtRJ6zNTRjlwZ2C3fhFZhaDs=;
 b=j5n2IPIbZzwMK+37F391hPvxEr+MFBgTKnXkAstDLLCrOyhjKP4Rk9NbXyRWphUKqb
 Ziq815o5fqk4inU8Hnkn5dBxOveN/pjn6wDMVpwFZWTmtc8E9SrGJy9hD05UjcB0G5ed
 L57sFtqphEp0Ol/dLnsuFGlH3/NRxiT+dOsgPQBeMZdHheZ4RzjtaNkrVzb5yqtaDV/u
 nAuqkdKJ984FFN5WgENOwWJVyepJjlzxknMRAYU/+AbSn8Getv8x4Lrxr8K1QVVg1xH1
 p3kqIvHvUSyHsny55LItfAxFwKjSpJ1XDHva1vuVR908yXafoTKamS29aKqP2GGjuqK9
 2aBg==
X-Gm-Message-State: AOAM532QP2rBZgEcrrtaKwbfqEyMldhFb00J4jDxgjGdc5Q/nUAxaTZZ
 cIoiSu9B27XwQKs4yELEpYf8euTo0bxIctYhmqLmlcYC
X-Google-Smtp-Source: ABdhPJxU0l4/PQ0p0REIHWIO5iBFsGV6uZhIfU5XfQAXI0KuYVF8+u294BmLV/xzkuc7A4Xyps+x1hAcLGupZkVqjh0=
X-Received: by 2002:aca:1c15:: with SMTP id c21mr2711233oic.10.1598034787715; 
 Fri, 21 Aug 2020 11:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <1594948208-4739-1-git-send-email-hayashi.kunihiko@socionext.com>
 <CALAqxLXuJQOCXcpyWwyBFZGFK_dEgG0edEEf2=vOpAw6Ng8mBQ@mail.gmail.com>
 <eacfc713-e98a-78fa-b316-3943600813d0@socionext.com>
 <CALAqxLVzUnc5CH_pA7h3ygXFPRz05KtNZx+_M3eAXXrm7hhGBQ@mail.gmail.com>
 <377e6e65-0b44-ecd0-cfc5-6fbc82be35d5@socionext.com>
In-Reply-To: <377e6e65-0b44-ecd0-cfc5-6fbc82be35d5@socionext.com>
From: John Stultz <john.stultz@linaro.org>
Date: Fri, 21 Aug 2020 11:32:56 -0700
Message-ID: <CALAqxLXbKZ=y4BTG7Kx9E46Uysx=eV=GitEDQKwp-Obg5aHUrw@mail.gmail.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lkml <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Laura Abbott <labbott@kernel.org>,
 Christian Koenig <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Introduce
 dma_heap_add_cma() for non-default CMA heap
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

T24gRnJpLCBBdWcgMjEsIDIwMjAgYXQgMjoxNCBBTSBLdW5paGlrbyBIYXlhc2hpCjxoYXlhc2hp
Lmt1bmloaWtvQHNvY2lvbmV4dC5jb20+IHdyb3RlOgo+Cj4gT24gMjAyMC8wOC8wMSA0OjM4LCBK
b2huIFN0dWx0eiB3cm90ZToKPiA+IE9uIEZyaSwgSnVsIDMxLCAyMDIwIGF0IDI6MzIgQU0gS3Vu
aWhpa28gSGF5YXNoaQo+ID4gPGhheWFzaGkua3VuaWhpa29Ac29jaW9uZXh0LmNvbT4gd3JvdGU6
Cj4gPj4gT24gMjAyMC8wNy8yOSA0OjE3LCBKb2huIFN0dWx0eiB3cm90ZToKPiA+Pj4gRG8geW91
IGhhdmUgYSB1cHN0cmVhbSBkcml2ZXIgdGhhdCB5b3UgcGxhbiB0byBtYWtlIHVzZSB0aGlzIG5l
dyBjYWxsPwo+ID4+Cj4gPj4gVW5mb3J0dW5hdGVseSBJIGRvbid0IGhhdmUgYW4gdXBzdHJlYW0g
ZHJpdmVyIHVzaW5nIHRoaXMgY2FsbC4KPiA+Pgo+ID4+IFRoaXMgY2FsbCBpcyBjYWxsZWQgZnJv
bSBkbWEtYnVmIGhlYXBzICJpbXBvcnRlciIgb3IgImN1c3RvbWVyIiwKPiA+PiBhbmQgSSBvbmx5
IG1hZGUgYW4gZXhhbXBsZSAoZG8gbm90aGluZykgaW1wb3J0ZXIgZHJpdmVyCj4gPj4gdG8gdGVz
dCB0aGUgY2FsbC4KPiA+Pgo+ID4+PiBXZSB3YW50IHRvIGhhdmUgaW4tdHJlZSB1c2VycyBvZiBj
b2RlIGFkZGVkLgo+ID4+Cj4gPj4gSSB0aGluayB0aGlzIGlzIGEgZ2VuZXJpYyB3YXkgdG8gdXNl
IG5vbi1kZWZhdWx0IENNQSBoZWFwcywgaG93ZXZlciwKPiA+PiB3ZSBuZWVkIGluLXRyZWUgImlt
cG9ydGVyIiBkcml2ZXJzIHRvIHdhbnQgdG8gdXNlIG5vbi1kZWZhdWx0IENNQSBoZWFwcy4KPiA+
PiBJIGRvbid0IGZpbmQgaXQgZnJvbSBub3cuCj4gPj4KPiA+Cj4gPiBZZWEsIEkgYW5kIGFnYWlu
LCBJIGRvIGFncmVlIHRoaXMgaXMgZnVuY3Rpb25hbGl0eSB0aGF0IHdpbGwgYmUKPiA+IG5lZWRl
ZC4gQnV0IHdlJ2xsIG5lZWQgdG8gd2FpdCBmb3IgYSB1c2VyIChjYW1lcmEgZHJpdmVyLCBldGMg
d2hpY2gKPiA+IHdvdWxkIHV0aWxpemUgdGhlIHJlc2VydmVkIGNtYSByZWdpb24pIGJlZm9yZSB3
ZSBjYW4gbWVyZ2UgaXQKPiA+IHVwc3RyZWFtLiA6KCAgRG8gbGV0IG1lIGtub3cgaWYgeW91IGhh
dmUgYW4gb3V0IG9mIHRyZWUgZHJpdmVyIHRoYXQKPiA+IHdvdWxkIG1ha2UgdXNlIG9mIGl0LCBh
bmQgd2UgY2FuIHNlZSB3aGF0IGNhbiBiZSBkb25lIHRvIGhlbHAgdXBzdHJlYW0KPiA+IHRoaW5n
cy4KPgo+IFNvcnJ5IGZvciBsYXRlLgo+IEJlZm9yZSBJIHByZXBhcmUgb3IgZmluZCBhIHVzZXIg
ZHJpdmVyIGFzICJpbXBvcnRlciIsCj4gSSB0aGluayBzb21ldGhpbmcgaXMgZGlmZmVyZW50IGlu
IHRoaXMgcGF0Y2guCj4KPiBUaGlzIHBhdGNoIG1ha2VzIGl0IHBvc3NpYmxlIHRvIHRyZWF0IG5v
bi1kZWZhdWx0IENNQSBjb25uZWN0ZWQgdG8KPiAiaW1wb3J0ZXIiIGRldmljZSB3aXRoIG1lbW9y
eS1yZWdpb24gYXMgZG1hLWJ1ZiBoZWFwcy4KPgo+IEhvd2V2ZXIsIHRoZSBhbGxvY2F0ZWQgbWVt
b3J5IGZyb20gdGhpcyBkbWEtYnVmIGhlYXBzIGNhbiBiZSB1c2VkCj4gZm9yICJhbnkiIGRldmlj
ZXMsIGFuZCB0aGUgImltcG9ydGVyIiBjYW4gdHJlYXQgbWVtb3JpZXMgZnJvbSBvdGhlcgo+IGRt
YS1idWYgaGVhcHMuCj4KPiBTbywgdGhlICJpbXBvcnRlciIgYW5kIHRoZSBub24tZGVmYXVsdCBD
TUEgYXJlbid0IGRpcmVjdGx5IHJlbGF0ZWQsCj4gYW5kIEkgdGhpbmsgYW4gImV4cG9ydGVyIiBm
b3IgdGhlIG5vbi1kZWZhdWx0IENNQSBzaG91bGQgYmUgZW5hYmxlZC4KPgo+IEluIHBhdGljdWxh
ciwgdGhlIGtlcm5lbCBpbml0aWFsaXplciAoYXMgYW4gImV4cG9ydGVyIikgY2FsbHMKPiBkbWFf
aGVhcF9hZGRfY21hKCkgZm9yIGFsbCBDTUFzIGRlZmluZWQgaW4gRGV2aWNldHJlZSwgYW5kCj4g
dGhlIGRldmljZSBmaWxlcyBhc3NvY2lhdGVkIHdpdGggZWFjaCBDTUEgYXBwZWFyIHVuZGVyICIv
ZGV2L2RtYV9oZWFwLyIuCj4gRm9yIGV4YW1wbGU6Cj4KPiAgICAgL2Rldi9kbWFfaGVhcC9saW51
eCxjbWFAMTAwMDAwMDAKPiAgICAgL2Rldi9kbWFfaGVhcC9saW51eCxjbWFAMTEwMDAwMDAKPiAg
ICAgL2Rldi9kbWFfaGVhcC9saW51eCxjbWFAMTIwMDAwMDAKPiAgICAgLi4uCj4KPiBBbGwgb2Yg
dGhlc2UgZGV2aWNlIGZpbGVzIGNhbiBiZSBmYWlybHkgYWxsb2NhdGVkIHRvIGFueSAiaW1wb3J0
ZXIiIGRldmljZS4KPgo+IEFjdHVhbGx5IEkgdGhpbmsgdGhhdCB0aGUga2VybmVsIHNob3VsZCBl
eGVjdXRlcyBkbWFfaGVhcF9hZGRfY21hKCkKPiBmb3IgQUxMIGRlZmluZWQgcmVzZXJ2ZWQtbWVt
b3J5IG5vZGVzLgo+Cj4gSWYgdGhpcyBpZGVhIGhhc24ndCBiZWVuIGRpc2N1c3NlZCB5ZXQgYW5k
IHRoaXMgaXMgcmVhc29uYWJsZSwKPiBJJ2xsIHByZXBhcmUgUkZDIHBhdGNoZXMuCgpTbyB5ZXMh
IEFuIGVhcmxpZXIgdmVyc2lvbiBvZiB0aGUgQ01BIGhlYXAgSSBzdWJtaXR0ZWQgZGlkIGFkZCBh
bGwgQ01BCnJlZ2lvbnMgYXMgYWNjZXNzaWJsZSBoZWFwcyBhcyB5b3UgcHJvcG9zZSBoZXJlLgoK
SG93ZXZlciwgdGhlIGNvbmNlcm4gd2FzIHRoYXQgaW4gc29tZSBjYXNlcywgdGhvc2UgcmVnaW9u
cyBhcmUgZGV2aWNlCnNwZWNpZmljIHJlc2VydmVkIG1lbW9yeSB0aGF0IHRoZSBkcml2ZXIgaXMg
cHJvYmFibHkgZXhwZWN0aW5nIHRvIGhhdmUKZXhjbHVzaXZlIGFjY2Vzcy4gVG8gYWxsb3cgKHN1
ZmZpY2llbnRseSBwcml2aWxlZ2VkLCBvciBtaXNjb25maWd1cmVkKQp1c2VybGFuZCB0byBiZSBh
YmxlIHRvIGFsbG9jYXRlIG91dCBvZiB0aGF0IHNlZW1lZCBsaWtlIGl0IG1pZ2h0IGNhdXNlCnRy
b3VibGUsIGFuZCBpbnN0ZWFkIHdlIHNob3VsZCBoYXZlIENNQSByZWdpb25zIGV4cGxpY2l0bHkg
ZXhwb3J0ZWQuClRoZXJlIHdhcyBzb21lIHByb3Bvc2FsIHRvIGFkZCBhIGR0IHByb3BlcnR5IHRv
IHRoZSByZXNlcnZlZCBtZW1vcnkKc2VjdGlvbiAoc2ltaWxhciB0byBsaW51eCxjbWEtZGVmYXVs
dCkgYW5kIHVzZSB0aGF0IHRvIGRvIHRoZQpleHBvcnRpbmcsIGJ1dCBvdGhlciBkaXNjdXNzaW9u
cyBzZWVtZWQgdG8gcHJlZmVyIGhhdmluZyBkcml2ZXJzCmV4cG9ydCBpdCBleHBsaWNpdGx5IGlu
IGEgZmFzaGlvbiB2ZXJ5IHNpbWlsYXIgdG8gd2hhdCB5b3VyIGVhcmxpZXIKcGF0Y2ggZG9lcy4g
VGhlIG9ubHkgdHJvdWJsZSBpcyB3ZSBqdXN0IG5lZWQgYW4gdXBzdHJlYW0gZHJpdmVyIHRvIGFk
ZApzdWNoIGEgY2FsbCBpbiB0aGUgc2VyaWVzIGJlZm9yZSB3ZSBjYW4gbWVyZ2UgaXQuCgp0aGFu
a3MKLWpvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
