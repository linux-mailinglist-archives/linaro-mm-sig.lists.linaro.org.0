Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D091F1CF544
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 15:10:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7928619E9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 13:10:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DC8BD619EA; Tue, 12 May 2020 13:10:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E791F619D5;
	Tue, 12 May 2020 13:09:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AD21E61725
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 13:09:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 976D5619D5; Tue, 12 May 2020 13:09:39 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id A849D61725
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 13:09:38 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6FB5F68BEB; Tue, 12 May 2020 15:09:36 +0200 (CEST)
Date: Tue, 12 May 2020 15:09:36 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200512130936.GA24428@lst.de>
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <CGME20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0@eucas1p1.samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <20200512121808.GA20393@lst.de>
 <1a80255d-81de-2c5d-6d06-ea126fd7f994@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a80255d-81de-2c5d-6d06-ea126fd7f994@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 01/38] dma-mapping: add generic
 helpers for mapping sgtable objects
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

T24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMDM6MDA6MzFQTSArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPiA+IAlpZiAobiA8PSAwKQo+ID4gCQlyZXR1cm4gLUVJTlZBTDsKPiA+IAlzZ3Qt
Pm5lbnRzID0gbjsKPiA+IAlyZXR1cm4gMDsKPiA+Cj4gSW5kZWVkIHRoaXMgdmVyc2lvbiBsb29r
cyBtdWNoIGJldHRlci4gSSB3aWxsIHJlc2VuZCBpdCBpbiBhIGZldyBtaW51dGVzLgoKSSBjb3Vs
ZCBhbHNvIGp1c3QgZml4IGl0IHVwIHdoZW4gYXBwbHlpbmcgdGhlIHBhdGNoLgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
