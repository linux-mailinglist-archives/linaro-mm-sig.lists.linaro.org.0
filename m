Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF68200757
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:55:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A14A36087B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:55:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 943076171B; Fri, 19 Jun 2020 10:55:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B973F666DA;
	Fri, 19 Jun 2020 10:38:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 149BD665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 07A72665DA; Fri, 19 Jun 2020 10:37:22 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 61F87665BA
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:07 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103706euoutp01751d4d1a0ea9f1b928933332431db452~Z66KO-xSW1680716807euoutp01j
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103706euoutp01751d4d1a0ea9f1b928933332431db452~Z66KO-xSW1680716807euoutp01j
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103706eucas1p121aef2e4fae6027715b8bd2a43ba6886~Z66J542fP0705907059eucas1p1J;
 Fri, 19 Jun 2020 10:37:06 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E2.9C.06318.2559CEE5; Fri, 19
 Jun 2020 11:37:06 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103706eucas1p24f226bc00559f0812bc44d7933acd1e4~Z66Jnmqsd1691016910eucas1p2_;
 Fri, 19 Jun 2020 10:37:06 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103705eusmtrp1742aa8321b387c113939ab0d15d6c93d~Z66Jm_XTT0959609596eusmtrp1K;
 Fri, 19 Jun 2020 10:37:05 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-6b-5eec95529c22
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id BD.0B.06017.1559CEE5; Fri, 19
 Jun 2020 11:37:05 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103705eusmtip2c4079c382c05ce6c31ccdc0672deae4a~Z66I8g9jD0229502295eusmtip2i;
 Fri, 19 Jun 2020 10:37:05 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:19 +0200
Message-Id: <20200619103636.11974-20-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSzUcRzH973fw/3I3X4dzSeF7Yb1sJSutt/GlKj9tGk96J826ie/ZB53
 l0qtpRTSCWdiFqlV5LHU0BNR8lQ3nB5U1jnN4iQLV6xcd37ov9fn/Xl/Pu/v97svhckaCCcq
 MvYYr4zlouWkLV77alq7bm/uaOiGt59pJkPbLmLu51cTjLk2G2N6p36QzN3yFhFjNhgJplBz
 hilu9GYmewdETM3gO4LRPb5GMj/1ZoypfNkvZprGvxJbpWxFUQVin5mKcbbOpCfYL5dbReyD
 W2fZT7ODGJvzoQSxT/qSSPZvQSPOXnlYhti6d0UYO1HjstvugK1POB8deZxXrvc9ZHu0pVFD
 xGc6n0w2zBBJKAfSkQ0F9CYo6uvE05EtJaNLEfy+rieFYhKBpuocYXXJ6AkEWk3YwkT/o3Kx
 oJcg6B7hFgeSL+lIa4OkvSD9e/ocO9AXEbRl2FkZo69iUDa1w8r2dDDcNJrmPDjtDlVt+rml
 EtoXUuv7SSHMFcrvPcesbGPRjReaCGsY0D1ieNqeMm8KgJLaR0hgexhpfSgWeCV05qhxYSAZ
 wYC2UiwUagS68/nzE97wWTtj2URZjrcaqh+vF2Q/UHf0iawy0FL48H2pcAEpaGrzMEGWQFqK
 THB7QEFr1WJsU1cPJjALw3VdSHigbARqw0eUhVwL/ocVI1SGHPkEVUwEr1LE8ic8VVyMKiE2
 wvNwXEwNsvyqztnWqXrU8CesGdEUkttJvgUbQ2UEd1yVGNOMgMLkDpJtbzpDZZJwLvEUr4w7
 qEyI5lXNaAWFyx0lipvDITI6gjvGR/F8PK9c6IooG6ckVLpxn2H7UFB1d5rHlpyxI2SmVtHU
 +17MFPa379w8zoXqKh3r/X3cb+cFrqskJ1u8eoaGlwR3uHnfCNozvL/az3k6bDnPunmmhPkH
 ZtXdkb1ePj0D/ssMoxVrTavqB4buGfUZpYaxhhppWYDZPupg7q0XqehXiK7ZZRelOO2S9UyO
 q45yXmswpYr7BwQnTRZRAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7qBU9/EGSw+aGnRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GUc3T+JtaBftqL50S/WBsbJEl2MnBwSAiYSd3euZu9i5OIQEljK
 KPH6/lF2iISMxMlpDawQtrDEn2tdbBBFnxglHj6dyAKSYBMwlOh6C5EQEehklJjW/RFsFLPA
 PGaJ5asOM4FUCQsESWzcPg1sFIuAqsS6Ew/AVvAK2Em077jLBrFCXmL1hgPMIDYnUPx1y0Gw
 eiEBW4nlC94zT2DkW8DIsIpRJLW0ODc9t9hIrzgxt7g0L10vOT93EyMwfrYd+7llB2PXu+BD
 jAIcjEo8vC9CXscJsSaWFVfmHmKU4GBWEuF1Ons6Tog3JbGyKrUoP76oNCe1+BCjKdBRE5ml
 RJPzgbGdVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBkVvPz2Vd
 jjbb5z6Jh+wxCgr1uqGFr+4y6t5cHhwT1JmVJKx1cL19kfLNyRPVHlTMfHM0IrWP6UJYkFqM
 XgW7eNyRhoUr5zTcduQV1d/FOeXiBKXX/7/qz924WTTx3J2QbemHPHZx7J6g1pL2fzrz8hKD
 zAU7nY+eE52SHHlUMWJm3Pmo876/lFiKMxINtZiLihMBVz1aMbUCAAA=
X-CMS-MailID: 20200619103706eucas1p24f226bc00559f0812bc44d7933acd1e4
X-Msg-Generator: CA
X-RootMTR: 20200619103706eucas1p24f226bc00559f0812bc44d7933acd1e4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103706eucas1p24f226bc00559f0812bc44d7933acd1e4
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103706eucas1p24f226bc00559f0812bc44d7933acd1e4@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 19/36] drm: rockchip: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2dlbS5jIHwgMjMgKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKaW5kZXggMjk3MGU1MzRlMmJiLi5jYjUwZjJi
YTJlNDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
Z2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwpA
QCAtMzYsOCArMzYsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2dlbV9pb21tdV9tYXAoc3RydWN0
IHJvY2tjaGlwX2dlbV9vYmplY3QgKnJrX29iaikKIAogCXJrX29iai0+ZG1hX2FkZHIgPSBya19v
YmotPm1tLnN0YXJ0OwogCi0JcmV0ID0gaW9tbXVfbWFwX3NnKHByaXZhdGUtPmRvbWFpbiwgcmtf
b2JqLT5kbWFfYWRkciwgcmtfb2JqLT5zZ3QtPnNnbCwKLQkJCSAgIHJrX29iai0+c2d0LT5uZW50
cywgcHJvdCk7CisJcmV0ID0gaW9tbXVfbWFwX3NndGFibGUocHJpdmF0ZS0+ZG9tYWluLCBya19v
YmotPmRtYV9hZGRyLCBya19vYmotPnNndCwKKwkJCQlwcm90KTsKIAlpZiAocmV0IDwgcmtfb2Jq
LT5iYXNlLnNpemUpIHsKIAkJRFJNX0VSUk9SKCJmYWlsZWQgdG8gbWFwIGJ1ZmZlcjogc2l6ZT0l
emQgcmVxdWVzdF9zaXplPSV6ZFxuIiwKIAkJCSAgcmV0LCBya19vYmotPmJhc2Uuc2l6ZSk7CkBA
IC05OCwxMSArOTgsMTAgQEAgc3RhdGljIGludCByb2NrY2hpcF9nZW1fZ2V0X3BhZ2VzKHN0cnVj
dCByb2NrY2hpcF9nZW1fb2JqZWN0ICpya19vYmopCiAJICogVE9ETzogUmVwbGFjZSB0aGlzIGJ5
IGRybV9jbGZsdXNoX3NnKCkgb25jZSBpdCBjYW4gYmUgaW1wbGVtZW50ZWQKIAkgKiB3aXRob3V0
IHJlbHlpbmcgb24gc3ltYm9scyB0aGF0IGFyZSBub3QgZXhwb3J0ZWQuCiAJICovCi0JZm9yX2Vh
Y2hfc2cocmtfb2JqLT5zZ3QtPnNnbCwgcywgcmtfb2JqLT5zZ3QtPm5lbnRzLCBpKQorCWZvcl9l
YWNoX3NndGFibGVfc2cocmtfb2JqLT5zZ3QsIHMsIGkpCiAJCXNnX2RtYV9hZGRyZXNzKHMpID0g
c2dfcGh5cyhzKTsKIAotCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UoZHJtLT5kZXYsIHJrX29iai0+
c2d0LT5zZ2wsIHJrX29iai0+c2d0LT5uZW50cywKLQkJCSAgICAgICBETUFfVE9fREVWSUNFKTsK
KwlkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UoZHJtLT5kZXYsIHJrX29iai0+c2d0LCBETUFf
VE9fREVWSUNFKTsKIAogCXJldHVybiAwOwogCkBAIC0zNTAsOCArMzQ5LDggQEAgdm9pZCByb2Nr
Y2hpcF9nZW1fZnJlZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJCWlmIChw
cml2YXRlLT5kb21haW4pIHsKIAkJCXJvY2tjaGlwX2dlbV9pb21tdV91bm1hcChya19vYmopOwog
CQl9IGVsc2UgewotCQkJZG1hX3VubWFwX3NnKGRybS0+ZGV2LCBya19vYmotPnNndC0+c2dsLAot
CQkJCSAgICAgcmtfb2JqLT5zZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCQlkbWFf
dW5tYXBfc2d0YWJsZShkcm0tPmRldiwgcmtfb2JqLT5zZ3QsCisJCQkJCSAgRE1BX0JJRElSRUNU
SU9OQUwsIDApOwogCQl9CiAJCWRybV9wcmltZV9nZW1fZGVzdHJveShvYmosIHJrX29iai0+c2d0
KTsKIAl9IGVsc2UgewpAQCAtNDc2LDE1ICs0NzUsMTMgQEAgcm9ja2NoaXBfZ2VtX2RtYV9tYXBf
c2coc3RydWN0IGRybV9kZXZpY2UgKmRybSwKIAkJCXN0cnVjdCBzZ190YWJsZSAqc2csCiAJCQlz
dHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCAqcmtfb2JqKQogewotCWludCBjb3VudCA9IGRtYV9t
YXBfc2coZHJtLT5kZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywKLQkJCSAgICAgICBETUFfQklESVJF
Q1RJT05BTCk7Ci0JaWYgKCFjb3VudCkKLQkJcmV0dXJuIC1FSU5WQUw7CisJaW50IGVyciA9IGRt
YV9tYXBfc2d0YWJsZShkcm0tPmRldiwgc2csIERNQV9CSURJUkVDVElPTkFMLCAwKTsKKwlpZiAo
ZXJyKQorCQlyZXR1cm4gZXJyOwogCiAJaWYgKGRybV9wcmltZV9nZXRfY29udGlndW91c19zaXpl
KHNnKSA8IGF0dGFjaC0+ZG1hYnVmLT5zaXplKSB7CiAJCURSTV9FUlJPUigiZmFpbGVkIHRvIG1h
cCBzZ190YWJsZSB0byBjb250aWd1b3VzIGxpbmVhciBhZGRyZXNzLlxuIik7Ci0JCWRtYV91bm1h
cF9zZyhkcm0tPmRldiwgc2ctPnNnbCwgc2ctPm5lbnRzLAotCQkJICAgICBETUFfQklESVJFQ1RJ
T05BTCk7CisJCWRtYV91bm1hcF9zZ3RhYmxlKGRybS0+ZGV2LCBzZywgRE1BX0JJRElSRUNUSU9O
QUwsIDApOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
