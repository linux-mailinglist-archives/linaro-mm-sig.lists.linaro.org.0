Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F7D1A4C7B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Apr 2020 01:12:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1093D66048
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2020 23:12:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F41D36604D; Fri, 10 Apr 2020 23:12:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FBE36604B;
	Fri, 10 Apr 2020 23:11:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D12D266047
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2020 23:11:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C22986604B; Fri, 10 Apr 2020 23:11:43 +0000 (UTC)
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by lists.linaro.org (Postfix) with ESMTPS id E700066047
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2020 23:11:41 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id ng8so1304974pjb.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2020 16:11:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=bQcdpto7s/yGk2w0OzvQ6UptVyKViN3oMFbbBVW84wQ=;
 b=myRLrDVs/yXT54drWG8ILvfTgjMbU/iWdl5CLxCaFa70zcam1gh9JSbFssQ8h9Sv+i
 J0pzmQXm/1k3txc0aeZGv+i49/96kzX4NJWeRMuRP5GZyFKHcygUOnoLbRqtbHOw5Sj9
 +7VrCcAA3wSJSzjy/BmdC386i9h0oefmKHRliCfBO+ewEadc4X96XrmHeLeLWWTUct+d
 Ovux/8ZcpTpjnv+pzOvYsE8pkcqwZPPI/jLjBMDpb/Grl/4Z0CNcFAqtJZzn1OGUlmYu
 +QvN2o07p4PK2PQ95jVdHfgZBTZL7XQgpLoBIoWtz+MoHXW9Lmvgy+PMdpHBJ4EwwuBs
 S01w==
X-Gm-Message-State: AGi0PuaY9dzufvLNdnEJlwZHel88TMQVaBXruXd6I6lub2cgVTzXvqYu
 vp/e7tFCTdyND2UEU8Vu7PA=
X-Google-Smtp-Source: APiQypIEPforRWpT0WXypxL4A3ey15BGc+kDge0iIn1cftbyny3ESjfu/Br0BZMCFGD2PtWlRrOKew==
X-Received: by 2002:a17:902:b409:: with SMTP id
 x9mr6968379plr.125.1586560301031; 
 Fri, 10 Apr 2020 16:11:41 -0700 (PDT)
Received: from google.com ([2601:647:4001:3000::50e3])
 by smtp.gmail.com with ESMTPSA id 15sm2629073pfu.186.2020.04.10.16.11.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 16:11:39 -0700 (PDT)
Date: Fri, 10 Apr 2020 16:11:36 -0700
From: Minchan Kim <minchan@kernel.org>
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Message-ID: <20200410231136.GA101325@google.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <20200409160826.GC247701@google.com>
 <20200409165030.GG20713@hirez.programming.kicks-ass.net>
 <20200409170813.GD247701@google.com>
 <20200410023845.GA2354@jagdpanzerIV.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410023845.GA2354@jagdpanzerIV.localdomain>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Christoph Hellwig <hch@lst.de>, David Airlie <airlied@linux.ie>,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
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

SGkgU2VyZ2V5LAoKT24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgMTE6Mzg6NDVBTSArMDkwMCwgU2Vy
Z2V5IFNlbm96aGF0c2t5IHdyb3RlOgo+IE9uICgyMC8wNC8wOSAxMDowOCksIE1pbmNoYW4gS2lt
IHdyb3RlOgo+ID4gPiA+IEV2ZW4gdGhvdWdoIEkgZG9uJ3Qga25vdyBob3cgbWFueSB1c2VjYXNl
IHdlIGhhdmUgdXNpbmcgenNtYWxsb2MgYXMKPiA+ID4gPiBtb2R1bGUoSSBoZWFyZCBvbmx5IG9u
Y2UgYnkgZHVtYiByZWFzb24pLCBpdCBjb3VsZCBhZmZlY3QgZXhpc3RpbmcKPiA+ID4gPiB1c2Vy
cy4gVGh1cywgcGxlYXNlIGluY2x1ZGUgY29uY3JldGUgZXhwbGFuYXRpb24gaW4gdGhlIHBhdGNo
IHRvCj4gPiA+ID4ganVzdGlmeSB3aGVuIHRoZSBjb21wbGFpbiBvY2N1cnMuCj4gPiA+IAo+ID4g
PiBUaGUganVzdGlmaWNhdGlvbiBpcyAnd2UgY2FuIHVuZXhwb3J0IGZ1bmN0aW9ucyB0aGF0IGhh
dmUgbm8gc2FuZSByZWFzb24KPiA+ID4gb2YgYmVpbmcgZXhwb3J0ZWQgaW4gdGhlIGZpcnN0IHBs
YWNlJy4KPiA+ID4gCj4gPiA+IFRoZSBDaGFuZ2Vsb2cgcHJldHR5IG11Y2ggc2F5cyB0aGF0Lgo+
ID4gCj4gPiBPa2F5LCBJIGhvcGUgdGhlcmUgaXMgbm8gYWZmZWN0ZWQgdXNlciBzaW5jZSB0aGlz
IHBhdGNoLgo+ID4gSWYgdGhlcmUgYXJlIHNvbWVvbmUsIHRoZXkgbmVlZCB0byBwcm92aWRlIHNh
bmUgcmVhc29uIHdoeSB0aGV5IHdhbnQKPiA+IHRvIGhhdmUgenNtYWxsb2MgYXMgbW9kdWxlLgo+
IAo+IEknbSBvbmUgb2YgdGhvc2Ugd2hvIHVzZSB6c21hbGxvYyBhcyBhIG1vZHVsZSAtIG1haW5s
eSBiZWNhdXNlIEkgdXNlIHpyYW0KPiBhcyBhIGNvbXByZXNzaW5nIGdlbmVyYWwgcHVycG9zZSBi
bG9jayBkZXZpY2UsIG5vdCBhcyBhIHN3YXAgZGV2aWNlLgo+IEkgY3JlYXRlIHpyYW0wLCBta2Zz
LCBtb3VudCwgY2hlY2tvdXQgYW5kIGNvbXBpbGUgY29kZSwgb25jZSBkb25lIC0KPiB1bW91bnQs
IHJtbW9kLiBUaGlzIHJlZHVjZXMgdGhlIG51bWJlciBvZiB3cml0ZXMgdG8gU1NELiBTb21lIHBl
b3BsZSB1c2UKPiB0bXBmcywgYnV0IHpyYW0gZGV2aWNlKC1zKSBjYW4gYmUgbXVjaCBsYXJnZXIg
aW4gc2l6ZS4gVGhhdCdzIGEgbmljaGUgdXNlCj4gY2FzZSBhbmQgSSdtIG5vdCBhZ2FpbnN0IHRo
ZSBwYXRjaC4KCkl0IGRvZXNuJ3QgbWVhbiB3ZSBjb3VsZG4ndCB1c2UgenNtYWxsb2MgYXMgbW9k
dWxlIGFueSBsb25nZXIuIEl0IG1lYW5zCndlIGNvdWxkbid0IHVzZSB6c21hbGxvYyBhcyBtb2R1
bGUgd2l0aCBwZ3RhYmxlIG1hcHBpbmcgd2hjaWggd2FzIGxpdHRsZQpiaXQgZmFzdGVyIG9uIG1p
Y3JvYmVuY2htYXJrIGluIHNvbWUgYXJjaGl0ZWN1dHJlKEhvd2V2ZXIsIEkgdXN1YWxseSB0ZW1w
ZWQKdG8gcmVtb3ZlIGl0IHNpbmNlIGl0IGhhZCBzZXZlcmFsIHByb2JsZW1zKS4gSG93ZXZlciwg
d2UgY291bGQgc3RpbGwgdXNlCnpzbWFsbG9jIGFzIG1vZHVsZSBhcyBjb3B5IHdheSBpbnN0ZWFk
IG9mIHBndGFibGUgbWFwcGluZy4gVGh1cywgaWYgc29tZW9uZQpyZWFsbHkgd2FudCB0byByb2xs
YmFjayB0aGUgZmVhdHVyZSwgdGhleSBzaG91bGQgcHJvdmlkZSByZWFzb25hYmxlIHJlYXNvbgp3
aHkgaXQgZG9lc24ndCB3b3JrIGZvciB0aGVtLiAiQSBsaXR0bGUgZmFzdCIgd291bGRuJ3QgYmUg
ZW5vdWdoIHRvIGV4cG9ydHMKZGVlcCBpbnRlcm5hbCB0byB0aGUgbW9kdWxlLgoKVGhhbmtzLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
