Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BD11F254BEB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Aug 2020 19:19:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDCF561957
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Aug 2020 17:18:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C8B89619B7; Thu, 27 Aug 2020 17:18:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 416B1619AC;
	Thu, 27 Aug 2020 17:17:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9A6FC610F9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Aug 2020 17:17:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8D3B7619AC; Thu, 27 Aug 2020 17:17:40 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id AAB51610F9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Aug 2020 17:17:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29A452087C;
 Thu, 27 Aug 2020 17:17:32 +0000 (UTC)
Date: Thu, 27 Aug 2020 19:17:45 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Amit Pundir <amit.pundir@linaro.org>
Message-ID: <20200827171745.GA701089@kroah.com>
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
 <20200827160506.GC684514@kroah.com>
 <CAMi1Hd1Ch1RWvOTnON3tsrucaKThTuGQnwNFo94GqUjufVmnOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMi1Hd1Ch1RWvOTnON3tsrucaKThTuGQnwNFo94GqUjufVmnOg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 linaro-mm-sig@lists.linaro.org, Shuah Khan <shuah@kernel.org>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Suren Baghdasaryan <surenb@google.com>, Christoph Hellwig <hch@infradead.org>,
 Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 John Stultz <john.stultz@linaro.org>, Joel Fernandes <joel@joelfernandes.org>,
 Laura Abbott <laura@labbott.name>,
 Android Kernel Team <kernel-team@android.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Christian Brauner <christian@brauner.io>
Subject: Re: [Linaro-mm-sig] [PATCH] staging: ion: remove from the tree
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

T24gVGh1LCBBdWcgMjcsIDIwMjAgYXQgMTA6MzE6NDFQTSArMDUzMCwgQW1pdCBQdW5kaXIgd3Jv
dGU6Cj4gT24gVGh1LCAyNyBBdWcgMjAyMCBhdCAyMTozNCwgR3JlZyBLcm9haC1IYXJ0bWFuCj4g
PGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUaHUsIEF1ZyAy
NywgMjAyMCBhdCAwOTozMToyN0FNIC0wNDAwLCBMYXVyYSBBYmJvdHQgd3JvdGU6Cj4gPiA+IE9u
IDgvMjcvMjAgODozNiBBTSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+ID4gPiA+IFRoZSBJ
T04gYW5kcm9pZCBjb2RlIGhhcyBsb25nIGJlZW4gbWFya2VkIHRvIGJlIHJlbW92ZWQsIG5vdyB0
aGF0IHdlCj4gPiA+ID4gZG1hLWJ1ZiBzdXBwb3J0IG1lcmdlZCBpbnRvIHRoZSByZWFsIHBhcnQg
b2YgdGhlIGtlcm5lbC4KPiA+ID4gPgo+ID4gPiA+IEl0IHdhcyB0aG91Z2h0IHRoYXQgd2UgY291
bGQgd2FpdCB0byByZW1vdmUgdGhlIGlvbiBrZXJuZWwgYXQgYSBsYXRlcgo+ID4gPiA+IHRpbWUs
IGJ1dCBhcyB0aGUgb3V0LW9mLXRyZWUgQW5kcm9pZCBmb3JrIG9mIHRoZSBpb24gY29kZSBoYXMg
ZGl2ZXJnZWQKPiA+ID4gPiBxdWl0ZSBhIGJpdCwgYW5kIGFueSBBbmRyb2lkIGRldmljZSB1c2lu
ZyB0aGUgaW9uIGludGVyZmFjZSB1c2VzIHRoYXQKPiA+ID4gPiBmb3JrZWQgdmVyc2lvbiBhbmQg
bm90IHRoaXMgaW4tdHJlZSB2ZXJzaW9uLCB0aGUgaW4tdHJlZSBjb3B5IG9mIHRoZQo+ID4gPiA+
IGNvZGUgaXMgYWJhbmRvbmRlZCBhbmQgbm90IHVzZWQgYnkgYW55b25lLgo+ID4gPiA+Cj4gPiA+
ID4gQ29tYmluZSB0aGlzIGFiYW5kb25lZCBjb2RlYmFzZSB3aXRoIHRoZSBuZWVkIHRvIG1ha2Ug
Y2hhbmdlcyB0byBpdCBpbgo+ID4gPiA+IG9yZGVyIHRvIGtlZXAgdGhlIGtlcm5lbCBidWlsZGlu
ZyBwcm9wZXJseSwgd2hpY2ggdGhlbiBjYXVzZXMgbWVyZ2UKPiA+ID4gPiBpc3N1ZXMgd2hlbiBt
ZXJnaW5nIHRob3NlIGNoYW5nZXMgaW50byB0aGUgb3V0LW9mLXRyZWUgQW5kcm9pZCBjb2RlLCBh
bmQKPiA+ID4gPiB5b3UgZW5kIHVwIHdpdGggdHdvIGRpZmZlcmVudCBncm91cHMgb2YgcGVvcGxl
ICh0aGUgaW4ta2VybmVsLXRyZWUKPiA+ID4gPiBkZXZlbG9wZXJzLCBhbmQgdGhlIEFuZHJvaWQg
a2VybmVsIGRldmVsb3BlcnMpIHdobyBhcmUgYm90aCBhbm5veWVkIGF0Cj4gPiA+ID4gdGhlIGN1
cnJlbnQgc2l0dWF0aW9uLiAgQmVjYXVzZSBvZiB0aGlzIHByb2JsZW0sIGp1c3QgZHJvcCB0aGUg
aW4ta2VybmVsCj4gPiA+ID4gY29weSBvZiB0aGUgaW9uIGNvZGUgbm93LCBhcyBpdCdzIG5vdCB1
c2VkLCBhbmQgaXMgb25seSBjYXVzaW5nIHByb2JsZW1zCj4gPiA+ID4gZm9yIGV2ZXJ5b25lIGlu
dm9sdmVkLgo+ID4gPiA+Cj4gPiA+ID4gQ2M6ICJBcnZlIEhqw7hubmV2w6VnIiA8YXJ2ZUBhbmRy
b2lkLmNvbT4KPiA+ID4gPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Cj4gPiA+ID4gQ2M6IENocmlzdGlhbiBCcmF1bmVyIDxjaHJpc3RpYW5AYnJhdW5l
ci5pbz4KPiA+ID4gPiBDYzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBpbmZyYWRlYWQub3JnPgo+
ID4gPiA+IENjOiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4KPiA+ID4gPiBD
YzogSm9lbCBGZXJuYW5kZXMgPGpvZWxAam9lbGZlcm5hbmRlcy5vcmc+Cj4gPiA+ID4gQ2M6IEpv
aG4gU3R1bHR6IDxqb2huLnN0dWx0ekBsaW5hcm8ub3JnPgo+ID4gPiA+IENjOiBMYXVyYSBBYmJv
dHQgPGxhdXJhQGxhYmJvdHQubmFtZT4KPiA+ID4gPiBDYzogTWFydGlqbiBDb2VuZW4gPG1hY29A
YW5kcm9pZC5jb20+Cj4gPiA+ID4gQ2M6IFNodWFoIEtoYW4gPHNodWFoQGtlcm5lbC5vcmc+Cj4g
PiA+ID4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gPiA+ID4g
Q2M6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+Cj4gPiA+ID4gQ2M6IFRv
ZGQgS2pvcyA8dGtqb3NAYW5kcm9pZC5jb20+Cj4gPiA+ID4gQ2M6IGRldmVsQGRyaXZlcmRldi5v
c3Vvc2wub3JnCj4gPiA+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+
ID4gPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiA+
ID4KPiA+ID4gV2UgZGlzY3Vzc2VkIHRoaXMgYXQgdGhlIEFuZHJvaWQgTUMgb24gTW9uZGF5IGFu
ZCB0aGUgcGxhbiB3YXMgdG8KPiA+ID4gcmVtb3ZlIGl0IGFmdGVyIHRoZSBuZXh0IExUUyByZWxl
YXNlLgo+ID4KPiA+IEkga25vdyBpdCB3YXMgZGlzY3Vzc2VkLCBteSBwb2ludCBpcyB0aGF0IGl0
IGlzIGFjdHVhbGx5IGNhdXNpbmcKPiA+IHByb2JsZW1zIG5vdyAod2l0aCBkZXZlbG9wZXJzIHdo
byB3YW50IHRvIGNoYW5nZSB0aGUgaW50ZXJuYWwga2VybmVsIGFwaQo+ID4gaGl0dGluZyBpc3N1
ZXMsIGFuZCBuZXdiaWVzIHRyeWluZyB0byBjbGVhbiB1cCBjb2RlIGluIHdheXMgdGhhdCBpc24n
dAo+ID4gZXhhY3RseSBvcHRpbWFsIHdhc3RpbmcgbWFpbnRhaW5lciBjeWNsZXMpLCBhbmQgdGhh
dCBhbnlvbmUgd2hvIHVzZXMKPiA+IHRoaXMgY29kZSwgaXMgbm90IGFjdHVhbGx5IHVzaW5nIHRo
aXMgdmVyc2lvbiBvZiB0aGUgY29kZS4gIEV2ZXJ5b25lIHdobwo+ID4gcmVsaWVzIG9uIGlvbiBy
aWdodCBub3csIGlzIHVzaW5nIHRoZSB2ZXJzaW9uIHRoYXQgaXMgaW4gdGhlIEFuZHJvaWQKPiA+
IGNvbW1vbiBrZXJuZWwgdHJlZSwgd2hpY2ggaGFzIGRpdmVyZ2VkIGZyb20gdGhpcyBpbi1rZXJu
ZWwgd2F5IHF1aXRlIGEKPiA+IGJpdCBub3cgZm9yIHRoZSByZWFzb24gdGhhdCB3ZSBkaWRuJ3Qg
d2FudCB0byB0YWtlIGFueSBvZiB0aG9zZSBuZXcKPiA+IGZlYXR1cmVzIGluIHRoZSBpbi1rZXJu
ZWwgdmVyc2lvbi4KPiA+Cj4gPiBTbyB0aGlzIGlzIGEgcHJvYmxlbSB0aGF0IHdlIGhhdmUgY2F1
c2VkIGJ5IGp1c3Qgd2FudGluZyB0byB3YWl0LCBubyBvbmUKPiA+IGlzIHVzaW5nIHRoaXMgY29k
ZSwgY29tYmluZWQgd2l0aCBpdCBjYXVzaW5nIHByb2JsZW1zIGZvciB0aGUgdXBzdHJlYW0KPiA+
IGRldmVsb3BlcnMuCj4gPgo+ID4gVGhlcmUgaXMgbm90aGluZyAibWFnaWMiIGFib3V0IHRoZSBs
YXN0IGtlcm5lbCBvZiB0aGUgeWVhciB0aGF0IHJlcXVpcmVzCj4gPiB0aGlzIGNvZGUgdG8gc2l0
IGhlcmUgdW50aWwgdGhlbi4gIEF0IHRoYXQgcG9pbnQgaW4gdGltZSwgYWxsIHVzZXJzCj4gPiB3
aWxsLCBhZ2FpbiwgYmUgdXNpbmcgdGhlIGZvcmtlZCBBbmRyb2lkIGtlcm5lbCB2ZXJzaW9uLCBh
bmQgaWYgd2UKPiA+IGRlbGV0ZSB0aGlzIG5vdyBoZXJlLCB0aGF0IGZvcmsgY2FuIHJlbWFpbiBq
dXN0IGZpbmUsIHdpdGggdGhlIGFkZGVkCj4gPiBiZW5pZml0IG9mIGl0IHJlZHVjaW5nIGRldmVs
b3BlciB3b3JrbG9hZHMgaGVyZSBpbi1rZXJuZWwuCj4gPgo+ID4gU28gd2h5IHdhaXQ/Cj4gCj4g
SGksCj4gCj4gSSBkb24ndCBrbm93IHdoYXQgaXMgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvIGhlcmUu
IEkganVzdCB3YW50IHRvCj4gaGlnaGxpZ2h0IHRoYXQgQU9TUCdzIGF1ZGlvIChjb2RlYzIpIEhB
TCBkZXBlbmRzIG9uIHRoZSBJT04gc3lzdGVtCj4gaGVhcCBhbmQgaXQgd2lsbCBicmVhayBBT1NQ
IGZvciBwZW9wbGUgd2hvIGJvb3QgbWFpbmxpbmUgb24gdGhlaXIKPiBkZXZpY2VzLCBldmVuIGZv
ciBqdXN0IHRlc3RpbmcgcHVycG9zZSBsaWtlIHdlIGRvIGluIExpbmFyby4gUmlnaHQgbm93Cj4g
d2UgbmVlZCBvbmx5IDEgKEFuZHJvaWQgc3BlY2lmaWMgb3V0LW9mLXRyZWUpIHBhdGNoIHRvIGJv
b3QgQU9TUCB3aXRoCj4gbWFpbmxpbmUgYW5kIFN1bWl0IGlzIGFscmVhZHkgdHJ5aW5nIHRvIHVw
c3RyZWFtIHRoYXQgdm1hIG5hbWluZwo+IHBhdGNoLiBSZW1vdmFsIG9mIGluLWtlcm5lbCBJT04s
IHdpbGwganVzdCBhZGQgbW9yZSB0byB0aGF0IGRlbHRhLgoKQXMgQU9TUCB3aWxsIGNvbnRpbnVl
IHRvIHJlbHkgb24gSU9OIGFmdGVyIERlY2VtYmVyIG9mIHRoaXMgeWVhciwgYWxsCnlvdSBhcmUg
ZG9pbmcgaXMgcG9zdHBvbmluZyB0aGUgaW5ldml0YWJsZSBhIGZldyBtb3JlIG1vbnRocy4KClB1
c2ggYmFjayBvbiB0aGUgQW5kcm9pZCB0ZWFtIHRvIGZpeCB1cCB0aGUgY29kZSB0byBub3QgdXNl
IElPTiwgdGhleQprbm93IHRoaXMgbmVlZHMgdG8gaGFwcGVuLgoKdGhhbmtzLAoKZ3JlZyBrLWgK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
