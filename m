Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ED01A37C4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 18:09:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C17DC665B0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 16:09:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AF2B4665B5; Thu,  9 Apr 2020 16:09:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6555665B6;
	Thu,  9 Apr 2020 16:08:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 66634665B0
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 16:08:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4DCEC665B6; Thu,  9 Apr 2020 16:08:32 +0000 (UTC)
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by lists.linaro.org (Postfix) with ESMTPS id 4E2BD665B0
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 16:08:31 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 22so4313278pfa.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Apr 2020 09:08:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=Bv5T4MVa9umd8pCEPysPH2jSGjRAmk+aGGhx29rknXE=;
 b=gY/Ob7zYnupzCE7+1ljKS0pKcjHf4eW2QNaoXGeKNoENLev5nA0Fk4CesUB2pn5utV
 l2MUIC3V8oyMWblT0eyKf7dSSHeUV/cj3W8QFbg66ve9yQr/pkUYkW7jKZ+/jtcQd0Us
 2CNdyWJylrCjwWckNqeRdFzeVZmLyiZpRp27/MlAlspy5eR8ghwyK3BWyS3Pf3eEVM8E
 QNJrzrZ8Y5Uu9+b5CesExvyeI92QXjVkiS5Mb18TBIaNSsCdUrXHPjD8JC8+mKSG/sj3
 vtMfsI1c1KCcs6qMz0iNoooDnn0o5pd2eMaKTEqnC769EWilnrv+J7ju44JP9t3W0fD3
 so3A==
X-Gm-Message-State: AGi0PubM/tHGAphhaD+ILYmTMz++e2GKIjAAUhHNgSFKe0SftbaMDl9I
 iKraHjUDbs4BAMh9qUxCXeY=
X-Google-Smtp-Source: APiQypJFLGcG6dVXLdib9gF5oJvHoXpdIxKhy+0DVfXFFx+ZgGNqEvh6DF50PGrfKmNfspKnDLZDsQ==
X-Received: by 2002:a62:7e0e:: with SMTP id z14mr269015pfc.27.1586448510359;
 Thu, 09 Apr 2020 09:08:30 -0700 (PDT)
Received: from google.com ([2601:647:4001:3000::50e3])
 by smtp.gmail.com with ESMTPSA id k12sm5867045pgj.33.2020.04.09.09.08.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 09:08:29 -0700 (PDT)
Date: Thu, 9 Apr 2020 09:08:26 -0700
From: Minchan Kim <minchan@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200409160826.GC247701@google.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-11-hch@lst.de>
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
 sergey.senozhatsky@gmail.com, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDE6NTk6MDhQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gVGhpcyBhbGxvd3MgdG8gdW5leHBvcnQgbWFwX3ZtX2FyZWEgYW5kIHVubWFw
X2tlcm5lbF9yYW5nZSwgd2hpY2ggYXJlCj4gcmF0aGVyIGRlZXAgaW50ZXJuYWwgYW5kIHNob3Vs
ZCBub3QgYmUgYXZhaWxhYmxlIHRvIG1vZHVsZXMuCgpFdmVuIHRob3VnaCBJIGRvbid0IGtub3cg
aG93IG1hbnkgdXNlY2FzZSB3ZSBoYXZlIHVzaW5nIHpzbWFsbG9jIGFzCm1vZHVsZShJIGhlYXJk
IG9ubHkgb25jZSBieSBkdW1iIHJlYXNvbiksIGl0IGNvdWxkIGFmZmVjdCBleGlzdGluZwp1c2Vy
cy4gVGh1cywgcGxlYXNlIGluY2x1ZGUgY29uY3JldGUgZXhwbGFuYXRpb24gaW4gdGhlIHBhdGNo
IHRvCmp1c3RpZnkgd2hlbiB0aGUgY29tcGxhaW4gb2NjdXJzLgoKPiAKPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KPiAtLS0KPiAgbW0vS2NvbmZpZyAgIHwg
MiArLQo+ICBtbS92bWFsbG9jLmMgfCAyIC0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL21tL0tjb25maWcgYi9tbS9L
Y29uZmlnCj4gaW5kZXggMzY5NDlhOTQyNWI4Li42MTRjYzc4NmI1MTkgMTAwNjQ0Cj4gLS0tIGEv
bW0vS2NvbmZpZwo+ICsrKyBiL21tL0tjb25maWcKPiBAQCAtNzAyLDcgKzcwMiw3IEBAIGNvbmZp
ZyBaU01BTExPQwo+ICAKPiAgY29uZmlnIFpTTUFMTE9DX1BHVEFCTEVfTUFQUElORwo+ICAJYm9v
bCAiVXNlIHBhZ2UgdGFibGUgbWFwcGluZyB0byBhY2Nlc3Mgb2JqZWN0IGluIHpzbWFsbG9jIgo+
IC0JZGVwZW5kcyBvbiBaU01BTExPQwo+ICsJZGVwZW5kcyBvbiBaU01BTExPQz15Cj4gIAloZWxw
Cj4gIAkgIEJ5IGRlZmF1bHQsIHpzbWFsbG9jIHVzZXMgYSBjb3B5LWJhc2VkIG9iamVjdCBtYXBw
aW5nIG1ldGhvZCB0bwo+ICAJICBhY2Nlc3MgYWxsb2NhdGlvbnMgdGhhdCBzcGFuIHR3byBwYWdl
cy4gSG93ZXZlciwgaWYgYSBwYXJ0aWN1bGFyCj4gZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBi
L21tL3ZtYWxsb2MuYwo+IGluZGV4IDMzNzVmOTUwOGVmNi4uOTE4M2ZjMGQzNjVhIDEwMDY0NAo+
IC0tLSBhL21tL3ZtYWxsb2MuYwo+ICsrKyBiL21tL3ZtYWxsb2MuYwo+IEBAIC0yMDQ2LDcgKzIw
NDYsNiBAQCB2b2lkIHVubWFwX2tlcm5lbF9yYW5nZSh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2ln
bmVkIGxvbmcgc2l6ZSkKPiAgCXZ1bm1hcF9wYWdlX3JhbmdlKGFkZHIsIGVuZCk7Cj4gIAlmbHVz
aF90bGJfa2VybmVsX3JhbmdlKGFkZHIsIGVuZCk7Cj4gIH0KPiAtRVhQT1JUX1NZTUJPTF9HUEwo
dW5tYXBfa2VybmVsX3JhbmdlKTsKPiAgCj4gIGludCBtYXBfdm1fYXJlYShzdHJ1Y3Qgdm1fc3Ry
dWN0ICphcmVhLCBwZ3Byb3RfdCBwcm90LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzKQo+ICB7Cj4gQEAg
LTIwNTgsNyArMjA1Nyw2IEBAIGludCBtYXBfdm1fYXJlYShzdHJ1Y3Qgdm1fc3RydWN0ICphcmVh
LCBwZ3Byb3RfdCBwcm90LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzKQo+ICAKPiAgCXJldHVybiBlcnIg
PiAwID8gMCA6IGVycjsKPiAgfQo+IC1FWFBPUlRfU1lNQk9MX0dQTChtYXBfdm1fYXJlYSk7Cj4g
IAo+ICBzdGF0aWMgaW5saW5lIHZvaWQgc2V0dXBfdm1hbGxvY192bV9sb2NrZWQoc3RydWN0IHZt
X3N0cnVjdCAqdm0sCj4gIAlzdHJ1Y3Qgdm1hcF9hcmVhICp2YSwgdW5zaWduZWQgbG9uZyBmbGFn
cywgY29uc3Qgdm9pZCAqY2FsbGVyKQo+IC0tIAo+IDIuMjUuMQo+IApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
