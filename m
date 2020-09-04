Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A5E25DA35
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:43:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 062156675B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:43:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E6E2166762; Fri,  4 Sep 2020 13:43:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B0BE66765;
	Fri,  4 Sep 2020 13:35:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8EAE266743
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8257966752; Fri,  4 Sep 2020 13:35:11 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 6640366743
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:00 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133459euoutp01a34f00f4c2764b97a6e1b9158c9273dc~xmAdEci-i0637106371euoutp01-
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133459euoutp01a34f00f4c2764b97a6e1b9158c9273dc~xmAdEci-i0637106371euoutp01-
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133459eucas1p2470f372354f9d14efb1f5ba50c609de8~xmAcvLAz-1449414494eucas1p2h;
 Fri,  4 Sep 2020 13:34:59 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id F3.39.06318.382425F5; Fri,  4
 Sep 2020 14:34:59 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133459eucas1p106f61f640aa6d0007e42708a0fd15fb8~xmAcgU37M0118801188eucas1p1x;
 Fri,  4 Sep 2020 13:34:59 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133459eusmtrp24fd3aa68a19ba87587796d059123d3bb~xmAcfl8-B0905809058eusmtrp2d;
 Fri,  4 Sep 2020 13:34:59 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-92-5f524283b496
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C9.AE.06314.282425F5; Fri,  4
 Sep 2020 14:34:59 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133458eusmtip1782a93cbfe5f9ff8a3a93f879c981a30~xmAb9D7GT1624216242eusmtip1m;
 Fri,  4 Sep 2020 13:34:58 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:50 +0200
Message-Id: <20200904131711.12950-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djP87rNTkHxBrOPCFr0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfJ63ic3iy5WHTBabHl9jtbi8aw6bxdojd9ktDn54wmrx
 Ye1XJgdejzXz1jB67P22gMVj56y77B7bvz1g9bjffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP
 vi2rGD0+b5IL4I7isklJzcksSy3St0vgyjjw/D9jwT2piveHQhoY54l1MXJySAiYSByb/J2t
 i5GLQ0hgBaPEz+YudpCEkMAXRonb29UgEp8ZJT4em84M07H2yQd2iMRyRol7bW1QDlDHladd
 YFVsAoYSXW+72EBsEYFWRokTvTwgRcwCl5kk5h9tYgFJCAsESnxfcZwVxGYRUJXo+b0ZzOYV
 sJP4vukMG8Q6eYnVGw6ADeUEim+d8YQVZJCEwCF2ialXbrNAFLlIrPjwgRHCFpZ4dXwLO4Qt
 I/F/53wmiIZmRomH59ayQzg9jBKXm2ZAdVhL3Dn3C2gdB9B9mhLrd+lDhB0lZj7axQQSlhDg
 k7jxVhAkzAxkTtoGCguQMK9ER5sQRLWaxKzj6+DWHrxwCRpcHhK77z9lhYTQREaJ8y+PM05g
 lJ+FsGwBI+MqRvHU0uLc9NRi47zUcr3ixNzi0rx0veT83E2MwNR0+t/xrzsY9/1JOsQowMGo
 xMPLYB8UL8SaWFZcmXuIUYKDWUmE1+ns6Tgh3pTEyqrUovz4otKc1OJDjNIcLErivMaLXsYK
 CaQnlqRmp6YWpBbBZJk4OKUaGDmVLvHNyu6c8bdJY+7GnseMrR1mXa1ikt6lDxt7gtvfaM73
 fZHYH3PbokzO0Oct376r+iLauyts6z+03u6eoX3fT2SGPqu5+ZodpifMN5wpn82XbWmlOrX5
 xJ2fIqsV9zMasbxUN+15q+G8a3Xy4bcxJ+43n6z6VJmne9DEdu1H/Yym82fNlFiKMxINtZiL
 ihMBRXeVJEkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7rNTkHxBh3zmCx6z51kstg4Yz2r
 xf9tE5ktrnx9z2axcvVRJosF+60tPs/bxGbx5cpDJotNj6+xWlzeNYfNYu2Ru+wWBz88YbX4
 sPYrkwOvx5p5axg99n5bwOKxc9Zddo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH
 35ZVjB6fN8kFcEfp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSW
 pRbp2yXoZRx4/p+x4J5UxftDIQ2M88S6GDk5JARMJNY++cDexcjFISSwlFFiR8s1doiEjMTJ
 aQ2sELawxJ9rXWwQRZ8YJW6/ussMkmATMJToeguREBHoZJSY1v0RbBSzwG0miTNzJ4BVCQv4
 S2z6+YgFxGYRUJXo+b0ZbCyvgJ3E901n2CBWyEus3nAArJ4TKL51xhOwGiEBW4kPcxazTGDk
 W8DIsIpRJLW0ODc9t9hQrzgxt7g0L10vOT93EyMwVrYd+7l5B+OljcGHGAU4GJV4eBnsg+KF
 WBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIjRFOioicxSosn5wDjOK4k3NDU0
 t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAmHD0QH/Nbbvv8pIvqvezas+z
 TzS/fiTdl8f+Xl/hbf7f5duiLvufFpEQju2c77zLI+lEfMzvZs3kTpYDc4XkZ6yymbRIwr8j
 9u+ie15iWiEuMf6ii1tdBE4lWzFouk3eYKFp6f75DfP691u/MbsbPnQsKOd40nxGbMXxvzdj
 26oLdjz/qWenxFKckWioxVxUnAgAfw5IIqsCAAA=
X-CMS-MailID: 20200904133459eucas1p106f61f640aa6d0007e42708a0fd15fb8
X-Msg-Generator: CA
X-RootMTR: 20200904133459eucas1p106f61f640aa6d0007e42708a0fd15fb8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133459eucas1p106f61f640aa6d0007e42708a0fd15fb8
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133459eucas1p106f61f640aa6d0007e42708a0fd15fb8@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 09/30] drm: lima: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IFFpYW5nIFl1IDx5dXE4MjVA
Z21haWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMgfCAxMSArKysr
KysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV92bS5jICB8ICA1ICsrLS0tCiAyIGZp
bGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9saW1h
L2xpbWFfZ2VtLmMKaW5kZXggMTU1ZjJiNGI0MDMwLi4xMTIyM2ZlMzQ4ZGYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2xp
bWEvbGltYV9nZW0uYwpAQCAtNjksOCArNjksNyBAQCBpbnQgbGltYV9oZWFwX2FsbG9jKHN0cnVj
dCBsaW1hX2JvICpibywgc3RydWN0IGxpbWFfdm0gKnZtKQogCQlyZXR1cm4gcmV0OwogCiAJaWYg
KGJvLT5iYXNlLnNndCkgewotCQlkbWFfdW5tYXBfc2coZGV2LCBiby0+YmFzZS5zZ3QtPnNnbCwK
LQkJCSAgICAgYm8tPmJhc2Uuc2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlkbWFf
dW5tYXBfc2d0YWJsZShkZXYsIGJvLT5iYXNlLnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwog
CQlzZ19mcmVlX3RhYmxlKGJvLT5iYXNlLnNndCk7CiAJfSBlbHNlIHsKIAkJYm8tPmJhc2Uuc2d0
ID0ga21hbGxvYyhzaXplb2YoKmJvLT5iYXNlLnNndCksIEdGUF9LRVJORUwpOwpAQCAtODAsNyAr
NzksMTMgQEAgaW50IGxpbWFfaGVhcF9hbGxvYyhzdHJ1Y3QgbGltYV9ibyAqYm8sIHN0cnVjdCBs
aW1hX3ZtICp2bSkKIAkJfQogCX0KIAotCWRtYV9tYXBfc2coZGV2LCBzZ3Quc2dsLCBzZ3QubmVu
dHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwlyZXQgPSBkbWFfbWFwX3NndGFibGUoZGV2LCAmc2d0
LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CisJaWYgKHJldCkgeworCQlzZ19mcmVlX3RhYmxlKCZz
Z3QpOworCQlrZnJlZShiby0+YmFzZS5zZ3QpOworCQliby0+YmFzZS5zZ3QgPSBOVUxMOworCQly
ZXR1cm4gcmV0OworCX0KIAogCSpiby0+YmFzZS5zZ3QgPSBzZ3Q7CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfdm0uYyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFf
dm0uYwppbmRleCA1YjkyZmI4MjY3NGEuLjJiMjczOWFkYzdmNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2xpbWEvbGltYV92bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFf
dm0uYwpAQCAtMTI0LDcgKzEyNCw3IEBAIGludCBsaW1hX3ZtX2JvX2FkZChzdHJ1Y3QgbGltYV92
bSAqdm0sIHN0cnVjdCBsaW1hX2JvICpibywgYm9vbCBjcmVhdGUpCiAJaWYgKGVycikKIAkJZ290
byBlcnJfb3V0MTsKIAotCWZvcl9lYWNoX3NnX2RtYV9wYWdlKGJvLT5iYXNlLnNndC0+c2dsLCAm
c2dfaXRlciwgYm8tPmJhc2Uuc2d0LT5uZW50cywgMCkgeworCWZvcl9lYWNoX3NndGFibGVfZG1h
X3BhZ2UoYm8tPmJhc2Uuc2d0LCAmc2dfaXRlciwgMCkgewogCQllcnIgPSBsaW1hX3ZtX21hcF9w
YWdlKHZtLCBzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJnNnX2l0ZXIpLAogCQkJCSAgICAgICBi
b192YS0+bm9kZS5zdGFydCArIG9mZnNldCk7CiAJCWlmIChlcnIpCkBAIC0yOTgsOCArMjk4LDcg
QEAgaW50IGxpbWFfdm1fbWFwX2JvKHN0cnVjdCBsaW1hX3ZtICp2bSwgc3RydWN0IGxpbWFfYm8g
KmJvLCBpbnQgcGFnZW9mZikKIAltdXRleF9sb2NrKCZ2bS0+bG9jayk7CiAKIAliYXNlID0gYm9f
dmEtPm5vZGUuc3RhcnQgKyAocGFnZW9mZiA8PCBQQUdFX1NISUZUKTsKLQlmb3JfZWFjaF9zZ19k
bWFfcGFnZShiby0+YmFzZS5zZ3QtPnNnbCwgJnNnX2l0ZXIsCi0JCQkgICAgIGJvLT5iYXNlLnNn
dC0+bmVudHMsIHBhZ2VvZmYpIHsKKwlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9wYWdlKGJvLT5iYXNl
LnNndCwgJnNnX2l0ZXIsIHBhZ2VvZmYpIHsKIAkJZXJyID0gbGltYV92bV9tYXBfcGFnZSh2bSwg
c2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZzZ19pdGVyKSwKIAkJCQkgICAgICAgYmFzZSArIG9m
ZnNldCk7CiAJCWlmIChlcnIpCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
