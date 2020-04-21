Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0771B2110
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Apr 2020 10:06:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F65E60EAD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Apr 2020 08:06:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 927EB610F9; Tue, 21 Apr 2020 08:06:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9DE6F60EFE;
	Tue, 21 Apr 2020 08:05:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CA51660CFC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Apr 2020 08:05:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BD8BF60EFE; Tue, 21 Apr 2020 08:05:48 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 8ADBD60CFC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Apr 2020 08:05:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 557F32071C;
 Tue, 21 Apr 2020 08:05:46 +0000 (UTC)
Date: Tue, 21 Apr 2020 10:05:44 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20200421080544.GA611314@kroah.com>
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
 <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
 <20200416102508.GA820251@kroah.com>
 <20200420082207.ui7iyg7dsnred2vv@wittgenstein>
 <CALAqxLW-txNEqW=P_9VTxvOVu_fgpjzHHDbR5BhtpYwhg1SXgw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLW-txNEqW=P_9VTxvOVu_fgpjzHHDbR5BhtpYwhg1SXgw@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>,
 Christian Brauner <christian.brauner@ubuntu.com>, nd <nd@arm.com>,
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

T24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMDE6MDM6MzlQTSAtMDcwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMToyMiBBTSBDaHJpc3RpYW4gQnJhdW5lcgo+
IDxjaHJpc3RpYW4uYnJhdW5lckB1YnVudHUuY29tPiB3cm90ZToKPiA+IE9uIFRodSwgQXByIDE2
LCAyMDIwIGF0IDEyOjI1OjA4UE0gKzAyMDAsIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90ZToKPiA+
ID4gT24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgMDk6NDE6MzFQTSAtMDcwMCwgSm9obiBTdHVsdHog
d3JvdGU6Cj4gPiA+ID4gQnV0IEkgZG8gdGhpbmsgd2UgY2FuIG1hcmsgaXQgYXMgZGVwcmVjYXRl
ZCBhbmQgbGV0IGZvbGtzIGtub3cgdGhhdAo+ID4gPiA+IGFyb3VuZCB0aGUgZW5kIG9mIHRoZSB5
ZWFyIGl0IHdpbGwgYmUgZGVsZXRlZC4KPiA+ID4KPiA+ID4gTm8gb25lIGV2ZXIgbm90aWNlcyAi
ZGVwcmVjaWF0ZWQiIHRoaW5ncywgdGhleSBvbmx5IG5vdGljZSBpZiB0aGUgY29kZQo+ID4gPiBp
cyBubyBsb25nZXIgdGhlcmUgOikKPiA+ID4KPiA+ID4gU28gSSdtIGFsbCBmb3IganVzdCBkZWxl
dGluZyBpdCBhbmQgc2VlaW5nIHdobyBldmVuIG5vdGljZXMuLi4KPiA+Cj4gPiBBZ3JlZWQuCj4g
Cj4gSSBtZWFuLCBJIGdldCB0aGVyZSdzIG5vdCBtdWNoIGxvdmUgZm9yIElPTiBpbiBzdGFnaW5n
LCBhbmQgSSB0b28gYW0KPiBlYWdlciB0byBzZWUgaXQgZ28sIGJ1dCBJIGFsc28gZmVlbCBsaWtl
IGluIHRoZSBkaXNjdXNzaW9ucyBhcm91bmQKPiBzdWJtaXR0aW5nIHRoZSBkbWFidWYgaGVhcHMg
YXQgdGFsa3MsIGV0YywgdGhhdCB0aGVyZSB3YXMgY2xlYXIgdmFsdWUKPiBpbiByZW1vdmluZyBJ
T04gYWZ0ZXIgYSBzaG9ydCB0aW1lIHNvIHRoYXQgZm9sa3MgY291bGQgdHJhbnNpdGlvbgo+IGJl
aW5nIGFibGUgdG8gdGVzdCBib3RoIGltcGxlbWVudGF0aW9ucyBhZ2FpbnN0IHRoZSBzYW1lIGtl
cm5lbCBzbwo+IHBlcmZvcm1hbmNlIHJlZ3Jlc3Npb25zLCBldGMgY291bGQgYmUgd29ya2VkIG91
dC4KPiAKPiBJIGFtIGFjdGl2ZWx5IGdldHRpbmcgbWFueSByZXF1ZXN0cyBmb3IgaGVscCBmb3Ig
dmVuZG9ycyB3aG8gYXJlCj4gbG9va2luZyBhdCBkbWFidWYgaGVhcHMgYW5kIGFyZSBzdGFydGlu
ZyB0aGUgdHJhbnNpdGlvbiBwcm9jZXNzLCBhbmQKPiBJJ20gdHJ5aW5nIG15IGJlc3QgdG8gbW90
aXZhdGUgdGhlbSB0byBkaXJlY3RseSB3b3JrIHdpdGhpbiB0aGUKPiBjb21tdW5pdHkgc28gdGhl
aXIgbmVlZGVkIGhlYXAgZnVuY3Rpb25hbGl0eSBjYW4gZ28gdXBzdHJlYW0uIEJ1dCBpdCdzCj4g
Z29pbmcgdG8gYmUgYSBwcm9jZXNzLCBhbmQgdGhlaXIgZmlyc3QgYXR0ZW1wdHMgYXJlbid0IGdv
aW5nIHRvCj4gbWFnaWNhbGx5IGxhbmQgdXBzdHJlYW0uICBJIHRoaW5rIGJlaW5nIGFibGUgdG8g
cmVhbGx5IGNvbXBhcmUgdGhlaXIKPiBpbXBsZW1lbnRhdGlvbnMgYXMgdGhleSBpdGVyYXRlIGFu
ZCBwdXNoIHRoaW5ncyB1cHN0cmVhbSB3aWxsIGhlbHAgaW4KPiBvcmRlciB0byBiZSBhYmxlIHRv
IGhhdmUgdXBzdHJlYW0gc29sdXRpb25zIHRoYXQgYXJlIGFsc28gcHJvcGVybHkKPiBmdW5jdGlv
bmFsIGZvciBwcm9kdWN0aW9uIHVzYWdlLgoKQnV0IHdlIGFyZSBub3QgYWNjZXB0aW5nIGFueSBu
ZXcgaW9uIGFsbG9jYXRvcnMgb3IgY2hhbmdlcyBhdCB0aGUKbW9tZW50LCBzbyBJIGRvbid0IHNl
ZSBob3cgdGhlIGlvbiBjb2RlIGluIHRoZSBrZXJuZWwgaXMgaGVscGluZy9odXJ0aW5nCmFueXRo
aW5nIGhlcmUuCgpUaGVyZSBoYXMgYmVlbiBhIGJ1bmNoIG9mIGNoYW5nZXMgdG8gdGhlIGlvbiBj
b2RlIHJlY2VudGx5LCBpbiB0aGUKQW5kcm9pZCBrZXJuZWwgdHJlZXMsIGluIG9yZGVyIHRvIGdl
dCBhIGxvdCBvZiB0aGUgZGlmZmVyZW50Cm1hbnVmYWN0dXJlciAiZm9ya3MiIG9mIGlvbiBiYWNr
IHRvZ2V0aGVyIGludG8gb25lIHBsYWNlLiAgQnV0IGFnYWluLAp0aG9zZSBwYXRjaGVzIGFyZSBu
b3QgZ29pbmcgdG8gYmUgc2VudCB1cHN0cmVhbSBmb3IgbWVyZ2luZyBzbyBob3cgaXMKaW9uIGFm
ZmVjdGluZyB0aGUgZG1hYnVmIGNvZGUgYXQgYWxsIGhlcmU/Cgo+IFRoZSBkbWFidWYgaGVhcHMg
aGF2ZSBiZWVuIGluIGFuIG9mZmljaWFsIGtlcm5lbCBub3cgZm9yIGFsbCBvZiB0aHJlZQo+IHdl
ZWtzLiBTbyB5ZWEsIHdlIGNhbiAiZGVsZXRlIFtJT05dIGFuZCBzZWUgd2hvIGV2ZW4gbm90aWNl
cyIsIGJ1dCBJCj4gd29ycnkgdGhhdCBtYXkgc2VlbSBhIGJpdCBsaWtlIGNvbnRlbXB0IGZvciB0
aGUgZm9sa3MgZG9pbmcgdGhlIHdvcmsKPiBvbiB0cmFuc2l0aW9uaW5nIG92ZXIsIHdoaWNoIGRv
ZXNuJ3QgaGVscCBnZXR0aW5nIHRoZW0gdG8gcGFydGljaXBhdGUKPiB3aXRoaW4gdGhlIGNvbW11
bml0eS4KCkJ1dCB0aGV5IGFyZW4ndCBwYXJ0aWNpcGF0aW5nIGluIHRoZSBjb21tdW5pdHkgdG9k
YXkgYXMgbm8gb25lIGlzCnRvdWNoaW5nIHRoZSBpb24gY29kZS4gIFNvIEkgZmFpbCB0byBzZWUg
aG93IGtlZXBpbmcgYSBkZWFkLWVuZC12ZXJzaW9uCm9mIGlvbiBpbiB0aGUga2VybmVsIHRyZWUg
cmVhbGx5IGFmZmVjdHMgYW55b25lIHRoZXNlIGRheXMuCgp0aGFua3MsCgpncmVnIGstaApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
