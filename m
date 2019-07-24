Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F3173F92
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jul 2019 22:33:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 011C161731
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jul 2019 20:33:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E262E61733; Wed, 24 Jul 2019 20:33:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2 autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C64926162E;
	Wed, 24 Jul 2019 20:32:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7460660649
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jul 2019 20:24:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 66E2E60C21; Wed, 24 Jul 2019 20:24:25 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 84EAD60C15
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jul 2019 20:24:03 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id f17so42717880wme.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jul 2019 13:24:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QhT2aDY6DDwFo4u6pSSbFcjckneqY/fJmJSPh2en2QU=;
 b=Pzye1byArUhaYQ5xKmOq4H+fnKri3wYCIVjIqyo1s5umrbEu8AQVzeCrdf2QeaeL/V
 50JBD6y1eWYDeU94p+eJaaCA66qgx/Mxt6FMhdPSzIzZMrIUpojfcm4c1izKwrNohM4O
 QSvALQUDX299KO7D0yLc09eNESIVUBdUVQpywUmA6ExDCFDjpI1CPKHacEIalCRfL/e9
 p/6iM0nBEsyH4SsswKKPD/vnoNP2flA26zICKM5UBCzGpPscpLXDOamdrIRSj5zqKHTs
 8Z3M3DPzUQWWUaS366ORlb7xgw2dNJPwpYthr5THD0Dp54WAwjLnqZU1cWK6EcTQyqHW
 tc+w==
X-Gm-Message-State: APjAAAUkSBpp8nuFepU6n/Mb4ETS5yHH7pqKkp7hRp2BA8SfuJ9fM8qq
 z5ZWJfaU/hxumuB56zZ6HllyL5V0NGn93oIl5cXJW+tw
X-Google-Smtp-Source: APXvYqxenlGpviTUKajhjd5h70fbVtfBZYjpg7adyab446NPvnKr6jujmjoqrk0eooFifFaFDgKzniRhKNTV1qCOUmI=
X-Received: by 2002:a1c:dc07:: with SMTP id t7mr78697953wmg.164.1563999842462; 
 Wed, 24 Jul 2019 13:24:02 -0700 (PDT)
MIME-Version: 1.0
References: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
 <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
 <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
In-Reply-To: <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 24 Jul 2019 13:23:50 -0700
Message-ID: <CALAqxLU0VUp=PGx5=JuVp6c5gwLqpSZJxs7ieL631QhdzNQTyA@mail.gmail.com>
To: Laura Abbott <labbott@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel <dri-devel@lists.freedesktop.org>, Linux-MM <linux-mm@kvack.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 Christian Brauner <christian@brauner.io>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, alex.popov@linux.com,
 Alistair Delva <adelva@google.com>, Todd Kjos <tkjos@android.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Riley Andrews <riandrews@android.com>, syzkaller <syzkaller@googlegroups.com>,
 Martijn Coenen <maco@android.com>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Mark Brown <broonie@kernel.org>, Hridya Valsaraju <hridya@google.com>,
 Brian Starkey <brian.starkey@arm.com>
Subject: Re: [Linaro-mm-sig] Limits for ION Memory Allocator
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

T24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMToxOCBQTSBKb2huIFN0dWx0eiA8am9obi5zdHVsdHpA
bGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWQsIEp1bCAyNCwgMjAxOSBhdCAxMjozNiBQTSBM
YXVyYSBBYmJvdHQgPGxhYmJvdHRAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gNy8xNy8x
OSAxMjozMSBQTSwgQWxleGFuZGVyIFBvcG92IHdyb3RlOgo+ID4gPiBIZWxsbyEKPiA+ID4KPiA+
ID4gVGhlIHN5emthbGxlciBbMV0gaGFzIGEgdHJvdWJsZSB3aXRoIGZ1enppbmcgdGhlIExpbnV4
IGtlcm5lbCB3aXRoIElPTiBNZW1vcnkKPiA+ID4gQWxsb2NhdG9yLgo+ID4gPgo+ID4gPiBTeXpr
YWxsZXIgdXNlcyBzZXZlcmFsIG1ldGhvZHMgWzJdIHRvIGxpbWl0IG1lbW9yeSBjb25zdW1wdGlv
biBvZiB0aGUgdXNlcnNwYWNlCj4gPiA+IHByb2Nlc3NlcyBjYWxsaW5nIHRoZSBzeXNjYWxscyBm
b3IgdGVzdGluZyB0aGUga2VybmVsOgo+ID4gPiAgIC0gc2V0cmxpbWl0KCksCj4gPiA+ICAgLSBj
Z3JvdXBzLAo+ID4gPiAgIC0gdmFyaW91cyBzeXNjdGwuCj4gPiA+IEJ1dCB0aGVzZSBtZXRob2Rz
IGRvbid0IHdvcmsgZm9yIElPTiBNZW1vcnkgQWxsb2NhdG9yLCBzbyBhbnkgdXNlcnNwYWNlIHBy
b2Nlc3MKPiA+ID4gdGhhdCBoYXMgYWNjZXNzIHRvIC9kZXYvaW9uIGNhbiBicmluZyB0aGUgc3lz
dGVtIHRvIHRoZSBvdXQtb2YtbWVtb3J5IHN0YXRlLgo+ID4gPgo+ID4gPiBBbiBleGFtcGxlIG9m
IGEgcHJvZ3JhbSBkb2luZyB0aGF0Ogo+ID4gPgo+ID4gPgo+ID4gPiAjaW5jbHVkZSA8c3lzL3R5
cGVzLmg+Cj4gPiA+ICNpbmNsdWRlIDxzeXMvc3RhdC5oPgo+ID4gPiAjaW5jbHVkZSA8ZmNudGwu
aD4KPiA+ID4gI2luY2x1ZGUgPHN0ZGlvLmg+Cj4gPiA+ICNpbmNsdWRlIDxsaW51eC90eXBlcy5o
Pgo+ID4gPiAjaW5jbHVkZSA8c3lzL2lvY3RsLmg+Cj4gPiA+Cj4gPiA+ICNkZWZpbmUgSU9OX0lP
Q19NQUdJQyAgICAgICAgICdJJwo+ID4gPiAjZGVmaW5lIElPTl9JT0NfQUxMT0MgICAgICAgICBf
SU9XUihJT05fSU9DX01BR0lDLCAwLCBcCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCBpb25fYWxsb2NhdGlvbl9kYXRhKQo+ID4gPgo+ID4gPiBzdHJ1Y3Qg
aW9uX2FsbG9jYXRpb25fZGF0YSB7Cj4gPiA+ICAgICAgIF9fdTY0IGxlbjsKPiA+ID4gICAgICAg
X191MzIgaGVhcF9pZF9tYXNrOwo+ID4gPiAgICAgICBfX3UzMiBmbGFnczsKPiA+ID4gICAgICAg
X191MzIgZmQ7Cj4gPiA+ICAgICAgIF9fdTMyIHVudXNlZDsKPiA+ID4gfTsKPiA+ID4KPiA+ID4g
aW50IG1haW4odm9pZCkKPiA+ID4gewo+ID4gPiAgICAgICB1bnNpZ25lZCBsb25nIGkgPSAwOwo+
ID4gPiAgICAgICBpbnQgZmQgPSAtMTsKPiA+ID4gICAgICAgc3RydWN0IGlvbl9hbGxvY2F0aW9u
X2RhdGEgZGF0YSA9IHsKPiA+ID4gICAgICAgICAgICAgICAubGVuID0gMHgxM2Y2NWQ4YywKPiA+
ID4gICAgICAgICAgICAgICAuaGVhcF9pZF9tYXNrID0gMSwKPiA+ID4gICAgICAgICAgICAgICAu
ZmxhZ3MgPSAwLAo+ID4gPiAgICAgICAgICAgICAgIC5mZCA9IC0xLAo+ID4gPiAgICAgICAgICAg
ICAgIC51bnVzZWQgPSAwCj4gPiA+ICAgICAgIH07Cj4gPiA+Cj4gPiA+ICAgICAgIGZkID0gb3Bl
bigiL2Rldi9pb24iLCAwKTsKPiA+ID4gICAgICAgaWYgKGZkID09IC0xKSB7Cj4gPiA+ICAgICAg
ICAgICAgICAgcGVycm9yKCJbLV0gb3BlbiAvZGV2L2lvbiIpOwo+ID4gPiAgICAgICAgICAgICAg
IHJldHVybiAxOwo+ID4gPiAgICAgICB9Cj4gPiA+Cj4gPiA+ICAgICAgIHdoaWxlICgxKSB7Cj4g
PiA+ICAgICAgICAgICAgICAgcHJpbnRmKCJpdGVyICVsdVxuIiwgaSk7Cj4gPiA+ICAgICAgICAg
ICAgICAgaW9jdGwoZmQsIElPTl9JT0NfQUxMT0MsICZkYXRhKTsKPiA+ID4gICAgICAgICAgICAg
ICBpKys7Cj4gPiA+ICAgICAgIH0KPiA+ID4KPiA+ID4gICAgICAgcmV0dXJuIDA7Cj4gPiA+IH0K
PiA+ID4KPiA+ID4KPiA+ID4gSSBsb29rZWQgdGhyb3VnaCB0aGUgY29kZSBvZiBpb25fYWxsb2Mo
KSBhbmQgZGlkbid0IGZpbmQgYW55IGxpbWl0IGNoZWNrcy4KPiA+ID4gSXMgaXQgY3VycmVudGx5
IHBvc3NpYmxlIHRvIGxpbWl0IElPTiBrZXJuZWwgYWxsb2NhdGlvbnMgZm9yIHNvbWUgcHJvY2Vz
cz8KPiA+ID4KPiA+ID4gSWYgbm90LCBpcyBpdCBhIHJpZ2h0IGlkZWEgdG8gZG8gdGhhdD8KPiA+
ID4gVGhhbmtzIQo+ID4gPgo+ID4KPiA+IFllcywgSSBkbyB0aGluayB0aGF0J3MgdGhlIHJpZ2h0
IGFwcHJvYWNoLiBXZSdyZSB3b3JraW5nIG9uIG1vdmluZyBJb24KPiA+IG91dCBvZiBzdGFnaW5n
IGFuZCB0aGlzIGlzIHNvbWV0aGluZyBJIG1lbnRpb25lZCB0byBKb2huIFN0dWx0ei4gSSBkb24n
dAo+ID4gdGhpbmsgd2UndmUgdGhvdWdodCB0b28gaGFyZCBhYm91dCBob3cgdG8gZG8gdGhlIGFj
dHVhbCBsaW1pdGluZyBzbwo+ID4gc3VnZ2VzdGlvbnMgYXJlIHdlbGNvbWUuCj4KPiBJbiBwYXJ0
IHRoZSBkbWFidWYgaGVhcHMgYWxsb3cgZm9yIHNlcGFyYXRlIGhlYXAgZGV2aWNlcywgc28gd2Ug
Y2FuCj4gaGF2ZSBmaW5lciBncmFpbmVkIHBlcm1pc3Npb25zIHRvIHRoZSBzcGVjaWZpYyBoZWFw
cy4gIEJ1dCB0aGF0Cj4gZG9lc24ndCBwcm92aWRlIGFueSBjb250cm9scyBvbiBob3cgbXVjaCBt
ZW1vcnkgb25lIHByb2Nlc3MgY291bGQKPiBhbGxvY2F0ZSB1c2luZyB0aGUgZGV2aWNlIGlmIGl0
IGhhcyBwZXJtaXNzaW9uLgo+Cj4gSSBzdXNwZWN0IHRoZSBzYW1lIGlzc3VlIGlzIHByZXNlbnQg
d2l0aCBhbnkgb2YgdGhlIGRtYWJ1ZiBleHBvcnRlcnMKPiAoZ3B1L2Rpc3BsYXkgZHJpdmVycywg
ZXRjKSwgc28gdGhpcyBpcyBsZXNzIG9mIGFuIElPTi9kbWFidWYgaGVhcAo+IGlzc3VlIGFuZCBt
b3JlIG9mIGEgZG1hYnVmIGNvcmUgYWNjb3VudGluZyBpc3N1ZS4KPgoKQWxzbywgZG8gdW5tYXBw
ZWQgbWVtZmQgYnVmZmVycyBoYXZlIHNpbWlsYXIgYWNjb3VudGluZyBpc3N1ZXM/Cgp0aGFua3MK
LWpvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
