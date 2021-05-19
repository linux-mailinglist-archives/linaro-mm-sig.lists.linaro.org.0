Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0488F3919EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:20:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E212613E6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 94F116143A; Wed, 26 May 2021 14:20:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 613516152F;
	Wed, 26 May 2021 14:20:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 914F361145
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 15:48:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8644C61149; Wed, 19 May 2021 15:48:23 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id 64EBD61145
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 15:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id 8C51C20201D;
 Wed, 19 May 2021 17:48:20 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id d3njkECqm17W; Wed, 19 May 2021 17:48:20 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id 2D63320201A;
 Wed, 19 May 2021 17:48:20 +0200 (CEST)
Received: from [::1] by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1ljOQk-000jkV-T1; Wed, 19 May 2021 17:48:18 +0200
To: Jason Ekstrand <jason@jlekstrand.net>
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
 <CAOFGe96VttW2VzAnx13ZXLBGcEDJMehGuOFifcr+pcbEOa-Brw@mail.gmail.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <6f3e2628-7b39-417c-3bd2-c837c5367458@daenzer.net>
Date: Wed, 19 May 2021 17:48:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAOFGe96VttW2VzAnx13ZXLBGcEDJMehGuOFifcr+pcbEOa-Brw@mail.gmail.com>
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

T24gMjAyMS0wNS0xOSA1OjIxIHAubS4sIEphc29uIEVrc3RyYW5kIHdyb3RlOgo+IE9uIFdlZCwg
TWF5IDE5LCAyMDIxIGF0IDU6NTIgQU0gTWljaGVsIETDpG56ZXIgPG1pY2hlbEBkYWVuemVyLm5l
dD4gd3JvdGU6Cj4+Cj4+IE9uIDIwMjEtMDUtMTkgMTI6MDYgYS5tLiwgSmFzb24gRWtzdHJhbmQg
d3JvdGU6Cj4+PiBPbiBUdWUsIE1heSAxOCwgMjAyMSBhdCA0OjE3IFBNIERhbmllbCBWZXR0ZXIg
PGRhbmllbEBmZndsbC5jaD4gd3JvdGU6Cj4+Pj4KPj4+PiBPbiBUdWUsIE1heSAxOCwgMjAyMSBh
dCA3OjQwIFBNIENocmlzdGlhbiBLw7ZuaWcKPj4+PiA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBn
bWFpbC5jb20+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBBbSAxOC4wNS4yMSB1bSAxODo0OCBzY2hyaWVi
IERhbmllbCBWZXR0ZXI6Cj4+Pj4+PiBPbiBUdWUsIE1heSAxOCwgMjAyMSBhdCAyOjQ5IFBNIENo
cmlzdGlhbiBLw7ZuaWcKPj4+Pj4+IDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4g
d3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4+IEFuZCBhcyBsb25nIGFzIHdlIGFyZSBhbGwgaW5zaWRlIGFt
ZGdwdSB3ZSBhbHNvIGRvbid0IGhhdmUgYW55IG92ZXJzeW5jLAo+Pj4+Pj4+IHRoZSBpc3N1ZSBv
bmx5IGhhcHBlbnMgd2hlbiB3ZSBzaGFyZSBkbWEtYnVmcyB3aXRoIGk5MTUgKHJhZGVvbiBhbmQK
Pj4+Pj4+PiBBRkFJSyBub3V2ZWF1IGRvZXMgdGhlIHJpZ2h0IHRoaW5nIGFzIHdlbGwpLgo+Pj4+
Pj4gWWVhaCBiZWNhdXNlIHRoZW4geW91IGNhbid0IHVzZSB0aGUgYW1kZ3B1IGRtYV9yZXN2IG1v
ZGVsIGFueW1vcmUgYW5kCj4+Pj4+PiBoYXZlIHRvIHVzZSB0aGUgb25lIGF0b21pYyBoZWxwZXJz
IHVzZS4gV2hpY2ggaXMgYWxzbyB0aGUgb25lIHRoYXQKPj4+Pj4+IGUuZy4gSmFzb24gaXMgdGhy
ZWF0aGVuaW5nIHRvIGJha2UgaW4gYXMgdWFwaSB3aXRoIGhpcyBkbWFfYnVmIGlvY3RsLAo+Pj4+
Pj4gc28gYXMgc29vbiBhcyB0aGF0IGxhbmRzIGFuZCBzb21lb25lIHN0YXJ0cyB1c2luZyBpdCwg
c29tZXRoaW5nIGhhcyB0bwo+Pj4+Pj4gYWRhcHQgX2FueXRpbWVfIHlvdSBoYXZlIGEgZG1hLWJ1
ZiBoYW5naW5nIGFyb3VuZC4gTm90IGp1c3Qgd2hlbiBpdCdzCj4+Pj4+PiBzaGFyZWQgd2l0aCBh
bm90aGVyIGRldmljZS4KPj4+Pj4KPj4+Pj4gWWVhaCwgYW5kIHRoYXQgaXMgZXhhY3RseSB0aGUg
cmVhc29uIHdoeSBJIHdpbGwgTkFLIHRoaXMgdUFQSSBjaGFuZ2UuCj4+Pj4+Cj4+Pj4+IFRoaXMg
ZG9lc24ndCB3b3JrcyBmb3IgYW1kZ3B1IGF0IGFsbCBmb3IgdGhlIHJlYXNvbnMgb3V0bGluZWQg
YWJvdmUuCj4+Pj4KPj4+PiBVaCB0aGF0J3MgcmVhbGx5IG5vdCBob3cgdWFwaSB3b3Jrcy4gIm15
IGRyaXZlciBpcyByaWdodCwgZXZlcnlvbmUKPj4+PiBlbHNlIGlzIHdyb25nIiBpcyBub3QgaG93
IGNyb3NzIGRyaXZlciBjb250cmFjdHMgYXJlIGRlZmluZWQuIElmIHRoYXQKPj4+PiBtZWFucyBh
IHBlcmYgaW1wYWN0IHVudGlsIHlvdSd2ZSBmaXhlZCB5b3VyIHJ1bGVzLCB0aGF0J3Mgb24geW91
Lgo+Pj4+Cj4+Pj4gQWxzbyB5b3UncmUgYSBmZXcgeWVhcnMgdG9vIGxhdGUgd2l0aCBuYWNraW5n
IHRoaXMsIGl0J3MgYWxyZWFkeSB1YXBpCj4+Pj4gaW4gdGhlIGZvcm0gb2YgdGhlIGRtYS1idWYg
cG9sbCgpIHN1cHBvcnQuCj4+Pgo+Pj4gXl4gIE15IGZhbmN5IG5ldyBpb2N0bCBkb2Vzbid0IGV4
cG9zZSBhbnl0aGluZyB0aGF0IGlzbid0IGFscmVhZHkKPj4+IHRoZXJlLiAgSXQganVzdCBsZXRz
IHlvdSB0YWtlIGEgc25hcC1zaG90IG9mIGEgd2FpdCBpbnN0ZWFkIG9mIGRvaW5nCj4+PiBhbiBh
Y3RpdmUgd2FpdCB3aGljaCBtaWdodCBlbmQgdXAgd2l0aCBtb3JlIGZlbmNlcyBhZGRlZCBkZXBl
bmRpbmcgb24KPj4+IGludGVycnVwdHMgYW5kIHJldHJpZXMuICBUaGUgZG1hLWJ1ZiBwb2xsIHdh
aXRzIG9uIGFsbCBmZW5jZXMgZm9yCj4+PiBQT0xMT1VUIGFuZCBvbmx5IHRoZSBleGNsdXNpdmUg
ZmVuY2UgZm9yIFBPTExJTi4gIEl0J3MgYWxyZWFkeSB1QVBJLgo+Pgo+PiBOb3RlIHRoYXQgdGhl
IGRtYS1idWYgcG9sbCBzdXBwb3J0IGNvdWxkIGJlIHVzZWZ1bCB0byBXYXlsYW5kIGNvbXBvc2l0
b3JzIGZvciB0aGUgc2FtZSBwdXJwb3NlIGFzIEphc29uJ3MgbmV3IGlvY3RsIChvbmx5IHVzaW5n
IGNsaWVudCBidWZmZXJzIHdoaWNoIGhhdmUgZmluaXNoZWQgZHJhd2luZyBmb3IgYW4gb3V0cHV0
IGZyYW1lLCB0byBhdm9pZCBtaXNzaW5nIGEgcmVmcmVzaCBjeWNsZSBkdWUgdG8gY2xpZW50IGRy
YXdpbmcpLCAqaWYqIGl0IGRpZG4ndCB3b3JrIGRpZmZlcmVudGx5IHdpdGggYW1kZ3B1Lgo+Pgo+
PiBBbSBJIHVuZGVyc3RhbmRpbmcgY29ycmVjdGx5IHRoYXQgSmFzb24ncyBuZXcgaW9jdGwgd291
bGQgYWxzbyB3b3JrIGRpZmZlcmVudGx5IHdpdGggYW1kZ3B1IGFzIHRoaW5ncyBzdGFuZCBjdXJy
ZW50bHk/IElmIHNvLCB0aGF0IHdvdWxkIGJlIGEgcmVhbCBidW1tZXIgYW5kIG1pZ2h0IGhpbmRl
ciBhZG9wdGlvbiBvZiB0aGUgaW9jdGwgYnkgV2F5bGFuZCBjb21wb3NpdG9ycy4KPiAKPiBNeSBu
ZXcgaW9jdGwgaGFzIGlkZW50aWNhbCBzZW1hbnRpY3MgdG8gcG9sbCgpLiAgSXQganVzdCBsZXRz
IHlvdSB0YWtlCj4gYSBzbmFwc2hvdCBpbiB0aW1lIHRvIHdhaXQgb24gbGF0ZXIgaW5zdGVhZCBv
ZiB3YWl0aW5nIG9uIHdoYXRldmVyCj4gaGFwcGVucyB0byBiZSBzZXQgcmlnaHQgbm93LiAgSU1P
LCBoYXZpbmcgaWRlbnRpY2FsIHNlbWFudGljcyB0bwo+IHBvbGwoKSBpc24ndCBzb21ldGhpbmcg
d2Ugd2FudCB0byBjaGFuZ2UuCgpBZ3JlZWQuCgpJJ2QgYXJndWUgdGhlbiB0aGF0IG1ha2luZyBh
bWRncHUgcG9sbCBzZW1hbnRpY3MgbWF0Y2ggdGhvc2Ugb2Ygb3RoZXIgZHJpdmVycyBpcyBhIHBy
ZS1yZXF1aXNpdGUgZm9yIHRoZSBuZXcgaW9jdGwsIG90aGVyd2lzZSBpdCBzZWVtcyB1bmxpa2Vs
eSB0aGF0IHRoZSBpb2N0bCB3aWxsIGJlIHdpZGVseSBhZG9wdGVkLgoKCi0tIApFYXJ0aGxpbmcg
TWljaGVsIETDpG56ZXIgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgaHR0cHM6Ly9yZWRo
YXQuY29tCkxpYnJlIHNvZnR3YXJlIGVudGh1c2lhc3QgICAgICAgICAgICAgfCAgICAgICAgICAg
ICBNZXNhIGFuZCBYIGRldmVsb3BlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
