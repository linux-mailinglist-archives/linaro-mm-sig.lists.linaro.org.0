Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1736F1FF80A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:51:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E7336653E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:51:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 30CCB66583; Thu, 18 Jun 2020 15:51:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CA05665F2;
	Thu, 18 Jun 2020 15:41:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7CE9866592
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6D1FF6659B; Thu, 18 Jun 2020 15:40:34 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id CB58B66597
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:22 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154022euoutp0269b28d32d381e3f1fa046a31af894d32~ZrZpw6bKn1314513145euoutp02-
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154022euoutp0269b28d32d381e3f1fa046a31af894d32~ZrZpw6bKn1314513145euoutp02-
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154021eucas1p2e6f324f655f607ca203555acfb3e35bc~ZrZphhik92502725027eucas1p27;
 Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id FE.CE.60679.5EA8BEE5; Thu, 18
 Jun 2020 16:40:21 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154021eucas1p181a432ec3a813134f677263ed45f9729~ZrZpSisF52603726037eucas1p1P;
 Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154021eusmtrp1b40ba7b881fbe611fee7da44e2a5eaf0~ZrZpR4sj92169821698eusmtrp1T;
 Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-2a-5eeb8ae5b95d
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A3.E9.07950.5EA8BEE5; Thu, 18
 Jun 2020 16:40:21 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154020eusmtip1fd5ad65dd01bfc14781d171dbc566f67~ZrZojwzTQ0709107091eusmtip1s;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:32 +0200
Message-Id: <20200618153956.29558-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJKsWRmVeSWpSXmKPExsWy7djPc7pPu17HGRz9p2/Re+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRXDYpqTmZZalF+nYJXBnHev6wFzTxVSyc
 PJm5gfEKdxcjJ4eEgInEl4U/WLoYuTiEBFYwSpx68Z4NwvnCKLGsfRYrhPOZUeLz7TZGmJZH
 bacYIRLLGSUOb5jGCpIAazn6ohbEZhMwlOh628UGYosItDJKnOjlAWlgFtjDLLFo1y8WkISw
 QLzEhDP7wIpYBFQlLs58DjaIV8BO4vzql2wQ2+QlVm84wAxicwLFTx9vBTtJQuAeu8SUX7vY
 IYpcJA6c+AjVICzx6vgWqLiMxOnJPSwQDc2MEg/PrWWHcHoYJS43zYB6yFrizrlfQN0cQPdp
 SqzfpQ8RdpS4uv8jK0hYQoBP4sZbQZAwM5A5adt0Zogwr0RHmxBEtZrErOPr4NYevHCJGcL2
 kNhxZz80tCYySny9959lAqP8LIRlCxgZVzGKp5YW56anFhvlpZbrFSfmFpfmpesl5+duYgQm
 sNP/jn/ZwbjrT9IhRgEORiUe3hchr+OEWBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19U
 mpNafIhRmoNFSZzXeNHLWCGB9MSS1OzU1ILUIpgsEwenVANj7fc9fj+25pr6yawu2/dVpHLy
 sac7nL+/dDlSdbdDXFHpTLmNasDHSeoVmnsuJuW9qvlc0nidV7Bk0Yu9P88/3PH8zuGIjQEL
 upyivoW7i7lk7ZgibTdJ+wrbf+5SqYb9neEz/25abN5Wv3mdzGEFhbrW06XcGhs4vi4J0s+W
 4D2x+IWM0dMYJZbijERDLeai4kQA7EnreVwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNIsWRmVeSWpSXmKPExsVy+t/xu7pPu17HGVw+IWfRe+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpG
 JpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehnHev6wFzTxVSycPJm5gfEKdxcjJ4eEgInEo7ZT
 jF2MXBxCAksZJY6t/MsOkZCRODmtgRXCFpb4c62LDaLoE6PE+daNjCAJNgFDia63EAkRgU5G
 iWndH9lBHGaBY8wSGx+/ZwapEhaIldjePQXMZhFQlbg48znYWF4BO4nzq1+yQayQl1i94QBY
 DSdQ/PTxVrAaIQFbiecf2tgmMPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERhR2479
 3LKDsetd8CFGAQ5GJR7eFyGv44RYE8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8
 iNEU6KiJzFKiyfnAaM8riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp
 1cBoaHb4/4PSMi/+VVPO+wXlf1kX867uvBWTbIL49kj1u5qa/sYaG4o+dVeWxkzqFpB+Nu9u
 YWH35lMbY+9HfhA0v1rIrTvXtTOw8+ITQadVN1cmzdzOdT1HRVusPIHzDl/jtv3rdubWbPkT
 Ura8rcvpE5PW0k0CX48YX+g5Ol1AK8vxfMusPYFKLMUZiYZazEXFiQAz4CamvgIAAA==
X-CMS-MailID: 20200618154021eucas1p181a432ec3a813134f677263ed45f9729
X-Msg-Generator: CA
X-RootMTR: 20200618154021eucas1p181a432ec3a813134f677263ed45f9729
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154021eucas1p181a432ec3a813134f677263ed45f9729
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154021eucas1p181a432ec3a813134f677263ed45f9729@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 11/36] drm: mediatek: use common helper
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
cnRlZCBkbWEtYnVmIGFuZApkbyB0aGlzIGNoZWNrIGJlZm9yZSBhbGxvY2F0aW5nIHJlc291cmNl
cywgc28gdGhlIGVycm9yIHBhdGggaXMgc2ltcGxlci4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6
eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2RybV9nZW0uYyB8IDI4ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jCmluZGV4IDYxOTBjYzNiN2IwZC4uMzY1NGVjNzMy
MDI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYwpAQCAtMjEyLDM3ICsy
MTIsMjEgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICptdGtfZ2VtX3ByaW1lX2ltcG9ydF9zZ190
YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQkJc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqYXR0YWNoLCBzdHJ1Y3Qgc2dfdGFibGUgKnNnKQogewogCXN0cnVjdCBtdGtfZHJtX2dlbV9v
YmogKm10a19nZW07Ci0JaW50IHJldDsKLQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnM7Ci0JdW5zaWdu
ZWQgaW50IGk7Ci0JZG1hX2FkZHJfdCBleHBlY3RlZDsKIAotCW10a19nZW0gPSBtdGtfZHJtX2dl
bV9pbml0KGRldiwgYXR0YWNoLT5kbWFidWYtPnNpemUpOworCS8qIGNoZWNrIGlmIHRoZSBlbnRy
aWVzIGluIHRoZSBzZ190YWJsZSBhcmUgY29udGlndW91cyAqLworCWlmIChkcm1fcHJpbWVfZ2V0
X2NvbnRpZ3VvdXNfc2l6ZShzZykgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgeworCQlEUk1fRVJS
T1IoInNnX3RhYmxlIGlzIG5vdCBjb250aWd1b3VzIik7CisJCXJldHVybiBFUlJfUFRSKC1FSU5W
QUwpOworCX0KIAorCW10a19nZW0gPSBtdGtfZHJtX2dlbV9pbml0KGRldiwgYXR0YWNoLT5kbWFi
dWYtPnNpemUpOwogCWlmIChJU19FUlIobXRrX2dlbSkpCiAJCXJldHVybiBFUlJfQ0FTVChtdGtf
Z2VtKTsKIAotCWV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3Moc2ctPnNnbCk7Ci0JZm9yX2VhY2hf
c2coc2ctPnNnbCwgcywgc2ctPm5lbnRzLCBpKSB7Ci0JCWlmICghc2dfZG1hX2xlbihzKSkKLQkJ
CWJyZWFrOwotCi0JCWlmIChzZ19kbWFfYWRkcmVzcyhzKSAhPSBleHBlY3RlZCkgewotCQkJRFJN
X0VSUk9SKCJzZ190YWJsZSBpcyBub3QgY29udGlndW91cyIpOwotCQkJcmV0ID0gLUVJTlZBTDsK
LQkJCWdvdG8gZXJyX2dlbV9mcmVlOwotCQl9Ci0JCWV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3Mo
cykgKyBzZ19kbWFfbGVuKHMpOwotCX0KLQogCW10a19nZW0tPmRtYV9hZGRyID0gc2dfZG1hX2Fk
ZHJlc3Moc2ctPnNnbCk7CiAJbXRrX2dlbS0+c2cgPSBzZzsKIAogCXJldHVybiAmbXRrX2dlbS0+
YmFzZTsKLQotZXJyX2dlbV9mcmVlOgotCWtmcmVlKG10a19nZW0pOwotCXJldHVybiBFUlJfUFRS
KHJldCk7CiB9CiAKIHZvaWQgKm10a19kcm1fZ2VtX3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmopCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
