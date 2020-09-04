Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C4225DA8E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:54:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2774E66749
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:54:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19BA766762; Fri,  4 Sep 2020 13:54:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 132D766781;
	Fri,  4 Sep 2020 13:37:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BBAA26674C
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B07FC66775; Fri,  4 Sep 2020 13:36:21 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 4ECF36674C
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:07 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133506euoutp02f79fadeccc1b8998e1ca0a8fd6ccedfa~xmAjZYqvO2890028900euoutp02p
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133506euoutp02f79fadeccc1b8998e1ca0a8fd6ccedfa~xmAjZYqvO2890028900euoutp02p
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133506eucas1p24a30d84b5e029fac5fcbb8f780fa112b~xmAjIoLIu0781807818eucas1p27;
 Fri,  4 Sep 2020 13:35:06 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A6.11.06456.A82425F5; Fri,  4
 Sep 2020 14:35:06 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133505eucas1p2de5392a85883aca8e7774735811eb4c8~xmAi2931i1447814478eucas1p2v;
 Fri,  4 Sep 2020 13:35:05 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133505eusmtrp2adf1426bc98b35548c05ea243dbea175~xmAi2KorI0977109771eusmtrp2H;
 Fri,  4 Sep 2020 13:35:05 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-56-5f52428a56ab
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DC.A0.06017.982425F5; Fri,  4
 Sep 2020 14:35:05 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133505eusmtip1a7993933030331dbd7a6496ff66e9951~xmAiQPV7d1939819398eusmtip15;
 Fri,  4 Sep 2020 13:35:05 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:17:01 +0200
Message-Id: <20200904131711.12950-21-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSxVYRz2nq97yK3TZfOOlu1uWpnI+OOYplhrZ7XKFIsW3XLCcNm9iFZL
 WY0rn0lYYsrX9S0uaVZuIvlI9xKNREw0inyUEt3TufTf83ue3/M+z357SVTUgJuTQdIIViaV
 hIgJI0zVtvJmr8LNw29folZAJ/V0IHRNVhVOr6vSULpv6RtBl5a9ROj8Z870Yt8YQteOv8Pp
 mdY2QGub7hN0ResHAd0yN4HTZQmuB4VM+YNywDQv52NMw/IoznxMbEeYx4+uMUNr4yhzZ7AY
 ME/fxxJMcp0SMAu1O5mvebOE+xYfo/3+bEhQFCuzczlnFDg9v4KFp5pFrxYWIbGgwEQBDElI
 OcK33YsCBTAiRVQJgJ9WVAQ/LAL4eaAe44cFALWaXLBhGRmN1wvFACp/p4NNi/Z1KcZtEZQ9
 VMwqCA6bUjcBfJVkzC2h1B8EasbTcU4woU7C7LhuhMMYZQUXh4r/GYSUC+yY7MD4OEtYVv0c
 5bChjq/PmsC5hyClFsDMlEl9p0NQVdmP8tgEfmmvE/B4B1x/kofwhjgAx3oqBPxwW9f1Rpbe
 7QyHe37pokldvz2wqsmOp12hcrwI52hIbYWDs9s5GtXBdNU9lKeFMP6WiN/eBXPaKzdjW3o1
 +joM1A4X6I+aBmCKZgpJBZY5/8PyAVACMzZSHhrAyu2l7CVbuSRUHikNsL0QFloLdN+pc639
 eyNY0pxXA4oEYmOhwQEPPxEuiZLHhKoBJFGxqdCtu9NXJPSXxFxmZWF+ssgQVq4GFiQmNhM6
 FEyfFVEBkgg2mGXDWdmGipCG5rHA6W6uV3b3aqpFz1HjY2ara0muJcL5tvJccYZDAHoq7jjS
 fKXQTvowc/dk5bafiE9fcoZNl/2Zoh9NRwgvT2rOuqorMc3SUaN0t4k+4UmZtqUh1YxrIzF9
 cch7ZLqZwE9bya47edfk9yb4vjCY0eJlXqzhVPzVw44DVhHBnf2NYkweKLG3RmVyyV+FKjyT
 SgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7qdTkHxBtuWGlr0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBZvjhxjtLi8aw6bxdojd9ktDn54wmqx
 utPRgddjzbw1jB57vy1g8dj+7QGrx/3u40wem5fUe9z+95jZY/KN5Yweu282sHn0bVnF6PF5
 k5zHu/lv2QK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstS
 i/TtEvQyXn78yVIwQbziz9JlTA2Mi4S7GDk5JARMJO496GDpYuTiEBJYyihxafJORoiEjMTJ
 aQ2sELawxJ9rXWwQRZ8YJdbfuMkOkmATMJToeguREBHoZJSY1v0RLMEs0Mwscf5lLYgtLBAo
 sW/eExYQm0VAVeLL7eVsIDavgJ3EyWcnWSA2yEus3nCAGcTmBIpvnfEEbLOQgK3EhzmLWSYw
 8i1gZFjFKJJaWpybnltspFecmFtcmpeul5yfu4kRGCnbjv3csoOx613wIUYBDkYlHl4G+6B4
 IdbEsuLK3EOMEhzMSiK8TmdPxwnxpiRWVqUW5ccXleakFh9iNAU6aiKzlGhyPjCK80riDU0N
 zS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MFruLvZg3Ccs3i5S2GqcorHO
 yXdiEXfnmqnz/m79Pt/lzpFjzj92cexXMF3pJfBhwtPm95vOBK+XjTBI1rRxr2bS0n1se7+j
 8/NxtkWH9/AkGDLL2HQ1MB2ef3zdnFqvXul1fizZb6ebudhNvmfsGth969/lf26nlypkWbHo
 pk4PU2q+u+LASyWW4oxEQy3mouJEALruKeyqAgAA
X-CMS-MailID: 20200904133505eucas1p2de5392a85883aca8e7774735811eb4c8
X-Msg-Generator: CA
X-RootMTR: 20200904133505eucas1p2de5392a85883aca8e7774735811eb4c8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133505eucas1p2de5392a85883aca8e7774735811eb4c8
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133505eucas1p2de5392a85883aca8e7774735811eb4c8@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Roland Scheidegger <sroland@vmware.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 20/30] drm: vmwgfx: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQWNrZWQtYnk6IFJvbGFuZCBTY2hlaWRlZ2dlciA8
c3JvbGFuZEB2bXdhcmUuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0
bV9idWZmZXIuYyB8IDE3ICsrKystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dm
eF90dG1fYnVmZmVyLmMKaW5kZXggYzdmMTBiMmM5M2QyLi4xM2MzMWUyZDcyNTQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0bV9idWZmZXIuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMKQEAgLTM2Miw4ICszNjIsNyBA
QCBzdGF0aWMgdm9pZCB2bXdfdHRtX3VubWFwX2Zyb21fZG1hKHN0cnVjdCB2bXdfdHRtX3R0ICp2
bXdfdHQpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gdm13X3R0LT5kZXZfcHJpdi0+ZGV2LT5k
ZXY7CiAKLQlkbWFfdW5tYXBfc2coZGV2LCB2bXdfdHQtPnNndC5zZ2wsIHZtd190dC0+c2d0Lm5l
bnRzLAotCQlETUFfQklESVJFQ1RJT05BTCk7CisJZG1hX3VubWFwX3NndGFibGUoZGV2LCAmdm13
X3R0LT5zZ3QsIERNQV9CSURJUkVDVElPTkFMLCAwKTsKIAl2bXdfdHQtPnNndC5uZW50cyA9IHZt
d190dC0+c2d0Lm9yaWdfbmVudHM7CiB9CiAKQEAgLTM4MywxNiArMzgyLDggQEAgc3RhdGljIHZv
aWQgdm13X3R0bV91bm1hcF9mcm9tX2RtYShzdHJ1Y3Qgdm13X3R0bV90dCAqdm13X3R0KQogc3Rh
dGljIGludCB2bXdfdHRtX21hcF9mb3JfZG1hKHN0cnVjdCB2bXdfdHRtX3R0ICp2bXdfdHQpCiB7
CiAJc3RydWN0IGRldmljZSAqZGV2ID0gdm13X3R0LT5kZXZfcHJpdi0+ZGV2LT5kZXY7Ci0JaW50
IHJldDsKLQotCXJldCA9IGRtYV9tYXBfc2coZGV2LCB2bXdfdHQtPnNndC5zZ2wsIHZtd190dC0+
c2d0Lm9yaWdfbmVudHMsCi0JCQkgRE1BX0JJRElSRUNUSU9OQUwpOwotCWlmICh1bmxpa2VseShy
ZXQgPT0gMCkpCi0JCXJldHVybiAtRU5PTUVNOwogCi0Jdm13X3R0LT5zZ3QubmVudHMgPSByZXQ7
Ci0KLQlyZXR1cm4gMDsKKwlyZXR1cm4gZG1hX21hcF9zZ3RhYmxlKGRldiwgJnZtd190dC0+c2d0
LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CiB9CiAKIC8qKgpAQCAtNDQ5LDEwICs0NDAsMTAgQEAg
c3RhdGljIGludCB2bXdfdHRtX21hcF9kbWEoc3RydWN0IHZtd190dG1fdHQgKnZtd190dCkKIAkJ
aWYgKHVubGlrZWx5KHJldCAhPSAwKSkKIAkJCWdvdG8gb3V0X3NnX2FsbG9jX2ZhaWw7CiAKLQkJ
aWYgKHZzZ3QtPm51bV9wYWdlcyA+IHZtd190dC0+c2d0Lm5lbnRzKSB7CisJCWlmICh2c2d0LT5u
dW1fcGFnZXMgPiB2bXdfdHQtPnNndC5vcmlnX25lbnRzKSB7CiAJCQl1aW50NjRfdCBvdmVyX2Fs
bG9jID0KIAkJCQlzZ2xfc2l6ZSAqICh2c2d0LT5udW1fcGFnZXMgLQotCQkJCQkgICAgdm13X3R0
LT5zZ3QubmVudHMpOworCQkJCQkgICAgdm13X3R0LT5zZ3Qub3JpZ19uZW50cyk7CiAKIAkJCXR0
bV9tZW1fZ2xvYmFsX2ZyZWUoZ2xvYiwgb3Zlcl9hbGxvYyk7CiAJCQl2bXdfdHQtPnNnX2FsbG9j
X3NpemUgLT0gb3Zlcl9hbGxvYzsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
