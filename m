Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D36425FBC4
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Sep 2020 16:03:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DB976095F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Sep 2020 14:03:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F120060B45; Mon,  7 Sep 2020 14:03:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D42CD6090A;
	Mon,  7 Sep 2020 14:02:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 746B1607FD
 for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Sep 2020 14:02:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 56F526090A; Mon,  7 Sep 2020 14:02:23 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 4C499607FD
 for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Sep 2020 14:02:21 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200907140219euoutp0210c863e9b33c14e66102697e57f3d7b2~yhULEEpiM2963129631euoutp02A
 for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Sep 2020 14:02:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200907140219euoutp0210c863e9b33c14e66102697e57f3d7b2~yhULEEpiM2963129631euoutp02A
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200907140219eucas1p1e91dc0788991caa2678cc257343a2625~yhUKo6gle1403314033eucas1p1r;
 Mon,  7 Sep 2020 14:02:19 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E9.5F.06456.A6D365F5; Mon,  7
 Sep 2020 15:02:18 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200907140218eucas1p12759ab0e566e0438b407a2756a73e765~yhUKPoiKM1384513845eucas1p1b;
 Mon,  7 Sep 2020 14:02:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200907140218eusmtrp271ddc7a498a04eb8e6e153b87726cd69~yhUKO2Tgs1436614366eusmtrp2k;
 Mon,  7 Sep 2020 14:02:18 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-b4-5f563d6a40c5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 95.3C.06314.A6D365F5; Mon,  7
 Sep 2020 15:02:18 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200907140217eusmtip190e5c30f661ff214b4fb72711fb07e16~yhUJVvwIJ1099210992eusmtip1F;
 Mon,  7 Sep 2020 14:02:17 +0000 (GMT)
To: Tomasz Figa <tfiga@chromium.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <bdd3503f-d4f1-a1af-d10d-d75a1037ac5a@samsung.com>
Date: Mon, 7 Sep 2020 16:02:17 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAAFQd5AZDzG6i00gcAZKM9ZV1tATWufL=+xXUAmgrbTPt8W6Gw@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGvbMxEEuGoukJGjGN0WgUBFwmAUWJy+iDokYfNFirjCyy2QEV
 eLAuoBTUilGwECSKIosCZVEQFyBQKaFRIApq3KgRjQRiKQFtqLQjytt3zvn/e/6TXBqXWkkv
 OioukVfFKWPklBtR1zZuWha9Zo9iuf55EHvB1I6xVbkVJGuvu4yzPdYhii0pa8XYwqeBbEZe
 pQs70vMJY/X9r0i2uyGfYrMqa0n2jt6GsU3DZpK1pE1Q69w5c1MBxpUXlCMuT/2S4B6PFhKc
 vjSD4h6MfiS5D5kGjKsuOsm9nejHuSu9xYh71KemuIs1pYiz6OeFSva6BYXzMVHHeJXv2gNu
 kelffqGEhkUnitKKMDV6NleDXGlgVkDVqXpKg9xoKXMXgba24m8xgsCmHcPEwoLgmrWMmrJk
 tZwjxEExgt5zH0jHQMoMIagZ3+RgT2YnvB4qdhpmMQvgd3uu81mcaSPB+LHPaaAYP9AMapwi
 CbMWjPffEw4mJg1jY/24g2cz+6HN+JkQNR7Qft3sZFdmB+gsRszBOOMNDwbzcZFl8MZ8wxkb
 mKs0FKXVkmLsDVBeUoaL7AnfDTUuIs8Fe/2U4QyCT6Z7LmKRhaD7dC4SVYHwzvRrMio9uWIx
 VDT4iu310GnsQY42MO7QO+ghhnCH7LocXGxL4Hy6VFQvBJ3h/r+1TS+6cC2S66adppt2jm7a
 Obr/ewsRUYpkfJIQG8ELfnH8cR9BGSskxUX4HIqP1aPJz9gxYfj5EFm7DjYjhkbymZIB2W6F
 lFQeE5JjmxHQuHyWJKSzY79UEq5MTuFV8QpVUgwvNKM5NCGXSQJufguTMhHKRP4Izyfwqqkp
 Rrt6qZE22oCC99be6V4pUzU84c42lnMtKcTGWxGDjcGl4buGbSXafT+2y1Zva2xWZG9ITm3K
 9s681KcSFluidKE3O3mNzWPIHrB0/pWtRv/uVpPZVllvO1rfSN4OM467jKszwVW+ShHon28P
 GdhsC/+6JT6VmJFtDTh9uDrHnrq1OFROCJFKvyW4SlD+AbP5khyIAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpnleLIzCtJLcpLzFFi42I5/e/4Xd0s27B4gz0T5C16z51kstg4Yz2r
 xf9tE5ktrnx9z2axcvVRJosF+60tOmdvYLf4cuUhk8Wmx9dYLS7vmsNm0bNhK6vFsk1/mCwO
 fnjCavG59R+bA5/Hk4PzmDzWzFvD6DG74SKLx95vC1g8Nq3qZPPY/u0Bq8f97uNMHpuX1Hvc
 /veY2WPyjeWMHrtvNrB59G1ZxejxeZNcAG+Unk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWe
 obF5rJWRqZK+nU1Kak5mWWqRvl2CXkbb01+MBbvUK5a0LmFqYDwg08XIySEhYCLRc7idpYuR
 i0NIYCmjxMmJV5ggEjISJ6c1sELYwhJ/rnWxQRS9ZZR4dLIbrEhYIEji+vvlbCC2iICKxO+T
 M8BsZoFTrBITfztCNPQySfSdvQM2iU3AUKLrbRdYEa+AncSpdfdYQGwWoOYfPx4zg9iiAnES
 Z3peQNUISpyc+QSshlMgUGLW51NMEAvMJOZtfsgMYctLbH87B8oWl7j1ZD7TBEahWUjaZyFp
 mYWkZRaSlgWMLKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECE8G2Yz8372C8tDH4EKMAB6MS
 D+8L8dB4IdbEsuLK3EOMEhzMSiK8TmdPxwnxpiRWVqUW5ccXleakFh9iNAV6biKzlGhyPjBJ
 5ZXEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYOR98ancUa3b2nL6
 pZrYzd8LNA2D/CobZaZWb+1e0jF7z6S7Un13n9oU/nmyf226kpqIo/DfeGeXHM2PjH2rsle4
 Jx60mRJfxxqzStup6UHPnYPTjcq/i9QefrfnlkGVq/JLpk1u8usyF4UmTD+RUWMiwXdzkcmp
 G6GzKuLupwQK/V+47/jThUosxRmJhlrMRcWJAEFLwmMaAwAA
X-CMS-MailID: 20200907140218eucas1p12759ab0e566e0438b407a2756a73e765
X-Msg-Generator: CA
X-RootMTR: 20200904133512eucas1p204efa4e252ceb5fb50715239705f9965
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133512eucas1p204efa4e252ceb5fb50715239705f9965
References: <CGME20200904133512eucas1p204efa4e252ceb5fb50715239705f9965@eucas1p2.samsung.com>
 <20200904131711.12950-1-m.szyprowski@samsung.com>
 <20200904131711.12950-31-m.szyprowski@samsung.com>
 <CAAFQd5AZDzG6i00gcAZKM9ZV1tATWufL=+xXUAmgrbTPt8W6Gw@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v10 30/30] videobuf2: use sgtable-based
 scatterlist wrappers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkgVG9tYXN6LAoKT24gMDcuMDkuMjAyMCAxNTowNywgVG9tYXN6IEZpZ2Egd3JvdGU6Cj4gT24g
RnJpLCBTZXAgNCwgMjAyMCBhdCAzOjM1IFBNIE1hcmVrIFN6eXByb3dza2kKPiA8bS5zenlwcm93
c2tpQHNhbXN1bmcuY29tPiB3cm90ZToKPj4gVXNlIHJlY2VudGx5IGludHJvZHVjZWQgY29tbW9u
IHdyYXBwZXJzIG9wZXJhdGluZyBkaXJlY3RseSBvbiB0aGUgc3RydWN0Cj4+IHNnX3RhYmxlIG9i
amVjdHMgYW5kIHNjYXR0ZXJsaXN0IHBhZ2UgaXRlcmF0b3JzIHRvIG1ha2UgdGhlIGNvZGUgYSBi
aXQKPj4gbW9yZSBjb21wYWN0LCByb2J1c3QsIGVhc2llciB0byBmb2xsb3cgYW5kIGNvcHkvcGFz
dGUgc2FmZS4KPj4KPj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UsIGJlY2F1c2UgdGhlIGNvZGUgYWxy
ZWFkeSBwcm9wZXJseSBkaWQgYWxsIHRoZQo+PiBzY2F0dGVybGlzdCByZWxhdGVkIGNhbGxzLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3Vu
Zy5jb20+Cj4+IFJldmlld2VkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29t
Pgo+PiAtLS0KPj4gICAuLi4vY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5j
ICAgfCAzNCArKysrKysrKy0tLS0tLS0tLS0tCj4+ICAgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLWRtYS1zZy5jIHwgMzIgKysrKysrKy0tLS0tLS0tLS0KPj4gICAuLi4vY29t
bW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItdm1hbGxvYy5jICAgICAgfCAxMiArKystLS0tCj4+ICAg
MyBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCA0NyBkZWxldGlvbnMoLSkKPj4KPiBU
aGFua3MgZm9yIHRoZSBwYXRjaCEgUGxlYXNlIHNlZSBteSBjb21tZW50cyBpbmxpbmUuCj4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1h
LWNvbnRpZy5jIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEt
Y29udGlnLmMKPj4gaW5kZXggZWMzNDQ2Y2M0NWI4Li4xYjI0MmQ4NDRkZGUgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5j
Cj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNv
bnRpZy5jCj4+IEBAIC01OCwxMCArNTgsMTAgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgdmIyX2Rj
X2dldF9jb250aWd1b3VzX3NpemUoc3RydWN0IHNnX3RhYmxlICpzZ3QpCj4+ICAgICAgICAgIHVu
c2lnbmVkIGludCBpOwo+PiAgICAgICAgICB1bnNpZ25lZCBsb25nIHNpemUgPSAwOwo+Pgo+PiAt
ICAgICAgIGZvcl9lYWNoX3NnKHNndC0+c2dsLCBzLCBzZ3QtPm5lbnRzLCBpKSB7Cj4+ICsgICAg
ICAgZm9yX2VhY2hfc2d0YWJsZV9kbWFfc2coc2d0LCBzLCBpKSB7Cj4+ICAgICAgICAgICAgICAg
ICAgaWYgKHNnX2RtYV9hZGRyZXNzKHMpICE9IGV4cGVjdGVkKQo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgYnJlYWs7Cj4+IC0gICAgICAgICAgICAgICBleHBlY3RlZCA9IHNnX2RtYV9hZGRy
ZXNzKHMpICsgc2dfZG1hX2xlbihzKTsKPj4gKyAgICAgICAgICAgICAgIGV4cGVjdGVkICs9IHNn
X2RtYV9sZW4ocyk7Cj4+ICAgICAgICAgICAgICAgICAgc2l6ZSArPSBzZ19kbWFfbGVuKHMpOwo+
PiAgICAgICAgICB9Cj4+ICAgICAgICAgIHJldHVybiBzaXplOwo+PiBAQCAtMTAzLDggKzEwMyw3
IEBAIHN0YXRpYyB2b2lkIHZiMl9kY19wcmVwYXJlKHZvaWQgKmJ1Zl9wcml2KQo+PiAgICAgICAg
ICBpZiAoIXNndCkKPj4gICAgICAgICAgICAgICAgICByZXR1cm47Cj4+Cj4+IC0gICAgICAgZG1h
X3N5bmNfc2dfZm9yX2RldmljZShidWYtPmRldiwgc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywK
Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJ1Zi0+ZG1hX2Rpcik7Cj4+ICsgICAg
ICAgZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2aWNlKGJ1Zi0+ZGV2LCBzZ3QsIGJ1Zi0+ZG1hX2Rp
cik7Cj4+ICAgfQo+Pgo+PiAgIHN0YXRpYyB2b2lkIHZiMl9kY19maW5pc2godm9pZCAqYnVmX3By
aXYpCj4+IEBAIC0xMTUsNyArMTE0LDcgQEAgc3RhdGljIHZvaWQgdmIyX2RjX2ZpbmlzaCh2b2lk
ICpidWZfcHJpdikKPj4gICAgICAgICAgaWYgKCFzZ3QpCj4+ICAgICAgICAgICAgICAgICAgcmV0
dXJuOwo+Pgo+PiAtICAgICAgIGRtYV9zeW5jX3NnX2Zvcl9jcHUoYnVmLT5kZXYsIHNndC0+c2ds
LCBzZ3QtPm9yaWdfbmVudHMsIGJ1Zi0+ZG1hX2Rpcik7Cj4+ICsgICAgICAgZG1hX3N5bmNfc2d0
YWJsZV9mb3JfY3B1KGJ1Zi0+ZGV2LCBzZ3QsIGJ1Zi0+ZG1hX2Rpcik7Cj4+ICAgfQo+Pgo+PiAg
IC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCj4+IEBAIC0y
NzUsOCArMjc0LDggQEAgc3RhdGljIHZvaWQgdmIyX2RjX2RtYWJ1Zl9vcHNfZGV0YWNoKHN0cnVj
dCBkbWFfYnVmICpkYnVmLAo+PiAgICAgICAgICAgICAgICAgICAqIG1lbW9yeSBsb2NhdGlvbnMg
ZG8gbm90IHJlcXVpcmUgYW55IGV4cGxpY2l0IGNhY2hlCj4+ICAgICAgICAgICAgICAgICAgICog
bWFpbnRlbmFuY2UgcHJpb3Igb3IgYWZ0ZXIgYmVpbmcgdXNlZCBieSB0aGUgZGV2aWNlLgo+PiAg
ICAgICAgICAgICAgICAgICAqLwo+PiAtICAgICAgICAgICAgICAgZG1hX3VubWFwX3NnX2F0dHJz
KGRiX2F0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5vcmlnX25lbnRzLAo+PiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGF0dGFjaC0+ZG1hX2RpciwgRE1BX0FUVFJfU0tJUF9D
UFVfU1lOQyk7Cj4+ICsgICAgICAgICAgICAgICBkbWFfdW5tYXBfc2d0YWJsZShkYl9hdHRhY2gt
PmRldiwgc2d0LCBhdHRhY2gtPmRtYV9kaXIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKPj4gICAgICAgICAgc2dfZnJlZV90YWJs
ZShzZ3QpOwo+PiAgICAgICAgICBrZnJlZShhdHRhY2gpOwo+PiAgICAgICAgICBkYl9hdHRhY2gt
PnByaXYgPSBOVUxMOwo+PiBAQCAtMzAxLDggKzMwMCw4IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFi
bGUgKnZiMl9kY19kbWFidWZfb3BzX21hcCgKPj4KPj4gICAgICAgICAgLyogcmVsZWFzZSBhbnkg
cHJldmlvdXMgY2FjaGUgKi8KPj4gICAgICAgICAgaWYgKGF0dGFjaC0+ZG1hX2RpciAhPSBETUFf
Tk9ORSkgewo+PiAtICAgICAgICAgICAgICAgZG1hX3VubWFwX3NnX2F0dHJzKGRiX2F0dGFjaC0+
ZGV2LCBzZ3QtPnNnbCwgc2d0LT5vcmlnX25lbnRzLAo+PiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGF0dGFjaC0+ZG1hX2RpciwgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7Cj4+
ICsgICAgICAgICAgICAgICBkbWFfdW5tYXBfc2d0YWJsZShkYl9hdHRhY2gtPmRldiwgc2d0LCBh
dHRhY2gtPmRtYV9kaXIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBETUFf
QVRUUl9TS0lQX0NQVV9TWU5DKTsKPj4gICAgICAgICAgICAgICAgICBhdHRhY2gtPmRtYV9kaXIg
PSBETUFfTk9ORTsKPj4gICAgICAgICAgfQo+Pgo+PiBAQCAtMzEwLDkgKzMwOSw4IEBAIHN0YXRp
YyBzdHJ1Y3Qgc2dfdGFibGUgKnZiMl9kY19kbWFidWZfb3BzX21hcCgKPj4gICAgICAgICAgICog
bWFwcGluZyB0byB0aGUgY2xpZW50IHdpdGggbmV3IGRpcmVjdGlvbiwgbm8gY2FjaGUgc3luYwo+
PiAgICAgICAgICAgKiByZXF1aXJlZCBzZWUgY29tbWVudCBpbiB2YjJfZGNfZG1hYnVmX29wc19k
ZXRhY2goKQo+PiAgICAgICAgICAgKi8KPj4gLSAgICAgICBzZ3QtPm5lbnRzID0gZG1hX21hcF9z
Z19hdHRycyhkYl9hdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywKPj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkbWFfZGlyLCBETUFfQVRUUl9TS0lQ
X0NQVV9TWU5DKTsKPj4gLSAgICAgICBpZiAoIXNndC0+bmVudHMpIHsKPj4gKyAgICAgICBpZiAo
ZG1hX21hcF9zZ3RhYmxlKGRiX2F0dGFjaC0+ZGV2LCBzZ3QsIGRtYV9kaXIsCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKSkgewo+PiAgICAgICAg
ICAgICAgICAgIHByX2VycigiZmFpbGVkIHRvIG1hcCBzY2F0dGVybGlzdFxuIik7Cj4+ICAgICAg
ICAgICAgICAgICAgbXV0ZXhfdW5sb2NrKGxvY2spOwo+PiAgICAgICAgICAgICAgICAgIHJldHVy
biBFUlJfUFRSKC1FSU8pOwo+IEFzIG9wcG9zZWQgdG8gZG1hX21hcF9zZ19hdHRycygpLCBkbWFf
bWFwX3NndGFibGUoKSBub3cgcmV0dXJucyBhbgo+IGVycm9yIGNvZGUgb24gaXRzIG93bi4gSXMg
aXQgZXhwZWN0ZWQgdG8gaWdub3JlIGl0IGFuZCByZXR1cm4gLUVJTz8KClRob3NlIGVycm9ycyBh
cmUgbW9yZSBvciBsZXNzIHByb3BhZ2F0ZWQgdG8gdXNlcnNwYWNlIGFuZCAtRUlPIGhhcyBiZWVu
IAphbHJlYWR5IHdpZGVseSBkb2N1bWVudGVkIGluIFY0TDIgZG9jdW1lbnRhdGlvbiBhcyB0aGUg
ZXJyb3IgY29kZSBmb3IgCnRoZSBtb3N0IG9mIHRoZSBWNEwyIGlvY3Rscy4gSSBkb24ndCB3YW50
IHRvIGNoYW5nZSBpdC4gQSBwb3NzaWJsZSAKLUVJTlZBTCByZXR1cm5lZCBmcm9tIGRtYV9tYXBf
c2d0YWJsZSgpIHdhcyBqdXN0IG9uZSBvZiB0aGUgJ2dlbmVyaWMnIAplcnJvciBjb2Rlcywgbm90
IHZlcnkgZGVzY3JpcHRpdmUgaW4gdGhhdCBjYXNlLiBQcm9iYWJseSB0aGUgbWFpbiAKcHJvYmxl
bSBoZXJlIGlzIHRoYXQgZG1hX21hcF9zZygpIGFuZCBmcmllbmQgZG9lc24ndCByZXR1cm4gYW55
IGVycm9yIApjb2Rlcy4uLgoKID4gLi4uCgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dz
a2ksIFBoRApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
