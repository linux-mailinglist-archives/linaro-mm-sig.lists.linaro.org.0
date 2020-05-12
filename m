Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4E01CF1B7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:37:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AEF561957
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:37:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4F779619D0; Tue, 12 May 2020 09:37:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B8F865F9E;
	Tue, 12 May 2020 09:07:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 13FD065F9A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:06:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 05758664FE; Tue, 12 May 2020 09:06:59 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id D6EE765F9B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:20 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090120euoutp01ebb96b2b824f024af2abcbefa4dc6f0c~OPFsCu8Eu2637026370euoutp01K
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090120euoutp01ebb96b2b824f024af2abcbefa4dc6f0c~OPFsCu8Eu2637026370euoutp01K
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090119eucas1p122c54f3d790a8b4aabadddef138cb482~OPFr3VH7q1613916139eucas1p1j;
 Tue, 12 May 2020 09:01:19 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id BD.22.60679.FD56ABE5; Tue, 12
 May 2020 10:01:19 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090119eucas1p2b3e1a858d8893f8d209d5c19fcbab941~OPFrnFDm92669826698eucas1p2a;
 Tue, 12 May 2020 09:01:19 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090119eusmtrp135da908616aff3d712df2ee287b888a2~OPFrmVeew0188101881eusmtrp1P;
 Tue, 12 May 2020 09:01:19 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-b6-5eba65dfb313
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 9D.F2.07950.FD56ABE5; Tue, 12
 May 2020 10:01:19 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090118eusmtip1b5259b1f4905ccb99e71fb00c788aaf8~OPFrBXLlK1352813528eusmtip1K;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:41 +0200
Message-Id: <20200512090058.14910-21-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfyyUcRjf99778d5x9nZsvqNlu8WWys9qb2lUS73/WP1RS1l0eIdy6F6U
 yphiuZxxSjpCWDg/k9BdhROnNNMdxqr5Ve0oY/mVuk53Xum/z+fzPJ/n8+zZgyICNcsBjYqJ
 JyUxomghm8ds6Vnt3z1GqoI9mjR7cVn/Gwb+pKCBha+15CL44NIcG6+u6Wbga5PfWPhDeTJe
 2u6DLw5OMPCmqWEWrlcVsfEf42sIXvf6EwfvnP/MOmRD1BbXAuLlcimTaF0eZxFjd7QM4mlF
 CvHBNIUQeSOVgFCPprKJP4p2JpHdrARE63AxQiw0bTtpfY53MJyMjkokJe6+F3iR+e0mVlya
 zdXeag07FXy1kgIUhdgemFlyQgp4qACrAvBneRegySKARTOZZsI1kwUA27JTLNhiKF7tYtB6
 JYCj38lNQ7l+GbEU2JgnlM5K2RZsh6UD2CuztmAEy0egcumYBdtiITCjam19EBNzhoaMwvV+
 PuYLH+SqGXSYE6xp7FifyTXrYyVGpiUMYjoOND2rAXTTUWhsNCI0toUz2mYOjbfCvrysDcNN
 ACf66zg0yQJQn1aw4faBH/t/sS3HQLAdsEHlTt/lMFztc6KhDRyZ3ULvbwPlLfcRWubD2xkC
 eoYLVGjrN1M7B3Qb2xBwQE7rAqwbQMUQmQOcFP+jSgFQAnsygRJHkJRXDHnFjRKJqYSYCLew
 WHETML9Un0m72AZUxlANwFAgtOZ7eDwPFrBEiVSSWAMgigjt+LeizBI/XJR0jZTEhkgSoklK
 AxxRptCe7102fV6ARYjiyUskGUdK/lUZKNchFVQF9HBBYJDjfPj7fXHGL69eFIbHhxq8duWY
 PORvG8kjsoBQRZhB7u2m1OquW7XJjHyJzgdVlJ85na87bph85FKm11WkrVw86zrXEbxze9C7
 zup7Q+p0v3Qq0KQ/5XAgNTelXqvb73CZWcrtSF656z99Q+UcNqsx5HJ++6sf+wmZVKTI0xWR
 UKK/MYuwBU4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7r3U3fFGaz5rmTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GVM2/+PtaCJr+LEykNsDYzPuLsYOTkkBEwk5v08zNTFyMUhJLCU
 UeJE+wtmiISMxMlpDawQtrDEn2tdbBBFnxgl3r46xASSYBMwlOh6C5EQEehklJjW/ZEdxGEW
 mMcssXwVyFwODmGBWIlp+8VAGlgEVCVetM1mA7F5BewkZk7czQSxQV5i9YYDYJs5geL35/9h
 AbGFBAolHl19yzKBkW8BI8MqRpHU0uLc9NxiI73ixNzi0rx0veT83E2MwOjZduznlh2MXe+C
 DzEKcDAq8fB2GO2ME2JNLCuuzD3EKMHBrCTC25IJFOJNSaysSi3Kjy8qzUktPsRoCnTURGYp
 0eR8YGTnlcQbmhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgzE+af6hN
 WeHmxk8nb0sYL7Ve43Cq8irTpCe7Nec5z4/xEAi6fXZX61M50cqr6aL/t/w7+7xuhsetfiGh
 CdwdT086rNYQzlsndFR0g5FXg/KroKVVrloGK+Ym213Lmft0suoSQZtlDe/WNVZ1tApmiOy8
 epjVRHPDYQ/XORd/vdctMG6w2+4WqMRSnJFoqMVcVJwIAJ5cyOe0AgAA
X-CMS-MailID: 20200512090119eucas1p2b3e1a858d8893f8d209d5c19fcbab941
X-Msg-Generator: CA
X-RootMTR: 20200512090119eucas1p2b3e1a858d8893f8d209d5c19fcbab941
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090119eucas1p2b3e1a858d8893f8d209d5c19fcbab941
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090119eucas1p2b3e1a858d8893f8d209d5c19fcbab941@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 21/38] drm: rockchip: use common helper
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
c2tpQHNhbXN1bmcuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENIIHY0
IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVudHMgbWlz
dXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDIwMDUxMjA4
NTcxMC4xNDY4OC0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwotLS0KIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgfCAxOSArLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCmluZGV4IDBkMTg4NDYuLjIx
ZjhjYjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
Z2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwpA
QCAtNDYwLDIzICs0NjAsNiBAQCBzdHJ1Y3Qgc2dfdGFibGUgKnJvY2tjaGlwX2dlbV9wcmltZV9n
ZXRfc2dfdGFibGUoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJcmV0dXJuIHNndDsKIH0K
IAotc3RhdGljIHVuc2lnbmVkIGxvbmcgcm9ja2NoaXBfc2dfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShz
dHJ1Y3Qgc2dfdGFibGUgKnNndCwKLQkJCQkJCSAgICAgaW50IGNvdW50KQotewotCXN0cnVjdCBz
Y2F0dGVybGlzdCAqczsKLQlkbWFfYWRkcl90IGV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3Moc2d0
LT5zZ2wpOwotCXVuc2lnbmVkIGludCBpOwotCXVuc2lnbmVkIGxvbmcgc2l6ZSA9IDA7Ci0KLQlm
b3JfZWFjaF9zZyhzZ3QtPnNnbCwgcywgY291bnQsIGkpIHsKLQkJaWYgKHNnX2RtYV9hZGRyZXNz
KHMpICE9IGV4cGVjdGVkKQotCQkJYnJlYWs7Ci0JCWV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3Mo
cykgKyBzZ19kbWFfbGVuKHMpOwotCQlzaXplICs9IHNnX2RtYV9sZW4ocyk7Ci0JfQotCXJldHVy
biBzaXplOwotfQotCiBzdGF0aWMgaW50CiByb2NrY2hpcF9nZW1faW9tbXVfbWFwX3NnKHN0cnVj
dCBkcm1fZGV2aWNlICpkcm0sCiAJCQkgIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFj
aCwKQEAgLTQ5OCw3ICs0ODEsNyBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyByb2NrY2hpcF9zZ19n
ZXRfY29udGlndW91c19zaXplKHN0cnVjdCBzZ190YWJsZSAqc2d0LAogCWlmICghY291bnQpCiAJ
CXJldHVybiAtRUlOVkFMOwogCi0JaWYgKHJvY2tjaGlwX3NnX2dldF9jb250aWd1b3VzX3NpemUo
c2csIGNvdW50KSA8IGF0dGFjaC0+ZG1hYnVmLT5zaXplKSB7CisJaWYgKGRybV9wcmltZV9nZXRf
Y29udGlndW91c19zaXplKHNnKSA8IGF0dGFjaC0+ZG1hYnVmLT5zaXplKSB7CiAJCURSTV9FUlJP
UigiZmFpbGVkIHRvIG1hcCBzZ190YWJsZSB0byBjb250aWd1b3VzIGxpbmVhciBhZGRyZXNzLlxu
Iik7CiAJCWRtYV91bm1hcF9zZyhkcm0tPmRldiwgc2ctPnNnbCwgc2ctPm5lbnRzLAogCQkJICAg
ICBETUFfQklESVJFQ1RJT05BTCk7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
