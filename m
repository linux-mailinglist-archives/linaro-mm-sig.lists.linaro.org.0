Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 392582527DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:53:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A5DA6013C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:53:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5B86C60749; Wed, 26 Aug 2020 06:53:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14528666EF;
	Wed, 26 Aug 2020 06:37:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BD08165F8C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:36:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AC3AB66635; Wed, 26 Aug 2020 06:36:23 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id B8D1465F8C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:42 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063541euoutp0153e03b5559d93ce921aad856fbd42de7~uveytA5wp2036420364euoutp01J
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063541euoutp0153e03b5559d93ce921aad856fbd42de7~uveytA5wp2036420364euoutp01J
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063541eucas1p25d190a48f46f33e47788594980fc2ad1~uveyUv41l0402704027eucas1p2s;
 Wed, 26 Aug 2020 06:35:41 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 8A.33.06456.DB2064F5; Wed, 26
 Aug 2020 07:35:41 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063540eucas1p2dc6829c66ae13b8e787ca40b9aede3df~uvexv_2_J0401804018eucas1p2k;
 Wed, 26 Aug 2020 06:35:40 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063540eusmtrp262a1eb3c5d27915d22297ddfc0094071~uvexvaUnQ0466204662eusmtrp2Z;
 Wed, 26 Aug 2020 06:35:40 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-d9-5f4602bd17a0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A8.53.06017.CB2064F5; Wed, 26
 Aug 2020 07:35:40 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063540eusmtip21783f52e3b3c400cdc13258da026b04c~uvexKjbwI0092600926eusmtip2C;
 Wed, 26 Aug 2020 06:35:40 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:06 +0200
Message-Id: <20200826063316.23486-23-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+87Zzs6mk9O0/NJKGBRYpJkGJy3L0DhdSIv+KstWHlTUKZta
 Sug0spyXMqFMJFdzzWumybykqMs2Q1qllppaDaWwWPOeWsw2j9p/v/d5n4fn5ePDUUEL2wWP
 EifQErEoRojxWBrdgmFXK3IkbLey2JXMNbxGyNrCGja5pMlHyb5ZM0aWV75CSEWbHznTZ0TI
 utGPbLK3uRgjqztHOOREpZlNdkyMscnf9QXIIT5V9bAKUMOqJkC1zilYVMPcVzb1JVuPUM9L
 06ghyyhKFQyoAfVyoo9FvRiUYVRefQWgpuu2htif5e0Pp2OikmiJp/9FXmRJhQ7E5zlcvWkZ
 BjJgspMDLg4JHzjSOcuRAx4uIMoAlJXNo8wwA+BkmQyzuQTENICDHdGriU+D71cSagBHyxux
 tYRyMpdlc2GEF5Sb5MtpJ+IGgF259jYTSswj0PCki2NbOBLBcEr5HbExi9gGH3wuRm3MJ/xh
 YVkOytS5wcpn7cvMter67NvLbZAwcKBpsZ3FmALhz5YPGMOO8Ie+nsPwZrjUVIIwgesAGg3V
 HGbIAbA3oxAwLj84bFi0pnHrfe6wptmTkQOgLn0WscmQcIADpvU2GbXiXc19lJH58FamgHFv
 h0X6p2u1He96Vu6nYPtQD8K8UD6Af01yzh3gVvS/TAFABXCmE6WxEbTUS0xf8ZCKYqWJ4giP
 y3GxdcD6p7ot+qlGMNtzSQsIHAjt+QosKEzAFiVJk2O1AOKo0Il/+E33BQE/XJScQkviwiSJ
 MbRUC1xxltCZ7/14/LyAiBAl0NE0HU9LVrcIznWRAd+lXktAYOYYNPq65pyW7BQdD4mzH7GL
 UpxSVbVp693PZPk1Oy9eC0pS9d8TJ+wNOTpzLKh7o3nfQo13eVGoTibO7Nc1bMIHNdq3v0LP
 qTeoqegT1anqPbrwdam82pQ/B4JVLhk6bVZu1kFHk1Na6fg4p/vkjE+w0fyNuyX9kVLIkkaK
 vHagEqnoH0NqTbxPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7p7mNziDW7uNLXoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12iw+r37NaHPzwhNXi
 +5bJTA68HmvmrWH0uLN0J6PH3m8LWDy2f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+EPV1g8
 dt9sYPPo27KK0ePzJrkAnig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07
 m5TUnMyy1CJ9uwS9jPmrjjEW9PFVtP+7w9jA+Ja7i5GTQ0LAROLWzYvsXYxcHEICSxklTvzv
 YoFIyEicnNbACmELS/y51sUGUfSJUeLiqyuMIAk2AUOJrrcQCRGBTkaJad0fwUYxC/xjkjix
 dzsTSJWwgK/EnA1dYKNYBFQlZt6bwwxi8wrYScxY0cMMsUJeYvWGA2A2J1D8eHc/G4gtJGAr
 cXrtDOYJjHwLGBlWMYqklhbnpucWG+kVJ+YWl+al6yXn525iBMbNtmM/t+xg7HoXfIhRgINR
 iYd3AZtrvBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0OR8Y
 03kl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhgvaFs3chqfYVUQ
 vnHysfJ3To0GrZeHO5nWPZ9ZzJ87R+izkMiZ+y5/ko53pQQflFp5/+qfCtZZ2izmS59MnXkg
 mKmv9UTfZf3cmaEr9i+UEilgmMdzecYSN70TayRNuFrnlHnkqPF+rMo5xJO36IX0SQ7XtxsM
 tV8mCveoHZq32/tXzGuewFQlluKMREMt5qLiRACCkIX+sQIAAA==
X-CMS-MailID: 20200826063540eucas1p2dc6829c66ae13b8e787ca40b9aede3df
X-Msg-Generator: CA
X-RootMTR: 20200826063540eucas1p2dc6829c66ae13b8e787ca40b9aede3df
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063540eucas1p2dc6829c66ae13b8e787ca40b9aede3df
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063540eucas1p2dc6829c66ae13b8e787ca40b9aede3df@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Daniel Vetter <daniel@ffwll.ch>, xen-devel@lists.xenproject.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 22/32] drm: xen: fix common struct
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
ZW0uYwppbmRleCAzOWZmOTViNzUzNTcuLjBlNTdjODAwNThiMiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3hlbi94ZW5fZHJtX2Zyb250X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS94
ZW4veGVuX2RybV9mcm9udF9nZW0uYwpAQCAtMjE2LDcgKzIxNiw3IEBAIHhlbl9kcm1fZnJvbnRf
Z2VtX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQlyZXR1cm4gRVJS
X1BUUihyZXQpOwogCiAJRFJNX0RFQlVHKCJJbXBvcnRlZCBidWZmZXIgb2Ygc2l6ZSAlenUgd2l0
aCBuZW50cyAldVxuIiwKLQkJICBzaXplLCBzZ3QtPm5lbnRzKTsKKwkJICBzaXplLCBzZ3QtPm9y
aWdfbmVudHMpOwogCiAJcmV0dXJuICZ4ZW5fb2JqLT5iYXNlOwogfQotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
