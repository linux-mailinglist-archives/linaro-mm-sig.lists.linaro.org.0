Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1294D3919F0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:20:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFB0761875
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A9B1A61458; Wed, 26 May 2021 14:20:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0121261445;
	Wed, 26 May 2021 14:20:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2BD0F610CB
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 10:52:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 20278610EC; Wed, 19 May 2021 10:52:59 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id DD117610CB
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 10:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id 3BDEB20201B;
 Wed, 19 May 2021 12:52:56 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id RoD5Ispb2_Ev; Wed, 19 May 2021 12:52:55 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id 783D120201A;
 Wed, 19 May 2021 12:52:55 +0200 (CEST)
Received: from [::1] by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1ljJos-000hlM-LH; Wed, 19 May 2021 12:52:54 +0200
To: Jason Ekstrand <jason@jlekstrand.net>, Daniel Vetter <daniel@ffwll.ch>
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
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <14524566-8854-4bc0-9f70-b7219c9fccfc@daenzer.net>
Date: Wed, 19 May 2021 12:52:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAOFGe97FDc7Y9APymQQZZMApDXsJkbcS0N5jh+3s-w-Ligipug@mail.gmail.com>
Content-Language: en-CA
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
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
 <linaro-mm-sig@lists.linaro.org>, dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMS0wNS0xOSAxMjowNiBhLm0uLCBKYXNvbiBFa3N0cmFuZCB3cm90ZToKPiBPbiBUdWUs
IE1heSAxOCwgMjAyMSBhdCA0OjE3IFBNIERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4g
d3JvdGU6Cj4+Cj4+IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0IDc6NDAgUE0gQ2hyaXN0aWFuIEvD
tm5pZwo+PiA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+Pj4KPj4+
IEFtIDE4LjA1LjIxIHVtIDE4OjQ4IHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4+PiBPbiBUdWUs
IE1heSAxOCwgMjAyMSBhdCAyOjQ5IFBNIENocmlzdGlhbiBLw7ZuaWcKPj4+PiA8Y2tvZW5pZy5s
ZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4+IEFuZCBhcyBsb25nIGFz
IHdlIGFyZSBhbGwgaW5zaWRlIGFtZGdwdSB3ZSBhbHNvIGRvbid0IGhhdmUgYW55IG92ZXJzeW5j
LAo+Pj4+PiB0aGUgaXNzdWUgb25seSBoYXBwZW5zIHdoZW4gd2Ugc2hhcmUgZG1hLWJ1ZnMgd2l0
aCBpOTE1IChyYWRlb24gYW5kCj4+Pj4+IEFGQUlLIG5vdXZlYXUgZG9lcyB0aGUgcmlnaHQgdGhp
bmcgYXMgd2VsbCkuCj4+Pj4gWWVhaCBiZWNhdXNlIHRoZW4geW91IGNhbid0IHVzZSB0aGUgYW1k
Z3B1IGRtYV9yZXN2IG1vZGVsIGFueW1vcmUgYW5kCj4+Pj4gaGF2ZSB0byB1c2UgdGhlIG9uZSBh
dG9taWMgaGVscGVycyB1c2UuIFdoaWNoIGlzIGFsc28gdGhlIG9uZSB0aGF0Cj4+Pj4gZS5nLiBK
YXNvbiBpcyB0aHJlYXRoZW5pbmcgdG8gYmFrZSBpbiBhcyB1YXBpIHdpdGggaGlzIGRtYV9idWYg
aW9jdGwsCj4+Pj4gc28gYXMgc29vbiBhcyB0aGF0IGxhbmRzIGFuZCBzb21lb25lIHN0YXJ0cyB1
c2luZyBpdCwgc29tZXRoaW5nIGhhcyB0bwo+Pj4+IGFkYXB0IF9hbnl0aW1lXyB5b3UgaGF2ZSBh
IGRtYS1idWYgaGFuZ2luZyBhcm91bmQuIE5vdCBqdXN0IHdoZW4gaXQncwo+Pj4+IHNoYXJlZCB3
aXRoIGFub3RoZXIgZGV2aWNlLgo+Pj4KPj4+IFllYWgsIGFuZCB0aGF0IGlzIGV4YWN0bHkgdGhl
IHJlYXNvbiB3aHkgSSB3aWxsIE5BSyB0aGlzIHVBUEkgY2hhbmdlLgo+Pj4KPj4+IFRoaXMgZG9l
c24ndCB3b3JrcyBmb3IgYW1kZ3B1IGF0IGFsbCBmb3IgdGhlIHJlYXNvbnMgb3V0bGluZWQgYWJv
dmUuCj4+Cj4+IFVoIHRoYXQncyByZWFsbHkgbm90IGhvdyB1YXBpIHdvcmtzLiAibXkgZHJpdmVy
IGlzIHJpZ2h0LCBldmVyeW9uZQo+PiBlbHNlIGlzIHdyb25nIiBpcyBub3QgaG93IGNyb3NzIGRy
aXZlciBjb250cmFjdHMgYXJlIGRlZmluZWQuIElmIHRoYXQKPj4gbWVhbnMgYSBwZXJmIGltcGFj
dCB1bnRpbCB5b3UndmUgZml4ZWQgeW91ciBydWxlcywgdGhhdCdzIG9uIHlvdS4KPj4KPj4gQWxz
byB5b3UncmUgYSBmZXcgeWVhcnMgdG9vIGxhdGUgd2l0aCBuYWNraW5nIHRoaXMsIGl0J3MgYWxy
ZWFkeSB1YXBpCj4+IGluIHRoZSBmb3JtIG9mIHRoZSBkbWEtYnVmIHBvbGwoKSBzdXBwb3J0Lgo+
IAo+IF5eICBNeSBmYW5jeSBuZXcgaW9jdGwgZG9lc24ndCBleHBvc2UgYW55dGhpbmcgdGhhdCBp
c24ndCBhbHJlYWR5Cj4gdGhlcmUuICBJdCBqdXN0IGxldHMgeW91IHRha2UgYSBzbmFwLXNob3Qg
b2YgYSB3YWl0IGluc3RlYWQgb2YgZG9pbmcKPiBhbiBhY3RpdmUgd2FpdCB3aGljaCBtaWdodCBl
bmQgdXAgd2l0aCBtb3JlIGZlbmNlcyBhZGRlZCBkZXBlbmRpbmcgb24KPiBpbnRlcnJ1cHRzIGFu
ZCByZXRyaWVzLiAgVGhlIGRtYS1idWYgcG9sbCB3YWl0cyBvbiBhbGwgZmVuY2VzIGZvcgo+IFBP
TExPVVQgYW5kIG9ubHkgdGhlIGV4Y2x1c2l2ZSBmZW5jZSBmb3IgUE9MTElOLiAgSXQncyBhbHJl
YWR5IHVBUEkuCgpOb3RlIHRoYXQgdGhlIGRtYS1idWYgcG9sbCBzdXBwb3J0IGNvdWxkIGJlIHVz
ZWZ1bCB0byBXYXlsYW5kIGNvbXBvc2l0b3JzIGZvciB0aGUgc2FtZSBwdXJwb3NlIGFzIEphc29u
J3MgbmV3IGlvY3RsIChvbmx5IHVzaW5nIGNsaWVudCBidWZmZXJzIHdoaWNoIGhhdmUgZmluaXNo
ZWQgZHJhd2luZyBmb3IgYW4gb3V0cHV0IGZyYW1lLCB0byBhdm9pZCBtaXNzaW5nIGEgcmVmcmVz
aCBjeWNsZSBkdWUgdG8gY2xpZW50IGRyYXdpbmcpLCAqaWYqIGl0IGRpZG4ndCB3b3JrIGRpZmZl
cmVudGx5IHdpdGggYW1kZ3B1LgoKQW0gSSB1bmRlcnN0YW5kaW5nIGNvcnJlY3RseSB0aGF0IEph
c29uJ3MgbmV3IGlvY3RsIHdvdWxkIGFsc28gd29yayBkaWZmZXJlbnRseSB3aXRoIGFtZGdwdSBh
cyB0aGluZ3Mgc3RhbmQgY3VycmVudGx5PyBJZiBzbywgdGhhdCB3b3VsZCBiZSBhIHJlYWwgYnVt
bWVyIGFuZCBtaWdodCBoaW5kZXIgYWRvcHRpb24gb2YgdGhlIGlvY3RsIGJ5IFdheWxhbmQgY29t
cG9zaXRvcnMuCgoKLS0gCkVhcnRobGluZyBNaWNoZWwgRMOkbnplciAgICAgICAgICAgICAgIHwg
ICAgICAgICAgICAgICBodHRwczovL3JlZGhhdC5jb20KTGlicmUgc29mdHdhcmUgZW50aHVzaWFz
dCAgICAgICAgICAgICB8ICAgICAgICAgICAgIE1lc2EgYW5kIFggZGV2ZWxvcGVyCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
