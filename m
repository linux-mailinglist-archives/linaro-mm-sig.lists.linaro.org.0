Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8011B6DA1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:57:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DCC07619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:57:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CC24066031; Fri, 24 Apr 2020 05:57:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E45566591;
	Fri, 24 Apr 2020 05:30:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5FE7360E12
 for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Apr 2020 07:20:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4071E60EE1; Sat, 11 Apr 2020 07:20:57 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 147B060E12
 for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Apr 2020 07:20:56 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4505168BFE; Sat, 11 Apr 2020 09:20:52 +0200 (CEST)
Date: Sat, 11 Apr 2020 09:20:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minchan Kim <minchan@kernel.org>
Message-ID: <20200411072052.GA31242@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de> <20200409160826.GC247701@google.com>
 <20200409165030.GG20713@hirez.programming.kicks-ass.net>
 <20200409170813.GD247701@google.com>
 <20200410023845.GA2354@jagdpanzerIV.localdomain>
 <20200410231136.GA101325@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410231136.GA101325@google.com>
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
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 iommu@lists.linux-foundation.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [Linaro-mm-sig] [PATCH 10/28] mm: only allow page table
 mappings for built-in zsmalloc
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

SGkgTWluY2hhbiwKCk9uIEZyaSwgQXByIDEwLCAyMDIwIGF0IDA0OjExOjM2UE0gLTA3MDAsIE1p
bmNoYW4gS2ltIHdyb3RlOgo+IEl0IGRvZXNuJ3QgbWVhbiB3ZSBjb3VsZG4ndCB1c2UgenNtYWxs
b2MgYXMgbW9kdWxlIGFueSBsb25nZXIuIEl0IG1lYW5zCj4gd2UgY291bGRuJ3QgdXNlIHpzbWFs
bG9jIGFzIG1vZHVsZSB3aXRoIHBndGFibGUgbWFwcGluZyB3aGNpaCB3YXMgbGl0dGxlCj4gYml0
IGZhc3RlciBvbiBtaWNyb2JlbmNobWFyayBpbiBzb21lIGFyY2hpdGVjdXRyZShIb3dldmVyLCBJ
IHVzdWFsbHkgdGVtcGVkCj4gdG8gcmVtb3ZlIGl0IHNpbmNlIGl0IGhhZCBzZXZlcmFsIHByb2Js
ZW1zKS4gSG93ZXZlciwgd2UgY291bGQgc3RpbGwgdXNlCj4genNtYWxsb2MgYXMgbW9kdWxlIGFz
IGNvcHkgd2F5IGluc3RlYWQgb2YgcGd0YWJsZSBtYXBwaW5nLiBUaHVzLCBpZiBzb21lb25lCj4g
cmVhbGx5IHdhbnQgdG8gcm9sbGJhY2sgdGhlIGZlYXR1cmUsIHRoZXkgc2hvdWxkIHByb3ZpZGUg
cmVhc29uYWJsZSByZWFzb24KPiB3aHkgaXQgZG9lc24ndCB3b3JrIGZvciB0aGVtLiAiQSBsaXR0
bGUgZmFzdCIgd291bGRuJ3QgYmUgZW5vdWdoIHRvIGV4cG9ydHMKPiBkZWVwIGludGVybmFsIHRv
IHRoZSBtb2R1bGUuCgpkbyB5b3UgaGF2ZSBhbnkgZGF0YSBob3cgbXVjaCBmYXN0ZXIgaXQgaXMg
b24gYXJtIChhbmQgZG9lcyB0aGF0IGluY2x1ZGUKYXJtNjQgYXMgd2VsbCk/ICBCZXNpZGVzIHRo
ZSBleHBvcnRzIHdoaWNoIHdlcmUgbXkgcHJpbWUgY29uY2VybiwKenNtYWxsb2Mgd2l0aCBwZ3Rh
YmxlIG1hcHBpbmdzIGFsc28gaXMgdGhlIG9ubHkgdXNlciBvZiBtYXBfa2VybmVsX3JhbmdlCm91
dHNpZGUgb2Ygdm1hbGxvYy5jLCBpZiBpdCByZWFsbHkgaXMgYW5vdGhlciBjb2RlIGJhc2UgZm9y
IHRpbnkKaW1wcm92ZW1lbnRzIHdlIGNvdWxkIG1hcmsgbWFwX2tlcm5lbF9yYW5nZSBvciBpbiBm
YWN0IHJlbW92ZSBpdCBlbnRpcmVseQphbmQgb3BlbiBjb2RlIGl0IGluIHRoZSByZW1haW5pbmcg
Y2FsbGVycy4KCih1bm1hcF9rZXJuZWxfcmFuZ2UgaXMgYSBkaWZmZXJlbnQgc3RvcnksIGl0IGhh
cyBhIGJ1bmNoIG9mIGNhbGxlcnMsCmFuZCBtb3N0IGxvb2sgb2RkKQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
