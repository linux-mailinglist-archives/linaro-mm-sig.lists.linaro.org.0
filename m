Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EAC1FF8F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:15:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7264A6653E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:15:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 60F7066572; Thu, 18 Jun 2020 16:15:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83DF466576;
	Thu, 18 Jun 2020 16:03:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 997D166572
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 16:02:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8C8BB66588; Thu, 18 Jun 2020 16:02:55 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id AAF5766576
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 16:01:22 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618160121euoutp02a0d6b9a43c44b0c45727ef2b0db2887f~Zrr_r1vxy2501125011euoutp02L
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 16:01:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618160121euoutp02a0d6b9a43c44b0c45727ef2b0db2887f~Zrr_r1vxy2501125011euoutp02L
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618160121eucas1p25152fd9c21e6f800fe9f095d79056daa~Zrr_Wk0ia2423724237eucas1p2B;
 Thu, 18 Jun 2020 16:01:21 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 5A.52.60698.1DF8BEE5; Thu, 18
 Jun 2020 17:01:21 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618160120eucas1p20b771c3b6dc06549c7f4a4d569c3e0ec~Zrr98WwZc1444214442eucas1p2T;
 Thu, 18 Jun 2020 16:01:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618160120eusmtrp19b1f7bc59472a1a799da9bbde8edea03~Zrr97nA460376803768eusmtrp1W;
 Thu, 18 Jun 2020 16:01:20 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-8e-5eeb8fd1154a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B4.E0.08375.0DF8BEE5; Thu, 18
 Jun 2020 17:01:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200618160119eusmtip2b6913e0a93ea45b7293f1adb592e0866~Zrr9SQydu3011030110eusmtip21;
 Thu, 18 Jun 2020 16:01:19 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 18:01:11 +0200
Message-Id: <20200618160111.3045-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTURzm7O5uV3Nym8IOKgoLgwQ1M9YFH1go3b+0PwIha7rypqKbsunK
 CvKRj5aPfKGZ1Qxf+X6smZqllm6yWpoPtAw1g3w0lJzTLDS3a/bf932/7zvfOT8OhnBfog5Y
 jCSRkkpEcXyWNVM99EvvPpq/Ijyu2kKJXP0wg2gra0GJXXUBQoxvrLKIZw2DDEL52ocwjs8z
 iPaFSZQY665gEU1vv7CJtYZVlOhf+4YSm6oiRgCHbHzcCMiZ6i5A9pqUTLLTNIeSs/c0DLKj
 6jb5eWcBIYumagH5Zm2cSfZMp7DIPFU9INfbnc/ZXLD2jaTiYuSU1NM/wjq6V5HFSMizvV46
 mg5SgOGQAmAYxE/Cd/VBCmCNcfE6AOc3qtg0MQKYP6hk0WQdwK9LKXvEypLo/D0F6EEtgN+7
 PjAPIj/qjYjZxcK9oMKgsCTs8QwAtbk2ZhOCbzGgvkbLNg/s8BCYWlJnCTBxV1ij1FkwB/eF
 LTMrKF3nAhta+yy6Fe4PdZoM1HwQxPVsmKldQmhTIOxcN7FpbAeXNap97AR1RTlMOpC+9zx9
 E5smOQCOpZUB2uUDZ/TbLPM+EPwYbOn2pOXTsHioD6XXZAunDIfNMrIHC9WlCC1zYHYml3Yf
 heWa5oPa/pGP+1cjobaydH+pBQAaFidZ94FL+f8yJQD1gEclycRRlMxbQl3zkInEsiRJlMeV
 eHE72PtTuh3Nxgvw6s/lAYBjgG/DWTy/IuSiIrksWTwAIIbw7Tln3uuEXE6kKPkGJY0PlybF
 UbIB4Igx+TyO99OlS1w8SpRIxVJUAiX9N2VgVg4pICIQGAOC56Sb7md9gyrzhKkNwlO7bab+
 R/JbMcHO8k9d2ppQTmx/XLzT8JGb8rCHjuH5RE/qT9OD6cxWQUsejwirdK14oveLHLnTszzh
 1pw9LxE8LRS0dcwuq65GxyanPbe7q145kbo25BfCq1ZOFWQ184p3xKG9E9uCkovhlXymLFrk
 5YZIZaK/qYRK+08DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7oX+l/HGeyYpGbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFh9Wv2e1OPjhCavF
 9y2TmRx4PdbMW8PocWfpTkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj8MfrrB4
 7L7ZwObRt2UVo8fnTXIBPFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2
 NimpOZllqUX6dgl6GXu72pkK+vgqpl9sZmxgfMvdxcjJISFgIrH99w3GLkYuDiGBpYwSt5c1
 sEMkZCROTmtghbCFJf5c62KDKPrEKPHt7iYmkASbgKFE11uIhIhAJ6PEtO6P7CAOs8A/JokT
 e7eDVQkL+Eocf7iXDcRmEVCVWLbgNDOIzStgI7H+zmuoFfISqzccAItzCthJnD7eChYXErCV
 eP6hjW0CI98CRoZVjCKppcW56bnFhnrFibnFpXnpesn5uZsYgXGz7djPzTsYL20MPsQowMGo
 xMP7IuR1nBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0OR8Y
 03kl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhjbVuhEzl6UNU/i
 eVq+64SElclV7bJ3Tc+FbT302Gmj5pdNVZMWxnnM1GZQS9qTyyGvEbT84ctn70XF3Kdv7w6t
 eXWAb1t1TMrcDsfgtwvLvlx+qJwk/kDq7fs3T95/v6cY7mZef3vDTRmp4AlTj7a8EwlL/fmS
 71BQFp9t6wdTQWWbmLrqy5OVWIozEg21mIuKEwG7wX5nsQIAAA==
X-CMS-MailID: 20200618160120eucas1p20b771c3b6dc06549c7f4a4d569c3e0ec
X-Msg-Generator: CA
X-RootMTR: 20200618160120eucas1p20b771c3b6dc06549c7f4a4d569c3e0ec
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618160120eucas1p20b771c3b6dc06549c7f4a4d569c3e0ec
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618160120eucas1p20b771c3b6dc06549c7f4a4d569c3e0ec@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Daniel Vetter <daniel@ffwll.ch>, xen-devel@lists.xenproject.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 36/36] drm: xen: fix common struct
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9t
YXBfc2coKSBmdW5jdGlvbgpyZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmll
cyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCkhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMg
dG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKZG1hX3VubWFwX3NnIG11
c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwpwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KCnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1
Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCm1lbW9yeSBidWZmZXIs
IHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4gSXQKY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nl
cyAoc2dsIGVudHJ5KSwKYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJp
ZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5l
bnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50cmllcywgY2FsbGluZyBETUEtbWFwcGlu
ZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCmlnbm9yaW5nIHRo
ZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkgdGhlIGRtYV9tYXBfc2coKQpm
dW5jdGlvbi4KCkZpeCB0aGUgY29kZSB0byByZWZlciB0byBwcm9wZXIgbmVudHMgb3Igb3JpZ19u
ZW50cyBlbnRyaWVzLiBUaGlzIGRyaXZlcgpyZXBvcnRzIHRoZSBudW1iZXIgb2YgdGhlIHBhZ2Vz
IGluIHRoZSBpbXBvcnRlZCBzY2F0dGVybGlzdCwgc28gaXQgc2hvdWxkCnJlZmVyIHRvIHNnX3Rh
YmxlLT5vcmlnX25lbnRzIGVudHJ5LgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8
bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpBY2tlZC1ieTogT2xla3NhbmRyIEFuZHJ1c2hjaGVu
a28gPG9sZWtzYW5kcl9hbmRydXNoY2hlbmtvQGVwYW0uY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS94ZW4veGVuX2RybV9mcm9udF9nZW0uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZW4v
eGVuX2RybV9mcm9udF9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS94ZW4veGVuX2RybV9mcm9udF9n
ZW0uYwppbmRleCBmMGI4NWUwOTQxMTEuLmJhNGJkYzU1OTBlYSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3hlbi94ZW5fZHJtX2Zyb250X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS94
ZW4veGVuX2RybV9mcm9udF9nZW0uYwpAQCAtMjE1LDcgKzIxNSw3IEBAIHhlbl9kcm1fZnJvbnRf
Z2VtX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQlyZXR1cm4gRVJS
X1BUUihyZXQpOwogCiAJRFJNX0RFQlVHKCJJbXBvcnRlZCBidWZmZXIgb2Ygc2l6ZSAlenUgd2l0
aCBuZW50cyAldVxuIiwKLQkJICBzaXplLCBzZ3QtPm5lbnRzKTsKKwkJICBzaXplLCBzZ3QtPm9y
aWdfbmVudHMpOwogCiAJcmV0dXJuICZ4ZW5fb2JqLT5iYXNlOwogfQotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
