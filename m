Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B8D1B6DFE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:18:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C32B6199D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:18:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 28ED666030; Fri, 24 Apr 2020 06:18:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,TVD_SUBJ_WIPE_DEBT autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8ABFE666F2;
	Fri, 24 Apr 2020 05:30:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 967D866047
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 80EA66604B; Tue, 14 Apr 2020 13:15:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 39F916604E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:32 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLP0-0007EL-Uw; Tue, 14 Apr 2020 13:14:59 +0000
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
Date: Tue, 14 Apr 2020 15:13:39 +0200
Message-Id: <20200414131348.444715-21-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 20/29] gpu/drm: remove the powerpc hack in
	drm_legacy_sg_alloc
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

VGhlIG5vbi1jYWNoZWQgdm1hbGxvYyBtYXBwaW5nIHdhcyBpbml0aWFsbHkgYWRkZWQgYXMgYSBo
YWNrIGZvciB0aGUKZmlyc3QtZ2VuIGFtaWdhb25lIHBsYXRmb3JtICg2eHgvYm9vazMycyksIGlz
bid0IGZ1bGx5IHN1cHBvcnRlZAp1cHN0cmVhbSwgYW5kIHdoaWNoIHVzZWQgdGhlIGxlZ2FjeSBy
YWRlb24gZHJpdmVyIHRvZ2V0aGVyIHdpdGgKbm9uLWNvaGVyZW50IERNQS4gSG93ZXZlciB0aGlz
IG9ubHkgZXZlciB3b3JrZWQgcmVsaWFibHkgZm9yIERSSSAuCgpSZW1vdmUgdGhlIGhhY2sgYXMg
aXQgaXMgdGhlIGxhc3QgdXNlciBvZiBfX3ZtYWxsb2MgcGFzc2luZyBhIHBhZ2UKcHJvdGVjdGlv
biBmbGFnIG90aGVyIHRoYW4gUEFHRV9LRVJORUwgYW5kIGRpZG4ndCBkbyBhbnl0aGluZyBmb3IK
b3RoZXIgcGxhdGZvcm1zIHdpdGggbm9uLWNvaGVyZW50IERNQS4KClNpZ25lZC1vZmYtYnk6IENo
cmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgpBY2tlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KQWNrZWQtYnk6IFBldGVyIFppamxzdHJhIChJbnRlbCkgPHBl
dGVyekBpbmZyYWRlYWQub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fc2NhdHRlci5jIHwg
MTEgKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTAgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX3NjYXR0ZXIuYwppbmRleCBjYTUyMDAyOGIyY2IuLmY0ZTYxODRkMTg3
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9zY2F0dGVyLmMKQEAgLTQzLDE1ICs0Myw2IEBACiAKICNkZWZpbmUgREVC
VUdfU0NBVFRFUiAwCiAKLXN0YXRpYyBpbmxpbmUgdm9pZCAqZHJtX3ZtYWxsb2NfZG1hKHVuc2ln
bmVkIGxvbmcgc2l6ZSkKLXsKLSNpZiBkZWZpbmVkKF9fcG93ZXJwY19fKSAmJiBkZWZpbmVkKENP
TkZJR19OT1RfQ09IRVJFTlRfQ0FDSEUpCi0JcmV0dXJuIF9fdm1hbGxvYyhzaXplLCBHRlBfS0VS
TkVMLCBwZ3Byb3Rfbm9uY2FjaGVkX3djKFBBR0VfS0VSTkVMKSk7Ci0jZWxzZQotCXJldHVybiB2
bWFsbG9jXzMyKHNpemUpOwotI2VuZGlmCi19Ci0KIHN0YXRpYyB2b2lkIGRybV9zZ19jbGVhbnVw
KHN0cnVjdCBkcm1fc2dfbWVtICogZW50cnkpCiB7CiAJc3RydWN0IHBhZ2UgKnBhZ2U7CkBAIC0x
MjYsNyArMTE3LDcgQEAgaW50IGRybV9sZWdhY3lfc2dfYWxsb2Moc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwKIAkJcmV0dXJuIC1FTk9NRU07CiAJfQogCi0JZW50cnktPnZpcnR1
YWwgPSBkcm1fdm1hbGxvY19kbWEocGFnZXMgPDwgUEFHRV9TSElGVCk7CisJZW50cnktPnZpcnR1
YWwgPSB2bWFsbG9jXzMyKHBhZ2VzIDw8IFBBR0VfU0hJRlQpOwogCWlmICghZW50cnktPnZpcnR1
YWwpIHsKIAkJa2ZyZWUoZW50cnktPmJ1c2FkZHIpOwogCQlrZnJlZShlbnRyeS0+cGFnZWxpc3Qp
OwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
