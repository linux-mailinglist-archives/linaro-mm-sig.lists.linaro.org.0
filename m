Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D392C1C5179
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:02:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E67066078
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 09:02:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 00294661BF; Tue,  5 May 2020 09:02:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 085A166539;
	Tue,  5 May 2020 08:48:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A6C2C66072
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9995966098; Tue,  5 May 2020 08:46:49 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id AFE7E6615F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:36 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084635euoutp0168364847558543505e5798abcc5d4769~MFX0n4Hm_0374903749euoutp01U
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084635euoutp0168364847558543505e5798abcc5d4769~MFX0n4Hm_0374903749euoutp01U
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084635eucas1p1430db2477f49d3cf561d94133968dfdf~MFX0O-FJj0601906019eucas1p1Q;
 Tue,  5 May 2020 08:46:35 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 49.CF.61286.BE721BE5; Tue,  5
 May 2020 09:46:35 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084634eucas1p105456f28d9a7935190478546e566975f~MFXzzjxXz2431924319eucas1p17;
 Tue,  5 May 2020 08:46:34 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084634eusmtrp11ef8f84e63f6a30b0427888ceadddb01~MFXzy2UGA0942509425eusmtrp1R;
 Tue,  5 May 2020 08:46:34 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-b4-5eb127ebc36b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5E.21.07950.AE721BE5; Tue,  5
 May 2020 09:46:34 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084634eusmtip1ccdc14d70b1dfb490ab87a4d3135453d~MFXzP2Bdu0580805808eusmtip1-;
 Tue,  5 May 2020 08:46:34 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:08 +0200
Message-Id: <20200505084614.30424-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHeXcuOxMnp03xzSJhpmaQF1I4oEhhwQG/9CHKxKyVBy/plB1n
 GYVWamFqpuW1TLTyfptmoqXOnEtHanOJlcvLSspLSl7SAm3zqH37P7/n/zz/h5eXQEQqzI4I
 l8Uycpk0UoJboM09a/2HZpwbgt0n9CIqvb+XRzXk1WHURvN9hNIvz+NURZWaRxV3eFNTn3oR
 akk/waOUxmGMGmp9hFNp9S8wqqbbwKdUC18xqs+wyD9iRVcXVQP69UoxSo8Ov8LplyvjGD12
 V8OjG58m0J/XjQidPVIG6LaPiTg93/4BpzOaKgG9qNx3wjLQwieEiQyPY+RuvuctwmaTxDFT
 tlc6241YIhgTpwIBAUlPaMjsxlKBBSEiywFsXV3jc8USgIlLGYArFgEsVKt52yOTpatbjTIA
 H/fqeTsjbZNZqNmFkx4wdS4VN2trMhnAt+mWZhNCJiGwsuPGZkNM+sOGomlg1ijpCDOSBza5
 kPSFP4sbcS7OHlbVdyJmLTBxo24UNy+CpI4PBzeMfM50DFbPKzFOi+G0pmmL74Xa7DSUG7gF
 4ER/DZ8r0gAcupkHOJc3HO3/Y1pLmO5zgXWtbhw+Cstul/LMGJJWcGRulxkjJpnVnItwWAjv
 pIg4txMs0NTuxKoGdQinaajtNaDcC6kBrDWo0UxgX/A/rBiASmDLKNioUIb1kDGXXVlpFKuQ
 hbpejI5SAtPH0q5rfrWAZd2FLkASQGIpDFisCxZh0jg2PqoLQAKRWAufr9YHi4Qh0virjDz6
 nFwRybBdYA+BSmyFh0t+nBWRodJY5hLDxDDy7S6PENglAqff7iMxXoEH/EbGU46PlVBvIhqC
 r/W17H6WnZ9TMSM7qUNUQd/D7522cRuvcegKCvVRyPTi8I4SpV/A8nBlgJfAbSYDTn5TnXnX
 4rPg6Ekm/HWN6LEpNOSwX8b9HuySS/Y7NU1fd47P9xe8Rx5qHATlWhfFqUnVrNZxINcQ+USC
 smFSj4OInJX+A6wn6sBUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7qv1DfGGfS/tbDoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2eHbrJLPFlysPmSw2Pb7GanF51xw2i54NW1kt1h65y25x
 8MMTVotTdz+zO/B5rJm3htFj77cFLB53ru1h89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHm833eVzaNvyypGj8+b5AJ4ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQy3rQIFzwTrziw7zFrA+N94S5GTg4JAROJR4t/MHYxcnEICSxl
 lGh78oEFIiEjcXJaAyuELSzx51oXG0TRJ0aJf7evs4Ek2AQMJbreQiREBDoZJaZ1f2QHcZgF
 epglLi38wghSJSzgLbFx3iswm0VAVaKv9TxYN6+AncS7BZvZIFbIS6zecIAZxOYEij++dAcs
 LiRQKPHh/HfWCYx8CxgZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgTGz7ZjP7fsYOx6F3yI
 UYCDUYmHd8PX9XFCrIllxZW5hxglOJiVRHiX/dgQJ8SbklhZlVqUH19UmpNafIjRFOioicxS
 osn5wNjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAmLejnseS
 uX6K+KLSZiHJL0LPmgvezGpc+XlXWsS8ZQdyppm0qL7KC5qye+Li052MU94cdmOQZXJpNg2V
 Y20UnvAoQpGr1ZXvW7zVhn/S95XdCmbqhgRp8Hru/Jxt/rd6x5tZgmWHOc9sMDnuPz+Gt+OP
 pFDzi/jynS6nGVJkPx/ayMJq4BOjxFKckWioxVxUnAgA/Ej4drUCAAA=
X-CMS-MailID: 20200505084634eucas1p105456f28d9a7935190478546e566975f
X-Msg-Generator: CA
X-RootMTR: 20200505084634eucas1p105456f28d9a7935190478546e566975f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084634eucas1p105456f28d9a7935190478546e566975f
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084634eucas1p105456f28d9a7935190478546e566975f@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 19/25] dmabuf: fix common struct sg_table
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUK
c2dfdGFibGUtPm5lbnRzIGluIHR1cm4gaG9sZHMgdGhlIHJlc3VsdCBvZiB0aGUgZG1hX21hcF9z
ZyBjYWxsIGFzIHN0YXRlZAppbiBpbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmguIEEgY29tbW9u
IG1pc3Rha2Ugd2FzIHRvIGlnbm9yZSBhIHJlc3VsdApvZiB0aGUgZG1hX21hcF9zZyBmdW5jdGlv
biBhbmQgZG9uJ3QgdXNlIHRoZSBzZ190YWJsZS0+b3JpZ19uZW50cyBhdCBhbGwuCgpUbyBhdm9p
ZCBzdWNoIGlzc3VlcywgbGV0cyB1c2UgY29tbW9uIGRtYS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJh
dGluZwpkaXJlY3RseSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIGFkanVzdCBy
ZWZlcmVuY2VzIHRvIHRoZQpuZW50cyBhbmQgb3JpZ19uZW50cyByZXNwZWN0aXZlbHkuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Ci0t
LQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0ggdjMgMDAvMjVdIERSTTogZml4IHN0
cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1c2UnIHRocmVhZDogaHR0cHM6
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9o
ZWFwLWhlbHBlcnMuYyB8IDEzICsrKysrKy0tLS0tLS0KIGRyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVm
LmMgICAgICAgICAgICB8ICA3ICsrKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMv
aGVhcC1oZWxwZXJzLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKaW5k
ZXggOWY5NjRjYS4uYmU5NTIzYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hl
YXAtaGVscGVycy5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYwpA
QCAtMTQwLDEzICsxNDAsMTIgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfaGVhcF9tYXBfZG1hX2J1
ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50LAogCQkJCSAgICAgIGVudW0g
ZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKIHsKIAlzdHJ1Y3QgZG1hX2hlYXBzX2F0dGFj
aG1lbnQgKmEgPSBhdHRhY2htZW50LT5wcml2OwotCXN0cnVjdCBzZ190YWJsZSAqdGFibGU7Ci0K
LQl0YWJsZSA9ICZhLT50YWJsZTsKKwlzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxlID0gJmEtPnRhYmxl
OworCWludCByZXQ7CiAKLQlpZiAoIWRtYV9tYXBfc2coYXR0YWNobWVudC0+ZGV2LCB0YWJsZS0+
c2dsLCB0YWJsZS0+bmVudHMsCi0JCQlkaXJlY3Rpb24pKQotCQl0YWJsZSA9IEVSUl9QVFIoLUVO
T01FTSk7CisJcmV0ID0gZG1hX21hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgdGFibGUsIGRp
cmVjdGlvbik7CisJaWYgKHJldCkKKwkJdGFibGUgPSBFUlJfUFRSKHJldCk7CiAJcmV0dXJuIHRh
YmxlOwogfQogCkBAIC0xNTQsNyArMTUzLDcgQEAgc3RhdGljIHZvaWQgZG1hX2hlYXBfdW5tYXBf
ZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50LAogCQkJCSAgIHN0
cnVjdCBzZ190YWJsZSAqdGFibGUsCiAJCQkJICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGly
ZWN0aW9uKQogewotCWRtYV91bm1hcF9zZyhhdHRhY2htZW50LT5kZXYsIHRhYmxlLT5zZ2wsIHRh
YmxlLT5uZW50cywgZGlyZWN0aW9uKTsKKwlkbWFfdW5tYXBfc2d0YWJsZShhdHRhY2htZW50LT5k
ZXYsIHRhYmxlLCBkaXJlY3Rpb24pOwogfQogCiBzdGF0aWMgdm1fZmF1bHRfdCBkbWFfaGVhcF92
bV9mYXVsdChzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi91ZG1hYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jCmluZGV4IGFjYjI2YzYuLjVi
Y2JmN2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMKKysrIGIvZHJpdmVy
cy9kbWEtYnVmL3VkbWFidWYuYwpAQCAtNjMsMTAgKzYzLDkgQEAgc3RhdGljIHN0cnVjdCBzZ190
YWJsZSAqZ2V0X3NnX3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRtYV9idWYgKmJ1
ZiwKIAkJCQkJR0ZQX0tFUk5FTCk7CiAJaWYgKHJldCA8IDApCiAJCWdvdG8gZXJyOwotCWlmICgh
ZG1hX21hcF9zZyhkZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyZWN0aW9uKSkgewotCQlyZXQg
PSAtRUlOVkFMOworCXJldCA9IGRtYV9tYXBfc2d0YWJsZShkZXYsIHNnLCBkaXJlY3Rpb24pOwor
CWlmIChyZXQgPCAwKQogCQlnb3RvIGVycjsKLQl9CiAJcmV0dXJuIHNnOwogCiBlcnI6CkBAIC03
OCw3ICs3Nyw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmdldF9zZ190YWJsZShzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIHN0cnVjdCBkbWFfYnVmICpidWYsCiBzdGF0aWMgdm9pZCBwdXRfc2dfdGFi
bGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qgc2dfdGFibGUgKnNnLAogCQkJIGVudW0gZG1h
X2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKIHsKLQlkbWFfdW5tYXBfc2coZGV2LCBzZy0+c2ds
LCBzZy0+bmVudHMsIGRpcmVjdGlvbik7CisJZG1hX3VubWFwX3NndGFibGUoZGV2LCBzZywgZGly
ZWN0aW9uKTsKIAlzZ19mcmVlX3RhYmxlKHNnKTsKIAlrZnJlZShzZyk7CiB9Ci0tIAoxLjkuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
