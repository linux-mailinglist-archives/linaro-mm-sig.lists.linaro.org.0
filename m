Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DA96F252793
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:42:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BE03617DE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:42:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F2F8361873; Wed, 26 Aug 2020 06:42:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D398166627;
	Wed, 26 Aug 2020 06:36:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CC3576087F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C0338619B7; Wed, 26 Aug 2020 06:35:40 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 59DE16087F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:33 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063532euoutp010f034ab3d8533b3f01eb92bdc4942cac~uvep42Dfz1717217172euoutp01X
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063532euoutp010f034ab3d8533b3f01eb92bdc4942cac~uvep42Dfz1717217172euoutp01X
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063532eucas1p1c5382498e35b316d615de0e68e361b34~uveplMohD1475914759eucas1p1c;
 Wed, 26 Aug 2020 06:35:32 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 4E.23.06456.4B2064F5; Wed, 26
 Aug 2020 07:35:32 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063531eucas1p18dbb3c42b2ecc490360e7a75cf579af6~uvepRc1_b1289512895eucas1p1c;
 Wed, 26 Aug 2020 06:35:31 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063531eusmtrp2c6ddecca99882a01b52665c1a9eb88cd~uvepQuhRj0466204662eusmtrp2E;
 Wed, 26 Aug 2020 06:35:31 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-ba-5f4602b47c75
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id CD.43.06017.3B2064F5; Wed, 26
 Aug 2020 07:35:31 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063531eusmtip2f1c4e657ba9c308fbe715b9adb179fcb~uveogjcW30302303023eusmtip2v;
 Wed, 26 Aug 2020 06:35:30 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:51 +0200
Message-Id: <20200826063316.23486-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSbUhTYRTHeXbv7u6Wi9sUfLBIGCQkqJkKT1r2Hhe/FFEfzNSmXlTUKbtq
 6Yc0xV7mu5JOUTOxVr7kXMPSynJoU0SnzsJQM9HA+V46sUhr86p9+53/Of/nfzg8JCbp5zuR
 0fJERiGXxUoJEd7y8ZfRTce7EHpE3y5Euf09PNSsauKjvy2FGBq2LBHoeX0XDxVNFOCo+r0f
 mvk6iKP8qTkMGY0aAerLmBeg1eFJHtJOfeYjU1sFgVTGdh5q7BwXoI7laT5SFZuJUxK6oaoB
 0O/WqnFaW/eAoF+tfePTE9kGHv2yNo0e3ZzC6OIRNaDffEkn6DxdHaBXtAcv7bkmOh7BxEYn
 MwoP/xuiqJJZ3wSz/a0O/QiRDkyUEghJSHlD80wJUAIRKaGeAdhVose4YhXAso0ffK5YAfBt
 TSuxY/n0ZF5gYwmlBtDQQO061gcMuK1BUJ5QuaDcMjhQWQB259rZhjBKjcPK+g2+rWFPXYZl
 rXpgY5w6BLNU6i0WUyfgkCZ/O80Z1ms+YDYWUv7QkG3TRVbdLICmzCWMGzoHO8fGAcf2cNag
 E3B8AP5tfcTjDJkATvY3CrgiB0BThmrb4QfH+n9bnyWt+x2GTW0enHwaLj9Wb8mQ2gtHFvbZ
 ZMyKRS2lGCeL4f27Em7aBZYbXuzGdgwMba9Gw7mVWZy7ViGAxXnXC4Bz+f+sagDqgCOTxMZF
 MqynnLnpzsri2CR5pHt4fJwWWH9Z76bh52tgGQrTA4oEUjtxNXE+VMKXJbMpcXoASUzqID7T
 1xsiEUfIUlIZRXyoIimWYfVgP4lLHcVeNeZgCRUpS2RiGCaBUex0eaTQKR0kZi6WWi56OTd6
 OJpuh9dOLhMxbFts6uLz4CxYoR0tzbH4PXV7VuSSXqzMs7MfvDoZlq2w3A26X+95cnPGoFv1
 PnY2YHipuUYu7J7/c289cM5SyVQ44GnDf64GHhX63HF76HMlmjBOpy40hPT4a8SayIDoKr04
 nKlzfRRU+d1XirNRMk9XTMHK/gG2sci0YQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIIsWRmVeSWpSXmKPExsVy+t/xe7qbmdziDf6/1LPoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwm3Z/AYrFgv7XFi3sXWSz6H79mtjh/fgO7xdmmN+wWX648ZLLY
 9Pgaq8XlXXPYLGac38dksfbIXXaLgx+esFrMmPySzUHIY828NYwee78tYPHYtKqTzWP7twes
 Hve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObRt2UVo8fnTXIB3FF6NkX5pSWpChn5xSW2StGG
 FkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GdNeWRW8FK44eOgGWwPjZYEuRk4O
 CQETiatL37B3MXJxCAksZZSYc2MiK0RCRuLktAYoW1jiz7UuNoiiT4wSm+4dYQNJsAkYSnS9
 hUiICHQySkzr/gg2illgM4vEv/VP2EGqhAUCJG7eW8cIYrMIqEq0zlgOZvMK2Epc2tDPBrFC
 XmL1hgPMIDangJ3E8W6IuBBQzem1M5gnMPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJ
 ERhd24793LKDsetd8CFGAQ5GJR7eBWyu8UKsiWXFlbmHGCU4mJVEeJ3Ono4T4k1JrKxKLcqP
 LyrNSS0+xGgKdNREZinR5Hxg5OeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgt
 gulj4uCUamA8/TJbhenpigjJYq8dZaFh1TN26PBVPxesZzBLVCiuum94W8pg88v37A3ruiW7
 N+5TnFa96mboqxrzbW/uSH2bH3fpI8Mux8m7Os5zzT3758Hmmam3frKkP4laeFhM1zbhw3Jz
 EwkbneJnsx3/XZx438/DXvTiB7nPWlf2dMnsYasrsjlVmHVUiaU4I9FQi7moOBEAUhc//sQC
 AAA=
X-CMS-MailID: 20200826063531eucas1p18dbb3c42b2ecc490360e7a75cf579af6
X-Msg-Generator: CA
X-RootMTR: 20200826063531eucas1p18dbb3c42b2ecc490360e7a75cf579af6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063531eucas1p18dbb3c42b2ecc490360e7a75cf579af6
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063531eucas1p18dbb3c42b2ecc490360e7a75cf579af6@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 07/32] drm: exynos: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IEFuZHJ6ZWogSGFqZGEgPGEu
aGFqZGFAc2Ftc3VuZy5jb20+CkFja2VkLWJ5IDogSW5raSBEYWUgPGlua2kuZGFlQHNhbXN1bmcu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nMmQuYyB8IDEwICsr
KysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jCmluZGV4IDAzYmUzMTQyNzE4
MS4uOTY3YTVjZGMxMjBlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5v
c19kcm1fZzJkLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5j
CkBAIC0zOTUsOCArMzk1LDggQEAgc3RhdGljIHZvaWQgZzJkX3VzZXJwdHJfcHV0X2RtYV9hZGRy
KHN0cnVjdCBnMmRfZGF0YSAqZzJkLAogCQlyZXR1cm47CiAKIG91dDoKLQlkbWFfdW5tYXBfc2co
dG9fZG1hX2RldihnMmQtPmRybV9kZXYpLCBnMmRfdXNlcnB0ci0+c2d0LT5zZ2wsCi0JCQlnMmRf
dXNlcnB0ci0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCWRtYV91bm1hcF9zZ3Rh
YmxlKHRvX2RtYV9kZXYoZzJkLT5kcm1fZGV2KSwgZzJkX3VzZXJwdHItPnNndCwKKwkJCSAgRE1B
X0JJRElSRUNUSU9OQUwsIDApOwogCiAJcGFnZXMgPSBmcmFtZV92ZWN0b3JfcGFnZXMoZzJkX3Vz
ZXJwdHItPnZlYyk7CiAJaWYgKCFJU19FUlIocGFnZXMpKSB7CkBAIC01MTEsMTAgKzUxMSwxMCBA
QCBzdGF0aWMgZG1hX2FkZHJfdCAqZzJkX3VzZXJwdHJfZ2V0X2RtYV9hZGRyKHN0cnVjdCBnMmRf
ZGF0YSAqZzJkLAogCiAJZzJkX3VzZXJwdHItPnNndCA9IHNndDsKIAotCWlmICghZG1hX21hcF9z
Zyh0b19kbWFfZGV2KGcyZC0+ZHJtX2RldiksIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCURN
QV9CSURJUkVDVElPTkFMKSkgeworCXJldCA9IGRtYV9tYXBfc2d0YWJsZSh0b19kbWFfZGV2KGcy
ZC0+ZHJtX2RldiksIHNndCwKKwkJCSAgICAgIERNQV9CSURJUkVDVElPTkFMLCAwKTsKKwlpZiAo
cmV0KSB7CiAJCURSTV9ERVZfRVJST1IoZzJkLT5kZXYsICJmYWlsZWQgdG8gbWFwIHNndCB3aXRo
IGRtYSByZWdpb24uXG4iKTsKLQkJcmV0ID0gLUVOT01FTTsKIAkJZ290byBlcnJfc2dfZnJlZV90
YWJsZTsKIAl9CiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
