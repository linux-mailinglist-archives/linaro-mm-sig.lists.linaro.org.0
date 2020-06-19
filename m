Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5F0200714
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:44:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8E2C665EE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:44:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DAD1F665F2; Fri, 19 Jun 2020 10:44:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE682665F3;
	Fri, 19 Jun 2020 10:37:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AFCEB665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9120C665BB; Fri, 19 Jun 2020 10:37:05 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 43E30665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:59 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103658euoutp028a43bfc969ced6f4ceab3d2a4a5e5364~Z66Cohe7U2242222422euoutp02N
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103658euoutp028a43bfc969ced6f4ceab3d2a4a5e5364~Z66Cohe7U2242222422euoutp02N
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103658eucas1p2c25ebe9fc54f28de78255c4aa730e8ed~Z66CU9dYF1674516745eucas1p2C;
 Fri, 19 Jun 2020 10:36:58 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EA.9C.06456.A459CEE5; Fri, 19
 Jun 2020 11:36:58 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103657eucas1p24bff92408adbd4715130fb47595a6187~Z66B_hWgs2889328893eucas1p2o;
 Fri, 19 Jun 2020 10:36:57 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103657eusmtrp12aaf4794c95a66b625cfb42468c75e8d~Z66B9zOeQ0949709497eusmtrp1-;
 Fri, 19 Jun 2020 10:36:57 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-3e-5eec954a539f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 33.0B.06017.9459CEE5; Fri, 19
 Jun 2020 11:36:57 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103657eusmtip2ee81fdaa7e0013e93ca04a158343c4f7~Z66BPbOcj0244902449eusmtip2l;
 Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:07 +0200
Message-Id: <20200619103636.11974-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djPc7peU9/EGRy9yGbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCuKyyYlNSezLLVI3y6BK+Pqwr8sBYe5K9a+PMTYwHiAs4uRg0NCwERi/RLz
 LkYuDiGBFYwSU69tZYRwvjBKfGzbygbhfGaUWHdoO3MXIydYR/uTlcwQieWMEr/2fWaBa1l/
 /xUrSBWbgKFE19suNhBbRKCVUeJELw9IEbNAB7PEtYnzGUESwgKxEnfnfGcHOYRFQFXi4gYZ
 kDCvgK3EoSd/2SC2yUus3nAAbDOngJ3E65aDrCBzJASOsUusXAcxR0LAReLS70/sELawxKvj
 W6BsGYnTk3tYIBqaGSUenlvLDuH0MEpcbpoB1W0tcefcLzaQK5gFNCXW79KHCDtK3Ph3ixES
 SnwSN94KgoSZgcxJ26YzQ4R5JTrahCCq1SRmHV8Ht/bghUvQ0PKQOHNvDjSAJjJK9LcvYZnA
 KD8LYdkCRsZVjOKppcW56anFhnmp5XrFibnFpXnpesn5uZsYganp9L/jn3Ywfr2UdIhRgINR
 iYfXIfx1nBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMUpzsCiJ8xovehkr
 JJCeWJKanZpakFoEk2Xi4JRqYFQrqesUd77EsUeZuTK99unWH3J79T+YmwcJai1tcUgyuMl2
 UvaLms95kTYDSS620BqDJVmPcg+VTTtsL9670zJU8MYzqcPLF97/vdNRrXVvTp7lsr9zDy31
 frTbsHGX45y/6jLiVwTsnM8pNiqZvz47YflphXfXF3GtufnYtSrOMvUVu/MbOSWW4oxEQy3m
 ouJEAInmlHhJAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xe7qeU9/EGdzu0rToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwm3Z/AYrFgv7XFlysPmSw2Pb7GanF51xw2ixnn9zFZrD1yl93i
 4IcnrBYzJr9kc+DzWDNvDaPH3m8LWDy2f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwBWlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl3F14V+WgsPcFWtfHmJsYDzA2cXIySEhYCLR/mQlcxcjF4eQwFJGicU3OlghEjIS
 J6c1QNnCEn+udbFBFH1ilPg4+RxYgk3AUKLrLURCRKCTUWJa90d2EIdZYAKzxP2W1YwgVcIC
 0RKrP20B2sHBwSKgKnFxgwxImFfAVuLQk79sEBvkJVZvOMAMYnMK2Em8bjkItkAIqGb5gvfM
 Exj5FjAyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAiMlW3Hfm7Zwdj1LvgQowAHoxIP74uQ
 13FCrIllxZW5hxglOJiVRHidzp6OE+JNSaysSi3Kjy8qzUktPsRoCnTTRGYp0eR8YBznlcQb
 mhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgnOS3Rf/WeS0J/o9Mis1S
 MYual2grzflV8llVcv67yLLi+Tfs2dmX2t4wZhCuPaX0964Ot3tFgka211Uxc9GiXbKN1+Jt
 N5yZfPOL+uUE7tudTAdm9G1rSWzfvrigo3bHhaK74pHPHrJp7FJKtV+kdTnP1CbNS9XDtc+h
 YOnyxzcm/z8W/jVUiaU4I9FQi7moOBEAH4+uvKsCAAA=
X-CMS-MailID: 20200619103657eucas1p24bff92408adbd4715130fb47595a6187
X-Msg-Generator: CA
X-RootMTR: 20200619103657eucas1p24bff92408adbd4715130fb47595a6187
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103657eucas1p24bff92408adbd4715130fb47595a6187
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103657eucas1p24bff92408adbd4715130fb47595a6187@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Inki Dae <inki.dae@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 07/36] drm: exynos: use common helper for
 a scatterlist contiguity check
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

VXNlIGNvbW1vbiBoZWxwZXIgZm9yIGNoZWNraW5nIHRoZSBjb250aWd1aXR5IG9mIHRoZSBpbXBv
cnRlZCBkbWEtYnVmLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93
c2tpQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9n
ZW0uYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
ZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19k
cm1fZ2VtLmMKaW5kZXggZWZhNDc2ODU4ZGI1Li4xNzE2YTAyM2JjYTAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmMKQEAgLTQzMSwyNyArNDMxLDEwIEBAIGV4eW5vc19k
cm1fZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogewog
CXN0cnVjdCBleHlub3NfZHJtX2dlbSAqZXh5bm9zX2dlbTsKIAotCWlmIChzZ3QtPm5lbnRzIDwg
MSkKKwkvKiBjaGVjayBpZiB0aGUgZW50cmllcyBpbiB0aGUgc2dfdGFibGUgYXJlIGNvbnRpZ3Vv
dXMgKi8KKwlpZiAoZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUoc2d0KSA8IGF0dGFjaC0+
ZG1hYnVmLT5zaXplKSB7CisJCURSTV9FUlJPUigiYnVmZmVyIGNodW5rcyBtdXN0IGJlIG1hcHBl
ZCBjb250aWd1b3VzbHkiKTsKIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Ci0KLQkvKgotCSAq
IENoZWNrIGlmIHRoZSBwcm92aWRlZCBidWZmZXIgaGFzIGJlZW4gbWFwcGVkIGFzIGNvbnRpZ3Vv
dXMKLQkgKiBpbnRvIERNQSBhZGRyZXNzIHNwYWNlLgotCSAqLwotCWlmIChzZ3QtPm5lbnRzID4g
MSkgewotCQlkbWFfYWRkcl90IG5leHRfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNndC0+c2dsKTsK
LQkJc3RydWN0IHNjYXR0ZXJsaXN0ICpzOwotCQl1bnNpZ25lZCBpbnQgaTsKLQotCQlmb3JfZWFj
aF9zZyhzZ3QtPnNnbCwgcywgc2d0LT5uZW50cywgaSkgewotCQkJaWYgKCFzZ19kbWFfbGVuKHMp
KQotCQkJCWJyZWFrOwotCQkJaWYgKHNnX2RtYV9hZGRyZXNzKHMpICE9IG5leHRfYWRkcikgewot
CQkJCURSTV9FUlJPUigiYnVmZmVyIGNodW5rcyBtdXN0IGJlIG1hcHBlZCBjb250aWd1b3VzbHki
KTsKLQkJCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKLQkJCX0KLQkJCW5leHRfYWRkciA9IHNn
X2RtYV9hZGRyZXNzKHMpICsgc2dfZG1hX2xlbihzKTsKLQkJfQogCX0KIAogCWV4eW5vc19nZW0g
PSBleHlub3NfZHJtX2dlbV9pbml0KGRldiwgYXR0YWNoLT5kbWFidWYtPnNpemUpOwotLSAKMi4x
Ny4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
