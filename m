Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E23FC1CF43F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 14:20:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F24D9619AC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 12:20:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DE8D7619D5; Tue, 12 May 2020 12:20:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
	SUBJ_OBFU_PUNCT_FEW autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88CAB619D0;
	Tue, 12 May 2020 12:20:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3A1F4619D9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 12:20:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 20089619AC; Tue, 12 May 2020 12:20:04 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id C53F0619AC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 12:19:32 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6CC3968BEB; Tue, 12 May 2020 14:19:31 +0200 (CEST)
Date: Tue, 12 May 2020 14:19:31 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200512121931.GD20393@lst.de>
References: <CGME20200512085722eucas1p2fbaab30e49c9ddadc64b27db856e5921@eucas1p2.samsung.com>
 <20200512085710.14688-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512085710.14688-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 00/38] DRM: fix struct sg_table nents
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

VGhhbmtzIGZvciBkb2luZyB0aGUgd29yay4gIEknZCBsb3ZlIHRvIHB1bGwgMS0zIGludG8gYW4g
aW1tdXRhYmxlCmJyYW5jaCBhcyBzb29uIHBvc3NpYmxlLCBhcyBJIGFsc28gaGF2ZSBzb21lIHBl
bmRpbmcgd29yayB0b3VjaGluZwp0aGF0IGFyZWEuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
