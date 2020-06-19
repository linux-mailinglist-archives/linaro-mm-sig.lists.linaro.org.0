Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A2402219F91
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:04:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8AF766034
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:04:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BA3CD66558; Thu,  9 Jul 2020 12:04:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EAFB666F9;
	Thu,  9 Jul 2020 11:34:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C53B06089D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 18:21:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B6634664FE; Fri, 19 Jun 2020 18:21:27 +0000 (UTC)
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by lists.linaro.org (Postfix) with ESMTPS id 65A16665CA
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 18:18:51 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id e11so572397qkm.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 11:18:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1/Hgy08bto/uuUKyMYyyKuV+V6dnJEVWt8WI7nf113M=;
 b=RPUkHZzzsxKkOODpujsITjiQ9UZodHpjHvjcGt4KKtAEqohBaopg38+rVTRVCZwSjV
 r0FVDe5pBtdo/46QeIb0s2y3GOXqfF/M7yD9JvLt1jcycH1rU2dikS0faGHwL8i1Q5Lv
 XOVrWek2CA/IaN1wm8pW6IkXKJK9vTbewYi71RIKOfb0YO9/PCPD5KaQ8Giw20n8NN+t
 L7yZ0KsIMcRYPOxQflmBGeP4qqsmq1XP1BP9u8B3tXhNZuwDjJh4tKUNm+b7VLXCOJDA
 8LxOfROs3tCTGcZhJZSHSk6IyduZvtwgbiGurpZQs2XU7umHfTH8piYixqk4Fp5q25iI
 cTUg==
X-Gm-Message-State: AOAM531oJkCGaj34iCOShWUnh7nB6feHhrXVNoqSaba/N/pSZb8eC77D
 uCYx9f03usLYVBmW5Og75vTn0w==
X-Google-Smtp-Source: ABdhPJwp/bC67muLlOI/xSpEwuzExrlyozorQFAY/Wts3lymB2t5b6BHCjSgETZH9nZLtDVxeUxvJg==
X-Received: by 2002:a37:4e4a:: with SMTP id c71mr4652759qkb.61.1592590730926; 
 Fri, 19 Jun 2020 11:18:50 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id f203sm815339qke.135.2020.06.19.11.18.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 11:18:50 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jmLbF-00AyFH-UW; Fri, 19 Jun 2020 15:18:49 -0300
Date: Fri, 19 Jun 2020 15:18:49 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jerome Glisse <jglisse@redhat.com>
Message-ID: <20200619181849.GR6578@ziepe.ca>
References: <20200617152835.GF6578@ziepe.ca>
 <20200618150051.GS20149@phenom.ffwll.local>
 <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619180935.GA10009@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDI6MDk6MzVQTSAtMDQwMCwgSmVyb21lIEdsaXNzZSB3
cm90ZToKPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAwMjoyMzowOFBNIC0wMzAwLCBKYXNvbiBH
dW50aG9ycGUgd3JvdGU6Cj4gPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAwNjoxOTo0MVBNICsw
MjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gCj4gPiA+IFRoZSBtYWRuZXNzIGlzIG9ubHkg
dGhhdCBkZXZpY2UgQidzIG1tdSBub3RpZmllciBtaWdodCBuZWVkIHRvIHdhaXQKPiA+ID4gZm9y
IGZlbmNlX0Igc28gdGhhdCB0aGUgZG1hIG9wZXJhdGlvbiBmaW5pc2hlcy4gV2hpY2ggaW4gdHVy
biBoYXMgdG8KPiA+ID4gd2FpdCBmb3IgZGV2aWNlIEEgdG8gZmluaXNoIGZpcnN0Lgo+ID4gCj4g
PiBTbywgaXQgc291bmQsIGZ1bmRhbWVudGFsbHkgeW91J3ZlIGdvdCB0aGlzIGdyYXBoIG9mIG9w
ZXJhdGlvbnMgYWNyb3NzCj4gPiBhbiB1bmtub3duIHNldCBvZiBkcml2ZXJzIGFuZCB0aGUga2Vy
bmVsIGNhbm5vdCBpbnNlcnQgaXRzZWxmIGluCj4gPiBkbWFfZmVuY2UgaGFuZCBvZmZzIHRvIHJl
LXZhbGlkYXRlIGFueSBvZiB0aGUgYnVmZmVycyBpbnZvbHZlZD8KPiA+IEJ1ZmZlcnMgd2hpY2gg
YnkgZGVmaW5pdGlvbiBjYW5ub3QgYmUgdG91Y2hlZCBieSB0aGUgaGFyZHdhcmUgeWV0Lgo+ID4g
Cj4gPiBUaGF0IHJlYWxseSBpcyBhIHByZXR0eSBob3JyaWJsZSBwbGFjZSB0byBlbmQgdXAuLgo+
ID4gCj4gPiBQaW5uaW5nIHJlYWxseSBpcyByaWdodCBhbnN3ZXIgZm9yIHRoaXMga2luZCBvZiB3
b3JrIGZsb3cuIEkgdGhpbmsKPiA+IGNvbnZlcnRpbmcgcGlubmluZyB0byBub3RpZmVycyBzaG91
bGQgbm90IGJlIGRvbmUgdW5sZXNzIG5vdGlmaWVyCj4gPiBpbnZhbGlkYXRpb24gaXMgcmVsYXRp
dmVseSBib3VuZGVkLiAKPiA+IAo+ID4gSSBrbm93IHBlb3BsZSBsaWtlIG5vdGlmaWVycyBiZWNh
dXNlIHRoZXkgZ2l2ZSBhIGJpdCBuaWNlciBwZXJmb3JtYW5jZQo+ID4gaW4gc29tZSBoYXBweSBj
YXNlcywgYnV0IHRoaXMgY3JpcHBsZXMgYWxsIHRoZSBiYWQgY2FzZXMuLgo+ID4gCj4gPiBJZiBw
aW5uaW5nIGRvZXNuJ3Qgd29yayBmb3Igc29tZSByZWFzb24gbWF5YmUgd2Ugc2hvdWxkIGFkZHJl
c3MgdGhhdD8KPiAKPiBOb3RlIHRoYXQgdGhlIGRtYSBmZW5jZSBpcyBvbmx5IHRydWUgZm9yIHVz
ZXIgcHRyIGJ1ZmZlciB3aGljaCBwcmVkYXRlCj4gYW55IEhNTSB3b3JrIGFuZCB0aHVzIHdlcmUg
dXNpbmcgbW11IG5vdGlmaWVyIGFscmVhZHkuIFlvdSBuZWVkIHRoZQo+IG1tdSBub3RpZmllciB0
aGVyZSBiZWNhdXNlIG9mIGZvcmsgYW5kIG90aGVyIGNvcm5lciBjYXNlcy4KCkkgd29uZGVyIGlm
IHdlIHNob3VsZCB0cnkgdG8gZml4IHRoZSBmb3JrIGNhc2UgbW9yZSBkaXJlY3RseSAtIFJETUEK
aGFzIHRoaXMgc2FtZSBwcm9ibGVtIGFuZCBhZGRlZCBNQURWX0RPTlRGT1JLIGEgbG9uZyB0aW1l
IGFnbyBhcyBhCmhhY2t5IHdheSB0byBkZWFsIHdpdGggaXQuCgpTb21lIGNyYXp5IHBhZ2UgcGlu
IHRoYXQgcmVzb2x2ZWQgQ09XIGluIGEgd2F5IHRoYXQgYWx3YXlzIGtlcHQgdGhlCnBoeXNpY2Fs
IG1lbW9yeSB3aXRoIHRoZSBtbSB0aGF0IGluaXRpYXRlZCB0aGUgcGluPwoKKGlzbid0IHRoaXMg
YnJva2VuIGZvciBPX0RJUkVDVCBhcyB3ZWxsIGFueWhvdz8pCgpIb3cgZG9lcyBtbXVfbm90aWZp
ZXJzIGhlbHAgdGhlIGZvcmsgY2FzZSBhbnlob3c/IEJsb2NrIGZvcmsgZnJvbQpwcm9ncmVzc2lu
Zz8KCj4gSSBwcm9iYWJseSBuZWVkIHRvIHdhcm4gQU1EIGZvbGtzIGFnYWluIHRoYXQgdXNpbmcg
SE1NIG1lYW5zIHRoYXQgeW91Cj4gbXVzdCBiZSBhYmxlIHRvIHVwZGF0ZSB0aGUgR1BVIHBhZ2Ug
dGFibGUgYXN5bmNocm9ub3VzbHkgd2l0aG91dAo+IGZlbmNlIHdhaXQuCgpJdCBpcyBraW5kIG9m
IHVucmVsYXRlZCB0byBITU0sIGl0IGp1c3Qgc2hvdWxkbid0IGJlIHVzaW5nIG1tdQpub3RpZmll
cnMgdG8gcmVwbGFjZSBwYWdlIHBpbm5pbmcuLgoKPiBUaGUgaXNzdWUgZm9yIEFNRCBpcyB0aGF0
IHRoZXkgYWxyZWFkeSB1cGRhdGUgdGhlaXIgR1BVIHBhZ2UgdGFibGUKPiB1c2luZyBETUEgZW5n
aW5lLiBJIGJlbGlldmUgdGhpcyBpcyBzdGlsbCBkb2FibGUgaWYgdGhleSB1c2UgYQo+IGtlcm5l
bCBvbmx5IERNQSBlbmdpbmUgY29udGV4dCwgd2hlcmUgb25seSBrZXJuZWwgY2FuIHF1ZXVlIHVw
IGpvYnMKPiBzbyB0aGF0IHlvdSBkbyBub3QgbmVlZCB0byB3YWl0IGZvciB1bnJlbGF0ZWQgdGhp
bmdzIGFuZCB5b3UgY2FuCj4gcHJpb3JpdGl6ZSBHUFUgcGFnZSB0YWJsZSB1cGRhdGUgd2hpY2gg
c2hvdWxkIHRyYW5zbGF0ZSBpbiBmYXN0IEdQVQo+IHBhZ2UgdGFibGUgdXBkYXRlIHdpdGhvdXQg
RE1BIGZlbmNlLgoKTWFrZSBzZW5zZQoKSSdtIG5vdCBzdXJlIEkgc2F3IHRoaXMgaW4gdGhlIEFN
RCBobW0gc3R1ZmYgLSBpdCB3b3VsZCBiZSBnb29kIGlmCnNvbWVvbmUgd291bGQgbG9vayBhdCB0
aGF0LiBFdmVyeSB0aW1lIEkgZG8gaXQgbG9va3MgbGlrZSB0aGUgbG9ja2luZwppcyB3cm9uZy4K
Ckphc29uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
