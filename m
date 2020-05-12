Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B91811CF1E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:46:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D603461831
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:46:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BD28161892; Tue, 12 May 2020 09:46:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B79965FA4;
	Tue, 12 May 2020 09:08:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 34DDE65FA7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:07:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1971E6652F; Tue, 12 May 2020 09:07:44 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 5BE3C65FA7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:26 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090125euoutp012bf1d7dd8551808821a4a230d0f8e51a~OPFxKLneb2629726297euoutp01j
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090125euoutp012bf1d7dd8551808821a4a230d0f8e51a~OPFxKLneb2629726297euoutp01j
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090125eucas1p237325d75171e6cbb4ace54131e46acf9~OPFw2PZHn1371013710eucas1p2Y;
 Tue, 12 May 2020 09:01:25 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FA.67.61286.5E56ABE5; Tue, 12
 May 2020 10:01:25 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090124eucas1p20509113bdbdd1070d8265aa1af80e64a~OPFwlssNg2180021800eucas1p2t;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090124eusmtrp21a85ccdb539dc0869f960dc228bdd281~OPFwk-FMW0472504725eusmtrp2X;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-a3-5eba65e5ff71
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6B.45.08375.4E56ABE5; Tue, 12
 May 2020 10:01:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090124eusmtip13b83891d533f757d460e4af869f099c5~OPFwA9rAH1257212572eusmtip1v;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:50 +0200
Message-Id: <20200512090058.14910-30-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrAKsWRmVeSWpSXmKPExsWy7djP87pPU3fFGVybxWPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8ezWSWaLL1ceMllsenyN1eLyrjlsFj0btrJarD1yl93i
 4IcnrBan7n5md+DzWDNvDaPH3m8LWDzuXNvD5rH92wNWj/vdx5k8Ni+p97j97zGzx+Qbyxk9
 dt9sYPN4v+8qm0ffllWMHp83yQXwRHHZpKTmZJalFunbJXBlvPx2gLWgU6bi4eLYBsZl4l2M
 nBwSAiYSc/etYO5i5OIQEljBKPGw/S4jhPOFUeLSrK9Qmc+MEpdfrWeGaZn44QUbRGI5o8TJ
 fc1scC0nN9xkAaliEzCU6HrbxQZiiwi0Mkqc6OUBKWIWaGGWWLW/ESwhLOAtcfHmLzCbRUBV
 4lvLSbAVvAJ2EnMvr2WCWCcvsXrDAbA4J1D8/vw/LCCDJATOsUu0P9gFVeQiMWvHOhYIW1ji
 1fEt7BC2jMT/nfOZIBqagd47t5YdwukB+qhpBiNElbXEnXMgZ3AA3acpsX6XPkTYUeJc9ylG
 kLCEAJ/EjbeCIGFmIHPStunMEGFeiY42IYhqNYlZx9fBrT144RJUiYfE26XZkAA6yihx/cha
 pgmM8rMQdi1gZFzFKJ5aWpybnlpsmJdarlecmFtcmpeul5yfu4kRmK5O/zv+aQfj10tJhxgF
 OBiVeHg7jHbGCbEmlhVX5h5ilOBgVhLhbckECvGmJFZWpRblxxeV5qQWH2KU5mBREuc1XvQy
 VkggPbEkNTs1tSC1CCbLxMEp1cCoPGuV2TvZYK57HwI/b7+Z+erLyu7v6dcSd7ZMP3bWWd70
 kvmDqj5De74rgdLJS7XfuDJx7/ywfKVrxrGNb73XNv7x6O3/9GU9Oz/T4tXunduNpxt0GNkt
 +2nbpNjkrLu6XdvXIuOvSbzbM4XjTJxCXzestg37+cHJYu6yowEx5XVWFno7LGuUWIozEg21
 mIuKEwF7szfpUwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7pPUnfFGUx4aWHRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8ezWSWaLL1ceMllsenyN1eLyrjlsFj0btrJarD1yl93i
 4IcnrBan7n5md+DzWDNvDaPH3m8LWDzuXNvD5rH92wNWj/vdx5k8Ni+p97j97zGzx+Qbyxk9
 dt9sYPN4v+8qm0ffllWMHp83yQXwROnZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8da
 GZkq6dvZpKTmZJalFunbJehlvPx2gLWgU6bi4eLYBsZl4l2MnBwSAiYSEz+8YAOxhQSWMkrc
 nB0KEZeRODmtgRXCFpb4c60LqIYLqOYTo8S1O0/AEmwChhJdbyESIgKdjBLTuj+ygzjMAj3M
 EpcWfmEEqRIW8Ja4ePMX2AoWAVWJby0nmUFsXgE7ibmX1zJBrJCXWL3hAFicEyh+f/4fFoiT
 CiUeXX3LMoGRbwEjwypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzA6Nl27OfmHYyXNgYfYhTg
 YFTi4e0w2hknxJpYVlyZe4hRgoNZSYS3JRMoxJuSWFmVWpQfX1Sak1p8iNEU6KiJzFKiyfnA
 yM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cDYYvJur+1+Ez7X
 Bh/uDZkP2dP3XP0lLiywPnl+XfCvZzWHRIMObm22mCuxZ/bec0yyuar2n3vmOYQxv5lY8ipK
 e7F2M7vCvYT1AacyTh8wXakRuGzSvLtFN/+7LrDJbX++jvlDAf/+hxFTZxgcYt/xbecm43pe
 a9kz01q3tCnoB64UaNZvvDRfiaU4I9FQi7moOBEA3Lt3Y7QCAAA=
X-CMS-MailID: 20200512090124eucas1p20509113bdbdd1070d8265aa1af80e64a
X-Msg-Generator: CA
X-RootMTR: 20200512090124eucas1p20509113bdbdd1070d8265aa1af80e64a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090124eucas1p20509113bdbdd1070d8265aa1af80e64a
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090124eucas1p20509113bdbdd1070d8265aa1af80e64a@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 30/38] dmabuf: fix common struct sg_table
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
MjAyMDA1MTIwODU3MTAuMTQ2ODgtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBk
cml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMgfCAxMyArKysrKystLS0tLS0tCiBk
cml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jICAgICAgICAgICAgfCAgNyArKystLS0tCiAyIGZpbGVz
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jIGIvZHJpdmVycy9kbWEtYnVmL2hl
YXBzL2hlYXAtaGVscGVycy5jCmluZGV4IDlmOTY0Y2EuLmJlOTUyM2EgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYworKysgYi9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvaGVhcC1oZWxwZXJzLmMKQEAgLTE0MCwxMyArMTQwLDEyIEBAIHN0cnVjdCBzZ190YWJs
ZSAqZG1hX2hlYXBfbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
bWVudCwKIAkJCQkgICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pCiB7CiAJ
c3RydWN0IGRtYV9oZWFwc19hdHRhY2htZW50ICphID0gYXR0YWNobWVudC0+cHJpdjsKLQlzdHJ1
Y3Qgc2dfdGFibGUgKnRhYmxlOwotCi0JdGFibGUgPSAmYS0+dGFibGU7CisJc3RydWN0IHNnX3Rh
YmxlICp0YWJsZSA9ICZhLT50YWJsZTsKKwlpbnQgcmV0OwogCi0JaWYgKCFkbWFfbWFwX3NnKGF0
dGFjaG1lbnQtPmRldiwgdGFibGUtPnNnbCwgdGFibGUtPm5lbnRzLAotCQkJZGlyZWN0aW9uKSkK
LQkJdGFibGUgPSBFUlJfUFRSKC1FTk9NRU0pOworCXJldCA9IGRtYV9tYXBfc2d0YWJsZShhdHRh
Y2htZW50LT5kZXYsIHRhYmxlLCBkaXJlY3Rpb24pOworCWlmIChyZXQpCisJCXRhYmxlID0gRVJS
X1BUUihyZXQpOwogCXJldHVybiB0YWJsZTsKIH0KIApAQCAtMTU0LDcgKzE1Myw3IEBAIHN0YXRp
YyB2b2lkIGRtYV9oZWFwX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAq
YXR0YWNobWVudCwKIAkJCQkgICBzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxlLAogCQkJCSAgIGVudW0g
ZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKIHsKLQlkbWFfdW5tYXBfc2coYXR0YWNobWVu
dC0+ZGV2LCB0YWJsZS0+c2dsLCB0YWJsZS0+bmVudHMsIGRpcmVjdGlvbik7CisJZG1hX3VubWFw
X3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCB0YWJsZSwgZGlyZWN0aW9uKTsKIH0KIAogc3RhdGlj
IHZtX2ZhdWx0X3QgZG1hX2hlYXBfdm1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFi
dWYuYwppbmRleCBhY2IyNmM2Li41YmNiZjdhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYv
dWRtYWJ1Zi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMKQEAgLTYzLDEwICs2Myw5
IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmdldF9zZ190YWJsZShzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHN0cnVjdCBkbWFfYnVmICpidWYsCiAJCQkJCUdGUF9LRVJORUwpOwogCWlmIChyZXQgPCAw
KQogCQlnb3RvIGVycjsKLQlpZiAoIWRtYV9tYXBfc2coZGV2LCBzZy0+c2dsLCBzZy0+bmVudHMs
IGRpcmVjdGlvbikpIHsKLQkJcmV0ID0gLUVJTlZBTDsKKwlyZXQgPSBkbWFfbWFwX3NndGFibGUo
ZGV2LCBzZywgZGlyZWN0aW9uKTsKKwlpZiAocmV0IDwgMCkKIAkJZ290byBlcnI7Ci0JfQogCXJl
dHVybiBzZzsKIAogZXJyOgpAQCAtNzgsNyArNzcsNyBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxl
ICpnZXRfc2dfdGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqYnVmLAog
c3RhdGljIHZvaWQgcHV0X3NnX3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHNnX3Rh
YmxlICpzZywKIAkJCSBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pCiB7Ci0JZG1h
X3VubWFwX3NnKGRldiwgc2ctPnNnbCwgc2ctPm5lbnRzLCBkaXJlY3Rpb24pOworCWRtYV91bm1h
cF9zZ3RhYmxlKGRldiwgc2csIGRpcmVjdGlvbik7CiAJc2dfZnJlZV90YWJsZShzZyk7CiAJa2Zy
ZWUoc2cpOwogfQotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
