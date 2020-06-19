Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F192006F9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:43:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DECA4665A6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:43:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D1085665BB; Fri, 19 Jun 2020 10:43:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6989665E9;
	Fri, 19 Jun 2020 10:37:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EC6B6665BA
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D4936665BB; Fri, 19 Jun 2020 10:37:04 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 7E80D66597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:58 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103657euoutp01593e7826b9dbca582576b61cdf7af44e~Z66B6Phws1849918499euoutp01I
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103657euoutp01593e7826b9dbca582576b61cdf7af44e~Z66B6Phws1849918499euoutp01I
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103657eucas1p1acec81d0405a3000b1e3cfde96d01e0d~Z66BlNJnW3246432464eucas1p1j;
 Fri, 19 Jun 2020 10:36:57 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 1F.8D.05997.9459CEE5; Fri, 19
 Jun 2020 11:36:57 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103657eucas1p2b7cec8f7b477c9574e2594ad6644a780~Z66BQrYY02889228892eucas1p2k;
 Fri, 19 Jun 2020 10:36:57 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103657eusmtrp169f64dd2b8cad524390c196ceea91b8d~Z66BQB5I40959609596eusmtrp1w;
 Fri, 19 Jun 2020 10:36:57 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-d3-5eec954909d8
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id CC.DA.06314.8459CEE5; Fri, 19
 Jun 2020 11:36:56 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103656eusmtip2c6c962eea3bd07d12b3e049b89c1473c~Z66Aon5lM3164531645eusmtip2T;
 Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:06 +0200
Message-Id: <20200619103636.11974-7-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTYRSF/Wc6C0h1rBiuKJiUKHEB3BInQYkaH8bERCO+SGJ1hBFQtrSC
 awJuVSqCgCKCGlwiIFW0LGIrS1Go2lAVidqAsiiE1Y1NEUHGAXz77vnvyTm5+WlcUUS40qER
 +wV1BB+mJB1lxdW/XnptvNitWvrkh4I9Z3uOsQ/S8wl2tDgZZ+v6v5KsMb2BYnPzqjA2q9yX
 bbpqx9i+umaMNXx6S7BvjFdI9u7TDxRr/vaZWCvn9Nf0iCsdyJJxDweaCK7xrAXjCm7FcvUj
 n3Au9X024kz2OJJL+rOUSyy8g7heg/uWqQGOq4OEsNAYQe3jt8sxZLBAS0UNehy8Xf2ajEOJ
 7jrkQAOzEsrjz5A65EgrmBwEZm0iIQ19CM432Slp6EWQ0piCTVgsQ+ZxSzaCr/WZ5KSl84IB
 iVskswx0PTpSZGfmFIJn55xExplGDH537BV5JuMPqcNVlMgyZj58L63/lyBn1oDpZSYlpc2D
 vPsVuMgOjB90nTQTkl5JweNXnhJvgI5W23i7mdBpKRz3zgVraoJMLAfMCQTNtruUNCQgeHM8
 HUlbvtBgGxprSo+1Wwj5Rh9JXgdPTYOUKAMzDd73zJD6T4OU4ku4JMvhjFYhbS+ADMu9yVjz
 q1pcYg46zpZi0n2SEYw2f5SdR/My/odlIXQHuQjRmvBgQbM8QjjgreHDNdERwd6BkeEGNPaZ
 rCOWvhJkHN5diRgaKZ3k7du6VAqCj9EcCq9EQONKZ/n6GqtKIQ/iDx0W1JE71dFhgqYSzaFl
 Shf5ihsdOxRMML9f2CcIUYJ64hWjHVzj0NE95f69uXlp/qejfkKNNdR2+hYnu1nk+6W2Ik17
 O8Rt6MXB68c8TG3x6n5/tnWVp4+rGxFrL9Prg6q8NnfOfhSTPNAyvS3JK+GDPWfFEhdhk7Xl
 Xb+NDywbVXXrPLZGWrXeSZdRY+ustSMZo1NKGg7oW7anta+2HpmVHGDLd16slGlC+GWLcLWG
 /wur3wDWSAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xe7oeU9/EGVy9YG3Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLXTPusFusXH2UyWLBfmuLB3NvMll8ufKQyWLT42usFpd3zWGzWHvkLrvF
 wQ9PWB14PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR/9fA4++
 LasYPT5vkgvgjtKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxL
 LdK3S9DL+L65jb3gu3LFsmMX2RoY++S6GDk5JARMJI7/OsjWxcjFISSwlFHi6pt+VoiEjMTJ
 aQ1QtrDEn2tdUEWfGCU+zO1mA0mwCRhKdL2FSIgIdDJKTOv+yA6SYBZ4ziTxskUfxBYWCJTo
 3NzKDGKzCKhKfNx7mwnE5hWwldh9fjY7xAZ5idUbDoDVcArYSbxuOQi2WQioZvmC98wTGPkW
 MDKsYhRJLS3OTc8tNtQrTswtLs1L10vOz93ECIyUbcd+bt7BeGlj8CFGAQ5GJR7eFyGv44RY
 E8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iNEU6KiJzFKiyfnAKM4riTc0NTS3
 sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cDolej6/2HauseaUst2FSsYr964
 duqu1xNt01d7r3F6XbS50DJ8zZegDRdfFnUa7qthkurq6DSeHqgwM3JPpuTVDU8/Rm+wPrUg
 4OmNoH7bKYqK5fJqjVov7j5jZtUOvKIi7XSN/XvPp+YprpuNkh4eYjaKOVP39M3uLs5I9/db
 m+KW+6yT++6gxFKckWioxVxUnAgAMgFcwKoCAAA=
X-CMS-MailID: 20200619103657eucas1p2b7cec8f7b477c9574e2594ad6644a780
X-Msg-Generator: CA
X-RootMTR: 20200619103657eucas1p2b7cec8f7b477c9574e2594ad6644a780
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103657eucas1p2b7cec8f7b477c9574e2594ad6644a780
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103657eucas1p2b7cec8f7b477c9574e2594ad6644a780@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, etnaviv@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 06/36] drm: etnaviv: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9l
dG5hdml2X2dlbS5jIHwgMTIgKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9l
dG5hdml2X21tdS5jIHwgMTMgKysrLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dl
bS5jCmluZGV4IGY1ZTViYjhiYTk1My4uOWY0NjEzZjdlMjU1IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5h
dml2L2V0bmF2aXZfZ2VtLmMKQEAgLTI3LDcgKzI3LDcgQEAgc3RhdGljIHZvaWQgZXRuYXZpdl9n
ZW1fc2NhdHRlcl9tYXAoc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqZXRuYXZpdl9vYmopCiAJ
ICogYmVjYXVzZSBkaXNwbGF5IGNvbnRyb2xsZXIsIEdQVSwgZXRjLiBhcmUgbm90IGNvaGVyZW50
LgogCSAqLwogCWlmIChldG5hdml2X29iai0+ZmxhZ3MgJiBFVE5BX0JPX0NBQ0hFX01BU0spCi0J
CWRtYV9tYXBfc2coZGV2LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJ
T05BTCk7CisJCWRtYV9tYXBfc2d0YWJsZShkZXYtPmRldiwgc2d0LCBETUFfQklESVJFQ1RJT05B
TCwgMCk7CiB9CiAKIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX3NjYXR0ZXJsaXN0X3VubWFwKHN0
cnVjdCBldG5hdml2X2dlbV9vYmplY3QgKmV0bmF2aXZfb2JqKQpAQCAtNTEsNyArNTEsNyBAQCBz
dGF0aWMgdm9pZCBldG5hdml2X2dlbV9zY2F0dGVybGlzdF91bm1hcChzdHJ1Y3QgZXRuYXZpdl9n
ZW1fb2JqZWN0ICpldG5hdml2X29iagogCSAqIGRpc2NhcmQgdGhvc2Ugd3JpdGVzLgogCSAqLwog
CWlmIChldG5hdml2X29iai0+ZmxhZ3MgJiBFVE5BX0JPX0NBQ0hFX01BU0spCi0JCWRtYV91bm1h
cF9zZyhkZXYtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsK
KwkJZG1hX3VubWFwX3NndGFibGUoZGV2LT5kZXYsIHNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDAp
OwogfQogCiAvKiBjYWxsZWQgd2l0aCBldG5hdml2X29iai0+bG9jayBoZWxkICovCkBAIC00MDQs
OSArNDA0LDggQEAgaW50IGV0bmF2aXZfZ2VtX2NwdV9wcmVwKHN0cnVjdCBkcm1fZ2VtX29iamVj
dCAqb2JqLCB1MzIgb3AsCiAJfQogCiAJaWYgKGV0bmF2aXZfb2JqLT5mbGFncyAmIEVUTkFfQk9f
Q0FDSEVEKSB7Ci0JCWRtYV9zeW5jX3NnX2Zvcl9jcHUoZGV2LT5kZXYsIGV0bmF2aXZfb2JqLT5z
Z3QtPnNnbCwKLQkJCQkgICAgZXRuYXZpdl9vYmotPnNndC0+bmVudHMsCi0JCQkJICAgIGV0bmF2
aXZfb3BfdG9fZG1hX2RpcihvcCkpOworCQlkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUoZGV2LT5k
ZXYsIGV0bmF2aXZfb2JqLT5zZ3QsCisJCQkJCSBldG5hdml2X29wX3RvX2RtYV9kaXIob3ApKTsK
IAkJZXRuYXZpdl9vYmotPmxhc3RfY3B1X3ByZXBfb3AgPSBvcDsKIAl9CiAKQEAgLTQyMSw4ICs0
MjAsNyBAQCBpbnQgZXRuYXZpdl9nZW1fY3B1X2Zpbmkoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpv
YmopCiAJaWYgKGV0bmF2aXZfb2JqLT5mbGFncyAmIEVUTkFfQk9fQ0FDSEVEKSB7CiAJCS8qIGZp
bmkgd2l0aG91dCBhIHByZXAgaXMgYWxtb3N0IGNlcnRhaW5seSBhIHVzZXJzcGFjZSBlcnJvciAq
LwogCQlXQVJOX09OKGV0bmF2aXZfb2JqLT5sYXN0X2NwdV9wcmVwX29wID09IDApOwotCQlkbWFf
c3luY19zZ19mb3JfZGV2aWNlKGRldi0+ZGV2LCBldG5hdml2X29iai0+c2d0LT5zZ2wsCi0JCQll
dG5hdml2X29iai0+c2d0LT5uZW50cywKKwkJZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2aWNlKGRl
di0+ZGV2LCBldG5hdml2X29iai0+c2d0LAogCQkJZXRuYXZpdl9vcF90b19kbWFfZGlyKGV0bmF2
aXZfb2JqLT5sYXN0X2NwdV9wcmVwX29wKSk7CiAJCWV0bmF2aXZfb2JqLT5sYXN0X2NwdV9wcmVw
X29wID0gMDsKIAl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2
X21tdS5jIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9tbXUuYwppbmRleCAzNjA3
ZDM0OGMyOTguLjEzYjEwMDU1M2EwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2
aXYvZXRuYXZpdl9tbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X21t
dS5jCkBAIC03OSw3ICs3OSw3IEBAIHN0YXRpYyBpbnQgZXRuYXZpdl9pb21tdV9tYXAoc3RydWN0
IGV0bmF2aXZfaW9tbXVfY29udGV4dCAqY29udGV4dCwgdTMyIGlvdmEsCiAJaWYgKCFjb250ZXh0
IHx8ICFzZ3QpCiAJCXJldHVybiAtRUlOVkFMOwogCi0JZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNn
LCBzZ3QtPm5lbnRzLCBpKSB7CisJZm9yX2VhY2hfc2d0YWJsZV9kbWFfc2coc2d0LCBzZywgaSkg
ewogCQl1MzIgcGEgPSBzZ19kbWFfYWRkcmVzcyhzZykgLSBzZy0+b2Zmc2V0OwogCQlzaXplX3Qg
Ynl0ZXMgPSBzZ19kbWFfbGVuKHNnKSArIHNnLT5vZmZzZXQ7CiAKQEAgLTk1LDE0ICs5NSw3IEBA
IHN0YXRpYyBpbnQgZXRuYXZpdl9pb21tdV9tYXAoc3RydWN0IGV0bmF2aXZfaW9tbXVfY29udGV4
dCAqY29udGV4dCwgdTMyIGlvdmEsCiAJcmV0dXJuIDA7CiAKIGZhaWw6Ci0JZGEgPSBpb3ZhOwot
Ci0JZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBpLCBqKSB7Ci0JCXNpemVfdCBieXRlcyA9IHNn
X2RtYV9sZW4oc2cpICsgc2ctPm9mZnNldDsKLQotCQlldG5hdml2X2NvbnRleHRfdW5tYXAoY29u
dGV4dCwgZGEsIGJ5dGVzKTsKLQkJZGEgKz0gYnl0ZXM7Ci0JfQorCWV0bmF2aXZfY29udGV4dF91
bm1hcChjb250ZXh0LCBpb3ZhLCBkYSAtIGlvdmEpOwogCXJldHVybiByZXQ7CiB9CiAKQEAgLTEx
Myw3ICsxMDYsNyBAQCBzdGF0aWMgdm9pZCBldG5hdml2X2lvbW11X3VubWFwKHN0cnVjdCBldG5h
dml2X2lvbW11X2NvbnRleHQgKmNvbnRleHQsIHUzMiBpb3ZhLAogCXVuc2lnbmVkIGludCBkYSA9
IGlvdmE7CiAJaW50IGk7CiAKLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+bmVudHMs
IGkpIHsKKwlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9zZyhzZ3QsIHNnLCBpKSB7CiAJCXNpemVfdCBi
eXRlcyA9IHNnX2RtYV9sZW4oc2cpICsgc2ctPm9mZnNldDsKIAogCQlldG5hdml2X2NvbnRleHRf
dW5tYXAoY29udGV4dCwgZGEsIGJ5dGVzKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
