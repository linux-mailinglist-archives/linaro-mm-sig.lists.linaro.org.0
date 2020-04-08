Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9611A26B3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 18:04:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFB8C665C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 16:04:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C245666627; Wed,  8 Apr 2020 16:04:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E36E7665FF;
	Wed,  8 Apr 2020 16:04:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4E550665BE
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 16:04:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3A1E2665FF; Wed,  8 Apr 2020 16:04:28 +0000 (UTC)
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
 by lists.linaro.org (Postfix) with ESMTPS id A338F665BE
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 16:04:26 +0000 (UTC)
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:35708)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jMDAr-00075w-Kb; Wed, 08 Apr 2020 17:03:33 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jMDAi-0001wo-US; Wed, 08 Apr 2020 17:03:24 +0100
Date: Wed, 8 Apr 2020 17:03:24 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200408160324.GS25745@shell.armlinux.org.uk>
References: <20200408115926.1467567-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [Linaro-mm-sig] decruft the vmalloc API
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDE6NTg6NThQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gSGkgYWxsLAo+IAo+IFBldGVyIG5vdGljZWQgdGhhdCB3aXRoIHNvbWUgZHVt
YiBsdWNrIHlvdSBjYW4gdG9hc3QgdGhlIGtlcm5lbCBhZGRyZXNzCj4gc3BhY2Ugd2l0aCBleHBv
cnRlZCB2bWFsbG9jIHN5bWJvbHMuCj4gCj4gSSB1c2VkIHRoaXMgYXMgYW4gb3Bwb3J0dW5pdHkg
dG8gZGVjcnVmdCB0aGUgdm1hbGxvYy5jIEFQSSBhbmQgbWFrZSBpdAo+IG11Y2ggbW9yZSBzeXN0
ZW1hdGljLiAgVGhpcyBhbHNvIHJlbW92ZXMgYW55IGNoYW5jZSB0byBjcmVhdGUgdm1hbGxvYwo+
IG1hcHBpbmdzIG91dHNpZGUgdGhlIGRlc2lnbmF0ZWQgYXJlYXMgb3IgdXNpbmcgZXhlY3V0YWJs
ZSBwZXJtaXNzaW9ucwo+IGZyb20gbW9kdWxlcy4gIEJlc2lkZXMgdGhhdCBpdCByZW1vdmVzIG1v
cmUgdGhhbiAzMDAgbGluZXMgb2YgY29kZS4KCkkgaGF2ZW4ndCByZWFkIGFsbCB5b3VyIHBhdGNo
ZXMgeWV0LgoKSGF2ZSB5b3UgdGVzdGVkIGl0IG9uIDMyLWJpdCBBUk0sIHdoZXJlIHRoZSBtb2R1
bGUgYXJlYSBpcyBsb2NhdGVkCl9iZWxvd18gUEFHRV9PRkZTRVQgYW5kIG91dHNpZGUgb2YgdGhl
IHZtYWxsb2MgYXJlYT8KCi0tIApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxp
bnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUg
bGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMC4yTWJwcyBkb3duIDU4N2ticHMgdXAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
