Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1760C38B76D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:22:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F13F61407
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:22:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1A13A613F5; Thu, 20 May 2021 19:22:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1CCB61394;
	Thu, 20 May 2021 19:22:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7AE316137E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:22:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7895461394; Thu, 20 May 2021 19:22:44 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com
 [209.85.161.47])
 by lists.linaro.org (Postfix) with ESMTPS id 6FE4B6137E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:22:42 +0000 (UTC)
Received: by mail-oo1-f47.google.com with SMTP id
 f22-20020a4aeb160000b029021135f0f404so981198ooj.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EjT7GiCfXinEXUQOvKuQzFUPIz+xSQbJvdKQn8o730Q=;
 b=J6JyotW8A4NEMe3rO8EdKpWc6K9L6dzZQkTX0VlmudWLmoDYuUe1tk0R8L7q1mX4TQ
 FBcSeqnfkGJfo8dGTyRhTqmwKd3RILGOJCAWKF/7IXWgtXAkDsJIq4r5/QCzxdnIXazc
 eDyMEcRlY7Yo+Uskm8PGaxYeX8xn69LQFccSZeUK15taQP5c68EwbFWncAUBDODaz7eR
 8VlbWsit1MeEyvAUdqCBsEX6hZ9zYNFaYuxZ4a02XOcsrTu5JULnfRVfn6WdEaOYFucY
 7TmeSo55tUz0A2Yr5aA932q8UN1XfomsuSFKtzX6EoMUVDzwgrPpgFud6yVdL+JBRIrw
 tvwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EjT7GiCfXinEXUQOvKuQzFUPIz+xSQbJvdKQn8o730Q=;
 b=sB2Cb1LRxTDkDMX+YZijfltIfFDX8iKZmzyACASwsYKSGIXQufvooHXjQm91fQnYVE
 zo8dLzqCVVTaqqQL5gcI1PYhNtrRjwTvxv0MUF/QPmz+/DCIAPA1Xgmn/zM4Sw/h+wRw
 iz6KEsZaZ7UHAEfeyyRP/IHcbxVsbrxqgvZWB+JHF4SHH9GOTfsmZEOTOXjJzBPLURck
 TJNiYCzzm3cmUNYqMO5E8BzVGbR/GRTA+TAplQ1v+rb0tnhJLgRchTLHn0PogxHiFEpG
 59nKUPyG88PoidryieBntDd0X1lUayY3CceDkioCYpg5x5cYNiXE1fVXRmrmvNzkqI8E
 F65Q==
X-Gm-Message-State: AOAM531o0eIea7Y985dpVD2RaaPIIunKaPu2YtaSB0H1mN6tt9RAr7Fx
 y4+KxUWBtBAhPxIGCUt3DhMDOhBNoU7WH+kRWi0=
X-Google-Smtp-Source: ABdhPJy68VS+3Rrx6xIOPNbBqW0+PFwgP19t6GdE0mfrNGhJU9QeDmXfAw6Wqvfqhk5v26syXxUUfcLiuaYFjHe73Nw=
X-Received: by 2002:a4a:d543:: with SMTP id q3mr4949388oos.72.1621538562024;
 Thu, 20 May 2021 12:22:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-32-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-32-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:22:30 -0400
Message-ID: <CADnq5_NMkxBTOe535wAjmpjT0VH2Xu4v6VRs0gn=Hp3g9y+sbA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 31/38] drm/amd/amdgpu/sdma_v2_4: Correct
 misnamed function 'sdma_v2_4_ring_emit_hdp_flush()'
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
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCk9uIFRodSwgTWF5IDIwLCAyMDIxIGF0IDg6MDMgQU0gTGVlIEpv
bmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5n
IFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9zZG1hX3YyXzQuYzoyODE6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIHNk
bWFfdjJfNF9oZHBfZmx1c2hfcmluZ19lbWl0KCkuIFByb3RvdHlwZSB3YXMgZm9yIHNkbWFfdjJf
NF9yaW5nX2VtaXRfaGRwX2ZsdXNoKCkgaW5zdGVhZAo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxl
eGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4K
PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1l
ZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
PiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3YyXzQuYyB8IDIgKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Ml80LmMgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9zZG1hX3YyXzQuYwo+IGluZGV4IDlmMGRkYTA0MGVjODguLjQ1MDliZDRjY2Uy
ZDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Ml80LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3YyXzQuYwo+IEBAIC0yNzEs
NyArMjcxLDcgQEAgc3RhdGljIHZvaWQgc2RtYV92Ml80X3JpbmdfZW1pdF9pYihzdHJ1Y3QgYW1k
Z3B1X3JpbmcgKnJpbmcsCj4gIH0KPgo+ICAvKioKPiAtICogc2RtYV92Ml80X2hkcF9mbHVzaF9y
aW5nX2VtaXQgLSBlbWl0IGFuIGhkcCBmbHVzaCBvbiB0aGUgRE1BIHJpbmcKPiArICogc2RtYV92
Ml80X3JpbmdfZW1pdF9oZHBfZmx1c2ggLSBlbWl0IGFuIGhkcCBmbHVzaCBvbiB0aGUgRE1BIHJp
bmcKPiAgICoKPiAgICogQHJpbmc6IGFtZGdwdSByaW5nIHBvaW50ZXIKPiAgICoKPiAtLQo+IDIu
MzEuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
