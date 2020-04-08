Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B721B6D67
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:42:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A14A66030
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:42:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4CCA866031; Fri, 24 Apr 2020 05:42:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4559566240;
	Fri, 24 Apr 2020 05:29:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B2CDC66614
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A76E16661F; Wed,  8 Apr 2020 12:01:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 5A009666D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:36 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9NF-0002CS-3L; Wed, 08 Apr 2020 12:00:06 +0000
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
Date: Wed,  8 Apr 2020 13:59:08 +0200
Message-Id: <20200408115926.1467567-11-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 10/28] mm: only allow page table mappings
	for built-in zsmalloc
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

VGhpcyBhbGxvd3MgdG8gdW5leHBvcnQgbWFwX3ZtX2FyZWEgYW5kIHVubWFwX2tlcm5lbF9yYW5n
ZSwgd2hpY2ggYXJlCnJhdGhlciBkZWVwIGludGVybmFsIGFuZCBzaG91bGQgbm90IGJlIGF2YWls
YWJsZSB0byBtb2R1bGVzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBs
c3QuZGU+Ci0tLQogbW0vS2NvbmZpZyAgIHwgMiArLQogbW0vdm1hbGxvYy5jIHwgMiAtLQogMiBm
aWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9tbS9LY29uZmlnIGIvbW0vS2NvbmZpZwppbmRleCAzNjk0OWE5NDI1YjguLjYxNGNjNzg2YjUx
OSAxMDA2NDQKLS0tIGEvbW0vS2NvbmZpZworKysgYi9tbS9LY29uZmlnCkBAIC03MDIsNyArNzAy
LDcgQEAgY29uZmlnIFpTTUFMTE9DCiAKIGNvbmZpZyBaU01BTExPQ19QR1RBQkxFX01BUFBJTkcK
IAlib29sICJVc2UgcGFnZSB0YWJsZSBtYXBwaW5nIHRvIGFjY2VzcyBvYmplY3QgaW4genNtYWxs
b2MiCi0JZGVwZW5kcyBvbiBaU01BTExPQworCWRlcGVuZHMgb24gWlNNQUxMT0M9eQogCWhlbHAK
IAkgIEJ5IGRlZmF1bHQsIHpzbWFsbG9jIHVzZXMgYSBjb3B5LWJhc2VkIG9iamVjdCBtYXBwaW5n
IG1ldGhvZCB0bwogCSAgYWNjZXNzIGFsbG9jYXRpb25zIHRoYXQgc3BhbiB0d28gcGFnZXMuIEhv
d2V2ZXIsIGlmIGEgcGFydGljdWxhcgpkaWZmIC0tZ2l0IGEvbW0vdm1hbGxvYy5jIGIvbW0vdm1h
bGxvYy5jCmluZGV4IDMzNzVmOTUwOGVmNi4uOTE4M2ZjMGQzNjVhIDEwMDY0NAotLS0gYS9tbS92
bWFsbG9jLmMKKysrIGIvbW0vdm1hbGxvYy5jCkBAIC0yMDQ2LDcgKzIwNDYsNiBAQCB2b2lkIHVu
bWFwX2tlcm5lbF9yYW5nZSh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgc2l6ZSkK
IAl2dW5tYXBfcGFnZV9yYW5nZShhZGRyLCBlbmQpOwogCWZsdXNoX3RsYl9rZXJuZWxfcmFuZ2Uo
YWRkciwgZW5kKTsKIH0KLUVYUE9SVF9TWU1CT0xfR1BMKHVubWFwX2tlcm5lbF9yYW5nZSk7CiAK
IGludCBtYXBfdm1fYXJlYShzdHJ1Y3Qgdm1fc3RydWN0ICphcmVhLCBwZ3Byb3RfdCBwcm90LCBz
dHJ1Y3QgcGFnZSAqKnBhZ2VzKQogewpAQCAtMjA1OCw3ICsyMDU3LDYgQEAgaW50IG1hcF92bV9h
cmVhKHN0cnVjdCB2bV9zdHJ1Y3QgKmFyZWEsIHBncHJvdF90IHByb3QsIHN0cnVjdCBwYWdlICoq
cGFnZXMpCiAKIAlyZXR1cm4gZXJyID4gMCA/IDAgOiBlcnI7CiB9Ci1FWFBPUlRfU1lNQk9MX0dQ
TChtYXBfdm1fYXJlYSk7CiAKIHN0YXRpYyBpbmxpbmUgdm9pZCBzZXR1cF92bWFsbG9jX3ZtX2xv
Y2tlZChzdHJ1Y3Qgdm1fc3RydWN0ICp2bSwKIAlzdHJ1Y3Qgdm1hcF9hcmVhICp2YSwgdW5zaWdu
ZWQgbG9uZyBmbGFncywgY29uc3Qgdm9pZCAqY2FsbGVyKQotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
