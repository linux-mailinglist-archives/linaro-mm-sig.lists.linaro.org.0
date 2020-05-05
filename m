Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7621C517A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:02:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BF8A66078
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 09:02:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6D24866079; Tue,  5 May 2020 09:02:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E8176654F;
	Tue,  5 May 2020 08:48:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7270961999
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 600A366078; Tue,  5 May 2020 08:46:50 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 224B561999
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:35 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084634euoutp0146819e9e140c39eb16cc6eecabce2f1d~MFXzQpLNQ0378903789euoutp01M
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084634euoutp0146819e9e140c39eb16cc6eecabce2f1d~MFXzQpLNQ0378903789euoutp01M
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084634eucas1p130922399efe589caaf1389d9ebaa05f6~MFXy7krN32432424324eucas1p1C;
 Tue,  5 May 2020 08:46:34 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 37.CF.61286.9E721BE5; Tue,  5
 May 2020 09:46:33 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084633eucas1p19798e1fb42c9430a93d668bc585e58da~MFXyp7kGd2423624236eucas1p17;
 Tue,  5 May 2020 08:46:33 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084633eusmtrp1fd8b72215c31bd7374169b1f06dbb9cd~MFXypSze20942509425eusmtrp1N;
 Tue,  5 May 2020 08:46:33 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-af-5eb127e99851
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 7C.14.08375.9E721BE5; Tue,  5
 May 2020 09:46:33 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084633eusmtip14f22af47e0947852337ec2e00ed99015~MFXyHKj0e0580805808eusmtip1_;
 Tue,  5 May 2020 08:46:33 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:06 +0200
Message-Id: <20200505084614.30424-17-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTURT1zXSmA1IcCwkv1UhsgiCyiPoxESGa+DFGPxSNAROKVUYglCUd
 dk0AAbVsUYmIDRIimwK1bEEosgpUIVRZBQEFERENiAJFMKItA/h37lneubl5BCqswUREQHAY
 Iw+WysS4Ka+6ffm147RtuWR/j/4wlaZ7hVDlWWqM+lt9B6X6Fr/j1JOSNoTKbXSlFvrGEapi
 YgCjejXZOKVYUOKUqnWUTzXPfcKoZU0O76iALs0pBXS9PpdH1ypH+fQz/RhGf0jRInRlfiw9
 vDqB0hmDRYCuG4rD6fSqYkDPV+w6vfWC6RFfRhYQwcid3S+a+g+3tyGhCzBqrLALxIE/FsnA
 hIDkIVg3O4smA1NCSD4G8EtlG+CGBQAzdQPryjyAS1MNvI3IePoAnxOKAExQF2Cbkdr2e4jR
 hZMuMHkmGTdiSzIJwJdpZkYTSn5EoOJtN2oULEgP2J+iAEbMI21gV8f7tQoB6Q7r8pYAV2cN
 S8qa1vwmBn6iZwQ3PgTJdj6cm5xAOdNxOPQwEeewBfyqreJzeCfszEjlcYEEAMd1Kj43pALY
 ez1rvcIVjuhWDGnCsN9eqNY4c/QxONLfgBlpSJrDwZntRho1wLvV91GOFsBbN4Scew9Uap9u
 1ja/6VlfjYa9tZr1O7YB+CC+AL8NrJX/y3IBKAZWTDgb5MewLsFMpBMrDWLDg/2cLocEVQDD
 f+pc1f6sAYs9l1oASQCxmcBzXi0RYtIINjqoBUACFVsKCn+VSYQCX2l0DCMP8ZGHyxi2Bewg
 eGIrwcFH095C0k8axgQyTCgj31ARwkQUB2S6XK+aH/FxU6KMQK1vgL9y8UxC47bQd2d1pzwk
 w6524FyM14qs1c08zWJyPFL1wtZuX1ModqV5xpHVnyw/oYrtnq2fta/JTlLXbtn9/LeXZ4fN
 zXy1wuc84lD47VrOyNJVV1FXHpF4QJ6gybTzTonSd4kwYk7x2c2hT5jmLBfzWH+piz0qZ6X/
 ALsGINZLAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7ov1TfGGWxYr2nRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaLzyyw2i7VH7rJbHPzwhNXi
 5655LA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl3H72FGmgi8SFQ+WnWVsYPwr3MXIySEhYCLxsO8aO4gtJLCUUeJCRzFEXEbi5LQG
 VghbWOLPtS62LkYuoJpPjBJXOz4zgyTYBAwlut5CJEQEOhklpnV/ZAdxmAVeMUl8+NPKCFIl
 LBAg0dR2BmwFi4CqxNlT91hAbF4BO4ndi78zQqyQl1i94QDYVE6g+ONLd9ggTiqU+HD+O+sE
 Rr4FjAyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAmNl27Gfm3cwXtoYfIhRgINRiYc34vP6
 OCHWxLLiytxDjBIczEoivMt+bIgT4k1JrKxKLcqPLyrNSS0+xGgKdNREZinR5HxgHOeVxBua
 GppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamCcqvhwo3506RkZraqqmA/z
 XQP8KsMdT+XOqyi4cM3g/qGT6zVtOjXU3IpD75yJrkrMEyjJFtT8K3IpdNKWP2yv3wamB0wv
 mHLK8IouQ7Cdx6qYeyEFXU4LLBsPBj1klFgfMd0x7FDNwgqnCR+eRF+OvnRXKN1AX17LdaeB
 31aZs8+vMK1x91JiKc5INNRiLipOBADU/IzZqwIAAA==
X-CMS-MailID: 20200505084633eucas1p19798e1fb42c9430a93d668bc585e58da
X-Msg-Generator: CA
X-RootMTR: 20200505084633eucas1p19798e1fb42c9430a93d668bc585e58da
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084633eucas1p19798e1fb42c9430a93d668bc585e58da
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084633eucas1p19798e1fb42c9430a93d668bc585e58da@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 17/25] drm: host1x: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2hvc3QxeC9qb2Iu
YyB8IDIyICsrKysrKysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2hvc3QxeC9q
b2IuYyBiL2RyaXZlcnMvZ3B1L2hvc3QxeC9qb2IuYwppbmRleCBhMTA2NDNhLi44NTAxMTVlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMKKysrIGIvZHJpdmVycy9ncHUvaG9z
dDF4L2pvYi5jCkBAIC0xNjYsMTEgKzE2Niw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pv
YihzdHJ1Y3QgaG9zdDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQkJCWdvdG8g
dW5waW47CiAJCQl9CiAKLQkJCWVyciA9IGRtYV9tYXBfc2coZGV2LCBzZ3QtPnNnbCwgc2d0LT5u
ZW50cywgZGlyKTsKLQkJCWlmICghZXJyKSB7Ci0JCQkJZXJyID0gLUVOT01FTTsKKwkJCWVyciA9
IGRtYV9tYXBfc2d0YWJsZShkZXYsIHNndCwgZGlyKTsKKwkJCWlmIChlcnIpCiAJCQkJZ290byB1
bnBpbjsKLQkJCX0KIAogCQkJam9iLT51bnBpbnNbam9iLT5udW1fdW5waW5zXS5kZXYgPSBkZXY7
CiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRpciA9IGRpcjsKQEAgLTIxNyw3ICsy
MTUsNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAqaG9zdCwg
c3RydWN0IGhvc3QxeF9qb2IgKmpvYikKIAkJfQogCiAJCWlmICghSVNfRU5BQkxFRChDT05GSUdf
VEVHUkFfSE9TVDFYX0ZJUkVXQUxMKSAmJiBob3N0LT5kb21haW4pIHsKLQkJCWZvcl9lYWNoX3Nn
KHNndC0+c2dsLCBzZywgc2d0LT5uZW50cywgaikKKwkJCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBz
Zywgc2d0LT5vcmlnX25lbnRzLCBqKQogCQkJCWdhdGhlcl9zaXplICs9IHNnLT5sZW5ndGg7CiAJ
CQlnYXRoZXJfc2l6ZSA9IGlvdmFfYWxpZ24oJmhvc3QtPmlvdmEsIGdhdGhlcl9zaXplKTsKIApA
QCAtMjI5LDkgKzIyNyw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3QgaG9z
dDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQkJCWdvdG8gdW5waW47CiAJCQl9
CiAKLQkJCWVyciA9IGlvbW11X21hcF9zZyhob3N0LT5kb21haW4sCisJCQllcnIgPSBpb21tdV9t
YXBfc2d0YWJsZShob3N0LT5kb21haW4sCiAJCQkJCWlvdmFfZG1hX2FkZHIoJmhvc3QtPmlvdmEs
IGFsbG9jKSwKLQkJCQkJc2d0LT5zZ2wsIHNndC0+bmVudHMsIElPTU1VX1JFQUQpOworCQkJCQlz
Z3QsIElPTU1VX1JFQUQpOwogCQkJaWYgKGVyciA9PSAwKSB7CiAJCQkJX19mcmVlX2lvdmEoJmhv
c3QtPmlvdmEsIGFsbG9jKTsKIAkJCQllcnIgPSAtRUlOVkFMOwpAQCAtMjQxLDEyICsyMzksOSBA
QCBzdGF0aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAqaG9zdCwgc3RydWN0
IGhvc3QxeF9qb2IgKmpvYikKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10uc2l6ZSA9
IGdhdGhlcl9zaXplOwogCQkJcGh5c19hZGRyID0gaW92YV9kbWFfYWRkcigmaG9zdC0+aW92YSwg
YWxsb2MpOwogCQl9IGVsc2UgaWYgKHNndCkgewotCQkJZXJyID0gZG1hX21hcF9zZyhob3N0LT5k
ZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCQkgRE1BX1RPX0RFVklDRSk7Ci0JCQlpZiAo
IWVycikgewotCQkJCWVyciA9IC1FTk9NRU07CisJCQllcnIgPSBkbWFfbWFwX3NndGFibGUoaG9z
dC0+ZGV2LCBzZ3QsIERNQV9UT19ERVZJQ0UpOworCQkJaWYgKGVycikKIAkJCQlnb3RvIHVucGlu
OwotCQkJfQogCiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRpciA9IERNQV9UT19E
RVZJQ0U7CiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRldiA9IGhvc3QtPmRldjsK
QEAgLTY0Nyw4ICs2NDIsNyBAQCB2b2lkIGhvc3QxeF9qb2JfdW5waW4oc3RydWN0IGhvc3QxeF9q
b2IgKmpvYikKIAkJfQogCiAJCWlmICh1bnBpbi0+ZGV2ICYmIHNndCkKLQkJCWRtYV91bm1hcF9z
Zyh1bnBpbi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywKLQkJCQkgICAgIHVucGluLT5kaXIp
OworCQkJZG1hX3VubWFwX3NndGFibGUodW5waW4tPmRldiwgc2d0LCB1bnBpbi0+ZGlyKTsKIAog
CQlob3N0MXhfYm9fdW5waW4oZGV2LCB1bnBpbi0+Ym8sIHNndCk7CiAJCWhvc3QxeF9ib19wdXQo
dW5waW4tPmJvKTsKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
