Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C061B05A1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2020 11:28:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28FD1617DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2020 09:28:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 136D9619B7; Mon, 20 Apr 2020 09:28:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1F136196D;
	Mon, 20 Apr 2020 09:28:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 54238617DA
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2020 09:28:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 48B586196D; Mon, 20 Apr 2020 09:28:09 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id 04779617DA
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2020 09:28:08 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id g14so7477451otg.10
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2020 02:28:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XArWxGkJ+VyTPp7Wsn4dbWWlVRq/sh+tie0xFdY8Wzs=;
 b=EjxXz0uxDFLZ2fhtnKjg2s4YDjckuqSV1p/AM5LTFruuMY9KCv3ybeSoH+L7Fuyxg7
 vrTncsfaCFsKxrDTuUuhle3Jkk8GqL2P22BXh0a6jXkd8L+WkA+5BpR5Cisys+fPqOSB
 R+Whk0/tcPKxhOZhaaKW+ccxTSsh7asYCjP7CO031Qg9xh4LJjSRU3p+8BBEv3y+2YJA
 FOR9psbJ3k2840/0im4cpNOReZpqHfnVkKf6i3/EJJM2zJM2DSudvz368gKJMMyHkubp
 3/nyNHguUlFSJg7xa9NI/fjBnyVdgNA2gpcIh4VXKBVO4r+dpOSQAUfj9mPxQe6VWJ85
 M/Mg==
X-Gm-Message-State: AGi0PuYEnhV/uMf087ffpd09J8ps2Cml5Yq1GvBxKdxRpVYQAp+nK3TV
 GAZjRq4Ty+IF4mVcovpLkT8XtYSFDKsG9k9P8bk=
X-Google-Smtp-Source: APiQypKjsC6EXYlE5GmPZ4cHorgIglv7peKg70tltLFRlUNMnXipnoVRB6R66Yu9R4xLAwziPHJaRnQ/4in6/miu0rc=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr5224618ots.250.1587374887535; 
 Mon, 20 Apr 2020 02:28:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200414131348.444715-1-hch@lst.de>
 <20200414131348.444715-25-hch@lst.de>
In-Reply-To: <20200414131348.444715-25-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Apr 2020 11:27:56 +0200
Message-ID: <CAMuHMdXktO=2n1tbE5RWRfE1CMd9bP-aHJQifO3J9HYxoQEuXQ@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf <bpf@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [Linaro-mm-sig] [PATCH 24/29] mm: remove
	__vmalloc_node_flags_caller
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

SGkgQ2hyaXN0b3BoLAoKT24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgMzoyMSBQTSBDaHJpc3RvcGgg
SGVsbHdpZyA8aGNoQGxzdC5kZT4gd3JvdGU6Cj4gSnVzdCB1c2UgX192bWFsbG9jX25vZGUgaW5z
dGVhZCB3aGljaCBnZXRzIGFuZCBleHRyYSBhcmd1bWVudC4gIFRvIGJlCj4gYWJsZSB0byB0byB1
c2UgX192bWFsbG9jX25vZGUgaW4gYWxsIGNhbGxlciBtYWtlIGl0IGF2YWlsYWJsZSBvdXRzaWRl
Cj4gb2Ygdm1hbGxvYyBhbmQgaW1wbGVtZW50IGl0IGluIG5vbW11LmMuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KPiBBY2tlZC1ieTogUGV0ZXIgWmlq
bHN0cmEgKEludGVsKSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+CgpPbmUgbW9yZSBub21tdSBmYWls
dXJlIGJlbG93Li4uCgo+IC0tLSBhL21tL25vbW11LmMKPiArKysgYi9tbS9ub21tdS5jCj4gQEAg
LTE1MCw4ICsxNTAsOCBAQCB2b2lkICpfX3ZtYWxsb2ModW5zaWduZWQgbG9uZyBzaXplLCBnZnBf
dCBnZnBfbWFzaykKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKF9fdm1hbGxvYyk7Cj4KPiAtdm9pZCAq
X192bWFsbG9jX25vZGVfZmxhZ3NfY2FsbGVyKHVuc2lnbmVkIGxvbmcgc2l6ZSwgaW50IG5vZGUs
IGdmcF90IGZsYWdzLAo+IC0gICAgICAgICAgICAgICB2b2lkICpjYWxsZXIpCj4gK3ZvaWQgKl9f
dm1hbGxvY19ub2RlKHVuc2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9uZyBhbGlnbiwgZ2Zw
X3QgZ2ZwX21hc2ssCj4gKyAgICAgICAgICAgICAgIGludCBub2RlLCBjb25zdCB2b2lkICpjYWxs
ZXIpCj4gIHsKPiAgICAgICAgIHJldHVybiBfX3ZtYWxsb2Moc2l6ZSwgZmxhZ3MpOwoKT24gTW9u
LCBBcHIgMjAsIDIwMjAgYXQgMTA6MzkgQU0gPG5vcmVwbHlAZWxsZXJtYW4uaWQuYXU+IHdyb3Rl
Ogo+IEZBSUxFRCBsaW51eC1uZXh0L201MjcyYzNfZGVmY29uZmlnL202OGstZ2NjOCBNb24gQXBy
IDIwLCAxODozOAo+Cj4gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5pZC5hdS9raXNza2IvYnVpbGRy
ZXN1bHQvMTQyMTM2MjMvCj4KPiBtbS9ub21tdS5jOjE2NDoyNTogZXJyb3I6ICdmbGFncycgdW5k
ZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4gJ2NsYXNz
Jz8KCiJyZXR1cm4gX192bWFsbG9jKHNpemUsIGdmcF9tYXNrKTsiCgpHcntvZXRqZSxlZXRpbmd9
cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgoKLS0KR2VlcnQgVXl0dGVyaG9ldmVu
IC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhr
Lm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkg
Y2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3Rz
IEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
