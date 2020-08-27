Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0D9254A30
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Aug 2020 18:06:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E650A6174E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Aug 2020 16:06:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D7A33619B1; Thu, 27 Aug 2020 16:06:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B1E761957;
	Thu, 27 Aug 2020 16:05:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A059C610F9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Aug 2020 16:04:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9261461957; Thu, 27 Aug 2020 16:04:56 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 23660610F9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Aug 2020 16:04:54 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABD8E2087C;
 Thu, 27 Aug 2020 16:04:52 +0000 (UTC)
Date: Thu, 27 Aug 2020 18:05:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Laura Abbott <laura@labbott.name>
Message-ID: <20200827160506.GC684514@kroah.com>
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 kernel-team@android.com, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, john.stultz@linaro.org,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 Shuah Khan <shuah@kernel.org>, Christian Brauner <christian@brauner.io>
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

T24gVGh1LCBBdWcgMjcsIDIwMjAgYXQgMDk6MzE6MjdBTSAtMDQwMCwgTGF1cmEgQWJib3R0IHdy
b3RlOgo+IE9uIDgvMjcvMjAgODozNiBBTSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+ID4g
VGhlIElPTiBhbmRyb2lkIGNvZGUgaGFzIGxvbmcgYmVlbiBtYXJrZWQgdG8gYmUgcmVtb3ZlZCwg
bm93IHRoYXQgd2UKPiA+IGRtYS1idWYgc3VwcG9ydCBtZXJnZWQgaW50byB0aGUgcmVhbCBwYXJ0
IG9mIHRoZSBrZXJuZWwuCj4gPiAKPiA+IEl0IHdhcyB0aG91Z2h0IHRoYXQgd2UgY291bGQgd2Fp
dCB0byByZW1vdmUgdGhlIGlvbiBrZXJuZWwgYXQgYSBsYXRlcgo+ID4gdGltZSwgYnV0IGFzIHRo
ZSBvdXQtb2YtdHJlZSBBbmRyb2lkIGZvcmsgb2YgdGhlIGlvbiBjb2RlIGhhcyBkaXZlcmdlZAo+
ID4gcXVpdGUgYSBiaXQsIGFuZCBhbnkgQW5kcm9pZCBkZXZpY2UgdXNpbmcgdGhlIGlvbiBpbnRl
cmZhY2UgdXNlcyB0aGF0Cj4gPiBmb3JrZWQgdmVyc2lvbiBhbmQgbm90IHRoaXMgaW4tdHJlZSB2
ZXJzaW9uLCB0aGUgaW4tdHJlZSBjb3B5IG9mIHRoZQo+ID4gY29kZSBpcyBhYmFuZG9uZGVkIGFu
ZCBub3QgdXNlZCBieSBhbnlvbmUuCj4gPiAKPiA+IENvbWJpbmUgdGhpcyBhYmFuZG9uZWQgY29k
ZWJhc2Ugd2l0aCB0aGUgbmVlZCB0byBtYWtlIGNoYW5nZXMgdG8gaXQgaW4KPiA+IG9yZGVyIHRv
IGtlZXAgdGhlIGtlcm5lbCBidWlsZGluZyBwcm9wZXJseSwgd2hpY2ggdGhlbiBjYXVzZXMgbWVy
Z2UKPiA+IGlzc3VlcyB3aGVuIG1lcmdpbmcgdGhvc2UgY2hhbmdlcyBpbnRvIHRoZSBvdXQtb2Yt
dHJlZSBBbmRyb2lkIGNvZGUsIGFuZAo+ID4geW91IGVuZCB1cCB3aXRoIHR3byBkaWZmZXJlbnQg
Z3JvdXBzIG9mIHBlb3BsZSAodGhlIGluLWtlcm5lbC10cmVlCj4gPiBkZXZlbG9wZXJzLCBhbmQg
dGhlIEFuZHJvaWQga2VybmVsIGRldmVsb3BlcnMpIHdobyBhcmUgYm90aCBhbm5veWVkIGF0Cj4g
PiB0aGUgY3VycmVudCBzaXR1YXRpb24uICBCZWNhdXNlIG9mIHRoaXMgcHJvYmxlbSwganVzdCBk
cm9wIHRoZSBpbi1rZXJuZWwKPiA+IGNvcHkgb2YgdGhlIGlvbiBjb2RlIG5vdywgYXMgaXQncyBu
b3QgdXNlZCwgYW5kIGlzIG9ubHkgY2F1c2luZyBwcm9ibGVtcwo+ID4gZm9yIGV2ZXJ5b25lIGlu
dm9sdmVkLgo+ID4gCj4gPiBDYzogIkFydmUgSGrDuG5uZXbDpWciIDxhcnZlQGFuZHJvaWQuY29t
Pgo+ID4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+
ID4gQ2M6IENocmlzdGlhbiBCcmF1bmVyIDxjaHJpc3RpYW5AYnJhdW5lci5pbz4KPiA+IENjOiBD
aHJpc3RvcGggSGVsbHdpZyA8aGNoQGluZnJhZGVhZC5vcmc+Cj4gPiBDYzogSHJpZHlhIFZhbHNh
cmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+Cj4gPiBDYzogSm9lbCBGZXJuYW5kZXMgPGpvZWxAam9l
bGZlcm5hbmRlcy5vcmc+Cj4gPiBDYzogSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFyby5v
cmc+Cj4gPiBDYzogTGF1cmEgQWJib3R0IDxsYXVyYUBsYWJib3R0Lm5hbWU+Cj4gPiBDYzogTWFy
dGlqbiBDb2VuZW4gPG1hY29AYW5kcm9pZC5jb20+Cj4gPiBDYzogU2h1YWggS2hhbiA8c2h1YWhA
a2VybmVsLm9yZz4KPiA+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3Jn
Pgo+ID4gQ2M6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+Cj4gPiBDYzog
VG9kZCBLam9zIDx0a2pvc0BhbmRyb2lkLmNvbT4KPiA+IENjOiBkZXZlbEBkcml2ZXJkZXYub3N1
b3NsLm9yZwo+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiA+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3Jv
YWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gCj4gV2UgZGlzY3Vzc2Vk
IHRoaXMgYXQgdGhlIEFuZHJvaWQgTUMgb24gTW9uZGF5IGFuZCB0aGUgcGxhbiB3YXMgdG8KPiBy
ZW1vdmUgaXQgYWZ0ZXIgdGhlIG5leHQgTFRTIHJlbGVhc2UuCgpJIGtub3cgaXQgd2FzIGRpc2N1
c3NlZCwgbXkgcG9pbnQgaXMgdGhhdCBpdCBpcyBhY3R1YWxseSBjYXVzaW5nCnByb2JsZW1zIG5v
dyAod2l0aCBkZXZlbG9wZXJzIHdobyB3YW50IHRvIGNoYW5nZSB0aGUgaW50ZXJuYWwga2VybmVs
IGFwaQpoaXR0aW5nIGlzc3VlcywgYW5kIG5ld2JpZXMgdHJ5aW5nIHRvIGNsZWFuIHVwIGNvZGUg
aW4gd2F5cyB0aGF0IGlzbid0CmV4YWN0bHkgb3B0aW1hbCB3YXN0aW5nIG1haW50YWluZXIgY3lj
bGVzKSwgYW5kIHRoYXQgYW55b25lIHdobyB1c2VzCnRoaXMgY29kZSwgaXMgbm90IGFjdHVhbGx5
IHVzaW5nIHRoaXMgdmVyc2lvbiBvZiB0aGUgY29kZS4gIEV2ZXJ5b25lIHdobwpyZWxpZXMgb24g
aW9uIHJpZ2h0IG5vdywgaXMgdXNpbmcgdGhlIHZlcnNpb24gdGhhdCBpcyBpbiB0aGUgQW5kcm9p
ZApjb21tb24ga2VybmVsIHRyZWUsIHdoaWNoIGhhcyBkaXZlcmdlZCBmcm9tIHRoaXMgaW4ta2Vy
bmVsIHdheSBxdWl0ZSBhCmJpdCBub3cgZm9yIHRoZSByZWFzb24gdGhhdCB3ZSBkaWRuJ3Qgd2Fu
dCB0byB0YWtlIGFueSBvZiB0aG9zZSBuZXcKZmVhdHVyZXMgaW4gdGhlIGluLWtlcm5lbCB2ZXJz
aW9uLgoKU28gdGhpcyBpcyBhIHByb2JsZW0gdGhhdCB3ZSBoYXZlIGNhdXNlZCBieSBqdXN0IHdh
bnRpbmcgdG8gd2FpdCwgbm8gb25lCmlzIHVzaW5nIHRoaXMgY29kZSwgY29tYmluZWQgd2l0aCBp
dCBjYXVzaW5nIHByb2JsZW1zIGZvciB0aGUgdXBzdHJlYW0KZGV2ZWxvcGVycy4KClRoZXJlIGlz
IG5vdGhpbmcgIm1hZ2ljIiBhYm91dCB0aGUgbGFzdCBrZXJuZWwgb2YgdGhlIHllYXIgdGhhdCBy
ZXF1aXJlcwp0aGlzIGNvZGUgdG8gc2l0IGhlcmUgdW50aWwgdGhlbi4gIEF0IHRoYXQgcG9pbnQg
aW4gdGltZSwgYWxsIHVzZXJzCndpbGwsIGFnYWluLCBiZSB1c2luZyB0aGUgZm9ya2VkIEFuZHJv
aWQga2VybmVsIHZlcnNpb24sIGFuZCBpZiB3ZQpkZWxldGUgdGhpcyBub3cgaGVyZSwgdGhhdCBm
b3JrIGNhbiByZW1haW4ganVzdCBmaW5lLCB3aXRoIHRoZSBhZGRlZApiZW5pZml0IG9mIGl0IHJl
ZHVjaW5nIGRldmVsb3BlciB3b3JrbG9hZHMgaGVyZSBpbi1rZXJuZWwuCgpTbyB3aHkgd2FpdD8K
CnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
