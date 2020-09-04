Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 634BA25DACE
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 16:00:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85EAE66768
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 14:00:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6A2816677B; Fri,  4 Sep 2020 14:00:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3B0466797;
	Fri,  4 Sep 2020 13:37:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8CB7A60DC1
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7FA7866775; Fri,  4 Sep 2020 13:36:30 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 7F8C460DC1
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:12 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133511euoutp02cc9d4f12d7216ea190a847e0ebd9d292~xmAoWkwpH2889528895euoutp02w
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133511euoutp02cc9d4f12d7216ea190a847e0ebd9d292~xmAoWkwpH2889528895euoutp02w
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200904133511eucas1p1db8cd5f80eec531ed3f17eff8e18b6c3~xmAoEqN5-0114101141eucas1p1B;
 Fri,  4 Sep 2020 13:35:11 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C2.76.05997.F82425F5; Fri,  4
 Sep 2020 14:35:11 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133511eucas1p2f7241258a90f27b0aa67e62e74c48727~xmAnuPz-g1447714477eucas1p2f;
 Fri,  4 Sep 2020 13:35:11 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133511eusmtrp2fb28d0c94602321d95e9c106fbea7422~xmAnthj880977109771eusmtrp2P;
 Fri,  4 Sep 2020 13:35:11 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-7f-5f52428f5f85
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 84.B0.06017.E82425F5; Fri,  4
 Sep 2020 14:35:11 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133510eusmtip15068735ab97c561d115ca561029ac0cb~xmAnIuEoi2113421134eusmtip15;
 Fri,  4 Sep 2020 13:35:10 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:17:09 +0200
Message-Id: <20200904131711.12950-29-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djPc7r9TkHxBg2LpCx6z51kstg4Yz2r
 xf9tE5ktrnx9z2axcvVRJosF+60t5kwttNhyei6jxZcrD5ksNj2+xmpxedccNou1R+6yWxz8
 8ITVgddjzbw1jB57vy1g8dj+7QGrx/3u40wem5fUe9z+95jZY/KN5Yweu282sHn0Nr9j8+jb
 sorR4/MmuQDuKC6blNSczLLUIn27BK6Maes3sxdcE6xY+fkSewPjPb4uRg4OCQETicNbg7oY
 uTiEBFYwSixZ2MUO4XxhlHjduhfK+cwo0bDgHxNMR+v+MIj4ckaJNZfXMcJ1rDp0Csjh5GAT
 MJToetvFBmKLCLQySpzo5QEpYha4xiTx9u87VpCEsECixL59p8FsFgFVia2H/oLZvAJ2Ejva
 X4ANkhCQl1i94QAziM0JFN864wkryCAJgUPsEm+/bmeBOMlFYtUjd4h6YYlXx7ewQ9gyEv93
 zmeCqG9mlHh4bi07hNPDKHG5aQbUBmuJO+d+sYEMYhbQlFi/Sx8i7CjxdMJTqJf5JG68FQQJ
 MwOZk7ZNZ4YI80p0tAlBVKtJzDq+Dm7twQuXmCFsD4n5/59AQ3Eio8ShP+/ZJjDKz0JYtoCR
 cRWjeGppcW56arFRXmq5XnFibnFpXrpecn7uJkZgWjr97/iXHYy7/iQdYhTgYFTi4WWwD4oX
 Yk0sK67MPcQowcGsJMLrdPZ0nBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXFe40UvY4UE0hNLUrNT
 UwtSi2CyTBycUg2MdZuvJnStZ8h5XjTdtCFu3WqLoEcbtpgyLnn05bUu61XmvuBw3fsfTyye
 0Kn5PHhVEL/ZlwkfmesmOEmVrvO3ikw7vOCwMjvj7elh/7S/iVtNX/Y8LNnu+qaqPWZdMwqn
 17We3V3erj5rsYFvp8SbH0vnG8f+f1cTWDU31OPvZ33xZv1U/csVSizFGYmGWsxFxYkAlWSI
 NEcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsVy+t/xu7r9TkHxBltXMVn0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbzJlaaLHl9FxGiy9XHjJZbHp8jdXi8q45bBZrj9xltzj4
 4QmrA6/HmnlrGD32flvA4rH92wNWj/vdx5k8Ni+p97j97zGzx+Qbyxk9dt9sYPPobX7H5tG3
 ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFWRqZK+nY2Kak5mWWp
 Rfp2CXoZ09ZvZi+4Jlix8vMl9gbGe3xdjBwcEgImEq37w7oYOTmEBJYySry/lwViSwjISJyc
 1sAKYQtL/LnWxdbFyAVU84lRYuLj5+wgCTYBQ4mutxAJEYFORolp3R/BEswC95gk9q7zA7GF
 BeIl/qzcDxZnEVCV2HroL9hUXgE7iR3tLxghNshLrN5wgBnE5gSKb53xhBXiIluJD3MWs0xg
 5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMEq2Hfu5ZQdj17vgQ4wCHIxKPLwM9kHx
 QqyJZcWVuYcYJTiYlUR4nc6ejhPiTUmsrEotyo8vKs1JLT7EaAp01ERmKdHkfGAE55XEG5oa
 mltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYOzk0Tqp8LQymyPoWpVVwPOP
 kZNeMQTvPW+2bK6JKfvTQqXNDW2ZZyLOib85WNdev/Xw1jd7LH5Fflz6ojTOa1b5SwerxMl1
 m3z/iE20rhHexSp9/pb+t8W2mcobnUTKEwzs/b5f5+Zjqc6fFT2r0JZd8KVzcf/dnu6tDVZX
 IjUj5B/ukT7vqcRSnJFoqMVcVJwIAH5KQUqoAgAA
X-CMS-MailID: 20200904133511eucas1p2f7241258a90f27b0aa67e62e74c48727
X-Msg-Generator: CA
X-RootMTR: 20200904133511eucas1p2f7241258a90f27b0aa67e62e74c48727
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133511eucas1p2f7241258a90f27b0aa67e62e74c48727
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133511eucas1p2f7241258a90f27b0aa67e62e74c48727@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kvm@vger.kernel.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Kirti Wankhede <kwankhede@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 28/30] samples: vfio-mdev/mbochs: fix
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
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpSZXZpZXdlZC1ieTogUm9i
aW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4KLS0tCiBzYW1wbGVzL3ZmaW8tbWRldi9t
Ym9jaHMuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgYi9zYW1wbGVz
L3ZmaW8tbWRldi9tYm9jaHMuYwppbmRleCAzY2M1ZTU5MjE2ODIuLmUwMzA2ODkxNzI3MyAxMDA2
NDQKLS0tIGEvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKKysrIGIvc2FtcGxlcy92ZmlvLW1k
ZXYvbWJvY2hzLmMKQEAgLTg0Niw3ICs4NDYsNyBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICpt
Ym9jaHNfbWFwX2RtYWJ1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdCwKIAlpZiAoc2df
YWxsb2NfdGFibGVfZnJvbV9wYWdlcyhzZywgZG1hYnVmLT5wYWdlcywgZG1hYnVmLT5wYWdlY291
bnQsCiAJCQkJICAgICAgMCwgZG1hYnVmLT5tb2RlLnNpemUsIEdGUF9LRVJORUwpIDwgMCkKIAkJ
Z290byBlcnIyOwotCWlmICghZG1hX21hcF9zZyhhdC0+ZGV2LCBzZy0+c2dsLCBzZy0+bmVudHMs
IGRpcmVjdGlvbikpCisJaWYgKGRtYV9tYXBfc2d0YWJsZShhdC0+ZGV2LCBzZywgZGlyZWN0aW9u
LCAwKSkKIAkJZ290byBlcnIzOwogCiAJcmV0dXJuIHNnOwpAQCAtODY4LDYgKzg2OCw3IEBAIHN0
YXRpYyB2b2lkIG1ib2Noc191bm1hcF9kbWFidWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAq
YXQsCiAKIAlkZXZfZGJnKGRldiwgIiVzOiAlZFxuIiwgX19mdW5jX18sIGRtYWJ1Zi0+aWQpOwog
CisJZG1hX3VubWFwX3NndGFibGUoYXQtPmRldiwgc2csIGRpcmVjdGlvbiwgMCk7CiAJc2dfZnJl
ZV90YWJsZShzZyk7CiAJa2ZyZWUoc2cpOwogfQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
