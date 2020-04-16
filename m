Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A150D1AD164
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2020 22:43:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF4D96605A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2020 20:43:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B38C366070; Thu, 16 Apr 2020 20:43:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08DC466049;
	Thu, 16 Apr 2020 20:43:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2649F60732
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 20:43:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0B28D66049; Thu, 16 Apr 2020 20:43:20 +0000 (UTC)
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by lists.linaro.org (Postfix) with ESMTPS id F333C60732
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 20:43:18 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id n10so2214014pff.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 13:43:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=uRgyzvRokr7ai+Xbzs2rruJuXsUX0gI+b1jlIGwtZfU=;
 b=PoRD5DMOE1+IqTJmpvPEWWwB4NXa4qVzx4npHgdFENjjtezbzcJSfNG6DG095kvGoI
 vAyGHeLlez6JUHxsC5VbkCQVeNEMsWrKV19Lg7rXWMX1zO0RD43p23xncLQR9T7EeQC6
 ToDNLhmdLlFibr4+Uac3mCr9NbWM2e6NxbnW+LSO0c3DSiaNLbvTaCyjDcS4L+Npakz7
 UURbImM65ZOkbomud0lVrcHgzL3RR9hZ4a5cOLz80GCeyv7hhYuAZy2ATqRiKRy3MQoI
 Y9gjfRpusfb0sdSgc/60NrkNY6CaZD6bf3Eoef0q1YKMb+fFnqnghfD2D6pDdGu6HDUO
 t3TA==
X-Gm-Message-State: AGi0PuYCFPaNggAP36Pa8KrFl30MMGzJAHkjVv8Qeu9I77NplNaXc7to
 4Yzvt994IxB9PSxlRkcoIOI=
X-Google-Smtp-Source: APiQypIXiJO4KCjTGpKvDHmXGV5HxR6F5ChtTIbUrCsBU11gVwLi7psgN6LJANKPucmqiSohUc35Kg==
X-Received: by 2002:a65:611a:: with SMTP id z26mr3767121pgu.341.1587069797727; 
 Thu, 16 Apr 2020 13:43:17 -0700 (PDT)
Received: from google.com ([2601:647:4001:3000::50e3])
 by smtp.gmail.com with ESMTPSA id d8sm12215742pfd.159.2020.04.16.13.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 13:43:16 -0700 (PDT)
Date: Thu, 16 Apr 2020 13:43:14 -0700
From: Minchan Kim <minchan@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200416204314.GA59451@google.com>
References: <20200414131348.444715-1-hch@lst.de>
 <20200414131348.444715-12-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414131348.444715-12-hch@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, sergey.senozhatsky.work@gmail.com,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, "K. Y. Srinivasan" <kys@microsoft.com>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [Linaro-mm-sig] [PATCH 11/29] mm: only allow page table
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

T24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgMDM6MTM6MzBQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gVGhpcyBhbGxvd3MgdG8gdW5leHBvcnQgbWFwX3ZtX2FyZWEgYW5kIHVubWFw
X2tlcm5lbF9yYW5nZSwgd2hpY2ggYXJlCj4gcmF0aGVyIGRlZXAgaW50ZXJuYWwgYW5kIHNob3Vs
ZCBub3QgYmUgYXZhaWxhYmxlIHRvIG1vZHVsZXMsIGFzIHRoZXkgZm9yCj4gZXhhbXBsZSBhbGxv
dyBmaW5lIGdyYWluZWQgY29udHJvbCBvZiBtYXBwaW5nIHBlcm1pc3Npb25zLCBhbmQgYWxzbwo+
IGFsbG93IHNwbGl0dGluZyB0aGUgc2V0dXAgb2YgYSB2bWFsbG9jIGFyZWEgYW5kIHRoZSBhY3R1
YWwgbWFwcGluZyBhbmQKPiB0aHVzIGV4cG9zZSB2bWFsbG9jIGludGVybmFscy4KPiAKPiB6c21h
bGxvYyBpcyB0eXBpY2FsbHkgYnVpbHQtaW4gYW5kIGNvbnRpbnVlcyB0byB3b3JrIChqdXN0IGxp
a2UgdGhlCj4gcGVyY3B1LXZtIGNvZGUgdXNpbmcgYSBzaW1pbGFyIHBhdHRlciksIHdoaWxlIG1v
ZHVsYXIgenNtYWxsb2MgYWxzbwo+IGNvbnRpbnVlcyB0byB3b3JrLCBidXQgbXVzdCB1c2UgY29w
aWVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgo+
IEFja2VkLWJ5OiBQZXRlciBaaWpsc3RyYSAoSW50ZWwpIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4K
QWNrZWQtYnk6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+CgpUaGFua3MhCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
