Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE081B6D64
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:39:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D6E1619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:39:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 116C665FCD; Fri, 24 Apr 2020 05:39:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A85A766098;
	Fri, 24 Apr 2020 05:29:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5595A66614
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 465BF6661F; Wed,  8 Apr 2020 12:01:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id E284B66628
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:41 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9NR-00049e-7q; Wed, 08 Apr 2020 12:00:18 +0000
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
Date: Wed,  8 Apr 2020 13:59:11 +0200
Message-Id: <20200408115926.1467567-14-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 13/28] mm: rename vmap_page_range to
	map_kernel_range
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

VGhpcyBtYXRjaGVzIHRoZSBtYXBfa2VybmVsX3JhbmdlX25vZmx1c2ggQVBJLiAgQWxzbyBjaGFu
Z2UgdG8gcGFzcwphIHNpemUgaW5zdGVhZCBvZiB0aGUgZW5kLCBzaW1pbGFyIHRvIHRoZSBub2Zs
dXNoIHZlcnNpb24uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5k
ZT4KLS0tCiBtbS92bWFsbG9jLmMgfCAxMSArKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tbS92bWFsbG9jLmMg
Yi9tbS92bWFsbG9jLmMKaW5kZXggNTVkZjVkYzZhOWZjLi5hM2Q4MTBkZWY1NjcgMTAwNjQ0Ci0t
LSBhL21tL3ZtYWxsb2MuYworKysgYi9tbS92bWFsbG9jLmMKQEAgLTI3MiwxMyArMjcyLDEzIEBA
IGludCBtYXBfa2VybmVsX3JhbmdlX25vZmx1c2godW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25l
ZCBsb25nIHNpemUsCiAJcmV0dXJuIG5yOwogfQogCi1zdGF0aWMgaW50IHZtYXBfcGFnZV9yYW5n
ZSh1bnNpZ25lZCBsb25nIHN0YXJ0LCB1bnNpZ25lZCBsb25nIGVuZCwKK3N0YXRpYyBpbnQgbWFw
X2tlcm5lbF9yYW5nZSh1bnNpZ25lZCBsb25nIHN0YXJ0LCB1bnNpZ25lZCBsb25nIHNpemUsCiAJ
CQkgICBwZ3Byb3RfdCBwcm90LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzKQogewogCWludCByZXQ7CiAK
LQlyZXQgPSBtYXBfa2VybmVsX3JhbmdlX25vZmx1c2goc3RhcnQsIGVuZCAtIHN0YXJ0LCBwcm90
LCBwYWdlcyk7Ci0JZmx1c2hfY2FjaGVfdm1hcChzdGFydCwgZW5kKTsKKwlyZXQgPSBtYXBfa2Vy
bmVsX3JhbmdlX25vZmx1c2goc3RhcnQsIHNpemUsIHByb3QsIHBhZ2VzKTsKKwlmbHVzaF9jYWNo
ZV92bWFwKHN0YXJ0LCBzdGFydCArIHNpemUpOwogCXJldHVybiByZXQ7CiB9CiAKQEAgLTE4NjYs
NyArMTg2Niw3IEBAIHZvaWQgKnZtX21hcF9yYW0oc3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWdu
ZWQgaW50IGNvdW50LCBpbnQgbm9kZSwgcGdwcm90X3QgcHJvCiAKIAlrYXNhbl91bnBvaXNvbl92
bWFsbG9jKG1lbSwgc2l6ZSk7CiAKLQlpZiAodm1hcF9wYWdlX3JhbmdlKGFkZHIsIGFkZHIgKyBz
aXplLCBwcm90LCBwYWdlcykgPCAwKSB7CisJaWYgKG1hcF9rZXJuZWxfcmFuZ2UoYWRkciwgc2l6
ZSwgcHJvdCwgcGFnZXMpIDwgMCkgewogCQl2bV91bm1hcF9yYW0obWVtLCBjb3VudCk7CiAJCXJl
dHVybiBOVUxMOwogCX0KQEAgLTIwMzAsMTAgKzIwMzAsOSBAQCB2b2lkIHVubWFwX2tlcm5lbF9y
YW5nZSh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgc2l6ZSkKIGludCBtYXBfdm1f
YXJlYShzdHJ1Y3Qgdm1fc3RydWN0ICphcmVhLCBwZ3Byb3RfdCBwcm90LCBzdHJ1Y3QgcGFnZSAq
KnBhZ2VzKQogewogCXVuc2lnbmVkIGxvbmcgYWRkciA9ICh1bnNpZ25lZCBsb25nKWFyZWEtPmFk
ZHI7Ci0JdW5zaWduZWQgbG9uZyBlbmQgPSBhZGRyICsgZ2V0X3ZtX2FyZWFfc2l6ZShhcmVhKTsK
IAlpbnQgZXJyOwogCi0JZXJyID0gdm1hcF9wYWdlX3JhbmdlKGFkZHIsIGVuZCwgcHJvdCwgcGFn
ZXMpOworCWVyciA9IG1hcF9rZXJuZWxfcmFuZ2UoYWRkciwgZ2V0X3ZtX2FyZWFfc2l6ZShhcmVh
KSwgcHJvdCwgcGFnZXMpOwogCiAJcmV0dXJuIGVyciA+IDAgPyAwIDogZXJyOwogfQotLSAKMi4y
NS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
