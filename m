Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B972C1ABDCD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2020 12:25:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C08846602B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2020 10:25:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AC0F166030; Thu, 16 Apr 2020 10:25:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 863826156D;
	Thu, 16 Apr 2020 10:25:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8A63260B02
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 10:25:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7740A6156D; Thu, 16 Apr 2020 10:25:14 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id BCAD560B02
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 10:25:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 457552192A;
 Thu, 16 Apr 2020 10:25:11 +0000 (UTC)
Date: Thu, 16 Apr 2020 12:25:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20200416102508.GA820251@kroah.com>
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
 <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>, nd <nd@arm.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] staging: android: ion: Skip sync if not
	mapped
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

T24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgMDk6NDE6MzFQTSAtMDcwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgNzoyOCBBTSBHcmVnIEtyb2FoLUhhcnRtYW4K
PiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIFR1ZSwgQXBy
IDE0LCAyMDIwIGF0IDA0OjE4OjQ3UE0gKzAyMDAsIMOYcmphbiBFaWRlIHdyb3RlOgo+ID4gPiBP
bmx5IHN5bmMgdGhlIHNnLWxpc3Qgb2YgYW4gSW9uIGRtYS1idWYgYXR0YWNobWVudCB3aGVuIHRo
ZSBhdHRhY2htZW50Cj4gPiA+IGlzIGFjdHVhbGx5IG1hcHBlZCBvbiB0aGUgZGV2aWNlLgo+ID4g
Pgo+ID4gPiBkbWEtYnVmcyBtYXkgYmUgc3luY2VkIGF0IGFueSB0aW1lLiBJdCBjYW4gYmUgcmVh
Y2hlZCBmcm9tIHVzZXIgc3BhY2UKPiA+ID4gdmlhIERNQV9CVUZfSU9DVExfU1lOQywgc28gdGhl
cmUgYXJlIG5vIGd1YXJhbnRlZXMgZnJvbSBjYWxsZXJzIG9uIHdoZW4KPiA+ID4gc3luY3MgbWF5
IGJlIGF0dGVtcHRlZCwgYW5kIGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MoKSBhbmQKPiA+ID4gZG1h
X2J1Zl9iZWdpbl9jcHVfYWNjZXNzKCkgbWF5IG5vdCBiZSBwYWlyZWQuCj4gPiA+Cj4gPiA+IFNp
bmNlIHRoZSBzZ19saXN0J3MgZG1hX2FkZHJlc3MgaXNuJ3Qgc2V0IHVwIHVudGlsIHRoZSBidWZm
ZXIgaXMgdXNlZAo+ID4gPiBvbiB0aGUgZGV2aWNlLCBhbmQgZG1hX21hcF9zZygpIGlzIGNhbGxl
ZCBvbiBpdCwgdGhlIGRtYV9hZGRyZXNzIHdpbGwgYmUKPiA+ID4gTlVMTCBpZiBzeW5jIGlzIGF0
dGVtcHRlZCBvbiB0aGUgZG1hLWJ1ZiBiZWZvcmUgaXQncyBtYXBwZWQgb24gYSBkZXZpY2UuCj4g
PiA+Cj4gPiA+IEJlZm9yZSB2NS4wIChjb21taXQgNTU4OTdhZjYzMDkxICgiZG1hLWRpcmVjdDog
bWVyZ2Ugc3dpb3RsYl9kbWFfb3BzCj4gPiA+IGludG8gdGhlIGRtYV9kaXJlY3QgY29kZSIpKSB0
aGlzIHdhcyBhIHByb2JsZW0gYXMgdGhlIGRtYS1hcGkgKGF0IGxlYXN0Cj4gPiA+IHRoZSBzd2lv
dGxiX2RtYV9vcHMgb24gYXJtNjQpIHdvdWxkIHVzZSB0aGUgcG90ZW50aWFsbHkgaW52YWxpZAo+
ID4gPiBkbWFfYWRkcmVzcy4gSG93IHRoYXQgZmFpbGVkIGRlcGVuZGVkIG9uIGhvdyB0aGUgZGV2
aWNlIGhhbmRsZWQgcGh5c2ljYWwKPiA+ID4gYWRkcmVzcyAwLiBJZiAwIHdhcyBhIHZhbGlkIGFk
ZHJlc3MgdG8gcGh5c2ljYWwgcmFtLCB0aGF0IHBhZ2Ugd291bGQgZ2V0Cj4gPiA+IGZsdXNoZWQg
YSBsb3QsIHdoaWxlIHRoZSBhY3R1YWwgcGFnZXMgaW4gdGhlIGJ1ZmZlciB3b3VsZCBub3QgZ2V0
IHN5bmNlZAo+ID4gPiBjb3JyZWN0bHkuIFdoaWxlIGlmIDAgaXMgYW4gaW52YWxpZCBwaHlzaWNh
bCBhZGRyZXNzIGl0IG1heSBjYXVzZSBhCj4gPiA+IGZhdWx0IGFuZCB0cmlnZ2VyIGEgY3Jhc2gu
Cj4gPiA+Cj4gPiA+IEluIHY1LjAgdGhpcyB3YXMgaW5jaWRlbnRhbGx5IGZpeGVkIGJ5IGNvbW1p
dCA1NTg5N2FmNjMwOTEgKCJkbWEtZGlyZWN0Ogo+ID4gPiBtZXJnZSBzd2lvdGxiX2RtYV9vcHMg
aW50byB0aGUgZG1hX2RpcmVjdCBjb2RlIiksIGFzIHRoaXMgbW92ZWQgdGhlCj4gPiA+IGRtYS1h
cGkgdG8gdXNlIHRoZSBwYWdlIHBvaW50ZXIgaW4gdGhlIHNnX2xpc3QsIGFuZCAoZm9yIElvbiBi
dWZmZXJzIGF0Cj4gPiA+IGxlYXN0KSB0aGlzIHdpbGwgYWx3YXlzIGJlIHZhbGlkIGlmIHRoZSBz
Z19saXN0IGV4aXN0cyBhdCBhbGwuCj4gPiA+Cj4gPiA+IEJ1dCwgdGhpcyBpc3N1ZSBpcyByZS1p
bnRyb2R1Y2VkIGluIHY1LjMgd2l0aAo+ID4gPiBjb21taXQgNDQ5ZmE1NGQ2ODE1ICgiZG1hLWRp
cmVjdDogY29ycmVjdCB0aGUgcGh5c2ljYWwgYWRkciBpbgo+ID4gPiBkbWFfZGlyZWN0X3N5bmNf
c2dfZm9yX2NwdS9kZXZpY2UiKSBtb3ZlcyB0aGUgZG1hLWFwaSBiYWNrIHRvIHRoZSBvbGQKPiA+
ID4gYmVoYXZpb3VyIGFuZCBwaWNrcyB0aGUgZG1hX2FkZHJlc3MgdGhhdCBtYXkgYmUgaW52YWxp
ZC4KPiA+ID4KPiA+ID4gZG1hLWJ1ZiBjb3JlIGRvZXNuJ3QgZW5zdXJlIHRoYXQgdGhlIGJ1ZmZl
ciBpcyBtYXBwZWQgb24gdGhlIGRldmljZSwgYW5kCj4gPiA+IHRodXMgaGF2ZSBhIHZhbGlkIHNn
X2xpc3QsIGJlZm9yZSBjYWxsaW5nIHRoZSBleHBvcnRlcidzCj4gPiA+IGJlZ2luX2NwdV9hY2Nl
c3MuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IMOYcmphbiBFaWRlIDxvcmphbi5laWRlQGFy
bS5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5j
IHwgMTIgKysrKysrKysrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygr
KQo+ID4gPgo+ID4gPiBSZXN1Ym1pdCB3aXRob3V0IGRpc2NsYWltZXIsIHNvcnJ5IGFib3V0IHRo
YXQuCj4gPiA+Cj4gPiA+IFRoaXMgc2VlbXMgdG8gYmUgcGFydCBvZiBhIGJpZ2dlciBpc3N1ZSB3
aGVyZSBkbWEtYnVmIGV4cG9ydGVycyBhc3N1bWUKPiA+ID4gdGhhdCB0aGVpciBkbWEtYnVmIGJl
Z2luX2NwdV9hY2Nlc3MgYW5kIGVuZF9jcHVfYWNjZXNzIGNhbGxiYWNrcyBoYXZlIGEKPiA+ID4g
Y2VydGFpbiBndWFyYW50ZWVkIGJlaGF2aW9yLCB3aGljaCBpc24ndCBlbnN1cmVkIGJ5IGRtYS1i
dWYgY29yZS4KPiA+ID4KPiA+ID4gVGhpcyBwYXRjaCBmaXhlcyB0aGlzIGluIGlvbiBvbmx5LCBi
dXQgaXQgYWxzbyBuZWVkcyB0byBiZSBmaXhlZCBmb3IKPiA+ID4gb3RoZXIgZXhwb3J0ZXJzLCBl
aXRoZXIgaGFuZGxlZCBsaWtlIHRoaXMgaW4gZWFjaCBleHBvcnRlciwgb3IgaW4KPiA+ID4gZG1h
LWJ1ZiBjb3JlIGJlZm9yZSBjYWxsaW5nIGludG8gdGhlIGV4cG9ydGVycy4KPiA+ID4KPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyBiL2RyaXZlcnMv
c3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gPiBpbmRleCAzOGI1MWVhY2U0ZjkuLjdiNzUy
YmEwY2I2ZCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lv
bi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4KPiA+
IE5vdyB0aGF0IHdlIGhhdmUgdGhlIGRtYS1idWZmIHN0dWZmIGluIHRoZSB0cmVlLCBkbyB3ZSBl
dmVuIG5lZWQgdGhlCj4gPiBpb24gY29kZSBpbiB0aGUga2VybmVsIGFueW1vcmU/ICBDYW4ndCB3
ZSBkZWxldGUgaXQgbm93Pwo+ID4KPiAKPiBJIGFncmVlIHRoYXQgd2Ugc2hvdWxkbid0IGJlIHRh
a2luZyBmdXJ0aGVyIChub24tc2VjdXJpdHkvY2xlYW51cCkKPiBwYXRjaGVzIHRvIHRoZSBJT04g
Y29kZS4KPiAKPiBJJ2QgbGlrZSB0byBnaXZlIGRldmVsb3BlcnMgYSBsaXR0bGUgYml0IG9mIGEg
dHJhbnNpdGlvbiBwZXJpb2QgKEkgd2FzCj4gdGhpbmtpbmcgYSB5ZWFyLCBidXQgcmVhbGx5IGp1
c3Qgb25lIExUUyByZWxlYXNlIHRoYXQgaGFzIGJvdGggd291bGQKPiBkbykgd2hlcmUgdGhleSBj
YW4gbW92ZSB0aGVpciBJT04gaGVhcHMgb3ZlciB0byBkbWFidWYgaGVhcHMgYW5kIHRlc3QKPiBi
b3RoIGFnYWluc3QgdGhlIHNhbWUgdHJlZS4KPiAKPiBCdXQgSSBkbyB0aGluayB3ZSBjYW4gbWFy
ayBpdCBhcyBkZXByZWNhdGVkIGFuZCBsZXQgZm9sa3Mga25vdyB0aGF0Cj4gYXJvdW5kIHRoZSBl
bmQgb2YgdGhlIHllYXIgaXQgd2lsbCBiZSBkZWxldGVkLgoKTm8gb25lIGV2ZXIgbm90aWNlcyAi
ZGVwcmVjaWF0ZWQiIHRoaW5ncywgdGhleSBvbmx5IG5vdGljZSBpZiB0aGUgY29kZQppcyBubyBs
b25nZXIgdGhlcmUgOikKClNvIEknbSBhbGwgZm9yIGp1c3QgZGVsZXRpbmcgaXQgYW5kIHNlZWlu
ZyB3aG8gZXZlbiBub3RpY2VzLi4uCgp0aGFua3MsCgpncmVnIGstaApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
