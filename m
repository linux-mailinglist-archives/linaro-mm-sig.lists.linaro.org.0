Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A411B6D5E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:38:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 53316619D7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:38:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4632965FCD; Fri, 24 Apr 2020 05:38:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D86866073;
	Fri, 24 Apr 2020 05:29:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3298666614
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1DE286661F; Wed,  8 Apr 2020 12:01:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id D6FAF66645
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:24 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9N2-00021M-Ag; Wed, 08 Apr 2020 11:59:53 +0000
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
Date: Wed,  8 Apr 2020 13:59:05 +0200
Message-Id: <20200408115926.1467567-8-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 07/28] mm: remove __get_vm_area
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

U3dpdGNoIHRoZSB0d28gcmVtYWluaW5nIGNhbGxlcnMgdG8gdXNlIF9fZ2V0X3ZtX2FyZWFfY2Fs
bGVyIGluc3RlYWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5k
ZT4KLS0tCiBhcmNoL3Bvd2VycGMva2VybmVsL3BjaV82NC5jIHwgMyArKy0KIGFyY2gvc2gva2Vy
bmVsL2NwdS9zaDQvc3EuYyAgfCAzICsrLQogaW5jbHVkZS9saW51eC92bWFsbG9jLmggICAgICB8
IDIgLS0KIG1tL3ZtYWxsb2MuYyAgICAgICAgICAgICAgICAgfCA4IC0tLS0tLS0tCiA0IGZpbGVz
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
YXJjaC9wb3dlcnBjL2tlcm5lbC9wY2lfNjQuYyBiL2FyY2gvcG93ZXJwYy9rZXJuZWwvcGNpXzY0
LmMKaW5kZXggOGU4NmJkOWMxZWNhLi4xNTVlMmVmNjAwNTMgMTAwNjQ0Ci0tLSBhL2FyY2gvcG93
ZXJwYy9rZXJuZWwvcGNpXzY0LmMKKysrIGIvYXJjaC9wb3dlcnBjL2tlcm5lbC9wY2lfNjQuYwpA
QCAtMTMyLDcgKzEzMiw4IEBAIHZvaWQgX19pb21lbSAqaW9yZW1hcF9wYmgocGh5c19hZGRyX3Qg
cGFkZHIsIHVuc2lnbmVkIGxvbmcgc2l6ZSkKIAkgKiBhZGRyZXNzIGRlY29kaW5nIGJ1dCBJJ2Qg
cmF0aGVyIG5vdCBkZWFsIHdpdGggdGhvc2Ugb3V0c2lkZSBvZiB0aGUKIAkgKiByZXNlcnZlZCA2
NEsgbGVnYWN5IHJlZ2lvbi4KIAkgKi8KLQlhcmVhID0gX19nZXRfdm1fYXJlYShzaXplLCAwLCBQ
SEJfSU9fQkFTRSwgUEhCX0lPX0VORCk7CisJYXJlYSA9IF9fZ2V0X3ZtX2FyZWFfY2FsbGVyKHNp
emUsIDAsIFBIQl9JT19CQVNFLCBQSEJfSU9fRU5ELAorCQkJCSAgICBfX2J1aWx0aW5fcmV0dXJu
X2FkZHJlc3MoMCkpOwogCWlmICghYXJlYSkKIAkJcmV0dXJuIE5VTEw7CiAKZGlmZiAtLWdpdCBh
L2FyY2gvc2gva2VybmVsL2NwdS9zaDQvc3EuYyBiL2FyY2gvc2gva2VybmVsL2NwdS9zaDQvc3Eu
YwppbmRleCA5MzRmZjg0ODQ0ZmEuLmQ0MzIxNjRiMjNiNyAxMDA2NDQKLS0tIGEvYXJjaC9zaC9r
ZXJuZWwvY3B1L3NoNC9zcS5jCisrKyBiL2FyY2gvc2gva2VybmVsL2NwdS9zaDQvc3EuYwpAQCAt
MTAzLDcgKzEwMyw4IEBAIHN0YXRpYyBpbnQgX19zcV9yZW1hcChzdHJ1Y3Qgc3FfbWFwcGluZyAq
bWFwLCBwZ3Byb3RfdCBwcm90KQogI2lmIGRlZmluZWQoQ09ORklHX01NVSkKIAlzdHJ1Y3Qgdm1f
c3RydWN0ICp2bWE7CiAKLQl2bWEgPSBfX2dldF92bV9hcmVhKG1hcC0+c2l6ZSwgVk1fQUxMT0Ms
IG1hcC0+c3FfYWRkciwgU1FfQUREUk1BWCk7CisJdm1hID0gX19nZXRfdm1fYXJlYV9jYWxsZXIo
bWFwLT5zaXplLCBWTV9BTExPQywgbWFwLT5zcV9hZGRyLAorCQkJU1FfQUREUk1BWCwgX19idWls
dGluX3JldHVybl9hZGRyZXNzKDApKTsKIAlpZiAoIXZtYSkKIAkJcmV0dXJuIC1FTk9NRU07CiAK
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvdm1hbGxvYy5oIGIvaW5jbHVkZS9saW51eC92bWFs
bG9jLmgKaW5kZXggMDUwN2ExNjJjY2QwLi4zMDcwYjRkYmMyZDkgMTAwNjQ0Ci0tLSBhL2luY2x1
ZGUvbGludXgvdm1hbGxvYy5oCisrKyBiL2luY2x1ZGUvbGludXgvdm1hbGxvYy5oCkBAIC0xNjEs
OCArMTYxLDYgQEAgc3RhdGljIGlubGluZSBzaXplX3QgZ2V0X3ZtX2FyZWFfc2l6ZShjb25zdCBz
dHJ1Y3Qgdm1fc3RydWN0ICphcmVhKQogZXh0ZXJuIHN0cnVjdCB2bV9zdHJ1Y3QgKmdldF92bV9h
cmVhKHVuc2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQgbG9uZyBmbGFncyk7CiBleHRlcm4gc3Ry
dWN0IHZtX3N0cnVjdCAqZ2V0X3ZtX2FyZWFfY2FsbGVyKHVuc2lnbmVkIGxvbmcgc2l6ZSwKIAkJ
CQkJdW5zaWduZWQgbG9uZyBmbGFncywgY29uc3Qgdm9pZCAqY2FsbGVyKTsKLWV4dGVybiBzdHJ1
Y3Qgdm1fc3RydWN0ICpfX2dldF92bV9hcmVhKHVuc2lnbmVkIGxvbmcgc2l6ZSwgdW5zaWduZWQg
bG9uZyBmbGFncywKLQkJCQkJdW5zaWduZWQgbG9uZyBzdGFydCwgdW5zaWduZWQgbG9uZyBlbmQp
OwogZXh0ZXJuIHN0cnVjdCB2bV9zdHJ1Y3QgKl9fZ2V0X3ZtX2FyZWFfY2FsbGVyKHVuc2lnbmVk
IGxvbmcgc2l6ZSwKIAkJCQkJdW5zaWduZWQgbG9uZyBmbGFncywKIAkJCQkJdW5zaWduZWQgbG9u
ZyBzdGFydCwgdW5zaWduZWQgbG9uZyBlbmQsCmRpZmYgLS1naXQgYS9tbS92bWFsbG9jLmMgYi9t
bS92bWFsbG9jLmMKaW5kZXggMzk5ZjIxOTU0NGY3Li5kMTUzNGQ2MTBiNDggMTAwNjQ0Ci0tLSBh
L21tL3ZtYWxsb2MuYworKysgYi9tbS92bWFsbG9jLmMKQEAgLTIxMjcsMTQgKzIxMjcsNiBAQCBz
dGF0aWMgc3RydWN0IHZtX3N0cnVjdCAqX19nZXRfdm1fYXJlYV9ub2RlKHVuc2lnbmVkIGxvbmcg
c2l6ZSwKIAlyZXR1cm4gYXJlYTsKIH0KIAotc3RydWN0IHZtX3N0cnVjdCAqX19nZXRfdm1fYXJl
YSh1bnNpZ25lZCBsb25nIHNpemUsIHVuc2lnbmVkIGxvbmcgZmxhZ3MsCi0JCQkJdW5zaWduZWQg
bG9uZyBzdGFydCwgdW5zaWduZWQgbG9uZyBlbmQpCi17Ci0JcmV0dXJuIF9fZ2V0X3ZtX2FyZWFf
bm9kZShzaXplLCAxLCBmbGFncywgc3RhcnQsIGVuZCwgTlVNQV9OT19OT0RFLAotCQkJCSAgR0ZQ
X0tFUk5FTCwgX19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKLX0KLUVYUE9SVF9TWU1CT0xf
R1BMKF9fZ2V0X3ZtX2FyZWEpOwotCiBzdHJ1Y3Qgdm1fc3RydWN0ICpfX2dldF92bV9hcmVhX2Nh
bGxlcih1bnNpZ25lZCBsb25nIHNpemUsIHVuc2lnbmVkIGxvbmcgZmxhZ3MsCiAJCQkJICAgICAg
IHVuc2lnbmVkIGxvbmcgc3RhcnQsIHVuc2lnbmVkIGxvbmcgZW5kLAogCQkJCSAgICAgICBjb25z
dCB2b2lkICpjYWxsZXIpCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
