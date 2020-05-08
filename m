Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6F11CA4F7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 May 2020 09:16:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92A5A60695
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 May 2020 07:16:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8619B60A78; Fri,  8 May 2020 07:16:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A75360696;
	Fri,  8 May 2020 07:16:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C576560688
 for <linaro-mm-sig@lists.linaro.org>; Fri,  8 May 2020 07:16:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AB21160696; Fri,  8 May 2020 07:16:14 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 9703560688
 for <linaro-mm-sig@lists.linaro.org>; Fri,  8 May 2020 07:16:13 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id AFF1B68B05; Fri,  8 May 2020 09:16:09 +0200 (CEST)
Date: Fri, 8 May 2020 09:16:09 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200508071609.GA31690@lst.de>
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454@eucas1p1.samsung.com>
 <20200505084614.30424-2-m.szyprowski@samsung.com>
 <20200505101508.GA14860@lst.de>
 <5dd1cb55-accb-0dc6-4ca5-90c57cd19527@samsung.com>
 <20200505110950.GA19067@lst.de>
 <b887c355-14db-ad37-0e93-733ff2249967@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b887c355-14db-ad37-0e93-733ff2249967@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 02/25] drm: core: fix common struct
 sg_table related issues
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

T24gRnJpLCBNYXkgMDgsIDIwMjAgYXQgMDk6MTI6MTNBTSArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPiBUaGVuIHdlIHdvdWxkIGp1c3QgbmVlZCBvbmUgbW9yZSBoZWxwZXIgdG8gY29u
c3RydWN0IHNjYXR0ZXJsaXN0LCBhcyB0aGUgCj4gYWJvdmUgdHdvIGFyZSByZWFkLW9ubHkgZG9u
J3QgYWxsb3cgdG8gbW9kaWZ5IHNjYXR0ZXJsaXN0Ogo+IAo+ICNkZWZpbmUgZm9yX2VhY2hfc2d0
YWJsZV9zZyhzZ3QsIHNnLCBpKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcCj4gIMKg
wqDCoMKgwqDCoCBmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+b3JpZ19uZW50cywgaSkK
PiAKPiBXaXRoIHRoZSBhYm92ZSAzIGhlbHBlcnMgd2UgY2FuIHByb2JhYmx5IGdldCByaWQgb2Yg
YWxsIGluc3RhbmNlcyBvZiAKPiBzZ190YWJsZS0+e25lbnRzLG9yaWdfbmVudHN9IGZyb20gdGhl
IERSTSBjb2RlLiBJIHdpbGwgcHJlcGFyZSBwYXRjaGVzIHNvb24uCgpTb3VuZHMgZ3JlYXQsIHRo
YW5rcyEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
