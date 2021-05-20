Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BD038B4F1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:09:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68A506129B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 17:09:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5304C6130B; Thu, 20 May 2021 17:09:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D50C61298;
	Thu, 20 May 2021 17:09:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 71A996126C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 17:09:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6F8C561298; Thu, 20 May 2021 17:09:09 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by lists.linaro.org (Postfix) with ESMTPS id 67C9D6126C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 17:09:07 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id c20so26498209ejm.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 10:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IQI7eln3t0QEwa+iZ/JmpTSMxbJuRtQkPEsz6TUik54=;
 b=NeTRAYxZIvp3Mn8MY7JbMZqeMBZzj8Ry4xp+W61PdUFP3HiMfscou2DLGD0qHAiNyP
 652FVbwyzXb4ydSxy/uufYNUHdpHMK/nnkjY3cA6Re21CNFKKqjcezKcNYDF3wM/2NW/
 IutjpoZjrC0aaU4bANSJt5acyxdYlbX+Kg6aBP3eUI9OLpwf1lRnVvUOr6EgYlHw6kz8
 lonXrx0nI4UwBbizZALTxlqSJ6GUmhp7cPtyPP28XggN7W9uPMHTafMhdax7T9vjZyAf
 zuGXBqsSAYFxOvIT425shnH+6ug5uisz4qKSZvFBri5FisYdfSoYWs19yKL8MiGinPNl
 6rHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IQI7eln3t0QEwa+iZ/JmpTSMxbJuRtQkPEsz6TUik54=;
 b=ksJoYruwlGmV2JqxnLY5NeXhKVtoSJURiItNmccM7+isQw6Pq4Gxi+W69fXxXfUkd/
 HZFxA45z9sfGsJKzAt7Owq3uUxgJhCmIAREOXfPHyJrLSRMrA1Zn116mVdF7CTzReUxN
 YdJL52ZP74wKy+hDnNsq+ggC/FfJkGy4f2XnRMeRCSm0GLdsEXGGGezZSkE/u9vKl2tL
 THGz97ShKI+hagP7JKtdJq8F3JiswCR7jC/YMDwV2gR0ZHnvNOB1vlF6w1vIxtwWXJYr
 G9TcxhaMonjGJPW8sCnfx9r4xb8p26ZKYIQkLpt17JXKpToYBNtqK2TrdK6Rpf9v7eMn
 DK1A==
X-Gm-Message-State: AOAM531ENa4Ru+Tt+Xpc1AMcLOlbv/kj1rfHMu1JuQB+4owrE+zlWxJk
 cU74Q7wqfyNqKvhnfU73g73VJ+HV5jbAXD6Ytx5Shw==
X-Google-Smtp-Source: ABdhPJyJFY+pl1NUB4Az397br6FmOam3xqUVDOVMA0oKhABErOQUkRrMQnUApTbLhv3gcASOjv6u3E94KTyl23U1Urk=
X-Received: by 2002:a17:906:2596:: with SMTP id
 m22mr5775178ejb.175.1621530546332; 
 Thu, 20 May 2021 10:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <fee06c2d-27fb-1af4-6222-8f277b36c951@gmail.com>
 <CAKMK7uHLipx_oH-s5PB6pUUZ_JXCyciaY7sDLfK__-2fvSPCKA@mail.gmail.com>
 <f2eb6751-2f82-9b23-f57e-548de5b729de@gmail.com>
 <CAKMK7uHdsGjADQ9zwgrYsuhHdxFGkuH--DdOsaqej6OD1AbX-w@mail.gmail.com>
 <CAOFGe97FDc7Y9APymQQZZMApDXsJkbcS0N5jh+3s-w-Ligipug@mail.gmail.com>
 <14524566-8854-4bc0-9f70-b7219c9fccfc@daenzer.net>
 <CAOFGe96VttW2VzAnx13ZXLBGcEDJMehGuOFifcr+pcbEOa-Brw@mail.gmail.com>
 <6f3e2628-7b39-417c-3bd2-c837c5367458@daenzer.net>
 <CAKMK7uFMQGth19OjWmeNGTeVFoAqxK2tYXYrvme+NuCSNLxLUQ@mail.gmail.com>
 <7cbba7b7-d7e5-9c76-c747-4e39542268a2@daenzer.net>
 <YKZvx0UXYnJrfVw4@phenom.ffwll.local>
In-Reply-To: <YKZvx0UXYnJrfVw4@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 20 May 2021 12:08:54 -0500
Message-ID: <CAOFGe94h=0Bex3WmQ=nBu-epBJZbz+tYWwMwL6qLiuJCY58+Lg@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
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
 <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCBNYXkgMjAsIDIwMjEgYXQgOToxOCBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+Cj4gT24gVGh1LCBNYXkgMjAsIDIwMjEgYXQgMTA6MTM6MzhBTSArMDIw
MCwgTWljaGVsIETDpG56ZXIgd3JvdGU6Cj4gPiBPbiAyMDIxLTA1LTIwIDk6NTUgYS5tLiwgRGFu
aWVsIFZldHRlciB3cm90ZToKPiA+ID4gT24gV2VkLCBNYXkgMTksIDIwMjEgYXQgNTo0OCBQTSBN
aWNoZWwgRMOkbnplciA8bWljaGVsQGRhZW56ZXIubmV0PiB3cm90ZToKPiA+ID4+Cj4gPiA+PiBP
biAyMDIxLTA1LTE5IDU6MjEgcC5tLiwgSmFzb24gRWtzdHJhbmQgd3JvdGU6Cj4gPiA+Pj4gT24g
V2VkLCBNYXkgMTksIDIwMjEgYXQgNTo1MiBBTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRhZW56
ZXIubmV0PiB3cm90ZToKPiA+ID4+Pj4KPiA+ID4+Pj4gT24gMjAyMS0wNS0xOSAxMjowNiBhLm0u
LCBKYXNvbiBFa3N0cmFuZCB3cm90ZToKPiA+ID4+Pj4+IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0
IDQ6MTcgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToKPiA+ID4+Pj4+
Pgo+ID4gPj4+Pj4+IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0IDc6NDAgUE0gQ2hyaXN0aWFuIEvD
tm5pZwo+ID4gPj4+Pj4+IDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6
Cj4gPiA+Pj4+Pj4+Cj4gPiA+Pj4+Pj4+IEFtIDE4LjA1LjIxIHVtIDE4OjQ4IHNjaHJpZWIgRGFu
aWVsIFZldHRlcjoKPiA+ID4+Pj4+Pj4+IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0IDI6NDkgUE0g
Q2hyaXN0aWFuIEvDtm5pZwo+ID4gPj4+Pj4+Pj4gPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21h
aWwuY29tPiB3cm90ZToKPiA+ID4+Pj4+Pj4+Cj4gPiA+Pj4+Pj4+Pj4gQW5kIGFzIGxvbmcgYXMg
d2UgYXJlIGFsbCBpbnNpZGUgYW1kZ3B1IHdlIGFsc28gZG9uJ3QgaGF2ZSBhbnkgb3ZlcnN5bmMs
Cj4gPiA+Pj4+Pj4+Pj4gdGhlIGlzc3VlIG9ubHkgaGFwcGVucyB3aGVuIHdlIHNoYXJlIGRtYS1i
dWZzIHdpdGggaTkxNSAocmFkZW9uIGFuZAo+ID4gPj4+Pj4+Pj4+IEFGQUlLIG5vdXZlYXUgZG9l
cyB0aGUgcmlnaHQgdGhpbmcgYXMgd2VsbCkuCj4gPiA+Pj4+Pj4+PiBZZWFoIGJlY2F1c2UgdGhl
biB5b3UgY2FuJ3QgdXNlIHRoZSBhbWRncHUgZG1hX3Jlc3YgbW9kZWwgYW55bW9yZSBhbmQKPiA+
ID4+Pj4+Pj4+IGhhdmUgdG8gdXNlIHRoZSBvbmUgYXRvbWljIGhlbHBlcnMgdXNlLiBXaGljaCBp
cyBhbHNvIHRoZSBvbmUgdGhhdAo+ID4gPj4+Pj4+Pj4gZS5nLiBKYXNvbiBpcyB0aHJlYXRoZW5p
bmcgdG8gYmFrZSBpbiBhcyB1YXBpIHdpdGggaGlzIGRtYV9idWYgaW9jdGwsCj4gPiA+Pj4+Pj4+
PiBzbyBhcyBzb29uIGFzIHRoYXQgbGFuZHMgYW5kIHNvbWVvbmUgc3RhcnRzIHVzaW5nIGl0LCBz
b21ldGhpbmcgaGFzIHRvCj4gPiA+Pj4+Pj4+PiBhZGFwdCBfYW55dGltZV8geW91IGhhdmUgYSBk
bWEtYnVmIGhhbmdpbmcgYXJvdW5kLiBOb3QganVzdCB3aGVuIGl0J3MKPiA+ID4+Pj4+Pj4+IHNo
YXJlZCB3aXRoIGFub3RoZXIgZGV2aWNlLgo+ID4gPj4+Pj4+Pgo+ID4gPj4+Pj4+PiBZZWFoLCBh
bmQgdGhhdCBpcyBleGFjdGx5IHRoZSByZWFzb24gd2h5IEkgd2lsbCBOQUsgdGhpcyB1QVBJIGNo
YW5nZS4KPiA+ID4+Pj4+Pj4KPiA+ID4+Pj4+Pj4gVGhpcyBkb2Vzbid0IHdvcmtzIGZvciBhbWRn
cHUgYXQgYWxsIGZvciB0aGUgcmVhc29ucyBvdXRsaW5lZCBhYm92ZS4KPiA+ID4+Pj4+Pgo+ID4g
Pj4+Pj4+IFVoIHRoYXQncyByZWFsbHkgbm90IGhvdyB1YXBpIHdvcmtzLiAibXkgZHJpdmVyIGlz
IHJpZ2h0LCBldmVyeW9uZQo+ID4gPj4+Pj4+IGVsc2UgaXMgd3JvbmciIGlzIG5vdCBob3cgY3Jv
c3MgZHJpdmVyIGNvbnRyYWN0cyBhcmUgZGVmaW5lZC4gSWYgdGhhdAo+ID4gPj4+Pj4+IG1lYW5z
IGEgcGVyZiBpbXBhY3QgdW50aWwgeW91J3ZlIGZpeGVkIHlvdXIgcnVsZXMsIHRoYXQncyBvbiB5
b3UuCj4gPiA+Pj4+Pj4KPiA+ID4+Pj4+PiBBbHNvIHlvdSdyZSBhIGZldyB5ZWFycyB0b28gbGF0
ZSB3aXRoIG5hY2tpbmcgdGhpcywgaXQncyBhbHJlYWR5IHVhcGkKPiA+ID4+Pj4+PiBpbiB0aGUg
Zm9ybSBvZiB0aGUgZG1hLWJ1ZiBwb2xsKCkgc3VwcG9ydC4KPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBe
XiAgTXkgZmFuY3kgbmV3IGlvY3RsIGRvZXNuJ3QgZXhwb3NlIGFueXRoaW5nIHRoYXQgaXNuJ3Qg
YWxyZWFkeQo+ID4gPj4+Pj4gdGhlcmUuICBJdCBqdXN0IGxldHMgeW91IHRha2UgYSBzbmFwLXNo
b3Qgb2YgYSB3YWl0IGluc3RlYWQgb2YgZG9pbmcKPiA+ID4+Pj4+IGFuIGFjdGl2ZSB3YWl0IHdo
aWNoIG1pZ2h0IGVuZCB1cCB3aXRoIG1vcmUgZmVuY2VzIGFkZGVkIGRlcGVuZGluZyBvbgo+ID4g
Pj4+Pj4gaW50ZXJydXB0cyBhbmQgcmV0cmllcy4gIFRoZSBkbWEtYnVmIHBvbGwgd2FpdHMgb24g
YWxsIGZlbmNlcyBmb3IKPiA+ID4+Pj4+IFBPTExPVVQgYW5kIG9ubHkgdGhlIGV4Y2x1c2l2ZSBm
ZW5jZSBmb3IgUE9MTElOLiAgSXQncyBhbHJlYWR5IHVBUEkuCj4gPiA+Pj4+Cj4gPiA+Pj4+IE5v
dGUgdGhhdCB0aGUgZG1hLWJ1ZiBwb2xsIHN1cHBvcnQgY291bGQgYmUgdXNlZnVsIHRvIFdheWxh
bmQgY29tcG9zaXRvcnMgZm9yIHRoZSBzYW1lIHB1cnBvc2UgYXMgSmFzb24ncyBuZXcgaW9jdGwg
KG9ubHkgdXNpbmcgY2xpZW50IGJ1ZmZlcnMgd2hpY2ggaGF2ZSBmaW5pc2hlZCBkcmF3aW5nIGZv
ciBhbiBvdXRwdXQgZnJhbWUsIHRvIGF2b2lkIG1pc3NpbmcgYSByZWZyZXNoIGN5Y2xlIGR1ZSB0
byBjbGllbnQgZHJhd2luZyksICppZiogaXQgZGlkbid0IHdvcmsgZGlmZmVyZW50bHkgd2l0aCBh
bWRncHUuCj4gPiA+Pj4+Cj4gPiA+Pj4+IEFtIEkgdW5kZXJzdGFuZGluZyBjb3JyZWN0bHkgdGhh
dCBKYXNvbidzIG5ldyBpb2N0bCB3b3VsZCBhbHNvIHdvcmsgZGlmZmVyZW50bHkgd2l0aCBhbWRn
cHUgYXMgdGhpbmdzIHN0YW5kIGN1cnJlbnRseT8gSWYgc28sIHRoYXQgd291bGQgYmUgYSByZWFs
IGJ1bW1lciBhbmQgbWlnaHQgaGluZGVyIGFkb3B0aW9uIG9mIHRoZSBpb2N0bCBieSBXYXlsYW5k
IGNvbXBvc2l0b3JzLgo+ID4gPj4+Cj4gPiA+Pj4gTXkgbmV3IGlvY3RsIGhhcyBpZGVudGljYWwg
c2VtYW50aWNzIHRvIHBvbGwoKS4gIEl0IGp1c3QgbGV0cyB5b3UgdGFrZQo+ID4gPj4+IGEgc25h
cHNob3QgaW4gdGltZSB0byB3YWl0IG9uIGxhdGVyIGluc3RlYWQgb2Ygd2FpdGluZyBvbiB3aGF0
ZXZlcgo+ID4gPj4+IGhhcHBlbnMgdG8gYmUgc2V0IHJpZ2h0IG5vdy4gIElNTywgaGF2aW5nIGlk
ZW50aWNhbCBzZW1hbnRpY3MgdG8KPiA+ID4+PiBwb2xsKCkgaXNuJ3Qgc29tZXRoaW5nIHdlIHdh
bnQgdG8gY2hhbmdlLgo+ID4gPj4KPiA+ID4+IEFncmVlZC4KPiA+ID4+Cj4gPiA+PiBJJ2QgYXJn
dWUgdGhlbiB0aGF0IG1ha2luZyBhbWRncHUgcG9sbCBzZW1hbnRpY3MgbWF0Y2ggdGhvc2Ugb2Yg
b3RoZXIgZHJpdmVycyBpcyBhIHByZS1yZXF1aXNpdGUgZm9yIHRoZSBuZXcgaW9jdGwsIG90aGVy
d2lzZSBpdCBzZWVtcyB1bmxpa2VseSB0aGF0IHRoZSBpb2N0bCB3aWxsIGJlIHdpZGVseSBhZG9w
dGVkLgo+ID4gPgo+ID4gPiBUaGlzIHNlZW1zIGJhY2t3YXJkcywgYmVjYXVzZSB0aGF0IG1lYW5z
IHVzZWZ1bCBpbXByb3ZlbWVudHMgaW4gYWxsCj4gPiA+IG90aGVyIGRyaXZlcnMgYXJlIHN0YWxs
ZWQgdW50aWwgYW1kZ3B1IGlzIGZpeGVkLgo+ID4gPgo+ID4gPiBJIHRoaW5rIHdlIG5lZWQgYWdy
ZWVtZW50IG9uIHdoYXQgdGhlIHJ1bGVzIGFyZSwgcmVhc29uYWJsZSBwbGFuIHRvCj4gPiA+IGdl
dCB0aGVyZSwgYW5kIHRoZW4gdGhhdCBzaG91bGQgYmUgZW5vdWdoIHRvIHVuYmxvY2sgd29yayBp
biB0aGUgd2lkZXIKPiA+ID4gY29tbXVuaXR5LiBIb2xkaW5nIHRoZSBjb21tdW5pdHkgYXQgbGFy
Z2UgaG9zdGFnZSBiZWNhdXNlIG9uZSBkcml2ZXIKPiA+ID4gaXMgZGlmZmVyZW50IGlzIHJlYWxs
eSBub3QgZ3JlYXQuCj4gPgo+ID4gSSB0aGluayB3ZSdyZSBpbiB2aW9sZW50IGFncmVlbWVudC4g
OikgVGhlIHBvaW50IEkgd2FzIHRyeWluZyB0byBtYWtlIGlzCj4gPiB0aGF0IGFtZGdwdSByZWFs
bHkgbmVlZHMgdG8gYmUgZml4ZWQgdG8gYmUgY29uc2lzdGVudCB3aXRoIG90aGVyIGRyaXZlcnMK
PiA+IEFTQVAuCj4KPiBJdCdzIG5vdCB0aGF0IGVhc3kgYXQgYWxsLiBJIHRoaW5rIGJlc3QgY2Fz
ZSB3ZSdyZSBsb29raW5nIGF0IGFib3V0IGEgb25lCj4geWVhciBwbGFuIHRvIGdldCB0aGlzIGlu
dG8gc2hhcGUsIHRha2luZyBpbnRvIGFjY291bnQgdXN1YWwgcmVsZWFzZS9kaXN0cm8KPiB1cGRh
dGUgbGF0ZW5jaWVzLgo+Cj4gQmVzdCBjYXNlLgo+Cj4gQnV0IGFsc28gaXQncyBub3QgYSByZWFs
bHkgYmlnIGlzc3VlLCBzaW5jZSB0aGlzIHNob3VsZG4ndCBzdG9wCj4gY29tcG9zaXRvcnMgZnJv
bSB1c2luZyBwb2xsIG9uIGRtYS1idWYgZmQgb3IgdGhlIHN5bmNfZmlsZSBzdHVmZiBmcm9tCj4g
SmFzb246IFRoZSB1c2UtY2FzZSBmb3IgdGhpcyBpbiBjb21wb3NpdG9ycyBpcyB0byBhdm9pZCBh
IHNpbmdsZSBjbGllbnQKPiBzdGFsbGluZyB0aGUgZW50aXJlIGRlc2t0b3AuIElmIGEgZHJpdmVy
IGxpZXMgYnkgbm90IHNldHRpbmcgdGhlIGV4Y2x1c2l2ZQo+IGZlbmNlIHdoZW4gZXhwZWN0ZWQs
IHlvdSBzaW1wbHkgZG9uJ3QgZ2V0IHRoaXMgc3RhbGwgYXZvaWRhbmNlIGJlbmVmaXQgb2YKPiBt
aXNiZWhhdmluZyBjbGllbnRzLiBCdXQgYWxzbyB0aGlzIG5lZWRzIGEgZ3B1IHNjaGVkdWxlciBh
bmQgaGlnaGVyCj4gcHJpb3JpdHkgZm9yIHRoZSBjb21wb3NpdG9yIChvciBhIGxvdCBvZiBodyBw
bGFuZXMgc28geW91IGNhbiBjb21wb3NpdGUKPiB3aXRoIHRoZW0gYWxvbmUpLCBzbyBpdCdzIGFs
bCBmYWlybHkgYWNhZGVtaWMgaXNzdWUuCgpUaGF0J3Mgbm90IHJlYWxseSB0aGUgdXNlLWNhc2Uu
Li4uIEkgbWVhbiwgdGhhdCBpcyBvbmUgcG90ZW50aWFsCnVzZS1jYXNlLiAgQnV0IHRoZSByZWFs
IGludGVudGlvbiBpcyB0byBwcm92aWRlIGEgbWVjaGFuaXNtIGZvcgphbGxvd2luZyBleHBsaWNp
dCBzeW5jIGFwcHMgdG8gbGl2ZSBpbiBhbiBpbXBsaWNpdCBzeW5jIHdvcmxkLiAgRm9yCmluc3Rh
bmNlLCB3aXRoIHRoYXQgaW9jdGwsIHlvdSBjb3VsZCB3cml0ZSBhbiBlbnRpcmVseSBleHBsaWNp
dCBzeW5jCmNvbXBvc2l0b3IgYW5kIGp1c3Qgc25hZyBzeW5jX2ZpbGVzIGZyb20gYW55IGRtYS1i
dWZzIHlvdSBnZXQgZnJvbQpjbGllbnRzIHRoYXQgZG9uJ3Qgc3VwcG9ydCB3aGF0ZXZlciB5b3Vy
IHdpbmRvdyBzeXN0ZW0ncyBleHBsaWNpdCBzeW5jCnByb3RvY29sIGlzLiAgSXQgb25seSB3b3Jr
cyBpbiB0aGUgb25lIGRpcmVjdGlvbiwgc2FkbHksIGJ1dCBJIGRvbid0CnNlZSBhIGdvb2Qgc2Fm
ZSB3YXkgdG8gbWFrZSB0aGUgb3RoZXIgZGlyZWN0aW9uIHdvcmsgd2l0aG91dCBzbmFnZ2luZwph
IGZlbmNlIGZyb20gdGhlIGZpbmFsIHN1Ym1pdCB3aGljaCBkcmF3cyB0byB0aGUgaW1hZ2UuCgot
LUphc29uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
