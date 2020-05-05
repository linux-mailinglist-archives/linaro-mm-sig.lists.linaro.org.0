Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 407B31C514E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:52:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EDD966072
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:52:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 50DC966078; Tue,  5 May 2020 08:52:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60678664DF;
	Tue,  5 May 2020 08:47:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CAF3866072
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BC91666169; Tue,  5 May 2020 08:46:33 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id DFFD966072
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:27 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084627euoutp020fc76cf148213a3dbe13c6b1b42ddbd3~MFXsgdUPH2627826278euoutp02b
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084627euoutp020fc76cf148213a3dbe13c6b1b42ddbd3~MFXsgdUPH2627826278euoutp02b
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084626eucas1p2bd08c1934dd8d39db7ddf52dfe576b9d~MFXsULUhN1058410584eucas1p2r;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E0.CF.61286.2E721BE5; Tue,  5
 May 2020 09:46:26 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084626eucas1p20abe79e406f60ae92fec252072befc5a~MFXsB2CIY1942419424eucas1p2I;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084626eusmtrp18fa2f153b5af7296c4a2a944ba75303f~MFXsBOMfc0942509425eusmtrp15;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-97-5eb127e2d689
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 24.21.07950.2E721BE5; Tue,  5
 May 2020 09:46:26 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084626eusmtip198ef62d087e4d50afa1a00ff5371d8a9~MFXreJocU0686606866eusmtip1H;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:45:54 +0200
Message-Id: <20200505084614.30424-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djPc7qP1DfGGRy9aWrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLXTPusFusXH2UyWLBfmuLB3NvMll8ufKQyWLT42usFpd3zWGzWHvkLrvF
 wQ9PWB14PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR/9fA4++
 LasYPT5vkgvgjuKySUnNySxLLdK3S+DKaGsxKngjVrH540+2BsZ1wl2MHBwSAiYSBzrsuhi5
 OIQEVjBKHLiwgRnC+cIo0fvnBwuE85lR4uTkHUAZTrCOI2fXQCWWM0rMb5mM0HJ29joWkCo2
 AUOJrrddbCC2iEAro8SJXh4Qm1ngPpPE75dZILawQLDEmtVvwKayCKhKfJzVA9bLK2Ar8e7a
 aiaIbfISqzccAKvhFLCTeHzpDhvIMgmBY+wSB/5+ZoQocpFYPa2NBcIWlnh1fAs7hC0jcXpy
 DwtEQzOjxMNza9khnB5GictNM6C6rSXunPvFBgoOZgFNifW79CHCjhLzGh+yQUKJT+LGW0GI
 B/gkJm2bzgwR5pXoaBOCqFaTmHV8HdzagxcuQUPLQ6Lry2NGSAAdZZRY++A20wRG+VkIyxYw
 Mq5iFE8tLc5NTy02zEst1ytOzC0uzUvXS87P3cQITEun/x3/tIPx66WkQ4wCHIxKPLwRn9fH
 CbEmlhVX5h5ilOBgVhLhXfZjQ5wQb0piZVVqUX58UWlOavEhRmkOFiVxXuNFL2OFBNITS1Kz
 U1MLUotgskwcnFINjHo2PJ33RHV8L0nbMh1dV2V2/9WfqqXyiz9GXld7+U9nw7NNL+5L39+e
 8Cy0giFh5soMjcA7eeaefmz/tjGEv61eofMk/lmcz2rNGxL/suf2Sk+NfSWavv7E4XUNztvq
 /99/PuXQjKkMNU8O/Tr/ZE9JhP3qxuVPOvP96rWYvh4LPNDQcU37iZgSS3FGoqEWc1FxIgDg
 MXN2RwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsVy+t/xu7qP1DfGGVzbomjRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLXTPusFusXH2UyWLBfmuLB3NvMll8ufKQyWLT42usFpd3zWGzWHvkLrvF
 wQ9PWB14PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR/9fA4++
 LasYPT5vkgvgjtKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxL
 LdK3S9DLaGsxKngjVrH540+2BsZ1wl2MnBwSAiYSR86uYeli5OIQEljKKPFxyT82iISMxMlp
 DawQtrDEn2tdbBBFnxglnk6/zQ6SYBMwlOh6C5EQEehklJjW/REswSzwnEniZYt+FyMHh7BA
 oMTfdgGQMIuAqsTHWT0sIDavgK3Eu2urmSAWyEus3nCAGcTmFLCTeHzpDtgRQgKFEh/Of2ed
 wMi3gJFhFaNIamlxbnpusZFecWJucWleul5yfu4mRmCUbDv2c8sOxq53wYcYBTgYlXh4N3xd
 HyfEmlhWXJl7iFGCg1lJhHfZjw1xQrwpiZVVqUX58UWlOanFhxhNgY6ayCwlmpwPjOC8knhD
 U0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MAR/zt7hp3xEWyrk0N5Sp
 unbJzPtTxZP7LzwR0on/Khzzdd+C5UqcGU8St2ueOeiebbG/+0zd6XKbGHaFZ5fKpJVCeh6f
 LlhR0/wufdNn092PWFmcAq613276Y5rQ3fxFXaw+q1HdbJlvdo673YyLR+9UNJqmJzbrVVje
 4tXSZzN41KzkvUuJpTgj0VCLuag4EQC8t0YKqAIAAA==
X-CMS-MailID: 20200505084626eucas1p20abe79e406f60ae92fec252072befc5a
X-Msg-Generator: CA
X-RootMTR: 20200505084626eucas1p20abe79e406f60ae92fec252072befc5a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084626eucas1p20abe79e406f60ae92fec252072befc5a
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084626eucas1p20abe79e406f60ae92fec252072befc5a@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, etnaviv@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 05/25] drm: etnaviv: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2
L2V0bmF2aXZfZ2VtLmMgfCAxMiArKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V0
bmF2aXYvZXRuYXZpdl9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2Vt
LmMKaW5kZXggZGM5ZWYzMC4uMzQwMDI2YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0
bmF2aXYvZXRuYXZpdl9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2
X2dlbS5jCkBAIC0yNyw3ICsyNyw3IEBAIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX3NjYXR0ZXJf
bWFwKHN0cnVjdCBldG5hdml2X2dlbV9vYmplY3QgKmV0bmF2aXZfb2JqKQogCSAqIGJlY2F1c2Ug
ZGlzcGxheSBjb250cm9sbGVyLCBHUFUsIGV0Yy4gYXJlIG5vdCBjb2hlcmVudC4KIAkgKi8KIAlp
ZiAoZXRuYXZpdl9vYmotPmZsYWdzICYgRVROQV9CT19DQUNIRV9NQVNLKQotCQlkbWFfbWFwX3Nn
KGRldi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlk
bWFfbWFwX3NndGFibGUoZGV2LT5kZXYsIHNndCwgRE1BX0JJRElSRUNUSU9OQUwpOwogfQogCiBz
dGF0aWMgdm9pZCBldG5hdml2X2dlbV9zY2F0dGVybGlzdF91bm1hcChzdHJ1Y3QgZXRuYXZpdl9n
ZW1fb2JqZWN0ICpldG5hdml2X29iaikKQEAgLTUxLDcgKzUxLDcgQEAgc3RhdGljIHZvaWQgZXRu
YXZpdl9nZW1fc2NhdHRlcmxpc3RfdW5tYXAoc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqZXRu
YXZpdl9vYmoKIAkgKiBkaXNjYXJkIHRob3NlIHdyaXRlcy4KIAkgKi8KIAlpZiAoZXRuYXZpdl9v
YmotPmZsYWdzICYgRVROQV9CT19DQUNIRV9NQVNLKQotCQlkbWFfdW5tYXBfc2coZGV2LT5kZXYs
IHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCWRtYV91bm1hcF9z
Z3RhYmxlKGRldi0+ZGV2LCBzZ3QsIERNQV9CSURJUkVDVElPTkFMKTsKIH0KIAogLyogY2FsbGVk
IHdpdGggZXRuYXZpdl9vYmotPmxvY2sgaGVsZCAqLwpAQCAtNDA0LDkgKzQwNCw4IEBAIGludCBl
dG5hdml2X2dlbV9jcHVfcHJlcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgdTMyIG9wLAog
CX0KIAogCWlmIChldG5hdml2X29iai0+ZmxhZ3MgJiBFVE5BX0JPX0NBQ0hFRCkgewotCQlkbWFf
c3luY19zZ19mb3JfY3B1KGRldi0+ZGV2LCBldG5hdml2X29iai0+c2d0LT5zZ2wsCi0JCQkJICAg
IGV0bmF2aXZfb2JqLT5zZ3QtPm5lbnRzLAotCQkJCSAgICBldG5hdml2X29wX3RvX2RtYV9kaXIo
b3ApKTsKKwkJZG1hX3N5bmNfc2d0YWJsZV9mb3JfY3B1KGRldi0+ZGV2LCBldG5hdml2X29iai0+
c2d0LAorCQkJCQkgZXRuYXZpdl9vcF90b19kbWFfZGlyKG9wKSk7CiAJCWV0bmF2aXZfb2JqLT5s
YXN0X2NwdV9wcmVwX29wID0gb3A7CiAJfQogCkBAIC00MjEsOCArNDIwLDcgQEAgaW50IGV0bmF2
aXZfZ2VtX2NwdV9maW5pKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCWlmIChldG5hdml2
X29iai0+ZmxhZ3MgJiBFVE5BX0JPX0NBQ0hFRCkgewogCQkvKiBmaW5pIHdpdGhvdXQgYSBwcmVw
IGlzIGFsbW9zdCBjZXJ0YWlubHkgYSB1c2Vyc3BhY2UgZXJyb3IgKi8KIAkJV0FSTl9PTihldG5h
dml2X29iai0+bGFzdF9jcHVfcHJlcF9vcCA9PSAwKTsKLQkJZG1hX3N5bmNfc2dfZm9yX2Rldmlj
ZShkZXYtPmRldiwgZXRuYXZpdl9vYmotPnNndC0+c2dsLAotCQkJZXRuYXZpdl9vYmotPnNndC0+
bmVudHMsCisJCWRtYV9zeW5jX3NndGFibGVfZm9yX2RldmljZShkZXYtPmRldiwgZXRuYXZpdl9v
YmotPnNndCwKIAkJCWV0bmF2aXZfb3BfdG9fZG1hX2RpcihldG5hdml2X29iai0+bGFzdF9jcHVf
cHJlcF9vcCkpOwogCQlldG5hdml2X29iai0+bGFzdF9jcHVfcHJlcF9vcCA9IDA7CiAJfQotLSAK
MS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
