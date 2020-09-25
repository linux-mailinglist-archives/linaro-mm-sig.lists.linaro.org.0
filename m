Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 82241279344
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Sep 2020 23:24:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACB27665D5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Sep 2020 21:24:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9A32966604; Fri, 25 Sep 2020 21:24:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 734A6665F3;
	Fri, 25 Sep 2020 21:23:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 62CF8665D5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Sep 2020 21:23:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4FF8C66583; Fri, 25 Sep 2020 21:23:27 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id EB6FF66583
 for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Sep 2020 21:23:25 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id k15so5336382wrn.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Sep 2020 14:23:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xu3WUdYX5svcbV4xrw1b6YX5aAbNB7AgpH2Adx4jZFo=;
 b=L/rnERdpnKNkUpMJ9lSDDnbgrjp37ruz3Wnegx9YeqeR8IEmawD5wUbYPp58HY8h7M
 z9+/6U3EWbNgblgCG0IqtlXwjRjQWcRGOfX5Bs83/taaZNMggqZ+/hSlAg7I6KRBjGS+
 q0bbDq/x68ott8uqXLfFF2mHGyfLnqMu8b+Ar/fo60/J3/1QURCxOwr41gleiwsuVfoP
 OkiV+4WcUVLO3G+rmlo/BHZZuLZq4epSclNVjue0gUPpFsvZ2Q/fLOCq3zMecodoVKlk
 TzVE23Gl6lCXGojD2OLxLCv60AHiToj6XzIfKOxPmyJ+2CdyLixDnt9rBr+8twxMf0vB
 96BQ==
X-Gm-Message-State: AOAM530f/dPjoAbFKEtgqazfv4Ik3DvPMQlGSB//VOgso3qJxCWNhBT/
 JpDc8UnHjd9pYXw+rsDZWF883b469qf7oy+H2Po=
X-Google-Smtp-Source: ABdhPJwCPyTdQSA04vqPSfWKSY3pipKmyGpRObz8EdYnATmeFvpcGyznCvz/MGH6xrabFJhMlum7YCBfq8aVNQdHzTI=
X-Received: by 2002:adf:fc0a:: with SMTP id i10mr6384708wrr.111.1601069005049; 
 Fri, 25 Sep 2020 14:23:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133259eucas1p273f0e05005b7b1158d884295d35745fd@eucas1p2.samsung.com>
 <20200513133245.6408-5-m.szyprowski@samsung.com>
 <alpine.DEB.2.20.2009211803580.19454@agoins-DiGiTS>
 <afb59d1b-1fcf-fd6d-2b48-e078e129f1eb@samsung.com>
In-Reply-To: <afb59d1b-1fcf-fd6d-2b48-e078e129f1eb@samsung.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 25 Sep 2020 17:23:14 -0400
Message-ID: <CADnq5_OP4pEg7Cg9E=TUB0viSX8rTALQoFck=ueTh=phTtUfEA@mail.gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Alex Goins <agoins@nvidia.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Linaro-mm-sig] [PATCH v5 05/38] drm: prime: use sgtable
 iterators in drm_prime_sg_to_page_addr_arrays()
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

T24gVHVlLCBTZXAgMjIsIDIwMjAgYXQgMjoyOCBBTSBNYXJlayBTenlwcm93c2tpCjxtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+Cj4gSGkgQWxleCwKPgo+IE9uIDIyLjA5LjIwMjAg
MDE6MTUsIEFsZXggR29pbnMgd3JvdGU6Cj4gPiBUZXN0ZWQtYnk6IEFsZXggR29pbnMgPGFnb2lu
c0BudmlkaWEuY29tPgo+ID4KPiA+IFRoaXMgY2hhbmdlIGZpeGVzIGEgcmVncmVzc2lvbiB3aXRo
IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKCkgYW5kCj4gPiBBTURHUFUgaW4gdjUu
OS4KPgo+IFRoYW5rcyBmb3IgdGVzdGluZyEKPgo+ID4gQ29tbWl0IDM5OTEzOTM0IHNpbWlsYXJs
eSByZXZhbXBlZCBBTURHUFUgdG8gdXNlIHNndGFibGUgaGVscGVyIGZ1bmN0aW9ucy4gV2hlbgo+
ID4gaXQgY2hhbmdlZCBmcm9tIGRtYV9tYXBfc2dfYXR0cnMoKSB0byBkbWFfbWFwX3NndGFibGUo
KSwgYXMgYSBzaWRlIGVmZmVjdCBpdAo+ID4gc3RhcnRlZCBjb3JyZWN0bHkgdXBkYXRpbmcgc2d0
LT5uZW50cyB0byB0aGUgcmV0dXJuIHZhbHVlIG9mIGRtYV9tYXBfc2dfYXR0cnMoKS4KPiA+IEhv
d2V2ZXIsIGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKCkgaW5jb3JyZWN0bHkgdXNl
cyBzZ3QtPm5lbnRzIHRvCj4gPiBpdGVyYXRlIG92ZXIgcGFnZXMsIHJhdGhlciB0aGFuIHNndC0+
b3JpZ19uZW50cywgcmVzdWx0aW5nIGluIGl0IG5vdyByZXR1cm5pbmcKPiA+IHRoZSBpbmNvcnJl
Y3QgbnVtYmVyIG9mIHBhZ2VzIG9uIEFNREdQVS4KPiA+Cj4gPiBJIGhhZCB3cml0dGVuIGEgcGF0
Y2ggdGhhdCBjaGFuZ2VzIGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKCkgdG8gdXNl
Cj4gPiBmb3JfZWFjaF9zZ3RhYmxlX3NnKCkgaW5zdGVhZCBvZiBmb3JfZWFjaF9zZygpLCBpdGVy
YXRpbmcgdXNpbmcgc2d0LT5vcmlnX25lbnRzOgo+ID4KPiA+IC0gICAgICAgZm9yX2VhY2hfc2co
c2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBjb3VudCkgewo+ID4gKyAgICAgICBmb3JfZWFjaF9z
Z3RhYmxlX3NnKHNndCwgc2csIGNvdW50KSB7Cj4gPgo+ID4gVGhpcyBwYXRjaCB0YWtlcyBpdCBm
dXJ0aGVyLCBidXQgc3RpbGwgaGFzIHRoZSBlZmZlY3Qgb2YgZml4aW5nIHRoZSBudW1iZXIgb2YK
PiA+IHBhZ2VzIHRoYXQgZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoKSByZXR1cm5z
LiBTb21ldGhpbmcgbGlrZSB0aGlzCj4gPiBzaG91bGQgYmUgaW5jbHVkZWQgaW4gdjUuOSB0byBw
cmV2ZW50IGEgcmVncmVzc2lvbiB3aXRoIEFNREdQVS4KPgo+IFByb2JhYmx5IHRoZSBlYXNpZXN0
IHdheSB0byBoYW5kbGUgYSBmaXggZm9yIHY1Ljkgd291bGQgYmUgdG8gc2ltcGx5Cj4gbWVyZ2Ug
dGhlIGxhdGVzdCB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2ggYWxzbyB0byB2NS45LXJjWDoKPiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMDA5MDQxMzE3MTEuMTI5NTAtMy1tLnN6
eXByb3dza2lAc2Ftc3VuZy5jb20vCj4KPgo+IFRoaXMgd2F5IHdlIHdvdWxkIGdldCBpdCBmaXhl
ZCBhbmQgYXZvaWQgcG9zc2libGUgY29uZmxpY3QgaW4gdGhlIC1uZXh0Lgo+IERvIHlvdSBoYXZl
IGFueSBBTURHUFUgZml4ZXMgZm9yIHY1LjkgaW4gdGhlIHF1ZXVlPyBNYXliZSB5b3UgY2FuIGFk
ZAo+IHRoYXQgcGF0Y2ggdG8gdGhlIHF1ZXVlPyBEYXZlOiB3b3VsZCBpdCBiZSBva2F5IHRoYXQg
d2F5PwoKSSB0aGluayB0aGlzIHNob3VsZCBnbyBpbnRvIGRybS1taXNjIGZvciA1Ljkgc2luY2Ug
aXQncyBhbiB1cGRhdGUgdG8KZHJtX3ByaW1lLmMuICBJcyB0aGF0IHBhdGNoIHJlYWR5IHRvIG1l
cmdlPwpBY2tlZC1ieTogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgoK
QWxleAoKPgo+IEJlc3QgcmVnYXJkcwo+IC0tCj4gTWFyZWsgU3p5cHJvd3NraSwgUGhECj4gU2Ft
c3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdAo+IExpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IGh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
