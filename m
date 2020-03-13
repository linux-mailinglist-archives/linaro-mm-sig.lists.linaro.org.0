Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 389801845D7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Mar 2020 12:22:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69AE76199A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Mar 2020 11:22:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5A6E865FBF; Fri, 13 Mar 2020 11:22:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D380F619E2;
	Fri, 13 Mar 2020 11:21:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D9E2A6195D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Mar 2020 11:21:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C3B64619E2; Fri, 13 Mar 2020 11:21:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id B58AB6195D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Mar 2020 11:21:42 +0000 (UTC)
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jCiNn-0002g5-RY; Fri, 13 Mar 2020 11:21:39 +0000
Date: Fri, 13 Mar 2020 04:21:39 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200313112139.GA4913@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
 <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
 <20200312101943.GA14618@infradead.org>
 <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
 <20200312104729.GA26031@infradead.org>
 <20200312141928.GK31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312141928.GK31668@ziepe.ca>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David1.Zhou@amd.com, Logan Gunthorpe <logang@deltatee.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, daniel@ffwll.ch,
 linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/6] lib/scatterlist: add
	sg_set_dma_addr() function
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

T24gVGh1LCBNYXIgMTIsIDIwMjAgYXQgMTE6MTk6MjhBTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IFRoZSBub24tcGFnZSBzY2F0dGVybGlzdCBpcyBhbHNvIGEgYmlnIGNvbmNlcm4g
Zm9yIFJETUEgYXMgd2UgaGF2ZQo+IGRyaXZlcnMgdGhhdCB3YW50IHRoZSBwYWdlIGxpc3QsIHNv
IGV2ZW4gaWYgd2UgZGlkIGFzIHRoaXMgc2VyaWVzCj4gY29udGVtcGxhdGVzIEknZCBoYXZlIHN0
aWxsIGhhdmUgdG8gc3BsaXQgdGhlIGRyaXZlcnMgYW5kIGNyZWF0ZSB0aGUKPiBub3Rpb24gb2Yg
YSBkbWEtb25seSBTR0wuCgpUaGUgZHJpdmVycyBJIGxvb2tlZCBhdCB3YW50IGEgbGlzdCBvZiBJ
T1ZBIGFkZHJlc3MsIGFsaWduZWQgdG8gdGhlCmRldmljZSAicGFnZSBzaXplIi4gIFdoYXQgb3Ro
ZXIgZGF0YSBkbyBkcml2ZXJzIHdhbnQ/ICBFeGVjZXB0IGZvciB0aGUKc29mdHdhcmUgcHJvdG9j
b2wgc3RhY2sgZHJpdmVycywgd2hpY2ggb2YgY291c2UgbmVlZCBwYWdlcyBmb3IgdGhlCnN0YWNr
IGZ1dGhlciBkb3duLgoKPiBJIGhhdmVuJ3QgdXNlZCBiaW9fdmVjcyBiZWZvcmUsIGRvIHRoZXkg
c3VwcG9ydCBjaGFpbmluZyBsaWtlIFNHTCBzbwo+IHRoZXkgY2FuIGJlIHZlcnkgYmlnPyBSRE1B
IGRtYSBtYXBzIGdpZ2FieXRlcyBvZiBtZW1vcnkKCmJpb192ZWNzIGl0c2VsZiBkb24ndCBoYXZl
IHRoZSBjaGFpbmluZywgYnV0IHRoZSBiaW9zIGJ1aWxkIGFyb3VuZCB0aGVtCmRvLiAgQnV0IGVh
Y2ggZW50cnkgY2FuIG1hcCBhIGh1Z2UgcGlsZS4gIElmIG5lZWRlZCB3ZSBjb3VsZCB1c2UgdGhl
CnNhbWUgY2hhaW5pbmcgc2NoZW1lIHdlIHVzZSBmb3Igc2NhdHRlcmxpc3RzIGZvciBiaW9fdmVj
cyBhcyB3ZWxsLCBidXQKbGV0cyBzZWUgaWYgd2UgcmVhbGx5IGVuZCB1cCBuZWVkaW5nIHRoYXQu
Cgo+IFNvIEknbSBndWVzc2luZyB0aGUgcGF0aCBmb3J3YXJkIGlzIHNvbWV0aGluZyBsaWtlCj4g
Cj4gIC0gQWRkIHNvbWUgZ2VuZXJpYyBkbWFfc2cgZGF0YSBzdHJ1Y3R1cmUgYW5kIGhlbHBlcgo+
ICAtIEFkZCBkbWEgbWFwcGluZyBjb2RlIHRvIGdvIGZyb20gcGFnZXMgdG8gZG1hX3NnCgpUaGF0
IGhhcyBiZWVuIG9uIG15IHRvZG8gbGlzdCBmb3IgYSB3aGlsZS4gIEFsbCB0aGUgRE1BIGNvbnNv
bGlkYXRhdGlvbgppcyB0byBwcmVwYXJlIGZvciB0aGF0IGFuZCB3ZSdyZSBmaW5hbGx5IGdldHRp
bmcgY2xvc2UuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
