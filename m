Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 677661C5190
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:06:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B6EF66078
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 09:06:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7C6A966079; Tue,  5 May 2020 09:06:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36BA866588;
	Tue,  5 May 2020 08:48:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A717A66079
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:47:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 92D4A66514; Tue,  5 May 2020 08:47:34 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 86F4166079
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:40 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084639euoutp024d98812502c0d30ba3c021a02b5a15ed~MFX4Mfie72627826278euoutp020
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084639euoutp024d98812502c0d30ba3c021a02b5a15ed~MFX4Mfie72627826278euoutp020
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084639eucas1p173a8284f2be074a153c2404e7f655dbd~MFX33JwHZ2423024230eucas1p1K;
 Tue,  5 May 2020 08:46:39 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 27.11.60698.FE721BE5; Tue,  5
 May 2020 09:46:39 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084638eucas1p2d4add214063543248d81c0977e3f1823~MFX3e70vA0589305893eucas1p2K;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084638eusmtrp100d54f7ca6d5967537629b8f97c7a226~MFX3eOdJ50942509425eusmtrp1e;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-57-5eb127ef2573
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F3.31.07950.EE721BE5; Tue,  5
 May 2020 09:46:38 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084638eusmtip135ec21b69c87a6f86b3072ab66aaeb78~MFX27jDnJ0686606866eusmtip1P;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:14 +0200
Message-Id: <20200505084614.30424-25-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRju27nsODY5TcEPC42BiV10YuQhSwqMDkSQ/ekiLaceVHJTdtTS
 kCxZ5LxkWnlJxMQ0ndfNSyheNvKWubyhRoqa/khLlOY0RbTNo/bveZ/3ed7n4eMjELEBcyYi
 lbGMSimPkuACtKl7w3R62b1eJh3+bU9lmPp4VH1eLUbtNL1EqFHLMk5VaLt41FD+FEoVd/hR
 q6OzPEo3N4ZRIy2FOJVe14hR1Z+m+FSZbotHGVbmsYv2dFVRFaDb1opRWleZitPNazMYPZ3W
 w6P1pY/p79tzCJ0zUQ7o1m/JOJ3ZUAlos86F/mwx868L7wjOhzFRkfGMyss/WBAxMG5CY8ad
 Hhb3qdFk0OGoAXYEJM/AhYplXAMEhJj8AOCv6SaEG1YBLB1o4XGDGcAn71Z4+5afmWOAW5QD
 uP6mDT+wzPa2YjYVTnpDzZIGt2FHUg1gb4bQJkLITATqM/OAbeFABsLuxfbdsyjpBi2vu1Eb
 FpH+cOvPGsLFuUJtXecutrPyc8OTu2mQHObD5IwZnBMFwNEN857BAS72NPA5fBT256SjnCHF
 Ws9UzeeGdABHnnI1IOkHJ02b1kuEtZ8HrG3x4uhLcLC7j2+jIWkPJ5YO22jECrObchGOFsHn
 z8Sc+jgs6Kk5iDUMDu9JaKhuceUeqAtAfaMOzQKuBf+zigGoBE5MHKsIZ1gfJfPAk5Ur2Dhl
 uGdotEIHrB+rf7vH8hG0b4UYAUkAiVB0y1wrE2PyeDZBYQSQQCSOorK/dTKxKEyekMioou+p
 4qIY1giOEKjESeRTsnBXTIbLY5n7DBPDqPa3PMLOORmkCGtuT92kjilrcoKMuOmKzzVPbLXh
 kCLplODVSkCrtNV9KWvW14EudJsLufHoi/QHcdZuJzyNFKpj00yBlhfaXEN2c2LGquFykTa6
 flCqye+sKFyfz52v0yddOCfzGJK+vZpSEvy+Pn3B/NV3M5RNHRHKnF2IzeD45bCgk0YJykbI
 vU8gKlb+DzuMqDFUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7rv1DfGGdy6ZGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllcnHmXxWLBfmuLL1ceMllsenyN1eLyrjlsFj0btrJarD1yl91i
 2aY/TBYHPzxhdeDzWDNvDaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k5zHqa+f2QN4ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyzl4/x1JwXbxiwclWlgbG/SJdjJwcEgImEi/6rjGC2EICSxkl
 5jRXQ8RlJE5Oa2CFsIUl/lzrYuti5AKq+cQocab/DQtIgk3AUKLrLURCRKCTUWJa90d2EIdZ
 YBqzxMLG50AZDg5hAX+JrjtuIA0sAqoSX6ceA2vmFbCT+PPpGzPEBnmJ1RsOgNmcQPHHl+6w
 QVxUKPHh/HfWCYx8CxgZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgRGz7ZjP7fsYOx6F3yI
 UYCDUYmHd8PX9XFCrIllxZW5hxglOJiVRHiX/dgQJ8SbklhZlVqUH19UmpNafIjRFOioicxS
 osn5wMjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXA6N0Yt7zI
 OdP+vit/V94TgaYHBw/y8z1MeNvfLKL97+ZM/VpH2/Kb4fMi33H3Pvpw6fU1E2lvQ743ryd9
 4HhyXLW60anTeX3X4ewMBXHpqcafGY3SLLm3hO+5ImIg0/vbdyGrG5NK3rUehcRJbx4xGWcZ
 CK6enSEjFDvlrwAnm7Tzup2MV6cosRRnJBpqMRcVJwIAa5fl0bQCAAA=
X-CMS-MailID: 20200505084638eucas1p2d4add214063543248d81c0977e3f1823
X-Msg-Generator: CA
X-RootMTR: 20200505084638eucas1p2d4add214063543248d81c0977e3f1823
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084638eucas1p2d4add214063543248d81c0977e3f1823
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084638eucas1p2d4add214063543248d81c0977e3f1823@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 25/25] media: pci: fix common ALSA
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
J1tQQVRDSCB2MyAwMC8yNV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzUvMTg3
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
