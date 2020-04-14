Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC631B6DB0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:00:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2B7E60E25
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:00:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D4C306199D; Fri, 24 Apr 2020 06:00:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9DDF665CB;
	Fri, 24 Apr 2020 05:30:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1F5AE61997
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 12B32616DC; Tue, 14 Apr 2020 13:14:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 4033F616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:38 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLOC-0006Q5-O2; Tue, 14 Apr 2020 13:14:09 +0000
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
Date: Tue, 14 Apr 2020 15:13:24 +0200
Message-Id: <20200414131348.444715-6-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 05/29] dma-mapping: use vmap insted of
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
Ynk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgpBY2tlZC1ieTogUGV0ZXIgWmlqbHN0
cmEgKEludGVsKSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Ci0tLQoga2VybmVsL2RtYS9yZW1hcC5j
IHwgNDggKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2tlcm5lbC9kbWEvcmVtYXAuYyBiL2tlcm5lbC9kbWEvcmVtYXAuYwppbmRleCBkMTRjYmM4
Mzk4NmEuLjkxNGZmNWE1OGRkNSAxMDA2NDQKLS0tIGEva2VybmVsL2RtYS9yZW1hcC5jCisrKyBi
L2tlcm5lbC9kbWEvcmVtYXAuYwpAQCAtMjAsMjMgKzIwLDYgQEAgc3RydWN0IHBhZ2UgKipkbWFf
Y29tbW9uX2ZpbmRfcGFnZXModm9pZCAqY3B1X2FkZHIpCiAJcmV0dXJuIGFyZWEtPnBhZ2VzOwog
fQogCi1zdGF0aWMgc3RydWN0IHZtX3N0cnVjdCAqX19kbWFfY29tbW9uX3BhZ2VzX3JlbWFwKHN0
cnVjdCBwYWdlICoqcGFnZXMsCi0JCQlzaXplX3Qgc2l6ZSwgcGdwcm90X3QgcHJvdCwgY29uc3Qg
dm9pZCAqY2FsbGVyKQotewotCXN0cnVjdCB2bV9zdHJ1Y3QgKmFyZWE7Ci0KLQlhcmVhID0gZ2V0
X3ZtX2FyZWFfY2FsbGVyKHNpemUsIFZNX0RNQV9DT0hFUkVOVCwgY2FsbGVyKTsKLQlpZiAoIWFy
ZWEpCi0JCXJldHVybiBOVUxMOwotCi0JaWYgKG1hcF92bV9hcmVhKGFyZWEsIHByb3QsIHBhZ2Vz
KSkgewotCQl2dW5tYXAoYXJlYS0+YWRkcik7Ci0JCXJldHVybiBOVUxMOwotCX0KLQotCXJldHVy
biBhcmVhOwotfQotCiAvKgogICogUmVtYXBzIGFuIGFycmF5IG9mIFBBR0VfU0laRSBwYWdlcyBp
bnRvIGFub3RoZXIgdm1fYXJlYS4KICAqIENhbm5vdCBiZSB1c2VkIGluIG5vbi1zbGVlcGluZyBj
b250ZXh0cwpAQCAtNDQsMTUgKzI3LDEyIEBAIHN0YXRpYyBzdHJ1Y3Qgdm1fc3RydWN0ICpfX2Rt
YV9jb21tb25fcGFnZXNfcmVtYXAoc3RydWN0IHBhZ2UgKipwYWdlcywKIHZvaWQgKmRtYV9jb21t
b25fcGFnZXNfcmVtYXAoc3RydWN0IHBhZ2UgKipwYWdlcywgc2l6ZV90IHNpemUsCiAJCQkgcGdw
cm90X3QgcHJvdCwgY29uc3Qgdm9pZCAqY2FsbGVyKQogewotCXN0cnVjdCB2bV9zdHJ1Y3QgKmFy
ZWE7CisJdm9pZCAqdmFkZHI7CiAKLQlhcmVhID0gX19kbWFfY29tbW9uX3BhZ2VzX3JlbWFwKHBh
Z2VzLCBzaXplLCBwcm90LCBjYWxsZXIpOwotCWlmICghYXJlYSkKLQkJcmV0dXJuIE5VTEw7Ci0K
LQlhcmVhLT5wYWdlcyA9IHBhZ2VzOwotCi0JcmV0dXJuIGFyZWEtPmFkZHI7CisJdmFkZHIgPSB2
bWFwKHBhZ2VzLCBzaXplID4+IFBBR0VfU0hJRlQsIFZNX0RNQV9DT0hFUkVOVCwgcHJvdCk7CisJ
aWYgKHZhZGRyKQorCQlmaW5kX3ZtX2FyZWEodmFkZHIpLT5wYWdlcyA9IHBhZ2VzOworCXJldHVy
biB2YWRkcjsKIH0KIAogLyoKQEAgLTYyLDI0ICs0MiwyMCBAQCB2b2lkICpkbWFfY29tbW9uX3Bh
Z2VzX3JlbWFwKHN0cnVjdCBwYWdlICoqcGFnZXMsIHNpemVfdCBzaXplLAogdm9pZCAqZG1hX2Nv
bW1vbl9jb250aWd1b3VzX3JlbWFwKHN0cnVjdCBwYWdlICpwYWdlLCBzaXplX3Qgc2l6ZSwKIAkJ
CXBncHJvdF90IHByb3QsIGNvbnN0IHZvaWQgKmNhbGxlcikKIHsKLQlpbnQgaTsKKwlpbnQgY291
bnQgPSBzaXplID4+IFBBR0VfU0hJRlQ7CiAJc3RydWN0IHBhZ2UgKipwYWdlczsKLQlzdHJ1Y3Qg
dm1fc3RydWN0ICphcmVhOworCXZvaWQgKnZhZGRyOworCWludCBpOwogCi0JcGFnZXMgPSBrbWFs
bG9jKHNpemVvZihzdHJ1Y3QgcGFnZSAqKSA8PCBnZXRfb3JkZXIoc2l6ZSksIEdGUF9LRVJORUwp
OworCXBhZ2VzID0ga21hbGxvY19hcnJheShjb3VudCwgc2l6ZW9mKHN0cnVjdCBwYWdlICopLCBH
RlBfS0VSTkVMKTsKIAlpZiAoIXBhZ2VzKQogCQlyZXR1cm4gTlVMTDsKLQotCWZvciAoaSA9IDA7
IGkgPCAoc2l6ZSA+PiBQQUdFX1NISUZUKTsgaSsrKQorCWZvciAoaSA9IDA7IGkgPCBjb3VudDsg
aSsrKQogCQlwYWdlc1tpXSA9IG50aF9wYWdlKHBhZ2UsIGkpOwotCi0JYXJlYSA9IF9fZG1hX2Nv
bW1vbl9wYWdlc19yZW1hcChwYWdlcywgc2l6ZSwgcHJvdCwgY2FsbGVyKTsKLQorCXZhZGRyID0g
dm1hcChwYWdlcywgY291bnQsIFZNX0RNQV9DT0hFUkVOVCwgcHJvdCk7CiAJa2ZyZWUocGFnZXMp
OwogCi0JaWYgKCFhcmVhKQotCQlyZXR1cm4gTlVMTDsKLQlyZXR1cm4gYXJlYS0+YWRkcjsKKwly
ZXR1cm4gdmFkZHI7CiB9CiAKIC8qCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
