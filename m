Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FF81CF19E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:30:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 440E9618EF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:30:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 34E6961957; Tue, 12 May 2020 09:30:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92EFB66218;
	Tue, 12 May 2020 09:06:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EE69C619F3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:06:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DF43365F8D; Tue, 12 May 2020 09:06:02 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 2603565F90
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:16 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090115euoutp011691232fa14131b6c0f899ba88b469bd~OPFno_m_t2545625456euoutp01_
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090115euoutp011691232fa14131b6c0f899ba88b469bd~OPFno_m_t2545625456euoutp01_
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090115eucas1p164cd3da969ca84c552f5fb835e0c4175~OPFnax2Vm3050830508eucas1p1b;
 Tue, 12 May 2020 09:01:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id D8.6B.60698.BD56ABE5; Tue, 12
 May 2020 10:01:15 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090114eucas1p1bc4ab112b490205283e7d2f82a9713ee~OPFnGlQMJ1183411834eucas1p1v;
 Tue, 12 May 2020 09:01:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090114eusmtrp27a4970be5a458e2abcae4c04f7134c2d~OPFnEMGaH0472704727eusmtrp2B;
 Tue, 12 May 2020 09:01:14 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-16-5eba65db6adc
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 9D.35.08375.AD56ABE5; Tue, 12
 May 2020 10:01:14 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090114eusmtip135df448378e52a298bf104ba7f5c6485~OPFmhVrMg1148011480eusmtip1U;
 Tue, 12 May 2020 09:01:14 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:33 +0200
Message-Id: <20200512090058.14910-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUgUcRTH+c3szoybU9Nq+Esja8CgII9MGVTMwGCiPxKliERr00lFV2XX
 I/vHK8XWq7wS7zXFO3MzT/JC3Sww80rxvrtEwwMU05zG8r/P+773fe/3Hj8CldaLDQkf/yBO
 4S/zozGJqK5769PFMa7J3bx+E2USe3sQpiazWszs1T1HmcGNFYwpq+hCmIJWW2YtT4Mx64Mz
 CKOZGxYzA005GFPVOYEz7avzYma1agNxINnKvErAvtssELGNWRM4W785LWan4rUI+6YonB3b
 nUPZ1JESwDaPRmBsUm05YNc0p52O3JXYeXJ+PiGcwsz+vsRbFTOKBS4aPRrKzUYjQLqBCugQ
 kLoMm39+xlVAQkipUgBbemYxIVgH8MNSPyoEawAOLqaJVYD4a9nccxH0EgCzt+IPHeqhVMD3
 xSgLqFpWYTzrUzEAvk/U5YtQagCB+V1RIj6hRzlBdUQbwrOIMoEvSwtxnknKHs7ERiLCA41h
 xes2lGedfX0qf0fEN4JUNw7VCclAKHKEMU/7MIH14HdtLS7wKbjXmI8IhmgAZ3qrcCFIAHAg
 KvPAbQvHe7cxfjmUOg+rm8wE+SqsXZ482PkoHFk+zsvoPqbUvUAFmYRxsVKh+hzM0r76P7a9
 rx8VmIV9KfxR+At1AbhQpsGfAeOsw2EFAJQDAy5YKffilJb+XKipUiZXBvt7mXoEyDVg/zt9
 3NVuNICWnQcdgCIArUvGXWp0l4plIcoweQeABErrk0989iXSUxb2mFME3FME+3HKDmBEiGgD
 0rLwm5uU8pIFcb4cF8gp/mURQscwAki0oUkh6iKJ9dJKsY+bXuT4Wd+dYZOTabfjzsjNl3u3
 rNOnnF1/3HLZcQ5vvrNwvSb32Ilk0orWpu2SY7PtE8U3vy78xt/q60TPlk9nzLWX25CujqP2
 88F0ih3t8TCjtUF67VfOSlqFLy1ziBrutLC+sR1TPxltY9XkcYX5YlRDi5TeMosLqEIp+wMk
 Y85pSgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7q3UnfFGTx8pmXRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8XneJjaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 h7VfmRx4PdbMW8PosffbAhaPnbPusnts//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL6Or9SZbwTPpiqtzZzM3ME4V72Lk4JAQMJH49j+4i5GLQ0hgKaPEk1uf2LsYOYHi
 MhInpzWwQtjCEn+udbFBFH1ilNg38yRYgk3AUKLrLURCRKCTUWJa90d2EIdZ4DaTxJm5E5hB
 qoQF/CTWr/zPBmKzCKhKLF6xCGwFr4CdxMO2RiaIFfISqzccAKvnBIrfn/+HBcQWEiiUeHT1
 LcsERr4FjAyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAmNl27Gfm3cwXtoYfIhRgINRiYe3
 w2hnnBBrYllxZe4hRgkOZiUR3pZMoBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJLiSbnA+M4ryTe
 0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QD41y1P2slWb5v//g5qGjX
 oq3Tq5fqhbtOUIi0fOb2c6Ouh6+sm7XgiQT3d6c82t9XPFVUkUqd+US1XGvjP6f7PzSjPtav
 mteo/NXaoPyxkoFOTz6XkM+uRw7uG7h12lWcOMzuT+/3OLqT58fDkw++63Vfc3x7UU3vWNqx
 wspv5kLbvugvn9PWo8RSnJFoqMVcVJwIAKx6WtCrAgAA
X-CMS-MailID: 20200512090114eucas1p1bc4ab112b490205283e7d2f82a9713ee
X-Msg-Generator: CA
X-RootMTR: 20200512090114eucas1p1bc4ab112b490205283e7d2f82a9713ee
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090114eucas1p1bc4ab112b490205283e7d2f82a9713ee
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090114eucas1p1bc4ab112b490205283e7d2f82a9713ee@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 13/38] drm: lima: fix common struct
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
dW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFw
cGluZyB3cmFwcGVycyBvcGVyYXRpbmcKZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBv
YmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQppdGVyYXRvcnMgd2hlcmUgcG9zc2libGUu
IFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCm5lbnRzIGFuZCBv
cmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xs
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
MjAyMDA1MTIwODU3MTAuMTQ2ODgtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbS5jIHwgMTEgKysrKysrKystLS0KIGRyaXZlcnMv
Z3B1L2RybS9saW1hL2xpbWFfdm0uYyAgfCAgNSArKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxMCBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9saW1hL2xpbWFfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbS5jCmluZGV4
IDU0MDRlMGQuLmNkYTQzZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFf
Z2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYwpAQCAtNjksOCArNjks
NyBAQCBpbnQgbGltYV9oZWFwX2FsbG9jKHN0cnVjdCBsaW1hX2JvICpibywgc3RydWN0IGxpbWFf
dm0gKnZtKQogCQlyZXR1cm4gcmV0OwogCiAJaWYgKGJvLT5iYXNlLnNndCkgewotCQlkbWFfdW5t
YXBfc2coZGV2LCBiby0+YmFzZS5zZ3QtPnNnbCwKLQkJCSAgICAgYm8tPmJhc2Uuc2d0LT5uZW50
cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlkbWFfdW5tYXBfc2d0YWJsZShkZXYsIGJvLT5iYXNl
LnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCQlzZ19mcmVlX3RhYmxlKGJvLT5iYXNlLnNn
dCk7CiAJfSBlbHNlIHsKIAkJYm8tPmJhc2Uuc2d0ID0ga21hbGxvYyhzaXplb2YoKmJvLT5iYXNl
LnNndCksIEdGUF9LRVJORUwpOwpAQCAtODAsNyArNzksMTMgQEAgaW50IGxpbWFfaGVhcF9hbGxv
YyhzdHJ1Y3QgbGltYV9ibyAqYm8sIHN0cnVjdCBsaW1hX3ZtICp2bSkKIAkJfQogCX0KIAotCWRt
YV9tYXBfc2coZGV2LCBzZ3Quc2dsLCBzZ3QubmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwly
ZXQgPSBkbWFfbWFwX3NndGFibGUoZGV2LCAmc2d0LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CisJ
aWYgKHJldCkgeworCQlzZ19mcmVlX3RhYmxlKCZzZ3QpOworCQlrZnJlZShiby0+YmFzZS5zZ3Qp
OworCQliby0+YmFzZS5zZ3QgPSBOVUxMOworCQlyZXR1cm4gcmV0OworCX0KIAogCSpiby0+YmFz
ZS5zZ3QgPSBzZ3Q7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfdm0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfdm0uYwppbmRleCA1YjkyZmI4Li4yYjI3Mzlh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX3ZtLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2xpbWEvbGltYV92bS5jCkBAIC0xMjQsNyArMTI0LDcgQEAgaW50IGxpbWFfdm1f
Ym9fYWRkKHN0cnVjdCBsaW1hX3ZtICp2bSwgc3RydWN0IGxpbWFfYm8gKmJvLCBib29sIGNyZWF0
ZSkKIAlpZiAoZXJyKQogCQlnb3RvIGVycl9vdXQxOwogCi0JZm9yX2VhY2hfc2dfZG1hX3BhZ2Uo
Ym8tPmJhc2Uuc2d0LT5zZ2wsICZzZ19pdGVyLCBiby0+YmFzZS5zZ3QtPm5lbnRzLCAwKSB7CisJ
Zm9yX2VhY2hfc2d0YWJsZV9kbWFfcGFnZShiby0+YmFzZS5zZ3QsICZzZ19pdGVyLCAwKSB7CiAJ
CWVyciA9IGxpbWFfdm1fbWFwX3BhZ2Uodm0sIHNnX3BhZ2VfaXRlcl9kbWFfYWRkcmVzcygmc2df
aXRlciksCiAJCQkJICAgICAgIGJvX3ZhLT5ub2RlLnN0YXJ0ICsgb2Zmc2V0KTsKIAkJaWYgKGVy
cikKQEAgLTI5OCw4ICsyOTgsNyBAQCBpbnQgbGltYV92bV9tYXBfYm8oc3RydWN0IGxpbWFfdm0g
KnZtLCBzdHJ1Y3QgbGltYV9ibyAqYm8sIGludCBwYWdlb2ZmKQogCW11dGV4X2xvY2soJnZtLT5s
b2NrKTsKIAogCWJhc2UgPSBib192YS0+bm9kZS5zdGFydCArIChwYWdlb2ZmIDw8IFBBR0VfU0hJ
RlQpOwotCWZvcl9lYWNoX3NnX2RtYV9wYWdlKGJvLT5iYXNlLnNndC0+c2dsLCAmc2dfaXRlciwK
LQkJCSAgICAgYm8tPmJhc2Uuc2d0LT5uZW50cywgcGFnZW9mZikgeworCWZvcl9lYWNoX3NndGFi
bGVfZG1hX3BhZ2UoYm8tPmJhc2Uuc2d0LCAmc2dfaXRlciwgcGFnZW9mZikgewogCQllcnIgPSBs
aW1hX3ZtX21hcF9wYWdlKHZtLCBzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJnNnX2l0ZXIpLAog
CQkJCSAgICAgICBiYXNlICsgb2Zmc2V0KTsKIAkJaWYgKGVycikKLS0gCjEuOS4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
