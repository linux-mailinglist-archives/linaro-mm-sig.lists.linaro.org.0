Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D561CF1F1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:51:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51325618C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:51:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 425DF61957; Tue, 12 May 2020 09:51:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 673166658C;
	Tue, 12 May 2020 09:08:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3534065FAF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:08:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2564B65FAC; Tue, 12 May 2020 09:08:16 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id B8C4365FAC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:31 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090130euoutp02426738ae668a799bb920be54b2b52e47~OPF12wk8C0533205332euoutp02N
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090130euoutp02426738ae668a799bb920be54b2b52e47~OPF12wk8C0533205332euoutp02N
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090130eucas1p2897fb3e554831018d8d3e374c3c0d8e3~OPF1bW0cU2669826698eucas1p2q;
 Tue, 12 May 2020 09:01:30 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id EA.32.60679.AE56ABE5; Tue, 12
 May 2020 10:01:30 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090129eucas1p24fa7e83acb8cde494f71ca5694279401~OPF1K2gSn0961809618eucas1p2x;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090129eusmtrp2483d9a5cf050f3efa891592bc516305d~OPF1KE-1n0472704727eusmtrp2b;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-e5-5eba65eab4c4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B2.55.08375.9E56ABE5; Tue, 12
 May 2020 10:01:29 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090129eusmtip182420fa16f115009ac06b2958ce7d00e~OPF0lpsRC1352513525eusmtip1S;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:57 +0200
Message-Id: <20200512090058.14910-37-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUhUURiGO3OXuS5j11HwaJIwaaCQW0E3FMmIuj/6kS2EQdaYN5Wc0WZc
 MqRGcx0X0sCN0ElEc0tnNJcp05F0UtPcMMXd8YcKmjZqaKI53sn+Pd/7vd95z/k4BMJvw+yI
 UHEkIxELwwS4KdrYtf39zDKjDnCvmSaozP5uDqXMr8Wo/cZshBrZ/IlTFVWdHGqwYAqlFG1e
 1MbIHIdS6UYxalj9Bqcy6j5gVM2XKS5VptrlUJq1BeyiBV1dVA3o1i0FSqsq03C6aWsWo2fS
 tRy6vvQFPbGnQ+jXY+WA/jguw+mshkpA61Un6Z5NPfe6+V1T7yAmLDSakbj5PDANmdBrsAg5
 fJquLERkYN1aDggCkudg67ijHJgSfPIdgD05kwhbbADYVbZoLPQAZm+lAjkwOZzQtSYBtlEO
 4PQnBXY0UiJbPHThpAeUr8hxA1uTSQB+zTQ3mBAyC4H1WfmHJivSD1bMpKEGRkkn+Kt3iWNg
 HukD1+V6hI1zgFV17YdscqDPFO+irD7Eha2TgSxfhoNKBZdlK7isbTCyPdxvKeYYgiH5EsC5
 /houW2QAOJyQb3yQF5zs38EN60BIZ1irdmM34wuXq2+zaAHHViwNZuQAcxrzEFbmwdRkPnvG
 aViofX+UqhkYMt6ehqvjjcZldQKo1/1BXgGHwv9ZCgAqgQ0TJRUFM1JPMRPjKhWKpFHiYNeH
 4SIVOPhWvXvajWag3g3sACQBBOY8d/eWAD4mjJbGijoAJBCBNS8x9EDiBQljnzGS8PuSqDBG
 2gFOEKjAhne2ZOkenwwWRjKPGSaCkfzrcggTOxmIk0WcP24Vovq2cIyfa/sk4bdNZF7KjSJd
 fptj+8C2WXOi02pf3C2ZpUv8zDVuclmpd5ZaQ8c/GnW+MjVBXvJP2UFK5ufRcovn/KvlyuSE
 PlWuL7z5WTsrrlGrF8HatJlfTIg/Xv2221PnWrB2qufOBXtsd6NjtEnkQ9v+2CIFqDRE6OGC
 SKTCv8NFiCtSAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xu7ovU3fFGSy7YGzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllcnHmXxWLBfmuLL1ceMllsenyN1eLyrjlsFj0btrJarD1yl91i
 2aY/TBYHPzxhdeDzWDNvDaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k5zHqa+f2QN4ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQybn8+yFrQJVHRvXEWcwPjR5EuRk4OCQETicd7Wxm7GLk4hASW
 Mkp0v5rAApGQkTg5rYEVwhaW+HOtiw2i6BOjxJ2z98CK2AQMJbreQiREBDoZJaZ1f2QHcZgF
 pjFLLGx8zgZSJSzgL7HmeA8TiM0ioCrx6fRLMJtXwE7iY9dnZogV8hKrNxwAszmB4vfn/wHb
 ICRQKPHo6luWCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRG0LZjPzfvYLy0MfgQ
 owAHoxIPb4fRzjgh1sSy4srcQ4wSHMxKIrwtmUAh3pTEyqrUovz4otKc1OJDjKZAR01klhJN
 zgdGd15JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBkZ9vWJFyWb3
 iMudHjO2Ltn8zmP3ogXLczyLpflsTvEevzptkR3DpTnOUrtb7i/LfDXrzN8pdpsntd7fJTn7
 bb1Rc6/jMytxp2dMW3bVRu++WdQx9+vK7Bdlm87fe32nkH+TdFpOb4Vl43zDqE23NQJ2Hncs
 +jTPoTb9ttdhs4UGOqYrLZfvShFSYinOSDTUYi4qTgQAgDAZQ7YCAAA=
X-CMS-MailID: 20200512090129eucas1p24fa7e83acb8cde494f71ca5694279401
X-Msg-Generator: CA
X-RootMTR: 20200512090129eucas1p24fa7e83acb8cde494f71ca5694279401
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090129eucas1p24fa7e83acb8cde494f71ca5694279401
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090129eucas1p24fa7e83acb8cde494f71ca5694279401@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 37/38] media: pci: fix common ALSA
 DMA-mapping related codes
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
J1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
MjAyMDA1MTIwODU3MTAuMTQ2ODgtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBk
cml2ZXJzL21lZGlhL3BjaS9jeDIzODg1L2N4MjM4ODUtYWxzYS5jIHwgMiArLQogZHJpdmVycy9t
ZWRpYS9wY2kvY3gyNTgyMS9jeDI1ODIxLWFsc2EuYyB8IDIgKy0KIGRyaXZlcnMvbWVkaWEvcGNp
L2N4ODgvY3g4OC1hbHNhLmMgICAgICAgfCAyICstCiBkcml2ZXJzL21lZGlhL3BjaS9zYWE3MTM0
L3NhYTcxMzQtYWxzYS5jIHwgMiArLQogNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wY2kvY3gyMzg4NS9j
eDIzODg1LWFsc2EuYyBiL2RyaXZlcnMvbWVkaWEvcGNpL2N4MjM4ODUvY3gyMzg4NS1hbHNhLmMK
aW5kZXggZGY0NGVkNy4uM2YzNjZlNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wY2kvY3gy
Mzg4NS9jeDIzODg1LWFsc2EuYworKysgYi9kcml2ZXJzL21lZGlhL3BjaS9jeDIzODg1L2N4MjM4
ODUtYWxzYS5jCkBAIC0xMjksNyArMTI5LDcgQEAgc3RhdGljIGludCBjeDIzODg1X2Fsc2FfZG1h
X3VubWFwKHN0cnVjdCBjeDIzODg1X2F1ZGlvX2RldiAqZGV2KQogCWlmICghYnVmLT5zZ2xlbikK
IAkJcmV0dXJuIDA7CiAKLQlkbWFfdW5tYXBfc2coJmRldi0+cGNpLT5kZXYsIGJ1Zi0+c2dsaXN0
LCBidWYtPnNnbGVuLCBQQ0lfRE1BX0ZST01ERVZJQ0UpOworCWRtYV91bm1hcF9zZygmZGV2LT5w
Y2ktPmRldiwgYnVmLT5zZ2xpc3QsIGJ1Zi0+bnJfcGFnZXMsIFBDSV9ETUFfRlJPTURFVklDRSk7
CiAJYnVmLT5zZ2xlbiA9IDA7CiAJcmV0dXJuIDA7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL3BjaS9jeDI1ODIxL2N4MjU4MjEtYWxzYS5jIGIvZHJpdmVycy9tZWRpYS9wY2kvY3gyNTgy
MS9jeDI1ODIxLWFsc2EuYwppbmRleCAzMDE2MTY0Li5jNDAzMDRkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL21lZGlhL3BjaS9jeDI1ODIxL2N4MjU4MjEtYWxzYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEv
cGNpL2N4MjU4MjEvY3gyNTgyMS1hbHNhLmMKQEAgLTE5Myw3ICsxOTMsNyBAQCBzdGF0aWMgaW50
IGN4MjU4MjFfYWxzYV9kbWFfdW5tYXAoc3RydWN0IGN4MjU4MjFfYXVkaW9fZGV2ICpkZXYpCiAJ
aWYgKCFidWYtPnNnbGVuKQogCQlyZXR1cm4gMDsKIAotCWRtYV91bm1hcF9zZygmZGV2LT5wY2kt
PmRldiwgYnVmLT5zZ2xpc3QsIGJ1Zi0+c2dsZW4sIFBDSV9ETUFfRlJPTURFVklDRSk7CisJZG1h
X3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBidWYtPnNnbGlzdCwgYnVmLT5ucl9wYWdlcywgUENJ
X0RNQV9GUk9NREVWSUNFKTsKIAlidWYtPnNnbGVuID0gMDsKIAlyZXR1cm4gMDsKIH0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGNpL2N4ODgvY3g4OC1hbHNhLmMgYi9kcml2ZXJzL21lZGlh
L3BjaS9jeDg4L2N4ODgtYWxzYS5jCmluZGV4IDdkN2FjZWUuLjNjNmZlNmMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbWVkaWEvcGNpL2N4ODgvY3g4OC1hbHNhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9w
Y2kvY3g4OC9jeDg4LWFsc2EuYwpAQCAtMzMyLDcgKzMzMiw3IEBAIHN0YXRpYyBpbnQgY3g4OF9h
bHNhX2RtYV91bm1hcChzdHJ1Y3QgY3g4OF9hdWRpb19kZXYgKmRldikKIAlpZiAoIWJ1Zi0+c2ds
ZW4pCiAJCXJldHVybiAwOwogCi0JZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBidWYtPnNn
bGlzdCwgYnVmLT5zZ2xlbiwKKwlkbWFfdW5tYXBfc2coJmRldi0+cGNpLT5kZXYsIGJ1Zi0+c2ds
aXN0LCBidWYtPm5yX3BhZ2VzLAogCQkgICAgIFBDSV9ETUFfRlJPTURFVklDRSk7CiAJYnVmLT5z
Z2xlbiA9IDA7CiAJcmV0dXJuIDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BjaS9zYWE3
MTM0L3NhYTcxMzQtYWxzYS5jIGIvZHJpdmVycy9tZWRpYS9wY2kvc2FhNzEzNC9zYWE3MTM0LWFs
c2EuYwppbmRleCA1NDRjYTU3Li4zOThjNDdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3Bj
aS9zYWE3MTM0L3NhYTcxMzQtYWxzYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGNpL3NhYTcxMzQv
c2FhNzEzNC1hbHNhLmMKQEAgLTMxMyw3ICszMTMsNyBAQCBzdGF0aWMgaW50IHNhYTcxMzRfYWxz
YV9kbWFfdW5tYXAoc3RydWN0IHNhYTcxMzRfZGV2ICpkZXYpCiAJaWYgKCFkbWEtPnNnbGVuKQog
CQlyZXR1cm4gMDsKIAotCWRtYV91bm1hcF9zZygmZGV2LT5wY2ktPmRldiwgZG1hLT5zZ2xpc3Qs
IGRtYS0+c2dsZW4sIFBDSV9ETUFfRlJPTURFVklDRSk7CisJZG1hX3VubWFwX3NnKCZkZXYtPnBj
aS0+ZGV2LCBkbWEtPnNnbGlzdCwgZG1hLT5ucl9wYWdlcywgUENJX0RNQV9GUk9NREVWSUNFKTsK
IAlkbWEtPnNnbGVuID0gMDsKIAlyZXR1cm4gMDsKIH0KLS0gCjEuOS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
