Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 546841CF172
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:21:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 796D460723
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:21:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 69AAD61993; Tue, 12 May 2020 09:21:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B009F65F89;
	Tue, 12 May 2020 09:04:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 31E7C619D7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:04:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2536965F81; Tue, 12 May 2020 09:04:30 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id AE74865F89
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:10 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090109euoutp0246d7c2aeb1b64cef1ab731d600a65a96~OPFiJe69y0455404554euoutp02u
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090109euoutp0246d7c2aeb1b64cef1ab731d600a65a96~OPFiJe69y0455404554euoutp02u
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090109eucas1p2cb1cd23f05a0d9aa74a60a822a33246f~OPFh5vM1V2649026490eucas1p2O;
 Tue, 12 May 2020 09:01:09 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C5.57.61286.5D56ABE5; Tue, 12
 May 2020 10:01:09 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe~OPFhj_QxY0961809618eucas1p2g;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090108eusmtrp13342f109c85886acdaebe16bad3a603c~OPFhjSowN0183401834eusmtrp1O;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-4a-5eba65d5257d
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id CD.E2.07950.4D56ABE5; Tue, 12
 May 2020 10:01:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090108eusmtip13134325216fc7001a96c17dd7ae2781d~OPFhDc6Oi1352513525eusmtip1B;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:23 +0200
Message-Id: <20200512090058.14910-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSayyVcRzu/97O63JOr8PmPxntLLUu7n14m0JbH94vjT50WRa95XXruJ0X
 pXWRuxMmah1qWCXCQXKIRi7pMEsNya25tmJDctiKkdcrfXue5/f8/s+z3/4kKq/ArcjgsChO
 FcYqFYQxVvv+90f7z1yDr5PmgQmd0d2J0C81lTi9XnsPpfuW5gn6RVk7Qhe+daPTHlVJaEPf
 OEJXT/bjdG/DY4LWvvsqoVt+TuGepsxUSz7ClOeXA6ZxuRBj6pbHcGb0rh5hXj27zQyvTaJM
 zkAxYN4MxhFMZk0pYBarbbxNzhsf9eeUwTGcytH9onHQamIaGvGDujarMeBxIEWmBiQJqcNQ
 3+aiBsaknCoB0KD9hojEAKBWd58QySKAE0WDqBoYbW5U6kYkApZTxQBqOsH2xlJCBSYMCMoZ
 qmfVhIAtqCQAOzJMBYxSDQjMS2AFbE6dggUrC5uPYpQdHGhawoRKUuoYXMv3FLNsYVlV86bF
 iHKHowWrmKg3SWB8h1TEJ6CmK2mrmzmc0ddIRGwNu3LSMaEbpBIAHO/WSkSSDmBvvAaILjc4
 0v2HEIJRaj+sbHAU5eNwPT6ZEE8kgwOzZmJ9GcyufYiKshSmJstF916Yp6/Yjm351LNVh4HZ
 E/24eJ52AMsnc7EsYJv3P6wQgFJgyUXzoYEc7xzGXXXg2VA+OizQ4XJ4aDXY+EVda/pfr8FS
 z6VWQJFAYSpNdan3leNsDB8b2gogiSospInBG5LUn429zqnC/VTRSo5vBbtITGEpdX0yfUFO
 BbJR3BWOi+BU/6YIaWQVB6rNrReO5Nrsbq+f9X6aFuJt6XcIywxIqcyxymWzznidxp1sYrI8
 4odGDo6d6ym6iWrTR8cdp2cKdOFzeNKQmT18HjnlsXPGY8QrTa+Unaxbn7O7Me9Ajre5+sj2
 lcgbfeyUzMrZ9ODIkFt7AnYUDhd/iVDqUgrufCjy+t6Mtk4rMD6IdT6Aqnj2LwODTK1BAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xu7pXUnfFGZxYZ2jRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t0Tl7A7vFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x+PJwXlMHmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DL+tHQyF7wQqHg74wtrA2M7XxcjJ4eEgInE+q132LsYuTiEBJYySixu2cEIkZCRODmtgRXC
 Fpb4c62LDaLoE6PE3vO72EESbAKGEl1vIRIiAp2MEtO6P4KNYhY4wCTxqm072ChhAX+J+0+3
 gHWwCKhK3Nj3laWLkYODV8BW4t88B4gN8hKrNxxgBrE5Bewk7s//wwJiCwkUSjy6+pZlAiPf
 AkaGVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIERsu3Yzy1Al78LPsQowMGoxMPbYbQzTog1
 say4MvcQowQHs5IIb0smUIg3JbGyKrUoP76oNCe1+BCjKdBNE5mlRJPzgdGbVxJvaGpobmFp
 aG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBsW5xX/OM8xHh2QH1i++vNLw7e3Xn
 KXHlovpHjaIBX/XrT09aUVSUqjDRbO2GxZVrm1uX6nl/f5ahsKhY+rbJy69hJlPOZsUGGhjo
 n1hhLyl5eN7tuwluxyw+Tv9iu6Z08cPXkQrKBd8uuKT//MxhsPHbv5SHNeZpgTs4a18yTOcz
 TsyqZFf+rsRSnJFoqMVcVJwIAOkrfu+mAgAA
X-CMS-MailID: 20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe
X-Msg-Generator: CA
X-RootMTR: 20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 03/38] iommu: add generic helper for
 mapping sgtable objects
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

c3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0cnVjdHVyZSB1c2VkIGZvciBkZXNjcmliaW5n
IGEgbWVtb3J5CmJ1ZmZlci4gSXQgY29uc2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9y
eSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nlcwooc2dsIGVudHJ5KSwgYXMgd2VsbCBhcyB0aGUgbnVt
YmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJpZXM6IENQVSBwYWdlcwoob3JpZ19uZW50cyBlbnRyeSkg
YW5kIERNQSBtYXBwZWQgcGFnZXMgKG5lbnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBp
dCB3YXMgYSBjb21tb24gbWlzdGFrZSB0byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50
cmllcywgY2FsbGluZyBtYXBwaW5nIGZ1bmN0aW9ucyB3aXRoIGEgd3JvbmcgbnVtYmVyIG9mIGVu
dHJpZXMuCgpUbyBhdm9pZCBzdWNoIGlzc3VlcywgbGV0cyBpbnRyb2R1Y2UgYSBjb21tb24gd3Jh
cHBlciBvcGVyYXRpbmcgZGlyZWN0bHkKb24gdGhlIHN0cnVjdCBzZ190YWJsZSBvYmplY3RzLCB3
aGljaCB0YWtlIGNhcmUgb2YgdGhlIHByb3BlciB1c2Ugb2YKdGhlIG5lbnRzIGFuZCBvcmlnX25l
bnRzIGVudHJpZXMuCgpTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20+Ci0tLQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0ggdjQg
MDAvMzhdIERSTTogZml4IHN0cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1
c2UnIHRocmVhZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjAwNTEyMDg1
NzEwLjE0Njg4LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQogaW5jbHVkZS9saW51
eC9pb21tdS5oIHwgMTYgKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2lvbW11LmggYi9pbmNsdWRlL2xp
bnV4L2lvbW11LmgKaW5kZXggN2NmZDJkZC4uYmE2NjJiYSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9s
aW51eC9pb21tdS5oCisrKyBiL2luY2x1ZGUvbGludXgvaW9tbXUuaApAQCAtNDc4LDYgKzQ3OCwy
MiBAQCBleHRlcm4gc2l6ZV90IGlvbW11X21hcF9zZ19hdG9taWMoc3RydWN0IGlvbW11X2RvbWFp
biAqZG9tYWluLAogZXh0ZXJuIHZvaWQgaW9tbXVfc2V0X2ZhdWx0X2hhbmRsZXIoc3RydWN0IGlv
bW11X2RvbWFpbiAqZG9tYWluLAogCQkJaW9tbXVfZmF1bHRfaGFuZGxlcl90IGhhbmRsZXIsIHZv
aWQgKnRva2VuKTsKIAorLyoqCisgKiBpb21tdV9tYXBfc2d0YWJsZSAtIE1hcCB0aGUgZ2l2ZW4g
YnVmZmVyIHRvIHRoZSBJT01NVSBkb21haW4KKyAqIEBkb21haW46CVRoZSBJT01NVSBkb21haW4g
dG8gcGVyZm9yCisgKiBAaW92YToJVGhlIHN0YXJ0IGFkZHJlZXMgdG8gbWFwIHRoZSBidWZmZXIK
KyAqIEBzZ3Q6CVRoZSBzZ190YWJsZSBvYmplY3QgZGVzY3JpYmluZyB0aGUgYnVmZmVyCisgKiBA
cHJvdDoJSU9NTVUgcHJvdGVjdGlvbiBiaXRzCisgKgorICogQ3JlYXRlIGEgbWFwcGluZyBhdCBA
aW92YSBmb3IgdGhlIGJ1ZmZlciBkZXNjcmliZWQgYnkgYSBzY2F0dGVybGlzdAorICogc3RvcmVk
IGluIHRoZSBnaXZlbiBzZ190YWJsZSBvYmplY3QgaW4gdGhlIHByb3ZpZGVkIElPTU1VIGRvbWFp
bi4KKyAqLworc3RhdGljIGlubGluZSBzaXplX3QgaW9tbXVfbWFwX3NndGFibGUoc3RydWN0IGlv
bW11X2RvbWFpbiAqZG9tYWluLAorCQkJdW5zaWduZWQgbG9uZyBpb3ZhLCBzdHJ1Y3Qgc2dfdGFi
bGUgKnNndCwgaW50IHByb3QpCit7CisJcmV0dXJuIGlvbW11X21hcF9zZyhkb21haW4sIGlvdmEs
IHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsIHByb3QpOworfQorCiBleHRlcm4gdm9pZCBpb21t
dV9nZXRfcmVzdl9yZWdpb25zKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGxpc3RfaGVhZCAq
bGlzdCk7CiBleHRlcm4gdm9pZCBpb21tdV9wdXRfcmVzdl9yZWdpb25zKHN0cnVjdCBkZXZpY2Ug
KmRldiwgc3RydWN0IGxpc3RfaGVhZCAqbGlzdCk7CiBleHRlcm4gdm9pZCBnZW5lcmljX2lvbW11
X3B1dF9yZXN2X3JlZ2lvbnMoc3RydWN0IGRldmljZSAqZGV2LAotLSAKMS45LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
