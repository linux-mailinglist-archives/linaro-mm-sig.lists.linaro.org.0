Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E56D1FF8E3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:12:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A0A160688
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:12:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8BBA86653E; Thu, 18 Jun 2020 16:12:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F391F666FD;
	Thu, 18 Jun 2020 15:43:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 784F7665A5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:41:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6CFD4665B6; Thu, 18 Jun 2020 15:41:49 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id B15F8665A5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:39 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154038euoutp02f0428760d5876de4ece745275cbe9fac~ZrZ5eH8MS1314813148euoutp02d
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154038euoutp02f0428760d5876de4ece745275cbe9fac~ZrZ5eH8MS1314813148euoutp02d
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154038eucas1p2121f339d68d5829bf83f6bc2eaab00c4~ZrZ5AnrD-0501005010eucas1p23;
 Thu, 18 Jun 2020 15:40:38 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id AC.DE.60679.6FA8BEE5; Thu, 18
 Jun 2020 16:40:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154038eucas1p18eae40b8fbf97a3e42abef8eb14da946~ZrZ4paTmk1755717557eucas1p1c;
 Thu, 18 Jun 2020 15:40:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154038eusmtrp1756f89b0c0bcd84961a6999c354ec4e2~ZrZ4os9eH2230622306eusmtrp1S;
 Thu, 18 Jun 2020 15:40:38 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-58-5eeb8af6a314
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 05.F9.07950.5FA8BEE5; Thu, 18
 Jun 2020 16:40:38 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154037eusmtip178c531fea8bb60f22dafd0aa787bb8a2~ZrZ4BqXtS0864308643eusmtip1P;
 Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:55 +0200
Message-Id: <20200618153956.29558-35-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUhUURiGOXeb6+TEdTQ9WKRNZAu51o9Lhplo3D9BSZhELlNe1BwX5qqp
 VGqi6ehYKrghMUTkvo06mWYupGMOWaS4pC3ikLmh4QKWjnm9Lf+e873v973fORwSlTbhtmR4
 VCyrjJIrZIQY0/VtvHNcV80HuozOW9PqwTcI3Vhcj9PbujyUHl5bIujK6l6E1nS606vDUwit
 nR7B6aG2MoLOaWjB6drXn0T0M+0mQncvG3FPCVPzuAYwHesajNFWZRHM8/WvOPMlW48wTU+T
 mQnTNMoUjJUDpn08hWBym6sAs6I9eGnPNfHZEFYRHs8qnT2CxWHfil7gMQvWCS3zJjQFzFqq
 gBkJqdMwVT1KqICYlFIVABorahFekFKrAI6tKQRhBcCM7Q2gAuRux1RWkOApB/Cl8arg2fHX
 65pFvEBQrlC1qCJ4tqLSAexXm/MmlJpGoKZ+ZFewpC7D8q0MjGeMOgJz5+pQPkBCecCmsmPC
 dnawuqEL5dlsp2zQp+P8HEgNiGBmtgkTTN6wPX9YJLAlnNM3/+ED0FCQgwkNaQBODdaKhEMO
 gEP3i4HgcoeTgz8JPhmljsP6Nmfhludhx8AdAffCsUUL3ozuYL6uCBXKEpiZIRVmOMBSfd2/
 1O73H1CBGfirZgET3icPwA7jAP4I2JX+z9IAUAVs2DguMpTl3KLY206cPJKLiwp1uhkdqQU7
 X8lg0q+2grbNGz2AIoHMXPL9ynygFJfHc4mRPQCSqMxK4vXWECiVhMgTk1hldJAyTsFyPWA/
 iclsJKeezAZIqVB5LBvBsjGs8q+KkGa2KcB+IsT76EcbbtnbN90tl3VN04k3hxunnfM9/bPG
 77qkJXXlGUyNEX4larcz53zu3RrP8l/qxUXZmJ9xIcEzIDVFvVxh/yPaYgm5kO27ogh9WOx1
 /dDFmc7WLZ/DSfuCqZO6DK/C6hI22b5/cuaVY2VFiHt8ZU9Cb1+tAxQ/KPwsw7gwuesJVMnJ
 fwNiwzczRgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7rful7HGUxsZLToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZtGzYSurxdojd9ktlm36w2Rx
 8MMTVgdejzXz1jB67P22gMVj06pONo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH
 35ZVjB6fN8kFcEfp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSW
 pRbp2yXoZTybvpO14I1YxdbX/5gbGF8KdzFycEgImEg87IzvYuTiEBJYyijxZuYX9i5GTqC4
 jMTJaQ2sELawxJ9rXWwQRZ8YJY7/OgCWYBMwlOh6C5EQEehklJjW/ZEdxGEWeM0k0bprDRtI
 lbCAv8Sy6dNYQGwWAVWJvlfrmEFW8wrYSWyeowGxQV5i9YYDzCA2J1D49PFWsAVCArYSzz+0
 sU1g5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMFK2Hfu5ZQdj17vgQ4wCHIxKPLwv
 Ql7HCbEmlhVX5h5ilOBgVhLhdTp7Ok6INyWxsiq1KD++qDQntfgQoynQTROZpUST84FRnFcS
 b2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgbHTcLOqnGvFAz9L24U+
 S6e2xf889ZnD6/FF/lVHD12pe/kvNdryR3zwNsY5V7tc7PRP/wi1zxHXM//5rWMqd76FtdXK
 E62ivap5FVu10q+U3dznt8Sys+dZxrJV1i81HnRprK07ZH4qeEPVbW3vUyV50/5NOCDr2/Xm
 UZfInN9bWDJ8NE+nuCixFGckGmoxFxUnAgBltq+6qgIAAA==
X-CMS-MailID: 20200618154038eucas1p18eae40b8fbf97a3e42abef8eb14da946
X-Msg-Generator: CA
X-RootMTR: 20200618154038eucas1p18eae40b8fbf97a3e42abef8eb14da946
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154038eucas1p18eae40b8fbf97a3e42abef8eb14da946
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154038eucas1p18eae40b8fbf97a3e42abef8eb14da946@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 34/36] media: pci: fix common ALSA
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
