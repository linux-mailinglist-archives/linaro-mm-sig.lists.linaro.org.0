Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0847B20077C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 13:07:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 297BE665A1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:07:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 137CB665A6; Fri, 19 Jun 2020 11:07:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A35E66705;
	Fri, 19 Jun 2020 10:40:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 47E9966597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3CA246659C; Fri, 19 Jun 2020 10:38:35 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 62AF3665A1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:18 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103717euoutp01990132ede5737bdf1ea7408a66e97ee3~Z66UdlQbg1896418964euoutp01Q
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103717euoutp01990132ede5737bdf1ea7408a66e97ee3~Z66UdlQbg1896418964euoutp01Q
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103717eucas1p1eea0e1812066354b4495c584c9e55e05~Z66UJdHfh0708007080eucas1p1G;
 Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 01.AD.05997.D559CEE5; Fri, 19
 Jun 2020 11:37:17 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103716eucas1p28d6da172346acf044d3c1f213d9543ef~Z66TruWMo3081930819eucas1p2x;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103716eusmtrp15280a537011684db0a31a468099f5dbe~Z66TrF-eS1007310073eusmtrp1J;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-14-5eec955dc01a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AA.1B.06017.C559CEE5; Fri, 19
 Jun 2020 11:37:16 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103716eusmtip29553eb2a23be38cf52b095dd61d865f0~Z66TEv0qL0229502295eusmtip2n;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:34 +0200
Message-Id: <20200619103636.11974-35-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURiFvZ3OdFhqhoLhCiimCgaTsqjRSVAE9GFI1PjAiyYgBSZAhAIt
 qw+KgCC7yNYgAhoMS9klhZQIdMQWbKhGluAWIRBFsIiCREDAlgF8O//3nz/n3OTiiKADtcMj
 JHG0VCKOFGLmXKVm5bUooOR7oHt/NULm6Qc5ZJu8BSU3lYUIOfL7B0bWK15yyOpeT7KiJJbs
 0D0C5NLIJIdsnxpDyWFVBUY29X/ikeqFadSbTzVWNgLq+XI1l+pcnkCpzzlaDvWs5jb1YWMK
 oYrGawHV/S4Fo/LS5jEqv6MBUIvtB69YXDM/E0pHRiTQUjevIPPwNWU7L6bGKul9V3QKaNub
 DcxwSJyEAy8YNBuY4wKiDsD83pHtYQnA0o387WERQE13PW/nxJA6DdhFLYCpD19huycFWVnA
 5MIID5htyMZM2oa4C+BAnqXJhBBjHGhYn0dNC2siCNZkVm6ZuIQTXFFkICbNJ7wgs/mYy8Y5
 QkVr3xY3M/K5dDXKcoYHdX/2s/oClHcNI6y2hrPaju2qDlBXlMs1BUMiDcBJfROPHXIBHE6V
 A9blCT/qV40tcGM9F9iicmOxD1zRjHFMGBJ74bjByoQRo3ygLENYzIf3MgSs2xmWa5t3Y9Vv
 3m7XoeB6afrWEwVEIYDF+Xb3gWP5/6xqABqALR0viwqjZccldKKrTBwli5eEuYZER7UD41/S
 bWiXuoDqbzADCBwILfkz/nOBAlScIEuOYgDEEaEN33dIFyjgh4qTb9LS6OvS+EhaxgB7nCu0
 5Z948i1AQISJ4+gbNB1DS3e2HNzMLgUUfznVo5rpylmqUlxyX4/1qx8VHejzyZ2/eGs1qbnT
 /vSQH1oUkXnW2V90xJu5A/McDpk1BU+MqbudRxd6NurOJw7PyvVrSOtXrGCSCblaYTUkIiZm
 5quIRrlvkf4wfa6sX5J11Cld6+L51OEys+8X8XOwyb+NBzUWij2TnFwhVxYu9jiGSGXif6kI
 LLtHAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xe7oxU9/EGWxco2/Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9tMWdqocWW03MZLb5cechksenxNVaLy7vmsFmsPXKX3eLg
 hyesDrwea+atYfTY+20Bi8f2bw9YPe53H2fy2Lyk3uP2v8fMHpNvLGf02H2zgc2jt/kdm0ff
 llWMHp83yQVwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehl/N62ib1giWDFrR35DYwb+boYOTkkBEwk3jY9Yexi5OIQEljKKPHx1VU2iISMxMlp
 DawQtrDEn2tdbBBFnxgl7s9dywySYBMwlOh6C5EQEehklJjW/ZEdJMEscI9JYu86PxBbWCBO
 ovvjXxYQm0VAVeLn6jawZl4BO4lD/xeyQGyQl1i94QBYnBMo/rrlINhmIQFbieUL3jNPYORb
 wMiwilEktbQ4Nz232EivODG3uDQvXS85P3cTIzBOth37uWUHY9e74EOMAhyMSjy8L0Jexwmx
 JpYVV+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4EKMp0FETmaVEk/OBMZxXEm9oamhu
 YWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoFxTmLo16xbv99UpNy47P79hMR2
 th4ro2yrMJ1/17ety4lbaKehOM3mUVDIs5qaglOv68K8NzuFPMn+0CnnMl3+p0WUgePSf/+O
 f3lXdoxfIOXhibch3nsNrbo/P29st7k/TT6Hp/N7yl725N7zi9W4mp9M/nfms+Isbua7Cfrl
 8y+djNiXmymqxFKckWioxVxUnAgAn5sRn6kCAAA=
X-CMS-MailID: 20200619103716eucas1p28d6da172346acf044d3c1f213d9543ef
X-Msg-Generator: CA
X-RootMTR: 20200619103716eucas1p28d6da172346acf044d3c1f213d9543ef
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103716eucas1p28d6da172346acf044d3c1f213d9543ef
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103716eucas1p28d6da172346acf044d3c1f213d9543ef@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kvm@vger.kernel.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Kirti Wankhede <kwankhede@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 34/36] samples: vfio-mdev/mbochs: fix
 common struct sg_table related issues
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
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KCldoaWxlIHRvdWNoaW5nIHRoaXMgY29kZSwgYWxzbyBh
ZGQgbWlzc2luZyBjYWxsIHRvIGRtYV91bm1hcF9zZ3RhYmxlLgoKU2lnbmVkLW9mZi1ieTogTWFy
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KIHNhbXBsZXMvdmZp
by1tZGV2L21ib2Nocy5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYyBi
L3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jCmluZGV4IDNjYzVlNTkyMTY4Mi4uZTAzMDY4OTE3
MjczIDEwMDY0NAotLS0gYS9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYworKysgYi9zYW1wbGVz
L3ZmaW8tbWRldi9tYm9jaHMuYwpAQCAtODQ2LDcgKzg0Niw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc2df
dGFibGUgKm1ib2Noc19tYXBfZG1hYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0LAog
CWlmIChzZ19hbGxvY190YWJsZV9mcm9tX3BhZ2VzKHNnLCBkbWFidWYtPnBhZ2VzLCBkbWFidWYt
PnBhZ2Vjb3VudCwKIAkJCQkgICAgICAwLCBkbWFidWYtPm1vZGUuc2l6ZSwgR0ZQX0tFUk5FTCkg
PCAwKQogCQlnb3RvIGVycjI7Ci0JaWYgKCFkbWFfbWFwX3NnKGF0LT5kZXYsIHNnLT5zZ2wsIHNn
LT5uZW50cywgZGlyZWN0aW9uKSkKKwlpZiAoZG1hX21hcF9zZ3RhYmxlKGF0LT5kZXYsIHNnLCBk
aXJlY3Rpb24sIDApKQogCQlnb3RvIGVycjM7CiAKIAlyZXR1cm4gc2c7CkBAIC04NjgsNiArODY4
LDcgQEAgc3RhdGljIHZvaWQgbWJvY2hzX3VubWFwX2RtYWJ1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdCwKIAogCWRldl9kYmcoZGV2LCAiJXM6ICVkXG4iLCBfX2Z1bmNfXywgZG1hYnVm
LT5pZCk7CiAKKwlkbWFfdW5tYXBfc2d0YWJsZShhdC0+ZGV2LCBzZywgZGlyZWN0aW9uLCAwKTsK
IAlzZ19mcmVlX3RhYmxlKHNnKTsKIAlrZnJlZShzZyk7CiB9Ci0tIAoyLjE3LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
