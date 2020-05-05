Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D421C5311
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 12:23:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C857261999
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:23:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BCD2266055; Tue,  5 May 2020 10:23:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A6F566072;
	Tue,  5 May 2020 10:22:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 93A3F61999
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 10:22:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 880D166072; Tue,  5 May 2020 10:22:38 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 4551D61999
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 10:22:37 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id AC3CE68C4E; Tue,  5 May 2020 12:22:34 +0200 (CEST)
Date: Tue, 5 May 2020 12:22:34 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200505102234.GA15038@lst.de>
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <CGME20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050@eucas1p2.samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 01/25] dma-mapping: add generic
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

PiArc3RhdGljIGlubGluZSBpbnQgZG1hX21hcF9zZ3RhYmxlX2F0dHJzKHN0cnVjdCBkZXZpY2Ug
KmRldiwKPiArCXN0cnVjdCBzZ190YWJsZSAqc2d0LCBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBk
aXIsIHVuc2lnbmVkIGxvbmcgYXR0cnMpCgpUd28gdGFiIGluZGVudHMgZm9yIHBhcmFtZXRlciBj
b250aW51YXRpb24sIHBsZWFzZS4KCkNhbiB3ZSBhbHNvIHNraXAgdGhlIHNlcGFyYXRlIF9hdHRy
cyB2ZXJzaW9uPyAgVGhlIGV4aXN0aW5nIG9uZXMgaGF2ZSB0aGUKc2VwYXJhdGUgX2F0dHJzIHZh
cmlhbnQgYXMgdGhlcmUgd2VyZSBwcmUtZXhpc3RpbmcgdmVyc2lvbnMgd2l0aG91dCB0aGUKYXR0
cnMgYXJndW1lbnQgYW5kIGxvdHMgb2YgdXNlcnMsIGJ1dCB0aGF0IGRvZXNuJ3QgcmVhbGx5IGFw
cGx5IGhlcmUgYXMKYW4gZXh0cmEgMCBhcmd1bWVudCBpc24ndCByZWFsbHkgYW4gaXNzdWUuCgo+
ICtzdGF0aWMgaW5saW5lIHNpemVfdCBpb21tdV9tYXBfc2d0YWJsZShzdHJ1Y3QgaW9tbXVfZG9t
YWluICpkb21haW4sCj4gKwkJCXVuc2lnbmVkIGxvbmcgaW92YSwgc3RydWN0IHNnX3RhYmxlICpz
Z3QsIGludCBwcm90KQo+ICt7Cj4gKwlyZXR1cm4gaW9tbXVfbWFwX3NnKGRvbWFpbiwgaW92YSwg
c2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywgcHJvdCk7Cj4gK30KClNob3VsZCB0aGlzIGJlIGEg
c2VwYXJhdGUgcGF0Y2ggZHVlIHRvIHRoZSBkaWZmZXJlbnQgc3Vic3lzdGVtcz8KCkZZSSwgSSds
bCBoYXBwaWx5IHBpY2sgdXAgdGhlIHByZXAgcGF0Y2hlcyBpbiBhbiBpbW11dGFibGUgYnJhbmNo
IG9mCnRoZSBkbWEtbWFwcGluZyB0cmVlIG9uZSB3ZSBoYXZlIHNldHRsZWQgb24gdGhlIGRldGFp
bHMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
