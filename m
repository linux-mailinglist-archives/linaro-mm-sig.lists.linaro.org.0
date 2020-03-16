Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D523186839
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Mar 2020 10:52:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B9E360B64
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Mar 2020 09:52:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2E5DF617F7; Mon, 16 Mar 2020 09:52:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6EBD6176E;
	Mon, 16 Mar 2020 09:52:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DDB4260B64
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2020 09:52:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C6C446176E; Mon, 16 Mar 2020 09:52:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id EB64A60B64
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2020 09:52:19 +0000 (UTC)
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jDmPt-0006MG-C7; Mon, 16 Mar 2020 09:52:13 +0000
Date: Mon, 16 Mar 2020 02:52:13 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20200316095213.GA29212@infradead.org>
References: <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
 <20200312101943.GA14618@infradead.org>
 <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
 <20200312104729.GA26031@infradead.org>
 <20200312141928.GK31668@ziepe.ca>
 <20200313112139.GA4913@infradead.org>
 <20200313121742.GZ31668@ziepe.ca>
 <20200316085642.GC1831@infradead.org>
 <eb567569-426a-0845-b443-a20155897705@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb567569-426a-0845-b443-a20155897705@amd.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, David1.Zhou@amd.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 daniel@ffwll.ch, Logan Gunthorpe <logang@deltatee.com>,
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

T24gTW9uLCBNYXIgMTYsIDIwMjAgYXQgMTA6NDE6NDJBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBXZWxsIEkgd291bGQgcHJlZmVyIGlmIHRoZSBkcml2ZXJzIGNhbiBzb21laG93
IGV4cHJlc3MgdGhlaXIgcmVxdWlyZW1lbnRzCj4gYW5kIGdldCBJT1ZBIHN0cnVjdHVyZXMgYWxy
ZWFkeSBpbiB0aGUgZm9ybSB0aGV5IG5lZWQuCj4gCj4gQ29udmVydGluZyB0aGUgSU9WQSBkYXRh
IGZyb20gb25lIGZvcm0gdG8gYW5vdGhlciBpcyBzb21ldGltZXMgcXVpdGUgY29zdGx5Lgo+IEVz
cGVjaWFsbHkgd2hlbiBpdCBpcyBvbmx5IHRlbXBvcmFyaWx5IG5lZWRlZC4KCldlIGJhc2ljYWxs
eSBoYXZlIHR3byB3YXlzIHRvIGdlbmVyYXRlIHRoZSBJT1ZBOgoKICAtIGEgbGluZWFyIHRyYW5z
bGF0aW9uIGZvciB0aGUgZGlyZWN0IG1hcHBpbmcgY2FzZSBvciBzb21lIGR1bWIgSU9NTVUKICAg
IGRyaXZlcnMgLSBpbiB0aGF0IGNhc2UgY2FzZSB0aGVyZSBpcyBhIDE6MSBtYXBwaW5nIGJldHdl
ZW4gaW5wdXQKICAgIHNlZ21lbnRzIGFuZCBvdXRwdXQgc2VnbWVudHMgaW4gRE1BIG1hcHBpbmcK
ICAtIGEgbm9uLXRyaXZpYWwgSU9NTVUgd2hlcmUgYWxsIGFsaWduZWQgc2VnbWVudHMgYXJlIG1l
cmdlZCBpbnRvCiAgICBhIHNpbmdsZSBJT1ZBIHJhbmdlCgpTbyBJIGRvbid0IHJlYWxseSBzZWUg
aG93IHRoZSBkbWEgbGF5ZXIgY291bGQgaGVscCBtdWNoIHdpdGggYW55CmxpbWl0YXRpb24gYmV5
b25kIGV4aXN0aW5nIG1heCBzaXplIGFuZCBkbWEgYm91bmRhcnkgb25lcy4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
