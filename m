Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1A428FFFB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Oct 2020 10:30:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E57B461816
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Oct 2020 08:30:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D5BBB6600D; Fri, 16 Oct 2020 08:30:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31E1165FE6;
	Fri, 16 Oct 2020 08:29:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E8CA261808
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 08:29:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CF8AB65FE6; Fri, 16 Oct 2020 08:29:20 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 252C461808
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 08:29:17 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 557D720848;
 Fri, 16 Oct 2020 08:29:13 +0000 (UTC)
Date: Fri, 16 Oct 2020 10:29:45 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Laura Abbott <laura@labbott.name>
Message-ID: <20201016082945.GA1722359@kroah.com>
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
ZW1vdmUgaXQgYWZ0ZXIgdGhlIG5leHQgTFRTIHJlbGVhc2UuCgpBcyA1LjEwIHdpbGwgYmUgdGhl
IG5leHQgTFRTIHJlbGVhc2UsIEkgaGF2ZSBub3cgbWVyZ2VkIGl0IHRvIG15CiJ0ZXN0aW5nIiBi
cmFuY2ggdG8gZ28gaW50byA1LjExLXJjMS4KCnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
