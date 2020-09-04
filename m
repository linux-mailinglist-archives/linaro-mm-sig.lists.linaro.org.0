Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A4225DAD7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 16:02:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE37E6660D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 14:02:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BD82F66781; Fri,  4 Sep 2020 14:02:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 760A46679C;
	Fri,  4 Sep 2020 13:38:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D7F1160DC1
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C518266750; Fri,  4 Sep 2020 13:36:31 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 2F97D60EFF
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:13 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133512euoutp022f11e822b15a7d2f814295310dd1c17d~xmAo_Jy5z2890128901euoutp022
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133512euoutp022f11e822b15a7d2f814295310dd1c17d~xmAo_Jy5z2890128901euoutp022
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133511eucas1p2d486263c794f51fdb8ea88600fe1e5fd~xmAoilL9n0781807818eucas1p2F;
 Fri,  4 Sep 2020 13:35:11 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 1D.11.06456.F82425F5; Fri,  4
 Sep 2020 14:35:11 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133511eucas1p2359dd080181340eb4f24b325e75a4c68~xmAoO9OKM0143201432eucas1p2w;
 Fri,  4 Sep 2020 13:35:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200904133511eusmtrp1fbe17ff149b4a75ba401f69bbb75685f~xmAoN7VnX0766507665eusmtrp1T;
 Fri,  4 Sep 2020 13:35:11 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-67-5f52428f70ed
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id FE.BE.06314.F82425F5; Fri,  4
 Sep 2020 14:35:11 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133511eusmtip1461f7ad71c971aeb5f97e8bdefea381d~xmAnrZiyY2113121131eusmtip1w;
 Fri,  4 Sep 2020 13:35:11 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:17:10 +0200
Message-Id: <20200904131711.12950-30-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0gUURTGvfPYHVcnplXwpqmwoFGUuvRgSjETsYmEwighMF1zUMsXu65l
 Qi4+y1eZVGKhUpqt63N9pmRq6mZLYmqmlemmWRlm+MIeWjuO1n+/853v3O/cyyVQcQNuTYRF
 xrDySFm4RCDCGrp/9O665ukb4KJvpems3h6Ersmrwuk/DTkoPbg4K6DVmi6ELnriSi8MGhBa
 OzGE0wPNdwV0ZnU9Tld0jgrpB9rfCN3+fRL3IJnygnLAPF4qwhht2VUB07g0jjNjGTqEqS1O
 YN6uTqBM7nApYFpGVAImu64MMPNau+Nmp0VuwWx4WCwrd3YPFIV+TCvBo79KLg5NJyMqYLBN
 B6YEpPbAT7e0GMdi6iGAGh3J8wKAPfp96UBk5HkAq/MMYGNgfKwP5RulAFa+HxbwhXFitlAl
 5FwCSgrTZ9IFHFtSKQA+yzLnTCg1gcCiqqG1hgXlC8f6tGuMUQ4waTkD55ik3OEHdT3Cx9lD
 TXUbyrGpUa/Pm8S5gyDVIYRVv5Ix3uQFNfeH1tkCTuvqhDxvhfrcTIwfSALQ0Fsh5ItMAAcS
 89Zv5Arf9f40rkEY99sOq5qdefkQbDNwWxBG3gSHZzZzMmrEGw23UV4m4ZVUMe92hPm6yn+x
 7X39KM8MnEtMAfwL5QCorx1GrwP7/P9hRQCUAStWqYgIYRXSSPaCk0IWoVBGhjidjYrQAuNv
 0q/q5prAYn9QB6AIIDEnTQ76BohxWawiLqIDQAKVWJKeL/RnxGSwLO4SK48KkCvDWUUHsCEw
 iRW5+94XfzEVIothz7NsNCvf6CKEqbUKeMeXPH20N/ROss9imnqWbBW6Kw+nnRJKo7xefpuC
 fs6tbiMnVMjJpuX9r/2njtYjIrOszphtVE3j85WdxVM33wTK7AZ8tHEFn3sqR+Mxl65zJTZ+
 6mMO/oza+7LHK+WBINsjji1xQr8FaFIHUgtV2SM+WxLKkkykYegK0R3rKMEUoTLpDlSukP0F
 K0nh7UkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xu7r9TkHxBm3z1Sx6z51kstg4Yz2r
 xf9tE5ktrnx9z2axcvVRJosF+60tvlx5yGSx6fE1VovLu+awWfRs2MpqsfbIXXaLZZv+MFkc
 /PCE1YHXY828NYwee78tYPHYtKqTzWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObR
 t2UVo8fnTXIB3FF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZll
 qUX6dgl6GU/bl7IWvFaquPaqhamB8aFsFyMnh4SAicSD+xeYuxi5OIQEljJKfLoxkREiISNx
 cloDK4QtLPHnWhcbRNEnRolJ33vAEmwChhJdbyESIgKdjBLTuj+ygzjMAq+ZJFp3rWEDqRIW
 CJDoP72CBcRmEVCVaP7RDdbNK2An8WjlViaIFfISqzccYAaxOYHiW2c8AasRErCV+DBnMcsE
 Rr4FjAyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAqNl27Gfm3cwXtoYfIhRgINRiYeXwT4o
 Xog1say4MvcQowQHs5IIr9PZ03FCvCmJlVWpRfnxRaU5qcWHGE2BjprILCWanA+M5LySeENT
 Q3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYxNJ32f+OflBO5yNA77EG2U
 N63XytFiBtcn7sqs3e9idBgY3M9Lv7/j0FKUXu987phmvmcm0/1ZCdzzfnAnnpl4+JN6erKI
 8Y33vjVZOb9zXR/6uUw/WVC2+aqjlYKMv+SyNdl2R3NEfn5O6T+3g1s9vfuh2YvpC7f+DNk4
 r/gyz/5XYky/GpRYijMSDbWYi4oTAeT7s9WsAgAA
X-CMS-MailID: 20200904133511eucas1p2359dd080181340eb4f24b325e75a4c68
X-Msg-Generator: CA
X-RootMTR: 20200904133511eucas1p2359dd080181340eb4f24b325e75a4c68
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133511eucas1p2359dd080181340eb4f24b325e75a4c68
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133511eucas1p2359dd080181340eb4f24b325e75a4c68@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 29/30] media: pci: fix common ALSA
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
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KCldoaWxlIHRvdWNoaW5nIHRoaXMgY29kZSwgdXBkYXRl
IGl0IHRvIHVzZSB0aGUgbW9kZXJuIERNQV9GUk9NX0RFVklDRQpkZWZpbml0aW9ucy4KClNpZ25l
ZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0t
CiBkcml2ZXJzL21lZGlhL3BjaS9jeDIzODg1L2N4MjM4ODUtYWxzYS5jIHwgNCArKy0tCiBkcml2
ZXJzL21lZGlhL3BjaS9jeDI1ODIxL2N4MjU4MjEtYWxzYS5jIHwgNCArKy0tCiBkcml2ZXJzL21l
ZGlhL3BjaS9jeDg4L2N4ODgtYWxzYS5jICAgICAgIHwgNiArKystLS0KIGRyaXZlcnMvbWVkaWEv
cGNpL3NhYTcxMzQvc2FhNzEzNC1hbHNhLmMgfCA0ICsrLS0KIDQgZmlsZXMgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cGNpL2N4MjM4ODUvY3gyMzg4NS1hbHNhLmMgYi9kcml2ZXJzL21lZGlhL3BjaS9jeDIzODg1L2N4
MjM4ODUtYWxzYS5jCmluZGV4IGRmNDRlZDczOTNhMC4uYzc5N2JmZjZlZWJiIDEwMDY0NAotLS0g
YS9kcml2ZXJzL21lZGlhL3BjaS9jeDIzODg1L2N4MjM4ODUtYWxzYS5jCisrKyBiL2RyaXZlcnMv
bWVkaWEvcGNpL2N4MjM4ODUvY3gyMzg4NS1hbHNhLmMKQEAgLTExMyw3ICsxMTMsNyBAQCBzdGF0
aWMgaW50IGN4MjM4ODVfYWxzYV9kbWFfbWFwKHN0cnVjdCBjeDIzODg1X2F1ZGlvX2RldiAqZGV2
KQogCXN0cnVjdCBjeDIzODg1X2F1ZGlvX2J1ZmZlciAqYnVmID0gZGV2LT5idWY7CiAKIAlidWYt
PnNnbGVuID0gZG1hX21hcF9zZygmZGV2LT5wY2ktPmRldiwgYnVmLT5zZ2xpc3QsCi0JCQlidWYt
Pm5yX3BhZ2VzLCBQQ0lfRE1BX0ZST01ERVZJQ0UpOworCQkJYnVmLT5ucl9wYWdlcywgRE1BX0ZS
T01fREVWSUNFKTsKIAogCWlmICgwID09IGJ1Zi0+c2dsZW4pIHsKIAkJcHJfd2FybigiJXM6IGN4
MjM4ODVfYWxzYV9tYXBfc2cgZmFpbGVkXG4iLCBfX2Z1bmNfXyk7CkBAIC0xMjksNyArMTI5LDcg
QEAgc3RhdGljIGludCBjeDIzODg1X2Fsc2FfZG1hX3VubWFwKHN0cnVjdCBjeDIzODg1X2F1ZGlv
X2RldiAqZGV2KQogCWlmICghYnVmLT5zZ2xlbikKIAkJcmV0dXJuIDA7CiAKLQlkbWFfdW5tYXBf
c2coJmRldi0+cGNpLT5kZXYsIGJ1Zi0+c2dsaXN0LCBidWYtPnNnbGVuLCBQQ0lfRE1BX0ZST01E
RVZJQ0UpOworCWRtYV91bm1hcF9zZygmZGV2LT5wY2ktPmRldiwgYnVmLT5zZ2xpc3QsIGJ1Zi0+
bnJfcGFnZXMsIERNQV9GUk9NX0RFVklDRSk7CiAJYnVmLT5zZ2xlbiA9IDA7CiAJcmV0dXJuIDA7
CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BjaS9jeDI1ODIxL2N4MjU4MjEtYWxzYS5j
IGIvZHJpdmVycy9tZWRpYS9wY2kvY3gyNTgyMS9jeDI1ODIxLWFsc2EuYwppbmRleCAzMDE2MTY0
MjZkOGEuLjhkYTMxYzk1M2IwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wY2kvY3gyNTgy
MS9jeDI1ODIxLWFsc2EuYworKysgYi9kcml2ZXJzL21lZGlhL3BjaS9jeDI1ODIxL2N4MjU4MjEt
YWxzYS5jCkBAIC0xNzcsNyArMTc3LDcgQEAgc3RhdGljIGludCBjeDI1ODIxX2Fsc2FfZG1hX21h
cChzdHJ1Y3QgY3gyNTgyMV9hdWRpb19kZXYgKmRldikKIAlzdHJ1Y3QgY3gyNTgyMV9hdWRpb19i
dWZmZXIgKmJ1ZiA9IGRldi0+YnVmOwogCiAJYnVmLT5zZ2xlbiA9IGRtYV9tYXBfc2coJmRldi0+
cGNpLT5kZXYsIGJ1Zi0+c2dsaXN0LAotCQkJYnVmLT5ucl9wYWdlcywgUENJX0RNQV9GUk9NREVW
SUNFKTsKKwkJCWJ1Zi0+bnJfcGFnZXMsIERNQV9GUk9NX0RFVklDRSk7CiAKIAlpZiAoMCA9PSBi
dWYtPnNnbGVuKSB7CiAJCXByX3dhcm4oIiVzOiBjeDI1ODIxX2Fsc2FfbWFwX3NnIGZhaWxlZFxu
IiwgX19mdW5jX18pOwpAQCAtMTkzLDcgKzE5Myw3IEBAIHN0YXRpYyBpbnQgY3gyNTgyMV9hbHNh
X2RtYV91bm1hcChzdHJ1Y3QgY3gyNTgyMV9hdWRpb19kZXYgKmRldikKIAlpZiAoIWJ1Zi0+c2ds
ZW4pCiAJCXJldHVybiAwOwogCi0JZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBidWYtPnNn
bGlzdCwgYnVmLT5zZ2xlbiwgUENJX0RNQV9GUk9NREVWSUNFKTsKKwlkbWFfdW5tYXBfc2coJmRl
di0+cGNpLT5kZXYsIGJ1Zi0+c2dsaXN0LCBidWYtPm5yX3BhZ2VzLCBETUFfRlJPTV9ERVZJQ0Up
OwogCWJ1Zi0+c2dsZW4gPSAwOwogCXJldHVybiAwOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wY2kvY3g4OC9jeDg4LWFsc2EuYyBiL2RyaXZlcnMvbWVkaWEvcGNpL2N4ODgvY3g4OC1h
bHNhLmMKaW5kZXggN2Q3YWNlZWNjOTg1Li5kMzg2MzNiYzEzMzAgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbWVkaWEvcGNpL2N4ODgvY3g4OC1hbHNhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wY2kvY3g4
OC9jeDg4LWFsc2EuYwpAQCAtMzE2LDcgKzMxNiw3IEBAIHN0YXRpYyBpbnQgY3g4OF9hbHNhX2Rt
YV9tYXAoc3RydWN0IGN4ODhfYXVkaW9fZGV2ICpkZXYpCiAJc3RydWN0IGN4ODhfYXVkaW9fYnVm
ZmVyICpidWYgPSBkZXYtPmJ1ZjsKIAogCWJ1Zi0+c2dsZW4gPSBkbWFfbWFwX3NnKCZkZXYtPnBj
aS0+ZGV2LCBidWYtPnNnbGlzdCwKLQkJCWJ1Zi0+bnJfcGFnZXMsIFBDSV9ETUFfRlJPTURFVklD
RSk7CisJCQlidWYtPm5yX3BhZ2VzLCBETUFfRlJPTV9ERVZJQ0UpOwogCiAJaWYgKGJ1Zi0+c2ds
ZW4gPT0gMCkgewogCQlwcl93YXJuKCIlczogY3g4OF9hbHNhX21hcF9zZyBmYWlsZWRcbiIsIF9f
ZnVuY19fKTsKQEAgLTMzMiw4ICszMzIsOCBAQCBzdGF0aWMgaW50IGN4ODhfYWxzYV9kbWFfdW5t
YXAoc3RydWN0IGN4ODhfYXVkaW9fZGV2ICpkZXYpCiAJaWYgKCFidWYtPnNnbGVuKQogCQlyZXR1
cm4gMDsKIAotCWRtYV91bm1hcF9zZygmZGV2LT5wY2ktPmRldiwgYnVmLT5zZ2xpc3QsIGJ1Zi0+
c2dsZW4sCi0JCSAgICAgUENJX0RNQV9GUk9NREVWSUNFKTsKKwlkbWFfdW5tYXBfc2coJmRldi0+
cGNpLT5kZXYsIGJ1Zi0+c2dsaXN0LCBidWYtPm5yX3BhZ2VzLAorCQkgICAgIERNQV9GUk9NX0RF
VklDRSk7CiAJYnVmLT5zZ2xlbiA9IDA7CiAJcmV0dXJuIDA7CiB9CmRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BjaS9zYWE3MTM0L3NhYTcxMzQtYWxzYS5jIGIvZHJpdmVycy9tZWRpYS9wY2kv
c2FhNzEzNC9zYWE3MTM0LWFsc2EuYwppbmRleCA1NDRjYTU3ZWVlNzUuLjcwN2NhNzcyMjFkYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wY2kvc2FhNzEzNC9zYWE3MTM0LWFsc2EuYworKysg
Yi9kcml2ZXJzL21lZGlhL3BjaS9zYWE3MTM0L3NhYTcxMzQtYWxzYS5jCkBAIC0yOTcsNyArMjk3
LDcgQEAgc3RhdGljIGludCBzYWE3MTM0X2Fsc2FfZG1hX21hcChzdHJ1Y3Qgc2FhNzEzNF9kZXYg
KmRldikKIAlzdHJ1Y3Qgc2FhNzEzNF9kbWFzb3VuZCAqZG1hID0gJmRldi0+ZG1hc291bmQ7CiAK
IAlkbWEtPnNnbGVuID0gZG1hX21hcF9zZygmZGV2LT5wY2ktPmRldiwgZG1hLT5zZ2xpc3QsCi0J
CQlkbWEtPm5yX3BhZ2VzLCBQQ0lfRE1BX0ZST01ERVZJQ0UpOworCQkJZG1hLT5ucl9wYWdlcywg
RE1BX0ZST01fREVWSUNFKTsKIAogCWlmICgwID09IGRtYS0+c2dsZW4pIHsKIAkJcHJfd2Fybigi
JXM6IHNhYTcxMzRfYWxzYV9tYXBfc2cgZmFpbGVkXG4iLCBfX2Z1bmNfXyk7CkBAIC0zMTMsNyAr
MzEzLDcgQEAgc3RhdGljIGludCBzYWE3MTM0X2Fsc2FfZG1hX3VubWFwKHN0cnVjdCBzYWE3MTM0
X2RldiAqZGV2KQogCWlmICghZG1hLT5zZ2xlbikKIAkJcmV0dXJuIDA7CiAKLQlkbWFfdW5tYXBf
c2coJmRldi0+cGNpLT5kZXYsIGRtYS0+c2dsaXN0LCBkbWEtPnNnbGVuLCBQQ0lfRE1BX0ZST01E
RVZJQ0UpOworCWRtYV91bm1hcF9zZygmZGV2LT5wY2ktPmRldiwgZG1hLT5zZ2xpc3QsIGRtYS0+
bnJfcGFnZXMsIERNQV9GUk9NX0RFVklDRSk7CiAJZG1hLT5zZ2xlbiA9IDA7CiAJcmV0dXJuIDA7
CiB9Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
