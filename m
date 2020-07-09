Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BFF219A06
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 09:33:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9DCDB61697
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 07:33:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 91BBF66460; Thu,  9 Jul 2020 07:33:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 864D066027;
	Thu,  9 Jul 2020 07:32:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1990060C31
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 07:32:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0695566027; Thu,  9 Jul 2020 07:32:54 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id EDB6C60C31
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 07:32:52 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z15so1206943wrl.8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2020 00:32:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Jud8gvQk5riwJAQJGuwXf/WPCVvJ3Rgrb7LcC+OGLek=;
 b=TIW4HoF1Jhug6BgUn/l/hk5/xvLmHkEIe7xHopfQtDxDi2yTLsnSAQupp1/9vboGSO
 HWOhvDsnN3DUsgwzhFPlsFP+SapdH2bP4oOBr7bpXABfH86gsEXD6a8d4OLBUFFkeZiW
 K+yZwqcGyMiJGNo+FsJ7xySnVMx5mTxrOgstdg2IHLOj/33rrpQHinqqgmG4kglWVsfU
 3t9x66WeeIlLino87qSyjxHbuoLa67WvLYSFa0fCL7M5MA7HZzY7RrGSq2fnaa4IC7vP
 KoJOb8KToi7n2ZABU0xtteTBQQEzpm+YApcijeTcYr+ujuMw5b3LFslakmuBgsFjZqdZ
 2Fgw==
X-Gm-Message-State: AOAM532QIhxtaQp4oh2X2HIgPmMX5YRQW/vagxqZhjdRtUFmoa1YXxC+
 I+DN1w/ZprmG4ihd1vsqa6q7IwoJLy0q5oYnI7gCYg==
X-Google-Smtp-Source: ABdhPJwgsWk0Cll+yWUxQEOGAdwXBKFxNE0yBvBai49LXxv7MVRksA8PL+EvQ8au/BG5aRKV6xpbDv9YTf7SNQSV164=
X-Received: by 2002:a5d:66ca:: with SMTP id k10mr50931091wrw.244.1594279971984; 
 Thu, 09 Jul 2020 00:32:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-2-daniel.vetter@ffwll.ch>
 <20c0a95b-8367-4f26-d058-1cb265255283@amd.com>
 <CAKMK7uFe7Pz4=UUkkunBms8vUrzwEpWJmScOMLO4KdADM43vnw@mail.gmail.com>
In-Reply-To: <CAKMK7uFe7Pz4=UUkkunBms8vUrzwEpWJmScOMLO4KdADM43vnw@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 9 Jul 2020 08:32:41 +0100
Message-ID: <CAPj87rNXneE+Vry4aSV11=Qv2mbUsFjCLmNzRmx-Oeqj=u9dyw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 01/25] dma-fence: basic
	lockdep annotations
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

SGksCgpPbiBXZWQsIDggSnVsIDIwMjAgYXQgMTY6MTMsIERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+IE9uIFdlZCwgSnVsIDgsIDIwMjAgYXQgNDo1NyBQTSBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+ID4gQ291
bGQgd2UgbWVyZ2UgdGhpcyBjb250cm9sbGVkIGJ5IGEgc2VwYXJhdGUgY29uZmlnIG9wdGlvbj8K
PiA+Cj4gPiBUaGlzIHdheSB3ZSBjb3VsZCBoYXZlIHRoZSBjaGVja3MgdXBzdHJlYW0gd2l0aG91
dCBoYXZpbmcgdG8gZml4IGFsbCB0aGUKPiA+IHN0dWZmIGJlZm9yZSB3ZSBkbyB0aGlzPwo+Cj4g
U2luY2UgaXQncyBmdWxseSBvcHQtaW4gYW5ub3RhdGlvbnMgbm90aGluZyBibG93cyB1cCBpZiB3
ZSBkb24ndCBtZXJnZQo+IGFueSBhbm5vdGF0aW9ucy4gU28gd2UgY291bGQgc3RhcnQgbWVyZ2lu
ZyB0aGUgZmlyc3QgMyBwYXRjaGVzLiBBZnRlcgo+IHRoYXQgdGhlIGZ1biBzdGFydHMgLi4uCj4K
PiBNeSByb3VnaCBpZGVhIHdhcyB0aGF0IGZpcnN0IEknZCB0cnkgdG8gdGFja2xlIGRpc3BsYXks
IHRodXMgZmFyCj4gdGhlcmUncyAyIGFjdHVhbCBpc3N1ZXMgaW4gZHJpdmVyczoKPiAtIGFtZGdw
dSBoYXMgc29tZSBkbWFfcmVzdl9sb2NrIGluIGNvbW1pdF90YWlsLCBwbHVzIGEga21hbGxvYy4g
SQo+IHRoaW5rIHRob3NlIHNob3VsZCBiZSBmYWlybHkgZWFzeSB0byBmaXggKEknZCB0cnkgYSBz
dGFiIGF0IHRoZW0gZXZlbikKPiAtIHZtd2dmeCBoYXMgYSBmdWxsIG9uIGxvY2tpbmcgaW52ZXJz
aW9uIHdpdGggZG1hX3Jlc3ZfbG9jayBpbgo+IGNvbW1pdF90YWlsLCBhbmQgdGhhdCBvbmUgaXMg
ZnVuY3Rpb25hbC4gTm90IGp1c3QgcmVhZGluZyBzb21ldGhpbmcKPiB3aGljaCB3ZSBjYW4gc2Fm
ZWx5IGFzc3VtZSB0byBiZSBpbnZhcmlhbnQgYW55d2F5IChsaWtlIHRoZSB0bXogZmxhZwo+IGZv
ciBhbWRncHUsIG9yIHdoYXRldmVyIGl0IHdhcykuCj4KPiBJJ3ZlIGRvbmUgYSBwaWxlIG1vcmUg
YW5ub3RhdGlvbnMgcGF0Y2hlcyBmb3Igb3RoZXIgYXRvbWljIGRyaXZlcnMKPiBub3csIHNvIGhv
cGVmdWxseSB0aGF0IGZsdXNoZXMgb3V0IGFueSByZW1haW5pbmcgb2ZmZW5kZXJzIGhlcmUuIFNp
bmNlCj4gc29tZSBvZiB0aGUgYW5ub3RhdGlvbnMgYXJlIGluIGhlbHBlciBjb2RlIHdvcnN0IGNh
c2Ugd2UgbWlnaHQgbmVlZCBhCj4gZGV2LT5tb2RlX2NvbmZpZy5icm9rZW5fYXRvbWljX2NvbW1p
dCBmbGFnIHRvIGRpc2FibGUgdGhlbS4gQXQgbGVhc3QKPiBmb3Igbm93IEkgaGF2ZSAwIHBsYW5z
IHRvIG1lcmdlIGFueSBvZiB0aGVzZSB3aGlsZSB0aGVyZSdzIGtub3duCj4gdW5zb2x2ZWQgaXNz
dWVzLiBNYXliZSBpZiBzb21lIGRyaXZlcnMgdGFrZSBmb3JldmVyIHRvIGdldCBmaXhlZCB3ZQo+
IGNhbiB0aGVuIGFwcGx5IHNvbWUgZHVjdC10YXBlIGZvciB0aGUgYXRvbWljIGhlbHBlciBhbm5v
dGF0aW9uIHBhdGNoLgo+IEluc3RlYWQgb2YgYSBmbGFnIHdlIGNhbiBhbHNvIGNvcHlwYXN0YSB0
aGUgYXRvbWljX2NvbW1pdF90YWlsIGhvb2ssCj4gbGVhdmluZyB0aGUgYW5ub3RhdGlvbnMgb3V0
IGFuZCBhZGRpbmcgYSBodWdlIHdhcm5pbmcgYWJvdXQgdGhhdC4KCkhvdyBhYm91dCBhbiBvcHQt
aW4gZHJtX2RyaXZlciBEUklWRVJfREVBRExPQ0tfSEFQUFkgZmxhZz8gQXQgZmlyc3QKdGhpcyBj
b3VsZCBqdXN0IGRpc2FibGUgdGhlIGFubm90YXRpb25zIGFuZCBub3RoaW5nIGVsc2UsIGJ1dCBh
cyB3ZQpzZWUgdGhlIGFubm90YXRpb25zIGdhaW5pbmcgcmVhbC13b3JsZCB0ZXN0aW5nIGFuZCBt
YXR1cml0eSwgd2UgY291bGQKZXZlbnR1YWxseSBtYWtlIGl0IHRhaW50IHRoZSBrZXJuZWwuCgpD
aGVlcnMsCkRhbmllbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
