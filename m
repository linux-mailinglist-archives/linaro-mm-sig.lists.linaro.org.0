Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A8430200770
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 13:02:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3716665A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:02:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B62BE665A6; Fri, 19 Jun 2020 11:02:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C94E3666F5;
	Fri, 19 Jun 2020 10:39:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6E971665C5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 603C4665CA; Fri, 19 Jun 2020 10:38:28 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 99033665CB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:13 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103712euoutp02b44bfd9abf460e7343ebe8a25bcc17a6~Z66QA9Zoq2414824148euoutp02C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103712euoutp02b44bfd9abf460e7343ebe8a25bcc17a6~Z66QA9Zoq2414824148euoutp02C
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103712eucas1p2d53ba69124a5199f3c71a2015cd133bc~Z66Ps17751691016910eucas1p2H;
 Fri, 19 Jun 2020 10:37:12 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 3A.AC.06456.8559CEE5; Fri, 19
 Jun 2020 11:37:12 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103712eucas1p1a29d1fe41061ed5b138a9cdd5d811419~Z66PVqbsQ0493704937eucas1p11;
 Fri, 19 Jun 2020 10:37:12 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103712eusmtrp1649acacc4079e1add3bb1309d8616cdc~Z66PU8nK20959609596eusmtrp1Y;
 Fri, 19 Jun 2020 10:37:12 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-69-5eec95584d02
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id EC.EA.06314.8559CEE5; Fri, 19
 Jun 2020 11:37:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103711eusmtip21a8ef39ebb1b53047eee9c0cc294336b~Z66OpqA0T0302603026eusmtip2T;
 Fri, 19 Jun 2020 10:37:11 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:28 +0200
Message-Id: <20200619103636.11974-29-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0gUYRTlm5mdGRfXpvX1pZa0YWCgJglNaGYiMeAfg8hIMtecVHTVdtSy
 P5ltFqv5TDIrWUIwd30/dsN8o22mruUrNc1nkS+sfIAW2q5j9u/cc869536Xj0TFLQI7MjIm
 npXHSKMluBDTvt0wuFzKWww+njPnQD8ydCJ0VX6FgN7WZqP0wNoyTpdoOhBa1exJfxvtROnV
 gSmErp4ZEtD99c9xOr2yTkCXtY8TdOuPWQH9fnyF8LFgSgtLAdO4rsKYsaEGnNGtTwqYiTQ9
 wtQU3WE+b82gTO5wMWDejCTjzHLTIM5k1KoBs1J9KMD8stArjI2OTGTlbt4hwojtnm4iLsv+
 VqWqGUkG9TZKQJKQ8oALSzIlMCPF1CsA11aClEBoxKsA9mvGCL5YATCvR0OYXKaGnrZynBeK
 Acws6ib2WrYfK1CTC6fcoXJJiZuwFXUfwHePzE0mlFKgUN18d0ewpPxh0UjjzliMcoKKBt0O
 FlHeMGtwHfBxjlBT2bIz1MzILyhaBaZBkBoi4Op8GsKb/KDmz3eMx5ZwXl+7u6sD7MpNx/iG
 ewBOGcoIvkg3Pi8lfzfCE44ZNnHTOVDKGVbUu/H0Wfgsp5Xgr2QBh5f2m2jUCHO0T1CeFsGH
 qWLefRQW6Mv3Yls/9KE8ZuDvTQPCXygbwMnUT1gWcCz4H6YCQA1s2QROFs5y7jHsTVdOKuMS
 YsJdr8XKqoHxX3Vt6X+9Bmt9oW2AIoHEXOQTuBAsFkgTuSRZG4AkKrES+fZ0BYtFYdKk26w8
 9qo8IZrl2oA9iUlsRSdezl0RU+HSeDaKZeNY+T8VIc3skoGqKqHc5UDDEUlw/cGlnyFuoX61
 Eizz8Iug0A1CNHFu/EG7fFgo7LAd03pkOF/wLW0KOP+xLiXjus65sHDb/4Z20XWi7Onp/ujs
 wK9e+y7G1SZ+KRid9Z9G1PqmHG+dndP0oE1Nbq/1qQmlgpy2rj7TGzXkeNJuMXOdW50q0BEl
 EoyLkLofQ+Wc9C/qpxiFUwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xe7oRU9/EGcxsZLHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2eHbrJLPFlysPmSw2Pb7GanF51xw2i54NW1kt1h65y25x
 8MMTVotTdz+zO/B5rJm3htFj77cFLB53ru1h89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHm833eVzaNvyypGj8+b5AJ4ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQy/p89w14wQbpiw4L9TA2Mu8S6GDk5JARMJM4eWsfWxcjFISSw
 lFFizvm3LBAJGYmT0xpYIWxhiT/XuqCKPjFKzL+1kBkkwSZgKNH1FiIhItDJKDGt+yM7iMMs
 0MMscWnhF0aQKmEBb4klN/eyg9gsAqoSLXu2g9m8AnYSE65+Y4RYIS+xesMBsKmcQPHXLQfB
 VgsJ2EosX/CeeQIj3wJGhlWMIqmlxbnpucWGesWJucWleel6yfm5mxiBEbTt2M/NOxgvbQw+
 xCjAwajEw/si5HWcEGtiWXFl7iFGCQ5mJRFep7On44R4UxIrq1KL8uOLSnNSiw8xmgIdNZFZ
 SjQ5HxjdeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGBcZBL+d
 eD/hf7fSt95zzX5/A17c/LohyKcw/7zP+jUn4k/e7Ym2WspoafVi1+bqevtfDRm//ERmlPy+
 xleb51/5VydEPamhpvDeI8MpfxWeKx1+q/boybm0xH9hBXOMs4vOGGzbM+uEkyGzvxtL3rVF
 m+dqaXg+KFzNfuZg440NrfyKD2doTVNiKc5INNRiLipOBAAvRGJ1tgIAAA==
X-CMS-MailID: 20200619103712eucas1p1a29d1fe41061ed5b138a9cdd5d811419
X-Msg-Generator: CA
X-RootMTR: 20200619103712eucas1p1a29d1fe41061ed5b138a9cdd5d811419
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103712eucas1p1a29d1fe41061ed5b138a9cdd5d811419
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103712eucas1p1a29d1fe41061ed5b138a9cdd5d811419@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 28/36] dmabuf: fix common struct sg_table
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
