Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C320B1BC082
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 16:04:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1BB46181D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 14:04:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D52F4618F1; Tue, 28 Apr 2020 14:04:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C843A61868;
	Tue, 28 Apr 2020 14:03:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9C6AE6181D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 14:03:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8E33661868; Tue, 28 Apr 2020 14:03:22 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id B9A0860F57
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 14:03:00 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7569968CEC; Tue, 28 Apr 2020 16:02:57 +0200 (CEST)
Date: Tue, 28 Apr 2020 16:02:57 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200428140257.GA3433@lst.de>
References: <CGME20200428132022eucas1p2aa4716cbaca61c432ee8028be15fef7a@eucas1p2.samsung.com>
 <20200428132005.21424-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 amd-gfx@lists.freedesktop.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [RFC 00/17] DRM: fix struct sg_table nents vs.
 orig_nents misuse
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

T24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMDM6MTk6NDhQTSArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPiAxLiBpbnRyb2R1Y2UgYSBkbWFfe21hcCxzeW5jLHVubWFwfV9zZ3RhYmxlKCkg
d3JhcHBlcnMsIHdoaWNoIHdpbGwgdXNlCj4gICAgYSBwcm9wZXIgc2dfdGFibGUgZW50cmllcyBh
bmQgY2FsbCByZXNwZWN0aXZlIERNQS1tYXBwaW5nIGZ1bmN0aW9ucwo+ICAgIGFuZCBhZGFwdCBj
dXJyZW50IGNvZGUgdG8gaXQKClRoYXQgc291bmRzIHJlYXNvbmFibGUgdG8gbWUuICBUaG9zZSBj
b3VsZCBiZSBwcmV0dHkgdHJpdmlhbCB3cmFwcGVycy4KCj4KPiAKPiAyLiByZW5hbWUgbmVudHMg
YW5kIG9yaWdfbmVudHMgdG8gbnJfcGFnZXMsIG5yX2RtYXMgdG8gY2xlYXJseSBzdGF0ZQo+ICAg
IHdoaWNoIG9uZSByZWZlcnMgdG8gd2hpY2ggcGFydCBvZiB0aGUgc2NhdHRlcmxpc3Q7IEknbSBv
cGVuIGZvcgo+ICAgIG90aGVyIG5hbWVzIGZvciB0aG9zZSBlbnRyaWVzCgpucl9jcHVfZW50cyBh
bmQgbnJfZG1hX2VudHMgbWlnaHQgYmUgYmV0dGVyIG5hbWVzLCBidXQgaXQgc3RpbGwgd291bGQg
YmUKYSB3aG9sZSBsb3Qgb2YgY2h1cm4gZm9yIGxpdHRsZSBnYWluLiAgSSB0aGluayBqdXN0IGdv
b2Qgd3JhcHBlcnMgbGlrZQpzdWdnZXN0ZWQgYWJvdmUgbWlnaHQgYmUgbW9yZSBoZWxwZnVsLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
