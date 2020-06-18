Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B1F1FF846
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:56:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC88B66572
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:56:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DF66C66576; Thu, 18 Jun 2020 15:56:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5554366611;
	Thu, 18 Jun 2020 15:42:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 960FC66588
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 82758665BF; Thu, 18 Jun 2020 15:40:42 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 2F06E66588
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:28 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154027euoutp020dbabce05d6ee86cfcd9b95fddd28a7f~ZrZuuuNWJ1254412544euoutp02k
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154027euoutp020dbabce05d6ee86cfcd9b95fddd28a7f~ZrZuuuNWJ1254412544euoutp02k
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154027eucas1p146034164d01a03da01714b7775571575~ZrZucqgf01949419494eucas1p1C;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 85.1F.61286.AEA8BEE5; Thu, 18
 Jun 2020 16:40:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154026eucas1p27589d4e89563b89eb27459cf9743c7b4~ZrZttEmh70501005010eucas1p2h;
 Thu, 18 Jun 2020 15:40:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154026eusmtrp1b90595c5c8a06a0bc99d6c76c8ffe717~ZrZtsY_KS2169821698eusmtrp1f;
 Thu, 18 Jun 2020 15:40:26 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-d7-5eeb8aeae3d1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 98.E9.07950.AEA8BEE5; Thu, 18
 Jun 2020 16:40:26 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154025eusmtip1c83939d4801dd13c007ecd453f01f5fd~ZrZtDwou00742307423eusmtip1T;
 Thu, 18 Jun 2020 15:40:25 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:39 +0200
Message-Id: <20200618153956.29558-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfUhTURjGO7v3bnNsdtskjxYqg75RkzQuKaZScQ2E/jKxnK28TGubsqlp
 EA1DiaWmrqaIzg8kbWqayRTLTMuWrabNMawMvwrR+RF+hUWuzav13+99zvuc530Ph43wuzFv
 doo8nVLIxVIhk4Ma3qyb/e1qu+iophQQBeYBBvGkrAUjHIZihLCuLjKJR439DMIxaceIypKb
 RHVPKLFinWAQbVM2jBjuqmASS+MOhGh+/ZVF9P74hkW4k026JkB2r1WjZMfaOEaO3TUyyKd1
 t8gvG1MIqRmpB+SzTyom+ae8ByUL2/WA7LDpEHK5zeccN54TlkRJUzIpRWD4JU7yTGUtSGvk
 Zs3WlWAq0MBRAzc2xIPhtK2N4WI+3gDg6ACqBhwnrwDYXTq5VSwDuPB5DGw7LO86UdpRD6Bt
 6CrNTkeN2tfFTDwIqufVTBd74LkAvi3guhjBtQjUr55xsQBPhB0LIywXo/g+6Ghv2mQeHg4/
 vtKidJYvbGx9ibjYzambjLmYayCIW1gwp8vOpJtOwVrd2pZBAGeN7Sya90KTJh+lDbcBnDA3
 s+giH8DhnLKtdULhqPmX8ya2c7xDsKUrkJYjYc2Dnk0Z4u5wZH4XvYA7LDGUIrTMg3fy+HT3
 flhufPwvtnfIgtBMQov6N0I/YjGAppEmpAj4lv8PqwZADzypDKVMQimD5NT1AKVYpsyQSwKu
 pMragPNTmTaMS51g1XK5D+BsIOTyIs7bRXxMnKnMlvUByEaEHryoDyYRn5ckzr5BKVITFRlS
 StkH9rBRoSfvWO1MAh+XiNOpaxSVRim2TxlsN28VCO13+N2rTT0eWxgyZ7Nqyk6zFiVLVeui
 YGnB/QlZ2AkvlmHgp/lgkXbQ/0DHkaiLqti42CysVVtSevaCVlCVVxmjy4z2CtGp3/tFn5z3
 NFjHNUtJkfFR6XEvvovXzdU++ueru1uiHwoMaNXcTsdsoVQ/KEqI2SGdDpsfCq7IF6LKZHHQ
 YUShFP8FLcLImlADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7qvul7HGWz6LmDRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GW8nLuIsWA1T8WrJZNYGxhXcHUxcnJICJhIXDq1g6WLkYtDSGAp
 o8SyezvYIRIyEienNbBC2MISf651sUEUfWKU+Nu0khkkwSZgKNH1FiIhItDJKDGt+yM7iMMs
 MI9ZYvmqw0wgVcICsRIbnq4As1kEVCX+b1kDtoJXwE7i4uFpLBAr5CVWbzgANpUTKH76eCvY
 aiEBW4nnH9rYJjDyLWBkWMUoklpanJueW2ykV5yYW1yal66XnJ+7iREYP9uO/dyyg7HrXfAh
 RgEORiUe3hchr+OEWBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIjRFOioicxS
 osn5wNjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXA2LH0943k
 JS7xDQ5O3EveuBoUBu1t+zv7yJ8DaV8f7d1l9Etu/XWttd4bA+/Yu8y2VsgQylQ5WsaeWqrH
 oRLYxd8drHmCz+K4Ts/DlfPSPk7VEyzQthOcN+W+4ez6pH3/G+M/mj//Fv9gqUHr/RczZ99J
 3+u2PuVa8IPqKRWLpP4ee7E1JLbcU4mlOCPRUIu5qDgRAI6ky061AgAA
X-CMS-MailID: 20200618154026eucas1p27589d4e89563b89eb27459cf9743c7b4
X-Msg-Generator: CA
X-RootMTR: 20200618154026eucas1p27589d4e89563b89eb27459cf9743c7b4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154026eucas1p27589d4e89563b89eb27459cf9743c7b4
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154026eucas1p27589d4e89563b89eb27459cf9743c7b4@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 18/36] drm: rockchip: use common helper
 for a scatterlist contiguity check
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

VXNlIGNvbW1vbiBoZWxwZXIgZm9yIGNoZWNraW5nIHRoZSBjb250aWd1aXR5IG9mIHRoZSBpbXBv
cnRlZCBkbWEtYnVmLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93
c2tpQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fZ2VtLmMgfCAxOSArLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX2dlbS5jCmluZGV4IGI5Mjc1YmE3YzVhNS4uMjk3MGU1MzRlMmJiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKQEAgLTQ2MCwyMyArNDYw
LDYgQEAgc3RydWN0IHNnX3RhYmxlICpyb2NrY2hpcF9nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlKHN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCXJldHVybiBzZ3Q7CiB9CiAKLXN0YXRpYyB1bnNp
Z25lZCBsb25nIHJvY2tjaGlwX3NnX2dldF9jb250aWd1b3VzX3NpemUoc3RydWN0IHNnX3RhYmxl
ICpzZ3QsCi0JCQkJCQkgICAgIGludCBjb3VudCkKLXsKLQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnM7
Ci0JZG1hX2FkZHJfdCBleHBlY3RlZCA9IHNnX2RtYV9hZGRyZXNzKHNndC0+c2dsKTsKLQl1bnNp
Z25lZCBpbnQgaTsKLQl1bnNpZ25lZCBsb25nIHNpemUgPSAwOwotCi0JZm9yX2VhY2hfc2coc2d0
LT5zZ2wsIHMsIGNvdW50LCBpKSB7Ci0JCWlmIChzZ19kbWFfYWRkcmVzcyhzKSAhPSBleHBlY3Rl
ZCkKLQkJCWJyZWFrOwotCQlleHBlY3RlZCA9IHNnX2RtYV9hZGRyZXNzKHMpICsgc2dfZG1hX2xl
bihzKTsKLQkJc2l6ZSArPSBzZ19kbWFfbGVuKHMpOwotCX0KLQlyZXR1cm4gc2l6ZTsKLX0KLQog
c3RhdGljIGludAogcm9ja2NoaXBfZ2VtX2lvbW11X21hcF9zZyhzdHJ1Y3QgZHJtX2RldmljZSAq
ZHJtLAogCQkJICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCkBAIC00OTgsNyAr
NDgxLDcgQEAgcm9ja2NoaXBfZ2VtX2RtYV9tYXBfc2coc3RydWN0IGRybV9kZXZpY2UgKmRybSwK
IAlpZiAoIWNvdW50KQogCQlyZXR1cm4gLUVJTlZBTDsKIAotCWlmIChyb2NrY2hpcF9zZ19nZXRf
Y29udGlndW91c19zaXplKHNnLCBjb3VudCkgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgeworCWlm
IChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzZykgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6
ZSkgewogCQlEUk1fRVJST1IoImZhaWxlZCB0byBtYXAgc2dfdGFibGUgdG8gY29udGlndW91cyBs
aW5lYXIgYWRkcmVzcy5cbiIpOwogCQlkbWFfdW5tYXBfc2coZHJtLT5kZXYsIHNnLT5zZ2wsIHNn
LT5uZW50cywKIAkJCSAgICAgRE1BX0JJRElSRUNUSU9OQUwpOwotLSAKMi4xNy4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
