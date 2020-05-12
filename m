Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2731CF43B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 14:20:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6FAD619DA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 12:20:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CB731619D9; Tue, 12 May 2020 12:20:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 178B6619D7;
	Tue, 12 May 2020 12:19:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 550E5619D0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 12:19:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4A225619AC; Tue, 12 May 2020 12:19:00 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id B94D4619AC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 12:18:50 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 543D768BEB; Tue, 12 May 2020 14:18:49 +0200 (CEST)
Date: Tue, 12 May 2020 14:18:49 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200512121849.GC20393@lst.de>
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe@eucas1p2.samsung.com>
 <20200512090058.14910-3-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512090058.14910-3-m.szyprowski@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 03/38] iommu: add generic helper for
 mapping sgtable objects
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

T24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMTE6MDA6MjNBTSArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPiBzdHJ1Y3Qgc2dfdGFibGUgaXMgYSBjb21tb24gc3RydWN0dXJlIHVzZWQgZm9y
IGRlc2NyaWJpbmcgYSBtZW1vcnkKPiBidWZmZXIuIEl0IGNvbnNpc3RzIG9mIGEgc2NhdHRlcmxp
c3Qgd2l0aCBtZW1vcnkgcGFnZXMgYW5kIERNQSBhZGRyZXNzZXMKPiAoc2dsIGVudHJ5KSwgYXMg
d2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJpZXM6IENQVSBwYWdlcwo+IChv
cmlnX25lbnRzIGVudHJ5KSBhbmQgRE1BIG1hcHBlZCBwYWdlcyAobmVudHMgZW50cnkpLgo+IAo+
IEl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0byBtaXN1c2UgbmVu
dHMgYW5kIG9yaWdfbmVudHMKPiBlbnRyaWVzLCBjYWxsaW5nIG1hcHBpbmcgZnVuY3Rpb25zIHdp
dGggYSB3cm9uZyBudW1iZXIgb2YgZW50cmllcy4KPiAKPiBUbyBhdm9pZCBzdWNoIGlzc3Vlcywg
bGV0cyBpbnRyb2R1Y2UgYSBjb21tb24gd3JhcHBlciBvcGVyYXRpbmcgZGlyZWN0bHkKPiBvbiB0
aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMsIHdoaWNoIHRha2UgY2FyZSBvZiB0aGUgcHJvcGVy
IHVzZSBvZgo+IHRoZSBuZW50cyBhbmQgb3JpZ19uZW50cyBlbnRyaWVzLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KCkxvb2tz
IGdvb2QsCgpSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
