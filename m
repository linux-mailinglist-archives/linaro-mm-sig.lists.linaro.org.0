Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C0E1FF87A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:02:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38C7666572
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:02:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2BA0D66592; Thu, 18 Jun 2020 16:02:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1D74666DB;
	Thu, 18 Jun 2020 15:42:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2437C6654B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1539066588; Thu, 18 Jun 2020 15:40:50 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 9BDBB66572
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:32 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154031euoutp01435e66d1721fe72fd25a5465b9ff2e7d~ZrZy7bGH11844818448euoutp01F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154031euoutp01435e66d1721fe72fd25a5465b9ff2e7d~ZrZy7bGH11844818448euoutp01F
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154031eucas1p1ce6e57d0a2d0556f04a7fcd3183f9cbc~ZrZypCTKs0074000740eucas1p1H;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 17.DE.60679.FEA8BEE5; Thu, 18
 Jun 2020 16:40:31 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154031eucas1p15e6527663f0f925c4b8b86f051c82c0a~ZrZyVgc1-0074000740eucas1p1G;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154031eusmtrp2a2a62a31e0dcabc27719c44266237bf0~ZrZyU6H_i0399203992eusmtrp2i;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-46-5eeb8aefa76e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 72.FE.08375.FEA8BEE5; Thu, 18
 Jun 2020 16:40:31 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154030eusmtip10b580271ad26480dc952d65a4cb35f35~ZrZxrdwLH0833608336eusmtip1T;
 Thu, 18 Jun 2020 15:40:30 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:46 +0200
Message-Id: <20200618153956.29558-26-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+c5lO14Wp2n6oZUxqKzIS0Uc0cRE6NAfKRH9IWStPEzRTd3U
 0oLM0tq8J16YVqsU817TZi4yHeYsc3m/oGbqoNYUDS9glLZ51P573t/zvDwvHx+B8ptwFyJS
 Es9IJcJoAccW03SsGo7OK8xhXvIRAZVl+IhQr4rrcWpdk4dSA8vzHKqy+gNCqd77UksDUwil
 nhnCqX5tKYeSLyk5VG37BJdqWzDi1Kr2MRbAo2se1wD63YoKo5uVE1y6aeUbTk9m6BG6oew2
 PbY2g9L5IxWAfjuawqGzG6sAvajeG2IXausXzkRHJjJST/8rthEmYwcWO+R647uyH08BRU4K
 YENA8gRsbvmFKIAtwSdfAJj/pZfDDksAFqdmouywCGCF+Q7YWsm+v4yzRgWA5ZXPwfZKSkYZ
 Yk1xSG+omFNwrNqRTAOwM8veGkLJaQTKh3tRq+FAnoe5a1rcqjFyPzRNZm9wHukPc/rbN+vc
 YPXL1g1uY+Fd+rSNakjquFDXUoixoSDYo1XjrHaAP/WNXFbvhuvNTxB24S6AU4ZaLjtkAtif
 WrxZ4QvHDb8ttxKW+w7Beq0ni09DfXYO14ohuQOOzO20YtQiH2qKUBbz4IN0Pps+AJX6uu3a
 tp6+zQgN+7q92AfKA7ClxsjNBW7K/10qAKqAM5MgE4sY2TEJc91DJhTLEiQij2sxYjWwfKeu
 Nf3SG6D9c1UHSAII7Hk/LpjD+LgwUZYk1gFIoAJHXmB3VxifFy5MSmakMZelCdGMTAdcCUzg
 zDv+zHSJT4qE8UwUw8Qy0i0XIWxcUkCB6/C9PV8HP/lV7VOGlKcFH6lrcFMbJCfb7epwebqj
 fdfszHRQWa/P4t/QTHShNCS842bSxfSBzwMZpVEHRXFnieDxMvdOh/DVsVO+sa/PqSJ63FuN
 PaU2YyWDTSFyM1Y/GZisaQgQhM46jmtGTdW3Cndl+px5tFAS5/S0KK2gQ4DJIoTeh1GpTPgP
 aCAi/0oDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7rvu17HGUz/zmPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaLzyyw2i7VH7rJbHPzwhNXi
 5655LA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/HyyTGWgmvSFc9nXWZtYJwu1sXIySEhYCLR1/6VFcQWEljKKPFsDzNEXEbi5LQG
 VghbWOLPtS62LkYuoJpPjBITu2eBFbEJGEp0vYVIiAh0MkpM6/7IDuIwC7xikvjwp5URpEpY
 IECi4/d1FhCbRUBV4uX9PrBuXgE7if7LRxghVshLrN5wACzOCRQ/fbwV6iRbiecf2tgmMPIt
 YGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERgr24793LyD8dLG4EOMAhyMSjy8L0Jexwmx
 JpYVV+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4EKMp0FETmaVEk/OBcZxXEm9oamhu
 YWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoFRP29tR/K+7IpHfDGrry4Rur6Z
 +9OtHKfs/Q5LZwv6+pp4LZw+8cre5vmPOR/2rF6Zw5PBz2t6oi5zQ24U79Eb936s2P1iZSh/
 /tdtp7PkxM533dlv+ubWDqOZ6xn88vkvLX5rV/cytuG/U9nbDU9z1jcv3TWpmzvm0LuXbdyr
 pDZONCn/zZzlosRSnJFoqMVcVJwIAL4j8NGrAgAA
X-CMS-MailID: 20200618154031eucas1p15e6527663f0f925c4b8b86f051c82c0a
X-Msg-Generator: CA
X-RootMTR: 20200618154031eucas1p15e6527663f0f925c4b8b86f051c82c0a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154031eucas1p15e6527663f0f925c4b8b86f051c82c0a
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154031eucas1p15e6527663f0f925c4b8b86f051c82c0a@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 25/36] drm: host1x: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMg
fCAyMiArKysrKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9ob3N0MXgvam9i
LmMgYi9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMKaW5kZXggYTEwNjQzYWE4OWFhLi40ODMyYjU3
ZjEwYzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2hvc3QxeC9qb2IuYworKysgYi9kcml2ZXJz
L2dwdS9ob3N0MXgvam9iLmMKQEAgLTE2NiwxMSArMTY2LDkgQEAgc3RhdGljIHVuc2lnbmVkIGlu
dCBwaW5fam9iKHN0cnVjdCBob3N0MXggKmhvc3QsIHN0cnVjdCBob3N0MXhfam9iICpqb2IpCiAJ
CQkJZ290byB1bnBpbjsKIAkJCX0KIAotCQkJZXJyID0gZG1hX21hcF9zZyhkZXYsIHNndC0+c2ds
LCBzZ3QtPm5lbnRzLCBkaXIpOwotCQkJaWYgKCFlcnIpIHsKLQkJCQllcnIgPSAtRU5PTUVNOwor
CQkJZXJyID0gZG1hX21hcF9zZ3RhYmxlKGRldiwgc2d0LCBkaXIsIDApOworCQkJaWYgKGVycikK
IAkJCQlnb3RvIHVucGluOwotCQkJfQogCiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNd
LmRldiA9IGRldjsKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10uZGlyID0gZGlyOwpA
QCAtMjE3LDcgKzIxNSw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3QgaG9z
dDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQl9CiAKIAkJaWYgKCFJU19FTkFC
TEVEKENPTkZJR19URUdSQV9IT1NUMVhfRklSRVdBTEwpICYmIGhvc3QtPmRvbWFpbikgewotCQkJ
Zm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBqKQorCQkJZm9yX2VhY2hfc2d0
YWJsZV9zZyhzZ3QsIHNnLCBqKQogCQkJCWdhdGhlcl9zaXplICs9IHNnLT5sZW5ndGg7CiAJCQln
YXRoZXJfc2l6ZSA9IGlvdmFfYWxpZ24oJmhvc3QtPmlvdmEsIGdhdGhlcl9zaXplKTsKIApAQCAt
MjI5LDkgKzIyNyw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3QgaG9zdDF4
ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQkJCWdvdG8gdW5waW47CiAJCQl9CiAK
LQkJCWVyciA9IGlvbW11X21hcF9zZyhob3N0LT5kb21haW4sCisJCQllcnIgPSBpb21tdV9tYXBf
c2d0YWJsZShob3N0LT5kb21haW4sCiAJCQkJCWlvdmFfZG1hX2FkZHIoJmhvc3QtPmlvdmEsIGFs
bG9jKSwKLQkJCQkJc2d0LT5zZ2wsIHNndC0+bmVudHMsIElPTU1VX1JFQUQpOworCQkJCQlzZ3Qs
IElPTU1VX1JFQUQpOwogCQkJaWYgKGVyciA9PSAwKSB7CiAJCQkJX19mcmVlX2lvdmEoJmhvc3Qt
PmlvdmEsIGFsbG9jKTsKIAkJCQllcnIgPSAtRUlOVkFMOwpAQCAtMjQxLDEyICsyMzksOSBAQCBz
dGF0aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAqaG9zdCwgc3RydWN0IGhv
c3QxeF9qb2IgKmpvYikKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10uc2l6ZSA9IGdh
dGhlcl9zaXplOwogCQkJcGh5c19hZGRyID0gaW92YV9kbWFfYWRkcigmaG9zdC0+aW92YSwgYWxs
b2MpOwogCQl9IGVsc2UgaWYgKHNndCkgewotCQkJZXJyID0gZG1hX21hcF9zZyhob3N0LT5kZXYs
IHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCQkgRE1BX1RPX0RFVklDRSk7Ci0JCQlpZiAoIWVy
cikgewotCQkJCWVyciA9IC1FTk9NRU07CisJCQllcnIgPSBkbWFfbWFwX3NndGFibGUoaG9zdC0+
ZGV2LCBzZ3QsIERNQV9UT19ERVZJQ0UsIDApOworCQkJaWYgKGVycikKIAkJCQlnb3RvIHVucGlu
OwotCQkJfQogCiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRpciA9IERNQV9UT19E
RVZJQ0U7CiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRldiA9IGhvc3QtPmRldjsK
QEAgLTY0Nyw4ICs2NDIsNyBAQCB2b2lkIGhvc3QxeF9qb2JfdW5waW4oc3RydWN0IGhvc3QxeF9q
b2IgKmpvYikKIAkJfQogCiAJCWlmICh1bnBpbi0+ZGV2ICYmIHNndCkKLQkJCWRtYV91bm1hcF9z
Zyh1bnBpbi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywKLQkJCQkgICAgIHVucGluLT5kaXIp
OworCQkJZG1hX3VubWFwX3NndGFibGUodW5waW4tPmRldiwgc2d0LCB1bnBpbi0+ZGlyLCAwKTsK
IAogCQlob3N0MXhfYm9fdW5waW4oZGV2LCB1bnBpbi0+Ym8sIHNndCk7CiAJCWhvc3QxeF9ib19w
dXQodW5waW4tPmJvKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
