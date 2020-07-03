Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB7921349D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Jul 2020 09:04:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BA28665AA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Jul 2020 07:04:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5FD90665B0; Fri,  3 Jul 2020 07:04:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D547660911;
	Fri,  3 Jul 2020 07:04:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 67BB260679
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2020 07:04:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3E46160911; Fri,  3 Jul 2020 07:04:01 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 0528060679
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2020 07:04:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57B4A206DF;
 Fri,  3 Jul 2020 07:03:58 +0000 (UTC)
Date: Fri, 3 Jul 2020 09:04:03 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20200703070403.GB2221524@kroah.com>
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
 <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
 <20200416102508.GA820251@kroah.com>
 <20200420082207.ui7iyg7dsnred2vv@wittgenstein>
 <CALAqxLW-txNEqW=P_9VTxvOVu_fgpjzHHDbR5BhtpYwhg1SXgw@mail.gmail.com>
 <20200421080544.GA611314@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421080544.GA611314@kroah.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, nd <nd@arm.com>,
 Todd Kjos <tkjos@android.com>, Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Christian Brauner <christian@brauner.io>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>,
 Martijn Coenen <maco@android.com>,
 Christian Brauner <christian.brauner@ubuntu.com>, linux-media@vger.kernel.org
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

T24gVHVlLCBBcHIgMjEsIDIwMjAgYXQgMTA6MDU6NDRBTSArMDIwMCwgR3JlZyBLcm9haC1IYXJ0
bWFuIHdyb3RlOgo+IE9uIE1vbiwgQXByIDIwLCAyMDIwIGF0IDAxOjAzOjM5UE0gLTA3MDAsIEpv
aG4gU3R1bHR6IHdyb3RlOgo+ID4gT24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMToyMiBBTSBDaHJp
c3RpYW4gQnJhdW5lcgo+ID4gPGNocmlzdGlhbi5icmF1bmVyQHVidW50dS5jb20+IHdyb3RlOgo+
ID4gPiBPbiBUaHUsIEFwciAxNiwgMjAyMCBhdCAxMjoyNTowOFBNICswMjAwLCBHcmVnIEtyb2Fo
LUhhcnRtYW4gd3JvdGU6Cj4gPiA+ID4gT24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgMDk6NDE6MzFQ
TSAtMDcwMCwgSm9obiBTdHVsdHogd3JvdGU6Cj4gPiA+ID4gPiBCdXQgSSBkbyB0aGluayB3ZSBj
YW4gbWFyayBpdCBhcyBkZXByZWNhdGVkIGFuZCBsZXQgZm9sa3Mga25vdyB0aGF0Cj4gPiA+ID4g
PiBhcm91bmQgdGhlIGVuZCBvZiB0aGUgeWVhciBpdCB3aWxsIGJlIGRlbGV0ZWQuCj4gPiA+ID4K
PiA+ID4gPiBObyBvbmUgZXZlciBub3RpY2VzICJkZXByZWNpYXRlZCIgdGhpbmdzLCB0aGV5IG9u
bHkgbm90aWNlIGlmIHRoZSBjb2RlCj4gPiA+ID4gaXMgbm8gbG9uZ2VyIHRoZXJlIDopCj4gPiA+
ID4KPiA+ID4gPiBTbyBJJ20gYWxsIGZvciBqdXN0IGRlbGV0aW5nIGl0IGFuZCBzZWVpbmcgd2hv
IGV2ZW4gbm90aWNlcy4uLgo+ID4gPgo+ID4gPiBBZ3JlZWQuCj4gPiAKPiA+IEkgbWVhbiwgSSBn
ZXQgdGhlcmUncyBub3QgbXVjaCBsb3ZlIGZvciBJT04gaW4gc3RhZ2luZywgYW5kIEkgdG9vIGFt
Cj4gPiBlYWdlciB0byBzZWUgaXQgZ28sIGJ1dCBJIGFsc28gZmVlbCBsaWtlIGluIHRoZSBkaXNj
dXNzaW9ucyBhcm91bmQKPiA+IHN1Ym1pdHRpbmcgdGhlIGRtYWJ1ZiBoZWFwcyBhdCB0YWxrcywg
ZXRjLCB0aGF0IHRoZXJlIHdhcyBjbGVhciB2YWx1ZQo+ID4gaW4gcmVtb3ZpbmcgSU9OIGFmdGVy
IGEgc2hvcnQgdGltZSBzbyB0aGF0IGZvbGtzIGNvdWxkIHRyYW5zaXRpb24KPiA+IGJlaW5nIGFi
bGUgdG8gdGVzdCBib3RoIGltcGxlbWVudGF0aW9ucyBhZ2FpbnN0IHRoZSBzYW1lIGtlcm5lbCBz
bwo+ID4gcGVyZm9ybWFuY2UgcmVncmVzc2lvbnMsIGV0YyBjb3VsZCBiZSB3b3JrZWQgb3V0Lgo+
ID4gCj4gPiBJIGFtIGFjdGl2ZWx5IGdldHRpbmcgbWFueSByZXF1ZXN0cyBmb3IgaGVscCBmb3Ig
dmVuZG9ycyB3aG8gYXJlCj4gPiBsb29raW5nIGF0IGRtYWJ1ZiBoZWFwcyBhbmQgYXJlIHN0YXJ0
aW5nIHRoZSB0cmFuc2l0aW9uIHByb2Nlc3MsIGFuZAo+ID4gSSdtIHRyeWluZyBteSBiZXN0IHRv
IG1vdGl2YXRlIHRoZW0gdG8gZGlyZWN0bHkgd29yayB3aXRoaW4gdGhlCj4gPiBjb21tdW5pdHkg
c28gdGhlaXIgbmVlZGVkIGhlYXAgZnVuY3Rpb25hbGl0eSBjYW4gZ28gdXBzdHJlYW0uIEJ1dCBp
dCdzCj4gPiBnb2luZyB0byBiZSBhIHByb2Nlc3MsIGFuZCB0aGVpciBmaXJzdCBhdHRlbXB0cyBh
cmVuJ3QgZ29pbmcgdG8KPiA+IG1hZ2ljYWxseSBsYW5kIHVwc3RyZWFtLiAgSSB0aGluayBiZWlu
ZyBhYmxlIHRvIHJlYWxseSBjb21wYXJlIHRoZWlyCj4gPiBpbXBsZW1lbnRhdGlvbnMgYXMgdGhl
eSBpdGVyYXRlIGFuZCBwdXNoIHRoaW5ncyB1cHN0cmVhbSB3aWxsIGhlbHAgaW4KPiA+IG9yZGVy
IHRvIGJlIGFibGUgdG8gaGF2ZSB1cHN0cmVhbSBzb2x1dGlvbnMgdGhhdCBhcmUgYWxzbyBwcm9w
ZXJseQo+ID4gZnVuY3Rpb25hbCBmb3IgcHJvZHVjdGlvbiB1c2FnZS4KPiAKPiBCdXQgd2UgYXJl
IG5vdCBhY2NlcHRpbmcgYW55IG5ldyBpb24gYWxsb2NhdG9ycyBvciBjaGFuZ2VzIGF0IHRoZQo+
IG1vbWVudCwgc28gSSBkb24ndCBzZWUgaG93IHRoZSBpb24gY29kZSBpbiB0aGUga2VybmVsIGlz
IGhlbHBpbmcvaHVydGluZwo+IGFueXRoaW5nIGhlcmUuCj4gCj4gVGhlcmUgaGFzIGJlZW4gYSBi
dW5jaCBvZiBjaGFuZ2VzIHRvIHRoZSBpb24gY29kZSByZWNlbnRseSwgaW4gdGhlCj4gQW5kcm9p
ZCBrZXJuZWwgdHJlZXMsIGluIG9yZGVyIHRvIGdldCBhIGxvdCBvZiB0aGUgZGlmZmVyZW50Cj4g
bWFudWZhY3R1cmVyICJmb3JrcyIgb2YgaW9uIGJhY2sgdG9nZXRoZXIgaW50byBvbmUgcGxhY2Uu
ICBCdXQgYWdhaW4sCj4gdGhvc2UgcGF0Y2hlcyBhcmUgbm90IGdvaW5nIHRvIGJlIHNlbnQgdXBz
dHJlYW0gZm9yIG1lcmdpbmcgc28gaG93IGlzCj4gaW9uIGFmZmVjdGluZyB0aGUgZG1hYnVmIGNv
ZGUgYXQgYWxsIGhlcmU/Cj4gCj4gPiBUaGUgZG1hYnVmIGhlYXBzIGhhdmUgYmVlbiBpbiBhbiBv
ZmZpY2lhbCBrZXJuZWwgbm93IGZvciBhbGwgb2YgdGhyZWUKPiA+IHdlZWtzLiBTbyB5ZWEsIHdl
IGNhbiAiZGVsZXRlIFtJT05dIGFuZCBzZWUgd2hvIGV2ZW4gbm90aWNlcyIsIGJ1dCBJCj4gPiB3
b3JyeSB0aGF0IG1heSBzZWVtIGEgYml0IGxpa2UgY29udGVtcHQgZm9yIHRoZSBmb2xrcyBkb2lu
ZyB0aGUgd29yawo+ID4gb24gdHJhbnNpdGlvbmluZyBvdmVyLCB3aGljaCBkb2Vzbid0IGhlbHAg
Z2V0dGluZyB0aGVtIHRvIHBhcnRpY2lwYXRlCj4gPiB3aXRoaW4gdGhlIGNvbW11bml0eS4KPiAK
PiBCdXQgdGhleSBhcmVuJ3QgcGFydGljaXBhdGluZyBpbiB0aGUgY29tbXVuaXR5IHRvZGF5IGFz
IG5vIG9uZSBpcwo+IHRvdWNoaW5nIHRoZSBpb24gY29kZS4gIFNvIEkgZmFpbCB0byBzZWUgaG93
IGtlZXBpbmcgYSBkZWFkLWVuZC12ZXJzaW9uCj4gb2YgaW9uIGluIHRoZSBrZXJuZWwgdHJlZSBy
ZWFsbHkgYWZmZWN0cyBhbnlvbmUgdGhlc2UgZGF5cy4KClNvLCBhbnkgdGhvdWdodHMgaGVyZT8g
IFdoYXQncyB0aGUgdGltZWxpbmUgZm9yIGlvbiBiZWluZyBhYmxlIHRvIGJlCnJlbW92ZWQgdGhh
dCB5b3UgYXJlIGNvbWZvcnRhYmxlIHdpdGg/Cgp0aGFua3MsCgpncmVnIGstaApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
