Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B32611C5192
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:07:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8E6560F57
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 09:07:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C051061999; Tue,  5 May 2020 09:07:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F13A066553;
	Tue,  5 May 2020 08:48:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 66A376607B
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:47:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 59D2566533; Tue,  5 May 2020 08:47:54 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 4CFAC6607B
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:43 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084642euoutp02faac68cca9069f69fece8dbac7fcc510~MFX63-2lV2628726287euoutp02z
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084642euoutp02faac68cca9069f69fece8dbac7fcc510~MFX63-2lV2628726287euoutp02z
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084637eucas1p2ae80f76e35086405a44f4510d0ab7e90~MFX1t_H5f1348613486eucas1p2m;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E2.11.60698.CE721BE5; Tue,  5
 May 2020 09:46:36 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084636eucas1p23a33d0b83ca284692713745d004f93ea~MFX1XHA9E2336923369eucas1p2C;
 Tue,  5 May 2020 08:46:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084636eusmtrp12bf7c85bfcea14cc0211d23f25f7de34~MFX1WPsxX0942509425eusmtrp1Z;
 Tue,  5 May 2020 08:46:36 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-4a-5eb127ecdc90
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 0F.14.08375.CE721BE5; Tue,  5
 May 2020 09:46:36 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084635eusmtip1a40af7250cf41dbed0f1cc43f8041929~MFX0pbEfv0686606866eusmtip1N;
 Tue,  5 May 2020 08:46:35 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:10 +0200
Message-Id: <20200505084614.30424-21-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+3bOzo7D6WlWfqkoDLIMvKHBJ1Z2++PYHxVoUULW1IOXvLGj
 lkIk2cWWEy+UOsqGlpp3l2mZl7wsC2XUFFmpM1uKltnFu8zKddT++73P+z48Dx8fiYnH+HZk
 ZGwCI4uVRksIId7waknrOrWzLtjjT44PUmjf8FBdfg0f/WnIxlBz77IAVfw0AtQ/951AacU1
 BHpcoeEhVZsvuqYswtFs/ygPqY0DfNTXdI9AGbVP+ejWrJJAVV3DAlSiNvFQ+4/PfLTUVIgf
 sKErCysBbWjtxOmWeRVOP1cOC2h1+S2Cbpz/yKfb7lcK6JHb3Tz6ycMr9OBvI0bn6ksB/eJ9
 KkEr0qYJOrO+HNAzascT1kHCvWFMdGQSI3Pff14YUfXJJIjXWl6q0+9NBe+EcmBBQsobaoY0
 PDOLqTIAO5UuciBc5VkAW1IHMG6YAbB3wSBYd+gLfmKcoxTAstxdG465NAPfvCAoTyj/JifM
 vIW6DuBrhaWZMaoXh72LXnJAkjbUGThykzXLOLUDjjwY+tdCRO2H/SP3MS7LCVbUvvzHFqu6
 UTdEmLMglU3ChR/1gDs6AseVVTjHNvBLd/1aUQfYk5uBc4Y0AEe1VQJuyACw72r+mtsXDmmX
 CXMjjHKBNU3unHwQVhe14mYZUlZQ/20z198K5jTkYZwsguk3xNy1M1R2V2/Etr/VrfWnobzu
 JsG9j2Y1tbmFlwWclP/DVACUA1smkY0JZ1ivWOaiGyuNYRNjw91C42LUYPXz9fzunnsGWk0h
 HYAigcRSdHqmJljMlyaxyTEdAJKYZIuoZLE2WCwKkyanMLK4c7LEaIbtAPYkLrEVeRVNnhVT
 4dIE5gLDxDOy9S2PtLBLBc4ezTaeVpsuBCxHnTocZcgb/3A5ZenQd1//wvSJIFg87eO0su1O
 zrEVXaH3om6q2r7SejCwM/3u130h1u1xHrouzaRfVijrtOCmmHAMm5zfwxxXZmOLj0xdHf5+
 Ox30p39tD01IUR1NcQ3InB8TL9kFJo8qthobi26bhk8apguqJTgbIfXcjclY6V9lF92peAMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJIsWRmVeSWpSXmKPExsVy+t/xu7pv1DfGGexfq2LRe+4kk8XGGetZ
 Lf5vm8hssefML3aL1R8fM1pc+fqezaJ58Xo2i5WrjzJZLNhvbdEyaxGLxZcrD5ksNj2+xmpx
 edccNoueDVtZLTq/zGKzWHvkLrvFsk1/mCwOfnjCavFz1zwWB2GPNfPWMHrc23eYxWPvtwUs
 Hjtn3WX32LSqk81j+7cHrB77565h97jffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP3uZ3bB59
 W1YxenzeJBfAH6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mW
 WqRvl6CXsfbRH/aCczwVG2/YNDBe5Opi5OSQEDCRuDHzI3MXIxeHkMBSRom9Wy8wQiRkJE5O
 a2CFsIUl/lzrYgOxhQQ+MUpsX1wEYrMJGEp0vQWJc3GICHQySkzr/sgO4jAL3GCRmLvlAztI
 lbBAuMSrna3MIDaLgKrE/fl3mEBsXgE7iSv35zJDbJCXWL3hAJjNCRR/fOkO1LZCiQ/nv7NO
 YORbwMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzAatx37uXkH46WNwYcYBTgYlXh4Iz6v
 jxNiTSwrrsw9xCjBwawkwrvsx4Y4Id6UxMqq1KL8+KLSnNTiQ4ymQEdNZJYSTc4HJoq8knhD
 U0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2Muko3RMovvHki7CHA3+LV
 7JCau4xtg73btAuWW48ZWEicnCnP/519GeOWfb9Wsj02qxK81xllLrHgo3t/gEJfRcCcyv6H
 /23nKvBUrmv7OVvh6qei/jlc/i5ugmxx5pIbNM9MlTusXBU369HrZCk/BqMK0zLna7puT278
 Ov6w1HjxEQONbfFKLMUZiYZazEXFiQDIsp8b3AIAAA==
X-CMS-MailID: 20200505084636eucas1p23a33d0b83ca284692713745d004f93ea
X-Msg-Generator: CA
X-RootMTR: 20200505084636eucas1p23a33d0b83ca284692713745d004f93ea
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084636eucas1p23a33d0b83ca284692713745d004f93ea
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084636eucas1p23a33d0b83ca284692713745d004f93ea@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 21/25] staging: tegra-vde: fix common
 struct sg_table related issues
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90
ZWdyYS12ZGUvaW9tbXUuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVn
cmEtdmRlL2lvbW11LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMK
aW5kZXggNmFmODYzZC4uYWRmOGRjNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlh
L3RlZ3JhLXZkZS9pb21tdS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUv
aW9tbXUuYwpAQCAtMzYsOCArMzYsOCBAQCBpbnQgdGVncmFfdmRlX2lvbW11X21hcChzdHJ1Y3Qg
dGVncmFfdmRlICp2ZGUsCiAKIAlhZGRyID0gaW92YV9kbWFfYWRkcigmdmRlLT5pb3ZhLCBpb3Zh
KTsKIAotCXNpemUgPSBpb21tdV9tYXBfc2codmRlLT5kb21haW4sIGFkZHIsIHNndC0+c2dsLCBz
Z3QtPm5lbnRzLAotCQkJICAgIElPTU1VX1JFQUQgfCBJT01NVV9XUklURSk7CisJc2l6ZSA9IGlv
bW11X21hcF9zZ3RhYmxlKHZkZS0+ZG9tYWluLCBhZGRyLCBzZ3QsCisJCQkJIElPTU1VX1JFQUQg
fCBJT01NVV9XUklURSk7CiAJaWYgKCFzaXplKSB7CiAJCV9fZnJlZV9pb3ZhKCZ2ZGUtPmlvdmEs
IGlvdmEpOwogCQlyZXR1cm4gLUVOWElPOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
