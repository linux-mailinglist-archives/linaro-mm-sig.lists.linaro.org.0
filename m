Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 088361DE7AB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2020 15:07:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E71960C39
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2020 13:07:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8DD1860C4B; Fri, 22 May 2020 13:07:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 177FC60C32;
	Fri, 22 May 2020 13:07:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 38D6060C36
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 May 2020 13:04:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1CFE960C3A; Fri, 22 May 2020 13:04:52 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id A327660C39
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 May 2020 12:57:11 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200522125709euoutp02eb29fd976fdb364dc56609138eb147b6~RWwc2UjCo1530815308euoutp02_
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 May 2020 12:57:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200522125709euoutp02eb29fd976fdb364dc56609138eb147b6~RWwc2UjCo1530815308euoutp02_
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200522125709eucas1p2c9cc74a5e6327f14ff2fec8d00997ac0~RWwcNyFI80249702497eucas1p2n;
 Fri, 22 May 2020 12:57:09 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 58.BE.61286.52CC7CE5; Fri, 22
 May 2020 13:57:09 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200522125708eucas1p233b80b0741f087a84d47f24b6d91985f~RWwbxlE_S0903009030eucas1p2y;
 Fri, 22 May 2020 12:57:08 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200522125708eusmtrp2ce3887019627c346b790bcbe15a7947f~RWwbwTwIw1358513585eusmtrp2R;
 Fri, 22 May 2020 12:57:08 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-6f-5ec7cc252cc0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 3E.42.08375.42CC7CE5; Fri, 22
 May 2020 13:57:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200522125708eusmtip1f843fc2153bbac42a292dde233075588~RWwbEtm5i3030830308eusmtip1G;
 Fri, 22 May 2020 12:57:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 22 May 2020 14:56:52 +0200
Message-Id: <20200522125652.18435-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513132114.6046-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTURTNm5m2A2lhLChPMIKNmGAUJPIxCUowGjN+GCQxxBhBqkxYpIAt
 rYIfEEAgpRCEDwgg4gbYssm+uLCIxUgGWSSgRTajghCwQFmMVIap+HfuWd65uXk4Kn7Bc8TD
 o2JpeZQ0UsK3xhrfrvcdde3VBx0bNdmSmcw7hHyeX80jzY33UHJoZYFPPtN1I2TJa29yeWgS
 IWunh3nkYGsRn6x8MyYgF3ULPLJj8SuPXK3PRXxFVEVxBaAMT1sA9dJUglFNpgkeNZ6hR6i6
 JwnU581plModKQNU1+IQRrWNJvKprHotoJZq918QXrY+EUJHhqtouYdPsHVYkXEKi9kgbmf9
 mkcSQYGNGuA4JLzgj5azamCNi4lyANM0sxg3LANY+qXQMiwBONdbg6iB1XbC/KkZ5YQyABt0
 hfydiKmsFLAuPuEJ1fNqPovtibsA9mQKWRNKrCGQKe0RsIId4Qcfd+RsBzDCFaZWt2EsFhEn
 YRHzG+XqnKGupn0bW23xxoZ1HvsQJBgB1LYsCzjTGbhmnsA4bAdn9fUWfh80tzxAuEAygJNM
 pYAbNAAOJuUDzuUNDcwGn70HSrjB6lYPjj4F+yaSUe5MNnBkfhdLo1swpzHPQotgeqqYcx+C
 BfqqndqODwOW/SmY1tVmOVc2gNrMfiQbOBf8LysBQAscaKVCFkorPKPoW+4KqUyhjAp1vx4t
 qwVbf+r9pt7YDFYGrnUCAgcSoYho1QeJeVKVIk7WCSCOSuxFD227g8SiEGlcPC2PvipXRtKK
 TuCEYxIH0fFHM4FiIlQaS9+g6Rha/k9FcCvHRIAFCjGlMHXmSsJg3rqmZpbRaMTdScOB5y6t
 1+WQU2NU8ccn5r1ZQcHO8VW9PqXnIwwZvuW946tNpp+ky528g6fz5+r+9Dn5Od484hWGvPLP
 Kw9w2/OdSVUdkDh57k4x1Fz0D8hua9d+S+jyu48CXbBLpSo9i5b1+xvDUyIKiiWYIkzqeRiV
 K6R/AfS9l3RPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7oqZ47HGfxYoGPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFh9Wv2e1OPjhCavF
 9y2TmRx4PdbMW8PocWfpTkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj8MfrrB4
 7L7ZwObRt2UVo8fnTXIBPFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2
 NimpOZllqUX6dgl6GXM+PWIp+CVQ0ffxLVMD4yy+LkZODgkBE4n/t3YwdzFycQgJLGWUmNe4
 mgkiISNxcloDK4QtLPHnWhcbRNEnRolVp5+zgSTYBAwlut5CJEQEOhklpnV/ZAdxmAX+MUmc
 2LsdbJSwgK/EsrUfwDpYBFQl2tbvZgGxeQVsJeac+80MsUJeYvWGA2A2J1D809afYKuFBGwk
 1rbOYZvAyLeAkWEVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYNxsO/Zz8w7GSxuDDzEKcDAq
 8fDu2H48Tog1say4MvcQowQHs5II70L+o3FCvCmJlVWpRfnxRaU5qcWHGE2BjprILCWanA+M
 6bySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYxqyz02X2Ts7561
 6b280cSlX37ILbB+toZpbzjXEcP7Vb+yA57YdfYbz6/qPLRV++U3sbovi0QvnOXQfax5806o
 k6ziy2m3J3YfT3jE4iD45fShHMe5+j8tlK+YPGu0tKtN6XT24HMOjeafW/Jk/7sb09ZwyU67
 7cB6d8oXjwOux5o80tp1eSuUWIozEg21mIuKEwHG6J9ksQIAAA==
X-CMS-MailID: 20200522125708eucas1p233b80b0741f087a84d47f24b6d91985f
X-Msg-Generator: CA
X-RootMTR: 20200522125708eucas1p233b80b0741f087a84d47f24b6d91985f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200522125708eucas1p233b80b0741f087a84d47f24b6d91985f
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <CGME20200522125708eucas1p233b80b0741f087a84d47f24b6d91985f@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Daniel Vetter <daniel@ffwll.ch>, xen-devel@lists.xenproject.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 39/38] drm: xen: fix common struct
 sg_table related issues
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9t
YXBfc2coKSBmdW5jdGlvbgpyZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmll
cyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCkhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMg
dG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKZG1hX3VubWFwX3NnIG11
c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwpwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KCnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1
Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCm1lbW9yeSBidWZmZXIs
IHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4gSXQKY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nl
cyAoc2dsIGVudHJ5KSwKYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJp
ZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5l
bnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50cmllcywgY2FsbGluZyBETUEtbWFwcGlu
ZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCmlnbm9yaW5nIHRo
ZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkgdGhlIGRtYV9tYXBfc2coKQpm
dW5jdGlvbi4KCkZpeCB0aGUgY29kZSB0byByZWZlciB0byBwcm9wZXIgbmVudHMgb3Igb3JpZ19u
ZW50cyBlbnRyaWVzLiBUaGlzIGRyaXZlcgpyZXBvcnRzIHRoZSBudW1iZXIgb2YgdGhlIHBhZ2Vz
IGluIHRoZSBpbXBvcnRlZCBzY2F0dGVybGlzdCwgc28gaXQgc2hvdWxkCnJlZmVyIHRvIHNnX3Rh
YmxlLT5vcmlnX25lbnRzIGVudHJ5LgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8
bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpBY2tlZC1ieTogT2xla3NhbmRyIEFuZHJ1c2hjaGVu
a28gPG9sZWtzYW5kcl9hbmRydXNoY2hlbmtvQGVwYW0uY29tPgotLS0KRm9yIG1vcmUgaW5mb3Jt
YXRpb24sIHNlZSAnW1BBVENIIHY1IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVu
dHMKdnMuIG9yaWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LWlvbW11LzIwMjAwNTEzMTMyMTE0LjYwNDYtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5j
b20vVC8KClRoaXMgcGF0Y2ggaGFzIGJlZW4gcmVzdXJyZWN0ZWQgb24gT2xla3NhbmRyIEFuZHJ1
c2hjaGVua28gcmVxdWVzdC4gVGhlCnBhdGNoIHdhcyBhIHBhcnQgb2YgdjIgcGF0Y2hzZXQsIGJ1
dCB0aGVuIEkndmUgZHJvcHBlZCBpdCBhcyBpdCBvbmx5CmZpeGVzIHRoZSBkZWJ1ZyBvdXRwdXQs
IHRodXMgSSBkaWRuJ3QgY29uc2lkZXIgaXQgc28gY3JpdGljYWwuCi0tLQogZHJpdmVycy9ncHUv
ZHJtL3hlbi94ZW5fZHJtX2Zyb250X2dlbS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hl
bi94ZW5fZHJtX2Zyb250X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3hlbi94ZW5fZHJtX2Zyb250
X2dlbS5jCmluZGV4IGYwYjg1ZTAuLmJhNGJkYzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS94ZW4veGVuX2RybV9mcm9udF9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0veGVuL3hlbl9k
cm1fZnJvbnRfZ2VtLmMKQEAgLTIxNSw3ICsyMTUsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
KgogCQlyZXR1cm4gRVJSX1BUUihyZXQpOwogCiAJRFJNX0RFQlVHKCJJbXBvcnRlZCBidWZmZXIg
b2Ygc2l6ZSAlenUgd2l0aCBuZW50cyAldVxuIiwKLQkJICBzaXplLCBzZ3QtPm5lbnRzKTsKKwkJ
ICBzaXplLCBzZ3QtPm9yaWdfbmVudHMpOwogCiAJcmV0dXJuICZ4ZW5fb2JqLT5iYXNlOwogfQot
LSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
