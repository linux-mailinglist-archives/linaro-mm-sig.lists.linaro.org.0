Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C212252810
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 09:02:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75562617D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 07:02:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 63B6261813; Wed, 26 Aug 2020 07:02:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5915666D0;
	Wed, 26 Aug 2020 06:39:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F3A78617B9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:38:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DE029666D0; Wed, 26 Aug 2020 06:38:55 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id BBC0D66628
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:36:30 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063630euoutp01403923c2fce3629051189f152d574781~uvffdSGWa2036420364euoutp01n
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:36:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063630euoutp01403923c2fce3629051189f152d574781~uvffdSGWa2036420364euoutp01n
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063629eucas1p17af18485cd101f2dbde76a07e3777e70~uvffKiKSZ1612416124eucas1p19;
 Wed, 26 Aug 2020 06:36:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 26.DD.05997.DE2064F5; Wed, 26
 Aug 2020 07:36:29 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063629eucas1p1a3c9c93e281b4c432a6d9940e734e3c4~uvferOOJK1612416124eucas1p18;
 Wed, 26 Aug 2020 06:36:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063629eusmtrp2b4efaa81707a94d9995acc3a8a6bc40b~uvfeqaKXz0466204662eusmtrp2e;
 Wed, 26 Aug 2020 06:36:29 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-61-5f4602ed2f4f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D4.F0.06314.DE2064F5; Wed, 26
 Aug 2020 07:36:29 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063545eusmtip2c8c042b88f2793200ec3eeb737bb4947~uve2bH14Z0302303023eusmtip23;
 Wed, 26 Aug 2020 06:35:45 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:15 +0200
Message-Id: <20200826063316.23486-32-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSxVYRzuPeeec4+Py3EpbxjrtrTaIqntLGVp1PmnLVurVaRbzpDr6x5X
 UZs70rg+umpFZtxhlO8urnw0H4ubyc0waVh0rYaMRlTsynHQf8/v+Xif3357CVTciDkQYZGx
 jDxSKpPg5gJd9x/DkTnkXNDRZ8kHqUxDD0K9zq3BqHVdNkoN/ZrHqVcVXQilafOiloYmEUpr
 HMaoweZ8nMqobcCoqnfjQqpUu4ZQHQtT2BkRXVlQCei3yxoBrS1Pw+nG5QmM/pKuR+i6kkR6
 1GRE6acjZYBu+azE6az6ckAvap0vWlwzPxXMyMLiGLm7903z0G85TVj0jz33GmZNqBJM26qA
 GQHJ41CpH8JVwJwQky8BXF6tEvDDEoClq/lbyiKA+t8v8O3IQOs6wgtlAFa31YGdSGqGDuFc
 OOkBVXOqzYQdmQLg+0xLzoSSRgRqaoY3BVvSH84PfAQcFpAHoCGlXqgCBCEiveHDoli+zQVW
 1LajHDbboPXpjzdXgmS3EK5MtWO8yRcWlCRtrWcLZ/TcOxx2gutNhQgfSAZw0lAl5IcMAAeT
 cgHv8oJjhr8414ySh2BNsztP+8D2pUKUoyFpBUfmbDga3YBPdDlbtAimPhLzbleYp6/eqe3o
 H0B5TMO+ohaUP1A2gI2j34Vq4JL3v0wDQDmwZxRsRAjDHotk7rqx0ghWERnidjsqQgs2vlOv
 Sb/0BjSv3eoEJAEkliIN7hckxqRxbHxEJ4AEKrETne3rvSEWBUvjExh5VJBcIWPYTuBICCT2
 Is+i6UAxGSKNZcIZJpqRb6sIYeagBBXrar8sSzb8euK8Z1V2jIVHoOz0/qxLivgLeZQ6wzr3
 qk/2A7fWtMQTX2cTY8YznXblBhiTouj7GhA6O9ai6+gvWThZbCNbvjwx47zS3VE5u7vTb6+s
 zGra9Xm9MHCk2PHnJ2W6T5R/m0k95dsVcN434YO/bljVbbLucU67su+ORMCGSj0Oo3JW+g8n
 lyXDSgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xe7pvmdziDbZt5LToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZtGzYSurxdojd9ktlm36w2Rx
 8MMTVgdejzXz1jB67P22gMVj06pONo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH
 35ZVjB6fN8kFcEfp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSW
 pRbp2yXoZTybvpO14I1YxdbX/5gbGF8KdzFyckgImEhc2vOfqYuRi0NIYCmjxI1TF5ghEjIS
 J6c1sELYwhJ/rnWxgdhCAp8YJdZ+8QGx2QQMJbregsS5OEQEOhklpnV/ZAdxmAVeM0m07loD
 1iEs4C+xeu5dJhCbRUBV4lzrFqAiDg5eATuJlkUlEAvkJVZvOAC2mBMofLy7H2qZrcTptTOY
 JzDyLWBkWMUoklpanJueW2yoV5yYW1yal66XnJ+7iREYKduO/dy8g/HSxuBDjAIcjEo8vAvY
 XOOFWBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIjRFOimicxSosn5wCjOK4k3
 NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAyCuRkxr7+nLGsulVa0Wd
 eV8GF1oqWc297hDKNGfCf8M456OBWSqNB6KWyehcli/IYzkpUPq3XeDaxN+sD1TSuotrr8bM
 4fjM9e7yisCmkKXZHFfLD+6bHHd7ezGv4my7WU9+9il1Oa1sjL/9cppaLlenuvfe0CmbRbh7
 7DKUNX/YLr/+fW+lEktxRqKhFnNRcSIAu19n2aoCAAA=
X-CMS-MailID: 20200826063629eucas1p1a3c9c93e281b4c432a6d9940e734e3c4
X-Msg-Generator: CA
X-RootMTR: 20200826063629eucas1p1a3c9c93e281b4c432a6d9940e734e3c4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063629eucas1p1a3c9c93e281b4c432a6d9940e734e3c4
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063629eucas1p1a3c9c93e281b4c432a6d9940e734e3c4@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 31/32] media: pci: fix common ALSA
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
