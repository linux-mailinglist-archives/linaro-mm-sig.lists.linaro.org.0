Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D21C5200737
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:48:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06414665E9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:48:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ED4FB665EE; Fri, 19 Jun 2020 10:48:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 342C3665BF;
	Fri, 19 Jun 2020 10:38:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C82576659C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B8EC4665D0; Fri, 19 Jun 2020 10:37:13 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 0ECDC6659C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:03 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103702euoutp0233b315b1129e8372e09612b65c188a72~Z66GIpEB_2242122421euoutp02U
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103702euoutp0233b315b1129e8372e09612b65c188a72~Z66GIpEB_2242122421euoutp02U
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103701eucas1p2e4008a7ddd1cda75ce7e7ff09ce39677~Z66Fnmrb81674116741eucas1p2F;
 Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E3.9D.05997.D459CEE5; Fri, 19
 Jun 2020 11:37:01 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103701eucas1p2323797b812f4d8c28e851aa80938a8dc~Z66FRTVYO1675016750eucas1p2B;
 Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103701eusmtrp1774c5f529632baeace94574dc976e819~Z66FQf2tk0959609596eusmtrp19;
 Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-df-5eec954da907
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 60.EA.06314.D459CEE5; Fri, 19
 Jun 2020 11:37:01 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103700eusmtip2d0ed865fa41b3cff8d1f2c9dc2e59af7~Z66Egh1F90302603026eusmtip2N;
 Fri, 19 Jun 2020 10:37:00 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:12 +0200
Message-Id: <20200619103636.11974-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFKsWRmVeSWpSXmKPExsWy7djP87q+U9/EGby9p2HRe+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRXDYpqTmZZalF+nYJXBldf3cwFzzgrLgx
 4TVzA+MUji5GTg4JAROJfRefs3cxcnEICaxglOi7cYMFwvnCKNG47wlU5jOjxMquN0wwLRMe
 tEElljNKHNt2lAmu5ee0fhaQKjYBQ4mut11sILaIQCujxIleHpAiZoE9zBKLdv0CKxIWCJfY
 MXkhWBGLgKrE1WcPwWxeATuJd1fuMUOsk5dYveEAmM0JFH/dcpAVZJCEwD12iX1dj1ghilwk
 Ti3aDHWfsMSr41vYIWwZidOTe1ggGpoZJR6eW8sO4fQwSlxumsEIUWUtcefcL6DVHED3aUqs
 36UPEXaUuPj4AxNIWEKAT+LGW0GQMDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwCep+D4ld
 mx4xQkJoIqPEwq+bmCcwys9CWLaAkXEVo3hqaXFuemqxUV5quV5xYm5xaV66XnJ+7iZGYAo7
 /e/4lx2Mu/4kHWIU4GBU4uF9EfI6Tog1say4MvcQowQHs5IIr9PZ03FCvCmJlVWpRfnxRaU5
 qcWHGKU5WJTEeY0XvYwVEkhPLEnNTk0tSC2CyTJxcEo1MLoe0VEs0vow/Yj62gNv/n7jV6/f
 uVLn+t0nW9ealazxtox8qyXIsfzR3MxZtU9uP18h4KfrUyapEywRb9dqUtyw4G+Vs1id/J+/
 x5g+T1Iws4mrm7N8UZf5HpVDFw8tYTqQ0f1b2VxFxrYnrU7kSNL6CT2RXD5zFcNCGMMaFb7G
 rt/BtfZMhxJLcUaioRZzUXEiAOfsqZNdAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsVy+t/xe7q+U9/EGezby2vRe+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpG
 JpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehldf3cwFzzgrLgx4TVzA+MUji5GTg4JAROJCQ/a
 2LsYuTiEBJYySrR8W80CkZCRODmtgRXCFpb4c62LDaLoE6PEqiUNbCAJNgFDia63EAkRgU5G
 iWndH8FGMQscY5bY+Pg9cxcjB4ewQKjEj6lSIA0sAqoSV589BGvmFbCTeHflHjPEBnmJ1RsO
 gNmcQPHXLQfBNgsJ2EosX/CeeQIj3wJGhlWMIqmlxbnpucWGesWJucWleel6yfm5mxiB8bTt
 2M/NOxgvbQw+xCjAwajEw/si5HWcEGtiWXFl7iFGCQ5mJRFep7On44R4UxIrq1KL8uOLSnNS
 iw8xmgIdNZFZSjQ5HxjreSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4
 OKUaGB3WVyc3PZl5bHXAA231uvZ716c8qFxcsv7wnCrnR1LmXxL3SzGxaD+t3ZoyITJYPty2
 p5nN3f53T2yxd0/pneBrWsEPW2pe/u5d1nzqnPu3FRGfZyReXmvOxJP7xmLCUYsV37b6JiUf
 jP1hvGK1ufAih+RdltvCP14+lrNJs7PB94W79dtkMSWW4oxEQy3mouJEAJFjdsu9AgAA
X-CMS-MailID: 20200619103701eucas1p2323797b812f4d8c28e851aa80938a8dc
X-Msg-Generator: CA
X-RootMTR: 20200619103701eucas1p2323797b812f4d8c28e851aa80938a8dc
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103701eucas1p2323797b812f4d8c28e851aa80938a8dc
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103701eucas1p2323797b812f4d8c28e851aa80938a8dc@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 12/36] drm: mediatek: use common helper
 for extracting pages array
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

VXNlIGNvbW1vbiBoZWxwZXIgZm9yIGNvbnZlcnRpbmcgYSBzZ190YWJsZSBvYmplY3QgaW50byBz
dHJ1Y3QKcGFnZSBwb2ludGVyIGFycmF5LgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3Nr
aSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZHJtX2dlbS5jIHwgOSArKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0u
YwppbmRleCAzNjU0ZWM3MzIwMjkuLjA1ODNlNTU3YWQzNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kcm1fZ2VtLmMKQEAgLTIzMyw5ICsyMzMsNyBAQCB2b2lkICptdGtfZHJtX2dlbV9w
cmltZV92bWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogewogCXN0cnVjdCBtdGtfZHJt
X2dlbV9vYmogKm10a19nZW0gPSB0b19tdGtfZ2VtX29iaihvYmopOwogCXN0cnVjdCBzZ190YWJs
ZSAqc2d0OwotCXN0cnVjdCBzZ19wYWdlX2l0ZXIgaXRlcjsKIAl1bnNpZ25lZCBpbnQgbnBhZ2Vz
OwotCXVuc2lnbmVkIGludCBpID0gMDsKIAogCWlmIChtdGtfZ2VtLT5rdmFkZHIpCiAJCXJldHVy
biBtdGtfZ2VtLT5rdmFkZHI7CkBAIC0yNDksMTEgKzI0Nyw4IEBAIHZvaWQgKm10a19kcm1fZ2Vt
X3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJaWYgKCFtdGtfZ2VtLT5w
YWdlcykKIAkJZ290byBvdXQ7CiAKLQlmb3JfZWFjaF9zZ19wYWdlKHNndC0+c2dsLCAmaXRlciwg
c2d0LT5vcmlnX25lbnRzLCAwKSB7Ci0JCW10a19nZW0tPnBhZ2VzW2krK10gPSBzZ19wYWdlX2l0
ZXJfcGFnZSgmaXRlcik7Ci0JCWlmIChpID4gbnBhZ2VzKQotCQkJYnJlYWs7Ci0JfQorCWRybV9w
cmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHNndCwgbXRrX2dlbS0+cGFnZXMsIE5VTEwsIG5w
YWdlcyk7CisKIAltdGtfZ2VtLT5rdmFkZHIgPSB2bWFwKG10a19nZW0tPnBhZ2VzLCBucGFnZXMs
IFZNX01BUCwKIAkJCSAgICAgICBwZ3Byb3Rfd3JpdGVjb21iaW5lKFBBR0VfS0VSTkVMKSk7CiAK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
