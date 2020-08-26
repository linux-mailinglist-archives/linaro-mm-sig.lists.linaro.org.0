Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0796E2527E6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:56:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32BD660749
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:56:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2399C617F1; Wed, 26 Aug 2020 06:56:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66045666F9;
	Wed, 26 Aug 2020 06:37:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4188965FCE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:36:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 34A1F666DE; Wed, 26 Aug 2020 06:36:56 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 037086601F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:45 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063544euoutp027a17328e2684a324a79d3719f97406ea~uve0tMPix1512715127euoutp02h
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200826063544euoutp027a17328e2684a324a79d3719f97406ea~uve0tMPix1512715127euoutp02h
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063543eucas1p2cb08458745623e01c2dd54a90f7b5dbe~uve0iKHxn0401704017eucas1p2R;
 Wed, 26 Aug 2020 06:35:43 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B7.5D.06318.FB2064F5; Wed, 26
 Aug 2020 07:35:43 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063543eucas1p1c2fde4802f125f25caa02f4453b8a284~uve0FMnM01612416124eucas1p1G;
 Wed, 26 Aug 2020 06:35:43 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063543eusmtrp2bfcc55ce9f0dab62403256f07a080b7a~uve0Ef8MV0466204662eusmtrp2f;
 Wed, 26 Aug 2020 06:35:43 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-f8-5f4602bf3068
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AB.53.06017.FB2064F5; Wed, 26
 Aug 2020 07:35:43 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063542eusmtip245070e33f084c8888faa54b4ff35c656~uvezdXjrB0092300923eusmtip2S;
 Wed, 26 Aug 2020 06:35:42 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:10 +0200
Message-Id: <20200826063316.23486-27-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJKsWRmVeSWpSXmKPExsWy7djPc7r7mdziDb6dMrXoPXeSyWLjjPWs
 Fm/v72a1+L9tIrPFla/v2SxWrj7KZLFgv7XFs1snmS2+XHnIZLHp8TVWi8u75rBZ9GzYymqx
 9shddouDH56wWpy6+5ndgd+j9dJfNo8189Yweuz9toDF4861PWwe2789YPW4332cyWPzknqP
 2/8eM3tMvrGc0WP3zQY2j/f7rrJ59G1ZxejxeZNcAG8Ul01Kak5mWWqRvl0CV8b/s2fYCyZI
 V2xYsJ+pgXGXWBcjJ4eEgIlE27xJTF2MXBxCAisYJf793swM4XxhlHj8aB8bhPOZUWLu9RWM
 MC0Hd36ASixnlDjbvoodrqVr/0lmkCo2AUOJrrddbCC2iEAro8SJXh6QImaBo8wSt9oXsoAk
 hAW8Ja6feQtkc3CwCKhKfL0iAGLyCthJzNiTBbFMXmL1hgNgIzmBwse7+8EWSwi8ZJe4vOAp
 K0SRi8TVV81QtrDEq+Nb2CFsGYn/O+czQTQ0M0o8PLeWHcLpYZS43DQD6h9riTvnfrGBbGYW
 0JRYv0sfxJQQcJSYujgBwuSTuPFWEKSYGcictG06M0SYV6KjTQhihprErOPr4LYevHCJGcL2
 kJiz5SU0RCcySszZ2ck2gVF+FsKuBYyMqxjFU0uLc9NTi43zUsv1ihNzi0vz0vWS83M3MQIT
 2Ol/x7/uYNz3J+kQowAHoxIP7wI213gh1sSy4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV
 5qQWH2KU5mBREuc1XvQyVkggPbEkNTs1tSC1CCbLxMEp1cDozm/Y66m+wKi5cftnWbNutU/H
 Ji3NS9d/x6VxOGltwLJ9T14+/jz3yG7zZtuZBwTtHoVZiRzgW+K9/E3ojc71deXHX6U2XZWe
 /T/n0vP3MxYfePz5sUvW0vb0K0WuAbX3PKYtDvz/IjemI2OqRdiFlisrtlp+udqzVs1V6Pms
 Q5vupHnvSD3EqMRSnJFoqMVcVJwIAEYbVdhcAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsVy+t/xe7r7mdziDc6clbDoPXeSyWLjjPWs
 Fm/v72a1+L9tIrPFla/v2SxWrj7KZLFgv7XFs1snmS2+XHnIZLHp8TVWi8u75rBZ9GzYymqx
 9shddouDH56wWpy6+5ndgd+j9dJfNo8189Yweuz9toDF4861PWwe2789YPW4332cyWPzknqP
 2/8eM3tMvrGc0WP3zQY2j/f7rrJ59G1ZxejxeZNcAG+Unk1RfmlJqkJGfnGJrVK0oYWRnqGl
 hZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsb/s2fYCyZIV2xYsJ+pgXGXWBcjJ4eEgInE
 wZ0f2LoYuTiEBJYySuxbdIkZIiEjcXJaAyuELSzx51oXG4gtJPCJUeLBdHcQm03AUKLrbRdY
 s4hAJ6PEtO6P7CAOs8BZZolfz5ezg1QJC3hLXD/zlqWLkYODRUBV4usVARCTV8BOYsaeLIj5
 8hKrNxwA28sJFD7e3Q+1y1bi9NoZzBMY+RYwMqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQI
 jKdtx35u2cHY9S74EKMAB6MSD+8CNtd4IdbEsuLK3EOMEhzMSiK8TmdPxwnxpiRWVqUW5ccX
 leakFh9iNAU6aSKzlGhyPjDW80riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB
 9DFxcEo1MM7aek1sJU/BohT91cnpITnCjD/3uB9wleWcmPA+3OHHpOqwhUJ1t5TXb5nUI31g
 895z/88n3bo27VpasNihLJ8dhVOzXi3+vYJn89FpMUFvdqvNXMph8M2G/+3eNgeOG2LXtvdf
 5Y4/HLvfQLPJU+K4fnP/JSlGvrxErUqGvM3Pu/8m/VEOuK7EUpyRaKjFXFScCABe198UvQIA
 AA==
X-CMS-MailID: 20200826063543eucas1p1c2fde4802f125f25caa02f4453b8a284
X-Msg-Generator: CA
X-RootMTR: 20200826063543eucas1p1c2fde4802f125f25caa02f4453b8a284
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063543eucas1p1c2fde4802f125f25caa02f4453b8a284
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063543eucas1p1c2fde4802f125f25caa02f4453b8a284@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 26/32] dmabuf: fix common struct sg_table
	related issues
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQWNrZWQtYnk6IEdlcmQgSG9mZm1hbm4gPGtyYXhl
bEByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYyB8
IDEzICsrKysrKy0tLS0tLS0KIGRyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMgICAgICAgICAgICB8
ICA3ICsrKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMg
Yi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKaW5kZXggOWY5NjRjYTNmNTlj
Li5kMDY5NmNmOTM3YWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhl
bHBlcnMuYworKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKQEAgLTE0
MCwxMyArMTQwLDEyIEBAIHN0cnVjdCBzZ190YWJsZSAqZG1hX2hlYXBfbWFwX2RtYV9idWYoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKIAkJCQkgICAgICBlbnVtIGRtYV9k
YXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pCiB7CiAJc3RydWN0IGRtYV9oZWFwc19hdHRhY2htZW50
ICphID0gYXR0YWNobWVudC0+cHJpdjsKLQlzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxlOwotCi0JdGFi
bGUgPSAmYS0+dGFibGU7CisJc3RydWN0IHNnX3RhYmxlICp0YWJsZSA9ICZhLT50YWJsZTsKKwlp
bnQgcmV0OwogCi0JaWYgKCFkbWFfbWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFibGUtPnNnbCwg
dGFibGUtPm5lbnRzLAotCQkJZGlyZWN0aW9uKSkKLQkJdGFibGUgPSBFUlJfUFRSKC1FTk9NRU0p
OworCXJldCA9IGRtYV9tYXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYsIHRhYmxlLCBkaXJlY3Rp
b24sIDApOworCWlmIChyZXQpCisJCXRhYmxlID0gRVJSX1BUUihyZXQpOwogCXJldHVybiB0YWJs
ZTsKIH0KIApAQCAtMTU0LDcgKzE1Myw3IEBAIHN0YXRpYyB2b2lkIGRtYV9oZWFwX3VubWFwX2Rt
YV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKIAkJCQkgICBzdHJ1
Y3Qgc2dfdGFibGUgKnRhYmxlLAogCQkJCSAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVj
dGlvbikKIHsKLQlkbWFfdW5tYXBfc2coYXR0YWNobWVudC0+ZGV2LCB0YWJsZS0+c2dsLCB0YWJs
ZS0+bmVudHMsIGRpcmVjdGlvbik7CisJZG1hX3VubWFwX3NndGFibGUoYXR0YWNobWVudC0+ZGV2
LCB0YWJsZSwgZGlyZWN0aW9uLCAwKTsKIH0KIAogc3RhdGljIHZtX2ZhdWx0X3QgZG1hX2hlYXBf
dm1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvdWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYwppbmRleCBhY2IyNmM2Mjdk
MjcuLjg5ZTI5M2JkOTI1MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYwor
KysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jCkBAIC02MywxMCArNjMsOSBAQCBzdGF0aWMg
c3RydWN0IHNnX3RhYmxlICpnZXRfc2dfdGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qg
ZG1hX2J1ZiAqYnVmLAogCQkJCQlHRlBfS0VSTkVMKTsKIAlpZiAocmV0IDwgMCkKIAkJZ290byBl
cnI7Ci0JaWYgKCFkbWFfbWFwX3NnKGRldiwgc2ctPnNnbCwgc2ctPm5lbnRzLCBkaXJlY3Rpb24p
KSB7Ci0JCXJldCA9IC1FSU5WQUw7CisJcmV0ID0gZG1hX21hcF9zZ3RhYmxlKGRldiwgc2csIGRp
cmVjdGlvbiwgMCk7CisJaWYgKHJldCA8IDApCiAJCWdvdG8gZXJyOwotCX0KIAlyZXR1cm4gc2c7
CiAKIGVycjoKQEAgLTc4LDcgKzc3LDcgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqZ2V0X3Nn
X3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRtYV9idWYgKmJ1ZiwKIHN0YXRpYyB2
b2lkIHB1dF9zZ190YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBzZ190YWJsZSAqc2cs
CiAJCQkgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQogewotCWRtYV91bm1hcF9z
ZyhkZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyZWN0aW9uKTsKKwlkbWFfdW5tYXBfc2d0YWJs
ZShkZXYsIHNnLCBkaXJlY3Rpb24sIDApOwogCXNnX2ZyZWVfdGFibGUoc2cpOwogCWtmcmVlKHNn
KTsKIH0KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
