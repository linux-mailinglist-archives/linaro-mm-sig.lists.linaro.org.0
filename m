Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC48461594
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:55:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B759160E15
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:55:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1FEDE60EA6; Mon, 29 Nov 2021 12:55:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C5D860787;
	Mon, 29 Nov 2021 12:55:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 20F6D604FE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:55:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1ECB460787; Mon, 29 Nov 2021 12:55:42 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 15A17604FE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:55:40 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id c4so36551086wrd.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=qemJ+8gCFACeuoFz3XOub8bUAT99hVqeSm4liTeFuFA=;
 b=I/F77x50+M+Nop6Fa/FNQCSy6+GJZcKNJLPNhGWWnCoTR9DYLwIA88OaX1Uuw4ficS
 Me6741i4bEcYSBFbWcvkDg6HelTLP2rllZRSqdpjtXHqD3jFJJa68g2o/u93GDi7nzR7
 SVPR0lwmadbb0B+KDLnPfvSAJncw47lme5xdHc86Uf8qv8kVnMZFsvBZJHdpMC6D/A1c
 lH0HrTAxBUUHsj1ttTyVeEHta0GeIQuplJGbpeTCuYP1/1ehxY/3OzKEDUvlM/we+uzM
 OI9gMVmH3FCsMEaLC4Km49rxXnlT0JtrvbSrNwUedE8A5/1xnnYvgFBDVDCIEPNg7hp9
 SO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=qemJ+8gCFACeuoFz3XOub8bUAT99hVqeSm4liTeFuFA=;
 b=RHnR73PxqWalsbRHrBqaImAURuCsgsWVvib7L77W+emvi/veIf94oAjBUQGqiBPER+
 JDqTVeUflOYp418QfBTWQ2B1GdhqHpQTRznCzpIQ5JXcXbFVTau4CQnyHqOd6yA3OKwU
 ymITRiQeCP0S7yrGn5/2jPMgHDqV9poiZDIQ3xB8kKklllqDITv1pL7TFxwJhv+t9oPX
 1OOJRAd42HPmpdGAssk9+5k2Tnwrf3AIfektytgIWwu4Z0kKDzOJ35FEXRnN+lLJgXgo
 oRjwa5wTqconcM6KLO5ib5fl3ik4HnWjCIxFGtNbu4bTEx/aBBTsvKCE9KKfTArcm79z
 tBVg==
X-Gm-Message-State: AOAM531XGlgog3/SoEseI31Rt8NJJHZhaeqZypbwQdw37M4E4J89LrWg
 pUgV4+5AIB4BHVR9t3rGnDTLmgkRUfQ=
X-Google-Smtp-Source: ABdhPJzGg/Imk8nPiQdBSpRopU01jLl1/Izo7h/H/YFv+lsjJUqhvYhGqJ+Xf5v0BgEWA2vHJYT/Og==
X-Received: by 2002:adf:e391:: with SMTP id e17mr33628241wrm.613.1638190539198; 
 Mon, 29 Nov 2021 04:55:39 -0800 (PST)
Received: from [192.168.178.21] (p57b0b77b.dip0.t-ipconnect.de.
 [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id h204sm15657736wmh.33.2021.11.29.04.55.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 04:55:38 -0800 (PST)
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@intel.com>
References: <20211129073533.414008-1-thomas.hellstrom@linux.intel.com>
 <4fd0eee6-342f-fb31-717c-901440f38c35@gmail.com>
 <58ca11648ab29d96b84640760d2acc3ac2d39d19.camel@linux.intel.com>
 <e4d8e272-8175-4298-f227-240febc0bda0@gmail.com>
 <ee128e237dbc2b6b2341b49ab07661c1f1b65e0b.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <180f069a-bf29-cf05-c9f9-5b1737ec5664@gmail.com>
Date: Mon, 29 Nov 2021 13:55:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <ee128e237dbc2b6b2341b49ab07661c1f1b65e0b.camel@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma_fence_array: Fix PENDING_ERROR leak
 in dma_fence_array_signaled()
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
Cc: linaro-mm-sig@lists.linaro.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjkuMTEuMjEgdW0gMTM6NDYgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBPbiBNb24s
IDIwMjEtMTEtMjkgYXQgMTM6MzMgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFt
IDI5LjExLjIxIHVtIDEzOjIzIHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+PiBIaSwgQ2hy
aXN0aWFuLAo+Pj4KPj4+IE9uIE1vbiwgMjAyMS0xMS0yOSBhdCAwOToyMSArMDEwMCwgQ2hyaXN0
aWFuIEvDtm5pZyB3cm90ZToKPj4+PiBBbSAyOS4xMS4yMSB1bSAwODozNSBzY2hyaWViIFRob21h
cyBIZWxsc3Ryw7ZtOgo+Pj4+PiBJZiBhIGRtYV9mZW5jZV9hcnJheSBpcyByZXBvcnRlZCBzaWdu
YWxlZCBieSBhIGNhbGwgdG8KPj4+Pj4gZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCksIGl0IG1heSBs
ZWFrIHRoZSBQRU5ESU5HX0VSUk9SIHN0YXR1cy4KPj4+Pj4KPj4+Pj4gRml4IHRoaXMgYnkgY2xl
YXJpbmcgdGhlIFBFTkRJTkdfRVJST1Igc3RhdHVzIGlmIHdlIHJldHVybiB0cnVlCj4+Pj4+IGlu
Cj4+Pj4+IGRtYV9mZW5jZV9hcnJheV9zaWduYWxlZCgpLgo+Pj4+Pgo+Pj4+PiBGaXhlczogMWY3
MGI4YjgxMmYzICgiZG1hLWZlbmNlOiBQcm9wYWdhdGUgZXJyb3JzIHRvIGRtYS1mZW5jZS0KPj4+
Pj4gYXJyYXkgY29udGFpbmVyIikKPj4+Pj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwo+Pj4+PiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBn
bWFpbC5jb20+Cj4+Pj4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0KPj4+Pj4gPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+Pj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+PiBIb3cgYXJlIHRoZSBkbWEtYnVmIC8g
ZG1hLWZlbmNlIHBhdGNoZXMgdHlwaWNhbGx5IG1lcmdlZD8gSWYgaTkxNQo+Pj4gaXMKPj4+IHRo
ZSBvbmx5IGZlbmNlLT5lcnJvciB1c2VyLCBjb3VsZCB3ZSB0YWtlIHRoaXMgdGhyb3VnaCBkcm0t
aW50ZWwgdG8KPj4+IGF2b2lkIGEgYmFja21lcmdlIGZvciB1cGNvbWluZyBpOTE1IHdvcms/Cj4+
IFdlbGwgdGhhdCBvbmUgaGVyZSBsb29rcyBsaWtlIGEgYnVnZml4IHRvIG1lLCBzbyBlaXRoZXIg
dGhyb3VnaAo+PiBkcm0tbWlzYy1maXhlcyBvcmUgc29tZSBpOTE1IC1maXhlcyBicmFuY2ggc291
bmRzIGZpbmUgdG8gbWUuCj4+Cj4+IElmIHlvdSBoYXZlIGFueSBuZXcgZGV2ZWxvcG1lbnQgYmFz
ZWQgb24gdGhhdCBhIGJhY2ttZXJnZSBvZiB0aGUgLQo+PiBmaXhlcwo+PiBpbnRvIHlvdXIgLW5l
eHQgYnJhbmNoIGlzIHVuYXZvaWRhYmxlIGFueXdheS4KPiBPaywgSSdsbCBjaGVjayB3aXRoIEpv
b25hcyBpZiBJIGNhbiB0YWtlIGl0IHRocm91Z2gKPiBkcm0taW50ZWwtZ3QtbmV4dCwgc2luY2Ug
Zml4ZXMgYXJlIGNoZXJyeS1waWNrZWQgZnJvbSB0aGF0IG9uZS4gUGF0Y2gKPiB3aWxsIHRoZW4g
YXBwZWFyIGluIGJvdGggdGhlIC1maXhlcyBhbmQgdGhlIC1uZXh0IGJyYW5jaC4KCldlbGwgZXhh
Y3RseSB0aGF0J3MgdGhlIHN0dWZmIERhbmllbCB0b2xkIG1lIHRvIGF2b2lkIDopCgpCdXQgbWF5
YmUgeW91ciBpOTE1IHdvcmtmbG93IGlzIHNvbWVob3cgYmV0dGVyIGhhbmRsaW5nIHRoYXQgdGhh
biB0aGUgCkFNRCB3b3JrZmxvdy4KCkNocmlzdGlhbi4KCj4KPiBUaGFua3MsCj4gL1Rob21hcwo+
Cj4KPj4gUmVnYXJkcywKPj4gQ2hyaXN0aWFuLgo+Pgo+Pj4gL1Rob21hcwo+Pj4KPj4+Cj4+Pj4+
IC0tLQo+Pj4+PiAgwqDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgfCA2ICsr
KysrLQo+Pj4+PiAgwqDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LWFycmF5LmMgYi9kcml2ZXJzL2RtYS0KPj4+Pj4gYnVmL2RtYS1mZW5jZS1hcnJheS5jCj4+Pj4+
IGluZGV4IGQzZmJkOTUwYmU5NC4uM2UwN2Y5NjFlMmYzIDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKPj4+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS1hcnJheS5jCj4+Pj4+IEBAIC0xMDQsNyArMTA0LDExIEBAIHN0YXRpYyBib29s
Cj4+Pj4+IGRtYV9mZW5jZV9hcnJheV9zaWduYWxlZChzdHJ1Y3QKPj4+Pj4gZG1hX2ZlbmNlICpm
ZW5jZSkKPj4+Pj4gIMKgwqAgewo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRtYV9m
ZW5jZV9hcnJheSAqYXJyYXkgPQo+Pj4+PiB0b19kbWFfZmVuY2VfYXJyYXkoZmVuY2UpOwo+Pj4+
PiAgICAgCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoHJldHVybiBhdG9taWNfcmVhZCgmYXJyYXktPm51
bV9wZW5kaW5nKSA8PSAwOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqBpZiAoYXRvbWljX3JlYWQoJmFy
cmF5LT5udW1fcGVuZGluZykgPiAwKQo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGZhbHNlOwo+Pj4+PiArCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoGRtYV9mZW5jZV9h
cnJheV9jbGVhcl9wZW5kaW5nX2Vycm9yKGFycmF5KTsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgcmV0
dXJuIHRydWU7Cj4+Pj4+ICDCoMKgIH0KPj4+Pj4gICAgIAo+Pj4+PiAgwqDCoCBzdGF0aWMgdm9p
ZCBkbWFfZmVuY2VfYXJyYXlfcmVsZWFzZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
