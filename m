Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 401C61A389C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 19:08:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61CC9665F7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 17:08:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 526A466600; Thu,  9 Apr 2020 17:08:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3319766603;
	Thu,  9 Apr 2020 17:08:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 93A47665F7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 17:08:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8189C66603; Thu,  9 Apr 2020 17:08:19 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by lists.linaro.org (Postfix) with ESMTPS id 762E6665F7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 17:08:18 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n13so3815556pgp.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Apr 2020 10:08:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=bQvrRMm1xrJntOiYTsW2Lx5FztmdO0PKJyWqixStKZM=;
 b=jzO0maLtlsfvdowUIScVFreawXjrp3EcJagGMmKI+193wofHVJfMNcez9W4ys/ypOn
 h+OsLoh+GXoema9FriTt01+TEe+c+pXyKVmh1WF5Jy0pxEeLcKd2oMjKqIGbl1emiR4a
 oASBNFxC2lGvGdHScfgBUVS7EtFrKC/0KaYnKPXv15AzW/L76+0KUfgx1PnxDpyFYbOS
 sI3qRGi1XckyQ3Y8odWc/jBEcyLoHMTo7TjC9ugfBAYgqh7Fgt45LH5pM528gJA55HTf
 hHKxOC0/Xi1Ai19HAYYnFn15D6JnbRX5VpmJ3ubJ57abcZQgkttwwWTl/ahHkS1jB+Mm
 VrOA==
X-Gm-Message-State: AGi0PuZXt1SOsM5AZNtKu2o0sj5JI5l39MyyrIy6dXc6iL2WuH1hXT1u
 X96jHPO6OzAquVeXb69coN0=
X-Google-Smtp-Source: APiQypIGXl7ptK897jLts3QdF+EDBFxPJWcYJ6uqbpmOLvOgFWAldqFqZYwLtwgtv4/3t4lh0qbzWw==
X-Received: by 2002:a63:d143:: with SMTP id c3mr401112pgj.171.1586452097545;
 Thu, 09 Apr 2020 10:08:17 -0700 (PDT)
Received: from google.com ([2601:647:4001:3000::50e3])
 by smtp.gmail.com with ESMTPSA id w142sm1167934pff.111.2020.04.09.10.08.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:08:16 -0700 (PDT)
Date: Thu, 9 Apr 2020 10:08:13 -0700
From: Minchan Kim <minchan@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20200409170813.GD247701@google.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <20200409160826.GC247701@google.com>
 <20200409165030.GG20713@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409165030.GG20713@hirez.programming.kicks-ass.net>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Christoph Hellwig <hch@lst.de>, Nitin Gupta <ngupta@vflare.org>,
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

T24gVGh1LCBBcHIgMDksIDIwMjAgYXQgMDY6NTA6MzBQTSArMDIwMCwgUGV0ZXIgWmlqbHN0cmEg
d3JvdGU6Cj4gT24gVGh1LCBBcHIgMDksIDIwMjAgYXQgMDk6MDg6MjZBTSAtMDcwMCwgTWluY2hh
biBLaW0gd3JvdGU6Cj4gPiBPbiBXZWQsIEFwciAwOCwgMjAyMCBhdCAwMTo1OTowOFBNICswMjAw
LCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiA+ID4gVGhpcyBhbGxvd3MgdG8gdW5leHBvcnQg
bWFwX3ZtX2FyZWEgYW5kIHVubWFwX2tlcm5lbF9yYW5nZSwgd2hpY2ggYXJlCj4gPiA+IHJhdGhl
ciBkZWVwIGludGVybmFsIGFuZCBzaG91bGQgbm90IGJlIGF2YWlsYWJsZSB0byBtb2R1bGVzLgo+
ID4gCj4gPiBFdmVuIHRob3VnaCBJIGRvbid0IGtub3cgaG93IG1hbnkgdXNlY2FzZSB3ZSBoYXZl
IHVzaW5nIHpzbWFsbG9jIGFzCj4gPiBtb2R1bGUoSSBoZWFyZCBvbmx5IG9uY2UgYnkgZHVtYiBy
ZWFzb24pLCBpdCBjb3VsZCBhZmZlY3QgZXhpc3RpbmcKPiA+IHVzZXJzLiBUaHVzLCBwbGVhc2Ug
aW5jbHVkZSBjb25jcmV0ZSBleHBsYW5hdGlvbiBpbiB0aGUgcGF0Y2ggdG8KPiA+IGp1c3RpZnkg
d2hlbiB0aGUgY29tcGxhaW4gb2NjdXJzLgo+IAo+IFRoZSBqdXN0aWZpY2F0aW9uIGlzICd3ZSBj
YW4gdW5leHBvcnQgZnVuY3Rpb25zIHRoYXQgaGF2ZSBubyBzYW5lIHJlYXNvbgo+IG9mIGJlaW5n
IGV4cG9ydGVkIGluIHRoZSBmaXJzdCBwbGFjZScuCj4gCj4gVGhlIENoYW5nZWxvZyBwcmV0dHkg
bXVjaCBzYXlzIHRoYXQuCgpPa2F5LCBJIGhvcGUgdGhlcmUgaXMgbm8gYWZmZWN0ZWQgdXNlciBz
aW5jZSB0aGlzIHBhdGNoLgpJZiB0aGVyZSBhcmUgc29tZW9uZSwgdGhleSBuZWVkIHRvIHByb3Zp
ZGUgc2FuZSByZWFzb24gd2h5IHRoZXkgd2FudAp0byBoYXZlIHpzbWFsbG9jIGFzIG1vZHVsZS4K
CkFja2VkLWJ5OiBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJuZWwub3JnPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
