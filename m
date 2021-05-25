Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 022D8390549
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 May 2021 17:23:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 785B760B6E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 May 2021 15:23:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6F68560B3B; Tue, 25 May 2021 15:23:56 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1337760AB5;
	Tue, 25 May 2021 15:23:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 862A760A9F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 May 2021 15:23:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7AB6760AB5; Tue, 25 May 2021 15:23:51 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 by lists.linaro.org (Postfix) with ESMTPS id 72F8060A9F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 May 2021 15:23:49 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id d21so30602648oic.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 May 2021 08:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kTDVYERloXMatCyeiZprMdw+ZqqAF8U3vkXxwNviuhE=;
 b=hFRX90RiXmVdz6wOJEn4loBpHqSWMrMbjZynm/DxKGZsKMl+hkatktMc3cP5Dg0KJr
 +5P0ufkS0x1utRnP5TriCW9U7L1/m5IQfZM+WxrdUkGENWSrDCVDoYM5kqnhnHvtMqgA
 9OcrvouZwFc/e0+kT4i55+Ne4FK56XH6+uhfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kTDVYERloXMatCyeiZprMdw+ZqqAF8U3vkXxwNviuhE=;
 b=ppNr8aw1NBvMh35qjD1W5we0KGiBo2z2Rq/M6LR9kzf7g4n3CBJCypmsE+/HlnjMEJ
 40E9ua+lYpK8P9rs+dO5q+Lq5m7jiMbkaf9H+hgKMC4fca9Q5+k0Q4805uk5+vXde8/f
 2nezli3jFUEtGEjn6jc3WLVHhSLe7wF0v3pVCCrdcFzZZJTjCIIdbAb1idiGTVK1baQ4
 3rlcyPLx4POLfd9UBTDsSRY5JhjrPUCHsbKyCQXa9MlkaN7BfgSOGlcKFwjO52QC21Z6
 8OTbKTcWeIKQkLzcYjVdxuEkmpYoKvmE8tzpN6vnUpWuGB8AIaO0swJty7l2SojDOeWT
 Z93g==
X-Gm-Message-State: AOAM532n1JH7QT9B7OSDY6WkQS9eDKuoDaf6ombBlpggOXWitO/cJdjz
 CjxLLcxEV9jgioeA9T3RwFiLuGmQC4SMcwzXtKjTsw==
X-Google-Smtp-Source: ABdhPJxBtqznOER5ji1pe4q7zkzmZLFcts0wZUaXWwdx183bu9IvqBts79PXhAkKTw3Mm2nfiB5S2ymvDCJqaInJxj0=
X-Received: by 2002:a54:4809:: with SMTP id j9mr3145800oij.14.1621956228923;
 Tue, 25 May 2021 08:23:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <CAP+8YyEhRwgz2hCri3K7Kv1OusVa_LGEuKZqQEx5jv+NiDKZrA@mail.gmail.com>
 <YKfFqrlLrikGMn4K@phenom.ffwll.local>
 <CAP+8YyG0o58dQt_tvnJ2ESbeqo02xxvFdifpMwnhz2VYNk8HUw@mail.gmail.com>
 <YKfOymXrB7O4cYVb@phenom.ffwll.local>
 <31467363-e936-879b-8b0d-5a2a92644221@gmail.com>
 <CAKMK7uFswfc96hS40uc0Lug=doYAcf-yC-eu96iWqNJnM65MJQ@mail.gmail.com>
 <ae13093e-c364-7b90-1f91-39de42594cd6@amd.com>
 <YKz2KVppVoYMxB5u@phenom.ffwll.local>
 <312b183f-8eb2-d9e2-24ad-b429b74c886c@gmail.com>
In-Reply-To: <312b183f-8eb2-d9e2-24ad-b429b74c886c@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 25 May 2021 17:23:37 +0200
Message-ID: <CAKMK7uG-JYieYvnc0R-FXJJDrCZfypvstYw2NrLPRt+J9=oe1g@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Mesa-dev] [PATCH 01/11] drm/amdgpu: Comply
 with implicit fencing rules
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Stone <daniels@collabora.com>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 mesa-dev <mesa-dev@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBNYXkgMjUsIDIwMjEgYXQgNTowNSBQTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBEYW5pZWwsCj4KPiBBbSAy
NS4wNS4yMSB1bSAxNTowNSBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiBIaSBDaHJpc3RpYW4s
Cj4gPgo+ID4gT24gU2F0LCBNYXkgMjIsIDIwMjEgYXQgMTA6MzA6MTlBTSArMDIwMCwgQ2hyaXN0
aWFuIEvDtm5pZyB3cm90ZToKPiA+PiBBbSAyMS4wNS4yMSB1bSAyMDozMSBzY2hyaWViIERhbmll
bCBWZXR0ZXI6Cj4gPj4gVGhpcyB3b3JrcyBieSBhZGRpbmcgdGhlIGZlbmNlIG9mIHRoZSBsYXN0
IGV2aWN0aW9uIERNQSBvcGVyYXRpb24gdG8gQk9zCj4gPj4gd2hlbiB0aGVpciBiYWNraW5nIHN0
b3JlIGlzIG5ld2x5IGFsbG9jYXRlZC4gVGhhdCdzIHdoYXQgdGhlCj4gPj4gdHRtX2JvX2FkZF9t
b3ZlX2ZlbmNlKCkgZnVuY3Rpb24geW91IHN0dW1ibGVkIG92ZXIgaXMgZ29vZCBmb3I6IGh0dHBz
Oi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjEzLXJjMi9zb3VyY2UvZHJpdmVycy9ncHUv
ZHJtL3R0bS90dG1fYm8uYyNMNjkyCj4gPj4KPiA+PiBOb3cgdGhlIHByb2JsZW0gaXMgaXQgaXMg
cG9zc2libGUgdGhhdCB0aGUgYXBwbGljYXRpb24gaXMgdGVybWluYXRlZCBiZWZvcmUKPiA+PiBp
dCBjYW4gY29tcGxldGUgaXQncyBjb21tYW5kIHN1Ym1pc3Npb24uIEJ1dCBzaW5jZSByZXNvdXJj
ZSBtYW5hZ2VtZW50IG9ubHkKPiA+PiB3YWl0cyBmb3IgdGhlIHNoYXJlZCBmZW5jZXMgd2hlbiB0
aGVyZSBhcmUgc29tZSB0aGVyZSBpcyBhIGNoYW5jZSB0aGF0IHdlCj4gPj4gZnJlZSB1cCBtZW1v
cnkgd2hpbGUgaXQgaXMgc3RpbGwgaW4gdXNlLgo+ID4gSG0gd2hlcmUgaXMgdGhpcyBjb2RlPyBX
b3VsZCBoZWxwIGluIG15IGF1ZGl0IHRoYXQgSSB3YW50ZWQgdG8gZG8gdGhpcwo+ID4gd2Vlaz8g
SWYgeW91IGxvb2sgYXQgbW9zdCBvdGhlciBwbGFjZXMgbGlrZQo+ID4gZHJtX2dlbV9mZW5jZV9h
cnJheV9hZGRfaW1wbGljaXQoKSBJIG1lbnRpb25lZCBlYXJsaWVyLCB0aGVuIHdlIGRvbid0Cj4g
PiB0cmVhdCB0aGUgc2hhcmVkIGZlbmNlcyBzcGVjaWFsIGFuZCBhbHdheXMgYWxzbyBpbmNsdWRl
IHRoZSBleGNsdXNpdmUgb25lLgo+Cj4gU2VlIGFtZGdwdV9nZW1fb2JqZWN0X2Nsb3NlKCk6Cj4K
PiAuLi4KPiAgICAgICAgICBmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsKGJvLT50Ym8uYmFzZS5y
ZXN2KTsKPiAgICAgICAgICBpZiAoZmVuY2UpIHsKPiAgICAgICAgICAgICAgICAgIGFtZGdwdV9i
b19mZW5jZShibywgZmVuY2UsIHRydWUpOwo+ICAgICAgICAgICAgICAgICAgZmVuY2UgPSBOVUxM
Owo+ICAgICAgICAgIH0KPiAuLi4KPgo+IFdlIGV4cGxpY2l0bHkgYWRkZWQgdGhhdCBiZWNhdXNl
IHJlc291cmNlIG1hbmFnZW1lbnQgb2Ygc29tZSBvdGhlcgo+IGRyaXZlciB3YXMgZ29pbmcgdG90
YWxseSBiYW5hbmFzIHdpdGhvdXQgdGhhdC4KPgo+IEJ1dCBJJ20gbm90IHN1cmUgd2hpY2ggb25l
IHRoYXQgd2FzLiBNYXliZSBkaWcgYSBiaXQgaW4gdGhlIGdpdCBhbmQKPiBtYWlsaW5nIGhpc3Rv
cnkgb2YgdGhhdC4KCkhtIEkgbG9va2VkIGFuZCBpdCdzCgpjb21taXQgODJjNDE2YjEzY2I3ZDIy
Yjk2ZWMwODg4YjI5NmE0OGRmZjhhMDllYgpBdXRob3I6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4KRGF0ZTogICBUaHUgTWFyIDEyIDEyOjAzOjM0IDIwMjAgKzAx
MDAKCiAgIGRybS9hbWRncHU6IGZpeCBhbmQgY2xlYW51cCBhbWRncHVfZ2VtX29iamVjdF9jbG9z
ZSB2NAoKVGhhdCBzb3VuZGVkIG1vcmUgbGlrZSBhbWRncHUgaXRzZWxmIG5lZWRpbmcgdGhpcywg
bm90IGFub3RoZXIgZHJpdmVyPwoKQnV0IGxvb2tpbmcgYXQgYW1kZ3B1X3ZtX2JvX3VwZGF0ZV9t
YXBwaW5nKCkgaXQgc2VlbXMgdG8gcGljayB0aGUKcmlnaHQgZmVuY2luZyBtb2RlIGZvciBncHUg
cHRlIGNsZWFyaW5nLCBzbyBJJ20gcmVhbGx5IG5vdCBzdXJlIHdoYXQKdGhlIGJ1ZyB3YXMgdGhh
dCB5b3Ugd29ya2VkIGFyb3VuZCBoZXJlP1RoZSBpbXBsZW1lbnRhdGlvbiBib2lscyBkb3duCnRv
IGFtZGdwdV9zeW5jX3Jlc3YoKSB3aGljaCBzeW5jcyBmb3IgdGhlIGV4Y2x1c2l2ZSBmZW5jZSwg
YWx3YXlzLiBBbmQKdGhlcmUncyBub3RoaW5nIGVsc2UgdGhhdCBJIGNvdWxkIGZpbmQgaW4gcHVi
bGljIGhpc3RvcnkgYXQgbGVhc3QsIG5vCnJlZmVyZW5jZXMgdG8gYnVnIHJlcG9ydHMgb3IgYW55
dGhpbmcuIEkgdGhpbmsgeW91IG5lZWQgdG8gZGlnCmludGVybmFsbHksIGJlY2F1c2UgYXMtaXMg
SSdtIG5vdCBzZWVpbmcgdGhlIHByb2JsZW0gaGVyZS4KCk9yIGFtIEkgbWlzc2luZyBzb21ldGhp
bmcgaGVyZT8KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50
ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
