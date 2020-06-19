Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8819320077E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 13:08:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADF2E60F4F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:08:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9ABCF665A5; Fri, 19 Jun 2020 11:08:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA5F466708;
	Fri, 19 Jun 2020 10:40:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DC0E16659D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CD80A666DC; Fri, 19 Jun 2020 10:38:46 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id DCE656659D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:18 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103718euoutp02000f0f97270062640a0987839e3b27c4~Z66U6SOZc2363023630euoutp026
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103718euoutp02000f0f97270062640a0987839e3b27c4~Z66U6SOZc2363023630euoutp026
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103717eucas1p16ab7c2ffb497df81e0ba7cb3b0e94535~Z66Uo58DX0707907079eucas1p16;
 Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id DD.AC.06456.D559CEE5; Fri, 19
 Jun 2020 11:37:17 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103717eucas1p23b82366794c92cc70c0492e4ca29c4a1~Z66UVJBgV3081530815eucas1p2q;
 Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103717eusmtrp17dc57f25e3f104e3f0d1614b794a5593~Z66UUgR861007310073eusmtrp1L;
 Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-7b-5eec955d1587
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8B.1B.06017.D559CEE5; Fri, 19
 Jun 2020 11:37:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103716eusmtip2ff83f555562d537185bd2efa44a6cf30~Z66TrirXr0247402474eusmtip2h;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:35 +0200
Message-Id: <20200619103636.11974-36-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHObu78zqdXOfroJIwSixMkx7cMMRC6IJEGdILZs28qTRfu86y
 kkTLnE7NTHyiyyzzrfOZYjotZ1kjVMxSKdGKOU3xBZrMNu+0/z7f3/f7O9/D4WAIvwV1xMIj
 YylJpEgs4HDZrf3rmoPC3LmgQ4rf7kSG5j2LaMyvR4mt1myEGFld4BCV1e9YhKLbm1gZmWIR
 yulRlBjuKOYQ8oYWlKh9O2lGvFRusgjV4gzqyyNrSmoA2bWmYJPKKhmHbFv7gZLf09Ussqn8
 Pjmun0bInLEKQHZ+TeSQmc1VgFxW7jlncYV7IoQSh8dREk+fa9ywX3mv0eg5+9stOj2SCLQ2
 acAcg/gR+CbvD0gDXIyPvwJQtd7DYsQKgKXLGpNYBrBv4Tm6szLxYtFkVADYVpmK7q5k5hZs
 pzi4F0ybT+MY2RZ/COBAhqUxhODTLKioHzUYGGaDB8CNImdjho3vg8/kK8DIPNwHDvTLTW0u
 sLqhBzGyuWGue6AyzfvNoLrhKMN+8G9BoxnDNnBW3WxiZziYI2cbeyGeDOCUptaMEXIAh5Py
 AZPyhhOaje0LIfh+WN/haUSIn4TJWn8GreDYvLUxjBjwSWsewox5MDWFz5zhCgvVdbutqs9D
 CMMk7Nb8ND1PNoCjfaXoY+BS+L9LAUAVcKCkdEQoRXtFUrc8aFEELY0M9bgeFaEEhs80qFcv
 tYPVoeBegGNAYMnzvagL4qOiODo+ohdADBHY8k59Ggzi80JE8XcoSdRViVRM0b3ACWMLHHiH
 y7RCPh4qiqVuUlQ0JdlxWZi5YyKw8lehZ3kT+cIvl5emUzeyZPSILL3YtjRZ7Fo2WXQjMOmS
 sGQcSRi3P6+TfkvaCJ/tlKF2W3vd1XeDZZtaSncc5WcHWNT1DpyxMj99IavQK0Dvlu0WkqqI
 ac/8kNKF2vnik+hHcaaT37z1MSx45l5T4KOnCVnxTUDYF70WUy5g02EirwOIhBb9A3JOGzNI
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xe7qxU9/EGWzvlrLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZtGzYSurxdojd9ktlm36w2Rx
 8MMTVgdejzXz1jB67P22gMVj06pONo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH
 35ZVjB6fN8kFcEfp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSW
 pRbp2yXoZTybvpO14I1YxdbX/5gbGF8KdzFyckgImEjcWfqBqYuRi0NIYCmjxPeXP9kgEjIS
 J6c1sELYwhJ/rnWxQRR9YpSYPGE6WBGbgKFE11uIhIhAJ6PEtO6P7CAOs8BrJonWXWuAMhwc
 wgL+EtOv5II0sAioSizs+cIIYvMK2EmcONYDtUFeYvWGA8wgNidQ/HXLQbC4kICtxPIF75kn
 MPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERgr24793LKDsetd8CFGAQ5GJR7eFyGv
 44RYE8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iNEU6KiJzFKiyfnAOM4riTc0
 NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cBY/GGb0mMhFpbbvpf2BS5f
 meIilXgp/nLFx/4PjJuETwhHrhaQUV1qOnnVbwX2IAFFUb2i71y/XZ781ey8+KFoj7SB5Wm+
 vuUf/KpnxIV7uM47u1113T7/Df4Jh583NgptDP+pajsveYnBn7vPViyVX+hs9TMtaPKKRSnB
 3AuXn7CoXzT16vN1SizFGYmGWsxFxYkAE+qwkqsCAAA=
X-CMS-MailID: 20200619103717eucas1p23b82366794c92cc70c0492e4ca29c4a1
X-Msg-Generator: CA
X-RootMTR: 20200619103717eucas1p23b82366794c92cc70c0492e4ca29c4a1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103717eucas1p23b82366794c92cc70c0492e4ca29c4a1
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103717eucas1p23b82366794c92cc70c0492e4ca29c4a1@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 35/36] media: pci: fix common ALSA
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL21lZGlhL3BjaS9jeDIzODg1
L2N4MjM4ODUtYWxzYS5jIHwgMiArLQogZHJpdmVycy9tZWRpYS9wY2kvY3gyNTgyMS9jeDI1ODIx
LWFsc2EuYyB8IDIgKy0KIGRyaXZlcnMvbWVkaWEvcGNpL2N4ODgvY3g4OC1hbHNhLmMgICAgICAg
fCAyICstCiBkcml2ZXJzL21lZGlhL3BjaS9zYWE3MTM0L3NhYTcxMzQtYWxzYS5jIHwgMiArLQog
NCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9wY2kvY3gyMzg4NS9jeDIzODg1LWFsc2EuYyBiL2RyaXZlcnMv
bWVkaWEvcGNpL2N4MjM4ODUvY3gyMzg4NS1hbHNhLmMKaW5kZXggZGY0NGVkNzM5M2EwLi4zZjM2
NmU0ZTQ2ODUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGNpL2N4MjM4ODUvY3gyMzg4NS1h
bHNhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wY2kvY3gyMzg4NS9jeDIzODg1LWFsc2EuYwpAQCAt
MTI5LDcgKzEyOSw3IEBAIHN0YXRpYyBpbnQgY3gyMzg4NV9hbHNhX2RtYV91bm1hcChzdHJ1Y3Qg
Y3gyMzg4NV9hdWRpb19kZXYgKmRldikKIAlpZiAoIWJ1Zi0+c2dsZW4pCiAJCXJldHVybiAwOwog
Ci0JZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBidWYtPnNnbGlzdCwgYnVmLT5zZ2xlbiwg
UENJX0RNQV9GUk9NREVWSUNFKTsKKwlkbWFfdW5tYXBfc2coJmRldi0+cGNpLT5kZXYsIGJ1Zi0+
c2dsaXN0LCBidWYtPm5yX3BhZ2VzLCBQQ0lfRE1BX0ZST01ERVZJQ0UpOwogCWJ1Zi0+c2dsZW4g
PSAwOwogCXJldHVybiAwOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wY2kvY3gyNTgy
MS9jeDI1ODIxLWFsc2EuYyBiL2RyaXZlcnMvbWVkaWEvcGNpL2N4MjU4MjEvY3gyNTgyMS1hbHNh
LmMKaW5kZXggMzAxNjE2NDI2ZDhhLi5jNDAzMDRkMzM3NzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bWVkaWEvcGNpL2N4MjU4MjEvY3gyNTgyMS1hbHNhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wY2kv
Y3gyNTgyMS9jeDI1ODIxLWFsc2EuYwpAQCAtMTkzLDcgKzE5Myw3IEBAIHN0YXRpYyBpbnQgY3gy
NTgyMV9hbHNhX2RtYV91bm1hcChzdHJ1Y3QgY3gyNTgyMV9hdWRpb19kZXYgKmRldikKIAlpZiAo
IWJ1Zi0+c2dsZW4pCiAJCXJldHVybiAwOwogCi0JZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2
LCBidWYtPnNnbGlzdCwgYnVmLT5zZ2xlbiwgUENJX0RNQV9GUk9NREVWSUNFKTsKKwlkbWFfdW5t
YXBfc2coJmRldi0+cGNpLT5kZXYsIGJ1Zi0+c2dsaXN0LCBidWYtPm5yX3BhZ2VzLCBQQ0lfRE1B
X0ZST01ERVZJQ0UpOwogCWJ1Zi0+c2dsZW4gPSAwOwogCXJldHVybiAwOwogfQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9wY2kvY3g4OC9jeDg4LWFsc2EuYyBiL2RyaXZlcnMvbWVkaWEvcGNp
L2N4ODgvY3g4OC1hbHNhLmMKaW5kZXggN2Q3YWNlZWNjOTg1Li4zYzZmZTZjZWIwYjcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGNpL2N4ODgvY3g4OC1hbHNhLmMKKysrIGIvZHJpdmVycy9t
ZWRpYS9wY2kvY3g4OC9jeDg4LWFsc2EuYwpAQCAtMzMyLDcgKzMzMiw3IEBAIHN0YXRpYyBpbnQg
Y3g4OF9hbHNhX2RtYV91bm1hcChzdHJ1Y3QgY3g4OF9hdWRpb19kZXYgKmRldikKIAlpZiAoIWJ1
Zi0+c2dsZW4pCiAJCXJldHVybiAwOwogCi0JZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBi
dWYtPnNnbGlzdCwgYnVmLT5zZ2xlbiwKKwlkbWFfdW5tYXBfc2coJmRldi0+cGNpLT5kZXYsIGJ1
Zi0+c2dsaXN0LCBidWYtPm5yX3BhZ2VzLAogCQkgICAgIFBDSV9ETUFfRlJPTURFVklDRSk7CiAJ
YnVmLT5zZ2xlbiA9IDA7CiAJcmV0dXJuIDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bj
aS9zYWE3MTM0L3NhYTcxMzQtYWxzYS5jIGIvZHJpdmVycy9tZWRpYS9wY2kvc2FhNzEzNC9zYWE3
MTM0LWFsc2EuYwppbmRleCA1NDRjYTU3ZWVlNzUuLjM5OGM0N2ZmNDczZCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9tZWRpYS9wY2kvc2FhNzEzNC9zYWE3MTM0LWFsc2EuYworKysgYi9kcml2ZXJzL21l
ZGlhL3BjaS9zYWE3MTM0L3NhYTcxMzQtYWxzYS5jCkBAIC0zMTMsNyArMzEzLDcgQEAgc3RhdGlj
IGludCBzYWE3MTM0X2Fsc2FfZG1hX3VubWFwKHN0cnVjdCBzYWE3MTM0X2RldiAqZGV2KQogCWlm
ICghZG1hLT5zZ2xlbikKIAkJcmV0dXJuIDA7CiAKLQlkbWFfdW5tYXBfc2coJmRldi0+cGNpLT5k
ZXYsIGRtYS0+c2dsaXN0LCBkbWEtPnNnbGVuLCBQQ0lfRE1BX0ZST01ERVZJQ0UpOworCWRtYV91
bm1hcF9zZygmZGV2LT5wY2ktPmRldiwgZG1hLT5zZ2xpc3QsIGRtYS0+bnJfcGFnZXMsIFBDSV9E
TUFfRlJPTURFVklDRSk7CiAJZG1hLT5zZ2xlbiA9IDA7CiAJcmV0dXJuIDA7CiB9Ci0tIAoyLjE3
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
