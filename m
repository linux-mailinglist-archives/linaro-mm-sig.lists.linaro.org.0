Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A88171B6E06
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:19:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4CDF619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:19:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C6992619CF; Fri, 24 Apr 2020 06:19:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1021F666E9;
	Fri, 24 Apr 2020 05:30:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3012D6604E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1C06C6604B; Tue, 14 Apr 2020 13:15:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id D64D36604F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:33 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLPD-0008Me-8R; Tue, 14 Apr 2020 13:15:11 +0000
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
Date: Tue, 14 Apr 2020 15:13:42 +0200
Message-Id: <20200414131348.444715-24-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 23/29] mm: remove both instances of
	__vmalloc_node_flags
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

VGhlIHJlYWwgdmVyc2lvbiBqdXN0IGhhZCBhIGZldyBjYWxsZXJzIHRoYXQgY2FuIG9wZW4gY29k
ZSBpdCBhbmQKcmVtb3ZlIG9uZSBsYXllciBvZiBpbmRpcmVjdGlvbi4gIFRoZSBub21tdSBzdHVi
IHdhcyBwdWJsaWMgYnV0IG9ubHkKaGFkIGEgc2luZ2xlIGNhbGxlciwgc28gcmVtb3ZlIGl0IGFu
ZCBhdm9pZCBhIENPTkZJR19NTVUgaWZkZWYgaW4Kdm1hbGxvYy5oLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+CkFja2VkLWJ5OiBQZXRlciBaaWpsc3RyYSAo
SW50ZWwpIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KLS0tCiBpbmNsdWRlL2xpbnV4L3ZtYWxsb2Mu
aCB8ICA5IC0tLS0tLS0tLQogbW0vbm9tbXUuYyAgICAgICAgICAgICAgfCAgMyArKy0KIG1tL3Zt
YWxsb2MuYyAgICAgICAgICAgIHwgMjAgKysrKysrLS0tLS0tLS0tLS0tLS0KIDMgZmlsZXMgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNs
dWRlL2xpbnV4L3ZtYWxsb2MuaCBiL2luY2x1ZGUvbGludXgvdm1hbGxvYy5oCmluZGV4IGMxYjlk
NmVjYTA1Zi4uNGE0NmQyOTZlNzBkIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3ZtYWxsb2Mu
aAorKysgYi9pbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaApAQCAtMTE1LDE3ICsxMTUsOCBAQCBleHRl
cm4gdm9pZCAqX192bWFsbG9jX25vZGVfcmFuZ2UodW5zaWduZWQgbG9uZyBzaXplLCB1bnNpZ25l
ZCBsb25nIGFsaWduLAogCQkJdW5zaWduZWQgbG9uZyBzdGFydCwgdW5zaWduZWQgbG9uZyBlbmQs
IGdmcF90IGdmcF9tYXNrLAogCQkJcGdwcm90X3QgcHJvdCwgdW5zaWduZWQgbG9uZyB2bV9mbGFn
cywgaW50IG5vZGUsCiAJCQljb25zdCB2b2lkICpjYWxsZXIpOwotI2lmbmRlZiBDT05GSUdfTU1V
Ci1leHRlcm4gdm9pZCAqX192bWFsbG9jX25vZGVfZmxhZ3ModW5zaWduZWQgbG9uZyBzaXplLCBp
bnQgbm9kZSwgZ2ZwX3QgZmxhZ3MpOwotc3RhdGljIGlubGluZSB2b2lkICpfX3ZtYWxsb2Nfbm9k
ZV9mbGFnc19jYWxsZXIodW5zaWduZWQgbG9uZyBzaXplLCBpbnQgbm9kZSwKLQkJCQkJCWdmcF90
IGZsYWdzLCB2b2lkICpjYWxsZXIpCi17Ci0JcmV0dXJuIF9fdm1hbGxvY19ub2RlX2ZsYWdzKHNp
emUsIG5vZGUsIGZsYWdzKTsKLX0KLSNlbHNlCiBleHRlcm4gdm9pZCAqX192bWFsbG9jX25vZGVf
ZmxhZ3NfY2FsbGVyKHVuc2lnbmVkIGxvbmcgc2l6ZSwKIAkJCQkJIGludCBub2RlLCBnZnBfdCBm
bGFncywgdm9pZCAqY2FsbGVyKTsKLSNlbmRpZgogCiBleHRlcm4gdm9pZCB2ZnJlZShjb25zdCB2
b2lkICphZGRyKTsKIGV4dGVybiB2b2lkIHZmcmVlX2F0b21pYyhjb25zdCB2b2lkICphZGRyKTsK
ZGlmZiAtLWdpdCBhL21tL25vbW11LmMgYi9tbS9ub21tdS5jCmluZGV4IDJkZjU0OWFkYjIyYi4u
OTU1M2VmYTU5Nzg3IDEwMDY0NAotLS0gYS9tbS9ub21tdS5jCisrKyBiL21tL25vbW11LmMKQEAg
LTE1MCw3ICsxNTAsOCBAQCB2b2lkICpfX3ZtYWxsb2ModW5zaWduZWQgbG9uZyBzaXplLCBnZnBf
dCBnZnBfbWFzaykKIH0KIEVYUE9SVF9TWU1CT0woX192bWFsbG9jKTsKIAotdm9pZCAqX192bWFs
bG9jX25vZGVfZmxhZ3ModW5zaWduZWQgbG9uZyBzaXplLCBpbnQgbm9kZSwgZ2ZwX3QgZmxhZ3Mp
Cit2b2lkICpfX3ZtYWxsb2Nfbm9kZV9mbGFnc19jYWxsZXIodW5zaWduZWQgbG9uZyBzaXplLCBp
bnQgbm9kZSwgZ2ZwX3QgZmxhZ3MsCisJCXZvaWQgKmNhbGxlcikKIHsKIAlyZXR1cm4gX192bWFs
bG9jKHNpemUsIGZsYWdzKTsKIH0KZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxs
b2MuYwppbmRleCBkZTc5NTI5NTllODIuLjNkNTlkODQ4YWQ0OCAxMDA2NDQKLS0tIGEvbW0vdm1h
bGxvYy5jCisrKyBiL21tL3ZtYWxsb2MuYwpAQCAtMjU2NiwxNCArMjU2Niw2IEBAIHZvaWQgKl9f
dm1hbGxvYyh1bnNpZ25lZCBsb25nIHNpemUsIGdmcF90IGdmcF9tYXNrKQogfQogRVhQT1JUX1NZ
TUJPTChfX3ZtYWxsb2MpOwogCi1zdGF0aWMgaW5saW5lIHZvaWQgKl9fdm1hbGxvY19ub2RlX2Zs
YWdzKHVuc2lnbmVkIGxvbmcgc2l6ZSwKLQkJCQkJaW50IG5vZGUsIGdmcF90IGZsYWdzKQotewot
CXJldHVybiBfX3ZtYWxsb2Nfbm9kZShzaXplLCAxLCBmbGFncywgbm9kZSwKLQkJCQlfX2J1aWx0
aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwotfQotCi0KIHZvaWQgKl9fdm1hbGxvY19ub2RlX2ZsYWdz
X2NhbGxlcih1bnNpZ25lZCBsb25nIHNpemUsIGludCBub2RlLCBnZnBfdCBmbGFncywKIAkJCQkg
IHZvaWQgKmNhbGxlcikKIHsKQEAgLTI1OTQsOCArMjU4Niw4IEBAIHZvaWQgKl9fdm1hbGxvY19u
b2RlX2ZsYWdzX2NhbGxlcih1bnNpZ25lZCBsb25nIHNpemUsIGludCBub2RlLCBnZnBfdCBmbGFn
cywKICAqLwogdm9pZCAqdm1hbGxvYyh1bnNpZ25lZCBsb25nIHNpemUpCiB7Ci0JcmV0dXJuIF9f
dm1hbGxvY19ub2RlX2ZsYWdzKHNpemUsIE5VTUFfTk9fTk9ERSwKLQkJCQkgICAgR0ZQX0tFUk5F
TCk7CisJcmV0dXJuIF9fdm1hbGxvY19ub2RlKHNpemUsIDEsIEdGUF9LRVJORUwsIE5VTUFfTk9f
Tk9ERSwKKwkJCQlfX2J1aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwogfQogRVhQT1JUX1NZTUJP
TCh2bWFsbG9jKTsKIApAQCAtMjYxNCw4ICsyNjA2LDggQEAgRVhQT1JUX1NZTUJPTCh2bWFsbG9j
KTsKICAqLwogdm9pZCAqdnphbGxvYyh1bnNpZ25lZCBsb25nIHNpemUpCiB7Ci0JcmV0dXJuIF9f
dm1hbGxvY19ub2RlX2ZsYWdzKHNpemUsIE5VTUFfTk9fTk9ERSwKLQkJCQlHRlBfS0VSTkVMIHwg
X19HRlBfWkVSTyk7CisJcmV0dXJuIF9fdm1hbGxvY19ub2RlKHNpemUsIDEsIEdGUF9LRVJORUwg
fCBfX0dGUF9aRVJPLCBOVU1BX05PX05PREUsCisJCQkJX19idWlsdGluX3JldHVybl9hZGRyZXNz
KDApKTsKIH0KIEVYUE9SVF9TWU1CT0wodnphbGxvYyk7CiAKQEAgLTI2NzAsOCArMjY2Miw4IEBA
IEVYUE9SVF9TWU1CT0wodm1hbGxvY19ub2RlKTsKICAqLwogdm9pZCAqdnphbGxvY19ub2RlKHVu
c2lnbmVkIGxvbmcgc2l6ZSwgaW50IG5vZGUpCiB7Ci0JcmV0dXJuIF9fdm1hbGxvY19ub2RlX2Zs
YWdzKHNpemUsIG5vZGUsCi0JCQkgR0ZQX0tFUk5FTCB8IF9fR0ZQX1pFUk8pOworCXJldHVybiBf
X3ZtYWxsb2Nfbm9kZShzaXplLCAxLCBHRlBfS0VSTkVMIHwgX19HRlBfWkVSTywgbm9kZSwKKwkJ
CQlfX2J1aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwogfQogRVhQT1JUX1NZTUJPTCh2emFsbG9j
X25vZGUpOwogCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
