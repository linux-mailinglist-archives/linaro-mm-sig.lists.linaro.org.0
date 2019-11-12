Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 778A3F8C02
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Nov 2019 10:39:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4381760C10
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Nov 2019 09:39:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3727260E12; Tue, 12 Nov 2019 09:39:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A312E60BEF;
	Tue, 12 Nov 2019 09:39:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7359A608DE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Nov 2019 09:39:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 578CE60BEB; Tue, 12 Nov 2019 09:39:00 +0000 (UTC)
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
 by lists.linaro.org (Postfix) with ESMTPS id 3A84F608F6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Nov 2019 09:38:58 +0000 (UTC)
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191112093854epoutp0240582f8b434306ea70e5964cda26b1f4~WYMiZ-rH12775227752epoutp02U
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Nov 2019 09:38:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191112093854epoutp0240582f8b434306ea70e5964cda26b1f4~WYMiZ-rH12775227752epoutp02U
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191112093853epcas1p29d44f964c28671b1e9da7de087517809~WYMhuTSvk2042620426epcas1p2r;
 Tue, 12 Nov 2019 09:38:53 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.157]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47C2kM11HQzMqYkn; Tue, 12 Nov
 2019 09:38:51 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 9E.AC.04085.BAD7ACD5; Tue, 12 Nov 2019 18:38:51 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191112093850epcas1p31a1201fcc86997add355a7b5aeabf305~WYMepxctd2404024040epcas1p3A;
 Tue, 12 Nov 2019 09:38:50 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191112093850epsmtrp196297a1f82c99ac9eff0e0beee61edf8~WYMepKMeD1364713647epsmtrp1a;
 Tue, 12 Nov 2019 09:38:50 +0000 (GMT)
X-AuditID: b6c32a37-e19ff70000000ff5-32-5dca7dab957b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 70.3F.24756.AAD7ACD5; Tue, 12 Nov 2019 18:38:50 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.222]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191112093850epsmtip24423fef9bb06c287a4daa1804d30f153~WYMecECIc2176721767epsmtip23;
 Tue, 12 Nov 2019 09:38:50 +0000 (GMT)
From: Seung-Woo Kim <sw0312.kim@samsung.com>
To: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 sumit.semwal@linaro.org, gustavo@padovan.org
Date: Tue, 12 Nov 2019 18:41:29 +0900
Message-Id: <1573551689-23531-1-git-send-email-sw0312.kim@samsung.com>
X-Mailer: git-send-email 1.7.4.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrIKsWRmVeSWpSXmKPExsWy7bCmru7q2lOxBiua2C2ufH3PZrHzwS52
 iy9XHjJZXN41h82iZ8NWVotTdz+zW8yY/JLNgd3jzrU9bB73u48zedz+95jZY+ekvUwefVtW
 MXp83iQXwBaVbZORmpiSWqSQmpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+TiE6Dr
 lpkDdIuSQlliTilQKCCxuFhJ386mKL+0JFUhI7+4xFYptSAlp8CyQK84Mbe4NC9dLzk/18rQ
 wMDIFKgwITtjUv8/poKlrBVTD0xiamBczNLFyMkhIWAi0X7lKpDNxSEksINR4sy6PewQzidG
 iZnPHrBBON8YJdavXMnUxcgB1rLxgSVEfC+jxPLlt1ghnC+MEktvPGYHmcsmoCOxf8lvsISI
 wAZGicYpzawgCWYBKYltS9ezgdjCAgES77ceYwaZyiKgKrFttilImFfATeLehkY2iPsUJBbc
 ewt2hYTABDaJWW3bWCESLhIbmm9BPSEs8er4FnYIW0riZX8blF0tsX3CT3aI5g5GiZ72RqgG
 Y4n9SyeDvcMsoCmxfpc+RFhRYufvuYwQd/JJvPvawwrxMa9ER5sQRImKxM6jk9ggwlISszYE
 Q4Q9JN7uWcAEYgsJxEosbW5nn8AoOwth/gJGxlWMYqkFxbnpqcWGBcbIkbSJEZy8tMx3MG44
 53OIUYCDUYmHlyHhZKwQa2JZcWXuIUYJDmYlEd4dFSdihXhTEiurUovy44tKc1KLDzGaAsNu
 IrOUaHI+MLHmlcQbmhoZGxtbmBiamRoaKonzOi5fGiskkJ5YkpqdmlqQWgTTx8TBKdXAOHPR
 tAexWbsuHVoz3df2hmBt9eQ3BnIxK/5M3br1y4xs3S+Hevltb9rdvBzkVvBH5fLrlsLWHb/m
 vbp074q+6l7NFqeZbfrbEteqySfbSzqftrlRrxMx70fuvibV7/rBt4vU4pTeb3ivZBgtK3Wt
 veV3voVCxB3W3vtKb9xKHhVJKG56HXdLW4mlOCPRUIu5qDgRAJ8BMqh0AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnluLIzCtJLcpLzFFi42LZdlhJXndV7alYg96jEhZXvr5ns9j5YBe7
 xZcrD5ksLu+aw2bRs2Erq8Wpu5/ZLWZMfsnmwO5x59oeNo/73ceZPG7/e8zssXPSXiaPvi2r
 GD0+b5ILYIvisklJzcksSy3St0vgypjU/4+pYClrxdQDk5gaGBezdDFycEgImEhsfGDZxcjF
 ISSwm1Fi3pnrrF2MnEBxKYm537YzQtQISxw+XAxR84lR4uv8iUwgNWwCOhL7l/xmBUmICGxj
 lPgz/RwbSIIZqHnb0vVgtrCAn8SCFQtYQQaxCKhKbJttChLmFXCTuLehkQ1il4LEgntv2SYw
 8ixgZFjFKJlaUJybnltsWGCYl1quV5yYW1yal66XnJ+7iREcTFqaOxgvL4k/xCjAwajEw7si
 9mSsEGtiWXFl7iFGCQ5mJRHeHRUnYoV4UxIrq1KL8uOLSnNSiw8xSnOwKInzPs07FikkkJ5Y
 kpqdmlqQWgSTZeLglGpgjLweOOlR89yWZvdD3q23HNWNn87dWc+2P7eQ9Z2u9S2ZSQ9M5K16
 DuRU3Y7VYWre/zIx48Lk4v9PpHISnwTdUfmhNdnBpi2tY7JG9IVWCTeR1U9T+mdwvFg0/5PX
 ydgl/G82qt6VM963+vabzWujJK6pfkmcl+jUPr/K2nOef0DgpljxBXI6SizFGYmGWsxFxYkA
 zGURpCICAAA=
X-CMS-MailID: 20191112093850epcas1p31a1201fcc86997add355a7b5aeabf305
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191112093850epcas1p31a1201fcc86997add355a7b5aeabf305
References: <CGME20191112093850epcas1p31a1201fcc86997add355a7b5aeabf305@epcas1p3.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: sw0312.kim@samsung.com
Subject: [Linaro-mm-sig] [PATCH] dma-buf/sw-sync: Use unsigned type for
 value of sync_timeline
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

VGhlIHZhbHVlIG9mIHN5bmNfdGltZWxpbmUgaXMgb25seSBpbmNyZW1lbnRlZCBhbmQgYWxsIHJl
ZmVyZW5jZQp1c2FnZSBvZiBpdCBpcyB1bnNpZ25lZC4gVXNlIHVuc2lnbmVkIHR5cGUgZm9yIHZh
bHVlIG9mCnN5bmN0aW1lbGluZS4KClNpZ25lZC1vZmYtYnk6IFNldW5nLVdvbyBLaW0gPHN3MDMx
Mi5raW1Ac2Ftc3VuZy5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaCB8ICAg
IDIgKy0KIDEgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmggYi9kcml2ZXJzL2RtYS1i
dWYvc3luY19kZWJ1Zy5oCmluZGV4IDYxNzZlNTIuLmZmMDdmMGIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmgKKysrIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcu
aApAQCAtMzYsNyArMzYsNyBAQCBzdHJ1Y3Qgc3luY190aW1lbGluZSB7CiAKIAkvKiBwcm90ZWN0
ZWQgYnkgbG9jayAqLwogCXU2NAkJCWNvbnRleHQ7Ci0JaW50CQkJdmFsdWU7CisJdW5zaWduZWQg
aW50CQl2YWx1ZTsKIAogCXN0cnVjdCByYl9yb290CQlwdF90cmVlOwogCXN0cnVjdCBsaXN0X2hl
YWQJcHRfbGlzdDsKLS0gCjEuNy40LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
