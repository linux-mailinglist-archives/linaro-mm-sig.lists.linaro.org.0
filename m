Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 517EC1C516C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:56:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F68C61999
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:56:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 604A566079; Tue,  5 May 2020 08:56:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C5FF6618A;
	Tue,  5 May 2020 08:47:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3E96B66076
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3156B66227; Tue,  5 May 2020 08:46:43 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 738D66607B
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:32 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084631euoutp02f18ac4c2bac5d48a04fd184a31795e01~MFXwv6Nwj2627826278euoutp02j
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084631euoutp02f18ac4c2bac5d48a04fd184a31795e01~MFXwv6Nwj2627826278euoutp02j
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084631eucas1p2ff09db1c335f96f84aa635e65beca1c3~MFXwWiVvO1349613496eucas1p2q;
 Tue,  5 May 2020 08:46:31 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 20.11.60698.7E721BE5; Tue,  5
 May 2020 09:46:31 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084630eucas1p2199401486591b681b84a4b24496295fb~MFXv_2LdP1349613496eucas1p2p;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084630eusmtrp1d4e2b4f85f2fa3b85a8291c81b5e1d8a~MFXv_MUvM0942309423eusmtrp1b;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-3b-5eb127e78af2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 0A.21.07950.6E721BE5; Tue,  5
 May 2020 09:46:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084630eusmtip1ab284a34c04f7bc07a3ec27e3b008a46~MFXvZpThe0580805808eusmtip19;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:01 +0200
Message-Id: <20200505084614.30424-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfyyUcRzH973nnucel9PjKN9RabddRfNr+uMpzWpr7fmnTUXFSl08wzg/
 7vyIrbJ+SlychQwT5vy6cDh2TWI4JTfDjCg/pzBjzsnvy3mi/96f9+f1+bw/++6LI/wm1BYP
 CY+mJeGiMAHGZas71nROv07W+Luu1fHIVN0XFlmTXYWSRnU6QvYbFjCyrKKdRRon5lAyT/6Q
 LGj2IJf7x1mkanIAJfs0uRi5NGZESGXbDw7ZsjiFXrCgKvMrAdW0UsCmGlbGUGr0tZZF1RY/
 poa3JxEqY1ABqI9DiRi1ldPMpmR15YBqGMhHKL3qmJe5H/d8IB0WEktLXDzvcYOn5qo5kfV2
 D77/VmOJYPFwMjDDIXEGbjS9QpMBF+cTpQB2zZawmGIZwJcToxhT6AHUNxqRvZGkjmmEaSgA
 rF6dZu+P1P7U7FIY4QaT55Mxk7YmngPYmWpu0giRicByw2WTtiK8YcaCcofHcTYhhO9LhSab
 R3jCQt0mxoTZw4rqz7srzXb8yd6R3YsgMcCBX9tmUNMsJC7BNIMPw1vBWW0dh9FHYFdGCpvh
 nwI4rlNymCIFwL4n2YChPOCIbh0zLUIIB1ilcWHsi7BuQwGY/RZwcN6SOd8CytVZCGPzYNIL
 PkOfgDnaD/uxLT29/xAKLsu9mddpB7BIuYamAfuc/1kFAJQDGzpGKg6ipe7hdJyzVCSWxoQH
 OQdEiFVg51N1bWsNjeDT5v1WQOBAYM67pa/y56OiWGm8uBVAHBFY80pWq/35vEBRfAItibgr
 iQmjpa3ADmcLbHjuhTN3+ESQKJoOpelIWrLXZeFmtomgs/+0p4NPVOmQrZsiwato9e21o7fn
 cqMO2CpPhYq2fJ5pNhXf8v54dJdd9Qg7dH3kLCE0XxJaH4+xkXsXuhx85Js23nUl040rW79p
 SO9NtCcU5+xjb2xuxwXI5DU9QZJBz7Rix3qZDeGqGnbivgtV+8WHLne/IS1lmVm+CyHcVQFb
 Gixyc0QkUtFfx8PWW1ADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7rP1DfGGUzqNLLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSz+P3rNajF3Uq3Fgv3WFl+uPGSy2PT4GqvF5V1z2Cw+PfjPbLH2
 yF12i4MfnrA68HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNFj980GNo+/
 s/azePRtWcXosf3aPGaPz5vkAnii9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62M
 TJX07WxSUnMyy1KL9O0S9DKevN7AXrBVuuLWi21sDYwfxLoYOTkkBEwkOo49Y+5i5OIQEljK
 KNH9/D4rREJG4uS0BihbWOLPtS42iKJPjBK9U28zgSTYBAwlut5CJEQEOhklpnV/ZAdxmAXm
 MUssX3UYrEpYIEji7qU3QDYHB4uAqsTCFaogYV4BO4lF5/6wQWyQl1i94QAziM0JFH986Q5Y
 XEigUOLD+e+sExj5FjAyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAiMnm3Hfm7Zwdj1LvgQ
 owAHoxIP74av6+OEWBPLiitzDzFKcDArifAu+7EhTog3JbGyKrUoP76oNCe1+BCjKdBNE5ml
 RJPzgZGdVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBUUzl6rk/
 s19LXp615XHX5oVC+bKG5RM+pFcacDS0/lmmumzyxQf70muXbapwvzI9wXnifrkHzzZGbL+q
 /bSGdb3iY+27M55I/LrG3euSJB7MNPn6s+4z9549X75I0jZG9tr7LY//6upP25+5j+veb6US
 oWPl9avmPf+p0dBw9Vmwh9889fUtJ0uUWIozEg21mIuKEwE9GvK2tAIAAA==
X-CMS-MailID: 20200505084630eucas1p2199401486591b681b84a4b24496295fb
X-Msg-Generator: CA
X-RootMTR: 20200505084630eucas1p2199401486591b681b84a4b24496295fb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084630eucas1p2199401486591b681b84a4b24496295fb
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084630eucas1p2199401486591b681b84a4b24496295fb@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 12/25] drm: rockchip: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fZ2VtLmMgfCAyNiArKysrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCmluZGV4IDBkMTg4NDYuLjlkZjdk
N2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2Vt
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwpAQCAt
MzYsOCArMzYsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2dlbV9pb21tdV9tYXAoc3RydWN0IHJv
Y2tjaGlwX2dlbV9vYmplY3QgKnJrX29iaikKIAogCXJrX29iai0+ZG1hX2FkZHIgPSBya19vYmot
Pm1tLnN0YXJ0OwogCi0JcmV0ID0gaW9tbXVfbWFwX3NnKHByaXZhdGUtPmRvbWFpbiwgcmtfb2Jq
LT5kbWFfYWRkciwgcmtfb2JqLT5zZ3QtPnNnbCwKLQkJCSAgIHJrX29iai0+c2d0LT5uZW50cywg
cHJvdCk7CisJcmV0ID0gaW9tbXVfbWFwX3NndGFibGUocHJpdmF0ZS0+ZG9tYWluLCBya19vYmot
PmRtYV9hZGRyLCBya19vYmotPnNndCwKKwkJCQlwcm90KTsKIAlpZiAocmV0IDwgcmtfb2JqLT5i
YXNlLnNpemUpIHsKIAkJRFJNX0VSUk9SKCJmYWlsZWQgdG8gbWFwIGJ1ZmZlcjogc2l6ZT0lemQg
cmVxdWVzdF9zaXplPSV6ZFxuIiwKIAkJCSAgcmV0LCBya19vYmotPmJhc2Uuc2l6ZSk7CkBAIC05
OCwxMSArOTgsMTAgQEAgc3RhdGljIGludCByb2NrY2hpcF9nZW1fZ2V0X3BhZ2VzKHN0cnVjdCBy
b2NrY2hpcF9nZW1fb2JqZWN0ICpya19vYmopCiAJICogVE9ETzogUmVwbGFjZSB0aGlzIGJ5IGRy
bV9jbGZsdXNoX3NnKCkgb25jZSBpdCBjYW4gYmUgaW1wbGVtZW50ZWQKIAkgKiB3aXRob3V0IHJl
bHlpbmcgb24gc3ltYm9scyB0aGF0IGFyZSBub3QgZXhwb3J0ZWQuCiAJICovCi0JZm9yX2VhY2hf
c2cocmtfb2JqLT5zZ3QtPnNnbCwgcywgcmtfb2JqLT5zZ3QtPm5lbnRzLCBpKQorCWZvcl9lYWNo
X3NnKHJrX29iai0+c2d0LT5zZ2wsIHMsIHJrX29iai0+c2d0LT5vcmlnX25lbnRzLCBpKQogCQlz
Z19kbWFfYWRkcmVzcyhzKSA9IHNnX3BoeXMocyk7CiAKLQlkbWFfc3luY19zZ19mb3JfZGV2aWNl
KGRybS0+ZGV2LCBya19vYmotPnNndC0+c2dsLCBya19vYmotPnNndC0+bmVudHMsCi0JCQkgICAg
ICAgRE1BX1RPX0RFVklDRSk7CisJZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2aWNlKGRybS0+ZGV2
LCBya19vYmotPnNndCwgRE1BX1RPX0RFVklDRSk7CiAKIAlyZXR1cm4gMDsKIApAQCAtMzUwLDgg
KzM0OSw4IEBAIHZvaWQgcm9ja2NoaXBfZ2VtX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29i
amVjdCAqb2JqKQogCQlpZiAocHJpdmF0ZS0+ZG9tYWluKSB7CiAJCQlyb2NrY2hpcF9nZW1faW9t
bXVfdW5tYXAocmtfb2JqKTsKIAkJfSBlbHNlIHsKLQkJCWRtYV91bm1hcF9zZyhkcm0tPmRldiwg
cmtfb2JqLT5zZ3QtPnNnbCwKLQkJCQkgICAgIHJrX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElS
RUNUSU9OQUwpOworCQkJZG1hX3VubWFwX3NndGFibGUoZHJtLT5kZXYsIHJrX29iai0+c2d0LAor
CQkJCQkgIERNQV9CSURJUkVDVElPTkFMKTsKIAkJfQogCQlkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3ko
b2JqLCBya19vYmotPnNndCk7CiAJfSBlbHNlIHsKQEAgLTQ5MywxNSArNDkyLDE0IEBAIHN0YXRp
YyB1bnNpZ25lZCBsb25nIHJvY2tjaGlwX3NnX2dldF9jb250aWd1b3VzX3NpemUoc3RydWN0IHNn
X3RhYmxlICpzZ3QsCiAJCQlzdHJ1Y3Qgc2dfdGFibGUgKnNnLAogCQkJc3RydWN0IHJvY2tjaGlw
X2dlbV9vYmplY3QgKnJrX29iaikKIHsKLQlpbnQgY291bnQgPSBkbWFfbWFwX3NnKGRybS0+ZGV2
LCBzZy0+c2dsLCBzZy0+bmVudHMsCi0JCQkgICAgICAgRE1BX0JJRElSRUNUSU9OQUwpOwotCWlm
ICghY291bnQpCi0JCXJldHVybiAtRUlOVkFMOworCWludCBlcnIgPSBkbWFfbWFwX3NndGFibGUo
ZHJtLT5kZXYsIHNnLCBETUFfQklESVJFQ1RJT05BTCk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVy
cjsKIAotCWlmIChyb2NrY2hpcF9zZ19nZXRfY29udGlndW91c19zaXplKHNnLCBjb3VudCkgPCBh
dHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgeworCWlmIChyb2NrY2hpcF9zZ19nZXRfY29udGlndW91c19z
aXplKHNnLCBzZy0+bmVudHMpIDwKKwkgICAgYXR0YWNoLT5kbWFidWYtPnNpemUpIHsKIAkJRFJN
X0VSUk9SKCJmYWlsZWQgdG8gbWFwIHNnX3RhYmxlIHRvIGNvbnRpZ3VvdXMgbGluZWFyIGFkZHJl
c3MuXG4iKTsKLQkJZG1hX3VubWFwX3NnKGRybS0+ZGV2LCBzZy0+c2dsLCBzZy0+bmVudHMsCi0J
CQkgICAgIERNQV9CSURJUkVDVElPTkFMKTsKKwkJZG1hX3VubWFwX3NndGFibGUoZHJtLT5kZXYs
IHNnLCBETUFfQklESVJFQ1RJT05BTCk7CiAJCXJldHVybiAtRUlOVkFMOwogCX0KIAotLSAKMS45
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
