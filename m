Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 549AD3FFBCA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 10:22:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF46D62175
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 08:22:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5EA4D62166; Fri,  3 Sep 2021 08:22:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46DF361081;
	Fri,  3 Sep 2021 08:22:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7106960581
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 08:22:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6EBE361081; Fri,  3 Sep 2021 08:22:05 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 65E5160581
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 08:22:03 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id z4so7018682wrr.6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Sep 2021 01:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=MgMZnvLFXAcSBdvB9Oxgj/mRrofgWEwJiqDsGLdXgQc=;
 b=ohorBxGGL874DiMlNf0oZ8t7n+49x8bJ2gftr1I1Q0cKWBj13bs5G8PvKMWlOEl2+X
 xYY44rW/kP8t9ic4mbVdXfL6e8g4inoOUm8Vj8lEgiJPNaWMNeOt8lnDFvZWsSiPXjrf
 gB+VJftyUa5qsxCrUb9BW5xrJDEIDtBOr4XKiRfqjJ64nhENIc8rKXwdw/3+BiNDnR4l
 2XXgm1lVZy3xtYcORP33b3uw94lNG48Zj0tpX6ZoewM3BCQosAfUO0VQkDAkhcOU1suJ
 eyhR+LHEto7JhQ575B8zgwjfwqMLwtDx8lwljeQx8QtcXjOjJxRhoLHd903VTETt6o2T
 DlAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=MgMZnvLFXAcSBdvB9Oxgj/mRrofgWEwJiqDsGLdXgQc=;
 b=tr9a0Euw/LM5bjx/3hC7pzwdyVED2dnTjOa1H0Jk/vqdEL9P/XlPBl7nSTpMwFtgrA
 x6cxCiM5h1KCrdr0gQykCUg67r/rq6LY/2zqlLBOmf6PNXOjwUV2Eq7EibKIUMivFBnQ
 kpVou6ap/km2fNceYEDarveOPOhv4Gdx78JLcs/hwiHRZMPo30h0yiryDfRadB2/Gfkj
 HtuWHm5ZtNU4MVmrz5OE5ge02XBLLSncjp64ChVN0T47xtWWxUAxfzw99g4Nm6pd50UD
 6LcoT4wEzPUhgYTqWI4EyfJKfUbcbUZLD8Gjjlf2IcV8m+vpLa7Jg8W5SWA0n5pfsGoe
 vbWA==
X-Gm-Message-State: AOAM532x/R1hs85xjP6tm9beDQ4yMjZDOj12YNiwYJPFn/U+MwWYhfoe
 exJrFat5sjDRwh0zp2sws7B0vJHfPB9B0Hx/
X-Google-Smtp-Source: ABdhPJwXY6GkZxqh7co8a/VRchCKbhjMyuqujyVMVqVrZPFQA1Kc45qboE2uhd8vPXT3FWi3vJTNIw==
X-Received: by 2002:adf:c785:: with SMTP id l5mr2653367wrg.360.1630657322464; 
 Fri, 03 Sep 2021 01:22:02 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id a77sm3919302wmd.31.2021.09.03.01.22.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Sep 2021 01:22:02 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210901120240.7339-1-christian.koenig@amd.com>
 <20210901120240.7339-3-christian.koenig@amd.com>
 <YTDi8BNRXcEkf8a4@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <992a4531-da58-d6e5-8cb2-a21407743397@gmail.com>
Date: Fri, 3 Sep 2021 10:22:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YTDi8BNRXcEkf8a4@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dma-buf: clarify
 dma_fence_add_callback documentation
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDIuMDkuMjEgdW0gMTY6NDIgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgU2Vw
IDAxLCAyMDIxIGF0IDAyOjAyOjQwUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFRoYXQgdGhlIGNhbGxlciBkb2Vzbid0IG5lZWQgdG8ga2VlcCBhIHJlZmVyZW5jZSBpcyByYXRo
ZXIKPj4gcmlza3kgYW5kIG5vdCBkZWZlbnNpdmUgYXQgYWxsLgo+Pgo+PiBFc3BlY2lhbGx5IGRt
YV9idWZfcG9sbCBnb3QgdGhhdCBob3JyaWJsZSB3cm9uZywgc28gYmV0dGVyCj4+IHJlbW92ZSB0
aGF0IHNlbnRlbmNlIGFuZCBhbHNvIGNsYXJpZnkgdGhhdCB0aGUgY2FsbGJhY2sKPj4gbWlnaHQg
YmUgY2FsbGVkIGluIGF0b21pYyBvciBpbnRlcnJ1cHQgY29udGV4dC4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IFN0aWxs
IG9uIHRoZSBmZW5jZSBiZXR3ZWVuIGRvY3VtZW50aW5nIHRoZSBwcmVjaXNlIHJ1bGVzIGFuZCBk
b2N1bWVudGluZwo+IHRoZSBzYWZlIHJ1bGVzLCBidXQgdGhpcyBpcyB0cmlja3kgZW5vdWdoIHRo
YXQgeW91IGdvdCBtZSBjb252aW5jZWQuIFBsdXMKPiBzaG9ydGVyLCBzaW1wbGVyLCBjbGVhcmVy
IGtlcm5lbGRvYyBoYXMgbXVjaCBiZXR0ZXIgY2hhbmNlcyBvZiBiZWluZyByZWFkLAo+IHVuZGVy
c3Rvb2QgYW5kIGZvbGxvd2VkLgoKSSB0aGluayB0aGF0IGZvciBkb2N1bWVudGF0aW9uIHdlIHNo
b3VsZCBhcHBseSB0aGUgc2FtZSBydWxlcyB3ZSBoYXZlIApmb3IgY29kZS4KCkUuZy4ga2VlcCBp
dCBzaW1wbGUgdW50aWwgeW91IGFic29sdXRlbHkgaGF2ZSB0byBtYWtlIGl0IGNvbXBsZXggYW5k
IAprZWVwIGl0IGRlZmVuc2l2ZSB3aXRoIHRoZSBsZWFzdCBwcm9iYWJpbGl0eSBmb3Igc29tZXRo
aW5nIHRvIGdvIHdyb25nLgoKPiBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4KClRoYW5rcywKQ2hyaXN0aWFuLgoKPgo+PiAtLS0KPj4gICBkcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLmMgfCAxMyArKysrKy0tLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+
PiBpbmRleCBjZTBmNWVmZjU3NWQuLjFlODJlY2Q0NDNmYSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
Ywo+PiBAQCAtNjE2LDIwICs2MTYsMTcgQEAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfZW5hYmxl
X3N3X3NpZ25hbGluZyk7Cj4+ICAgICogQGNiOiB0aGUgY2FsbGJhY2sgdG8gcmVnaXN0ZXIKPj4g
ICAgKiBAZnVuYzogdGhlIGZ1bmN0aW9uIHRvIGNhbGwKPj4gICAgKgo+PiArICogQWRkIGEgc29m
dHdhcmUgY2FsbGJhY2sgdG8gdGhlIGZlbmNlLiBUaGUgY2FsbGVyIHNob3VsZCBrZWVwIGEgcmVm
ZXJlbmNlIHRvCj4+ICsgKiB0aGUgZmVuY2UuCj4+ICsgKgo+PiAgICAqIEBjYiB3aWxsIGJlIGlu
aXRpYWxpemVkIGJ5IGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soKSwgbm8gaW5pdGlhbGl6YXRpb24K
Pj4gICAgKiBieSB0aGUgY2FsbGVyIGlzIHJlcXVpcmVkLiBBbnkgbnVtYmVyIG9mIGNhbGxiYWNr
cyBjYW4gYmUgcmVnaXN0ZXJlZAo+PiAgICAqIHRvIGEgZmVuY2UsIGJ1dCBhIGNhbGxiYWNrIGNh
biBvbmx5IGJlIHJlZ2lzdGVyZWQgdG8gb25lIGZlbmNlIGF0IGEgdGltZS4KPj4gICAgKgo+PiAt
ICogTm90ZSB0aGF0IHRoZSBjYWxsYmFjayBjYW4gYmUgY2FsbGVkIGZyb20gYW4gYXRvbWljIGNv
bnRleHQuICBJZgo+PiAtICogZmVuY2UgaXMgYWxyZWFkeSBzaWduYWxlZCwgdGhpcyBmdW5jdGlv
biB3aWxsIHJldHVybiAtRU5PRU5UIChhbmQKPj4gKyAqIElmIGZlbmNlIGlzIGFscmVhZHkgc2ln
bmFsZWQsIHRoaXMgZnVuY3Rpb24gd2lsbCByZXR1cm4gLUVOT0VOVCAoYW5kCj4+ICAgICogKm5v
dCogY2FsbCB0aGUgY2FsbGJhY2spLgo+PiAgICAqCj4+IC0gKiBBZGQgYSBzb2Z0d2FyZSBjYWxs
YmFjayB0byB0aGUgZmVuY2UuIFNhbWUgcmVzdHJpY3Rpb25zIGFwcGx5IHRvCj4+IC0gKiByZWZj
b3VudCBhcyBpdCBkb2VzIHRvIGRtYV9mZW5jZV93YWl0KCksIGhvd2V2ZXIgdGhlIGNhbGxlciBk
b2Vzbid0IG5lZWQgdG8KPj4gLSAqIGtlZXAgYSByZWZjb3VudCB0byBmZW5jZSBhZnRlcndhcmQg
ZG1hX2ZlbmNlX2FkZF9jYWxsYmFjaygpIGhhcyByZXR1cm5lZDoKPj4gLSAqIHdoZW4gc29mdHdh
cmUgYWNjZXNzIGlzIGVuYWJsZWQsIHRoZSBjcmVhdG9yIG9mIHRoZSBmZW5jZSBpcyByZXF1aXJl
ZCB0byBrZWVwCj4+IC0gKiB0aGUgZmVuY2UgYWxpdmUgdW50aWwgYWZ0ZXIgaXQgc2lnbmFscyB3
aXRoIGRtYV9mZW5jZV9zaWduYWwoKS4gVGhlIGNhbGxiYWNrCj4+IC0gKiBpdHNlbGYgY2FuIGJl
IGNhbGxlZCBmcm9tIGlycSBjb250ZXh0Lgo+PiArICogTm90ZSB0aGF0IHRoZSBjYWxsYmFjayBj
YW4gYmUgY2FsbGVkIGZyb20gYW4gYXRvbWljIGNvbnRleHQgb3IgaXJxIGNvbnRleHQuCj4+ICAg
ICoKPj4gICAgKiBSZXR1cm5zIDAgaW4gY2FzZSBvZiBzdWNjZXNzLCAtRU5PRU5UIGlmIHRoZSBm
ZW5jZSBpcyBhbHJlYWR5IHNpZ25hbGVkCj4+ICAgICogYW5kIC1FSU5WQUwgaW4gY2FzZSBvZiBl
cnJvci4KPj4gLS0gCj4+IDIuMjUuMQo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
