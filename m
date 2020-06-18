Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA681FF851
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:57:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA47366583
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:57:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BD3A86659C; Thu, 18 Jun 2020 15:57:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9E336661F;
	Thu, 18 Jun 2020 15:42:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C658C66588
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B95DB665BE; Thu, 18 Jun 2020 15:40:43 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id B01036658C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:28 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154027euoutp0102720080a8767089d365af26f60c61dd~ZrZvOgR1D1844818448euoutp01-
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154027euoutp0102720080a8767089d365af26f60c61dd~ZrZvOgR1D1844818448euoutp01-
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154027eucas1p21b70c76835153155c3d9b7e87ec267e5~ZrZu7wq3x2977729777eucas1p2P;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 96.1F.61286.BEA8BEE5; Thu, 18
 Jun 2020 16:40:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154027eucas1p14806dddf83e91e2e5e24d3dd4ca2fc7e~ZrZumaGTa1545515455eucas1p1c;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154027eusmtrp1a6b7094276e56125f596c8c80c5a4e0d~ZrZulzhzt2169821698eusmtrp1h;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-d8-5eeb8aebc8d7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B9.E9.07950.BEA8BEE5; Thu, 18
 Jun 2020 16:40:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154026eusmtip16c47c3cf90f7729427124b9a8789ee03~ZrZtsuKH_0834108341eusmtip1N;
 Thu, 18 Jun 2020 15:40:26 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:40 +0200
Message-Id: <20200618153956.29558-20-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTcRjlt7u7XWWT2zT8Yaa0qExoagpd0Ewr5AZlD6QocLryoqabsqlp
 9BDFqKmZU3RIikimTc1comGWj9Jpw9cUMR/lk9IhU6emli7nXfbfOec7H+fw8WEI7yPqgEVK
 4iipRBTNZ1kz69rXe47p5Xqhe1rnQSKzu5NB1CirUcJUl40QAysGFvGqoo1BmCb1KFGouE8U
 N3kTywMTDEI9NYgS/Q3PWcTSuAkhqj6PsYmWhWnUz4asLKoE5IfVYiZZvzqOkt/TNQzy7YuH
 5MjWFELmDJUB8v3XZBa5WdDEJJ/WqgBZP1iEkEa10yXODWufMCo6MoGSuvmGWke0NSnQ2Kz9
 iamTG2gyyIFygGEQ94JfGgLkwBrj4eUAbvb9YNFkGUBluYlJEyOA2T31bDmw2tnQlXRaBmUA
 NhgX0d2VuSwTanaxcA8on5ezzNgOTwOwI5Njxgieh0DVSoAZ2+JBcKZmg23uwcQPwfkSaJa5
 uC9c0OtROswZVrxpRszYalvXatJ2siCuY0PtYI3FdBYq5n5a2tnCOU2tBTtCbU4Gk15IBXCi
 u4pNkwwA+1OUgHZ5w9HuDZa5BYIfhdUNbrTsDw0dv9j0kWzg0Pweur8NVNTlI7TMhY8f8Wj3
 YVigeb0b29KrQ2hMwsnhfMt9sgFsXm9EngHngv9hxQCogD0VLxOHUzIPCXVHIBOJZfGScMGt
 GLEabH+Vdkuz9A6s6G62AhwDfA7X75peyENFCbIkcSuAGMK3457u0gp53DBR0l1KGhMijY+m
 ZK1gH8bk23M9S2aDeXi4KI6KoqhYSvpvysCsHJLB5SOlLi+F6T6FEvWDxhO5AsXwWrNuUel1
 Jbj9Ouq4HKjqO37GdZZM/30AFP2ZmIhraswxXDQaW+7N8HIDg24XJnZwnoyUGxyd8gSTnw7p
 BkuTOzfPxY7Gt40qQ210V0/6tzuvkRc6zn87JfDsdfEL2TvtbkiVpHTFjQWGDI9FGfhMWYTI
 wxWRykR/AZhNljtRAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xu7qvu17HGbycw2vRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GUc3T+JtaBftqL50S/WBsbJEl2MnBwSAiYSlxadZOli5OIQEljK
 KLFk31VGiISMxMlpDawQtrDEn2tdbBBFnxgljvZtYgZJsAkYSnS9hUiICHQySkzr/sgO4jAL
 zGOWWL7qMFMXIweHsECQxOymWBCTRUBV4u0isM28AnYSH16/hlogL7F6wwGwmZxA8dPHW8Hi
 QgK2Es8/tLFNYORbwMiwilEktbQ4Nz232EivODG3uDQvXS85P3cTIzB2th37uWUHY9e74EOM
 AhyMSjy8L0JexwmxJpYVV+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4EKMp0E0TmaVE
 k/OBcZ1XEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoHxjP+sKU5c
 92b8YO1p4vutFVdqenu2vuaygJJ3ss9vZ0Sdmq7ikDtNS9f3U12v0udU8fIdJRLp2R1H5kk2
 /8g9crFD4sQN76CKL0+yhFPX5S5nEf5o+zNfLYGj3Mxrd3XBlsNXrL/U6bl+eNB7daJ7RrjJ
 hnzf7w8OzSjNWP+Q93ZBa6bC7gAlluKMREMt5qLiRADlczlkswIAAA==
X-CMS-MailID: 20200618154027eucas1p14806dddf83e91e2e5e24d3dd4ca2fc7e
X-Msg-Generator: CA
X-RootMTR: 20200618154027eucas1p14806dddf83e91e2e5e24d3dd4ca2fc7e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154027eucas1p14806dddf83e91e2e5e24d3dd4ca2fc7e
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154027eucas1p14806dddf83e91e2e5e24d3dd4ca2fc7e@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 19/36] drm: rockchip: fix common struct
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
dW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFw
cGluZyB3cmFwcGVycyBvcGVyYXRpbmcKZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBv
YmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQppdGVyYXRvcnMgd2hlcmUgcG9zc2libGUu
IFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCm5lbnRzIGFuZCBv
cmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xs
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2dlbS5jIHwgMjMgKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKaW5kZXggMjk3MGU1MzRlMmJiLi5jYjUwZjJi
YTJlNDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
Z2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwpA
QCAtMzYsOCArMzYsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2dlbV9pb21tdV9tYXAoc3RydWN0
IHJvY2tjaGlwX2dlbV9vYmplY3QgKnJrX29iaikKIAogCXJrX29iai0+ZG1hX2FkZHIgPSBya19v
YmotPm1tLnN0YXJ0OwogCi0JcmV0ID0gaW9tbXVfbWFwX3NnKHByaXZhdGUtPmRvbWFpbiwgcmtf
b2JqLT5kbWFfYWRkciwgcmtfb2JqLT5zZ3QtPnNnbCwKLQkJCSAgIHJrX29iai0+c2d0LT5uZW50
cywgcHJvdCk7CisJcmV0ID0gaW9tbXVfbWFwX3NndGFibGUocHJpdmF0ZS0+ZG9tYWluLCBya19v
YmotPmRtYV9hZGRyLCBya19vYmotPnNndCwKKwkJCQlwcm90KTsKIAlpZiAocmV0IDwgcmtfb2Jq
LT5iYXNlLnNpemUpIHsKIAkJRFJNX0VSUk9SKCJmYWlsZWQgdG8gbWFwIGJ1ZmZlcjogc2l6ZT0l
emQgcmVxdWVzdF9zaXplPSV6ZFxuIiwKIAkJCSAgcmV0LCBya19vYmotPmJhc2Uuc2l6ZSk7CkBA
IC05OCwxMSArOTgsMTAgQEAgc3RhdGljIGludCByb2NrY2hpcF9nZW1fZ2V0X3BhZ2VzKHN0cnVj
dCByb2NrY2hpcF9nZW1fb2JqZWN0ICpya19vYmopCiAJICogVE9ETzogUmVwbGFjZSB0aGlzIGJ5
IGRybV9jbGZsdXNoX3NnKCkgb25jZSBpdCBjYW4gYmUgaW1wbGVtZW50ZWQKIAkgKiB3aXRob3V0
IHJlbHlpbmcgb24gc3ltYm9scyB0aGF0IGFyZSBub3QgZXhwb3J0ZWQuCiAJICovCi0JZm9yX2Vh
Y2hfc2cocmtfb2JqLT5zZ3QtPnNnbCwgcywgcmtfb2JqLT5zZ3QtPm5lbnRzLCBpKQorCWZvcl9l
YWNoX3NndGFibGVfc2cocmtfb2JqLT5zZ3QsIHMsIGkpCiAJCXNnX2RtYV9hZGRyZXNzKHMpID0g
c2dfcGh5cyhzKTsKIAotCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UoZHJtLT5kZXYsIHJrX29iai0+
c2d0LT5zZ2wsIHJrX29iai0+c2d0LT5uZW50cywKLQkJCSAgICAgICBETUFfVE9fREVWSUNFKTsK
KwlkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UoZHJtLT5kZXYsIHJrX29iai0+c2d0LCBETUFf
VE9fREVWSUNFKTsKIAogCXJldHVybiAwOwogCkBAIC0zNTAsOCArMzQ5LDggQEAgdm9pZCByb2Nr
Y2hpcF9nZW1fZnJlZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJCWlmIChw
cml2YXRlLT5kb21haW4pIHsKIAkJCXJvY2tjaGlwX2dlbV9pb21tdV91bm1hcChya19vYmopOwog
CQl9IGVsc2UgewotCQkJZG1hX3VubWFwX3NnKGRybS0+ZGV2LCBya19vYmotPnNndC0+c2dsLAot
CQkJCSAgICAgcmtfb2JqLT5zZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCQlkbWFf
dW5tYXBfc2d0YWJsZShkcm0tPmRldiwgcmtfb2JqLT5zZ3QsCisJCQkJCSAgRE1BX0JJRElSRUNU
SU9OQUwsIDApOwogCQl9CiAJCWRybV9wcmltZV9nZW1fZGVzdHJveShvYmosIHJrX29iai0+c2d0
KTsKIAl9IGVsc2UgewpAQCAtNDc2LDE1ICs0NzUsMTMgQEAgcm9ja2NoaXBfZ2VtX2RtYV9tYXBf
c2coc3RydWN0IGRybV9kZXZpY2UgKmRybSwKIAkJCXN0cnVjdCBzZ190YWJsZSAqc2csCiAJCQlz
dHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCAqcmtfb2JqKQogewotCWludCBjb3VudCA9IGRtYV9t
YXBfc2coZHJtLT5kZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywKLQkJCSAgICAgICBETUFfQklESVJF
Q1RJT05BTCk7Ci0JaWYgKCFjb3VudCkKLQkJcmV0dXJuIC1FSU5WQUw7CisJaW50IGVyciA9IGRt
YV9tYXBfc2d0YWJsZShkcm0tPmRldiwgc2csIERNQV9CSURJUkVDVElPTkFMLCAwKTsKKwlpZiAo
ZXJyKQorCQlyZXR1cm4gZXJyOwogCiAJaWYgKGRybV9wcmltZV9nZXRfY29udGlndW91c19zaXpl
KHNnKSA8IGF0dGFjaC0+ZG1hYnVmLT5zaXplKSB7CiAJCURSTV9FUlJPUigiZmFpbGVkIHRvIG1h
cCBzZ190YWJsZSB0byBjb250aWd1b3VzIGxpbmVhciBhZGRyZXNzLlxuIik7Ci0JCWRtYV91bm1h
cF9zZyhkcm0tPmRldiwgc2ctPnNnbCwgc2ctPm5lbnRzLAotCQkJICAgICBETUFfQklESVJFQ1RJ
T05BTCk7CisJCWRtYV91bm1hcF9zZ3RhYmxlKGRybS0+ZGV2LCBzZywgRE1BX0JJRElSRUNUSU9O
QUwsIDApOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
