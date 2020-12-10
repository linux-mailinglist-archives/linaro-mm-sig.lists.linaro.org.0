Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8E62D6A92
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 23:41:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38E0166708
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 22:41:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2602E6670B; Thu, 10 Dec 2020 22:41:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16B9A6653E;
	Thu, 10 Dec 2020 22:40:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8604160DC1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 22:40:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 719866653E; Thu, 10 Dec 2020 22:40:53 +0000 (UTC)
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by lists.linaro.org (Postfix) with ESMTPS id D8E0B60DC1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 22:40:51 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id f11so8647562ljn.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 14:40:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tQWc8Ya/SQ8yu30f2oZK/6gpauwPuWfx0xpCfyzU+rc=;
 b=if8raxqOZEtdndx52pHgo3CdfgaqFkiCeG8jl0bpNg68uFl/nywuwm65F8pGejdB7r
 1EFIRd14ZuwcO2q8VFwfMzGYqy8KxAFcS0bUQNSXeEnmcQnxxVondxikMAMaPbI1Zfc8
 eYIF9gYtm9jswJXyMuwCd33Nsz+dEt+qSKu2Jbyk5+8sX8r2Pm883/yOOB8dWhz5dWkI
 wPueEIHz6DhGnbw1uT6EVzo9UVVwsL6TqBL5qYYBAd8ZQAQaqltZtbKeC5rpo4pulaYo
 3HPhsRs8Rd91DqooKhdRk2l8xvqSqobmDKk5j7l79LzwJxxwpOu5eMUFs+SxGfY/3M1n
 K2lQ==
X-Gm-Message-State: AOAM533SP6pMOM9vaE/Hz9y+3E+ka9OJFBVkXFBUbFrIaYvwK5UCZggM
 boKvedmrVCQgXQINOs75D39KzdAeIYTMYEfF/ohS4Bsh
X-Google-Smtp-Source: ABdhPJzyv+/ixUU7Z4gURlK7gfSgTumIWFyuUn9BMQjVKhZOvuG2b6lPyD6nHt8L6UK49w2MpVe7eroKVnmkRciqHvk=
X-Received: by 2002:a05:651c:10e:: with SMTP id
 a14mr3979348ljb.128.1607640050539; 
 Thu, 10 Dec 2020 14:40:50 -0800 (PST)
MIME-Version: 1.0
References: <20201117181935.3613581-1-minchan@kernel.org>
 <20201117181935.3613581-5-minchan@kernel.org>
 <CGME20201118030110epcas2p1105a09711ea2c123f19f413b32372764@epcas2p1.samsung.com>
 <CALAqxLWqDLHpOHNEayvhDjJeXjEk_uneH2=d9fy8M87EjKfReA@mail.gmail.com>
 <20201119011431.GA136599@KEI>
 <CALAqxLV=r-V6u8hq2fTmxq855nT7QPkkjyAYdPeZRkYPBi_CKg@mail.gmail.com>
 <X9Fjd+eSStUJskOV@google.com>
 <CALAqxLWthd8bEDRMWmuOf8dOCW8=cFao9HBawKGuRhQZkdgXXw@mail.gmail.com>
 <X9JHjPTdxv6Z7lCW@google.com>
In-Reply-To: <X9JHjPTdxv6Z7lCW@google.com>
From: John Stultz <john.stultz@linaro.org>
Date: Thu, 10 Dec 2020 14:40:38 -0800
Message-ID: <CALAqxLVz5bCYxehjVtCJ5eEJ-Wz81=fe30sqRtYtZpXWMkXZiw@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 linux-mm <linux-mm@kvack.org>, Hyesoo Yu <hyesoo.yu@samsung.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Christian Koenig <christian.koenig@amd.com>, John Dias <joaodias@google.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 4/4] dma-heap: Devicetree binding for
	chunk heap
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

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgODowNiBBTSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJu
ZWwub3JnPiB3cm90ZToKPiBPbiBUaHUsIERlYyAxMCwgMjAyMCBhdCAxMjoxNToxNUFNIC0wODAw
LCBKb2huIFN0dWx0eiB3cm90ZToKPiA+IFdlbGwsIHdoaWxlIEkgYWdyZWUgdGhhdCBjb25jZXB0
dWFsbHkgdGhlIGRtYWJ1ZiBoZWFwcyBhbGxvdyBmb3IKPiA+IGFsbG9jYXRpb25zIGZvciBtdWx0
aS1kZXZpY2UgcGlwZWxpbmVzLCBhbmQgdGh1cyBhcmUgbm90IHRpZWQgdG8KPiA+IHNwZWNpZmlj
IGRldmljZXMuIEkgZG8gdGhpbmsgdGhhdCB0aGUgbWVtb3J5IHR5cGVzIGV4cG9zZWQgYXJlIGxp
a2VseQo+ID4gdG8gaGF2ZSBzcGVjaWZpYyBkZXZpY2VzL2RyaXZlcnMgaW4gdGhlIHBpcGVsaW5l
IHRoYXQgaXQgbWF0dGVycyBtb3N0Cj4gPiB0by4gU28gSSBkb24ndCBzZWUgYSBiaWcgaXNzdWUg
d2l0aCB0aGUgaW4ta2VybmVsIGRyaXZlciByZWdpc3RlcmluZyBhCj4gPiBzcGVjaWZpYyBDTUEg
cmVnaW9uIGFzIGEgZG1hYnVmIGhlYXAuCj4KPiBUaGVuLCBJIGFtIHdvcnJ5IGFib3V0IHRoYXQg
d2Ugc3ByZWFkIG91dCBkbWFfaGVhcF9hZGRfY21hIHRvIHRvbyBtYW55Cj4gZHJpdmVycyBzaW5j
ZSBrZXJuZWwgZG9lc24ndCBob3cgdXNlcnNwYWNlIHdpbGwgdXNlIGl0Lgo+IEZvciBleGFtcGxl
LCBzeXN0ZW0gMSBjb3VsZCBoYXZlIGRldmljZSBBLUItQyBwaXBlbGluZSBzbyB0aGV5IGFkZGVk
Cj4gaXQgQSBkcml2ZXIuIEFmdGVyIHRoYXQsIHN5c3RlbSAyIGNvdWxkIGhhdmUgZGV2aWNlIEIt
Qy1EIHBpcGVsaW5lCj4gc28gdGhleSBhZGQgZG1hX2hlYXBfYWRkX2NtYSBpbnRvIEIgZGV2aWNl
LgoKSSdtIG5vdCBzdXJlIEkgc2VlIHRoaXMgYXMgYSBtYWpvciBpc3N1ZT8gSWYgdGhlIGRyaXZl
cnMgYWRkIGl0IGJhc2VkCm9uIHRoZSBkdCBtZW1vcnkgcmVmZXJlbmNlLCB0aG9zZSB3aWxsIGJl
IGNvbmZpZ3VyZWQgdG8gbm90IGFkZApkdXBsaWNhdGUgaGVhcHMgKGFuZCBldmVuIHNvIHRoZSBo
ZWFwIGRyaXZlciBjYW4gYWxzbyBlbnN1cmUgd2UgZG9uJ3QKdHJ5IHRvIGFkZCBhIGhlYXAgdHdp
Y2UpLgoKPiA+IFllYSwgYW4gdW4tdXBzdHJlYW1hYmxlIGR1bW15IGRyaXZlciBpcyBtYXliZSB3
aGF0IGl0IGRldm9sdmVzIHRvIGluCj4gPiB0aGUgd29yc3QgY2FzZS4gQnV0IEkgc3VzcGVjdCBp
dCB3b3VsZCBiZSBjbGVhbmVyIGZvciBhIGRpc3BsYXkgb3IgSVNQCj4gPiBkcml2ZXIgdGhhdCBi
ZW5lZml0cyBtb3N0IGZyb20gdGhlIGhlYXAgdHlwZSB0byBhZGQgdGhlIHJlc2VydmVkCj4gPiBt
ZW1vcnkgcmVmZXJlbmNlIHRvIHRoZWlyIERUIG5vZGUsIGFuZCBvbiBpbml0IGZvciB0aGVtIHRv
IHJlZ2lzdGVyCj4gPiB0aGUgcmVnaW9uIHdpdGggdGhlIGRtYWJ1ZiBoZWFwIGNvZGUuCj4KPiBB
cyBJIG1lbnRpb25lZCBhYm92ZSwgaXQgY291bGQgYmUgYSBkaXNwbGF5IGF0IHRoaXMgbW9tZW50
IGJ1dCBpdCBjb3VsZAo+IGJlIGRpZmZlcmVudCBkcml2ZXIgbmV4dCB0aW1lLiBJZiBJIG1pc3Mg
eW91ciBwb2ludCwgbGV0IG1lIGtub3cuCj4KCkkgZ3Vlc3MgSSBqdXN0IGRvbid0IHNlZSBwb3Rl
bnRpYWxseSBoYXZpbmcgdGhlIHJlZ2lzdHJhdGlvbiBjYWxscwphZGRlZCB0byBtdWx0aXBsZSBk
cml2ZXJzIGFzIGEgYmlnIHByb2JsZW0uCgpJZGVhbGx5LCB5ZXMsIEknZCBwcm9iYWJseSByYXRo
ZXIgc2VlIGEgRFQgbm9kZSB0aGF0IHdvdWxkIGFsbG93IHRoZQpoZWFwIGRyaXZlciB0byByZWdp
c3RlciBzcGVjaWZpZWQgcmVnaW9ucywgYnV0IHRoYXQncyBiZWVuIE5BQ0tlZAptdWx0aXBsZSB0
aW1lcy4gR2l2ZW4gdGhhdCwgaGF2aW5nIGhvb2tzIGluIGRldmljZSBkcml2ZXJzIHRvIGV4cG9y
dAp0aGUgcmVnaW9uIHNlZW1zIHRvIG1lIGxpa2UgdGhlIG5leHQgYmVzdCBhcHByb2FjaCwgYXMg
aXQgYXZvaWRzIERUCkFCSSAoIGlmIGVuZHMgdXAgaXRzIGEgYmFkIGFwcHJvYWNoLCBpdHMgbm90
IHNvbWV0aGluZyB3ZSBoYXZlIHRvCmtlZXApLgoKVGhlIGJpZ2dlciBwcm9ibGVtIHJpZ2h0IG5v
dyBpcyBub3QgdGhhdCB0aGVyZSBhcmUgdG9vIG1hbnkgcGxhY2VzIHRoZQpyZWdpc3RyYXRpb24g
Y2FsbCB3b3VsZCBiZSBtYWRlIGZyb20sIGJ1dCB0aGF0IHRoZXJlIGFyZW4ndCB1cHN0cmVhbQpk
cml2ZXJzIHdoaWNoIEknbSBhd2FyZSBvZiB3aGVyZSBpdCB3b3VsZCBjdXJyZW50bHkgbWFrZSBz
ZW5zZSB0byBhZGQKc3BlY2lmaWMgZG1hX2hlYXBfYWRkX2NtYSgpIHJlZ2lzdHJhdGlvbiBob29r
cyB0by4gIFdlIG5lZWQgYW4KdXBzdHJlYW0gdXNlciBvZiBLdW5paGlrbyBIYXlhc2hpJ3MgcGF0
Y2guCgp0aGFua3MKLWpvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
