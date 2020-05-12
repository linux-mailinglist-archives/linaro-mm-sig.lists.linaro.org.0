Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A209B1CF1A5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:31:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C66B8618C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:31:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B77CE61957; Tue, 12 May 2020 09:31:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D78E664DF;
	Tue, 12 May 2020 09:06:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8521265F80
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:06:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 78EB666218; Tue, 12 May 2020 09:06:14 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id CE93265F95
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:16 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090116euoutp0137ffeaecb5cb614c9a9e9e3af716ecab~OPFoQhXMx2630726307euoutp01N
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090116euoutp0137ffeaecb5cb614c9a9e9e3af716ecab~OPFoQhXMx2630726307euoutp01N
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090115eucas1p2ad34cb9a159d957144d163c6dad1627f~OPFoDm9AG2563025630eucas1p2v;
 Tue, 12 May 2020 09:01:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 1A.6B.60698.BD56ABE5; Tue, 12
 May 2020 10:01:15 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090115eucas1p25e71b29fa935e53e4c04f9b3789a09fc~OPFnyxIz-2091220912eucas1p2x;
 Tue, 12 May 2020 09:01:15 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090115eusmtrp19bf0e4ed1b9272d4e4901565e5c778cf~OPFnsn47k0183401834eusmtrp1g;
 Tue, 12 May 2020 09:01:15 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-1c-5eba65dbcf05
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D5.F2.07950.BD56ABE5; Tue, 12
 May 2020 10:01:15 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090114eusmtip177f89ade3cd54facdf63e61cc13a1d3a~OPFnCxWt-1352813528eusmtip1H;
 Tue, 12 May 2020 09:01:14 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:34 +0200
Message-Id: <20200512090058.14910-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHec9tR9lZpyn4siRjUWCRd+yAFyoKDvTF+hAYpE09mOWmbM40
 0Gxe0uWsFDVW1FChmrdcMnNdNCmniFY61LKZYoiN1GRe8FpbR+vb7/k//+f5P7y8JCruwSVk
 iiKDUypkqVLCEzN3r344MsZZ4oJGjEGMbqAXYVruNeNMjU6HMb/Nd1HGtjRPME/r3yOMoSOC
 WbRNIoxpahhnhiwPCGYo/xNgGt/ZBYymIJSxj/dgzNtf3/Fju9iGhw2Afb1swNh2vV3Amowl
 BNu2PIGz325ZEfZ53XV2bGsKZStGHwP25ec8gr29GcSWtRoB6zTtjaHOe0YmcakpmZwyMPqi
 56VXdQt4etWuLEeHFckD40It8CAhHQZLNqYILfAkxfQTAO0lfQK+WASwdrUf5wsngN0rc9jO
 SLnj6XbjMYBPqvuRfyOmeQfqdhF0MNTOagk3e9OFAPbohG4TSr9CYY1l7e8qLzoeDtQU4m7G
 6APQ2daLuJmio6Ghwrkd5wfrn3X+Xerh0r892tjWvwhgpf4yzyehvbQK5dkLOqytAp59YV9F
 KeYOhnQ+gJMDjQK+KAVwSHMP8K4I+HVgzXUq6TrPHzZbAnn5OKx/tCVwy5AWwdHZ3W4ZdWG5
 uRrlZQoWF4l590Gotzb9i337cXDbwsL79nD+fd4DOKz5TdwBfvr/WQYAjMCHU6vkyZwqVMFd
 DVDJ5Cq1IjkgMU1uAq7/1bdlXXoB3mwkdAGaBFIhVRzSHifGZZmqbHkXgCQq9aYKUlwSlSTL
 vsYp0+KV6lRO1QX2kJjUhwqt+XFBTCfLMrgrHJfOKXe6COkhyQODh0WMR8uwqHLF17oQdHpv
 1npEwqlim7e3o3Zf1FLwdG0nVracuF60dqLlJ2VD2tqbc9Dqs/tmjqotZE7XtIRgY70mbbFR
 Ew9nRFFnNLlDwtCDzjSH2ny3N1ihvTnSE1YkiZEH3pivCJmcWwg45zv8QLIpbIrM9N9fmTs9
 GC7FVJdkwYdQpUr2B708My5bAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsVy+t/xu7q3U3fFGfzsEbPoPXeSyWLjjPWs
 Fot6e1ks/m+byGxx5et7NouVq48yWSzYb23x5cpDJotNj6+xWlzeNYfN4nLzRUaLtUfusls0
 tRhb3L13gsXi4IcnrA78HmvmrWH02PttAYvHzll32T02repk89j+7QGrx/3u40wem5fUe9z+
 95jZY/KN5Yweu282sHn0/zXw6NuyitHj8ya5AN4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0j
 E0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYw9Sz6yFkzjr3i1/zhTA+M9ni5GTg4JAROJSa9W
 soLYQgJLGSXunXaFiMtInJzWwAphC0v8udbF1sXIBVTziVFi7ffbYAk2AUOJrrcQCRGBTkaJ
 ad0f2UEcZoFjzBIbH79nBqkSFoiVWPZgEpjNIqAq8Xn7SSYQm1fATmLB5M8sECvkJVZvOABW
 wwkUvz//DwvESYUSj66+ZZnAyLeAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYDxtO/Zz
 yw7GrnfBhxgFOBiVeHg7jHbGCbEmlhVX5h5ilOBgVhLhbckECvGmJFZWpRblxxeV5qQWH2I0
 BTpqIrOUaHI+MNbzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUw
 Hl+zoUu9xamrfmvzeSOlR/F7xWIOBCk36MeEB+/eeuPyn//OqaIzDPJYzI672nyzOPlwdpPe
 MunLl/yafC9scj64b7P/oYxJbklRt88e2txXIHzUJrqO7UJRlP7dnZKJxUd0p79m1dsafPqt
 2hVOvc8Z1x5GTjpSfjtqu+dcA5Z7P6/67tb+o8RSnJFoqMVcVJwIAB3xKbi9AgAA
X-CMS-MailID: 20200512090115eucas1p25e71b29fa935e53e4c04f9b3789a09fc
X-Msg-Generator: CA
X-RootMTR: 20200512090115eucas1p25e71b29fa935e53e4c04f9b3789a09fc
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090115eucas1p25e71b29fa935e53e4c04f9b3789a09fc
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090115eucas1p25e71b29fa935e53e4c04f9b3789a09fc@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 14/38] drm: mediatek: use common helper
 for a scatterlist contiguity check
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
cnRlZCBkbWEtYnVmIGFuZApkbyB0aGlzIGNoZWNrIGJlZm9yZSBhbGxvY2F0aW5nIHJlc291cmNl
cywgc28gdGhlIGVycm9yIHBhdGggaXMgc2ltcGxlci4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6
eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0
aW9uLCBzZWUgJ1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRz
CnZzLiBvcmlnX25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9k
cmktZGV2ZWwvMjAyMDA1MTIwODU3MTAuMTQ2ODgtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20v
VC8KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYyB8IDI1ICsrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDE5
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtf
ZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKaW5kZXgg
YjA0YTNjMi4uNmMzNGMwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kcm1fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMK
QEAgLTIxMiwzNCArMjEyLDIxIEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqbXRrX2dlbV9wcmlt
ZV9pbXBvcnRfc2dfdGFibGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCXN0cnVjdCBkbWFf
YnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwgc3RydWN0IHNnX3RhYmxlICpzZykKIHsKIAlzdHJ1Y3Qg
bXRrX2RybV9nZW1fb2JqICptdGtfZ2VtOwotCWludCByZXQ7Ci0Jc3RydWN0IHNjYXR0ZXJsaXN0
ICpzOwotCXVuc2lnbmVkIGludCBpOwotCWRtYV9hZGRyX3QgZXhwZWN0ZWQ7CiAKLQltdGtfZ2Vt
ID0gbXRrX2RybV9nZW1faW5pdChkZXYsIGF0dGFjaC0+ZG1hYnVmLT5zaXplKTsKKwkvKiBjaGVj
ayBpZiB0aGUgZW50cmllcyBpbiB0aGUgc2dfdGFibGUgYXJlIGNvbnRpZ3VvdXMgKi8KKwlpZiAo
ZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUoc2cpIDwgYXR0YWNoLT5kbWFidWYtPnNpemUp
IHsKKwkJRFJNX0VSUk9SKCJzZ190YWJsZSBpcyBub3QgY29udGlndW91cyIpOworCQlyZXR1cm4g
RVJSX1BUUigtRUlOVkFMKTsKKwl9CiAKKwltdGtfZ2VtID0gbXRrX2RybV9nZW1faW5pdChkZXYs
IGF0dGFjaC0+ZG1hYnVmLT5zaXplKTsKIAlpZiAoSVNfRVJSKG10a19nZW0pKQogCQlyZXR1cm4g
RVJSX0NBU1QobXRrX2dlbSk7CiAKLQlleHBlY3RlZCA9IHNnX2RtYV9hZGRyZXNzKHNnLT5zZ2wp
OwotCWZvcl9lYWNoX3NnKHNnLT5zZ2wsIHMsIHNnLT5uZW50cywgaSkgewotCQlpZiAoc2dfZG1h
X2FkZHJlc3MocykgIT0gZXhwZWN0ZWQpIHsKLQkJCURSTV9FUlJPUigic2dfdGFibGUgaXMgbm90
IGNvbnRpZ3VvdXMiKTsKLQkJCXJldCA9IC1FSU5WQUw7Ci0JCQlnb3RvIGVycl9nZW1fZnJlZTsK
LQkJfQotCQlleHBlY3RlZCA9IHNnX2RtYV9hZGRyZXNzKHMpICsgc2dfZG1hX2xlbihzKTsKLQl9
Ci0KIAltdGtfZ2VtLT5kbWFfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNnLT5zZ2wpOwogCW10a19n
ZW0tPnNnID0gc2c7CiAKIAlyZXR1cm4gJm10a19nZW0tPmJhc2U7Ci0KLWVycl9nZW1fZnJlZToK
LQlrZnJlZShtdGtfZ2VtKTsKLQlyZXR1cm4gRVJSX1BUUihyZXQpOwogfQogCiB2b2lkICptdGtf
ZHJtX2dlbV9wcmltZV92bWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQotLSAKMS45LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
