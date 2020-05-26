Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 791751E20E4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 May 2020 13:32:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D60B6164D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 May 2020 11:32:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8ED65618F4; Tue, 26 May 2020 11:32:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5402161943;
	Tue, 26 May 2020 11:32:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9BA3D6164D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 May 2020 11:32:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8497261943; Tue, 26 May 2020 11:32:00 +0000 (UTC)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by lists.linaro.org (Postfix) with ESMTPS id 7C4CF6164D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 May 2020 11:31:59 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id 69so15976612otv.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 May 2020 04:31:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=edTucrrhXN6V4llb+iJ6E89JH542mkCUYUO4cFFBSq8=;
 b=ikQLnzG8ArzR/E5ggLLa/IoQAxYJjFrxJwKspUnaCVNp+EQV93C8frTqdYv56ILYQO
 av+Y8EPWyZ4B4UuSRiPYY+59Z022bU/xlPRDbkyVE/xS7alcIS0/CRSrugGUEuwDVVKd
 /Yb4iDGJMMxG7/SLrQt9T9JEGM3wxwXo2hQePB2ty4tnfP71bxYhxAdN9N5/wAVAdVhy
 vkzbvsepmtxbjkdfGibw41o9OzpfXnO9XHtvUwzLLZ0dyP2zLGelanpUQfORJXCUnMlY
 hDpaDeiE/1Vs2YCLPmoMAdE04GYrFR6yCZj6TUIjo27SlNrxN57qYULT0BY58x0hsEJq
 ditQ==
X-Gm-Message-State: AOAM532y5/QNt6e+UH1s/OEfYZTC8wpaMgACASk/51dbmdK9FSptuQwd
 H1KRZyPofSp2g45n+QAWyVB0co1KQEjH33rBP7PTEQ==
X-Google-Smtp-Source: ABdhPJzCrvWpIr7oiZie/ZO14zr8xx2eKHZLh/b7YFaD0J7MeUVnKhbsTaugx/2157KZB7xg+CLgr312FbFucLK+W50=
X-Received: by 2002:a9d:600e:: with SMTP id h14mr497056otj.281.1590492719014; 
 Tue, 26 May 2020 04:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200513132127eucas1p23f6be10bbd627e69e36d2451068b3204@eucas1p2.samsung.com>
 <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513134741.GA12712@lst.de>
 <83d04017-c6f2-d714-963c-ffa9c7248790@samsung.com>
In-Reply-To: <83d04017-c6f2-d714-963c-ffa9c7248790@samsung.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 26 May 2020 13:31:47 +0200
Message-ID: <CAKMK7uFkvhytb9vKng+2_LuaLFvnEB_5e2s5EAWnVgA9VjRwZA@mail.gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
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

T24gVHVlLCBNYXkgMjYsIDIwMjAgYXQgOTowMSBBTSBNYXJlayBTenlwcm93c2tpCjxtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+Cj4gSGkKPgo+IE9uIDEzLjA1LjIwMjAgMTU6NDcs
IENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+ID4gSSd2ZSBwdXNoZWQgb3V0IGEgYnJhbmNoIHdp
dGggdGhlIGZpcnN0IHRocmVlIHBhdGNoZXMgaGVyZToKPiA+Cj4gPiAgICAgZ2l0Oi8vZ2l0Lmlu
ZnJhZGVhZC5vcmcvdXNlcnMvaGNoL2RtYS1tYXBwaW5nLmdpdCBkbWEtc2dfdGFibGUtaGVscGVy
Cj4gPgo+ID4gR2l0d2ViOgo+ID4KPiA+ICAgICBodHRwOi8vZ2l0LmluZnJhZGVhZC5vcmcvdXNl
cnMvaGNoL2RtYS1tYXBwaW5nLmdpdC9zaG9ydGxvZy9yZWZzL2hlYWRzL2RtYS1zZ190YWJsZS1o
ZWxwZXIKPiA+Cj4gPiBhbmQgbWVyZ2VkIGl0IGludG8gdGhlIGRtYS1tYXBwaW5nIGZvci1uZXh0
IHRyZWUuICBVbmxlc3Mgc29tZW9uZSBzaG91dHMKPiA+IHRoZSBicmFuY2ggc2hvdWxkIGJlIGNv
bnNpZGVyZWQgaW1tdXRhYmxlIGluIDI0IGhvdXJzLgo+Cj4gRGF2aWQgJiBEYW5pZWw6IGNvdWxk
IHlvdSBtZXJnZSBhbGwgdGhlIERSTSByZWxhdGVkIGNoYW5nZXMgb24gdG9wIG9mCj4gdGhlIHBy
b3ZpZGVkIGJyYW5jaD8gTWVyZ2luZyB0aG9zZSBjaGFuZ2VzIHNlcGFyYXRlbHkgd291bGQgdGFr
ZSBhIGxvdHMKPiBvZiB0aW1lIGJlY2F1c2Ugb2YgdGhlIGRlcGVuZGVuY2llcyBvbiB0aGUgc2d0
YWJsZSBoZWxwZXJzIGFuZCBjaGFuZ2VzCj4gaW4gdGhlIERSTSBjb3JlLgoKV2UgZ2VuZXJhbGx5
IGZyZWV6ZSBkcm0gZm9yIGJpZyByZXdvcmsgcGFzdCAtcmM2IChzbWFsbCBkcml2ZXJzIHRlbmQK
dG8gYmUgYSBiaXQgbGF0ZXIpLiBJIHRoaW5rIHNpbXBsZXIgaWYgd2UganVzdCBsYW5kIHRoaXMg
aW4gdGhlIG1lcmdlCndpbmRvdyBhbmQgdGhlbiBzbWFzaCB0aGUgZHJtIHBhdGNoZXMgb24gdG9w
IGZvciA1LjkgbWVyZ2Ugd2luZG93LgoKT3IgYWxsIGluIGluIHRoZSBzYW1lIHRvcGljIGJyYW5j
aCwgYnV0IGZlZWxzIGEgYml0IGxhdGUgZm9yIHRoYXQgYW5kCm1ha2luZyBzdXJlIG5vdGhpbmcg
YnJlYWtzLgotRGFuaWVsCgo+Cj4gQmVzdCByZWdhcmRzCj4gLS0KPiBNYXJlayBTenlwcm93c2tp
LCBQaEQKPiBTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCj4KCgotLSAKRGFuaWVsIFZldHRl
cgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcg
NDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
