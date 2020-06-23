Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 26466219FBB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:11:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3110266597
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:11:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 210FB618E3; Thu,  9 Jul 2020 12:11:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A27166718;
	Thu,  9 Jul 2020 11:34:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 24563664E2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 00:02:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 082286653E; Tue, 23 Jun 2020 00:02:35 +0000 (UTC)
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by lists.linaro.org (Postfix) with ESMTPS id DFAEB664E2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 00:02:33 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id u12so3700891qth.12
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2020 17:02:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fL1wENgZCNwSv3s/JTNbtGHYfJcNOvZphPgobRgCX+0=;
 b=sFL28GGY3SXsE2YybS0LKIFyzWv/9kwc8j6FSZHDwPZdsfE5HDmMMi9pGN5O+sa6as
 TAbacTKeZ+s2eXGsxdMABK4UINRHUPsoRIVtltM/axQ7q6tk/gsi1GUw2MwrGjv2NOMo
 3ufbIN4h76CFkcFOQfOminddRbpNk/djBWHTYkMlAvC8ZHKjUPpLGVEw4L5KEQ7gwZ84
 J0zajVZkv+X1+WGgYmyPt5f25kQtixpy3Pug3iR51Y5zzsrnWvx3NWz6gJ3TrLq+yDXj
 WOCz/4efvpcAVVMKOJy0VxnARmyc23eTnl4uXHGshvd6CihOr671pgLaJr08kHJS78Ab
 mEMw==
X-Gm-Message-State: AOAM530mU1ZQB3E9gbCiFFw69BR6Dz1kbgebRkrKGBIuRxPva5upTUx7
 Sc9f6frIf6DmhSQoixGgDZqDww==
X-Google-Smtp-Source: ABdhPJyCyWWM03fNzzwWcrkorPAde8ZwkJyT1NwEy7u+QyW/bvUE+EE8dkCWV5n1HdRyI+PQxXYPRQ==
X-Received: by 2002:ac8:70da:: with SMTP id g26mr17916678qtp.333.1592870553204; 
 Mon, 22 Jun 2020 17:02:33 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
 by smtp.gmail.com with ESMTPSA id d186sm6145604qkb.110.2020.06.22.17.02.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 17:02:32 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jnWOV-00CHMM-GL; Mon, 22 Jun 2020 21:02:31 -0300
Date: Mon, 22 Jun 2020 21:02:31 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jerome Glisse <jglisse@redhat.com>
Message-ID: <20200623000231.GW6578@ziepe.ca>
References: <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
 <20200619181849.GR6578@ziepe.ca>
 <56008d64-772d-5757-6136-f20591ef71d2@amd.com>
 <20200619195538.GT6578@ziepe.ca>
 <20200619203147.GC13117@redhat.com>
 <20200622114617.GU6578@ziepe.ca> <20200622201540.GB9708@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200622201540.GB9708@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Felix Kuehling <felix.kuehling@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime lockdep
 annotations
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

T24gTW9uLCBKdW4gMjIsIDIwMjAgYXQgMDQ6MTU6NDBQTSAtMDQwMCwgSmVyb21lIEdsaXNzZSB3
cm90ZToKPiBPbiBNb24sIEp1biAyMiwgMjAyMCBhdCAwODo0NjoxN0FNIC0wMzAwLCBKYXNvbiBH
dW50aG9ycGUgd3JvdGU6Cj4gPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAwNDozMTo0N1BNIC0w
NDAwLCBKZXJvbWUgR2xpc3NlIHdyb3RlOgo+ID4gPiBOb3QgZG9hYmxlIGFzIHBhZ2UgcmVmY291
bnQgY2FuIGNoYW5nZSBmb3IgdGhpbmdzIHVucmVsYXRlZCB0byBHVVAsIHdpdGgKPiA+ID4gSm9o
biBjaGFuZ2VzIHdlIGNhbiBpZGVudGlmeSBHVVAgYW5kIHdlIGNvdWxkIHBvdGVudGlhbHkgY29w
eSBHVVBlZCBwYWdlCj4gPiA+IGluc3RlYWQgb2YgQ09XIGJ1dCB0aGlzIGNhbiBwb3RlbnRpYWx5
IHNsb3cgZG93biBmb3JrKCkgYW5kIGkgYW0gbm90IHN1cmUKPiA+ID4gaG93IGFjY2VwdGFibGUg
dGhpcyB3b3VsZCBiZS4gQWxzbyB0aGlzIGRvZXMgbm90IHNvbHZlIEdVUCBhZ2FpbnN0IHBhZ2UK
PiA+ID4gdGhhdCBhcmUgYWxyZWFkeSBpbiBmb3JrIHRyZWUgaWUgcGFnZSBQMCBpcyBpbiBwcm9j
ZXNzIEEgd2hpY2ggZm9ya3MsCj4gPiA+IHdlIG5vdyBoYXZlIHBhZ2UgUDAgaW4gcHJvY2VzcyBB
IGFuZCBCLiBOb3cgd2UgaGF2ZSBwcm9jZXNzIEEgd2hpY2ggZm9ya3MKPiA+ID4gYWdhaW4gYW5k
IHdlIGhhdmUgcGFnZSBQMCBpbiBBLCBCLCBhbmQgQy4gSGVyZSBCIGFuZCBDIGFyZSB0d28gYnJh
bmNoZXMKPiA+ID4gd2l0aCByb290IGluIEEuIEIgYW5kL29yIEMgY2FuIGtlZXAgZm9ya2luZyBh
bmQgZ3JvdyB0aGUgZm9yayB0cmVlLgo+ID4gCj4gPiBGb3IgYSBsb25nIHRpbWUgbm93IFJETUEg
aGFzIGJyb2tlbiBDT1cgcGFnZXMgd2hlbiBjcmVhdGluZyB1c2VyIERNQQo+ID4gcmVnaW9ucy4K
PiA+IAo+ID4gVGhlIHByb2JsZW0gaGFzIGJlZW4gdGhhdCBmb3JrIHJlLUNPVydzIHJlZ2lvbnMg
dGhhdCBoYWQgdGhlaXIgQ09XCj4gPiBicm9rZW4uCj4gPiAKPiA+IFNvLCBpZiB5b3UgYnJlYWsg
dGhlIENPVyB1cG9uIG1hcHBpbmcgYW5kIHByZXZlbnQgZm9yayAoYW5kIG90aGVycykKPiA+IGZy
b20gY29weWluZyBETUEgcGlubmVkIHRoZW4geW91J2QgY292ZXIgdGhlIGNhc2VzLgo+IAo+IEkg
YW0gbm90IHN1cmUgd2Ugd2FudCB0byBwcmV2ZW50IENPVyBmb3IgcGlubmVkIEdVUCBwYWdlcywg
dGhpcyB3b3VsZAo+IGNoYW5nZSBjdXJyZW50IHNlbWFudGljIGFuZCBwb3RlbnRpYWx5IGJyZWFr
L3Nsb3cgZG93biBleGlzdGluZyBhcHBzLgoKSXNuJ3QgdGhhdCBiYXNpY2FsbHkgZXhhY3RseSB3
aGF0IDE3ODM5ODU2ZmQ1ODggZG9lcz8gSXQgbG9va3MgbGlrZSBpdAp1c2VzIHRoZSBzYW1lIGFw
cHJvYWNoIFJETUEgZG9lcyBieSBzdGlja2luZyBGT0xMX1dSSVRFIGV2ZW4gdGhvdWdoIGl0Cmlz
IGEgcmVhZCBhY3Rpb24uCgpBZnRlciB0aGF0IGNoYW5nZSB0aGUgcmVhbWluaW5nIGJ1ZyBpcyB0
aGF0IGZvcmsgY2FuIHJlLWVzdGFibGlzaCBhCkNPVy4vCgo+IEFueXdheSBpIHRoaW5rIHdlIGZv
Y3VzIHRvbyBtdWNoIG9uIGZvcmsvQ09XLCBpdCBpcyBqdXN0IGFuIHVuZml4YWJsZQo+IGJyb2tl
biBjb3JuZXIgY2FzZXMsIG1tdSBub3RpZmllciBhbGxvd3MgeW91IHRvIGF2b2lkIGl0LiBGb3Jj
aW5nIHJlYWwKPiBjb3B5IG9uIGZvcmsgd291bGQgbGlrZWx5IGJlIHNlZW4gYXMgcmVncmVzc2lv
biBieSBtb3N0IHBlb3BsZS4KCklmIHlvdSBkb24ndCBjb3B5IHRoZSB0aGVyZSBhcmUgZGF0YSBj
b3JydXB0aW9uIGJ1Z3MgdGhvdWdoLiBSZWFsIGFwcHMKcHJvYmFibHkgZG9uJ3QgaGl0IGEgcHJv
YmxlbSBoZXJlIGFzIHRoZXkgYXJlIG5vdCBmb3JraW5nIHdoaWxlIEdVUCdzCmFyZSBhY3RpdmUg
KFJETUEgZXhjbHVkZWQsIHdoaWNoIGRvZXMgZG8gdGhpcykKCkkgdGhpbmsgdGhhdCBpbXBsZW1l
bnRpbmcgcGFnZSBwaW5uaW5nIGJ5IGJsb2NraW5nIG1tdSBub3RpZmllcnMgZm9yCnRoZSBkdXJh
dGlvbiBvZiB0aGUgcGluIGlzIGEgcGFydGljdWxhcmx5IGdvb2QgaWRlYSBlaXRoZXIsIHRoYXQK
YWN0dWFsbHkgc2VlbXMgYSBsb3Qgd29yc2UgdGhhbiBqdXN0IGhhdmluZyB0aGUgcGluIGluIHRo
ZSBmaXJzdApwbGFjZS4KClBhcnRpY3VsYXJseSBpZiBpdCBpcyBvbmx5IGJlaW5nIGRvbmUgdG8g
YXZvaWQgY29ybmVyIGNhc2UgYnVncyB0aGF0CmFscmVhZHkgYWZmbGljdCBvdGhlciBHVVAgY2Fz
ZXMgOigKCj4gPiBXaGF0IGRvIHlvdSBtZWFuICdHVVAgZmFzdCBpcyBzdGlsbCBzdWNjZXB0aWJs
ZSB0byB0aGlzJyA/Cj4gCj4gTm90IGFsbCBHVVAgZmFzdCBwYXRoIGFyZSB1cGRhdGVkIChpbnRl
bnRpb25hbHkpIF9fZ2V0X3VzZXJfcGFnZXNfZmFzdCgpCgpTdXJlLCB0aGF0IGlzIGlzIHRoZSAn
cmF3JyBhY2Nlc3NvcgoKSmFzb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
