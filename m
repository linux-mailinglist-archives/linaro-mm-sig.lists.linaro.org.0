Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3DC73E41
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jul 2019 22:23:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4887760F31
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jul 2019 20:23:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3986B60F57; Wed, 24 Jul 2019 20:23:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2 autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C58D260C21;
	Wed, 24 Jul 2019 20:22:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A464C60C0E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jul 2019 20:19:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9708360649; Wed, 24 Jul 2019 20:19:04 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id F34C660649
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jul 2019 20:19:01 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id x15so42935668wmj.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jul 2019 13:19:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uCyHvJVkRZumARLm11LdjYU2wgRDrjk7Xpd2Pm/4CUM=;
 b=TS2ChZAn+eHGMQIPIcFO2vsi93IHqeOBPn01FJefQPhBsFSPCqHrudkEzVR3HHeUxM
 LR8cDCiQV5XPlKGY3NKt/CmZmWDL14cqZqs5TJ+6uUox8NfwUXcLNZ0TbHFN1kldHcdH
 2+Cf1exlmuiHOvU74jBDOC8Xrw0vMB55icCDhTFUKzOb0cdKfRtf9KUUsh1TGOwpj47l
 99WWLglvnNAJYvkguJVQdY05o6xeVPP87X016C/ugrBnivoea6zL9cPhwKf6azJvLv1V
 mCHMyDIEiw6PuWmEVdsX9pW1a0tfN0RhZmAoEE9xH1hdYtjO9nYfT5w+lKHPBB0WJLsK
 5A5g==
X-Gm-Message-State: APjAAAWY0QDdd2wLJl0i60GL5ziFpoobwTaI13k3IKLWlWWmQpJhbFpw
 pYY11bChts+kaC2XEzAdpOFW/cFcKyazNaDvk7A6yYGx
X-Google-Smtp-Source: APXvYqzne6wuqU7LConXTs0S6lFIYeqa69IIJz0V4W6ONH7N7hOznm+a/z9PghQX0bLW04gOZC7ziRyCGieZewzto2s=
X-Received: by 2002:a1c:d10c:: with SMTP id i12mr75821649wmg.152.1563999540296; 
 Wed, 24 Jul 2019 13:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
 <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
In-Reply-To: <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 24 Jul 2019 13:18:47 -0700
Message-ID: <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
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

T24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMTI6MzYgUE0gTGF1cmEgQWJib3R0IDxsYWJib3R0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+Cj4gT24gNy8xNy8xOSAxMjozMSBQTSwgQWxleGFuZGVyIFBvcG92
IHdyb3RlOgo+ID4gSGVsbG8hCj4gPgo+ID4gVGhlIHN5emthbGxlciBbMV0gaGFzIGEgdHJvdWJs
ZSB3aXRoIGZ1enppbmcgdGhlIExpbnV4IGtlcm5lbCB3aXRoIElPTiBNZW1vcnkKPiA+IEFsbG9j
YXRvci4KPiA+Cj4gPiBTeXprYWxsZXIgdXNlcyBzZXZlcmFsIG1ldGhvZHMgWzJdIHRvIGxpbWl0
IG1lbW9yeSBjb25zdW1wdGlvbiBvZiB0aGUgdXNlcnNwYWNlCj4gPiBwcm9jZXNzZXMgY2FsbGlu
ZyB0aGUgc3lzY2FsbHMgZm9yIHRlc3RpbmcgdGhlIGtlcm5lbDoKPiA+ICAgLSBzZXRybGltaXQo
KSwKPiA+ICAgLSBjZ3JvdXBzLAo+ID4gICAtIHZhcmlvdXMgc3lzY3RsLgo+ID4gQnV0IHRoZXNl
IG1ldGhvZHMgZG9uJ3Qgd29yayBmb3IgSU9OIE1lbW9yeSBBbGxvY2F0b3IsIHNvIGFueSB1c2Vy
c3BhY2UgcHJvY2Vzcwo+ID4gdGhhdCBoYXMgYWNjZXNzIHRvIC9kZXYvaW9uIGNhbiBicmluZyB0
aGUgc3lzdGVtIHRvIHRoZSBvdXQtb2YtbWVtb3J5IHN0YXRlLgo+ID4KPiA+IEFuIGV4YW1wbGUg
b2YgYSBwcm9ncmFtIGRvaW5nIHRoYXQ6Cj4gPgo+ID4KPiA+ICNpbmNsdWRlIDxzeXMvdHlwZXMu
aD4KPiA+ICNpbmNsdWRlIDxzeXMvc3RhdC5oPgo+ID4gI2luY2x1ZGUgPGZjbnRsLmg+Cj4gPiAj
aW5jbHVkZSA8c3RkaW8uaD4KPiA+ICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+ID4gI2luY2x1
ZGUgPHN5cy9pb2N0bC5oPgo+ID4KPiA+ICNkZWZpbmUgSU9OX0lPQ19NQUdJQyAgICAgICAgICdJ
Jwo+ID4gI2RlZmluZSBJT05fSU9DX0FMTE9DICAgICAgICAgX0lPV1IoSU9OX0lPQ19NQUdJQywg
MCwgXAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGlvbl9h
bGxvY2F0aW9uX2RhdGEpCj4gPgo+ID4gc3RydWN0IGlvbl9hbGxvY2F0aW9uX2RhdGEgewo+ID4g
ICAgICAgX191NjQgbGVuOwo+ID4gICAgICAgX191MzIgaGVhcF9pZF9tYXNrOwo+ID4gICAgICAg
X191MzIgZmxhZ3M7Cj4gPiAgICAgICBfX3UzMiBmZDsKPiA+ICAgICAgIF9fdTMyIHVudXNlZDsK
PiA+IH07Cj4gPgo+ID4gaW50IG1haW4odm9pZCkKPiA+IHsKPiA+ICAgICAgIHVuc2lnbmVkIGxv
bmcgaSA9IDA7Cj4gPiAgICAgICBpbnQgZmQgPSAtMTsKPiA+ICAgICAgIHN0cnVjdCBpb25fYWxs
b2NhdGlvbl9kYXRhIGRhdGEgPSB7Cj4gPiAgICAgICAgICAgICAgIC5sZW4gPSAweDEzZjY1ZDhj
LAo+ID4gICAgICAgICAgICAgICAuaGVhcF9pZF9tYXNrID0gMSwKPiA+ICAgICAgICAgICAgICAg
LmZsYWdzID0gMCwKPiA+ICAgICAgICAgICAgICAgLmZkID0gLTEsCj4gPiAgICAgICAgICAgICAg
IC51bnVzZWQgPSAwCj4gPiAgICAgICB9Owo+ID4KPiA+ICAgICAgIGZkID0gb3BlbigiL2Rldi9p
b24iLCAwKTsKPiA+ICAgICAgIGlmIChmZCA9PSAtMSkgewo+ID4gICAgICAgICAgICAgICBwZXJy
b3IoIlstXSBvcGVuIC9kZXYvaW9uIik7Cj4gPiAgICAgICAgICAgICAgIHJldHVybiAxOwo+ID4g
ICAgICAgfQo+ID4KPiA+ICAgICAgIHdoaWxlICgxKSB7Cj4gPiAgICAgICAgICAgICAgIHByaW50
ZigiaXRlciAlbHVcbiIsIGkpOwo+ID4gICAgICAgICAgICAgICBpb2N0bChmZCwgSU9OX0lPQ19B
TExPQywgJmRhdGEpOwo+ID4gICAgICAgICAgICAgICBpKys7Cj4gPiAgICAgICB9Cj4gPgo+ID4g
ICAgICAgcmV0dXJuIDA7Cj4gPiB9Cj4gPgo+ID4KPiA+IEkgbG9va2VkIHRocm91Z2ggdGhlIGNv
ZGUgb2YgaW9uX2FsbG9jKCkgYW5kIGRpZG4ndCBmaW5kIGFueSBsaW1pdCBjaGVja3MuCj4gPiBJ
cyBpdCBjdXJyZW50bHkgcG9zc2libGUgdG8gbGltaXQgSU9OIGtlcm5lbCBhbGxvY2F0aW9ucyBm
b3Igc29tZSBwcm9jZXNzPwo+ID4KPiA+IElmIG5vdCwgaXMgaXQgYSByaWdodCBpZGVhIHRvIGRv
IHRoYXQ/Cj4gPiBUaGFua3MhCj4gPgo+Cj4gWWVzLCBJIGRvIHRoaW5rIHRoYXQncyB0aGUgcmln
aHQgYXBwcm9hY2guIFdlJ3JlIHdvcmtpbmcgb24gbW92aW5nIElvbgo+IG91dCBvZiBzdGFnaW5n
IGFuZCB0aGlzIGlzIHNvbWV0aGluZyBJIG1lbnRpb25lZCB0byBKb2huIFN0dWx0ei4gSSBkb24n
dAo+IHRoaW5rIHdlJ3ZlIHRob3VnaHQgdG9vIGhhcmQgYWJvdXQgaG93IHRvIGRvIHRoZSBhY3R1
YWwgbGltaXRpbmcgc28KPiBzdWdnZXN0aW9ucyBhcmUgd2VsY29tZS4KCkluIHBhcnQgdGhlIGRt
YWJ1ZiBoZWFwcyBhbGxvdyBmb3Igc2VwYXJhdGUgaGVhcCBkZXZpY2VzLCBzbyB3ZSBjYW4KaGF2
ZSBmaW5lciBncmFpbmVkIHBlcm1pc3Npb25zIHRvIHRoZSBzcGVjaWZpYyBoZWFwcy4gIEJ1dCB0
aGF0CmRvZXNuJ3QgcHJvdmlkZSBhbnkgY29udHJvbHMgb24gaG93IG11Y2ggbWVtb3J5IG9uZSBw
cm9jZXNzIGNvdWxkCmFsbG9jYXRlIHVzaW5nIHRoZSBkZXZpY2UgaWYgaXQgaGFzIHBlcm1pc3Np
b24uCgpJIHN1c3BlY3QgdGhlIHNhbWUgaXNzdWUgaXMgcHJlc2VudCB3aXRoIGFueSBvZiB0aGUg
ZG1hYnVmIGV4cG9ydGVycwooZ3B1L2Rpc3BsYXkgZHJpdmVycywgZXRjKSwgc28gdGhpcyBpcyBs
ZXNzIG9mIGFuIElPTi9kbWFidWYgaGVhcAppc3N1ZSBhbmQgbW9yZSBvZiBhIGRtYWJ1ZiBjb3Jl
IGFjY291bnRpbmcgaXNzdWUuCgpBbm90aGVyIHByYWN0aWNhbCBjb21wbGljYXRpb24gaXMgdGhh
dCB3aXRoIEFuZHJvaWQgdGhlc2UgZGF5cywgSQpiZWxpZXZlIHRoZSBncmFsbG9jIGNvZGUgbGl2
ZXMgaW4gdGhlIEhJREwtaXplZAphbmRyb2lkLmhhcmR3YXJlLmdyYXBoaWNzLmFsbG9jYXRvckAy
LjAtc2VydmljZSBIQUwsIHdoaWNoIGRvZXMgdGhlCmJ1ZmZlciBhbGxvY2F0aW9ucyBvbiBiZWhh
bGYgb2YgcmVxdWVzdHMgc2VudCBvdmVyIHRoZSBiaW5kZXIgSVBDCmludGVyZmFjZS4gU28gd2l0
aCBhbGwgZG1hLWJ1ZiBhbGxvY2F0aW9ucyBlZmZlY3RpdmVseSBnb2luZyB0aHJvdWdoCnRoYXQg
c2luZ2xlIHByb2Nlc3MsIEknbSBub3Qgc3VyZSB3ZSB3b3VsZCB3YW50IHRvIHB1dCBwZXItcHJv
Y2VzcwpsaW1pdHMgb24gdGhlIGFsbG9jYXRvci4gIEluc3RlYWQsIEkgc3VzcGVjdCB3ZSdkIHdh
bnQgdGhlIG1lbW9yeQpjb3ZlcmVkIGJ5IHRoZSBkbWFidWYgdG8gYmUgYWNjb3VudGVkIGFnYWlu
c3QgcHJvY2Vzc2VzIHRoYXQgaGF2ZSB0aGUKZG1hYnVmIGZkIHN0aWxsIG9wZW4/CgpJIGtub3cg
QW5kcm9pZCBoYXMgc29tZSBsb2dpYyB3aXRoIHRoZWlyIG1lbXRyYWNrIEhBTCB0byBJIGJlbGll
dmUgdHJ5CnRvIGRvIGFjY291bnRpbmcgb2YgZ3B1IG1lbW9yeSBhZ2FpbnN0IHZhcmlvdXMgcHJv
Y2Vzc2VzLCBidXQgSSd2ZSBub3QKbG9va2VkIGF0IHRoYXQgaW4gZGV0YWlsIHJlY2VudGx5LgoK
VG9kZC9Kb2VsOiBBbnkgaW5wdXQgaGVyZT8KCnRoYW5rcwotam9obgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
