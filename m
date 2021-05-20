Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8216F3919F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:20:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE672614C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A7CE16693F; Wed, 26 May 2021 14:20:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE4E861585;
	Wed, 26 May 2021 14:20:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B4FF1610C3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 08:13:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B2D78610DB; Thu, 20 May 2021 08:13:44 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id 91D6F610C3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 08:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id D9A4B20201B;
 Thu, 20 May 2021 10:13:41 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id hQOBkSBqNF1s; Thu, 20 May 2021 10:13:40 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id 417EA20201A;
 Thu, 20 May 2021 10:13:40 +0200 (CEST)
Received: from localhost ([::1]) by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1ljdoJ-000oxZ-3q; Thu, 20 May 2021 10:13:39 +0200
To: Daniel Vetter <daniel@ffwll.ch>
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
 <6f3e2628-7b39-417c-3bd2-c837c5367458@daenzer.net>
 <CAKMK7uFMQGth19OjWmeNGTeVFoAqxK2tYXYrvme+NuCSNLxLUQ@mail.gmail.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <7cbba7b7-d7e5-9c76-c747-4e39542268a2@daenzer.net>
Date: Thu, 20 May 2021 10:13:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uFMQGth19OjWmeNGTeVFoAqxK2tYXYrvme+NuCSNLxLUQ@mail.gmail.com>
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
 <linaro-mm-sig@lists.linaro.org>, Jason Ekstrand <jason@jlekstrand.net>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMS0wNS0yMCA5OjU1IGEubS4sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gV2VkLCBN
YXkgMTksIDIwMjEgYXQgNTo0OCBQTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRhZW56ZXIubmV0
PiB3cm90ZToKPj4KPj4gT24gMjAyMS0wNS0xOSA1OjIxIHAubS4sIEphc29uIEVrc3RyYW5kIHdy
b3RlOgo+Pj4gT24gV2VkLCBNYXkgMTksIDIwMjEgYXQgNTo1MiBBTSBNaWNoZWwgRMOkbnplciA8
bWljaGVsQGRhZW56ZXIubmV0PiB3cm90ZToKPj4+Pgo+Pj4+IE9uIDIwMjEtMDUtMTkgMTI6MDYg
YS5tLiwgSmFzb24gRWtzdHJhbmQgd3JvdGU6Cj4+Pj4+IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0
IDQ6MTcgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToKPj4+Pj4+Cj4+
Pj4+PiBPbiBUdWUsIE1heSAxOCwgMjAyMSBhdCA3OjQwIFBNIENocmlzdGlhbiBLw7ZuaWcKPj4+
Pj4+IDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pj4+Pj4KPj4+
Pj4+PiBBbSAxOC4wNS4yMSB1bSAxODo0OCBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4+Pj4+Pj4+
IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0IDI6NDkgUE0gQ2hyaXN0aWFuIEvDtm5pZwo+Pj4+Pj4+
PiA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4gQW5kIGFzIGxvbmcgYXMgd2UgYXJlIGFsbCBpbnNpZGUgYW1kZ3B1IHdlIGFsc28gZG9u
J3QgaGF2ZSBhbnkgb3ZlcnN5bmMsCj4+Pj4+Pj4+PiB0aGUgaXNzdWUgb25seSBoYXBwZW5zIHdo
ZW4gd2Ugc2hhcmUgZG1hLWJ1ZnMgd2l0aCBpOTE1IChyYWRlb24gYW5kCj4+Pj4+Pj4+PiBBRkFJ
SyBub3V2ZWF1IGRvZXMgdGhlIHJpZ2h0IHRoaW5nIGFzIHdlbGwpLgo+Pj4+Pj4+PiBZZWFoIGJl
Y2F1c2UgdGhlbiB5b3UgY2FuJ3QgdXNlIHRoZSBhbWRncHUgZG1hX3Jlc3YgbW9kZWwgYW55bW9y
ZSBhbmQKPj4+Pj4+Pj4gaGF2ZSB0byB1c2UgdGhlIG9uZSBhdG9taWMgaGVscGVycyB1c2UuIFdo
aWNoIGlzIGFsc28gdGhlIG9uZSB0aGF0Cj4+Pj4+Pj4+IGUuZy4gSmFzb24gaXMgdGhyZWF0aGVu
aW5nIHRvIGJha2UgaW4gYXMgdWFwaSB3aXRoIGhpcyBkbWFfYnVmIGlvY3RsLAo+Pj4+Pj4+PiBz
byBhcyBzb29uIGFzIHRoYXQgbGFuZHMgYW5kIHNvbWVvbmUgc3RhcnRzIHVzaW5nIGl0LCBzb21l
dGhpbmcgaGFzIHRvCj4+Pj4+Pj4+IGFkYXB0IF9hbnl0aW1lXyB5b3UgaGF2ZSBhIGRtYS1idWYg
aGFuZ2luZyBhcm91bmQuIE5vdCBqdXN0IHdoZW4gaXQncwo+Pj4+Pj4+PiBzaGFyZWQgd2l0aCBh
bm90aGVyIGRldmljZS4KPj4+Pj4+Pgo+Pj4+Pj4+IFllYWgsIGFuZCB0aGF0IGlzIGV4YWN0bHkg
dGhlIHJlYXNvbiB3aHkgSSB3aWxsIE5BSyB0aGlzIHVBUEkgY2hhbmdlLgo+Pj4+Pj4+Cj4+Pj4+
Pj4gVGhpcyBkb2Vzbid0IHdvcmtzIGZvciBhbWRncHUgYXQgYWxsIGZvciB0aGUgcmVhc29ucyBv
dXRsaW5lZCBhYm92ZS4KPj4+Pj4+Cj4+Pj4+PiBVaCB0aGF0J3MgcmVhbGx5IG5vdCBob3cgdWFw
aSB3b3Jrcy4gIm15IGRyaXZlciBpcyByaWdodCwgZXZlcnlvbmUKPj4+Pj4+IGVsc2UgaXMgd3Jv
bmciIGlzIG5vdCBob3cgY3Jvc3MgZHJpdmVyIGNvbnRyYWN0cyBhcmUgZGVmaW5lZC4gSWYgdGhh
dAo+Pj4+Pj4gbWVhbnMgYSBwZXJmIGltcGFjdCB1bnRpbCB5b3UndmUgZml4ZWQgeW91ciBydWxl
cywgdGhhdCdzIG9uIHlvdS4KPj4+Pj4+Cj4+Pj4+PiBBbHNvIHlvdSdyZSBhIGZldyB5ZWFycyB0
b28gbGF0ZSB3aXRoIG5hY2tpbmcgdGhpcywgaXQncyBhbHJlYWR5IHVhcGkKPj4+Pj4+IGluIHRo
ZSBmb3JtIG9mIHRoZSBkbWEtYnVmIHBvbGwoKSBzdXBwb3J0Lgo+Pj4+Pgo+Pj4+PiBeXiAgTXkg
ZmFuY3kgbmV3IGlvY3RsIGRvZXNuJ3QgZXhwb3NlIGFueXRoaW5nIHRoYXQgaXNuJ3QgYWxyZWFk
eQo+Pj4+PiB0aGVyZS4gIEl0IGp1c3QgbGV0cyB5b3UgdGFrZSBhIHNuYXAtc2hvdCBvZiBhIHdh
aXQgaW5zdGVhZCBvZiBkb2luZwo+Pj4+PiBhbiBhY3RpdmUgd2FpdCB3aGljaCBtaWdodCBlbmQg
dXAgd2l0aCBtb3JlIGZlbmNlcyBhZGRlZCBkZXBlbmRpbmcgb24KPj4+Pj4gaW50ZXJydXB0cyBh
bmQgcmV0cmllcy4gIFRoZSBkbWEtYnVmIHBvbGwgd2FpdHMgb24gYWxsIGZlbmNlcyBmb3IKPj4+
Pj4gUE9MTE9VVCBhbmQgb25seSB0aGUgZXhjbHVzaXZlIGZlbmNlIGZvciBQT0xMSU4uICBJdCdz
IGFscmVhZHkgdUFQSS4KPj4+Pgo+Pj4+IE5vdGUgdGhhdCB0aGUgZG1hLWJ1ZiBwb2xsIHN1cHBv
cnQgY291bGQgYmUgdXNlZnVsIHRvIFdheWxhbmQgY29tcG9zaXRvcnMgZm9yIHRoZSBzYW1lIHB1
cnBvc2UgYXMgSmFzb24ncyBuZXcgaW9jdGwgKG9ubHkgdXNpbmcgY2xpZW50IGJ1ZmZlcnMgd2hp
Y2ggaGF2ZSBmaW5pc2hlZCBkcmF3aW5nIGZvciBhbiBvdXRwdXQgZnJhbWUsIHRvIGF2b2lkIG1p
c3NpbmcgYSByZWZyZXNoIGN5Y2xlIGR1ZSB0byBjbGllbnQgZHJhd2luZyksICppZiogaXQgZGlk
bid0IHdvcmsgZGlmZmVyZW50bHkgd2l0aCBhbWRncHUuCj4+Pj4KPj4+PiBBbSBJIHVuZGVyc3Rh
bmRpbmcgY29ycmVjdGx5IHRoYXQgSmFzb24ncyBuZXcgaW9jdGwgd291bGQgYWxzbyB3b3JrIGRp
ZmZlcmVudGx5IHdpdGggYW1kZ3B1IGFzIHRoaW5ncyBzdGFuZCBjdXJyZW50bHk/IElmIHNvLCB0
aGF0IHdvdWxkIGJlIGEgcmVhbCBidW1tZXIgYW5kIG1pZ2h0IGhpbmRlciBhZG9wdGlvbiBvZiB0
aGUgaW9jdGwgYnkgV2F5bGFuZCBjb21wb3NpdG9ycy4KPj4+Cj4+PiBNeSBuZXcgaW9jdGwgaGFz
IGlkZW50aWNhbCBzZW1hbnRpY3MgdG8gcG9sbCgpLiAgSXQganVzdCBsZXRzIHlvdSB0YWtlCj4+
PiBhIHNuYXBzaG90IGluIHRpbWUgdG8gd2FpdCBvbiBsYXRlciBpbnN0ZWFkIG9mIHdhaXRpbmcg
b24gd2hhdGV2ZXIKPj4+IGhhcHBlbnMgdG8gYmUgc2V0IHJpZ2h0IG5vdy4gIElNTywgaGF2aW5n
IGlkZW50aWNhbCBzZW1hbnRpY3MgdG8KPj4+IHBvbGwoKSBpc24ndCBzb21ldGhpbmcgd2Ugd2Fu
dCB0byBjaGFuZ2UuCj4+Cj4+IEFncmVlZC4KPj4KPj4gSSdkIGFyZ3VlIHRoZW4gdGhhdCBtYWtp
bmcgYW1kZ3B1IHBvbGwgc2VtYW50aWNzIG1hdGNoIHRob3NlIG9mIG90aGVyIGRyaXZlcnMgaXMg
YSBwcmUtcmVxdWlzaXRlIGZvciB0aGUgbmV3IGlvY3RsLCBvdGhlcndpc2UgaXQgc2VlbXMgdW5s
aWtlbHkgdGhhdCB0aGUgaW9jdGwgd2lsbCBiZSB3aWRlbHkgYWRvcHRlZC4KPiAKPiBUaGlzIHNl
ZW1zIGJhY2t3YXJkcywgYmVjYXVzZSB0aGF0IG1lYW5zIHVzZWZ1bCBpbXByb3ZlbWVudHMgaW4g
YWxsCj4gb3RoZXIgZHJpdmVycyBhcmUgc3RhbGxlZCB1bnRpbCBhbWRncHUgaXMgZml4ZWQuCj4g
Cj4gSSB0aGluayB3ZSBuZWVkIGFncmVlbWVudCBvbiB3aGF0IHRoZSBydWxlcyBhcmUsIHJlYXNv
bmFibGUgcGxhbiB0bwo+IGdldCB0aGVyZSwgYW5kIHRoZW4gdGhhdCBzaG91bGQgYmUgZW5vdWdo
IHRvIHVuYmxvY2sgd29yayBpbiB0aGUgd2lkZXIKPiBjb21tdW5pdHkuIEhvbGRpbmcgdGhlIGNv
bW11bml0eSBhdCBsYXJnZSBob3N0YWdlIGJlY2F1c2Ugb25lIGRyaXZlcgo+IGlzIGRpZmZlcmVu
dCBpcyByZWFsbHkgbm90IGdyZWF0LgoKSSB0aGluayB3ZSdyZSBpbiB2aW9sZW50IGFncmVlbWVu
dC4gOikgVGhlIHBvaW50IEkgd2FzIHRyeWluZyB0byBtYWtlIGlzIHRoYXQgYW1kZ3B1IHJlYWxs
eSBuZWVkcyB0byBiZSBmaXhlZCB0byBiZSBjb25zaXN0ZW50IHdpdGggb3RoZXIgZHJpdmVycyBB
U0FQLgoKCi0tIApFYXJ0aGxpbmcgTWljaGVsIETDpG56ZXIgICAgICAgICAgICAgICB8ICAgICAg
ICAgICAgICAgaHR0cHM6Ly9yZWRoYXQuY29tCkxpYnJlIHNvZnR3YXJlIGVudGh1c2lhc3QgICAg
ICAgICAgICAgfCAgICAgICAgICAgICBNZXNhIGFuZCBYIGRldmVsb3BlcgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
