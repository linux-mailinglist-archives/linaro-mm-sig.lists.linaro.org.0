Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EE66625DAC8
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:59:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AAB066768
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:59:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0D8A16676C; Fri,  4 Sep 2020 13:59:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3692166794;
	Fri,  4 Sep 2020 13:37:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 706A36660D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 645656674D; Fri,  4 Sep 2020 13:36:26 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 812C266740
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:10 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133509euoutp01230e5f218da539de07439467517d5256~xmAmeHg920799107991euoutp01H
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133509euoutp01230e5f218da539de07439467517d5256~xmAmeHg920799107991euoutp01H
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133509eucas1p2cdcfff47365ce2abf05a67b3cfd98d59~xmAmJPvH90781307813eucas1p2D;
 Fri,  4 Sep 2020 13:35:09 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 40.76.05997.D82425F5; Fri,  4
 Sep 2020 14:35:09 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133509eucas1p23ae97afc5f53f7d84e7f0183803ec483~xmAlyscfu1446814468eucas1p2o;
 Fri,  4 Sep 2020 13:35:09 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200904133509eusmtrp18a2e515d0fff9afa972ff974ba8cdad1~xmAlyB8xp0766507665eusmtrp1L;
 Fri,  4 Sep 2020 13:35:09 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-79-5f52428d1da2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id FB.BE.06314.C82425F5; Fri,  4
 Sep 2020 14:35:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133508eusmtip184c2d322fe339707e2360f80c5b8e05d~xmAlICjeq1926319263eusmtip1f;
 Fri,  4 Sep 2020 13:35:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:17:06 +0200
Message-Id: <20200904131711.12950-26-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa2xLYRj29VzXKEcNn+ukwULmNhJHsLKIfD/8ED8QCXM2Z91i7Wi3uSRo
 LFhqc5nLanHpZDLTYXapqcu0UV1VS7oRrc7GGjLZMtGq+6bHKf497/O8z/c8efPRmPwxMYHO
 1RTwWg2XpyCluOXRN+/ssvS1GfMspjFsmdclYW8abxBsf9cdgh2ynMDYjs8DJFtrdkhYU+sS
 9l3AhbGRjjcStqHnBcG2W8+RbGl9M8Fee9hJsbaPIYJ93Bmmlo9EB32/SFR3oQ6ge1ETjoIv
 7pLoVrSbQF1HnBLUWL0fvRrswdDJlzUA3fHrSTRw/zmJjjZdBSjcMGWNbKN06VY+L7eI185N
 2yLNGfI8obYfn7ir3tQq0QPrWANIoCGzEL597QcGIKXlzBUAqxwmQhwiAIbvdeHiEAbQ774i
 +Wupth2LCzUAetqMlCD8sVQeTREwycyHhn4DKeBE5iCAbWXDBQPGODAYOFyFC8JoZjXsKw7G
 XqVpnJkOP15KFmgZkwZ7HF9xMSwJmusfYAJOiPHNxtCfepB5S0G3qzfeaCU8HGzERDwafnA2
 USKeBN0nS3HRUAzgG+81ShxKAWw/YATi1hIY9H4nhRYYMxPesM4V6RXwfF0/JtCQGQFf9o8S
 aCwGyy0VcVoGSw7Jxe0ZsNJ5/V+s7ZkvXgdB88CP+LFOAFhe3AuOg6TK/2EmAK6CcXyhTq3i
 dakafuccHafWFWpUc7Ly1Q0g9sPcg85IC7D+zLQDhgaK4bJhyrUZcoIr0u1W2wGkMUWiLN3j
 3iyXbeV27+G1+RnawjxeZwcTaVwxTrbgUu8mOaPiCvhtPL+d1/5VJXTCBD1Y9KQ6975mWrJ+
 VWjF+MbWVMLMjHXYle8fbXH1lVxWcfuGPPMyP6d9UoYCG7XLyhcP3lRuwKaeyvIZK6I2uKEv
 snfx2WxE5ei/XexekPKwVhVdhtYl3U7KSl4/s2ZaoFb56TQ35pxt0alneP6OyVMOTVeXfFnq
 zza2PD1T4GOJkALX5XDzZ2FaHfcbzYpBcV0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsVy+t/xu7o9TkHxBh/6rC16z51kstg4Yz2r
 xdv7u1kt/m+byGxx5et7NouVq48yWSzYb23x7NZJZosvVx4yWWx6fI3V4vKuOWwWPRu2slqs
 PXKX3eLghyesFqfufmZ34PdovfSXzWPNvDWMHnu/LWDxuHNtD5vH9m8PWD3udx9n8ti8pN7j
 9r/HzB6Tbyxn9Nh9s4HN4/2+q2wefVtWMXp83iQXwBulZ1OUX1qSqpCRX1xiqxRtaGGkZ2hp
 oWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5egl/H/7Bn2ggnSFRsW7GdqYNwl1sXIySEhYCKx
 5GA/SxcjF4eQwFJGieb/99ghEjISJ6c1sELYwhJ/rnWxQRR9YpRY8/QMM0iCTcBQoustREJE
 oJNRYlr3R3YQh1ngLLPEr+fLwUYJC/hIvGm+w9TFyMHBIqAq8WGROkiYV8BO4vHRHywQG+Ql
 Vm84ADaUEyi+dcYTsM1CArYSH+YsZpnAyLeAkWEVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZG
 YExtO/Zz8w7GSxuDDzEKcDAq8fAy2AfFC7EmlhVX5h5ilOBgVhLhdTp7Ok6INyWxsiq1KD++
 qDQntfgQoynQTROZpUST84HxnlcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUI
 po+Jg1OqgdE8xLLsYG0d/4qWr44mpQZlvBNunlH9X6Z+ecHBF6GyvDKq+xvOb4xjdnS5FmtW
 U1pzyU0iyzPKY8HukxLCn/I/9e+wflXXk+/tuK+WxX/yNLlFe6qsRVVr94uq10z/v0zl9CX+
 qaGlXMc2CJXu2uQUHxrLZBizU7EzxCWAaauolPkPIS0FJZbijERDLeai4kQAxfkiVb8CAAA=
X-CMS-MailID: 20200904133509eucas1p23ae97afc5f53f7d84e7f0183803ec483
X-Msg-Generator: CA
X-RootMTR: 20200904133509eucas1p23ae97afc5f53f7d84e7f0183803ec483
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133509eucas1p23ae97afc5f53f7d84e7f0183803ec483
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133509eucas1p23ae97afc5f53f7d84e7f0183803ec483@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 25/30] dmabuf: fix common struct
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
