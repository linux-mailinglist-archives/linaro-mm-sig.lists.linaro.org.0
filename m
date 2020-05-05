Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE8D1C5156
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:52:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8958766072
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:52:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7AA7566227; Tue,  5 May 2020 08:52:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C141C664E3;
	Tue,  5 May 2020 08:47:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 63B2761999
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 598856615F; Tue,  5 May 2020 08:46:34 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id D9CDE66078
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:28 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084627euoutp01877890b36fcbb57a34d3c41ad10cecbb~MFXtUe5EZ0374703747euoutp01K
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084627euoutp01877890b36fcbb57a34d3c41ad10cecbb~MFXtUe5EZ0374703747euoutp01K
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084627eucas1p16fb638775da4293e682737af349058d9~MFXs_3_wM1830218302eucas1p1J;
 Tue,  5 May 2020 08:46:27 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id D1.CF.61286.3E721BE5; Tue,  5
 May 2020 09:46:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084627eucas1p119c77fbf28532627f27382efc51b0aaa~MFXssRhHQ1830218302eucas1p1H;
 Tue,  5 May 2020 08:46:27 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084627eusmtrp10c9da49bd6926c2c2da3fe2b52dc42a6~MFXsrjgJk0942309423eusmtrp1P;
 Tue,  5 May 2020 08:46:27 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-9b-5eb127e32c26
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D3.14.08375.3E721BE5; Tue,  5
 May 2020 09:46:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084626eusmtip16cfbd7c9a086f9c1c9c8da7309eeacb0~MFXr-vkJj0580805808eusmtip16;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:45:55 +0200
Message-Id: <20200505084614.30424-6-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSbUgTYRznubudt+HqmoYPGiqLkiQ1yw8HliX44YigkKKQsmYeKjqVzflW
 1Eo0mxpTMYel2BA1312yxEqnqLOGs1R0qaljOjKyJJ2pkLXzrL793v78/s+fh0BFnTxPIiE5
 jZElS5LEuADTD26OBNj82qOPLU4cpIrMbxGqXdPKo37ri1Fq3PEdp543DiBUyZwao6p7QqnP
 sx8wam3cilA62wSPGut6ilOakW6Eau7/5EL1rizwKE3pEn5mL91U1QToN+vVGP1yfZ5HzxUY
 EfpFzV16etuG0qWWOkC/+qjE6UcdDYBe1XlfEEQJTsYySQnpjCwo7IYg3lAmSVWTmfZKO1CC
 SaEKEAQkQ+BmdaAKCAgRWQ9gSf8QUAG+k6w5ifYoZ6wC2Dj5eMdgB6x2JY8z6gAcdrQgHHFO
 tK4pETaFk8FQtazCWexO5gI4VOTKhlBSh8KCSi3KdruRkdC0GMFmMPIQ1NY+Q1ksJE9Bu3oY
 5dp8YGObYQfzyTBoG53BOd3sAk3fAjkcAQcNlRiH3eAXY4cLhw9AU2khxvZCMgdAq7nZhSOF
 AI7d1+y+JxTOmLdwdiGUPAJbu4I4ORzmbP/CuBvtgZblfayMOmGJvhzlZCHMzxNx6cOwwtjy
 r7b3/eju+jTMteQA7j4DABpqNhA18Kn4X1YNQAPwYBRyaRwjD05mMgLlEqlckRwXeDNFqgPO
 /2TaNv7oBI7RmD5AEkDsKryy2hot4knS5VnSPgAJVOwurN1oixYJYyVZ2Yws5bpMkcTI+4AX
 gYk9hCe0S9dEZJwkjUlkmFRG9tdFCL6nEkj5inMe0uykSkfGQ966qOxSdH1OjKJZ62YWlD/J
 ZI5r8u6l93uFRYWf/jlWu72V2J/vJ+wFPYNR6uk7726/Jld8HasL2d3EbMxGUNzS/geXxyOk
 dWbR1SlvU7HV99b416huXYFlShPizj87FTAsM0bqE+Zz24ICqhQX/Wc058WYPF4S7I/K5JI/
 MctFXEsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDIsWRmVeSWpSXmKPExsVy+t/xu7qP1TfGGUxcyWPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLF/cuslh8ufKQyWLT42usFpd3zWGzmHF+H5PF
 2iN32S0OfnjCajFj8ks2B36PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN6
 7L7ZwObRt2UVo8fnTXIBXFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2
 NimpOZllqUX6dgl6GQemJhZMEKh4NvcZYwPjdd4uRk4OCQETiYfPGlhBbCGBpYwSH/+IQ8Rl
 JE5Og4hLCAhL/LnWxdbFyAVU84lR4t/MNrAEm4ChRNdbiISIQCejxLTuj+wgDrPAHmaJJ+/O
 s4FUCQsESOx/dJsZxGYRUJVYtGwhmM0rYCvxbMJZZogV8hKrNxwAszkF7CQeX7rDBnFSocSH
 899ZJzDyLWBkWMUoklpanJueW2yoV5yYW1yal66XnJ+7iREYM9uO/dy8g/HSxuBDjAIcjEo8
 vBGf18cJsSaWFVfmHmKU4GBWEuFd9mNDnBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJLiSbnA+M5
 ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDo/bf+M/L5l4945jW
 /nRS2P9nt+3tUgJjO+27p57UWOc3M21Si89fFpGub4wey5MdnKIN7pkdeVM+k3vxi9/yP/a8
 6L17QqVmicqxNb8j9PdHiEYz7ne//90vePWbC7mau5Zx2fltNoywdeu1STq+cdpV72sav24c
 Vvtj//FNd7FiTc2TPZtCfiuxFGckGmoxFxUnAgCt+I6OrwIAAA==
X-CMS-MailID: 20200505084627eucas1p119c77fbf28532627f27382efc51b0aaa
X-Msg-Generator: CA
X-RootMTR: 20200505084627eucas1p119c77fbf28532627f27382efc51b0aaa
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084627eucas1p119c77fbf28532627f27382efc51b0aaa
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084627eucas1p119c77fbf28532627f27382efc51b0aaa@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Inki Dae <inki.dae@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 06/25] drm: exynos: fix common struct
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUK
c2dfdGFibGUtPm5lbnRzIGluIHR1cm4gaG9sZHMgdGhlIHJlc3VsdCBvZiB0aGUgZG1hX21hcF9z
ZyBjYWxsIGFzIHN0YXRlZAppbiBpbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmguIEEgY29tbW9u
IG1pc3Rha2Ugd2FzIHRvIGlnbm9yZSBhIHJlc3VsdApvZiB0aGUgZG1hX21hcF9zZyBmdW5jdGlv
biBhbmQgZG9uJ3QgdXNlIHRoZSBzZ190YWJsZS0+b3JpZ19uZW50cyBhdCBhbGwuCgpUbyBhdm9p
ZCBzdWNoIGlzc3VlcywgbGV0cyB1c2UgY29tbW9uIGRtYS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJh
dGluZwpkaXJlY3RseSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIGFkanVzdCBy
ZWZlcmVuY2VzIHRvIHRoZQpuZW50cyBhbmQgb3JpZ19uZW50cyByZXNwZWN0aXZlbHkuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Ci0t
LQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0ggdjMgMDAvMjVdIERSTTogZml4IHN0
cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1c2UnIHRocmVhZDogaHR0cHM6
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS9leHlub3Mv
ZXh5bm9zX2RybV9nMmQuYyB8IDkgKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9leHlu
b3MvZXh5bm9zX2RybV9nMmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9n
MmQuYwppbmRleCBmY2VlMzNhLi42YTY1NWQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
ZXh5bm9zL2V4eW5vc19kcm1fZzJkLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlu
b3NfZHJtX2cyZC5jCkBAIC0zOTUsOCArMzk1LDggQEAgc3RhdGljIHZvaWQgZzJkX3VzZXJwdHJf
cHV0X2RtYV9hZGRyKHN0cnVjdCBnMmRfZGF0YSAqZzJkLAogCQlyZXR1cm47CiAKIG91dDoKLQlk
bWFfdW5tYXBfc2codG9fZG1hX2RldihnMmQtPmRybV9kZXYpLCBnMmRfdXNlcnB0ci0+c2d0LT5z
Z2wsCi0JCQlnMmRfdXNlcnB0ci0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCWRt
YV91bm1hcF9zZ3RhYmxlKHRvX2RtYV9kZXYoZzJkLT5kcm1fZGV2KSwgZzJkX3VzZXJwdHItPnNn
dCwKKwkJCSAgRE1BX0JJRElSRUNUSU9OQUwpOwogCiAJcGFnZXMgPSBmcmFtZV92ZWN0b3JfcGFn
ZXMoZzJkX3VzZXJwdHItPnZlYyk7CiAJaWYgKCFJU19FUlIocGFnZXMpKSB7CkBAIC01MTEsMTAg
KzUxMSw5IEBAIHN0YXRpYyBkbWFfYWRkcl90ICpnMmRfdXNlcnB0cl9nZXRfZG1hX2FkZHIoc3Ry
dWN0IGcyZF9kYXRhICpnMmQsCiAKIAlnMmRfdXNlcnB0ci0+c2d0ID0gc2d0OwogCi0JaWYgKCFk
bWFfbWFwX3NnKHRvX2RtYV9kZXYoZzJkLT5kcm1fZGV2KSwgc2d0LT5zZ2wsIHNndC0+bmVudHMs
Ci0JCQkJRE1BX0JJRElSRUNUSU9OQUwpKSB7CisJcmV0ID0gZG1hX21hcF9zZ3RhYmxlKHRvX2Rt
YV9kZXYoZzJkLT5kcm1fZGV2KSwgc2d0LCBETUFfQklESVJFQ1RJT05BTCk7CisJaWYgKHJldCkg
ewogCQlEUk1fREVWX0VSUk9SKGcyZC0+ZGV2LCAiZmFpbGVkIHRvIG1hcCBzZ3Qgd2l0aCBkbWEg
cmVnaW9uLlxuIik7Ci0JCXJldCA9IC1FTk9NRU07CiAJCWdvdG8gZXJyX3NnX2ZyZWVfdGFibGU7
CiAJfQogCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
