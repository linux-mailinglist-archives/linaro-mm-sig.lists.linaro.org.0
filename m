Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6AD1C52CF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 12:15:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 561676186E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:15:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 46D6C66076; Tue,  5 May 2020 10:15:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A68A61999;
	Tue,  5 May 2020 10:15:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6B9C16186E
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 10:15:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4CC0F6093B; Tue,  5 May 2020 10:15:13 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id EE2E46093B
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 10:15:11 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id A96F968C4E; Tue,  5 May 2020 12:15:08 +0200 (CEST)
Date: Tue, 5 May 2020 12:15:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200505101508.GA14860@lst.de>
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454@eucas1p1.samsung.com>
 <20200505084614.30424-2-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505084614.30424-2-m.szyprowski@samsung.com>
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

PiAtCQlmb3JfZWFjaF9zZ19wYWdlKHN0LT5zZ2wsICZzZ19pdGVyLCBzdC0+bmVudHMsIDApCj4g
KwkJZm9yX2VhY2hfc2dfcGFnZShzdC0+c2dsLCAmc2dfaXRlciwgc3QtPm9yaWdfbmVudHMsIDAp
CgpXb3VsZCBpdCBtYWtlIHNlbnNlIHRvIGFsc28gYWRkIGEgZm9yX2VhY2hfc2d0YWJsZV9wYWdl
IGhlbHBlciB0aGF0CmhpZGVzIHRoZSB1c2Ugb2Ygb3JpZ19uZW50cz8gIFRvIGJlIHVzZWQgbGlr
ZToKCgkJZm9yX2VhY2hfc2d0YWJsZV9wYWdlKHN0LCAmc2dfaXRlciwgMCkgewoKPiArCWZvcl9l
YWNoX3NnKHNndC0+c2dsLCBzZywgc2d0LT5vcmlnX25lbnRzLCBjb3VudCkgewoKU2FtZSBoZXJl
LCBlLmcuCgoJZm9yX2VhY2hfc2d0YWJsZV9lbnRyeShzZ3QsIHNnLCBjb3VudCkgewoKPwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
