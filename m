Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2E13919FA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:21:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DD9960EFF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:21:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5F0BC63509; Wed, 26 May 2021 14:20:39 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E77B161528;
	Wed, 26 May 2021 14:20:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 18DE86117F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 14:31:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 169D2611AF; Thu, 20 May 2021 14:31:03 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id D42D76117F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 14:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id 2C09D20201C;
 Thu, 20 May 2021 16:31:00 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 7BmQALa4TkK6; Thu, 20 May 2021 16:30:59 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id C01E020201A;
 Thu, 20 May 2021 16:30:59 +0200 (CEST)
Received: from localhost ([::1]) by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1ljjhS-0010zu-HC; Thu, 20 May 2021 16:30:58 +0200
To: Daniel Vetter <daniel@ffwll.ch>
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
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <9fcd6de3-a1f3-f7f8-e6c8-c7d69c18fad0@daenzer.net>
Date: Thu, 20 May 2021 16:30:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <YKZvx0UXYnJrfVw4@phenom.ffwll.local>
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

T24gMjAyMS0wNS0yMCA0OjE4IHAubS4sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gVGh1LCBN
YXkgMjAsIDIwMjEgYXQgMTA6MTM6MzhBTSArMDIwMCwgTWljaGVsIETDpG56ZXIgd3JvdGU6Cj4+
IE9uIDIwMjEtMDUtMjAgOTo1NSBhLm0uLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+Pj4gT24gV2Vk
LCBNYXkgMTksIDIwMjEgYXQgNTo0OCBQTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRhZW56ZXIu
bmV0PiB3cm90ZToKPj4+Pgo+Pj4+IE9uIDIwMjEtMDUtMTkgNToyMSBwLm0uLCBKYXNvbiBFa3N0
cmFuZCB3cm90ZToKPj4+Pj4gT24gV2VkLCBNYXkgMTksIDIwMjEgYXQgNTo1MiBBTSBNaWNoZWwg
RMOkbnplciA8bWljaGVsQGRhZW56ZXIubmV0PiB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBPbiAyMDIx
LTA1LTE5IDEyOjA2IGEubS4sIEphc29uIEVrc3RyYW5kIHdyb3RlOgo+Pj4+Pj4+IE9uIFR1ZSwg
TWF5IDE4LCAyMDIxIGF0IDQ6MTcgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3
cm90ZToKPj4+Pj4+Pj4KPj4+Pj4+Pj4gT24gVHVlLCBNYXkgMTgsIDIwMjEgYXQgNzo0MCBQTSBD
aHJpc3RpYW4gS8O2bmlnCj4+Pj4+Pj4+IDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNv
bT4gd3JvdGU6Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQW0gMTguMDUuMjEgdW0gMTg6NDggc2Nocmll
YiBEYW5pZWwgVmV0dGVyOgo+Pj4+Pj4+Pj4+IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0IDI6NDkg
UE0gQ2hyaXN0aWFuIEvDtm5pZwo+Pj4+Pj4+Pj4+IDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdt
YWlsLmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gQW5kIGFzIGxvbmcgYXMgd2Ug
YXJlIGFsbCBpbnNpZGUgYW1kZ3B1IHdlIGFsc28gZG9uJ3QgaGF2ZSBhbnkgb3ZlcnN5bmMsCj4+
Pj4+Pj4+Pj4+IHRoZSBpc3N1ZSBvbmx5IGhhcHBlbnMgd2hlbiB3ZSBzaGFyZSBkbWEtYnVmcyB3
aXRoIGk5MTUgKHJhZGVvbiBhbmQKPj4+Pj4+Pj4+Pj4gQUZBSUsgbm91dmVhdSBkb2VzIHRoZSBy
aWdodCB0aGluZyBhcyB3ZWxsKS4KPj4+Pj4+Pj4+PiBZZWFoIGJlY2F1c2UgdGhlbiB5b3UgY2Fu
J3QgdXNlIHRoZSBhbWRncHUgZG1hX3Jlc3YgbW9kZWwgYW55bW9yZSBhbmQKPj4+Pj4+Pj4+PiBo
YXZlIHRvIHVzZSB0aGUgb25lIGF0b21pYyBoZWxwZXJzIHVzZS4gV2hpY2ggaXMgYWxzbyB0aGUg
b25lIHRoYXQKPj4+Pj4+Pj4+PiBlLmcuIEphc29uIGlzIHRocmVhdGhlbmluZyB0byBiYWtlIGlu
IGFzIHVhcGkgd2l0aCBoaXMgZG1hX2J1ZiBpb2N0bCwKPj4+Pj4+Pj4+PiBzbyBhcyBzb29uIGFz
IHRoYXQgbGFuZHMgYW5kIHNvbWVvbmUgc3RhcnRzIHVzaW5nIGl0LCBzb21ldGhpbmcgaGFzIHRv
Cj4+Pj4+Pj4+Pj4gYWRhcHQgX2FueXRpbWVfIHlvdSBoYXZlIGEgZG1hLWJ1ZiBoYW5naW5nIGFy
b3VuZC4gTm90IGp1c3Qgd2hlbiBpdCdzCj4+Pj4+Pj4+Pj4gc2hhcmVkIHdpdGggYW5vdGhlciBk
ZXZpY2UuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gWWVhaCwgYW5kIHRoYXQgaXMgZXhhY3RseSB0aGUg
cmVhc29uIHdoeSBJIHdpbGwgTkFLIHRoaXMgdUFQSSBjaGFuZ2UuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4gVGhpcyBkb2Vzbid0IHdvcmtzIGZvciBhbWRncHUgYXQgYWxsIGZvciB0aGUgcmVhc29ucyBv
dXRsaW5lZCBhYm92ZS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gVWggdGhhdCdzIHJlYWxseSBub3QgaG93
IHVhcGkgd29ya3MuICJteSBkcml2ZXIgaXMgcmlnaHQsIGV2ZXJ5b25lCj4+Pj4+Pj4+IGVsc2Ug
aXMgd3JvbmciIGlzIG5vdCBob3cgY3Jvc3MgZHJpdmVyIGNvbnRyYWN0cyBhcmUgZGVmaW5lZC4g
SWYgdGhhdAo+Pj4+Pj4+PiBtZWFucyBhIHBlcmYgaW1wYWN0IHVudGlsIHlvdSd2ZSBmaXhlZCB5
b3VyIHJ1bGVzLCB0aGF0J3Mgb24geW91Lgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBBbHNvIHlvdSdyZSBh
IGZldyB5ZWFycyB0b28gbGF0ZSB3aXRoIG5hY2tpbmcgdGhpcywgaXQncyBhbHJlYWR5IHVhcGkK
Pj4+Pj4+Pj4gaW4gdGhlIGZvcm0gb2YgdGhlIGRtYS1idWYgcG9sbCgpIHN1cHBvcnQuCj4+Pj4+
Pj4KPj4+Pj4+PiBeXiAgTXkgZmFuY3kgbmV3IGlvY3RsIGRvZXNuJ3QgZXhwb3NlIGFueXRoaW5n
IHRoYXQgaXNuJ3QgYWxyZWFkeQo+Pj4+Pj4+IHRoZXJlLiAgSXQganVzdCBsZXRzIHlvdSB0YWtl
IGEgc25hcC1zaG90IG9mIGEgd2FpdCBpbnN0ZWFkIG9mIGRvaW5nCj4+Pj4+Pj4gYW4gYWN0aXZl
IHdhaXQgd2hpY2ggbWlnaHQgZW5kIHVwIHdpdGggbW9yZSBmZW5jZXMgYWRkZWQgZGVwZW5kaW5n
IG9uCj4+Pj4+Pj4gaW50ZXJydXB0cyBhbmQgcmV0cmllcy4gIFRoZSBkbWEtYnVmIHBvbGwgd2Fp
dHMgb24gYWxsIGZlbmNlcyBmb3IKPj4+Pj4+PiBQT0xMT1VUIGFuZCBvbmx5IHRoZSBleGNsdXNp
dmUgZmVuY2UgZm9yIFBPTExJTi4gIEl0J3MgYWxyZWFkeSB1QVBJLgo+Pj4+Pj4KPj4+Pj4+IE5v
dGUgdGhhdCB0aGUgZG1hLWJ1ZiBwb2xsIHN1cHBvcnQgY291bGQgYmUgdXNlZnVsIHRvIFdheWxh
bmQgY29tcG9zaXRvcnMgZm9yIHRoZSBzYW1lIHB1cnBvc2UgYXMgSmFzb24ncyBuZXcgaW9jdGwg
KG9ubHkgdXNpbmcgY2xpZW50IGJ1ZmZlcnMgd2hpY2ggaGF2ZSBmaW5pc2hlZCBkcmF3aW5nIGZv
ciBhbiBvdXRwdXQgZnJhbWUsIHRvIGF2b2lkIG1pc3NpbmcgYSByZWZyZXNoIGN5Y2xlIGR1ZSB0
byBjbGllbnQgZHJhd2luZyksICppZiogaXQgZGlkbid0IHdvcmsgZGlmZmVyZW50bHkgd2l0aCBh
bWRncHUuCj4+Pj4+Pgo+Pj4+Pj4gQW0gSSB1bmRlcnN0YW5kaW5nIGNvcnJlY3RseSB0aGF0IEph
c29uJ3MgbmV3IGlvY3RsIHdvdWxkIGFsc28gd29yayBkaWZmZXJlbnRseSB3aXRoIGFtZGdwdSBh
cyB0aGluZ3Mgc3RhbmQgY3VycmVudGx5PyBJZiBzbywgdGhhdCB3b3VsZCBiZSBhIHJlYWwgYnVt
bWVyIGFuZCBtaWdodCBoaW5kZXIgYWRvcHRpb24gb2YgdGhlIGlvY3RsIGJ5IFdheWxhbmQgY29t
cG9zaXRvcnMuCj4+Pj4+Cj4+Pj4+IE15IG5ldyBpb2N0bCBoYXMgaWRlbnRpY2FsIHNlbWFudGlj
cyB0byBwb2xsKCkuICBJdCBqdXN0IGxldHMgeW91IHRha2UKPj4+Pj4gYSBzbmFwc2hvdCBpbiB0
aW1lIHRvIHdhaXQgb24gbGF0ZXIgaW5zdGVhZCBvZiB3YWl0aW5nIG9uIHdoYXRldmVyCj4+Pj4+
IGhhcHBlbnMgdG8gYmUgc2V0IHJpZ2h0IG5vdy4gIElNTywgaGF2aW5nIGlkZW50aWNhbCBzZW1h
bnRpY3MgdG8KPj4+Pj4gcG9sbCgpIGlzbid0IHNvbWV0aGluZyB3ZSB3YW50IHRvIGNoYW5nZS4K
Pj4+Pgo+Pj4+IEFncmVlZC4KPj4+Pgo+Pj4+IEknZCBhcmd1ZSB0aGVuIHRoYXQgbWFraW5nIGFt
ZGdwdSBwb2xsIHNlbWFudGljcyBtYXRjaCB0aG9zZSBvZiBvdGhlciBkcml2ZXJzIGlzIGEgcHJl
LXJlcXVpc2l0ZSBmb3IgdGhlIG5ldyBpb2N0bCwgb3RoZXJ3aXNlIGl0IHNlZW1zIHVubGlrZWx5
IHRoYXQgdGhlIGlvY3RsIHdpbGwgYmUgd2lkZWx5IGFkb3B0ZWQuCj4+Pgo+Pj4gVGhpcyBzZWVt
cyBiYWNrd2FyZHMsIGJlY2F1c2UgdGhhdCBtZWFucyB1c2VmdWwgaW1wcm92ZW1lbnRzIGluIGFs
bAo+Pj4gb3RoZXIgZHJpdmVycyBhcmUgc3RhbGxlZCB1bnRpbCBhbWRncHUgaXMgZml4ZWQuCj4+
Pgo+Pj4gSSB0aGluayB3ZSBuZWVkIGFncmVlbWVudCBvbiB3aGF0IHRoZSBydWxlcyBhcmUsIHJl
YXNvbmFibGUgcGxhbiB0bwo+Pj4gZ2V0IHRoZXJlLCBhbmQgdGhlbiB0aGF0IHNob3VsZCBiZSBl
bm91Z2ggdG8gdW5ibG9jayB3b3JrIGluIHRoZSB3aWRlcgo+Pj4gY29tbXVuaXR5LiBIb2xkaW5n
IHRoZSBjb21tdW5pdHkgYXQgbGFyZ2UgaG9zdGFnZSBiZWNhdXNlIG9uZSBkcml2ZXIKPj4+IGlz
IGRpZmZlcmVudCBpcyByZWFsbHkgbm90IGdyZWF0Lgo+Pgo+PiBJIHRoaW5rIHdlJ3JlIGluIHZp
b2xlbnQgYWdyZWVtZW50LiA6KSBUaGUgcG9pbnQgSSB3YXMgdHJ5aW5nIHRvIG1ha2UgaXMKPj4g
dGhhdCBhbWRncHUgcmVhbGx5IG5lZWRzIHRvIGJlIGZpeGVkIHRvIGJlIGNvbnNpc3RlbnQgd2l0
aCBvdGhlciBkcml2ZXJzCj4+IEFTQVAuCj4gCj4gSXQncyBub3QgdGhhdCBlYXN5IGF0IGFsbC4g
SSB0aGluayBiZXN0IGNhc2Ugd2UncmUgbG9va2luZyBhdCBhYm91dCBhIG9uZQo+IHllYXIgcGxh
biB0byBnZXQgdGhpcyBpbnRvIHNoYXBlLCB0YWtpbmcgaW50byBhY2NvdW50IHVzdWFsIHJlbGVh
c2UvZGlzdHJvCj4gdXBkYXRlIGxhdGVuY2llcy4KPiAKPiBCZXN0IGNhc2UuCj4gCj4gQnV0IGFs
c28gaXQncyBub3QgYSByZWFsbHkgYmlnIGlzc3VlLCBzaW5jZSB0aGlzIHNob3VsZG4ndCBzdG9w
Cj4gY29tcG9zaXRvcnMgZnJvbSB1c2luZyBwb2xsIG9uIGRtYS1idWYgZmQgb3IgdGhlIHN5bmNf
ZmlsZSBzdHVmZiBmcm9tCj4gSmFzb246IFRoZSB1c2UtY2FzZSBmb3IgdGhpcyBpbiBjb21wb3Np
dG9ycyBpcyB0byBhdm9pZCBhIHNpbmdsZSBjbGllbnQKPiBzdGFsbGluZyB0aGUgZW50aXJlIGRl
c2t0b3AuIElmIGEgZHJpdmVyIGxpZXMgYnkgbm90IHNldHRpbmcgdGhlIGV4Y2x1c2l2ZQo+IGZl
bmNlIHdoZW4gZXhwZWN0ZWQsIHlvdSBzaW1wbHkgZG9uJ3QgZ2V0IHRoaXMgc3RhbGwgYXZvaWRh
bmNlIGJlbmVmaXQgb2YKPiBtaXNiZWhhdmluZyBjbGllbnRzLiBCdXQgYWxzbyB0aGlzIG5lZWRz
IGEgZ3B1IHNjaGVkdWxlciBhbmQgaGlnaGVyCj4gcHJpb3JpdHkgZm9yIHRoZSBjb21wb3NpdG9y
IChvciBhIGxvdCBvZiBodyBwbGFuZXMgc28geW91IGNhbiBjb21wb3NpdGUKPiB3aXRoIHRoZW0g
YWxvbmUpLCBzbyBpdCdzIGFsbCBmYWlybHkgYWNhZGVtaWMgaXNzdWUuCgpBRkFJSyBjdXJyZW50
IEFNRCBHUFVzIGhhdmUgZXZlcnl0aGluZyBuZWVkZWQgdG8gbWFrZSB0aGlzIHdvcmssIGl0IHdv
dWxkIGp1c3QgbmVlZCB0byBiZSBob29rZWQgdXAgZm9yIGhpZ2ggcHJpb3JpdHkgRUdMIGNvbnRl
eHRzICh3aGljaCBhdCBsZWFzdCBtdXR0ZXIgYWxyZWFkeSB1c2VzIHdoZW4gYXZhaWxhYmxlKSBp
biBhbWRncHUgJiByYWRlb25zaS4KCgotLSAKRWFydGhsaW5nIE1pY2hlbCBEw6RuemVyICAgICAg
ICAgICAgICAgfCAgICAgICAgICAgICAgIGh0dHBzOi8vcmVkaGF0LmNvbQpMaWJyZSBzb2Z0d2Fy
ZSBlbnRodXNpYXN0ICAgICAgICAgICAgIHwgICAgICAgICAgICAgTWVzYSBhbmQgWCBkZXZlbG9w
ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
