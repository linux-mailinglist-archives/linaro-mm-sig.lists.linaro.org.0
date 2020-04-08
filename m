Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F1B1B6D72
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:47:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB024619B7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:47:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A7162619C4; Fri, 24 Apr 2020 05:47:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 00A7066521;
	Fri, 24 Apr 2020 05:29:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 83EE9665FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7291566611; Wed,  8 Apr 2020 12:01:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id A8DA866626
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:10 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Nw-0005cH-PA; Wed, 08 Apr 2020 12:00:49 +0000
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
Date: Wed,  8 Apr 2020 13:59:20 +0200
Message-Id: <20200408115926.1467567-23-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 22/28] mm: remove both instances of
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
Q2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0tLQogaW5jbHVkZS9saW51eC92bWFsbG9j
LmggfCAgOSAtLS0tLS0tLS0KIG1tL25vbW11LmMgICAgICAgICAgICAgIHwgIDMgKystCiBtbS92
bWFsbG9jLmMgICAgICAgICAgICB8IDIwICsrKysrKy0tLS0tLS0tLS0tLS0tCiAzIGZpbGVzIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC92bWFsbG9jLmggYi9pbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaAppbmRleCBjMWI5
ZDZlY2EwNWYuLjRhNDZkMjk2ZTcwZCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC92bWFsbG9j
LmgKKysrIGIvaW5jbHVkZS9saW51eC92bWFsbG9jLmgKQEAgLTExNSwxNyArMTE1LDggQEAgZXh0
ZXJuIHZvaWQgKl9fdm1hbGxvY19ub2RlX3JhbmdlKHVuc2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWdu
ZWQgbG9uZyBhbGlnbiwKIAkJCXVuc2lnbmVkIGxvbmcgc3RhcnQsIHVuc2lnbmVkIGxvbmcgZW5k
LCBnZnBfdCBnZnBfbWFzaywKIAkJCXBncHJvdF90IHByb3QsIHVuc2lnbmVkIGxvbmcgdm1fZmxh
Z3MsIGludCBub2RlLAogCQkJY29uc3Qgdm9pZCAqY2FsbGVyKTsKLSNpZm5kZWYgQ09ORklHX01N
VQotZXh0ZXJuIHZvaWQgKl9fdm1hbGxvY19ub2RlX2ZsYWdzKHVuc2lnbmVkIGxvbmcgc2l6ZSwg
aW50IG5vZGUsIGdmcF90IGZsYWdzKTsKLXN0YXRpYyBpbmxpbmUgdm9pZCAqX192bWFsbG9jX25v
ZGVfZmxhZ3NfY2FsbGVyKHVuc2lnbmVkIGxvbmcgc2l6ZSwgaW50IG5vZGUsCi0JCQkJCQlnZnBf
dCBmbGFncywgdm9pZCAqY2FsbGVyKQotewotCXJldHVybiBfX3ZtYWxsb2Nfbm9kZV9mbGFncyhz
aXplLCBub2RlLCBmbGFncyk7Ci19Ci0jZWxzZQogZXh0ZXJuIHZvaWQgKl9fdm1hbGxvY19ub2Rl
X2ZsYWdzX2NhbGxlcih1bnNpZ25lZCBsb25nIHNpemUsCiAJCQkJCSBpbnQgbm9kZSwgZ2ZwX3Qg
ZmxhZ3MsIHZvaWQgKmNhbGxlcik7Ci0jZW5kaWYKIAogZXh0ZXJuIHZvaWQgdmZyZWUoY29uc3Qg
dm9pZCAqYWRkcik7CiBleHRlcm4gdm9pZCB2ZnJlZV9hdG9taWMoY29uc3Qgdm9pZCAqYWRkcik7
CmRpZmYgLS1naXQgYS9tbS9ub21tdS5jIGIvbW0vbm9tbXUuYwppbmRleCAyZGY1NDlhZGIyMmIu
Ljk1NTNlZmE1OTc4NyAxMDA2NDQKLS0tIGEvbW0vbm9tbXUuYworKysgYi9tbS9ub21tdS5jCkBA
IC0xNTAsNyArMTUwLDggQEAgdm9pZCAqX192bWFsbG9jKHVuc2lnbmVkIGxvbmcgc2l6ZSwgZ2Zw
X3QgZ2ZwX21hc2spCiB9CiBFWFBPUlRfU1lNQk9MKF9fdm1hbGxvYyk7CiAKLXZvaWQgKl9fdm1h
bGxvY19ub2RlX2ZsYWdzKHVuc2lnbmVkIGxvbmcgc2l6ZSwgaW50IG5vZGUsIGdmcF90IGZsYWdz
KQordm9pZCAqX192bWFsbG9jX25vZGVfZmxhZ3NfY2FsbGVyKHVuc2lnbmVkIGxvbmcgc2l6ZSwg
aW50IG5vZGUsIGdmcF90IGZsYWdzLAorCQl2b2lkICpjYWxsZXIpCiB7CiAJcmV0dXJuIF9fdm1h
bGxvYyhzaXplLCBmbGFncyk7CiB9CmRpZmYgLS1naXQgYS9tbS92bWFsbG9jLmMgYi9tbS92bWFs
bG9jLmMKaW5kZXggZGU3OTUyOTU5ZTgyLi4zZDU5ZDg0OGFkNDggMTAwNjQ0Ci0tLSBhL21tL3Zt
YWxsb2MuYworKysgYi9tbS92bWFsbG9jLmMKQEAgLTI1NjYsMTQgKzI1NjYsNiBAQCB2b2lkICpf
X3ZtYWxsb2ModW5zaWduZWQgbG9uZyBzaXplLCBnZnBfdCBnZnBfbWFzaykKIH0KIEVYUE9SVF9T
WU1CT0woX192bWFsbG9jKTsKIAotc3RhdGljIGlubGluZSB2b2lkICpfX3ZtYWxsb2Nfbm9kZV9m
bGFncyh1bnNpZ25lZCBsb25nIHNpemUsCi0JCQkJCWludCBub2RlLCBnZnBfdCBmbGFncykKLXsK
LQlyZXR1cm4gX192bWFsbG9jX25vZGUoc2l6ZSwgMSwgZmxhZ3MsIG5vZGUsCi0JCQkJX19idWls
dGluX3JldHVybl9hZGRyZXNzKDApKTsKLX0KLQotCiB2b2lkICpfX3ZtYWxsb2Nfbm9kZV9mbGFn
c19jYWxsZXIodW5zaWduZWQgbG9uZyBzaXplLCBpbnQgbm9kZSwgZ2ZwX3QgZmxhZ3MsCiAJCQkJ
ICB2b2lkICpjYWxsZXIpCiB7CkBAIC0yNTk0LDggKzI1ODYsOCBAQCB2b2lkICpfX3ZtYWxsb2Nf
bm9kZV9mbGFnc19jYWxsZXIodW5zaWduZWQgbG9uZyBzaXplLCBpbnQgbm9kZSwgZ2ZwX3QgZmxh
Z3MsCiAgKi8KIHZvaWQgKnZtYWxsb2ModW5zaWduZWQgbG9uZyBzaXplKQogewotCXJldHVybiBf
X3ZtYWxsb2Nfbm9kZV9mbGFncyhzaXplLCBOVU1BX05PX05PREUsCi0JCQkJICAgIEdGUF9LRVJO
RUwpOworCXJldHVybiBfX3ZtYWxsb2Nfbm9kZShzaXplLCAxLCBHRlBfS0VSTkVMLCBOVU1BX05P
X05PREUsCisJCQkJX19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKIH0KIEVYUE9SVF9TWU1C
T0wodm1hbGxvYyk7CiAKQEAgLTI2MTQsOCArMjYwNiw4IEBAIEVYUE9SVF9TWU1CT0wodm1hbGxv
Yyk7CiAgKi8KIHZvaWQgKnZ6YWxsb2ModW5zaWduZWQgbG9uZyBzaXplKQogewotCXJldHVybiBf
X3ZtYWxsb2Nfbm9kZV9mbGFncyhzaXplLCBOVU1BX05PX05PREUsCi0JCQkJR0ZQX0tFUk5FTCB8
IF9fR0ZQX1pFUk8pOworCXJldHVybiBfX3ZtYWxsb2Nfbm9kZShzaXplLCAxLCBHRlBfS0VSTkVM
IHwgX19HRlBfWkVSTywgTlVNQV9OT19OT0RFLAorCQkJCV9fYnVpbHRpbl9yZXR1cm5fYWRkcmVz
cygwKSk7CiB9CiBFWFBPUlRfU1lNQk9MKHZ6YWxsb2MpOwogCkBAIC0yNjcwLDggKzI2NjIsOCBA
QCBFWFBPUlRfU1lNQk9MKHZtYWxsb2Nfbm9kZSk7CiAgKi8KIHZvaWQgKnZ6YWxsb2Nfbm9kZSh1
bnNpZ25lZCBsb25nIHNpemUsIGludCBub2RlKQogewotCXJldHVybiBfX3ZtYWxsb2Nfbm9kZV9m
bGFncyhzaXplLCBub2RlLAotCQkJIEdGUF9LRVJORUwgfCBfX0dGUF9aRVJPKTsKKwlyZXR1cm4g
X192bWFsbG9jX25vZGUoc2l6ZSwgMSwgR0ZQX0tFUk5FTCB8IF9fR0ZQX1pFUk8sIG5vZGUsCisJ
CQkJX19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKIH0KIEVYUE9SVF9TWU1CT0wodnphbGxv
Y19ub2RlKTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
