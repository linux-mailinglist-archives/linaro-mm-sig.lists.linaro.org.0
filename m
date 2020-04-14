Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A59841B6E1F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:24:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE99566030
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:24:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BF9D766031; Fri, 24 Apr 2020 06:24:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C359666705;
	Fri, 24 Apr 2020 05:30:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A4E5F61997
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:16:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9605861999; Tue, 14 Apr 2020 13:16:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 2992E66047
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:49 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLPU-0001nV-PN; Tue, 14 Apr 2020 13:15:29 +0000
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
Date: Tue, 14 Apr 2020 15:13:47 +0200
Message-Id: <20200414131348.444715-29-hch@lst.de>
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
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH 28/29] powerpc: use __vmalloc_node in
	alloc_vm_stack
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

YWxsb2Nfdm1fc3RhY2sgY2FuIHVzZSBhIHNsaWdodGx5IGhpZ2hlciBsZXZlbCB2bWFsbG9jIGZ1
bmN0aW9uLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+CkFj
a2VkLWJ5OiBQZXRlciBaaWpsc3RyYSAoSW50ZWwpIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KLS0t
CiBhcmNoL3Bvd2VycGMva2VybmVsL2lycS5jIHwgNSArKy0tLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL3Bvd2VycGMv
a2VybmVsL2lycS5jIGIvYXJjaC9wb3dlcnBjL2tlcm5lbC9pcnEuYwppbmRleCAxZjExNjk4NTZk
YzguLjExMmQxNTAzNTRiMiAxMDA2NDQKLS0tIGEvYXJjaC9wb3dlcnBjL2tlcm5lbC9pcnEuYwor
KysgYi9hcmNoL3Bvd2VycGMva2VybmVsL2lycS5jCkBAIC03NDgsOSArNzQ4LDggQEAgdm9pZCBk
b19JUlEoc3RydWN0IHB0X3JlZ3MgKnJlZ3MpCiAKIHN0YXRpYyB2b2lkICpfX2luaXQgYWxsb2Nf
dm1fc3RhY2sodm9pZCkKIHsKLQlyZXR1cm4gX192bWFsbG9jX25vZGVfcmFuZ2UoVEhSRUFEX1NJ
WkUsIFRIUkVBRF9BTElHTiwgVk1BTExPQ19TVEFSVCwKLQkJCQkgICAgVk1BTExPQ19FTkQsIFRI
UkVBRElORk9fR0ZQLCBQQUdFX0tFUk5FTCwKLQkJCQkgICAgIDAsIE5VTUFfTk9fTk9ERSwgKHZv
aWQqKV9SRVRfSVBfKTsKKwlyZXR1cm4gX192bWFsbG9jX25vZGUoVEhSRUFEX1NJWkUsIFRIUkVB
RF9BTElHTiwgVEhSRUFESU5GT19HRlAsCisJCQkgICAgICBOVU1BX05PX05PREUsICh2b2lkICop
X1JFVF9JUF8pOwogfQogCiBzdGF0aWMgdm9pZCBfX2luaXQgdm1hcF9pcnFzdGFja19pbml0KHZv
aWQpCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
