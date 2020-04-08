Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEE11B6D3E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:35:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5888619C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:35:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D2D3F619D6; Fri, 24 Apr 2020 05:35:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E38166047;
	Fri, 24 Apr 2020 05:29:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 021E0665FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E52D566600; Wed,  8 Apr 2020 12:00:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 5FEBF66600
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:09 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Ms-0001h3-0H; Wed, 08 Apr 2020 11:59:42 +0000
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
Date: Wed,  8 Apr 2020 13:59:02 +0200
Message-Id: <20200408115926.1467567-5-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 04/28] dma-mapping: use vmap insted of
	reimplementing it
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

UmVwbGFjZSB0aGUgb3BlbiBjb2RlZCBpbnN0YW5jZSBvZiB2bWFwIHdpdGggdGhlIGFjdHVhbCBm
dW5jdGlvbi4gIEluCnRoZSBub24tY29udGlndW91cyAoSU9NTVUpIGNhc2UgdGhpcyByZXF1aXJl
cyBhbiBleHRyYSBmaW5kX3ZtX2FyZWEsCmJ1dCBnaXZlbiB0aGF0IHRoaXMgaXNuJ3QgYSBmYXN0
IHBhdGggZnVuY3Rpb24gdGhhdCBpcyBhIHNtYWxsIHByaWNlCnRvIHBheS4KClNpZ25lZC1vZmYt
Ynk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgotLS0KIGtlcm5lbC9kbWEvcmVtYXAu
YyB8IDQ4ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9rZXJuZWwvZG1hL3JlbWFwLmMgYi9rZXJuZWwvZG1hL3JlbWFwLmMKaW5kZXggZDE0Y2Jj
ODM5ODZhLi43YThiYTYwOTUxZTggMTAwNjQ0Ci0tLSBhL2tlcm5lbC9kbWEvcmVtYXAuYworKysg
Yi9rZXJuZWwvZG1hL3JlbWFwLmMKQEAgLTIwLDIzICsyMCw2IEBAIHN0cnVjdCBwYWdlICoqZG1h
X2NvbW1vbl9maW5kX3BhZ2VzKHZvaWQgKmNwdV9hZGRyKQogCXJldHVybiBhcmVhLT5wYWdlczsK
IH0KIAotc3RhdGljIHN0cnVjdCB2bV9zdHJ1Y3QgKl9fZG1hX2NvbW1vbl9wYWdlc19yZW1hcChz
dHJ1Y3QgcGFnZSAqKnBhZ2VzLAotCQkJc2l6ZV90IHNpemUsIHBncHJvdF90IHByb3QsIGNvbnN0
IHZvaWQgKmNhbGxlcikKLXsKLQlzdHJ1Y3Qgdm1fc3RydWN0ICphcmVhOwotCi0JYXJlYSA9IGdl
dF92bV9hcmVhX2NhbGxlcihzaXplLCBWTV9ETUFfQ09IRVJFTlQsIGNhbGxlcik7Ci0JaWYgKCFh
cmVhKQotCQlyZXR1cm4gTlVMTDsKLQotCWlmIChtYXBfdm1fYXJlYShhcmVhLCBwcm90LCBwYWdl
cykpIHsKLQkJdnVubWFwKGFyZWEtPmFkZHIpOwotCQlyZXR1cm4gTlVMTDsKLQl9Ci0KLQlyZXR1
cm4gYXJlYTsKLX0KLQogLyoKICAqIFJlbWFwcyBhbiBhcnJheSBvZiBQQUdFX1NJWkUgcGFnZXMg
aW50byBhbm90aGVyIHZtX2FyZWEuCiAgKiBDYW5ub3QgYmUgdXNlZCBpbiBub24tc2xlZXBpbmcg
Y29udGV4dHMKQEAgLTQ0LDE1ICsyNywxMiBAQCBzdGF0aWMgc3RydWN0IHZtX3N0cnVjdCAqX19k
bWFfY29tbW9uX3BhZ2VzX3JlbWFwKHN0cnVjdCBwYWdlICoqcGFnZXMsCiB2b2lkICpkbWFfY29t
bW9uX3BhZ2VzX3JlbWFwKHN0cnVjdCBwYWdlICoqcGFnZXMsIHNpemVfdCBzaXplLAogCQkJIHBn
cHJvdF90IHByb3QsIGNvbnN0IHZvaWQgKmNhbGxlcikKIHsKLQlzdHJ1Y3Qgdm1fc3RydWN0ICph
cmVhOworCXZvaWQgKnZhZGRyOwogCi0JYXJlYSA9IF9fZG1hX2NvbW1vbl9wYWdlc19yZW1hcChw
YWdlcywgc2l6ZSwgcHJvdCwgY2FsbGVyKTsKLQlpZiAoIWFyZWEpCi0JCXJldHVybiBOVUxMOwot
Ci0JYXJlYS0+cGFnZXMgPSBwYWdlczsKLQotCXJldHVybiBhcmVhLT5hZGRyOworCXZhZGRyID0g
dm1hcChwYWdlcywgY291bnQsIFZNX0RNQV9DT0hFUkVOVCwgcHJvdCk7CisJaWYgKHZhZGRyKQor
CQlmaW5kX3ZtX2FyZWEodmFkZHIpLT5wYWdlcyA9IHBhZ2VzOworCXJldHVybiB2YWRkcjsKIH0K
IAogLyoKQEAgLTYyLDI0ICs0MiwyMCBAQCB2b2lkICpkbWFfY29tbW9uX3BhZ2VzX3JlbWFwKHN0
cnVjdCBwYWdlICoqcGFnZXMsIHNpemVfdCBzaXplLAogdm9pZCAqZG1hX2NvbW1vbl9jb250aWd1
b3VzX3JlbWFwKHN0cnVjdCBwYWdlICpwYWdlLCBzaXplX3Qgc2l6ZSwKIAkJCXBncHJvdF90IHBy
b3QsIGNvbnN0IHZvaWQgKmNhbGxlcikKIHsKLQlpbnQgaTsKKwlpbnQgY291bnQgPSBzaXplID4+
IFBBR0VfU0hJRlQ7CiAJc3RydWN0IHBhZ2UgKipwYWdlczsKLQlzdHJ1Y3Qgdm1fc3RydWN0ICph
cmVhOworCXZvaWQgKnZhZGRyOworCWludCBpOwogCi0JcGFnZXMgPSBrbWFsbG9jKHNpemVvZihz
dHJ1Y3QgcGFnZSAqKSA8PCBnZXRfb3JkZXIoc2l6ZSksIEdGUF9LRVJORUwpOworCXBhZ2VzID0g
a21hbGxvY19hcnJheShjb3VudCwgc2l6ZW9mKHN0cnVjdCBwYWdlICopLCBHRlBfS0VSTkVMKTsK
IAlpZiAoIXBhZ2VzKQogCQlyZXR1cm4gTlVMTDsKLQotCWZvciAoaSA9IDA7IGkgPCAoc2l6ZSA+
PiBQQUdFX1NISUZUKTsgaSsrKQorCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKQogCQlwYWdl
c1tpXSA9IG50aF9wYWdlKHBhZ2UsIGkpOwotCi0JYXJlYSA9IF9fZG1hX2NvbW1vbl9wYWdlc19y
ZW1hcChwYWdlcywgc2l6ZSwgcHJvdCwgY2FsbGVyKTsKLQorCXZhZGRyID0gdm1hcChwYWdlcywg
Y291bnQsIFZNX0RNQV9DT0hFUkVOVCwgcHJvdCk7CiAJa2ZyZWUocGFnZXMpOwogCi0JaWYgKCFh
cmVhKQotCQlyZXR1cm4gTlVMTDsKLQlyZXR1cm4gYXJlYS0+YWRkcjsKKwlyZXR1cm4gdmFkZHI7
CiB9CiAKIC8qCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
