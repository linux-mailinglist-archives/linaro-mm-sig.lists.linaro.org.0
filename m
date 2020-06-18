Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E93671FF7E5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:48:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15A1766591
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:48:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 064436658C; Thu, 18 Jun 2020 15:48:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 962D3665D9;
	Thu, 18 Jun 2020 15:41:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 958A466591
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7EE00665AA; Thu, 18 Jun 2020 15:40:30 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 2F85C66591
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:20 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154019euoutp02f0ac437f2becd866e0291c3fed9211e6~ZrZnVNAZh1314813148euoutp021
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154019euoutp02f0ac437f2becd866e0291c3fed9211e6~ZrZnVNAZh1314813148euoutp021
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154019eucas1p2d67fbfd901798698c28a153faec6ea32~ZrZnAcJYb2977729777eucas1p2-;
 Thu, 18 Jun 2020 15:40:19 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C0.60.60698.3EA8BEE5; Thu, 18
 Jun 2020 16:40:19 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154018eucas1p259b2d1c250b2078772b091212325f93e~ZrZmrQgZ80501005010eucas1p2X;
 Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154018eusmtrp28c05d58a5da917d59bf0bb279c56477c~ZrZmqoAKa0370403704eusmtrp2c;
 Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-1d-5eeb8ae39f29
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B4.EE.08375.2EA8BEE5; Thu, 18
 Jun 2020 16:40:18 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154018eusmtip16b0cf50bb6921ca0c67990095bc31987~ZrZl93tAK0833608336eusmtip1N;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:28 +0200
Message-Id: <20200618153956.29558-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGeXcuO1tOTtPwRTNpaFaUd+KQJSVFpxuU9KnUmnpQUadsaqkf
 skSRpaaOSCQvyULzmqbTFi5d6Qzzkve8YLaCplnexWXa5tH69vu/z/O8z5+Xl0CEKsyWCJfE
 MlKJOFKE81FV+1rPUb18JtBtcRSlMrvfc6javBqM2lTlINTA8i+cel7RxqFyJ7NRqviNN7U0
 MMWh6vRDGNWvfoJTeT0aDlX1boJLtc59xag8hQE/ZUlXFlYCunmlGKUbVz5j9OQDHYd+qbxL
 j23oEVoxUgro15+ScTqrvhzQi3X7rvCv80+EMJHh8YzU1ecWP2zw6R805u2uO1UGLUgGLTw5
 4BGQ9IIlxh9ADviEkCwDUHlvlWMWhOQSgM0diaywCGBn0xy+kygyzGGsUApgRkUtwg6mxKOa
 TNTswkl3KJ+VbyWsyVQAOzItzCaETEfgUE4RMAtWZABUVw9jZkZJJ9jcOIGYWUCehMr0VYSt
 c4AVL1q2mEf6wE5d6lY1JNu5MKtSyWVNZ2BBwzzGshWc1tVvn++Fm6+KOGwgBcCp7iouO2QA
 2H8/D7AubzjebTTtSpj2OwRr1K5mhORpOD3ux6IlHJndbTYjJsxVPUbYYwFMTxOydxyA+brq
 f62tvX3b69NwuOE3l32gHABVbTNINnDI/99VDEA5sGHiZFGhjMxTwtx2kYmjZHGSUJfg6Kg6
 YPpNnRu65SagWQ/SApIAIgvB92szgUJMHC9LiNICSCAia4FvV2egUBAiTkhkpNE3pXGRjEwL
 7AhUZCPwLDEECMlQcSwTwTAxjHRH5RA822TQ98E9wlgfH2Tz0WN+bVMfE1GpXzAuHu84UnB5
 vvDGnhHns55ujo5t5+yCNr41KBA94aXI7wkZW0jqUP/MeqipcWrX+GpSndWFwYX+TWUZuN/o
 4AU5/iyGzJodt9+/7qKoGluzt7/YK7jk4d/VOp2WpMS8F45d9Tqvnf+SclBSLkJlYWL3w4hU
 Jv4LlAduXUkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xu7qPul7HGcx8r2nRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+Pqwr8sBYe5K9a+PMTYwHiAs4uRk0NCwERi/ssPrF2MXBxCAksZJU5NecAOkZCR
 ODmtgRXCFpb4c62LDaLoE6NE77VGJpAEm4ChRNdbiISIQCejxLTuj+wgDrPABGaJ+y2rGUGq
 hAWiJX7c/wFmswioSuzdfpcZxOYVsJVY0vGdGWKFvMTqDQfAbE4BO4nTx1vBVgsB1Tz/0MY2
 gZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMBo2Xbs5+YdjJc2Bh9iFOBgVOLhfRHy
 Ok6INbGsuDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxhNgY6ayCwlmpwPjOS8knhD
 U0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2M6TVWuUn+gpdKs3Zf/NU+
 S9/33bLtUxe03lCv0qs8X6x7d8bl7E3TYne6RvnVn0hp2BWtHrpo1o+Fh+sFbxsetFBadvbS
 q/3FMVLsT9eXbJGT1LwvlaDiqdsnnrB15VWx0NW1S5VzmRbZ9GV+WuFUOOmw6au98Wc330i8
 cFyJ7/6p+pkxDw//UmIpzkg01GIuKk4EAJreD6esAgAA
X-CMS-MailID: 20200618154018eucas1p259b2d1c250b2078772b091212325f93e
X-Msg-Generator: CA
X-RootMTR: 20200618154018eucas1p259b2d1c250b2078772b091212325f93e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154018eucas1p259b2d1c250b2078772b091212325f93e
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154018eucas1p259b2d1c250b2078772b091212325f93e@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Inki Dae <inki.dae@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 07/36] drm: exynos: use common helper for
 a scatterlist contiguity check
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
c2tpQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9n
ZW0uYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
ZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19k
cm1fZ2VtLmMKaW5kZXggZWZhNDc2ODU4ZGI1Li4xNzE2YTAyM2JjYTAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmMKQEAgLTQzMSwyNyArNDMxLDEwIEBAIGV4eW5vc19k
cm1fZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogewog
CXN0cnVjdCBleHlub3NfZHJtX2dlbSAqZXh5bm9zX2dlbTsKIAotCWlmIChzZ3QtPm5lbnRzIDwg
MSkKKwkvKiBjaGVjayBpZiB0aGUgZW50cmllcyBpbiB0aGUgc2dfdGFibGUgYXJlIGNvbnRpZ3Vv
dXMgKi8KKwlpZiAoZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUoc2d0KSA8IGF0dGFjaC0+
ZG1hYnVmLT5zaXplKSB7CisJCURSTV9FUlJPUigiYnVmZmVyIGNodW5rcyBtdXN0IGJlIG1hcHBl
ZCBjb250aWd1b3VzbHkiKTsKIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Ci0KLQkvKgotCSAq
IENoZWNrIGlmIHRoZSBwcm92aWRlZCBidWZmZXIgaGFzIGJlZW4gbWFwcGVkIGFzIGNvbnRpZ3Vv
dXMKLQkgKiBpbnRvIERNQSBhZGRyZXNzIHNwYWNlLgotCSAqLwotCWlmIChzZ3QtPm5lbnRzID4g
MSkgewotCQlkbWFfYWRkcl90IG5leHRfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNndC0+c2dsKTsK
LQkJc3RydWN0IHNjYXR0ZXJsaXN0ICpzOwotCQl1bnNpZ25lZCBpbnQgaTsKLQotCQlmb3JfZWFj
aF9zZyhzZ3QtPnNnbCwgcywgc2d0LT5uZW50cywgaSkgewotCQkJaWYgKCFzZ19kbWFfbGVuKHMp
KQotCQkJCWJyZWFrOwotCQkJaWYgKHNnX2RtYV9hZGRyZXNzKHMpICE9IG5leHRfYWRkcikgewot
CQkJCURSTV9FUlJPUigiYnVmZmVyIGNodW5rcyBtdXN0IGJlIG1hcHBlZCBjb250aWd1b3VzbHki
KTsKLQkJCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKLQkJCX0KLQkJCW5leHRfYWRkciA9IHNn
X2RtYV9hZGRyZXNzKHMpICsgc2dfZG1hX2xlbihzKTsKLQkJfQogCX0KIAogCWV4eW5vc19nZW0g
PSBleHlub3NfZHJtX2dlbV9pbml0KGRldiwgYXR0YWNoLT5kbWFidWYtPnNpemUpOwotLSAKMi4x
Ny4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
