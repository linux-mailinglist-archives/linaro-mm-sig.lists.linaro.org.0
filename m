Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A5B182D51
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2020 11:20:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E5B3616FC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2020 10:20:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 11BC461791; Thu, 12 Mar 2020 10:20:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F94C609BE;
	Thu, 12 Mar 2020 10:19:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BE904607A7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2020 10:19:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B13B4609BE; Thu, 12 Mar 2020 10:19:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id BF5FA607A7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2020 10:19:46 +0000 (UTC)
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jCKwJ-0003r2-Gt; Thu, 12 Mar 2020 10:19:43 +0000
Date: Thu, 12 Mar 2020 03:19:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: christian.koenig@amd.com
Message-ID: <20200312101943.GA14618@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
 <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David1.Zhou@amd.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 jgg@ziepe.ca, daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/6] lib/scatterlist: add
	sg_set_dma_addr() function
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

T24gVGh1LCBNYXIgMTIsIDIwMjAgYXQgMTE6MTQ6MjJBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiA+ID4gVGhlIHBhZ2UgcG9pbnRlciBpcyBzZXQgdG8gTlVMTCBhbmQgb25seSB0
aGUgRE1BIGFkZHJlc3MsCj4gPiA+IGxlbmd0aCBhbmQgb2Zmc2V0IHZhbHVlcyBhcmUgdmFsaWQu
Cj4gPiBOQUsuICBUaGUgb25seSB2YWxpZCB3YXkgdG8gZmlsbCBETUEgYWRkcmVzcyBpbiBzY2F0
dGVybGlzdHMgaXMKPiA+IGRtYV9tYXBfc2cgLyBkbWFfbWFwX3NnX2F0dHIuCj4gCj4gSG93IGNh
biB3ZSB0aGVuIG1hcCBQQ0llIEJBUnMgaW50byBhbiBzY2F0dGVybGlzdCB3aGljaCBhcmUgbm90
IGJhY2tlZCBieQo+IHN0cnVjdCBwYWdlcz8KCllvdSBjYW4ndC4gIHNjYXR0ZXJsaXN0cyBieSBk
ZWZpbml0aW9uIG1hcCBtZW1vcnkgYmFja2VkIGJ5IGEgc3RydWN0CnBhZ2UuICBJZiB5b3Ugd2Fu
dCB0byBtYXAgc29tZXRoaW5nIGVsc2Ugc3RydWN0IHNjYXR0ZXJsaXN0IGlzIHRoZQp3cm9uZyBz
dHJ1Y3R1cmUgYW5kIHlvdSBuZWVkIHRvIHVzZSBzb21ldGhpbmcgZWxzZSAod2hpY2ggeW91IHNo
b3VsZAphbnl3YXkgYXMgc3RydWN0IHNjYXR0ZXJsaXN0IGlzIGEgYmFkIGRlc2lnbiBwYXR0ZXIs
IGFuZCB0aGUgYWJvdmUKaXMgb25seSBvbmUgb2YgdGhlIG1hbnkgaXNzdWVzIHdpdGggaXQpLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
