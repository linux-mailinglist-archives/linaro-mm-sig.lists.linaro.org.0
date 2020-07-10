Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B6B21B7BB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2020 16:03:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88DA0665A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2020 14:03:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7BE67665B5; Fri, 10 Jul 2020 14:03:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5D4765FCE;
	Fri, 10 Jul 2020 14:03:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0510960FF9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2020 14:02:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EBB0465FD0; Fri, 10 Jul 2020 14:02:53 +0000 (UTC)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by lists.linaro.org (Postfix) with ESMTPS id C1DD160FF9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2020 14:02:47 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id y22so4840701oie.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2020 07:02:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xTQ5MsJnerH24IzbOibKIVgALQbQ6fBLEFDFGaudNHc=;
 b=FuN9cWR9u9nXUKAs+ttixufhaLeneoRRyt1qxDkHVBedxPP0LzwgyaHZl/qxwXjZXr
 HMWkUnRO9+uifXL5y2MikGrv+2bxUJqwDbHDnSCdIJ9NIhMw5/CWwstdBDP4JyFf8Gmx
 70tpnVGl9clWrya378fwisWK39G9liX7TauDx2Uk03ZR7aqjhgaURPMv8dYneRnCpCK2
 FH7UipIX/eGz/ZstyT3cIuTyfkjBcIg5RIUZBVrJesYqrO+Stc4ufHvj/ltRAps1hxc0
 sm1xOvJvqzgVHp87VKIgbTVLAzatolL0HPkZcl2umyirqn2c5zQtp+4p4sG4jg1z07T1
 4v5A==
X-Gm-Message-State: AOAM5318N98B1FtG4OBjaX4EJY3LpoBoNPc0P+cCzXuPQL56c65lVGrL
 b0ODl5Hlk5tZcS2hwExboFm0oydHKvIirhF8yZfOmw==
X-Google-Smtp-Source: ABdhPJz9ueO/NwCXWq4u05bld/A1Jzmv30JDZLkssowFodTQImkU08xp+BW6yONjBlhlRH0STky3grfq96MK+YXxz58=
X-Received: by 2002:aca:cc8e:: with SMTP id c136mr4296478oig.128.1594389767031; 
 Fri, 10 Jul 2020 07:02:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-3-daniel.vetter@ffwll.ch>
 <20200709080911.GP3278063@phenom.ffwll.local>
 <20200710124357.GB23821@mellanox.com>
 <5c163d74-4a28-1d74-be86-099b4729a2e0@amd.com>
 <20200710125453.GC23821@mellanox.com>
 <4f4a2cf7-f505-8494-1461-bd467870481e@amd.com>
 <20200710134826.GD23821@mellanox.com>
In-Reply-To: <20200710134826.GD23821@mellanox.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 10 Jul 2020 16:02:35 +0200
Message-ID: <CAKMK7uGSUULTmL=bDXty6U4e37dzLHzu7wgUyOxo2CvR9KvXGg@mail.gmail.com>
To: Jason Gunthorpe <jgg@mellanox.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel test robot <lkp@intel.com>, linux-rdma <linux-rdma@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [PATCH 02/25] dma-fence: prime lockdep
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

T24gRnJpLCBKdWwgMTAsIDIwMjAgYXQgMzo0OCBQTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0BtZWxs
YW5veC5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCBKdWwgMTAsIDIwMjAgYXQgMDM6MDE6MTBQTSAr
MDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+IEFtIDEwLjA3LjIwIHVtIDE0OjU0IHNj
aHJpZWIgSmFzb24gR3VudGhvcnBlOgo+ID4gPiBPbiBGcmksIEp1bCAxMCwgMjAyMCBhdCAwMjo0
ODoxNlBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+ID4gPiA+IEFtIDEwLjA3LjIw
IHVtIDE0OjQzIHNjaHJpZWIgSmFzb24gR3VudGhvcnBlOgo+ID4gPiA+ID4gT24gVGh1LCBKdWwg
MDksIDIwMjAgYXQgMTA6MDk6MTFBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4g
PiA+ID4gSGkgSmFzb24sCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEJlbG93IHRoZSBwYXJhZ3Jh
cGggSSd2ZSBhZGRlZCBhZnRlciBvdXIgZGlzY3Vzc2lvbnMgYXJvdW5kIGRtYS1mZW5jZXMKPiA+
ID4gPiA+ID4gb3V0c2lkZSBvZiBkcml2ZXJzL2dwdS4gR29vZCBlbm91Z2ggZm9yIGFuIGFjayBv
biB0aGlzLCBvciB3YW50IHNvbWV0aGluZwo+ID4gPiA+ID4gPiBjaGFuZ2VkPwo+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiBUaGFua3MsIERhbmllbAo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ICsg
KiBOb3RlIHRoYXQgb25seSBHUFUgZHJpdmVycyBoYXZlIGEgcmVhc29uYWJsZSBleGN1c2UgZm9y
IGJvdGggcmVxdWlyaW5nCj4gPiA+ID4gPiA+ID4gKyAqICZtbXVfaW50ZXJ2YWxfbm90aWZpZXIg
YW5kICZzaHJpbmtlciBjYWxsYmFja3MgYXQgdGhlIHNhbWUgdGltZSBhcyBoYXZpbmcgdG8KPiA+
ID4gPiA+ID4gPiArICogdHJhY2sgYXN5bmNocm9ub3VzIGNvbXB1dGUgd29yayB1c2luZyAmZG1h
X2ZlbmNlLiBObyBkcml2ZXIgb3V0c2lkZSBvZgo+ID4gPiA+ID4gPiA+ICsgKiBkcml2ZXJzL2dw
dSBzaG91bGQgZXZlciBjYWxsIGRtYV9mZW5jZV93YWl0KCkgaW4gc3VjaCBjb250ZXh0cy4KPiA+
ID4gPiA+IEkgd2FzIGhvcGluZyB3ZSdkIGdldCB0byAnbm8gZHJpdmVyIG91dHNpZGUgR1BVIHNo
b3VsZCBldmVuIHVzZQo+ID4gPiA+ID4gZG1hX2ZlbmNlKCknCj4gPiA+ID4gTXkgbGFzdCBzdGF0
dXMgd2FzIHRoYXQgVjRMIGNvdWxkIGNvbWUgdXNlIGRtYV9mZW5jZXMgYXMgd2VsbC4KPiA+ID4g
SSdtIHN1cmUgbG90cyBvZiBwbGFjZXMgKmNvdWxkKiB1c2UgaXQsIGJ1dCBJIHRoaW5rIEkgdW5k
ZXJzdG9vZCB0aGF0Cj4gPiA+IGl0IGlzIGEgYmFkIGlkZWEgdW5sZXNzIHlvdSBoYXZlIHRvIGZp
dCBpbnRvIHRoZSBEUk0gdUFQST8KPiA+Cj4gPiBJdCB3b3VsZCBiZSBhIGJpdCBxdWVzdGlvbmFi
bGUgaWYgeW91IHVzZSB0aGUgY29udGFpbmVyIG9iamVjdHMgd2UgY2FtZSB1cAo+ID4gd2l0aCBp
biB0aGUgRFJNIHN1YnN5c3RlbSBvdXRzaWRlIG9mIGl0Lgo+ID4KPiA+IEJ1dCB1c2luZyB0aGUg
ZG1hX2ZlbmNlIGl0c2VsZiBtYWtlcyBzZW5zZSBmb3IgZXZlcnl0aGluZyB3aGljaCBjb3VsZCBk
bwo+ID4gYXN5bmMgRE1BIGluIGdlbmVyYWwuCj4KPiBkbWFfZmVuY2Ugb25seSBwb3NzaWJseSBt
YWtlcyBzb21lIHNlbnNlIGlmIHlvdSBpbnRlbmQgdG8gZXhwb3NlIHRoZQo+IGNvbXBsZXRpb24g
b3V0c2lkZSBhIHNpbmdsZSBkcml2ZXIuCj4KPiBUaGUgcHJlZmVyZWQga2VybmVsIGRlc2lnbiBw
YXR0ZXJuIGZvciB0aGlzIGlzIHRvIGNvbm5lY3QgdGhpbmdzIHdpdGgKPiBhIGZ1bmN0aW9uIGNh
bGxiYWNrLgo+Cj4gU28gdGhlIGFjdHVhbCB1c2UgY2FzZSBvZiBkbWFfZmVuY2UgaXMgcXVpdGUg
bmFycm93IGFuZCB0aWdodGx5IGxpbmtlZAo+IHRvIERSTS4KPgo+IEkgZG9uJ3QgdGhpbmsgd2Ug
c2hvdWxkIHNwcmVhZCB0aGlzIGJleW9uZCBEUk0sIEkgY2FuJ3Qgc2VlIGEgcmVhc29uLgoKWWVh
aCB2NGwgaGFzIGEgbGVnaXQgcmVhc29uIHRvIHVzZSBkbWFfZmVuY2UsIGFuZHJvaWQgd2FudHMg
dGhhdAp0aGVyZS4gVGhlcmUncyBldmVuIGJlZW4gcGF0Y2hlcyBwcm9wb3NlZCB5ZWFycyBhZ28s
IGJ1dCBuZXZlciBsYW5kZWQKYmVjYXVzZSBhbmRyb2lkIGlzIHVzaW5nIHNvbWUgdmVuZG9yIGhh
Y2sgaG9ycm9yIHNob3cgZm9yIGNhbWVyYQpkcml2ZXJzIHJpZ2h0IG5vdy4KCkJ1dCB0aGVyZSBp
cyBhbiBlZmZvcnQgZ29pbmcgb24gdG8gZml4IHRoYXQgKHVuZGVyIHRoZSBsaWJjYW1lcmEKaGVh
ZGluZyksIGFuZCBJIGV4cGVjdCB0aGF0IG9uY2Ugd2UgaGF2ZSB0aGF0LCBpdCdsbCB3YW50IGRt
YV9mZW5jZQpzdXBwb3J0LiBTbyBvdXRyaWdodCBleGNsdWRpbmcgZXZlcnlvbmUgZnJvbSBkbWFf
ZmVuY2UgaXMgYSBiaXQgdG9vCm11Y2guIFRoZXkgZGVmaW5pdGVseSBzaG91bGRuJ3QgYmUgdXNl
ZCB0aG91Z2ggZm9yIGVudGlyZWx5CmluZGVwZW5kZW50IHN0dWZmLgoKPiA+ID4gWW91IGFyZSBi
ZXR0ZXIgdG8gZG8gc29tZXRoaW5nIGNvbnRhaW5lZCBpbiB0aGUgc2luZ2xlIGRyaXZlciB3aGVy
ZQo+ID4gPiBsb2NraW5nIGNhbiBiZSBhbmFseXplZC4KPiA+ID4KPiA+ID4gPiBJJ20gbm90IDEw
MCUgc3VyZSwgYnV0IHdvdWxkbid0IE1NVSBub3RpZmllciArIGRtYV9mZW5jZSBiZSBhIHZhbGlk
IHVzZSBjYXNlCj4gPiA+ID4gZm9yIHRoaW5ncyBsaWtlIGN1c3RvbSBGUEdBIGludGVyZmFjZXMg
YXMgd2VsbD8KPiA+ID4gSSBkb24ndCB0aGluayB3ZSBzaG91bGQgZXhwYW5kIHRoZSBsaXN0IG9m
IGRyaXZlcnMgdGhhdCB1c2UgdGhpcwo+ID4gPiB0ZWNobmlxdWUuCj4gPiA+IERyaXZlcnMgdGhh
dCBjYW4ndCBzdXNwZW5kIHNob3VsZCBwaW4gbWVtb3J5LCBub3QgdXNlIGJsb2NrZWQKPiA+ID4g
bm90aWZpZXJzIHRvIGNyZWF0ZWQgcGlubmVkIG1lbW9yeS4KPiA+Cj4gPiBBZ3JlZWQgdG90YWxs
eSwgaXQncyBhIGNvbXBsZXRlIHBhaW4gdG8gbWFpbnRhaW4gZXZlbiBmb3IgdGhlIEdQVSBkcml2
ZXJzLgo+ID4KPiA+IFVuZm9ydHVuYXRlbHkgdGhhdCBkb2Vzbid0IGNoYW5nZSB1c2VycyBmcm9t
IHJlcXVlc3RpbmcgaXQuIFNvIEknbSBwcmV0dHkKPiA+IHN1cmUgd2UgYXJlIGdvaW5nIHRvIHNl
ZSBtb3JlIG9mIHRoaXMuCj4KPiBLZXJuZWwgbWFpbnRhaW5lcnMgbmVlZCB0byBzYXkgbm8uCj4K
PiBUaGUgcHJvcGVyIHdheSB0byBkbyBETUEgb24gbm8tZmF1bHRpbmcgaGFyZHdhcmUgaXMgcGFn
ZSBwaW5uaW5nLgo+Cj4gVHJ5aW5nIHRvIGltcHJvdmUgcGVyZm9ybWFuY2Ugb2YgbGltaXRlZCBI
VyBieSB1c2luZyBza2V0Y2h5Cj4gdGVjaG5pcXVlcyBhdCB0aGUgY29zdCBvZiBnZW5lcmFsIHN5
c3RlbSBzdGFiaWxpdHkgc2hvdWxkIGJlIGEgTkFLLgoKV2VsbCB0aGF0J3MgcHJldHR5IG11Y2gg
Z3B1IGRyaXZlcnMsIGFsbCB0aGUgaG9ycm9ycyBmb3IgYSBiaXQgbW9yZSBzcGVlZCA6LSkKCk9u
IHRoZSB0ZXh0IGl0c2VsZiwgc2hvdWxkIEkgdXBncmFkZSB0byAibXVzdCBub3QiIGluc3RlYWQg
b2YgInNob3VsZApub3QiPyBPciBtb3JlIG5lZWRlZD8KLURhbmllbAotLSAKRGFuaWVsIFZldHRl
cgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwu
Y2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
