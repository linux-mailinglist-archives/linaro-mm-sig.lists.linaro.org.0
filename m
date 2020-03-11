Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6E8181C51
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 16:29:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8ABD265FD3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 15:29:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7D80165FD8; Wed, 11 Mar 2020 15:29:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB55F65FCC;
	Wed, 11 Mar 2020 15:29:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F24CD618E3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 15:28:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E33D5609BE; Wed, 11 Mar 2020 15:28:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id A0E22609BE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 15:28:43 +0000 (UTC)
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jC3Hi-0006RL-K0; Wed, 11 Mar 2020 15:28:38 +0000
Date: Wed, 11 Mar 2020 08:28:38 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20200311152838.GA24280@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311135158.3310-2-christian.koenig@amd.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David1.Zhou@amd.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, hch@infradead.org, jgg@ziepe.ca,
 daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
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

T24gV2VkLCBNYXIgMTEsIDIwMjAgYXQgMDI6NTE6NTNQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBUaGlzIGNhbiBiZSB1c2VkIGJ5IGRyaXZlcnMgdG8gc2V0dXAgUDJQIERNQSBi
ZXR3ZWVuIGRldmljZQo+IG1lbW9yeSB3aGljaCBpcyBub3QgYmFja2VkIGJ5IHN0cnVjdCBwYWdl
cy4KPiAKPiBUaGUgZHJpdmVycyBvZiB0aGUgaW52b2x2ZWQgZGV2aWNlcyBhcmUgcmVzcG9uc2li
bGUgZm9yCj4gc2V0dGluZyB1cCBhbmQgdGVhcmluZyBkb3duIERNQSBhZGRyZXNzZXMgYXMgbmVj
ZXNzYXJ5Cj4gdXNpbmcgZG1hX21hcF9yZXNvdXJjZSgpLgo+IAo+IFRoZSBwYWdlIHBvaW50ZXIg
aXMgc2V0IHRvIE5VTEwgYW5kIG9ubHkgdGhlIERNQSBhZGRyZXNzLAo+IGxlbmd0aCBhbmQgb2Zm
c2V0IHZhbHVlcyBhcmUgdmFsaWQuCgpOQUsuICBUaGUgb25seSB2YWxpZCB3YXkgdG8gZmlsbCBE
TUEgYWRkcmVzcyBpbiBzY2F0dGVybGlzdHMgaXMKZG1hX21hcF9zZyAvIGRtYV9tYXBfc2dfYXR0
ci4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
