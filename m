Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5983F25278B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:42:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 800C0619B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:42:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6EC5F665E0; Wed, 26 Aug 2020 06:42:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59B0F66611;
	Wed, 26 Aug 2020 06:36:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9DCCB617D4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8EC446186A; Wed, 26 Aug 2020 06:35:37 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id E3252617D4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:31 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063531euoutp02035e838bfac65b9dbf7841d9d79d4a84~uveonjnE-1512715127euoutp02C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200826063531euoutp02035e838bfac65b9dbf7841d9d79d4a84~uveonjnE-1512715127euoutp02C
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063530eucas1p1b4a9291b5c881c397f252329d5e86a01~uveoPjGh71803218032eucas1p1B;
 Wed, 26 Aug 2020 06:35:30 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 6B.23.06456.2B2064F5; Wed, 26
 Aug 2020 07:35:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063530eucas1p16acb847d7da0ea734bef507688a76c5a~uvenzwsyP1480714807eucas1p1M;
 Wed, 26 Aug 2020 06:35:30 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063530eusmtrp1775c98cf9c19b8c950c08415962ada98~uvenzKLTE1091110911eusmtrp1H;
 Wed, 26 Aug 2020 06:35:30 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-b4-5f4602b2558b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E3.C0.06314.2B2064F5; Wed, 26
 Aug 2020 07:35:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063529eusmtip241d433663647e436868c4b94ea5d1e8b~uvenOKK330091500915eusmtip2E;
 Wed, 26 Aug 2020 06:35:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:49 +0200
Message-Id: <20200826063316.23486-6-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGc2c604ItGQuRE0QwVVFI2OLCBLRRgmZMfHB5IJgoVpkASoG0
 gKJBGwkiUPYHCVFSC8ougpU1KhChLFoNoEJAAQERTUFkCyIgZQDfvnPO/9//3pMrwMXPCRtB
 cGgEqwiVhUhIc15l8/w75wrsmL/bG60DnWxoxejyrDKCXq5Mx+mumQmSrs3q49OFxU0YrXnl
 RQ886MHo6a5BjK4Y+kjQnbX3Sbr09Wc+3fBrmDgsYkpyShDzYlbDY6pmBwimP0mPMc/ybjG9
 S0M4k9mdj5i6HhXJpC66MSm6IsRMVdid3HTW/GAAGxIcxSpcpRfMgxYLSrHwuR3XJuua+CqU
 YpeIzARA7YOUhT5kYjFVgGBEfSoRma/wNILcfDXOFVMIJpNH8HXHp5aBtUE+gped4+SGZSyt
 mzSpSModEo2Jq2xFxSFoSRaaGKf6MVgYu2xiS+oMGBo0mIl51C7oN84SJhZRh6DgWyafS7OH
 4qf1q8lmlBT0SamrYUA18qHtp5bkRD6Q220kOLaEH3rdmtkW2jPVPM4Qi2DQUMrnCjWCzttZ
 iFN5QZ/hz8pJgpXrOUJZrSvXPgJ5H+KRqQ2UBXQbN3MPsICMyns41xbB3TtiTu0A2fonG7EN
 7zvWtsXAnKp3bVvpCGq+lKE0ZJ/9P0yDUBGyZiOV8kBW6R7KXnVRyuTKyNBAl0th8gq08pna
 l/S/q9FMx8VGRAmQRCjSkEf9xYQsShktb0QgwCVWIu+37efFogBZ9HVWEeaviAxhlY1oq4An
 sRbt1Y6dE1OBsgj2CsuGs4r1KSYws1EhFDtRPe+Z6uvr7CiN01FCdfUksH7awlF+6/DNhzfG
 E9jj+d/HXUt19fqZ+PIDGqOfEM3aFM40O+k9HlnmkI9P2BM1qt5YW38PW7nFFpu6ZWnAtirv
 GDd69HSRRYaXVbl2tIHP7nSrCjR4tlHagP17pit1uxO2+6in/n6NipHwlEEydydcoZT9A826
 B45IAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xe7qbmNziDc4v5rHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFrhl32C1Wrj7KZLFgv7XFg7k3mSy+XHnIZLHp8TVWi8u75rBZrD1yl93i
 4IcnrA68HmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo/+vgUff
 llWMHp83yQVwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehl/F2xlqngu3LFx91H2RsY++S6GDk5JARMJK6feMDcxcjFISSwlFHiw+ZF7BAJGYmT
 0xpYIWxhiT/Xutggij4xSix8thcswSZgKNH1FiIhItDJKDGt+yNYN7PAcyaJly36ILawQKDE
 nEnH2EBsFgFViftvv4E18wrYSqx4Nhlqm7zE6g0HmEFsTgE7iePd/WD1QkA1p9fOYJ7AyLeA
 kWEVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYKRsO/Zz8w7GSxuDDzEKcDAq8fAuYHONF2JN
 LCuuzD3EKMHBrCTC63T2dJwQb0piZVVqUX58UWlOavEhRlOgoyYyS4km5wOjOK8k3tDU0NzC
 0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6PQep5KsVNbJ58LXVxgW70sNdr1
 v9ad2gPNuz9KtMiv3Rkp8/KO1faD4rcNyh490WHYytUolLtLcPcaq9aQzavXfpQ/eev6hV9z
 pR/dWbPjwJz3O6McfJ4+mnX6aMwO5nRL04ucquLLJetCLr45sIQ9eq6XzrvHa0ou2MfXnrar
 S5oi7JnW6hynxFKckWioxVxUnAgAwZS1haoCAAA=
X-CMS-MailID: 20200826063530eucas1p16acb847d7da0ea734bef507688a76c5a
X-Msg-Generator: CA
X-RootMTR: 20200826063530eucas1p16acb847d7da0ea734bef507688a76c5a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063530eucas1p16acb847d7da0ea734bef507688a76c5a
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063530eucas1p16acb847d7da0ea734bef507688a76c5a@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, etnaviv@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 05/32] drm: etnaviv: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9l
dG5hdml2X2dlbS5jIHwgMTIgKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9l
dG5hdml2X21tdS5jIHwgMTMgKysrLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dl
bS5jCmluZGV4IGYwNmUxOWU3YmUwNC4uZWFmMTk0OWJjMmU0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5h
dml2L2V0bmF2aXZfZ2VtLmMKQEAgLTI3LDcgKzI3LDcgQEAgc3RhdGljIHZvaWQgZXRuYXZpdl9n
ZW1fc2NhdHRlcl9tYXAoc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqZXRuYXZpdl9vYmopCiAJ
ICogYmVjYXVzZSBkaXNwbGF5IGNvbnRyb2xsZXIsIEdQVSwgZXRjLiBhcmUgbm90IGNvaGVyZW50
LgogCSAqLwogCWlmIChldG5hdml2X29iai0+ZmxhZ3MgJiBFVE5BX0JPX0NBQ0hFX01BU0spCi0J
CWRtYV9tYXBfc2coZGV2LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJ
T05BTCk7CisJCWRtYV9tYXBfc2d0YWJsZShkZXYtPmRldiwgc2d0LCBETUFfQklESVJFQ1RJT05B
TCwgMCk7CiB9CiAKIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX3NjYXR0ZXJsaXN0X3VubWFwKHN0
cnVjdCBldG5hdml2X2dlbV9vYmplY3QgKmV0bmF2aXZfb2JqKQpAQCAtNTEsNyArNTEsNyBAQCBz
dGF0aWMgdm9pZCBldG5hdml2X2dlbV9zY2F0dGVybGlzdF91bm1hcChzdHJ1Y3QgZXRuYXZpdl9n
ZW1fb2JqZWN0ICpldG5hdml2X29iagogCSAqIGRpc2NhcmQgdGhvc2Ugd3JpdGVzLgogCSAqLwog
CWlmIChldG5hdml2X29iai0+ZmxhZ3MgJiBFVE5BX0JPX0NBQ0hFX01BU0spCi0JCWRtYV91bm1h
cF9zZyhkZXYtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsK
KwkJZG1hX3VubWFwX3NndGFibGUoZGV2LT5kZXYsIHNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDAp
OwogfQogCiAvKiBjYWxsZWQgd2l0aCBldG5hdml2X29iai0+bG9jayBoZWxkICovCkBAIC00MDQs
OSArNDA0LDggQEAgaW50IGV0bmF2aXZfZ2VtX2NwdV9wcmVwKHN0cnVjdCBkcm1fZ2VtX29iamVj
dCAqb2JqLCB1MzIgb3AsCiAJfQogCiAJaWYgKGV0bmF2aXZfb2JqLT5mbGFncyAmIEVUTkFfQk9f
Q0FDSEVEKSB7Ci0JCWRtYV9zeW5jX3NnX2Zvcl9jcHUoZGV2LT5kZXYsIGV0bmF2aXZfb2JqLT5z
Z3QtPnNnbCwKLQkJCQkgICAgZXRuYXZpdl9vYmotPnNndC0+bmVudHMsCi0JCQkJICAgIGV0bmF2
aXZfb3BfdG9fZG1hX2RpcihvcCkpOworCQlkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUoZGV2LT5k
ZXYsIGV0bmF2aXZfb2JqLT5zZ3QsCisJCQkJCSBldG5hdml2X29wX3RvX2RtYV9kaXIob3ApKTsK
IAkJZXRuYXZpdl9vYmotPmxhc3RfY3B1X3ByZXBfb3AgPSBvcDsKIAl9CiAKQEAgLTQyMSw4ICs0
MjAsNyBAQCBpbnQgZXRuYXZpdl9nZW1fY3B1X2Zpbmkoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpv
YmopCiAJaWYgKGV0bmF2aXZfb2JqLT5mbGFncyAmIEVUTkFfQk9fQ0FDSEVEKSB7CiAJCS8qIGZp
bmkgd2l0aG91dCBhIHByZXAgaXMgYWxtb3N0IGNlcnRhaW5seSBhIHVzZXJzcGFjZSBlcnJvciAq
LwogCQlXQVJOX09OKGV0bmF2aXZfb2JqLT5sYXN0X2NwdV9wcmVwX29wID09IDApOwotCQlkbWFf
c3luY19zZ19mb3JfZGV2aWNlKGRldi0+ZGV2LCBldG5hdml2X29iai0+c2d0LT5zZ2wsCi0JCQll
dG5hdml2X29iai0+c2d0LT5uZW50cywKKwkJZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2aWNlKGRl
di0+ZGV2LCBldG5hdml2X29iai0+c2d0LAogCQkJZXRuYXZpdl9vcF90b19kbWFfZGlyKGV0bmF2
aXZfb2JqLT5sYXN0X2NwdV9wcmVwX29wKSk7CiAJCWV0bmF2aXZfb2JqLT5sYXN0X2NwdV9wcmVw
X29wID0gMDsKIAl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2
X21tdS5jIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9tbXUuYwppbmRleCAzNjA3
ZDM0OGMyOTguLjEzYjEwMDU1M2EwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2
aXYvZXRuYXZpdl9tbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X21t
dS5jCkBAIC03OSw3ICs3OSw3IEBAIHN0YXRpYyBpbnQgZXRuYXZpdl9pb21tdV9tYXAoc3RydWN0
IGV0bmF2aXZfaW9tbXVfY29udGV4dCAqY29udGV4dCwgdTMyIGlvdmEsCiAJaWYgKCFjb250ZXh0
IHx8ICFzZ3QpCiAJCXJldHVybiAtRUlOVkFMOwogCi0JZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNn
LCBzZ3QtPm5lbnRzLCBpKSB7CisJZm9yX2VhY2hfc2d0YWJsZV9kbWFfc2coc2d0LCBzZywgaSkg
ewogCQl1MzIgcGEgPSBzZ19kbWFfYWRkcmVzcyhzZykgLSBzZy0+b2Zmc2V0OwogCQlzaXplX3Qg
Ynl0ZXMgPSBzZ19kbWFfbGVuKHNnKSArIHNnLT5vZmZzZXQ7CiAKQEAgLTk1LDE0ICs5NSw3IEBA
IHN0YXRpYyBpbnQgZXRuYXZpdl9pb21tdV9tYXAoc3RydWN0IGV0bmF2aXZfaW9tbXVfY29udGV4
dCAqY29udGV4dCwgdTMyIGlvdmEsCiAJcmV0dXJuIDA7CiAKIGZhaWw6Ci0JZGEgPSBpb3ZhOwot
Ci0JZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBpLCBqKSB7Ci0JCXNpemVfdCBieXRlcyA9IHNn
X2RtYV9sZW4oc2cpICsgc2ctPm9mZnNldDsKLQotCQlldG5hdml2X2NvbnRleHRfdW5tYXAoY29u
dGV4dCwgZGEsIGJ5dGVzKTsKLQkJZGEgKz0gYnl0ZXM7Ci0JfQorCWV0bmF2aXZfY29udGV4dF91
bm1hcChjb250ZXh0LCBpb3ZhLCBkYSAtIGlvdmEpOwogCXJldHVybiByZXQ7CiB9CiAKQEAgLTEx
Myw3ICsxMDYsNyBAQCBzdGF0aWMgdm9pZCBldG5hdml2X2lvbW11X3VubWFwKHN0cnVjdCBldG5h
dml2X2lvbW11X2NvbnRleHQgKmNvbnRleHQsIHUzMiBpb3ZhLAogCXVuc2lnbmVkIGludCBkYSA9
IGlvdmE7CiAJaW50IGk7CiAKLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+bmVudHMs
IGkpIHsKKwlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9zZyhzZ3QsIHNnLCBpKSB7CiAJCXNpemVfdCBi
eXRlcyA9IHNnX2RtYV9sZW4oc2cpICsgc2ctPm9mZnNldDsKIAogCQlldG5hdml2X2NvbnRleHRf
dW5tYXAoY29udGV4dCwgZGEsIGJ5dGVzKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
