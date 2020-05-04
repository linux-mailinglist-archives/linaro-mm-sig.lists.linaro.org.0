Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B26E1C3AEA
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:08:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B28860B36
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:08:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6A33F66053; Mon,  4 May 2020 13:08:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7B2D66521;
	Mon,  4 May 2020 12:55:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 272FC66055
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:55:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1B89266073; Mon,  4 May 2020 12:55:31 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id AFD8866072
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:21 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125420euoutp0141033deca2df7e76a66f70d15c192969~L1G2ljZN62848128481euoutp01B
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125420euoutp0141033deca2df7e76a66f70d15c192969~L1G2ljZN62848128481euoutp01B
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125420eucas1p2a81c07be105dda54ab34624f355a272f~L1G2WAnsK2246922469eucas1p2m;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 20.E2.60679.C7010BE5; Mon,  4
 May 2020 13:54:20 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125420eucas1p2387a795af11e62779e8aa7f7673a8562~L1G194XiM2235822358eucas1p2q;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125420eusmtrp2717a6a2fb13d54ea48e921ea03000013~L1G19MkLc2826928269eusmtrp2X;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-af-5eb0107c4555
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4C.69.08375.C7010BE5; Mon,  4
 May 2020 13:54:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125419eusmtip21a00d04f6d566f3a535fb519094872c2~L1G1UE7360241302413eusmtip2Z;
 Mon,  4 May 2020 12:54:19 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:53 +0200
Message-Id: <20200504125359.5678-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJKsWRmVeSWpSXmKPExsWy7djP87o1AhviDBruaVj0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xYfV71ktDn54wmrx
 fctkJgdejzXz1jB63Fm6k9Fj77cFLB7bvz1g9bjffZzJY/OSeo/b/x4ze0y+sZzR4/CHKywe
 u282sHn0bVnF6PF5k1wATxSXTUpqTmZZapG+XQJXxvlZL9kK1nNWPN7Uw97A+IW9i5GDQ0LA
 ROLfQeYuRi4OIYEVjBJvW98AxTmBnC+MErcemkEkPjNK7G14ANdw/qg3RHw5o8S69l8sEA5Q
 Q+/3k2DdbAKGEl1vu9hAbBGBVkaJE708IEXMAj+YJM4tOwFWJCzgIzHz8TYmEJtFQFVi6/8e
 sAZeAVuJQ60nweISAvISqzccYAbZzAkUn9mrDjJHQuAcu8S+jlXsEDUuEuvP9DJD2MISr45v
 gYrLSPzfOZ8JoqGZUeLhubXsEE4Po8TlphmMEFXWEnfO/WID2cAsoCmxfpc+RNhRYs3uFcwQ
 L/NJ3HgrCBJmBjInbZsOFeaV6GgTgqhWk5h1fB3c2oMXLkGd4yHROW87KySADjNKfN9yiHkC
 o/wshGULGBlXMYqnlhbnpqcWG+WllusVJ+YWl+al6yXn525iBCao0/+Of9nBuOtP0iFGAQ5G
 JR7eiM/r44RYE8uKK3MPMUpwMCuJ8O5oAQrxpiRWVqUW5ccXleakFh9ilOZgURLnNV70MlZI
 ID2xJDU7NbUgtQgmy8TBKdXAqPxMeH9caFgt04/DWtmWj/x0q89+28o8YYqCp8lV+9ADG/ey
 HGZQv38jqWBe9yyDINbMG0zbeidKq9dzNs6rVbFQ1FgyPe+VmIHgMv+qZ6dyQmvz703783jt
 lZY7AdMcJiuc5mtNTj7+bNkWETFzr3ut1ztiHLdOW/n/4UGBaqV1woHdN/bPUGIpzkg01GIu
 Kk4EAL6Bl7lMAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDIsWRmVeSWpSXmKPExsVy+t/xe7o1AhviDLat5rfoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12iw+r37NaHPzwhNXi
 +5bJTA68HmvmrWH0uLN0J6PH3m8LWDy2f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+EPV1g8
 dt9sYPPo27KK0ePzJrkAnig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07
 m5TUnMyy1CJ9uwS9jPOzXrIVrOeseLyph72B8Qt7FyMHh4SAicT5o95djFwcQgJLGSW+dfWw
 dTFyAsVlJE5Oa2CFsIUl/lzrYoMo+sQocez/OrAiNgFDia63EAkRgU5GiWndH9lBHGaBf0wS
 J/ZuZwKpEhbwkZj5eBuYzSKgKrH1P8QKXgFbiUOtJ5kgVshLrN5wgBnkJE6g+MxedZCwkEC+
 xN2n/1gmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERgz24793LyD8dLG4EOMAhyM
 Sjy8EZ/XxwmxJpYVV+YeYpTgYFYS4d3RAhTiTUmsrEotyo8vKs1JLT7EaAp000RmKdHkfGA8
 55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYDRl2smZdaTtsAHT
 T4sU8eo3p25X3D342e7br9fmfP+e7LjlGn36SPmHNtmeQ8VLFCaKr9U9sK8i+Cr72feKndd+
 N+zxMNy5z83t4wFLKTvH45pJd79N+fNWkVNEa1eZgI+P3MYGC4s0j4fnfq7WmJG/xLwkLq7m
 cL9IXfVq/U9ujQ4T11X2eyixFGckGmoxFxUnAgAhUwpyrwIAAA==
X-CMS-MailID: 20200504125420eucas1p2387a795af11e62779e8aa7f7673a8562
X-Msg-Generator: CA
X-RootMTR: 20200504125420eucas1p2387a795af11e62779e8aa7f7673a8562
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125420eucas1p2387a795af11e62779e8aa7f7673a8562
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125420eucas1p2387a795af11e62779e8aa7f7673a8562@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Daniel Vetter <daniel@ffwll.ch>, xen-devel@lists.xenproject.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 15/21] drm: xen: fix sg_table nents vs.
	orig_nents misuse
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2VkIHRvIGRtYV9tYXBfc2cuIFRoZQpzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3hlbi94ZW5fZHJtX2Zyb250X2dlbS5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3hlbi94ZW5fZHJtX2Zyb250X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJt
L3hlbi94ZW5fZHJtX2Zyb250X2dlbS5jCmluZGV4IGYwYjg1ZTAuLmJhNGJkYzUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS94ZW4veGVuX2RybV9mcm9udF9nZW0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0veGVuL3hlbl9kcm1fZnJvbnRfZ2VtLmMKQEAgLTIxNSw3ICsyMTUsNyBAQCBzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKgogCQlyZXR1cm4gRVJSX1BUUihyZXQpOwogCiAJRFJNX0RFQlVH
KCJJbXBvcnRlZCBidWZmZXIgb2Ygc2l6ZSAlenUgd2l0aCBuZW50cyAldVxuIiwKLQkJICBzaXpl
LCBzZ3QtPm5lbnRzKTsKKwkJICBzaXplLCBzZ3QtPm9yaWdfbmVudHMpOwogCiAJcmV0dXJuICZ4
ZW5fb2JqLT5iYXNlOwogfQotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
