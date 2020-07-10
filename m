Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B668221B441
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2020 13:47:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65A5160FF9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2020 11:47:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 569006183E; Fri, 10 Jul 2020 11:47:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE5176171A;
	Fri, 10 Jul 2020 11:47:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D032560900
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2020 11:47:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B72136171A; Fri, 10 Jul 2020 11:47:26 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id D6DB460900
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2020 11:47:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6754220748;
 Fri, 10 Jul 2020 11:47:24 +0000 (UTC)
Date: Fri, 10 Jul 2020 13:47:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20200710114730.GA1349359@kroah.com>
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
 <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
 <20200416102508.GA820251@kroah.com>
 <20200420082207.ui7iyg7dsnred2vv@wittgenstein>
 <CALAqxLW-txNEqW=P_9VTxvOVu_fgpjzHHDbR5BhtpYwhg1SXgw@mail.gmail.com>
 <20200421080544.GA611314@kroah.com>
 <20200703070403.GB2221524@kroah.com>
 <CALAqxLUHT=CGNxffz+3G-bUNc2FM_TawDrymFN+S=ZiPcM9pkg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLUHT=CGNxffz+3G-bUNc2FM_TawDrymFN+S=ZiPcM9pkg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
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

T24gVHVlLCBKdWwgMDcsIDIwMjAgYXQgMDg6NDM6MzBQTSAtMDcwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gRnJpLCBKdWwgMywgMjAyMCBhdCAxMjowMyBBTSBHcmVnIEtyb2FoLUhhcnRtYW4K
PiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+ID4gT24gVHVlLCBBcHIgMjEs
IDIwMjAgYXQgMTA6MDU6NDRBTSArMDIwMCwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+ID4g
PiBPbiBNb24sIEFwciAyMCwgMjAyMCBhdCAwMTowMzozOVBNIC0wNzAwLCBKb2huIFN0dWx0eiB3
cm90ZToKPiA+ID4gPiBUaGUgZG1hYnVmIGhlYXBzIGhhdmUgYmVlbiBpbiBhbiBvZmZpY2lhbCBr
ZXJuZWwgbm93IGZvciBhbGwgb2YgdGhyZWUKPiA+ID4gPiB3ZWVrcy4gU28geWVhLCB3ZSBjYW4g
ImRlbGV0ZSBbSU9OXSBhbmQgc2VlIHdobyBldmVuIG5vdGljZXMiLCBidXQgSQo+ID4gPiA+IHdv
cnJ5IHRoYXQgbWF5IHNlZW0gYSBiaXQgbGlrZSBjb250ZW1wdCBmb3IgdGhlIGZvbGtzIGRvaW5n
IHRoZSB3b3JrCj4gPiA+ID4gb24gdHJhbnNpdGlvbmluZyBvdmVyLCB3aGljaCBkb2Vzbid0IGhl
bHAgZ2V0dGluZyB0aGVtIHRvIHBhcnRpY2lwYXRlCj4gPiA+ID4gd2l0aGluIHRoZSBjb21tdW5p
dHkuCj4gPiA+Cj4gPiA+IEJ1dCB0aGV5IGFyZW4ndCBwYXJ0aWNpcGF0aW5nIGluIHRoZSBjb21t
dW5pdHkgdG9kYXkgYXMgbm8gb25lIGlzCj4gPiA+IHRvdWNoaW5nIHRoZSBpb24gY29kZS4gIFNv
IEkgZmFpbCB0byBzZWUgaG93IGtlZXBpbmcgYSBkZWFkLWVuZC12ZXJzaW9uCj4gPiA+IG9mIGlv
biBpbiB0aGUga2VybmVsIHRyZWUgcmVhbGx5IGFmZmVjdHMgYW55b25lIHRoZXNlIGRheXMuCj4g
Pgo+ID4gU28sIGFueSB0aG91Z2h0cyBoZXJlPyAgV2hhdCdzIHRoZSB0aW1lbGluZSBmb3IgaW9u
IGJlaW5nIGFibGUgdG8gYmUKPiA+IHJlbW92ZWQgdGhhdCB5b3UgYXJlIGNvbWZvcnRhYmxlIHdp
dGg/Cj4gCj4gU29ycnkgZm9yIHRoZSBzbG93IHJlcGx5LiAgU28gbXkgZWFybGllciBwbGFuIHdh
cyB0byBkcm9wIGl0IGFmdGVyIHRoZSBuZXh0IExUUz8KCk9rLCBmYWlyIGVub3VnaCwgd2UgY2Fu
IHdhaXQgdW50aWwgSmFudWFyeS4KCnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
