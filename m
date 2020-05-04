Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE501C3B06
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:14:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E468619C1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:14:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5A2CC66048; Mon,  4 May 2020 13:14:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BF3066078;
	Mon,  4 May 2020 13:12:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6672E619C1
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 13:12:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 578566606F; Mon,  4 May 2020 13:12:50 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 7B62C619C1
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 13:11:13 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id F34BA68BFE; Mon,  4 May 2020 15:11:10 +0200 (CEST)
Date: Mon, 4 May 2020 15:11:10 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200504131110.GA18918@lst.de>
References: <CGME20200504125032eucas1p2eeaf22690e6b557d69c834cc9dd75855@eucas1p2.samsung.com>
 <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125212.GA17241@lst.de>
 <b257279c-4138-b28e-584d-92bd15571ae1@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b257279c-4138-b28e-584d-92bd15571ae1@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v2 00/21] DRM: fix struct sg_table nents
 vs. orig_nents misuse
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

T24gTW9uLCBNYXkgMDQsIDIwMjAgYXQgMDM6MDU6MzBQTSArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPiBIaSBDaHJpc3RvcGgsCj4gCj4gT24gMDQuMDUuMjAyMCAxNDo1MiwgQ2hyaXN0
b3BoIEhlbGx3aWcgd3JvdGU6Cj4gPiBPbiBNb24sIE1heSAwNCwgMjAyMCBhdCAwMjo1MDoxN1BN
ICswMjAwLCBNYXJlayBTenlwcm93c2tpIHdyb3RlOgo+ID4+IHYyOgo+ID4+IC0gZHJvcHBlZCBt
b3N0IG9mIHRoZSBjaGFuZ2VzIHRvIGRybS9pOTE1Cj4gPj4gLSBhZGRlZCBmaXhlcyBmb3IgcmNh
ci1kdSwgeGVuLCBtZWRpYSBhbmQgaW9uCj4gPj4gLSBmaXhlZCBhIGZldyBpc3N1ZXMgcG9pbnRl
ZCBieSBrYnVpbGQgdGVzdCByb2JvdAo+ID4+IC0gYWRkZWQgd2lkZSBjYzogbGlzdCBmb3IgZWFj
aCBwYXRjaAo+ID4gRGlkbid0IHlvdSBwbGFuIHRvIGFkZCBkbWFfbWFwX3NnYnVmIGFuZCBjbyBo
ZWxwZXI/Cj4gCj4gWWVzLCBJIGhhdmUgYSBmb2xsb3d1cCBwYXRjaGVzIGZvciB0aGF0LCBidXQg
SSB3YW50ZWQgdG8gZml4IHRoZSAKPiBleGlzdGluZyBjb2RlIGluIHRoZSBmaXJzdCBzdGVwLiBU
aGVuIEkgd2FudGVkIHRvIHNlbmQgYSB3cmFwcGVycyBhbmQgCj4gdGhlaXIgYXBwbGljYXRpb24u
IERvIHlvdSB0aGluayBJIHNob3VsZCBkbyBldmVyeXRoaW5nIGF0IG9uY2UsIGluIG9uZSAKPiBw
YXRjaHNldD8KClRoYXQgd291bGQgYmUgbXkgcHJlZmVyZW5jZS4gIFRoZSBoZWxwZXJzIHNob3Vs
ZCBiZSBtb3N0bHkgdHJpdmlhbAp3cmFwcGVycywgc28gdGhleSBjYW4gZWFzaWx5IGJhY2twb3J0
ZWQsIGFuZCB0aGV5IGZvcmNlIHBhc3Npbmcgb2YgdGhlCmNvcnJlY3QgcGFyYW1ldGVycy4gIFNv
IEkgZG9uJ3QgcmVhbGx5IHNlZSBhIG5lZWQgdG8gZml4IHVwIGFsbCB0aGUgMjArCnBsYWNlcyB1
cCBmaXJzdCBqdXN0IHRvIGNvbnZlcnQgdGhlbSB0byB0aGUgcHJvcGVyIEFQSSBhIGxpdHRsZSBs
YXRlci4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
