Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B128389275
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 May 2021 17:22:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE6EA61160
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 May 2021 15:21:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6E1266117B; Wed, 19 May 2021 15:21:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA35C61148;
	Wed, 19 May 2021 15:21:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B11F361145
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 15:21:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AF02C61148; Wed, 19 May 2021 15:21:53 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by lists.linaro.org (Postfix) with ESMTPS id A5EEA61145
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 15:21:51 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id t15so15825523edr.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 08:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WA9qUoEBtVJsSKCDyoyq7382SpsW/20hQVldJ/7BtjA=;
 b=lJO6FtIMwBIsId6pGxGOKybO14svkp2qQEXNPqHKUhNInXZBFlhnfhfHoqjmE/6wlI
 AmmYjAf7xqcoL7Fh9le1tn7OQvyzU+m/rKLcSgqUYE6U0o8qCSYCxAZcX5AX+kQkrXQh
 ELOFis5/y4miNV6dH2cOe0+0dXyuY9gMko5Eyn4p6RxavW/vHXl8uPOuwU3wGdJihdMy
 2M3nC0F6DiwFlDVScdU2VpEP3Z4+Qbj1xIYAJfTd6wXPxLB0+QaqGPseSEhPnjodZJ1L
 unLXGdlwWjf3IZmNgF+KmEcHKtC5bF1PJZSJ5mJEoYW2cgS0mEK9CNXWcemrieNpWPsJ
 LW7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WA9qUoEBtVJsSKCDyoyq7382SpsW/20hQVldJ/7BtjA=;
 b=KvzjlbWx/mNoF9crcaml9HobY31wwigOPvG7r/9J1AT0bJylZmZ820dZY/GHgdRfmr
 TKVS9E9x+zgiSAK1MhozXgIOZXoy1svPsXB/mMqugOlSfMutGlsMNSGihNyCFw4Vkxfu
 zaOKhbBvtUawzD8G8UEYCFzmSj4VcpgcPAK2sdfkgtaHsuf56hBC8YlskKv7xnPV4BIn
 uRmDdjmyqmLD4MmcZx7tmaItjOGxuYvztonig5ART9/Sm74CMKVql2FKV9BeCVmhG2Se
 Y7xBpYKPuCU4DKKYow6E9ngpHcNHL7tEh/B8lu8QRcw4wAwisQ7w5T7PCUcd1qDu2abL
 jWqQ==
X-Gm-Message-State: AOAM532QV+7ubp22XR+U0JAGvDRb+cVGiEOJnkjdTAt/HqrFcLew+iHs
 R61OhYn0KOu/bUnWApNgfX3j7YUapOxmlhToh3aKm3Z31vc=
X-Google-Smtp-Source: ABdhPJzZDU9fo9UgdKEp/g6+yKErjdnaaHCHRCl5FwP646Eu7psLZJ7F298i7dQuLNjWIbip6h5ATmnc/4nYvQpX5sE=
X-Received: by 2002:aa7:db93:: with SMTP id u19mr15068398edt.227.1621437710623; 
 Wed, 19 May 2021 08:21:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210517141129.2225-1-christian.koenig@amd.com>
 <YKKF4jOvM4gJT6a4@phenom.ffwll.local>
 <5a3e9500-9d6b-a865-5385-fde43da2bf66@gmail.com>
 <CAKMK7uF=y44e9-0-4MBj3jRBdCqMaLgKutTMeBWCbySRnPR4KQ@mail.gmail.com>
 <CAOFGe960UMe4=Xxcoha9R2Y74ma3Pp4Z0DF6PM+SJ2sjq2DBXg@mail.gmail.com>
 <CAKMK7uGtTT+59hRi3PB1WHPES3YJAPYBvbT74vo9PApNE0i7MQ@mail.gmail.com>
 <fee06c2d-27fb-1af4-6222-8f277b36c951@gmail.com>
 <CAKMK7uHLipx_oH-s5PB6pUUZ_JXCyciaY7sDLfK__-2fvSPCKA@mail.gmail.com>
 <f2eb6751-2f82-9b23-f57e-548de5b729de@gmail.com>
 <CAKMK7uHdsGjADQ9zwgrYsuhHdxFGkuH--DdOsaqej6OD1AbX-w@mail.gmail.com>
 <CAOFGe97FDc7Y9APymQQZZMApDXsJkbcS0N5jh+3s-w-Ligipug@mail.gmail.com>
 <14524566-8854-4bc0-9f70-b7219c9fccfc@daenzer.net>
In-Reply-To: <14524566-8854-4bc0-9f70-b7219c9fccfc@daenzer.net>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 19 May 2021 10:21:39 -0500
Message-ID: <CAOFGe96VttW2VzAnx13ZXLBGcEDJMehGuOFifcr+pcbEOa-Brw@mail.gmail.com>
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>
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
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gV2VkLCBNYXkgMTksIDIwMjEgYXQgNTo1MiBBTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRh
ZW56ZXIubmV0PiB3cm90ZToKPgo+IE9uIDIwMjEtMDUtMTkgMTI6MDYgYS5tLiwgSmFzb24gRWtz
dHJhbmQgd3JvdGU6Cj4gPiBPbiBUdWUsIE1heSAxOCwgMjAyMSBhdCA0OjE3IFBNIERhbmllbCBW
ZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4gd3JvdGU6Cj4gPj4KPiA+PiBPbiBUdWUsIE1heSAxOCwg
MjAyMSBhdCA3OjQwIFBNIENocmlzdGlhbiBLw7ZuaWcKPiA+PiA8Y2tvZW5pZy5sZWljaHR6dW1l
cmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+PiBBbSAxOC4wNS4yMSB1bSAxODo0OCBz
Y2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPj4+PiBPbiBUdWUsIE1heSAxOCwgMjAyMSBhdCAyOjQ5
IFBNIENocmlzdGlhbiBLw7ZuaWcKPiA+Pj4+IDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4+IEFuZCBhcyBsb25nIGFzIHdlIGFyZSBhbGwgaW5z
aWRlIGFtZGdwdSB3ZSBhbHNvIGRvbid0IGhhdmUgYW55IG92ZXJzeW5jLAo+ID4+Pj4+IHRoZSBp
c3N1ZSBvbmx5IGhhcHBlbnMgd2hlbiB3ZSBzaGFyZSBkbWEtYnVmcyB3aXRoIGk5MTUgKHJhZGVv
biBhbmQKPiA+Pj4+PiBBRkFJSyBub3V2ZWF1IGRvZXMgdGhlIHJpZ2h0IHRoaW5nIGFzIHdlbGwp
Lgo+ID4+Pj4gWWVhaCBiZWNhdXNlIHRoZW4geW91IGNhbid0IHVzZSB0aGUgYW1kZ3B1IGRtYV9y
ZXN2IG1vZGVsIGFueW1vcmUgYW5kCj4gPj4+PiBoYXZlIHRvIHVzZSB0aGUgb25lIGF0b21pYyBo
ZWxwZXJzIHVzZS4gV2hpY2ggaXMgYWxzbyB0aGUgb25lIHRoYXQKPiA+Pj4+IGUuZy4gSmFzb24g
aXMgdGhyZWF0aGVuaW5nIHRvIGJha2UgaW4gYXMgdWFwaSB3aXRoIGhpcyBkbWFfYnVmIGlvY3Rs
LAo+ID4+Pj4gc28gYXMgc29vbiBhcyB0aGF0IGxhbmRzIGFuZCBzb21lb25lIHN0YXJ0cyB1c2lu
ZyBpdCwgc29tZXRoaW5nIGhhcyB0bwo+ID4+Pj4gYWRhcHQgX2FueXRpbWVfIHlvdSBoYXZlIGEg
ZG1hLWJ1ZiBoYW5naW5nIGFyb3VuZC4gTm90IGp1c3Qgd2hlbiBpdCdzCj4gPj4+PiBzaGFyZWQg
d2l0aCBhbm90aGVyIGRldmljZS4KPiA+Pj4KPiA+Pj4gWWVhaCwgYW5kIHRoYXQgaXMgZXhhY3Rs
eSB0aGUgcmVhc29uIHdoeSBJIHdpbGwgTkFLIHRoaXMgdUFQSSBjaGFuZ2UuCj4gPj4+Cj4gPj4+
IFRoaXMgZG9lc24ndCB3b3JrcyBmb3IgYW1kZ3B1IGF0IGFsbCBmb3IgdGhlIHJlYXNvbnMgb3V0
bGluZWQgYWJvdmUuCj4gPj4KPiA+PiBVaCB0aGF0J3MgcmVhbGx5IG5vdCBob3cgdWFwaSB3b3Jr
cy4gIm15IGRyaXZlciBpcyByaWdodCwgZXZlcnlvbmUKPiA+PiBlbHNlIGlzIHdyb25nIiBpcyBu
b3QgaG93IGNyb3NzIGRyaXZlciBjb250cmFjdHMgYXJlIGRlZmluZWQuIElmIHRoYXQKPiA+PiBt
ZWFucyBhIHBlcmYgaW1wYWN0IHVudGlsIHlvdSd2ZSBmaXhlZCB5b3VyIHJ1bGVzLCB0aGF0J3Mg
b24geW91Lgo+ID4+Cj4gPj4gQWxzbyB5b3UncmUgYSBmZXcgeWVhcnMgdG9vIGxhdGUgd2l0aCBu
YWNraW5nIHRoaXMsIGl0J3MgYWxyZWFkeSB1YXBpCj4gPj4gaW4gdGhlIGZvcm0gb2YgdGhlIGRt
YS1idWYgcG9sbCgpIHN1cHBvcnQuCj4gPgo+ID4gXl4gIE15IGZhbmN5IG5ldyBpb2N0bCBkb2Vz
bid0IGV4cG9zZSBhbnl0aGluZyB0aGF0IGlzbid0IGFscmVhZHkKPiA+IHRoZXJlLiAgSXQganVz
dCBsZXRzIHlvdSB0YWtlIGEgc25hcC1zaG90IG9mIGEgd2FpdCBpbnN0ZWFkIG9mIGRvaW5nCj4g
PiBhbiBhY3RpdmUgd2FpdCB3aGljaCBtaWdodCBlbmQgdXAgd2l0aCBtb3JlIGZlbmNlcyBhZGRl
ZCBkZXBlbmRpbmcgb24KPiA+IGludGVycnVwdHMgYW5kIHJldHJpZXMuICBUaGUgZG1hLWJ1ZiBw
b2xsIHdhaXRzIG9uIGFsbCBmZW5jZXMgZm9yCj4gPiBQT0xMT1VUIGFuZCBvbmx5IHRoZSBleGNs
dXNpdmUgZmVuY2UgZm9yIFBPTExJTi4gIEl0J3MgYWxyZWFkeSB1QVBJLgo+Cj4gTm90ZSB0aGF0
IHRoZSBkbWEtYnVmIHBvbGwgc3VwcG9ydCBjb3VsZCBiZSB1c2VmdWwgdG8gV2F5bGFuZCBjb21w
b3NpdG9ycyBmb3IgdGhlIHNhbWUgcHVycG9zZSBhcyBKYXNvbidzIG5ldyBpb2N0bCAob25seSB1
c2luZyBjbGllbnQgYnVmZmVycyB3aGljaCBoYXZlIGZpbmlzaGVkIGRyYXdpbmcgZm9yIGFuIG91
dHB1dCBmcmFtZSwgdG8gYXZvaWQgbWlzc2luZyBhIHJlZnJlc2ggY3ljbGUgZHVlIHRvIGNsaWVu
dCBkcmF3aW5nKSwgKmlmKiBpdCBkaWRuJ3Qgd29yayBkaWZmZXJlbnRseSB3aXRoIGFtZGdwdS4K
Pgo+IEFtIEkgdW5kZXJzdGFuZGluZyBjb3JyZWN0bHkgdGhhdCBKYXNvbidzIG5ldyBpb2N0bCB3
b3VsZCBhbHNvIHdvcmsgZGlmZmVyZW50bHkgd2l0aCBhbWRncHUgYXMgdGhpbmdzIHN0YW5kIGN1
cnJlbnRseT8gSWYgc28sIHRoYXQgd291bGQgYmUgYSByZWFsIGJ1bW1lciBhbmQgbWlnaHQgaGlu
ZGVyIGFkb3B0aW9uIG9mIHRoZSBpb2N0bCBieSBXYXlsYW5kIGNvbXBvc2l0b3JzLgoKTXkgbmV3
IGlvY3RsIGhhcyBpZGVudGljYWwgc2VtYW50aWNzIHRvIHBvbGwoKS4gIEl0IGp1c3QgbGV0cyB5
b3UgdGFrZQphIHNuYXBzaG90IGluIHRpbWUgdG8gd2FpdCBvbiBsYXRlciBpbnN0ZWFkIG9mIHdh
aXRpbmcgb24gd2hhdGV2ZXIKaGFwcGVucyB0byBiZSBzZXQgcmlnaHQgbm93LiAgSU1PLCBoYXZp
bmcgaWRlbnRpY2FsIHNlbWFudGljcyB0bwpwb2xsKCkgaXNuJ3Qgc29tZXRoaW5nIHdlIHdhbnQg
dG8gY2hhbmdlLgoKLS1KYXNvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
