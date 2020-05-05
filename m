Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D1E1C518D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:06:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D39A66076
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 09:06:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7B43D6607B; Tue,  5 May 2020 09:06:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C82E166576;
	Tue,  5 May 2020 08:48:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0021A661C5
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:47:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E8B676624C; Tue,  5 May 2020 08:47:02 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id CCF9B661C5
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:39 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084639euoutp0257175568e0912fda738c19be08678cb1~MFX3oQylR2636226362euoutp02l
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084639euoutp0257175568e0912fda738c19be08678cb1~MFX3oQylR2636226362euoutp02l
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084638eucas1p14d6b13af09eff6253e2019c1163d2ea3~MFX3YaiQa2425224252eucas1p1F;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 54.42.60679.EE721BE5; Tue,  5
 May 2020 09:46:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084638eucas1p24f356b441a3589e9528d239c0b9ac666~MFX28WU0-1948219482eucas1p2b;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084638eusmtrp186bd6d7ec444ca0de6918ea0b42f52cb~MFX27rb8P0969409694eusmtrp1G;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-58-5eb127ee86c4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A1.24.08375.EE721BE5; Tue,  5
 May 2020 09:46:38 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084637eusmtip174e6b9fe26a7b71a38ddfeb81a667898~MFX2aZfgP0580805808eusmtip1C;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:13 +0200
Message-Id: <20200505084614.30424-24-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjmO7edTSenafhhkTDIMEjTJA4YZuCPE4hFEYaVecqDl9y0zVku
 SmkosZx4KROvQzKvc9PUeSHU5TVBRMW0LJP5J2tecomZaZsH699ze9/n5eMjUUkb7kUmyFM5
 hZxNkhIirH3w19iJ5WPN0ScLKvxp3dgIQjcXG3F6tz0fpad+rhB0XcMAQut7gumy53fp1tFy
 QNunFhC6xTqN05NdZQRt6P8koPtWF/FQMdNY0QiYNxt6jDFvfMGZ+adDCPP6ZQbzcceKMoUz
 NYDpns0kGJ1mmWByW+sBs95y5KJLlOhMLJeUkMYp/ENiRPGzVVlYitnt/nDZWzwT5LhqgZCE
 VBDMqm4mtEBESqhaADs2DbjTkFB2ALsqhbyxDuBW+ziyP/H5R72AN2oAzLUaMJ44JpqWnhHO
 FEEFQK1Nu4c9qCwAh3WuzhBKTSPQ9md5r8OdioH2ueo9jFFHoeZ3EebEYioEduvacL7OGzaY
 elEnFjp068Tc3rGQGhTAfsuM4w7SQcJg7bKKz7vDpaFWAY8Pw9HCHIzPawBcGDMIeJID4OTj
 YsCnguHc2BbhXIRSvtDY5c/L56B2Y5Lg97vBGdsBp4w6YEH7C5SXxfBJtoRP+8CSoaZ/tX3j
 EyiPGdihK0f4BxoA8FvnNp4HvEv+l+kBqAeenEopi+OUgXLunp+SlSlV8ji/28myFuD4TKM7
 Q/YO0LV9ywIoEkhdxVfXjdESnE1TpsssAJKo1EP8atMULRHHsulqTpF8U6FK4pQWcIjEpJ7i
 U1Vfb0ioODaVu8NxKZxi30VIoVcmuD59xdOXuyDUtLi72gK9Dk7YXUJDdksLY2cNlS+ljfLz
 a8YPrCg/rzCMLE3vaauJnI84PZzNvFttCnp4afOyLUKv3vierk40g7pJtQaPmusuD/fpdFs0
 XRsxv1eZM4rid1WayhnfLWO1XZIYzvaeHX2wsiZzMyVK4aOiyEgppoxnA46jCiX7Fz5EzGxI
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7rv1DfGGey5L2jRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9tMWdqocWW03MZLb5cechksenxNVaLy7vmsFmsPXKX3eLg
 hyesDrwea+atYfTY+20Bi8f2bw9YPe53H2fy2Lyk3uP2v8fMHpNvLGf02H2zgc2jt/kdm0ff
 llWMHp83yQVwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehl3FzUylKwna/ixJzDrA2MPTxdjJwcEgImEvc+rWLvYuTiEBJYyiix//ouFoiEjMTJ
 aQ2sELawxJ9rXWwQRZ8YJR6f/whWxCZgKNH1FiIhItDJKDGt+yM7SIJZ4B6TxN51fiC2sECc
 xNrNcxlBbBYBVYnm39PAmnkF7CR2926F2iAvsXrDAWYQmxMo/vjSHTYQW0igUOLD+e+sExj5
 FjAyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMlG3Hfm7ewXhpY/AhRgEORiUe3ojP6+OE
 WBPLiitzDzFKcDArifAu+7EhTog3JbGyKrUoP76oNCe1+BCjKdBRE5mlRJPzgVGcVxJvaGpo
 bmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qB0WDZBFGvy0efej3/vNFwUvnq
 7Y+P9t25sOyPjaDdzg/1fZuuaMVvUF+4KkRLeLIi5+sLf9/O2pJYzcG2yXqzaPG561YH8sIS
 NuxL+OLNGrR760KPOes3HzKO4fEpKTeN2Za65cTOG4vi7GYL2K1Yv7u5N4dpuUzs+Y6jqd9f
 fjj96Kcd58uVivOUWIozEg21mIuKEwHQUyHvqgIAAA==
X-CMS-MailID: 20200505084638eucas1p24f356b441a3589e9528d239c0b9ac666
X-Msg-Generator: CA
X-RootMTR: 20200505084638eucas1p24f356b441a3589e9528d239c0b9ac666
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084638eucas1p24f356b441a3589e9528d239c0b9ac666
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084638eucas1p24f356b441a3589e9528d239c0b9ac666@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kvm@vger.kernel.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Kirti Wankhede <kwankhede@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 24/25] samples: vfio-mdev/mbochs: fix
 common struct sg_table related issues
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
ZWZlcmVuY2VzIHRvIHRoZQpuZW50cyBhbmQgb3JpZ19uZW50cyByZXNwZWN0aXZlbHkuCgpXaGls
ZSB0b3VjaGluZyB0aGlzIGNvZGUsIGFsc28gYWRkIG1pc3NpbmcgY2FsbCB0byBkbWFfdW5tYXBf
c2d0YWJsZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBz
YW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUgJ1tQQVRDSCB2MyAwMC8y
NV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmlnX25lbnRzIG1pc3VzZScg
dGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzUvMTg3Ci0tLQogc2FtcGxlcy92
ZmlvLW1kZXYvbWJvY2hzLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5j
IGIvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKaW5kZXggM2NjNWU1OS4uZjJjNjJlMCAxMDA2
NDQKLS0tIGEvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKKysrIGIvc2FtcGxlcy92ZmlvLW1k
ZXYvbWJvY2hzLmMKQEAgLTg0Niw3ICs4NDYsNyBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICpt
Ym9jaHNfbWFwX2RtYWJ1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdCwKIAlpZiAoc2df
YWxsb2NfdGFibGVfZnJvbV9wYWdlcyhzZywgZG1hYnVmLT5wYWdlcywgZG1hYnVmLT5wYWdlY291
bnQsCiAJCQkJICAgICAgMCwgZG1hYnVmLT5tb2RlLnNpemUsIEdGUF9LRVJORUwpIDwgMCkKIAkJ
Z290byBlcnIyOwotCWlmICghZG1hX21hcF9zZyhhdC0+ZGV2LCBzZy0+c2dsLCBzZy0+bmVudHMs
IGRpcmVjdGlvbikpCisJaWYgKGRtYV9tYXBfc2d0YWJsZShhdC0+ZGV2LCBzZywgZGlyZWN0aW9u
KSkKIAkJZ290byBlcnIzOwogCiAJcmV0dXJuIHNnOwpAQCAtODY4LDYgKzg2OCw3IEBAIHN0YXRp
YyB2b2lkIG1ib2Noc191bm1hcF9kbWFidWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXQs
CiAKIAlkZXZfZGJnKGRldiwgIiVzOiAlZFxuIiwgX19mdW5jX18sIGRtYWJ1Zi0+aWQpOwogCisJ
ZG1hX3VubWFwX3NndGFibGUoYXQtPmRldiwgc2csIGRpcmVjdGlvbik7CiAJc2dfZnJlZV90YWJs
ZShzZyk7CiAJa2ZyZWUoc2cpOwogfQotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
