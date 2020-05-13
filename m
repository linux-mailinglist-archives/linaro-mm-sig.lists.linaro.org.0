Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 118281D171F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:09:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 413E560BD9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:09:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 32916619AC; Wed, 13 May 2020 14:09:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E417966583;
	Wed, 13 May 2020 13:37:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8246B65FA7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:37:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6E51266566; Wed, 13 May 2020 13:37:09 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 2E22265FAB
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:26 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133325euoutp017cb6d1903ffb1808893205d1fc3780d9~OmcieAY1_2146121461euoutp01a
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133325euoutp017cb6d1903ffb1808893205d1fc3780d9~OmcieAY1_2146121461euoutp01a
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133324eucas1p2ee28c7c8b40096d69e61ccb40869df42~Omch_6t3M0359403594eucas1p23;
 Wed, 13 May 2020 13:33:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B5.E8.60698.427FBBE5; Wed, 13
 May 2020 14:33:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133324eucas1p25dc380046c516ca8f07677ed14f93e63~Omchmc1d82378623786eucas1p2K;
 Wed, 13 May 2020 13:33:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200513133324eusmtrp2b236c8e390a3dcbb4effa40b7a2b4706~Omchld4Np1338613386eusmtrp2x;
 Wed, 13 May 2020 13:33:24 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-09-5ebbf724383e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C8.2A.08375.427FBBE5; Wed, 13
 May 2020 14:33:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133323eusmtip151829cf8f1691cbe8793eb3d45b0170f~Omcg8hyPy3222032220eusmtip1I;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:44 +0200
Message-Id: <20200513133245.6408-37-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHec/Zzs6Ws+OUfLVIGyolpJkWJzRLiDj4IYyKIMiaeVDJW5uz
 LEJJvM0L5SDFpEQky6nTOaepectbWktU5t3mJS3FlKZWMrVtp+zb73me//99Lrw4KqhlO+IR
 0XG0OFoUKcR4LE3X709HXX42Bh+rSjlBZmvfI2R1vpJN7mieoOTQ+gpGvlZ0ImRRiy+5NjSN
 kKpZHZscbCjEyKyqWjZZ0THJIV+qjAjZtjrHPsunyp+XA+rtRhGLUpVlYFTdhp5Nfc7sRqia
 kkRqfHsWpeQjpYBqHE3CqBx1GaAMqoNBe67x/ELpyIh4Wuzpf5MX3jsyh8VmwnstW/NYEvhh
 JwNcHBI+8ItBgcoADxcQrwDMny5mMcEagOrRJsysEhAGAJcWEmUAtziy5JcYTSmAX4u3sF1D
 yXK7xYARXlC2LLOwHZECYE+2lVmEErMILFLqLAVb4iLMq5YjZmYRrvBZRgnLzHziNMxsamAx
 8zlBRVUramauKb840WIZDxJdHDgw2YMxonOwV9b012ALF7vVHIYPwJ03LxDGkAzgtLaCwwRZ
 AA4+ygeMyhdOaDcx83IocQQqGzyZPQOgtk7IoDUcWbYxi1ET5mryUCbNh+mpAuYNN1jQXbnb
 ta1/AGWYgjtpExzmQO8ATM6oxx4Dp4L/vYoAKAP2tFQSFUZLvKPpux4SUZREGh3mcSsmSgVM
 n6lvu3u9HjQbQ9oBgQOhFV8/3BgsYIviJQlR7QDiqNCOf0FpSvFDRQn3aXHMDbE0kpa0g/04
 S2jP9y7+dl1AhIni6Ns0HUuL/1URnOuYBNxOVp26Iw3J3Vr12Rfkr3G2XnCChvnQyDNDe/Uz
 6X3GskCRTh9ojdpTlc0prTUP3cZSrziUfyBt6MNuvVZqbyN7fpRyVRSGj4ypY1bwQ5tyTkCn
 Ytzv/K/htAfuWTLfZK8Z5XdnTYcu9riiIoe3eXmpeHtqqp979eO4i/NTByFLEi7yckfFEtEf
 1Huf3kgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7oq33fHGaydImPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaJnw1ZWi7VH7rJbLNv0h8ni
 4IcnrA68HmvmrWH02PttAYvHplWdbB7bvz1g9bjffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP
 vi2rGD0+b5IL4I7SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcks
 Sy3St0vQyzh14wlbQbdExf6/z9gaGD+JdDFycEgImEj0TA7uYuTiEBJYyihx8c5dpi5GTqC4
 jMTJaQ2sELawxJ9rXWwQRZ8YJX69OcoOkmATMJToeguREBHoZJSY1v2RHcRhFnjNJNG6aw0b
 SJWwgL/E7zPNYKNYBFQlZncuYQGxeQVsJbr37GKBWCEvsXrDAWYQmxMo/urOfrC4kEC+xN7F
 +9gmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERgr24793LyD8dLG4EOMAhyMSjy8
 Frd2xwmxJpYVV+YeYpTgYFYS4fVbDxTiTUmsrEotyo8vKs1JLT7EaAp01ERmKdHkfGAc55XE
 G5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYGzY9lF2VW8iE9fRN0vl
 X9WZZWmXbApdP5uj+duFm3s6+VT3ht46n5M5zdQ4/3JIgvv3wmmnrVrmy0j5bdV3PflgbkdN
 4gMhyVmRWZu2FSyYIDJ97R6pzsPePRyK3RfnL2lQEF+YZ1e5ROWpxWKVSXwdy/2v28XkPrdi
 9TYKPntQJuNvc4SUtRJLcUaioRZzUXEiALcYtIOrAgAA
X-CMS-MailID: 20200513133324eucas1p25dc380046c516ca8f07677ed14f93e63
X-Msg-Generator: CA
X-RootMTR: 20200513133324eucas1p25dc380046c516ca8f07677ed14f93e63
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133324eucas1p25dc380046c516ca8f07677ed14f93e63
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133324eucas1p25dc380046c516ca8f07677ed14f93e63@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 37/38] media: pci: fix common ALSA
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
J1tQQVRDSCB2NSAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21t
dS8yMDIwMDUxMzEzMjExNC42MDQ2LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQog
ZHJpdmVycy9tZWRpYS9wY2kvY3gyMzg4NS9jeDIzODg1LWFsc2EuYyB8IDIgKy0KIGRyaXZlcnMv
bWVkaWEvcGNpL2N4MjU4MjEvY3gyNTgyMS1hbHNhLmMgfCAyICstCiBkcml2ZXJzL21lZGlhL3Bj
aS9jeDg4L2N4ODgtYWxzYS5jICAgICAgIHwgMiArLQogZHJpdmVycy9tZWRpYS9wY2kvc2FhNzEz
NC9zYWE3MTM0LWFsc2EuYyB8IDIgKy0KIDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGNpL2N4MjM4ODUv
Y3gyMzg4NS1hbHNhLmMgYi9kcml2ZXJzL21lZGlhL3BjaS9jeDIzODg1L2N4MjM4ODUtYWxzYS5j
CmluZGV4IGRmNDRlZDcuLjNmMzY2ZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGNpL2N4
MjM4ODUvY3gyMzg4NS1hbHNhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wY2kvY3gyMzg4NS9jeDIz
ODg1LWFsc2EuYwpAQCAtMTI5LDcgKzEyOSw3IEBAIHN0YXRpYyBpbnQgY3gyMzg4NV9hbHNhX2Rt
YV91bm1hcChzdHJ1Y3QgY3gyMzg4NV9hdWRpb19kZXYgKmRldikKIAlpZiAoIWJ1Zi0+c2dsZW4p
CiAJCXJldHVybiAwOwogCi0JZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBidWYtPnNnbGlz
dCwgYnVmLT5zZ2xlbiwgUENJX0RNQV9GUk9NREVWSUNFKTsKKwlkbWFfdW5tYXBfc2coJmRldi0+
cGNpLT5kZXYsIGJ1Zi0+c2dsaXN0LCBidWYtPm5yX3BhZ2VzLCBQQ0lfRE1BX0ZST01ERVZJQ0Up
OwogCWJ1Zi0+c2dsZW4gPSAwOwogCXJldHVybiAwOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wY2kvY3gyNTgyMS9jeDI1ODIxLWFsc2EuYyBiL2RyaXZlcnMvbWVkaWEvcGNpL2N4MjU4
MjEvY3gyNTgyMS1hbHNhLmMKaW5kZXggMzAxNjE2NC4uYzQwMzA0ZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9tZWRpYS9wY2kvY3gyNTgyMS9jeDI1ODIxLWFsc2EuYworKysgYi9kcml2ZXJzL21lZGlh
L3BjaS9jeDI1ODIxL2N4MjU4MjEtYWxzYS5jCkBAIC0xOTMsNyArMTkzLDcgQEAgc3RhdGljIGlu
dCBjeDI1ODIxX2Fsc2FfZG1hX3VubWFwKHN0cnVjdCBjeDI1ODIxX2F1ZGlvX2RldiAqZGV2KQog
CWlmICghYnVmLT5zZ2xlbikKIAkJcmV0dXJuIDA7CiAKLQlkbWFfdW5tYXBfc2coJmRldi0+cGNp
LT5kZXYsIGJ1Zi0+c2dsaXN0LCBidWYtPnNnbGVuLCBQQ0lfRE1BX0ZST01ERVZJQ0UpOworCWRt
YV91bm1hcF9zZygmZGV2LT5wY2ktPmRldiwgYnVmLT5zZ2xpc3QsIGJ1Zi0+bnJfcGFnZXMsIFBD
SV9ETUFfRlJPTURFVklDRSk7CiAJYnVmLT5zZ2xlbiA9IDA7CiAJcmV0dXJuIDA7CiB9CmRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BjaS9jeDg4L2N4ODgtYWxzYS5jIGIvZHJpdmVycy9tZWRp
YS9wY2kvY3g4OC9jeDg4LWFsc2EuYwppbmRleCA3ZDdhY2VlLi4zYzZmZTZjIDEwMDY0NAotLS0g
YS9kcml2ZXJzL21lZGlhL3BjaS9jeDg4L2N4ODgtYWxzYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEv
cGNpL2N4ODgvY3g4OC1hbHNhLmMKQEAgLTMzMiw3ICszMzIsNyBAQCBzdGF0aWMgaW50IGN4ODhf
YWxzYV9kbWFfdW5tYXAoc3RydWN0IGN4ODhfYXVkaW9fZGV2ICpkZXYpCiAJaWYgKCFidWYtPnNn
bGVuKQogCQlyZXR1cm4gMDsKIAotCWRtYV91bm1hcF9zZygmZGV2LT5wY2ktPmRldiwgYnVmLT5z
Z2xpc3QsIGJ1Zi0+c2dsZW4sCisJZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBidWYtPnNn
bGlzdCwgYnVmLT5ucl9wYWdlcywKIAkJICAgICBQQ0lfRE1BX0ZST01ERVZJQ0UpOwogCWJ1Zi0+
c2dsZW4gPSAwOwogCXJldHVybiAwOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wY2kvc2Fh
NzEzNC9zYWE3MTM0LWFsc2EuYyBiL2RyaXZlcnMvbWVkaWEvcGNpL3NhYTcxMzQvc2FhNzEzNC1h
bHNhLmMKaW5kZXggNTQ0Y2E1Ny4uMzk4YzQ3ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9w
Y2kvc2FhNzEzNC9zYWE3MTM0LWFsc2EuYworKysgYi9kcml2ZXJzL21lZGlhL3BjaS9zYWE3MTM0
L3NhYTcxMzQtYWxzYS5jCkBAIC0zMTMsNyArMzEzLDcgQEAgc3RhdGljIGludCBzYWE3MTM0X2Fs
c2FfZG1hX3VubWFwKHN0cnVjdCBzYWE3MTM0X2RldiAqZGV2KQogCWlmICghZG1hLT5zZ2xlbikK
IAkJcmV0dXJuIDA7CiAKLQlkbWFfdW5tYXBfc2coJmRldi0+cGNpLT5kZXYsIGRtYS0+c2dsaXN0
LCBkbWEtPnNnbGVuLCBQQ0lfRE1BX0ZST01ERVZJQ0UpOworCWRtYV91bm1hcF9zZygmZGV2LT5w
Y2ktPmRldiwgZG1hLT5zZ2xpc3QsIGRtYS0+bnJfcGFnZXMsIFBDSV9ETUFfRlJPTURFVklDRSk7
CiAJZG1hLT5zZ2xlbiA9IDA7CiAJcmV0dXJuIDA7CiB9Ci0tIAoxLjkuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
