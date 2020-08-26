Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D0F2527B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:49:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C54960C32
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:49:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3B22F617F1; Wed, 26 Aug 2020 06:49:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC2E86601F;
	Wed, 26 Aug 2020 06:37:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 320176013C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E73B5617B9; Wed, 26 Aug 2020 06:35:49 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id D1B336186A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:38 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063538euoutp0179bf1f61c1ee6bac742d02940e017cf3~uvevD4TEO2035120351euoutp01C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063538euoutp0179bf1f61c1ee6bac742d02940e017cf3~uvevD4TEO2035120351euoutp01C
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063537eucas1p136ab8e9b3264dbfa54eb4f93d3546818~uveuo2RVu1478314783eucas1p1c;
 Wed, 26 Aug 2020 06:35:37 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9F.AD.05997.9B2064F5; Wed, 26
 Aug 2020 07:35:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063537eucas1p1462d4761c8eb6d762fe5ea0fbd3b6e3b~uveuV-lbG1942019420eucas1p1t;
 Wed, 26 Aug 2020 06:35:37 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063537eusmtrp152c96356b8271c4f15f3f216299ac3ec~uveuVWek81167511675eusmtrp1B;
 Wed, 26 Aug 2020 06:35:37 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-cf-5f4602b9c337
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E5.D0.06314.9B2064F5; Wed, 26
 Aug 2020 07:35:37 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063536eusmtip225a50614f20e5520d7b433fd13c9606c~uvetwvLfs0091500915eusmtip2I;
 Wed, 26 Aug 2020 06:35:36 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:00 +0200
Message-Id: <20200826063316.23486-17-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0zTUBzFc9u16+aG3SThRkHNDIomikM/VIfGF1ojGv1qIqNqBeI2cQUU
 E5CgEkUebhAloGSiBoUhOpDHVF5Rp0GngTnxQWTgjIITAxuKUZCmqN9+59z/ueefm0ugylZs
 NpFkSGGNBkanwqWihkfjz5c2I5u1y+s8C6h85xOEul1Si1GTDSaUcgWGcepG9UOEmuwfwqhL
 5gzK0qqh/C4PQtkG3BjVbb+IUyN9kyhV86BXTLV/+4CtC6Kt5VZA3x+ziOjGsT6Mfn/WgdB1
 V4/TbycGULqopxLQd19n4fTv0lYRXVBfBehGdzlKj9rm7pTtlkbvZ3VJaawxcm28NPHzpQqQ
 XC07OnjVjGWB69JcICEguRK6PU1ILpASSvI6gCN3bgFB+AHMv3cTFcQogL43V7C/kYIzJ6cj
 lQC+cnvRfxHT/QDCT+GkGub6cnGeg8lTAD7Ol/GMkudRWBXYzPMsUgs/ec9M3UoQIjIcBorn
 87acXAsLB9sQoWwerL7VhvIsmfIdZwtxvguSbjH0uby4MLQJdn8fBgLPgoOOerHAobCzKE8k
 BE4A6HHWiAWRB2B3dsl0QgPfOX/i/BYouRjW2iMFez2sdNvEvA3JINjjUwj7B0FzwwVUsOXw
 dI5SmF4ISx03/9W2v+hCBaZhaVPZ9JOaADyZMwHOgXml/8ssAFSBEDaV0yewXJSBPbKMY/Rc
 qiFh2b5DehuY+ladEw5/E7D/2tsBSAKoZHILHqNVYkwal67vAJBAVcHyDc8645Ty/Uz6MdZ4
 SGtM1bFcB5hDiFQh8hUVn/coyQQmhT3Issms8e8pQkhmZ4EDX1qcQ+M3Fl3cgEaEniteo7Jy
 8YcjwoZG8uxx5XmKbQfqTMUbPeoZS4d7Ymb6mZh01bjOuqol7Ojz9rLsLtlqg17e5e7+aP3x
 SfN1a1xX7A7XtdpVFzKLEsNDt9uS/WZvx9NdEiKjmGlRJBxLVis0L3tjbYHm/mh4OTMqdcsu
 lYhLZNRLUCPH/AEA06MOUgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7o7mdziDWad4bfoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSz+P3rNajF3Uq3Fgv3WFl+uPGSy2PT4GqvF5V1z2Cw+PfjPbLH2
 yF12i4MfnrA68HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNFj980GNo+/
 s/azePRtWcXosf3aPGaPz5vkAnii9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62M
 TJX07WxSUnMyy1KL9O0S9DJezl3EWLCap+LVkkmsDYwruLoYOTkkBEwk+jpbmLoYuTiEBJYy
 SrTvu8MIkZCRODmtgRXCFpb4c62LDaLoE6PExO5+dpAEm4ChRNdbiISIQCejxLTuj+wgDrPA
 PGaJ5asOM4FUCQvESsw+OI+li5GDg0VAVeLrFAWQMK+AnUT/qwNMEBvkJVZvOMAMYnMCxY93
 97OB2EICthKn185gnsDIt4CRYRWjSGppcW56brGhXnFibnFpXrpecn7uJkZg9Gw79nPzDsZL
 G4MPMQpwMCrx8C5gc40XYk0sK67MPcQowcGsJMLrdPZ0nBBvSmJlVWpRfnxRaU5q8SFGU6Cb
 JjJLiSbnAyM7ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDY6pJ
 4PbHJq+KZ+m+SnnrtnebdIjp30qNqRuU1l04sT7r+aZ55zI0U6MczpYda2zO+LrqCb+r2bQJ
 3HOdt5yu/rmg5DbHdObl3PZ8+vrFOWq3Ay0WfXuXszTlVd7d7nMuU/o9DbQmiPhkxuv6KyRm
 zZj7KEF+6gTvZye3f4h/cEjw57aYRL43/5VYijMSDbWYi4oTAc8Z7z+0AgAA
X-CMS-MailID: 20200826063537eucas1p1462d4761c8eb6d762fe5ea0fbd3b6e3b
X-Msg-Generator: CA
X-RootMTR: 20200826063537eucas1p1462d4761c8eb6d762fe5ea0fbd3b6e3b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063537eucas1p1462d4761c8eb6d762fe5ea0fbd3b6e3b
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063537eucas1p1462d4761c8eb6d762fe5ea0fbd3b6e3b@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 16/32] drm: rockchip: use common helper
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
