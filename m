Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8851B6DAA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:59:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9296A60E25
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:59:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7FAE06602B; Fri, 24 Apr 2020 05:59:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E52F664F9;
	Fri, 24 Apr 2020 05:30:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A7193616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 999F56604E; Tue, 14 Apr 2020 13:14:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 322ED616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:26 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLO6-0006Jn-Io; Tue, 14 Apr 2020 13:14:03 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Date: Tue, 14 Apr 2020 15:13:22 +0200
Message-Id: <20200414131348.444715-4-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414131348.444715-1-hch@lst.de>
References: <20200414131348.444715-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH 03/29] staging: android: ion: use vmap
	instead of vm_map_ram
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

dm1fbWFwX3JhbSBjYW4ga2VlcCBtYXBwaW5ncyBhcm91bmQgYWZ0ZXIgdGhlIHZtX3VubWFwX3Jh
bS4gIFVzaW5nIHRoYXQKd2l0aCBub24tUEFHRV9LRVJORUwgbWFwcGluZ3MgY2FuIGxlYWQgdG8g
YWxsIGtpbmRzIG9mIGFsaWFzaW5nIGlzc3Vlcy4KClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBI
ZWxsd2lnIDxoY2hAbHN0LmRlPgpBY2tlZC1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hA
bGludXhmb3VuZGF0aW9uLm9yZz4KQWNrZWQtYnk6IFBldGVyIFppamxzdHJhIChJbnRlbCkgPHBl
dGVyekBpbmZyYWRlYWQub3JnPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25f
aGVhcC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25faGVh
cC5jIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMKaW5kZXggNDczYjQ2
NTcyNGYxLi4wNzU1YjExMzQ4ZWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lk
L2lvbi9pb25faGVhcC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25faGVh
cC5jCkBAIC05OSwxMiArOTksMTIgQEAgaW50IGlvbl9oZWFwX21hcF91c2VyKHN0cnVjdCBpb25f
aGVhcCAqaGVhcCwgc3RydWN0IGlvbl9idWZmZXIgKmJ1ZmZlciwKIAogc3RhdGljIGludCBpb25f
aGVhcF9jbGVhcl9wYWdlcyhzdHJ1Y3QgcGFnZSAqKnBhZ2VzLCBpbnQgbnVtLCBwZ3Byb3RfdCBw
Z3Byb3QpCiB7Ci0Jdm9pZCAqYWRkciA9IHZtX21hcF9yYW0ocGFnZXMsIG51bSwgLTEsIHBncHJv
dCk7CisJdm9pZCAqYWRkciA9IHZtYXAocGFnZXMsIG51bSwgVk1fTUFQLCBwZ3Byb3QpOwogCiAJ
aWYgKCFhZGRyKQogCQlyZXR1cm4gLUVOT01FTTsKIAltZW1zZXQoYWRkciwgMCwgUEFHRV9TSVpF
ICogbnVtKTsKLQl2bV91bm1hcF9yYW0oYWRkciwgbnVtKTsKKwl2dW5tYXAoYWRkcik7CiAKIAly
ZXR1cm4gMDsKIH0KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
