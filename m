Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B9D26A3D6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Sep 2020 13:08:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 066A6666DE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Sep 2020 11:08:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EEA6A666DD; Tue, 15 Sep 2020 11:08:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B637666D5;
	Tue, 15 Sep 2020 11:07:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0807E665F2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 11:07:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E9133666D5; Tue, 15 Sep 2020 11:07:31 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id C155D665F2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 11:07:30 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id e23so2817599otk.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 04:07:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wAqBxwSqHBPcdUvSTQKCijq+CRd5S/6aTYUwocFvz7g=;
 b=udJdtNVpsMjNu1FRlTGG4Tl4EX7OWBPJHgCLOecVLjAl2bXFrfwO5NoVciesdO+Pl/
 +Z4SQsZUR4VvSzJBXJGiD00gZfNQcaT9HnEoP57wVGloj+Ve6l213hGiGi9P9AeL4ijk
 iWv2N3V00XIi6pMg5kWtNtzwWL0bGCmTQ0eq3wLWhpOI6XKi+uN0nuKuOuwbSC/GiyDn
 4p/fl+0j/V/2IK5FtPjRI4JmeTvRRvbPPuWlF3uBkgT1yBS3kbJyvPfgPNIgr1jtQ9BQ
 EYSzrDJ5y2lm59ef7Vkz3NA4rlHQGPXbRAaKTVlCncN1Gkx2CdlYsUhPx+tVAPEjiCpH
 fUcA==
X-Gm-Message-State: AOAM531YyNEM3Mpi+E4tHiqW76GzxX6fZml3T1qGW+ZIXiF9dyAiX6pl
 hmvSf2qhErq0UtPQepOvKU9pP5s1KTV2TojvAGylfA==
X-Google-Smtp-Source: ABdhPJy2dt3RJ1FG4/6bhDA1qzn4xmAgfk+y6FmsSUEi6ZJD7I1IcHsBaS6ztwX2Dy4bot9PsL6PWq1L3saj3QmAlOM=
X-Received: by 2002:a05:6830:14d9:: with SMTP id
 t25mr13128038otq.188.1600168050256; 
 Tue, 15 Sep 2020 04:07:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <20200914132920.59183-2-christian.koenig@amd.com>
 <CAKMK7uHnZgCBUBQ-5D7gCj1v3Z4wKkeO91tefAoJE1B49JFtww@mail.gmail.com>
 <92b77d29-ae9b-b9cd-4e03-f193aa386cae@gmail.com>
In-Reply-To: <92b77d29-ae9b-b9cd-4e03-f193aa386cae@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 15 Sep 2020 13:07:18 +0200
Message-ID: <CAKMK7uHDuzzh_w=7w7m3EoHyx+3HOVawoj2QbJL+9F1+1LULbw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] drm/shmem-helpers: revert "Redirect
	mmap for imported dma-buf"
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

T24gVHVlLCBTZXAgMTUsIDIwMjAgYXQgMTowMyBQTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBBbSAxNS4wOS4yMCB1bSAxMjoz
OSBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiBPbiBNb24sIFNlcCAxNCwgMjAyMCBhdCAzOjI5
IFBNIENocmlzdGlhbiBLw7ZuaWcKPiA+IDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNv
bT4gd3JvdGU6Cj4gPj4gVGhpcyByZXZlcnRzIGNvbW1pdCAyNmQzYWMzY2IwNGQxNzFhODYxOTUy
ZTg5MzI0ZTM0NzU5OGEzNDdmLgo+ID4+Cj4gPj4gV2UgbmVlZCB0byBmaWd1cmUgb3V0IGlmIGRt
YV9idWZfbW1hcCgpIGlzIHZhbGlkIG9yIG5vdCBmaXJzdC4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+IFRoZSB0
cm91YmxlIGlzIHRoYXQgZG9pbmcgZG1hLWJ1ZiBtbWFwIGJ5IGxvb2tpbmcgYXQgdGhlIHN0cnVj
dCBwYWdlcwo+ID4gYmVoaW5kIHRoZSBzZyBsaXN0IGFuZCBqdXN0IGluc2VydGluZyB0aG9zZSBp
bnRvIHVzZXJzcGFjZSBkb2Vzbid0Cj4gPiByZWFsbHkgd29yayBhbnkgYmV0dGVyLiBZb3Ugc3Rp
bGwgd29uJ3QgZ2V0IHRoZSB1bm1hcF9tYXBwaW5nX3JhbmdlCj4gPiBhbmQgaGVuY2UgcHRlIHNo
b290LWRvd24uIFNvIG1heWJlIGRtYV9idWZfbW1hcCBmb3J3YXJkaW5nIGRvZXNuJ3QKPiA+IHdv
cmssIGJ1dCB0aGlzIGRvZXNuJ3QgbWFrZSBpdCBhbnkgYmV0dGVyLgo+Cj4gR29vZCBwb2ludC4g
UXVlc3Rpb24gaXMgd2hhdCBzaG91bGQgd2UgZG8/IFJldHVybiAtRVBFUk0/CgpJSXJjIHRoZXJl
J3MgdXNlcnNwYWNlIHdoaWNoIGV4cGVjdHMgdGhpcyB0byB3b3JrLCBidXQgSSB0aGluayBpdCdz
CmFsc28gb25seSB0cnlpbmcgdG8gZG8gdGhpcyB3aXRoIHNpbXBsZXIgZHJpdmVycyB0aGF0IGRv
bid0IG5lZWQKdW5tYXBfbWFwcGluZ19yYW5nZSB0byB3b3JrIGNvcnJlY3RseS4gT3IgaXQncyBz
aW1wbHkgdGhhdCBubyBvbmUgZXZlcgpyZXBvcnRlZCB0aGUgYnVncy4gSXQncyBhIGJpdCBhIG1l
c3MgOi0vCi1EYW5pZWwKCj4KPiA+Cj4gPiBBbHNvIGNvbW1pdCBtZXNzYWdlIHNob3VsZCBwcm9i
YWJseSBleHBsYWluIGEgYml0IHRoZSBjb250ZXh0IGhlcmUsCj4gPiBub3QgYSBsb3Qgb2YgcGVv
cGxlIGhhdmUgYmVlbiBpbiBvdXIgcHJpdmF0ZSBkaXNjdXNzaW9uIG9uIHRoaXMuCj4KPiBXZWxs
LCB0aGF0J3MgY2VydGFpbiB0cnVlLgo+Cj4gQ2hyaXN0aWFuLgo+Cj4gPiAtRGFuaWVsCj4gPgo+
ID4+IC0tLQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMgfCAz
IC0tLQo+ID4+ICAgMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwo+ID4+IGluZGV4IDBhOTUyZjI3YzE4NC4u
Y2Q3MjczNDNmNzJiIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3No
bWVtX2hlbHBlci5jCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVs
cGVyLmMKPiA+PiBAQCAtNTk0LDkgKzU5NCw2IEBAIGludCBkcm1fZ2VtX3NobWVtX21tYXAoc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQo+ID4+
ICAgICAgICAgIC8qIFJlbW92ZSB0aGUgZmFrZSBvZmZzZXQgKi8KPiA+PiAgICAgICAgICB2bWEt
PnZtX3Bnb2ZmIC09IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSk7Cj4gPj4KPiA+
PiAtICAgICAgIGlmIChvYmotPmltcG9ydF9hdHRhY2gpCj4gPj4gLSAgICAgICAgICAgICAgIHJl
dHVybiBkbWFfYnVmX21tYXAob2JqLT5kbWFfYnVmLCB2bWEsIDApOwo+ID4+IC0KPiA+PiAgICAg
ICAgICBzaG1lbSA9IHRvX2RybV9nZW1fc2htZW1fb2JqKG9iaik7Cj4gPj4KPiA+PiAgICAgICAg
ICByZXQgPSBkcm1fZ2VtX3NobWVtX2dldF9wYWdlcyhzaG1lbSk7Cj4gPj4gLS0KPiA+PiAyLjE3
LjEKPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+ID4+IGRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiA+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaS1kZXZlbAo+ID4KPiA+Cj4KCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBF
bmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
