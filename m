Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB511B6DC7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:06:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D027666030
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:06:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C13176602B; Fri, 24 Apr 2020 06:06:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1691C66608;
	Fri, 24 Apr 2020 05:30:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 81036616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 75D1F61999; Tue, 14 Apr 2020 13:14:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id DAFDC616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:54 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLOb-0006lI-8l; Tue, 14 Apr 2020 13:14:33 +0000
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
Date: Tue, 14 Apr 2020 15:13:31 +0200
Message-Id: <20200414131348.444715-13-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 12/29] mm: pass addr as unsigned long to
	vb_free
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

RXZlciB1c2Ugb2YgYWRkciBpbiB2Yl9mcmVlIGNhc3RzIHRvIHVuc2lnbmVkIGxvbmcgZmlyc3Qs
IGFuZCB0aGUgY2FsbGVyCmhhcyBhbiB1bnNpZ25lZCBsb25nIHZlcnNpb24gb2YgdGhlIGFkZHJl
c3MgYXZhaWxhYmxlIGFueXdheS4gIEp1c3QgcGFzcwp0aGF0IGFuZCBhdm9pZCBhbGwgdGhlIGNh
c3RzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+CkFja2Vk
LWJ5OiBQZXRlciBaaWpsc3RyYSAoSW50ZWwpIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KLS0tCiBt
bS92bWFsbG9jLmMgfCAxNiArKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21t
L3ZtYWxsb2MuYwppbmRleCA5MTgzZmMwZDM2NWEuLmFhZGE5ZTkxNDRiZCAxMDA2NDQKLS0tIGEv
bW0vdm1hbGxvYy5jCisrKyBiL21tL3ZtYWxsb2MuYwpAQCAtMTY2NCw3ICsxNjY0LDcgQEAgc3Rh
dGljIHZvaWQgKnZiX2FsbG9jKHVuc2lnbmVkIGxvbmcgc2l6ZSwgZ2ZwX3QgZ2ZwX21hc2spCiAJ
cmV0dXJuIHZhZGRyOwogfQogCi1zdGF0aWMgdm9pZCB2Yl9mcmVlKGNvbnN0IHZvaWQgKmFkZHIs
IHVuc2lnbmVkIGxvbmcgc2l6ZSkKK3N0YXRpYyB2b2lkIHZiX2ZyZWUodW5zaWduZWQgbG9uZyBh
ZGRyLCB1bnNpZ25lZCBsb25nIHNpemUpCiB7CiAJdW5zaWduZWQgbG9uZyBvZmZzZXQ7CiAJdW5z
aWduZWQgbG9uZyB2Yl9pZHg7CkBAIC0xNjc0LDI0ICsxNjc0LDIyIEBAIHN0YXRpYyB2b2lkIHZi
X2ZyZWUoY29uc3Qgdm9pZCAqYWRkciwgdW5zaWduZWQgbG9uZyBzaXplKQogCUJVR19PTihvZmZz
ZXRfaW5fcGFnZShzaXplKSk7CiAJQlVHX09OKHNpemUgPiBQQUdFX1NJWkUqVk1BUF9NQVhfQUxM
T0MpOwogCi0JZmx1c2hfY2FjaGVfdnVubWFwKCh1bnNpZ25lZCBsb25nKWFkZHIsICh1bnNpZ25l
ZCBsb25nKWFkZHIgKyBzaXplKTsKKwlmbHVzaF9jYWNoZV92dW5tYXAoYWRkciwgYWRkciArIHNp
emUpOwogCiAJb3JkZXIgPSBnZXRfb3JkZXIoc2l6ZSk7CiAKLQlvZmZzZXQgPSAodW5zaWduZWQg
bG9uZylhZGRyICYgKFZNQVBfQkxPQ0tfU0laRSAtIDEpOwotCW9mZnNldCA+Pj0gUEFHRV9TSElG
VDsKKwlvZmZzZXQgPSAoYWRkciAmIChWTUFQX0JMT0NLX1NJWkUgLSAxKSkgPj4gUEFHRV9TSElG
VDsKIAotCXZiX2lkeCA9IGFkZHJfdG9fdmJfaWR4KCh1bnNpZ25lZCBsb25nKWFkZHIpOworCXZi
X2lkeCA9IGFkZHJfdG9fdmJfaWR4KGFkZHIpOwogCXJjdV9yZWFkX2xvY2soKTsKIAl2YiA9IHJh
ZGl4X3RyZWVfbG9va3VwKCZ2bWFwX2Jsb2NrX3RyZWUsIHZiX2lkeCk7CiAJcmN1X3JlYWRfdW5s
b2NrKCk7CiAJQlVHX09OKCF2Yik7CiAKLQl2dW5tYXBfcGFnZV9yYW5nZSgodW5zaWduZWQgbG9u
ZylhZGRyLCAodW5zaWduZWQgbG9uZylhZGRyICsgc2l6ZSk7CisJdnVubWFwX3BhZ2VfcmFuZ2Uo
YWRkciwgYWRkciArIHNpemUpOwogCiAJaWYgKGRlYnVnX3BhZ2VhbGxvY19lbmFibGVkX3N0YXRp
YygpKQotCQlmbHVzaF90bGJfa2VybmVsX3JhbmdlKCh1bnNpZ25lZCBsb25nKWFkZHIsCi0JCQkJ
CSh1bnNpZ25lZCBsb25nKWFkZHIgKyBzaXplKTsKKwkJZmx1c2hfdGxiX2tlcm5lbF9yYW5nZShh
ZGRyLCBhZGRyICsgc2l6ZSk7CiAKIAlzcGluX2xvY2soJnZiLT5sb2NrKTsKIApAQCAtMTc5MSw3
ICsxNzg5LDcgQEAgdm9pZCB2bV91bm1hcF9yYW0oY29uc3Qgdm9pZCAqbWVtLCB1bnNpZ25lZCBp
bnQgY291bnQpCiAKIAlpZiAobGlrZWx5KGNvdW50IDw9IFZNQVBfTUFYX0FMTE9DKSkgewogCQlk
ZWJ1Z19jaGVja19ub19sb2Nrc19mcmVlZChtZW0sIHNpemUpOwotCQl2Yl9mcmVlKG1lbSwgc2l6
ZSk7CisJCXZiX2ZyZWUoYWRkciwgc2l6ZSk7CiAJCXJldHVybjsKIAl9CiAKLS0gCjIuMjUuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
