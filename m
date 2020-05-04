Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1711C3AFE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:11:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9F4966053
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:11:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9C1626606F; Mon,  4 May 2020 13:11:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7543F66553;
	Mon,  4 May 2020 12:56:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4981666079
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:55:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 39C3966539; Mon,  4 May 2020 12:55:52 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id AE2F466079
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:25 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125424euoutp0228a69259216ac4c08d5e7270dd2de9c8~L1G6SaQ2_1960419604euoutp02C
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125424euoutp0228a69259216ac4c08d5e7270dd2de9c8~L1G6SaQ2_1960419604euoutp02C
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125424eucas1p265dac1ad69e1ea2930fc0557ed015feb~L1G6API-H2430824308eucas1p2j;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 8F.12.60698.08010BE5; Mon,  4
 May 2020 13:54:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125424eucas1p16cb0c33de857e1f470173c66710c088b~L1G5gslZD0158001580eucas1p18;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125424eusmtrp2abcaac47d2beda8a33b6c7d1fccdbe34~L1G5f-b3I2826928269eusmtrp2e;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-66-5eb010806d8f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B0.79.08375.F7010BE5; Mon,  4
 May 2020 13:54:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125423eusmtip2b1449c35e65efe0155ceb69b562955af~L1G4sFsXM0350503505eusmtip2Q;
 Mon,  4 May 2020 12:54:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:58 +0200
Message-Id: <20200504125359.5678-20-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSW0wTQRTN7HbbpeniUmuYgIppREUjSNBkI4qa+LEffvBjfCQiFRZEaSFd
 QNGP8lCjhVYE0UJ8oBLB8iqlgqLSimJFQxFBBAUVeSikqLGUgEGwy6L+nXPuOffMTAZHpTbM
 D09QpTBqlSJRLhQL6p9NO9ZnkKaoDXmGQErnaEWoWkMNRs3VX0CpLvd3IXWnogWhOor6BVSJ
 NZya6BpAKPNgN0Z1Nl4RUrmmuxhV9bRfRN02zyDU4x9D2HZvuvJaJaAfTZYIaLPxnJBumPyE
 0R9z7AhdV6qh388OonRBTxmgH/RmCGm9xQhol3k5/cLtEkVK9ou3xDKJCWmMOiQiWnz449dJ
 UfJb3+Nnc26gGcAq0wIvHJIbYWVmG6YFYlxKlgM4cmkW5ckEgKeHihGeuAAs+zbsseHzEbcR
 5/UyAD89/I39SzTZOxBur5AMhdpxrZDDMvI0gM91Es6EknoU1ukNgBssJiNhm+WWiMMCMhAO
 tX6e1wlyK6z64hLxBwyAFSYbyjV7efQi3WpuDyS7RdA5cVHAe3bCYb0N8HgxHLNbFrJL4dz9
 6wgfyAZwwFEl4kkugJ1ZhoVEOOxz/BJyDSgZBGsaQ3h5B6xz6EX8lb1hz7gPJ6MemF9/GeVl
 Ap49I+Xdq2Cxvfpf7eNXr1Ee03DE9GHhgZ4AqMu2InkgoPh/WQkARuDLpLLKeIYNUzHHglmF
 kk1VxQfHJCnNwPOvXs7a3fdA08yhZkDiQC4h9rpqoqSYIo1NVzYDiKNyGXHvlEciYhXpJxh1
 0kF1aiLDNgN/XCD3JcJujh6QkvGKFOYowyQz6r9TBPfyywCP9AHulct77l/P+lEYXV5aHKey
 JGx2WpceGTPF/aTaN9HBvcrvM7feyC+3pZ9fpunzeXdyz24kTmbdZ8rTanahLpvB4SrNdBOw
 ducNon3RCqNztNC/yzZVEKyszv+KNEgS9Y1ZWUv8WoLWTEesu9oxtTJt1214pakwZpvGKa6V
 C9jDitC1qJpV/AFq4JfpUwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7oNAhviDPbLW/SeO8lksXHGelaL
 /9smMltc+fqezWLl6qNMFhdn3mWxWLDf2uLLlYdMFpseX2O1uLxrDptFz4atrBZrj9xlt1i2
 6Q+TxcEPT1gd+DzWzFvD6LH32wIWj02rOtk8tn97wOpxv/s4k8fmJfUet/89ZvaYfGM5o8fu
 mw1sHn1bVjF6fN4k53Hq62f2AJ4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsj
 UyV9O5uU1JzMstQifbsEvYz7L76xF1wXr+joXsjcwLhfpIuRg0NCwETi6yqOLkYuDiGBpYwS
 OxefZ+li5ASKy0icnNbACmELS/y51sUGUfSJUeLKsodgRWwChhJdbyESIgKdjBLTuj+ygzjM
 AtOYJRY2PmcDqRIW8JOYPqMNzGYRUJV4cvIRI4jNK2Arsfb5Z3aIFfISqzccYAY5iRMoPrNX
 HSQsJJAvcffpP5YJjHwLGBlWMYqklhbnpucWG+oVJ+YWl+al6yXn525iBMbOtmM/N+9gvLQx
 +BCjAAejEg9vxOf1cUKsiWXFlbmHGCU4mJVEeHe0AIV4UxIrq1KL8uOLSnNSiw8xmgLdNJFZ
 SjQ5HxjXeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGJk775ef
 TSw/G37zz+mj0+dd/Kslu8mm0aP/zEOP+y2caV7+8xS3R548k6V9lk9/ZUcPv1fEo0VS2X6d
 C+/qlv9K2m+1SrVm+34Pk3+r6iZLBSsV3nn/teD0tNqQtZXbfhcd3Ka68YSbsS/3p+cn1SuK
 3t7paa5VOdXefLMyau6nlbx7Fj2+uVyJpTgj0VCLuag4EQD2QRAGswIAAA==
X-CMS-MailID: 20200504125424eucas1p16cb0c33de857e1f470173c66710c088b
X-Msg-Generator: CA
X-RootMTR: 20200504125424eucas1p16cb0c33de857e1f470173c66710c088b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125424eucas1p16cb0c33de857e1f470173c66710c088b
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125424eucas1p16cb0c33de857e1f470173c66710c088b@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 20/21] media: pci: fix common ALSA
 DMA-mapping related code
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
Ci0tLQogZHJpdmVycy9tZWRpYS9wY2kvY3gyMzg4NS9jeDIzODg1LWFsc2EuYyB8IDIgKy0KIGRy
aXZlcnMvbWVkaWEvcGNpL2N4MjU4MjEvY3gyNTgyMS1hbHNhLmMgfCAyICstCiBkcml2ZXJzL21l
ZGlhL3BjaS9jeDg4L2N4ODgtYWxzYS5jICAgICAgIHwgMiArLQogZHJpdmVycy9tZWRpYS9wY2kv
c2FhNzEzNC9zYWE3MTM0LWFsc2EuYyB8IDIgKy0KIDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGNpL2N4
MjM4ODUvY3gyMzg4NS1hbHNhLmMgYi9kcml2ZXJzL21lZGlhL3BjaS9jeDIzODg1L2N4MjM4ODUt
YWxzYS5jCmluZGV4IGRmNDRlZDcuLjNmMzY2ZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEv
cGNpL2N4MjM4ODUvY3gyMzg4NS1hbHNhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wY2kvY3gyMzg4
NS9jeDIzODg1LWFsc2EuYwpAQCAtMTI5LDcgKzEyOSw3IEBAIHN0YXRpYyBpbnQgY3gyMzg4NV9h
bHNhX2RtYV91bm1hcChzdHJ1Y3QgY3gyMzg4NV9hdWRpb19kZXYgKmRldikKIAlpZiAoIWJ1Zi0+
c2dsZW4pCiAJCXJldHVybiAwOwogCi0JZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBidWYt
PnNnbGlzdCwgYnVmLT5zZ2xlbiwgUENJX0RNQV9GUk9NREVWSUNFKTsKKwlkbWFfdW5tYXBfc2co
JmRldi0+cGNpLT5kZXYsIGJ1Zi0+c2dsaXN0LCBidWYtPm5yX3BhZ2VzLCBQQ0lfRE1BX0ZST01E
RVZJQ0UpOwogCWJ1Zi0+c2dsZW4gPSAwOwogCXJldHVybiAwOwogfQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZWRpYS9wY2kvY3gyNTgyMS9jeDI1ODIxLWFsc2EuYyBiL2RyaXZlcnMvbWVkaWEvcGNp
L2N4MjU4MjEvY3gyNTgyMS1hbHNhLmMKaW5kZXggMzAxNjE2NC4uYzQwMzA0ZCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9tZWRpYS9wY2kvY3gyNTgyMS9jeDI1ODIxLWFsc2EuYworKysgYi9kcml2ZXJz
L21lZGlhL3BjaS9jeDI1ODIxL2N4MjU4MjEtYWxzYS5jCkBAIC0xOTMsNyArMTkzLDcgQEAgc3Rh
dGljIGludCBjeDI1ODIxX2Fsc2FfZG1hX3VubWFwKHN0cnVjdCBjeDI1ODIxX2F1ZGlvX2RldiAq
ZGV2KQogCWlmICghYnVmLT5zZ2xlbikKIAkJcmV0dXJuIDA7CiAKLQlkbWFfdW5tYXBfc2coJmRl
di0+cGNpLT5kZXYsIGJ1Zi0+c2dsaXN0LCBidWYtPnNnbGVuLCBQQ0lfRE1BX0ZST01ERVZJQ0Up
OworCWRtYV91bm1hcF9zZygmZGV2LT5wY2ktPmRldiwgYnVmLT5zZ2xpc3QsIGJ1Zi0+bnJfcGFn
ZXMsIFBDSV9ETUFfRlJPTURFVklDRSk7CiAJYnVmLT5zZ2xlbiA9IDA7CiAJcmV0dXJuIDA7CiB9
CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BjaS9jeDg4L2N4ODgtYWxzYS5jIGIvZHJpdmVy
cy9tZWRpYS9wY2kvY3g4OC9jeDg4LWFsc2EuYwppbmRleCA3ZDdhY2VlLi4zYzZmZTZjIDEwMDY0
NAotLS0gYS9kcml2ZXJzL21lZGlhL3BjaS9jeDg4L2N4ODgtYWxzYS5jCisrKyBiL2RyaXZlcnMv
bWVkaWEvcGNpL2N4ODgvY3g4OC1hbHNhLmMKQEAgLTMzMiw3ICszMzIsNyBAQCBzdGF0aWMgaW50
IGN4ODhfYWxzYV9kbWFfdW5tYXAoc3RydWN0IGN4ODhfYXVkaW9fZGV2ICpkZXYpCiAJaWYgKCFi
dWYtPnNnbGVuKQogCQlyZXR1cm4gMDsKIAotCWRtYV91bm1hcF9zZygmZGV2LT5wY2ktPmRldiwg
YnVmLT5zZ2xpc3QsIGJ1Zi0+c2dsZW4sCisJZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBi
dWYtPnNnbGlzdCwgYnVmLT5ucl9wYWdlcywKIAkJICAgICBQQ0lfRE1BX0ZST01ERVZJQ0UpOwog
CWJ1Zi0+c2dsZW4gPSAwOwogCXJldHVybiAwOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
Y2kvc2FhNzEzNC9zYWE3MTM0LWFsc2EuYyBiL2RyaXZlcnMvbWVkaWEvcGNpL3NhYTcxMzQvc2Fh
NzEzNC1hbHNhLmMKaW5kZXggNTQ0Y2E1Ny4uMzk4YzQ3ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9t
ZWRpYS9wY2kvc2FhNzEzNC9zYWE3MTM0LWFsc2EuYworKysgYi9kcml2ZXJzL21lZGlhL3BjaS9z
YWE3MTM0L3NhYTcxMzQtYWxzYS5jCkBAIC0zMTMsNyArMzEzLDcgQEAgc3RhdGljIGludCBzYWE3
MTM0X2Fsc2FfZG1hX3VubWFwKHN0cnVjdCBzYWE3MTM0X2RldiAqZGV2KQogCWlmICghZG1hLT5z
Z2xlbikKIAkJcmV0dXJuIDA7CiAKLQlkbWFfdW5tYXBfc2coJmRldi0+cGNpLT5kZXYsIGRtYS0+
c2dsaXN0LCBkbWEtPnNnbGVuLCBQQ0lfRE1BX0ZST01ERVZJQ0UpOworCWRtYV91bm1hcF9zZygm
ZGV2LT5wY2ktPmRldiwgZG1hLT5zZ2xpc3QsIGRtYS0+bnJfcGFnZXMsIFBDSV9ETUFfRlJPTURF
VklDRSk7CiAJZG1hLT5zZ2xlbiA9IDA7CiAJcmV0dXJuIDA7CiB9Ci0tIAoxLjkuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
