Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD6E1B6DED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:15:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63BC26199D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:15:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 56B8966038; Fri, 24 Apr 2020 06:15:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 471C9666E6;
	Fri, 24 Apr 2020 05:30:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5507F66053
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3586766050; Tue, 14 Apr 2020 13:15:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 2DEB466053
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:14 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLOs-000753-7t; Tue, 14 Apr 2020 13:14:50 +0000
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
Date: Tue, 14 Apr 2020 15:13:36 +0200
Message-Id: <20200414131348.444715-18-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 17/29] mm: remove unmap_vmap_area
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

VGhpcyBmdW5jdGlvbiBqdXN0IGhhcyBhIHNpbmdsZSBjYWxsZXIsIG9wZW4gY29kZSBpdCB0aGVy
ZS4KClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgpBY2tlZC1i
eTogUGV0ZXIgWmlqbHN0cmEgKEludGVsKSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Ci0tLQogbW0v
dm1hbGxvYy5jIHwgMTAgKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2Mu
YwppbmRleCBiMGM3Y2RjODcwMWEuLjI1ODIyMGIyMDNmMSAxMDA2NDQKLS0tIGEvbW0vdm1hbGxv
Yy5jCisrKyBiL21tL3ZtYWxsb2MuYwpAQCAtMTI0NywxNCArMTI0Nyw2IEBAIGludCB1bnJlZ2lz
dGVyX3ZtYXBfcHVyZ2Vfbm90aWZpZXIoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYikKIH0KIEVY
UE9SVF9TWU1CT0xfR1BMKHVucmVnaXN0ZXJfdm1hcF9wdXJnZV9ub3RpZmllcik7CiAKLS8qCi0g
KiBDbGVhciB0aGUgcGFnZXRhYmxlIGVudHJpZXMgb2YgYSBnaXZlbiB2bWFwX2FyZWEKLSAqLwot
c3RhdGljIHZvaWQgdW5tYXBfdm1hcF9hcmVhKHN0cnVjdCB2bWFwX2FyZWEgKnZhKQotewotCXVu
bWFwX2tlcm5lbF9yYW5nZV9ub2ZsdXNoKHZhLT52YV9zdGFydCwgdmEtPnZhX2VuZCAtIHZhLT52
YV9zdGFydCk7Ci19Ci0KIC8qCiAgKiBsYXp5X21heF9wYWdlcyBpcyB0aGUgbWF4aW11bSBhbW91
bnQgb2YgdmlydHVhbCBhZGRyZXNzIHNwYWNlIHdlIGdhdGhlciB1cAogICogYmVmb3JlIGF0dGVt
cHRpbmcgdG8gcHVyZ2Ugd2l0aCBhIFRMQiBmbHVzaC4KQEAgLTE0MTYsNyArMTQwOCw3IEBAIHN0
YXRpYyB2b2lkIGZyZWVfdm1hcF9hcmVhX25vZmx1c2goc3RydWN0IHZtYXBfYXJlYSAqdmEpCiBz
dGF0aWMgdm9pZCBmcmVlX3VubWFwX3ZtYXBfYXJlYShzdHJ1Y3Qgdm1hcF9hcmVhICp2YSkKIHsK
IAlmbHVzaF9jYWNoZV92dW5tYXAodmEtPnZhX3N0YXJ0LCB2YS0+dmFfZW5kKTsKLQl1bm1hcF92
bWFwX2FyZWEodmEpOworCXVubWFwX2tlcm5lbF9yYW5nZV9ub2ZsdXNoKHZhLT52YV9zdGFydCwg
dmEtPnZhX2VuZCAtIHZhLT52YV9zdGFydCk7CiAJaWYgKGRlYnVnX3BhZ2VhbGxvY19lbmFibGVk
X3N0YXRpYygpKQogCQlmbHVzaF90bGJfa2VybmVsX3JhbmdlKHZhLT52YV9zdGFydCwgdmEtPnZh
X2VuZCk7CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
