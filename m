Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A466B3DB27E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jul 2021 06:52:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C01D6354D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jul 2021 04:52:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5A9366451D; Fri, 30 Jul 2021 04:52:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F3D36329E;
	Fri, 30 Jul 2021 04:52:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7283D60A09
 for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jul 2021 04:52:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 663A86329E; Fri, 30 Jul 2021 04:52:34 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by lists.linaro.org (Postfix) with ESMTPS id 601EC60A09
 for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jul 2021 04:52:32 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id x8so1926825lfe.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 21:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ngOm50/YMKcUx0bA3+RSYUsPg/JdRRvBdoD4piFXpKk=;
 b=C8Jp7VhFjs0rnaOQ+PhARQZcXBqL3li1M1opg2ctxUM+UW431Xc6w3HRU9jqMEn9J8
 mjRiwwt+tWiXsLMDZKwx5ZLEtcnwodMbSLh35X6Dl8KI5jfLdkHovCiYFvU9yLOXdVzm
 T56dTYyum/xZim2C5bWj64K+N+jV8WY66Rg5/Bwn91Sn/snbwb/x3RlTxcAU29gmNhjl
 KgwS2oOAfASo09QS8QxiHdsYQiVobP5e9jTXOpOAtTaaFBAO8bP4tgRSWo5PZXJaTFyV
 bU5CM0EvtNCO+75RkPo/2Iit3ZJTxAR2kkb3LF3KCQ+AcEjKYyubIAL6gsTqWn2Kh4aO
 Xr+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ngOm50/YMKcUx0bA3+RSYUsPg/JdRRvBdoD4piFXpKk=;
 b=mqVP/d0a60/+SFy2kr08R3QoXkS72KEDBYEHlIzkCFsdZ58EVsetnE+jOqaXegx3bP
 wAb8ekrNQWu6GRbC7WLcWQN5v/HqIRZOB4rW0ZpQPbK2OnAcBIpSuvaRxPENHSt5l8SZ
 jBZ48NSjGBd6YUyB2wTUKD1xfzdVFNGdLpgnbBAYLUUUg3wHnoWzdGNuwe9twxHvC3R6
 8iZJ8aW7kuIbtpKukuSlYJrmMBGbP53yiygTICyNYBmTuasEUPo0LKckWQQPJH2sX9WV
 rxlxWPTOIjV9IbadG4udJ1ntPEKYp3R68k9y9O995VuDs2PCJQcy7H8vpFWgQsmW4CRW
 WSdA==
X-Gm-Message-State: AOAM530dsUDMVbgbK+RK+eJgX6FA+ZPE3YWQxirwTxcItCRs0yUN7jXu
 qjoO7z3F+aD9vUq4pah+FIIAlCbLvViCSAV5cvxdvwrf
X-Google-Smtp-Source: ABdhPJzDU5NmVnsCGCr2QxJh2cy55utwKVijKkr1tTD5MHrq+mqK18bOqc1KLFYSb9qZZ3DlCCOrI4gJHyxXUU4u7Zw=
X-Received: by 2002:ac2:4a8d:: with SMTP id l13mr426511lfp.626.1627620751019; 
 Thu, 29 Jul 2021 21:52:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210729070330.41443-1-christian.koenig@amd.com>
 <20210729070330.41443-3-christian.koenig@amd.com>
 <YQJXi2JNZdH5DaR2@phenom.ffwll.local>
In-Reply-To: <YQJXi2JNZdH5DaR2@phenom.ffwll.local>
From: John Stultz <john.stultz@linaro.org>
Date: Thu, 29 Jul 2021 21:52:19 -0700
Message-ID: <CALAqxLVN7RVz3+z1ZvkRHeb2=Y4KbpbTOw-8St0D+Lzt5U-cFw@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 3/3] dma-buf: nuke SW_SYNC debugfs files
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Alistair Delva <adelva@google.com>, Sandeep Patil <sspatil@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>, Hridya Valsaraju <hridya@google.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCBKdWwgMjksIDIwMjEgYXQgMTI6MjQgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPiB3cm90ZToKPgo+IE9uIFRodSwgSnVsIDI5LCAyMDIxIGF0IDA5OjAzOjMwQU0gKzAy
MDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gPiBBcyB3ZSBub3cga25ldyBjb250cm9sbGlu
ZyBkbWFfZmVuY2Ugc3luY2hyb25pemF0aW9uIGZyb20gdXNlcnNwYWNlIGlzCj4gPiBleHRyZW1l
bHkgZGFuZ2Vyb3VzIGFuZCBjYW4gbm90IG9ubHkgZGVhZGxvY2sgZHJpdmVycyBidXQgdHJpdmlh
bGx5IGFsc28gdGhlCj4gPiB3aG9sZSBrZXJuZWwgbWVtb3J5IG1hbmFnZW1lbnQuCj4gPgo+ID4g
RW50aXJlbHkgcmVtb3ZlIHRoaXMgb3B0aW9uLiBXZSBub3cgaGF2ZSBpbiBrZXJuZWwgdW5pdCB0
ZXN0cyB0byBleGVyY2lzZSB0aGUKPiA+IGRtYV9mZW5jZSBmcmFtZXdvcmsgYW5kIGl0J3MgY29u
dGFpbmVycy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4KPiBUaGVyZSdzIGFsc28gaWd0cyBmb3IgdGhpcywgYW5kIEFu
ZHJvaWQgaGVhdmlseSB1c2VzIHRoaXMuIFNvIEknbSBub3Qgc3VyZQo+IHdlIGNhbiBqdXN0IG51
a2UgaXQuCgpFZWVlaC4uLiBJIGRvbid0IHRoaW5rIHRoYXQncyBhY3R1YWxseSB0aGUgY2FzZSBh
bnltb3JlLiBBcyBvZgphbmRyb2lkMTItNS4xMCBDT05GSUdfU1dfU1lOQyBpcyBub3QgdHVybmVk
IG9uLgpGdXJ0aGVyLCBBbmRyb2lkIGlzIGRpc2FibGluZyBkZWJ1Z2ZzIGluIHRoZWlyIGtlcm5l
bHMgYXMgaXQgZXhwb3Nlcwp0b28gbXVjaCB0byB1c2VybGFuZC4KClRoYXQgc2FpZCwgdGhlcmUg
c3RpbGwgYXJlIHNvbWUgcmVmZXJlbmNlcyB0byBpdDoKICBodHRwczovL2NzLmFuZHJvaWQuY29t
L2FuZHJvaWQvcGxhdGZvcm0vc3VwZXJwcm9qZWN0LysvbWFzdGVyOnN5c3RlbS9jb3JlL2xpYnN5
bmMvc3luYy5jO2w9NDE2CgpCdXQgaXQgbG9va3MgbGlrZSB0aGUgYWN0dWFsIHVzZXJzIGFyZSBv
bmx5IGtzZWxmdGVzdCBhbmQgaWd0PwoKQWRkaW5nIEFsaXN0YWlyLCBIcmlkeWEgYW5kIFNhbmRl
ZXAgaW4gY2FzZSB0aGV5IGhhdmUgbW9yZSBjb250ZXh0LgoKdGhhbmtzCi1qb2huCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
