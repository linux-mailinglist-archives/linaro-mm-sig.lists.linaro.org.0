Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C96318672E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Mar 2020 09:57:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39B6261816
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Mar 2020 08:57:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2DA476182C; Mon, 16 Mar 2020 08:57:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 392C26176E;
	Mon, 16 Mar 2020 08:56:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 543E460961
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2020 08:56:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 44C54615EF; Mon, 16 Mar 2020 08:56:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 34DEC60961
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2020 08:56:46 +0000 (UTC)
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jDlYB-0004si-0O; Mon, 16 Mar 2020 08:56:43 +0000
Date: Mon, 16 Mar 2020 01:56:42 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200316085642.GC1831@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
 <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
 <20200312101943.GA14618@infradead.org>
 <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
 <20200312104729.GA26031@infradead.org>
 <20200312141928.GK31668@ziepe.ca>
 <20200313112139.GA4913@infradead.org>
 <20200313121742.GZ31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313121742.GZ31668@ziepe.ca>
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

T24gRnJpLCBNYXIgMTMsIDIwMjAgYXQgMDk6MTc6NDJBTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIEZyaSwgTWFyIDEzLCAyMDIwIGF0IDA0OjIxOjM5QU0gLTA3MDAsIENocmlz
dG9waCBIZWxsd2lnIHdyb3RlOgo+ID4gT24gVGh1LCBNYXIgMTIsIDIwMjAgYXQgMTE6MTk6MjhB
TSAtMDMwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOgo+ID4gPiBUaGUgbm9uLXBhZ2Ugc2NhdHRl
cmxpc3QgaXMgYWxzbyBhIGJpZyBjb25jZXJuIGZvciBSRE1BIGFzIHdlIGhhdmUKPiA+ID4gZHJp
dmVycyB0aGF0IHdhbnQgdGhlIHBhZ2UgbGlzdCwgc28gZXZlbiBpZiB3ZSBkaWQgYXMgdGhpcyBz
ZXJpZXMKPiA+ID4gY29udGVtcGxhdGVzIEknZCBoYXZlIHN0aWxsIGhhdmUgdG8gc3BsaXQgdGhl
IGRyaXZlcnMgYW5kIGNyZWF0ZSB0aGUKPiA+ID4gbm90aW9uIG9mIGEgZG1hLW9ubHkgU0dMLgo+
ID4gCj4gPiBUaGUgZHJpdmVycyBJIGxvb2tlZCBhdCB3YW50IGEgbGlzdCBvZiBJT1ZBIGFkZHJl
c3MsIGFsaWduZWQgdG8gdGhlCj4gPiBkZXZpY2UgInBhZ2Ugc2l6ZSIuICBXaGF0IG90aGVyIGRh
dGEgZG8gZHJpdmVycyB3YW50PyAgRXhlY2VwdCBmb3IgdGhlCj4gPiBzb2Z0d2FyZSBwcm90b2Nv
bCBzdGFjayBkcml2ZXJzLCB3aGljaCBvZiBjb3VzZSBuZWVkIHBhZ2VzIGZvciB0aGUKPiA+IHN0
YWNrIGZ1dGhlciBkb3duLgo+IAo+IEluIHByaW5jaXBsZSBpdCBpcyBwb3NzaWJsZSB0byBoYXZl
IGp1c3QgYW4gYWxpZ25lZCBwYWdlIGxpc3QgLQo+IGhvd2V2ZXIgdGhlIHBhZ2Ugc2l6ZSBpcyB2
YXJpYWJsZSwgZm9sbG93aW5nIGNlcnRhaW4gcnVsZXMsIGFuZCB0b2RheQo+IHRoZSBkcml2ZXJz
IHN0aWxsIGRldGVybWluZSB0aGUgY29ycmVjdCBwYWdlIHNpemUgbGFyZ2VseSBvbiB0aGVpcgo+
IG93bi4gIAo+IAo+IFNvbWUgcHJvZ3Jlc3Mgd2FzIG1hZGUgcmVjZW50bHkgdG8gY29uc29saWRh
dGUgdGhpcywgYnV0IG1vcmUgaXMKPiBuZWVkZWQuCj4gCj4gSWYgdGhlIGNvbW1vbiBjb2RlIGRv
ZXNuJ3Qga25vdyB0aGUgZGV2aWNlIHBhZ2Ugc2l6ZSBpbiBhZHZhbmNlIHRoZW4KPiB0b2RheSdz
IGFwcHJvYWNoIG9mIHNlbmRpbmcgbGFyZ2VzdCBwb3NzaWJsZSBkbWEgbWFwcGVkIFNHTHMgaW50
byB0aGUKPiBkZXZpY2UgZHJpdmVyIGlzIGJlc3QuIFRoZSBkcml2ZXIgb25seSBoYXMgdG8gZG8g
c3BsaXR0aW5nLgoKVGhlIHBvaW50IHdhcyB0aGF0IGRyaXZlcnMgZG9uJ3QgbmVlZCBwYWdlcywg
ZHJpdmVycyBuZWVkIElPVkFzLiAgSW4Kd2hhdCBmb3JtIHRoZXkgYXJlIHN0dWZmZWQgaW50byB0
aGUgaGFyZHdhcmUgaXMgdGhlIGRyaXZlcnMgcHJvYmxlbS4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
