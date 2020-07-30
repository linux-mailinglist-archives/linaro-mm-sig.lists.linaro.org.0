Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6543A2332D7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jul 2020 15:18:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82FCE6659B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jul 2020 13:17:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 77B68665AA; Thu, 30 Jul 2020 13:17:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9813B6151D;
	Thu, 30 Jul 2020 13:17:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 17658609C5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jul 2020 13:17:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F24FB6151D; Thu, 30 Jul 2020 13:17:27 +0000 (UTC)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by lists.linaro.org (Postfix) with ESMTPS id 681DC609C5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jul 2020 13:17:26 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id o72so14441025ota.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jul 2020 06:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=l6NNuTlAlb+T71eovQReK+men4boXEXZJmc745e1mek=;
 b=m8BC/dN93UZ1x2YntsOWCmFjiZHZ4i9PV1Ep3YoDoV+gl8FxCkM6Ghj20Pn82MdRFF
 RAji7gLJppfLfQKntOGcA3uUtZERyG0ifD9WhP9BnJzuBP/ro4OZczqXoYcer9nr23jJ
 IxZR/YGPLB2C4dEz2x2l73KK3anJ5yfls/IB4nBjv3Glydlcx4tgB25VnKy9ZJVSWiQ3
 NnX0JtTfc2g0jBJYkI/omqRRg1eMylh05y9UbwFMYxwCSLvY59Laly6jUX21c1hg4B02
 NY6q8fD7xCpru8ypcBE2ygYUOEW8mF2PP04qP5Nq2bhBgbZYwT1v9/D2ePBmpMAVuD38
 LfWg==
X-Gm-Message-State: AOAM531x24k1zHpzu+gEzoLUBpOCn8onVH3FjGSsqx9Hea+7e5ddvxvK
 R91Ej+TzwY7QLic0EuwASC34XEXxpBsLcU7aB6K60g==
X-Google-Smtp-Source: ABdhPJyT+P5EKFUT/rekKMDvcsT0JZ6B1aXbsvpwMmAI2gySdtJl4PHRq6e+n9dVUTuKG5DRk4IoPKAkcy7FpSExRU8=
X-Received: by 2002:a9d:6052:: with SMTP id v18mr2134622otj.303.1596115045756; 
 Thu, 30 Jul 2020 06:17:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200728135839.1035515-1-daniel.vetter@ffwll.ch>
 <38cbc4fb-3a88-47c4-2d6c-4d90f9be42e7@shipmail.org>
In-Reply-To: <38cbc4fb-3a88-47c4-2d6c-4d90f9be42e7@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 30 Jul 2020 15:17:14 +0200
Message-ID: <CAKMK7uFe-70DE5qOBJ6FwD8d_A0yZt+h5bCqA=e9QtYE1qwASQ@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-xfs@vger.kernel.org, linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Chinner <david@fromorbit.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Jason Gunthorpe <jgg@mellanox.com>,
 Qian Cai <cai@lca.pw>, linux-fsdevel@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-resv: lockdep-prime
	address_space->i_mmap_rwsem for dma-resv
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

T24gVGh1LCBKdWwgMzAsIDIwMjAgYXQgMjoxNyBQTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
Cjx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPgo+Cj4gT24gNy8yOC8yMCAzOjU4IFBN
LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gR1BVIGRyaXZlcnMgbmVlZCB0aGlzIGluIHRoZWly
IHNocmlua2VycywgdG8gYmUgYWJsZSB0byB0aHJvdyBvdXQKPiA+IG1tYXAnZWQgYnVmZmVycy4g
Tm90ZSB0aGF0IHdlIGFsc28gbmVlZCBkbWFfcmVzdl9sb2NrIGluIHNocmlua2VycywKPiA+IGJ1
dCB0aGF0IGxvb3AgaXMgcmVzb2x2ZWQgYnkgdHJ5bG9ja2luZyBpbiBzaHJpbmtlcnMuCj4gPgo+
ID4gU28gZnVsbCBoaWVyYXJjaHkgaXMgbm93IChpZ25vcmUgc29tZSBvZiB0aGUgb3RoZXIgYnJh
bmNoZXMgd2UgYWxyZWFkeQo+ID4gaGF2ZSBwcmltZWQpOgo+ID4KPiA+IG1tYXBfcmVhZF9sb2Nr
IC0+IGRtYV9yZXN2IC0+IHNocmlua2VycyAtPiBpX21tYXBfbG9ja193cml0ZQo+ID4KPiA+IEkg
aG9wZSB0aGF0J3Mgbm90IGluY29uc2lzdGVudCB3aXRoIGFueXRoaW5nIG1tIG9yIGZzIGRvZXMs
IGFkZGluZwo+ID4gcmVsZXZhbnQgcGVvcGxlLgo+ID4KPiBMb29rcyBPSyB0byBtZS4gVGhlIG1h
cHBpbmdfZGlydHlfaGVscGVycyBydW4gdW5kZXIgdGhlIGlfbW1hcF9sb2NrLCBidXQKPiBkb24n
dCBhbGxvY2F0ZSBhbnkgbWVtb3J5IEFGQUlDVC4KPgo+IFNpbmNlIGh1Z2UgcGFnZS10YWJsZS1l
bnRyeSBzcGxpdHRpbmcgbWF5IGhhcHBlbiB1bmRlciB0aGUgaV9tbWFwX2xvY2sKPiBmcm9tIHVu
bWFwX21hcHBpbmdfcmFuZ2UoKSBpdCBtaWdodCBiZSB3b3J0aCBmaWd1cmluZyBvdXQgaG93IG5l
dyBwYWdlCj4gZGlyZWN0b3J5IHBhZ2VzIGFyZSBhbGxvY2F0ZWQsIHRob3VnaC4KCm9mYyBJJ20g
bm90IGFuIG1tIGV4cGVydCBhdCBhbGwsIGJ1dCBJIGRpZCB0cnkgdG8gc2Nyb2xsIHRocm91Z2gg
YWxsCmlfbW1hcF9sb2NrX3dyaXRlL3JlYWQgY2FsbGVycy4gRm91bmQgdGhlIGZvbGxvd2luZzoK
Ci0ga2VybmVsL2V2ZW50cy91cHJvYmVzLmMgaW4gYnVpbGRfbWFwX2luZm86CgogICAgICAgICAg
ICAvKgogICAgICAgICAgICAgKiBOZWVkcyBHRlBfTk9XQUlUIHRvIGF2b2lkIGlfbW1hcF9yd3Nl
bSByZWN1cnNpb24gdGhyb3VnaAogICAgICAgICAgICAgKiByZWNsYWltLiBUaGlzIGlzIG9wdGlt
aXN0aWMsIG5vIGhhcm0gZG9uZSBpZiBpdCBmYWlscy4KICAgICAgICAgICAgICovCgotIEkgZ290
IGxvc3QgaW4gdGhlIGh1Z2V0bGIuYyBjb2RlIGFuZCBjb3VsZG4ndCBjb252aW5jZSBteXNlbGYg
aXQncwpub3QgYWxsb2NhdGluZyBwYWdlIGRpcmVjdG9yaWVzIGF0IHZhcmlvdXMgbGV2ZWxzIHdp
dGggc29tZXRoaW5nIGVsc2UKdGhhbiBHRlBfS0VSTkVMLgoKU28gbG9va3MgbGlrZSB0aGUgcmVj
dXJzaW9uIGlzIGNsZWFybHkgdGhlcmUgYW5kIGtub3duLCBidXQgdGhlCmh1Z2VwYWdlIGNvZGUg
aXMgdG9vIGNvbXBsZXggYW5kIGZseWluZyBvdmVyIG15IGhlYWQuCi1EYW5pZWwKCj4KPiAvVGhv
bWFzCj4KPgo+CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
