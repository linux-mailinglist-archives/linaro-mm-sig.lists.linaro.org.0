Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1C11B6D9E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:56:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79383619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:56:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 58E046602B; Fri, 24 Apr 2020 05:56:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 782E76659C;
	Fri, 24 Apr 2020 05:30:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ECA5F665C6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 16:07:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DA2BE665BE; Wed,  8 Apr 2020 16:07:47 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id DC1E2665BE
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 16:07:46 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9BEC068C4E; Wed,  8 Apr 2020 18:07:43 +0200 (CEST)
Date: Wed, 8 Apr 2020 18:07:43 +0200
From: Christoph Hellwig <hch@lst.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Message-ID: <20200408160743.GA30662@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408160324.GS25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408160324.GS25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Christoph Hellwig <hch@lst.de>, Peter Zijlstra <peterz@infradead.org>,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDU6MDM6MjRQTSArMDEwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IGFkbWluIHdyb3RlOgo+IEkgaGF2ZW4ndCByZWFkIGFsbCB5b3VyIHBhdGNoZXMg
eWV0Lgo+IAo+IEhhdmUgeW91IHRlc3RlZCBpdCBvbiAzMi1iaXQgQVJNLCB3aGVyZSB0aGUgbW9k
dWxlIGFyZWEgaXMgbG9jYXRlZAo+IF9iZWxvd18gUEFHRV9PRkZTRVQgYW5kIG91dHNpZGUgb2Yg
dGhlIHZtYWxsb2MgYXJlYT8KCkkgaGF2ZSBub3QgdGVzdGVkIGl0LiAgSG93ZXZlciBleGlzdGlu
ZyBpbi1rZXJuZWwgdXNlcnMgdGhhdCB1c2UKZGlmZmVyZW50IGFyZWFzIChhbmQgd2UgaGF2ZSBx
dWl0ZSBhIGZldyBvZiB0aG9zZSkgaGF2ZSBub3QgYmVlbgpjaGFuZ2VkIGF0IGFsbC4gIEkgdGhp
bmsgdGhlIGFybTMyIG1vZHVsZSBsb2FkZXIgKGxpa2UgdmFyaW91cyBvdGhlcgptb2R1bGUgbG9h
ZGVycykgZmFsbHMgaW50byB0aGF0IGNhdGVnb3J5LgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
