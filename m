Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 292251D1725
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:11:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 503196085C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:11:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 432C665F8A; Wed, 13 May 2020 14:11:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1AFD65F92;
	Wed, 13 May 2020 13:49:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CBB4665F92
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:49:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BC99D65F95; Wed, 13 May 2020 13:49:18 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 6108D66031
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:47:44 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 643AB68BEB; Wed, 13 May 2020 15:47:41 +0200 (CEST)
Date: Wed, 13 May 2020 15:47:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200513134741.GA12712@lst.de>
References: <CGME20200513132127eucas1p23f6be10bbd627e69e36d2451068b3204@eucas1p2.samsung.com>
 <20200513132114.6046-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513132114.6046-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v5 00/38] DRM: fix struct sg_table nents
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

SSd2ZSBwdXNoZWQgb3V0IGEgYnJhbmNoIHdpdGggdGhlIGZpcnN0IHRocmVlIHBhdGNoZXMgaGVy
ZToKCiAgIGdpdDovL2dpdC5pbmZyYWRlYWQub3JnL3VzZXJzL2hjaC9kbWEtbWFwcGluZy5naXQg
ZG1hLXNnX3RhYmxlLWhlbHBlcgoKR2l0d2ViOgoKICAgaHR0cDovL2dpdC5pbmZyYWRlYWQub3Jn
L3VzZXJzL2hjaC9kbWEtbWFwcGluZy5naXQvc2hvcnRsb2cvcmVmcy9oZWFkcy9kbWEtc2dfdGFi
bGUtaGVscGVyCgphbmQgbWVyZ2VkIGl0IGludG8gdGhlIGRtYS1tYXBwaW5nIGZvci1uZXh0IHRy
ZWUuICBVbmxlc3Mgc29tZW9uZSBzaG91dHMKdGhlIGJyYW5jaCBzaG91bGQgYmUgY29uc2lkZXJl
ZCBpbW11dGFibGUgaW4gMjQgaG91cnMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
