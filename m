Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D67A31B6D37
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:34:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06E4E619D6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:34:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EA66B619D7; Fri, 24 Apr 2020 05:33:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E651866031;
	Fri, 24 Apr 2020 05:29:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CC45566600
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 11:59:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AF7C7665FF; Wed,  8 Apr 2020 11:59:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id B6495665FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 11:59:57 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Ml-0001bC-Nz; Wed, 08 Apr 2020 11:59:36 +0000
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
Date: Wed,  8 Apr 2020 13:59:00 +0200
Message-Id: <20200408115926.1467567-3-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
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
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH 02/28] staging: android: ion: use vmap
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
ZWxsd2lnIDxoY2hAbHN0LmRlPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25f
aGVhcC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25faGVh
cC5jIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMKaW5kZXggNDczYjQ2
NTcyNGYxLi5hMmQ1YzZkZjRiOTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lk
L2lvbi9pb25faGVhcC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25faGVh
cC5jCkBAIC05OSwxMiArOTksMTIgQEAgaW50IGlvbl9oZWFwX21hcF91c2VyKHN0cnVjdCBpb25f
aGVhcCAqaGVhcCwgc3RydWN0IGlvbl9idWZmZXIgKmJ1ZmZlciwKIAogc3RhdGljIGludCBpb25f
aGVhcF9jbGVhcl9wYWdlcyhzdHJ1Y3QgcGFnZSAqKnBhZ2VzLCBpbnQgbnVtLCBwZ3Byb3RfdCBw
Z3Byb3QpCiB7Ci0Jdm9pZCAqYWRkciA9IHZtX21hcF9yYW0ocGFnZXMsIG51bSwgLTEsIHBncHJv
dCk7CisJdm9pZCAqYWRkciA9IHZtYXAocGFnZXMsIG51bSwgVk1fTUFQKTsKIAogCWlmICghYWRk
cikKIAkJcmV0dXJuIC1FTk9NRU07CiAJbWVtc2V0KGFkZHIsIDAsIFBBR0VfU0laRSAqIG51bSk7
Ci0Jdm1fdW5tYXBfcmFtKGFkZHIsIG51bSk7CisJdnVubWFwKGFkZHIpOwogCiAJcmV0dXJuIDA7
CiB9Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
