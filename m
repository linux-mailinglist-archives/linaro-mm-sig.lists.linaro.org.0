Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8649F200768
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:59:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADF45665A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:59:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A02F7665AF; Fri, 19 Jun 2020 10:59:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3C32666E8;
	Fri, 19 Jun 2020 10:39:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4B5E1665BE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3C5A5666D7; Fri, 19 Jun 2020 10:38:24 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 14FB4665BE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:11 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103710euoutp01e0d39760ceb5d5532ab0e940b290ca61~Z66NdOXzB1836418364euoutp01o
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103710euoutp01e0d39760ceb5d5532ab0e940b290ca61~Z66NdOXzB1836418364euoutp01o
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103709eucas1p21d6de6a02ac0a38a1c40613598ad7c02~Z66NDFxOM0715307153eucas1p2E;
 Fri, 19 Jun 2020 10:37:09 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id DA.9D.05997.5559CEE5; Fri, 19
 Jun 2020 11:37:09 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103709eucas1p12c32fa6377caf78e5dc28ce0ff51e7a0~Z66MxwK080706007060eucas1p1t;
 Fri, 19 Jun 2020 10:37:09 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103709eusmtrp1073acf67ba92e93a81c52f0c01cf0521~Z66Mr3ezn0959609596eusmtrp1S;
 Fri, 19 Jun 2020 10:37:09 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-fa-5eec95557eb9
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 03.1B.06017.5559CEE5; Fri, 19
 Jun 2020 11:37:09 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103708eusmtip20f150a4cbcaa1a29d802f5e72289a3ee~Z66MCpa440111401114eusmtip2N;
 Fri, 19 Jun 2020 10:37:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:24 +0200
Message-Id: <20200619103636.11974-25-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJKsWRmVeSWpSXmKPExsWy7djPc7qhU9/EGbTPVLPoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12iw+r37NaHPzwhNXi
 +5bJTA68HmvmrWH0uLN0J6PH3m8LWDy2f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+EPV1g8
 dt9sYPPo27KK0ePzJrkAnigum5TUnMyy1CJ9uwSujL1d7UwFfXwV0y82MzYwvuXuYuTkkBAw
 kTjxYDFbFyMXh5DACkaJvmezWSCcL4wSTxZNZYdwPjNKbN1wCaiMA6zl5XVziPhyRolr736y
 gowC6/h0SBHEZhMwlOh628UGYosItDJKnOjlAWlgFvjBJHFu2Ql2kISwgL9Ew7+HjCBDWQRU
 JfZtlQEJ8wrYSXy5foMd4jx5idUbDjCD2JxA8dctB1kh4pfYJSZNlYGwXST6HjyHqheWeHV8
 C5QtI3F6cg/YNxICzYwSD8+tZYdwehglLjfNYISospa4c+4X2GfMApoS63fpQ4QdJbbuOsoM
 8TCfxI23giBhZiBz0rbpUGFeiY42IYhqNYlZx9fBrT144RIzhO0h0ToZ5ENQWE1klOhf/oB5
 AqP8LIRlCxgZVzGKp5YW56anFhvlpZbrFSfmFpfmpesl5+duYgQmqNP/jn/ZwbjrT9IhRgEO
 RiUe3hchr+OEWBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIhRmoNFSZzXeNHL
 WCGB9MSS1OzU1ILUIpgsEwenVANjH6doi+B3Ww2Tp/s6C3QZzxm8qjzYXvNOXWRum2pUd2/W
 zxS/t390RTPrts7KS1OLfrpMpK1Xa/fxTXlFDgosQtdv3Li98fSe6CzdmTxar1XltXWfJEs+
 VDnxPmwZQ9VXyad+3c9LFv8tZ+jYnrakUe7r6RuMn+/ESby6LpegcZvxz1bD6eFKLMUZiYZa
 zEXFiQAV/hk2TAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprNIsWRmVeSWpSXmKPExsVy+t/xe7qhU9/EGRzs5rPoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12iw+r37NaHPzwhNXi
 +5bJTA68HmvmrWH0uLN0J6PH3m8LWDy2f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+EPV1g8
 dt9sYPPo27KK0ePzJrkAnig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07
 m5TUnMyy1CJ9uwS9jL1d7UwFfXwV0y82MzYwvuXuYuTgkBAwkXh53byLkYtDSGApo8SHW9tY
 uhg5geIyEienNbBC2MISf651sYHYQgKfGCXOz2cGsdkEDCW63oLEuThEBDoZJaZ1f2QHcZgF
 /jFJnNi7nQmkSljAV+Lwmz2MINtYBFQl9m2VAQnzCthJfLl+gx1igbzE6g0HwIZyAsVftxxk
 hVhmK7F8wXvmCYx8CxgZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgRGzLZjP7fsYOx6F3yI
 UYCDUYmH90XI6zgh1sSy4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2I0BbppIrOU
 aHI+MJrzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwlmusllia
 NLd7y62CFuePloqXituO9YR6/ZO6rzIt21juU8GFFSfZL/efrg2oSN8tMuGiU8KrcJn2FkUb
 gQf9M9+3Opyq+8+745SblW2lyrO6l009Fz4tftktE/BzpZfBkvCZy1WUK39+MTYv/OEwZe/v
 sqo3E1I2blmcn6KqqxvGx3K/5mKvEktxRqKhFnNRcSIAGXz7bK4CAAA=
X-CMS-MailID: 20200619103709eucas1p12c32fa6377caf78e5dc28ce0ff51e7a0
X-Msg-Generator: CA
X-RootMTR: 20200619103709eucas1p12c32fa6377caf78e5dc28ce0ff51e7a0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103709eucas1p12c32fa6377caf78e5dc28ce0ff51e7a0
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103709eucas1p12c32fa6377caf78e5dc28ce0ff51e7a0@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Daniel Vetter <daniel@ffwll.ch>, xen-devel@lists.xenproject.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 24/36] drm: xen: fix common struct
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
dW5jdGlvbi4KCkZpeCB0aGUgY29kZSB0byByZWZlciB0byBwcm9wZXIgbmVudHMgb3Igb3JpZ19u
ZW50cyBlbnRyaWVzLiBUaGlzIGRyaXZlcgpyZXBvcnRzIHRoZSBudW1iZXIgb2YgdGhlIHBhZ2Vz
IGluIHRoZSBpbXBvcnRlZCBzY2F0dGVybGlzdCwgc28gaXQgc2hvdWxkCnJlZmVyIHRvIHNnX3Rh
YmxlLT5vcmlnX25lbnRzIGVudHJ5LgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8
bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpBY2tlZC1ieTogT2xla3NhbmRyIEFuZHJ1c2hjaGVu
a28gPG9sZWtzYW5kcl9hbmRydXNoY2hlbmtvQGVwYW0uY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS94ZW4veGVuX2RybV9mcm9udF9nZW0uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZW4v
eGVuX2RybV9mcm9udF9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS94ZW4veGVuX2RybV9mcm9udF9n
ZW0uYwppbmRleCBmMGI4NWUwOTQxMTEuLmJhNGJkYzU1OTBlYSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3hlbi94ZW5fZHJtX2Zyb250X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS94
ZW4veGVuX2RybV9mcm9udF9nZW0uYwpAQCAtMjE1LDcgKzIxNSw3IEBAIHhlbl9kcm1fZnJvbnRf
Z2VtX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQlyZXR1cm4gRVJS
X1BUUihyZXQpOwogCiAJRFJNX0RFQlVHKCJJbXBvcnRlZCBidWZmZXIgb2Ygc2l6ZSAlenUgd2l0
aCBuZW50cyAldVxuIiwKLQkJICBzaXplLCBzZ3QtPm5lbnRzKTsKKwkJICBzaXplLCBzZ3QtPm9y
aWdfbmVudHMpOwogCiAJcmV0dXJuICZ4ZW5fb2JqLT5iYXNlOwogfQotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
