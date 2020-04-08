Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 288BF1B6D63
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:39:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 40DAF619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:39:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 328C565FCD; Fri, 24 Apr 2020 05:39:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E939366076;
	Fri, 24 Apr 2020 05:29:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C688066614
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BB4576661F; Wed,  8 Apr 2020 12:01:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id DA2E3666D4
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:34 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9NJ-0002pA-RG; Wed, 08 Apr 2020 12:00:10 +0000
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
Date: Wed,  8 Apr 2020 13:59:09 +0200
Message-Id: <20200408115926.1467567-12-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 11/28] mm: pass addr as unsigned long to
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
c3RzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0tLQog
bW0vdm1hbGxvYy5jIHwgMTYgKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tbS92bWFsbG9jLmMgYi9t
bS92bWFsbG9jLmMKaW5kZXggOTE4M2ZjMGQzNjVhLi5hYWRhOWU5MTQ0YmQgMTAwNjQ0Ci0tLSBh
L21tL3ZtYWxsb2MuYworKysgYi9tbS92bWFsbG9jLmMKQEAgLTE2NjQsNyArMTY2NCw3IEBAIHN0
YXRpYyB2b2lkICp2Yl9hbGxvYyh1bnNpZ25lZCBsb25nIHNpemUsIGdmcF90IGdmcF9tYXNrKQog
CXJldHVybiB2YWRkcjsKIH0KIAotc3RhdGljIHZvaWQgdmJfZnJlZShjb25zdCB2b2lkICphZGRy
LCB1bnNpZ25lZCBsb25nIHNpemUpCitzdGF0aWMgdm9pZCB2Yl9mcmVlKHVuc2lnbmVkIGxvbmcg
YWRkciwgdW5zaWduZWQgbG9uZyBzaXplKQogewogCXVuc2lnbmVkIGxvbmcgb2Zmc2V0OwogCXVu
c2lnbmVkIGxvbmcgdmJfaWR4OwpAQCAtMTY3NCwyNCArMTY3NCwyMiBAQCBzdGF0aWMgdm9pZCB2
Yl9mcmVlKGNvbnN0IHZvaWQgKmFkZHIsIHVuc2lnbmVkIGxvbmcgc2l6ZSkKIAlCVUdfT04ob2Zm
c2V0X2luX3BhZ2Uoc2l6ZSkpOwogCUJVR19PTihzaXplID4gUEFHRV9TSVpFKlZNQVBfTUFYX0FM
TE9DKTsKIAotCWZsdXNoX2NhY2hlX3Z1bm1hcCgodW5zaWduZWQgbG9uZylhZGRyLCAodW5zaWdu
ZWQgbG9uZylhZGRyICsgc2l6ZSk7CisJZmx1c2hfY2FjaGVfdnVubWFwKGFkZHIsIGFkZHIgKyBz
aXplKTsKIAogCW9yZGVyID0gZ2V0X29yZGVyKHNpemUpOwogCi0Jb2Zmc2V0ID0gKHVuc2lnbmVk
IGxvbmcpYWRkciAmIChWTUFQX0JMT0NLX1NJWkUgLSAxKTsKLQlvZmZzZXQgPj49IFBBR0VfU0hJ
RlQ7CisJb2Zmc2V0ID0gKGFkZHIgJiAoVk1BUF9CTE9DS19TSVpFIC0gMSkpID4+IFBBR0VfU0hJ
RlQ7CiAKLQl2Yl9pZHggPSBhZGRyX3RvX3ZiX2lkeCgodW5zaWduZWQgbG9uZylhZGRyKTsKKwl2
Yl9pZHggPSBhZGRyX3RvX3ZiX2lkeChhZGRyKTsKIAlyY3VfcmVhZF9sb2NrKCk7CiAJdmIgPSBy
YWRpeF90cmVlX2xvb2t1cCgmdm1hcF9ibG9ja190cmVlLCB2Yl9pZHgpOwogCXJjdV9yZWFkX3Vu
bG9jaygpOwogCUJVR19PTighdmIpOwogCi0JdnVubWFwX3BhZ2VfcmFuZ2UoKHVuc2lnbmVkIGxv
bmcpYWRkciwgKHVuc2lnbmVkIGxvbmcpYWRkciArIHNpemUpOworCXZ1bm1hcF9wYWdlX3Jhbmdl
KGFkZHIsIGFkZHIgKyBzaXplKTsKIAogCWlmIChkZWJ1Z19wYWdlYWxsb2NfZW5hYmxlZF9zdGF0
aWMoKSkKLQkJZmx1c2hfdGxiX2tlcm5lbF9yYW5nZSgodW5zaWduZWQgbG9uZylhZGRyLAotCQkJ
CQkodW5zaWduZWQgbG9uZylhZGRyICsgc2l6ZSk7CisJCWZsdXNoX3RsYl9rZXJuZWxfcmFuZ2Uo
YWRkciwgYWRkciArIHNpemUpOwogCiAJc3Bpbl9sb2NrKCZ2Yi0+bG9jayk7CiAKQEAgLTE3OTEs
NyArMTc4OSw3IEBAIHZvaWQgdm1fdW5tYXBfcmFtKGNvbnN0IHZvaWQgKm1lbSwgdW5zaWduZWQg
aW50IGNvdW50KQogCiAJaWYgKGxpa2VseShjb3VudCA8PSBWTUFQX01BWF9BTExPQykpIHsKIAkJ
ZGVidWdfY2hlY2tfbm9fbG9ja3NfZnJlZWQobWVtLCBzaXplKTsKLQkJdmJfZnJlZShtZW0sIHNp
emUpOworCQl2Yl9mcmVlKGFkZHIsIHNpemUpOwogCQlyZXR1cm47CiAJfQogCi0tIAoyLjI1LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
