Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A589E26C420
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Sep 2020 17:24:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D31C1666D8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Sep 2020 15:24:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C42E5666D3; Wed, 16 Sep 2020 15:24:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B256B666D4;
	Wed, 16 Sep 2020 15:24:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5D04E619CE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 15:24:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4FBEB666D4; Wed, 16 Sep 2020 15:24:19 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id E7D83619CE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 15:24:17 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id m12so7093780otr.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 08:24:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8V25O9GYxPP08UjsTrSAXuZaUN2B3+YItzTAVwD6sSg=;
 b=I6L03RnKoP1Aj6Wdcr8w14e0tGfY7JuVRCcy8ALQgAhVVWesQKihujEYCtFNcdK/M7
 9lr5kmpYfJ08/fWj34ROBTFiSwPVxMpzNVM+eMFLW998ZedvkWvEr0e8MEKAQMyzbxx5
 r3hhRHbdU9yil86Szr28HWKl+NdZvM4HBNsLZZBquCbeSfrlhkcZQOn6vjBCviTtfQC/
 q9tOpUqoa+nSuSR/7XKx40Dhpa+glX6BhCRgu/1lace/FL6vsODuo2iP7VmFiEJPYALz
 lJbZRAa1HLzDVwjjOy827dEY9PAOSx8YtsEJaZqi9fEAYJH/x3whDHyZ9jJZNgJ2ivWe
 YJiw==
X-Gm-Message-State: AOAM532Z+0d8pi20HljSTd9P/6L4NQAqBJKwZgilDHGD58+WnmqZIEWr
 Zorih8GU/L9dX8uWAXcR0iehFOwe8evTNlX7jw7pcg==
X-Google-Smtp-Source: ABdhPJzFIEzlayJbc8puDrgbDGaqrIK0mzqobwQtMVJQV/1fuTdhXaLAYKepB1sf6n0KyI9HMzUVHL2sC9vrHl1co8M=
X-Received: by 2002:a9d:4b99:: with SMTP id k25mr17762932otf.281.1600269857273; 
 Wed, 16 Sep 2020 08:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <40cd26ae-b855-4627-5a13-4dcea5d622f6@gmail.com>
 <20200914140632.GD1221970@ziepe.ca>
 <9302e4e0-0ff0-8b00-ada1-85feefb49e88@gmail.com>
 <20200916095359.GD438822@phenom.ffwll.local>
 <20200916140710.GA8409@ziepe.ca>
 <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
In-Reply-To: <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 16 Sep 2020 17:24:06 +0200
Message-ID: <CAKMK7uFdwrT3HACPh3ADAKvhXJ-Hf3dExZmgJVAQ1KKjSai_0w@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux MM <linux-mm@kvack.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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

T24gV2VkLCBTZXAgMTYsIDIwMjAgYXQgNDoxNCBQTSBDaHJpc3RpYW4gS8O2bmlnCjxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+Cj4gQW0gMTYuMDkuMjAgdW0gMTY6MDcgc2Nocmll
YiBKYXNvbiBHdW50aG9ycGU6Cj4gPiBPbiBXZWQsIFNlcCAxNiwgMjAyMCBhdCAxMTo1Mzo1OUFN
ICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4KPiA+PiBCdXQgd2l0aGluIHRoZSBkcml2
ZXIsIHdlIGdlbmVyYWxseSBuZWVkIHRob3VzYW5kcyBvZiB0aGVzZSwgYW5kIHRoYXQKPiA+PiB0
ZW5kcyB0byBicmluZyBmZCBleGhhdXN0aW9uIHByb2JsZW1zIHdpdGggaXQuIFRoYXQncyB3aHkg
YWxsIHRoZSBwcml2YXRlCj4gPj4gYnVmZmVyIG9iamVjdHMgd2hpY2ggYXJlbid0IHNoYXJlZCB3
aXRoIG90aGVyIHByb2Nlc3Mgb3Igb3RoZXIgZHJpdmVycyBhcmUKPiA+PiBoYW5kbGVzIG9ubHkg
dmFsaWQgZm9yIGEgc3BlY2lmaWMgZmQgaW5zdGFuY2Ugb2YgdGhlIGRybSBjaGFyZGV2IChlYWNo
Cj4gPj4gb3BlbiBnZXRzIHRoZWlyIG93biBuYW1lc3BhY2UpLCBhbmQgb25seSBmb3IgaW9jdGxz
IGRvbmUgb24gdGhhdCBjaGFyZGV2Lgo+ID4+IEFuZCBmb3IgbW1hcCB3ZSBhc3NpZ24gZmFrZSAo
YnV0IHVuaXF1ZSBhY3Jvc3MgYWxsIG9wZW4gZmQgb24gaXQpIG9mZnNldHMKPiA+PiB3aXRoaW4g
dGhlIG92ZXJhbGwgY2hhcmRldi4gSGVuY2UgYWxsIHRoZSBwZ29mZiBtYW5nbGluZyBhbmQgcmUt
bWFuZ2xpbmcuCj4gPiBBcmUgdGhleSBzdGlsbCB1bmlxdWUgc3RydWN0IGZpbGVzPyBKdXN0IHdp
dGhvdXQgYSBmZG5vPwo+Cj4gWWVzLCBleGFjdGx5LgoKTm90IGVudGlyZWx5LCBzaW5jZSBkbWEt
YnVmIGhhcHBlbmVkIGFmdGVyIGRybSBjaGFyZGV2LCBzbyBmb3IgdGhhdApoaXN0b3JpY2FsIHJl
YXNvbiB0aGUgdW5kZXJseWluZyBzdHJ1Y3QgZmlsZSBpcyBzaGFyZWQsIHNpbmNlIGl0J3MgdGhl
CmRybSBjaGFyZGV2LiBCdXQgc2luY2UgdGhhdCdzIHBlci1kZXZpY2Ugd2UgZG9uJ3QgaGF2ZSBh
IHByb2JsZW0gaW4KcHJhY3RpY2Ugd2l0aCBkaWZmZXJlbnQgdm1fb3BzLCBzaW5jZSB0aG9zZSBh
cmUgYWxzbyBwZXItZGV2aWNlLiBCdXQKeWVhaCB3ZSBjb3VsZCBmaXNoIG91dCBzb21lIGVudGly
ZWx5IGhpZGRlbiBwZXItb2JqZWN0IHN0cnVjdCBmaWxlIGlmCnRoYXQncyByZXF1aXJlZCBmb3Ig
c29tZSBtbSBpbnRlcm5hbCByZWFzb25zLgotRGFuaWVsCgo+ID4+IEhlbmNlIHdoeSB3ZSdkIGxp
a2UgdG8gYmUgYWJsZSB0byBmb3J3YXJkIGFsaWFzaW5nIG1hcHBpbmdzIGFuZCBhZGp1c3QgdGhl
Cj4gPj4gZmlsZSBhbmQgcGdvZmYsIHdoaWxlIGhvcGVmdWxseSBldmVyeXRoaW5nIGtlZXBzIHdv
cmtpbmcuIEkgdGhvdWdodCB0aGlzCj4gPj4gd291bGQgd29yaywgYnV0IENocmlzdGlhbiBub3Rp
Y2VkIGl0IGRvZXNuJ3QgcmVhbGx5Lgo+ID4gSXQgc2VlbXMgcmVhc29uYWJsZSB0byBtZSB0aGF0
IHRoZSBkbWEgYnVmIHNob3VsZCBiZSB0aGUgb3duZXIgb2YgdGhlCj4gPiBWTUEsIG90aGVyd2lz
ZSBsaWtlIHlvdSBzYXksIHRoZXJlIGlzIGEgYmlnIG1lc3MgYXR0YWNoaW5nIHRoZSBjdXN0b20K
PiA+IHZtYSBvcHMgYW5kIHdoYXQgbm90IHRvIHRoZSBwcm9wZXIgZG1hIGJ1Zi4KPiA+Cj4gPiBJ
IGRvbid0IHNlZSBhbnl0aGluZyBvYnZpb3VzbHkgYWdhaW5zdCB0aGlzIGluIG1tYXBfcmVnaW9u
KCkgLSB3aHkgZGlkCj4gPiBDaHJpdGlhbiBub3RpY2UgaXQgZG9lc24ndCByZWFsbHkgd29yaz8K
Pgo+IFRvIGNsYXJpZnkgSSB0aGluayB0aGlzIG1pZ2h0IHdvcmsuCj4KPiBJIGp1c3QgaGFkIHRo
ZSBzYW1lICJJcyB0aGF0IGxlZ2FsPyIsICJXaGF0IGFib3V0IHNlY3VyaXR5PyIsIGV0Yy4uCj4g
cXVlc3Rpb25zIHlvdSByYWlzZWQgYXMgd2VsbC4KPgo+IEl0IHNlZW1zIGxpa2UgYSBzb3VyY2Ug
b2YgdHJvdWJsZSBzbyBJIHRob3VnaHQgYmV0dGVyIGFzayBzb21lYm9keSBtb3JlCj4gZmFtaWxp
YXIgd2l0aCB0aGF0Lgo+Cj4gQ2hyaXN0aWFuLgo+Cj4gPgo+ID4gSmFzb24KPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxp
bmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoKCgotLSAKRGFuaWVs
IFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cu
ZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
