Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F81D387A69
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 May 2021 15:51:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A8836109D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 May 2021 13:51:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E95CE60AD3; Tue, 18 May 2021 13:51:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA8F260AD3;
	Tue, 18 May 2021 13:51:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 50798604C3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 13:51:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4E67360AD3; Tue, 18 May 2021 13:51:10 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by lists.linaro.org (Postfix) with ESMTPS id 38A02604C3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 13:51:08 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id p24so13443529ejb.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 06:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=H8BiU6DOGOW5f6WfUlJmBeoZ0QJNBvbj4Vvb4k4VW+Y=;
 b=izG0HQnhby9bBPvsJkTkwDjERCs/ysS9w4FBy+Y4iFXO5HmN1+8h/q3DfOjSDeHmnP
 z7UWatxn3bbo4mjZaJhqnvPIAzHrj0sMmZEGN5pbBhzztIveyBDQ+PtyigyJqxSY7+SK
 jXES+dn+amfJgq6B02YdZ88kWgsnQJrEbawr2Qyjo1JNg0ZL7gZu/whw9yBxWCBcuKLi
 brnMdNNJXguOOvXbHcZtSe1F1pZT6ESC94BZe/Z8irdTF40yqUbixG5AUOaQXdg3Sx6p
 RDklEQELYuWBfbgQCkmxgOX0fKTr0K/GkwGOk6JJd4Q+HHUaVxt9CRk6lGfoohqKEaNJ
 //qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=H8BiU6DOGOW5f6WfUlJmBeoZ0QJNBvbj4Vvb4k4VW+Y=;
 b=svlqgBw2o4u9sSEbQokcJo6QGDblHGqzpH99tjkhWXFDP4GxL1bN7CJ9RWgJQVsvvR
 bO+f/jZmEalZpTncucA0aTQQh3W0nQW8iLuJtuEbttP1CkyygwWZxNlCFkHv8EN01VeF
 b9PA9Bo7HIjdemjZpUgwZKXRK7P706DaUezrDX3OcGxAGfJ28yXYLUgd3IhP+IQ/+4pr
 WR3c/H1uSV5/gasfsGVTPyYoouA1ApzqLKFDWAB7MyeHEtsm4oVrtAeiram20e+zvSNl
 9LXR+j4WLn4PvCEMocmH2Tb5hzhV/ZiBKKEuRm3qK89b+v/GFf9bVqF2SWYwCajgvJcx
 dtWA==
X-Gm-Message-State: AOAM530czL5ISLQpfHqe0OzVfrm9MtEwXG0Nq7e1Z1bLcLI9UaCNe6Ln
 jo1eqrefQf8AjP0HvL478Xw=
X-Google-Smtp-Source: ABdhPJw9M116HnYxdYcivnj11KL9q3nu3EUn6CYqQyDtKQfknySljFZhh4qTnXX9kBKelQ8UZxTIhA==
X-Received: by 2002:a17:906:3042:: with SMTP id
 d2mr6228223ejd.234.1621345867365; 
 Tue, 18 May 2021 06:51:07 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:3b27:1830:9671:4cc9?
 ([2a02:908:1252:fb60:3b27:1830:9671:4cc9])
 by smtp.gmail.com with ESMTPSA id k5sm14437656edk.46.2021.05.18.06.51.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 May 2021 06:51:06 -0700 (PDT)
To: Daniel Stone <daniel@fooishbar.org>
References: <20210517141129.2225-1-christian.koenig@amd.com>
 <YKKF4jOvM4gJT6a4@phenom.ffwll.local>
 <5a3e9500-9d6b-a865-5385-fde43da2bf66@gmail.com>
 <CAKMK7uF=y44e9-0-4MBj3jRBdCqMaLgKutTMeBWCbySRnPR4KQ@mail.gmail.com>
 <CAOFGe960UMe4=Xxcoha9R2Y74ma3Pp4Z0DF6PM+SJ2sjq2DBXg@mail.gmail.com>
 <CAKMK7uGtTT+59hRi3PB1WHPES3YJAPYBvbT74vo9PApNE0i7MQ@mail.gmail.com>
 <fee06c2d-27fb-1af4-6222-8f277b36c951@gmail.com>
 <CAPj87rN-1ST_wvnobEaeNNiOYdM9yAOvfZ+8_tcxbrFof3L-yA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <beb96836-2c9a-d37f-23e8-e093b3533d2f@gmail.com>
Date: Tue, 18 May 2021 15:51:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAPj87rN-1ST_wvnobEaeNNiOYdM9yAOvfZ+8_tcxbrFof3L-yA@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC] Add DMA_RESV_USAGE flags
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
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>, Daniel Vetter <daniel@ffwll.ch>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTguMDUuMjEgdW0gMTU6MjYgc2NocmllYiBEYW5pZWwgU3RvbmU6Cj4gT24gVHVlLCAxOCBN
YXkgMjAyMSBhdCAxMzo0OSwgQ2hyaXN0aWFuIEvDtm5pZwo+IDxja29lbmlnLmxlaWNodHp1bWVy
a2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4+IEFtIDE4LjA1LjIxIHVtIDA3OjU5IHNjaHJpZWIgRGFu
aWVsIFZldHRlcjoKPj4+IEZpcnN0IHN0ZXAgaW4gZml4aW5nIHRoYXQgaXMgKGFuZCBmcmFua2x5
IHdhcyBzaW5jZSB5ZWFycykgdG8gZml4IHRoZQo+Pj4gYW1kZ3B1IENTIHNvIHdpbnN5cyBjYW4g
cGFzcyBhbG9uZyBhIGJ1bmNoIG9mIGZsYWdzIGFib3V0IHdoaWNoIENTCj4+PiBzaG91bGQgYWN0
dWFsbHkgc2V0IHRoZSBleGNsdXNpdmUgZmVuY2UsIHNvIHRoYXQgeW91IHN0b3Agb3ZlcnN5bmNp
bmcKPj4+IHNvIGJhZGx5LiBPZmMgb2xkIHVzZXJzcGFjZSBuZWVkcyB0byBrZWVwIG92ZXJzeW5j
aW5nIGZvcmV2ZXIsIG5vIHdheQo+Pj4gdG8gZml4IHRoYXQuCj4+IEV4YWN0bHkgdGhhdCBpcyB3
aGF0IHdlIGRvbid0IHdhbnQgdG8gZG8gYmVjYXVzZSB0aGUgd2luc3lzIGhhcyBubyBpZGVhCj4+
IHdoZW4gdG8gc3luYyBhbmQgd2hlbiBub3QgdG8gc3luYy4KPiBIZXksIHdlJ3JlIHR5cGluZyB0
aGF0IG91dCBhcyBmYXN0IGFzIHdlIGNhbiAuLi4gaXQncyBqdXN0IHRoYXQgeW91Cj4ga2VlcCBy
ZWludmVudGluZyBzeW5jIHByaW1pdGl2ZXMgZmFzdGVyIHRoYW4gd2UgY2FuIHNoaXAgc3VwcG9y
dCBmb3IKPiB0aGVtIDpQCgpZb3UgY2FuIHN0b3AgdHlwaW5nLiBXZSB3aWxsIGV2ZW4gbmVlZCB0
aGF0IGZvciBiYWNrd2FyZCBjb21wYXRpYmlsaXR5LgoKQnV0IHllYWgsIG5vdCByZWludmVudGlu
ZyBzeW5jX2ZpbGUgc3VwcG9ydCB3aXRoIGRybV9zeW5jb2JqIHdvdWxkIGhhdmUgCmhlbHBlZCA6
KQoKQ2hlZXJzLApDaHJpc3RpYW4uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
