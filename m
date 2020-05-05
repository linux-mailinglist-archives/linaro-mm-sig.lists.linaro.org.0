Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C94411C5391
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 12:45:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6F3061999
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:45:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DBFC366072; Tue,  5 May 2020 10:45:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7F9966055;
	Tue,  5 May 2020 10:44:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9C82561999
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 10:44:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8485B60F57; Tue,  5 May 2020 10:44:52 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 307E960F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 10:44:51 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505104449euoutp02d250d1a54ff39d0cd1811cce73b094f3~MG-DXP9iT0463304633euoutp02D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 10:44:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505104449euoutp02d250d1a54ff39d0cd1811cce73b094f3~MG-DXP9iT0463304633euoutp02D
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505104449eucas1p2d3c3f4831806c8ab1593eaa897fcd6bf~MG-C_m4Lg2225722257eucas1p2I;
 Tue,  5 May 2020 10:44:49 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 53.33.60679.1A341BE5; Tue,  5
 May 2020 11:44:49 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505104448eucas1p2c685623a3df9ea52315da9da96ab16c0~MG-Cm5Skk3246232462eucas1p2y;
 Tue,  5 May 2020 10:44:48 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505104448eusmtrp1e4d85cba64f6a7780d3fb10e753c0c1b~MG-CjTOx_2386723867eusmtrp1d;
 Tue,  5 May 2020 10:44:48 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-83-5eb143a1f511
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 03.91.07950.0A341BE5; Tue,  5
 May 2020 11:44:48 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200505104447eusmtip2cdb5cf9630df80a6721b078e97316a11~MG-Bpa7J_2913229132eusmtip2p;
 Tue,  5 May 2020 10:44:47 +0000 (GMT)
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <908eedcb-00df-3467-40fc-b15d91c7e625@samsung.com>
Date: Tue, 5 May 2020 12:44:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505102234.GA15038@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeUgUcRTH+e3M7I5rGz9XZV8WBVtkSnlUxJAhRQfzV0YERaa16qDmVTtq
 KUHmkWlm1v5RbuaVZd5lth4ZpVCTaItk2KGl4qZoea5Gmh3ujpb/vePz3vd94dGEsotyokMj
 ozltpCZcLZWThpczxk0Fux/6e9QL9swVY4uEeXizimL+GK4RzNvpMSlTUvZCwuQ/82LSbj2Q
 MVNv+yRMdX8nxXQ05EiZpnETtdOWNTXlStjy3HLEPv2eT7K133sptueyIGEfFZ1nu373E6zu
 fTFin3xIkLKZNaWINVevPmB7VL4jiAsPjeW07t4n5CGtQid1qpA+a5roIhPQO2k6sqEBb4Xn
 7YOydCSnlfg+gm/GRkJMphBkfm1bSMwIuvqzyMWRuuQaSmwUI/iZp1ugxhAUdTwjLJQ9PgYp
 nQPIEjtgNXwZfo0sEIHHJTB0vc/akGJPSB9Jt16iwN7wM6HMWifxOrg9q5uXo2lH7Ac3Og+J
 iB20ZJusV9jgjaBLGreOEngN1I7kEGKsgo+mPIlFC/AFGq5OPZZa9gDeAyVCoOjAHoaFGpkY
 r4JWXQYp8kkI+owVMjHJQNCReBOJlBd0G2etiwjsAlUN7mJ5F0w+Tl7Yvxzej9iJNyyH64Yb
 hFhWwKWLSpFeD3qh8p9sU/sbIgup9Uuc6Ze40S9xo/+vm4/IUqTiYviIYI7fHMmdceM1EXxM
 ZLBbYFRENZp/udbfwlQdapgLaEaYRupliiPmKn8lpYnl4yKaEdCE2kFx78cDf6UiSBMXz2mj
 jmtjwjm+Ga2kSbVKsaVwyE+JgzXRXBjHneK0i10JbeOUgEB9qG2tT+D4PreA/YmuQoNhQFV/
 5+k+FOab2us4F20WiEoHOwYqYGWQrPB0RYps++Fg33OjycQKfyZ+2uEkPuj8CXqyXmUXVGyg
 +NOp8s0eLq4uidmNJFEwOBEy46ydju++a1jjszOg53OcfvK4ee/tlm2/qtJym0a9VChITfIh
 Gk9XQstr/gL8Y+P1bgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLIsWRmVeSWpSXmKPExsVy+t/xe7oLnDfGGfQ9N7XoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le26Jy9gd3iy5WHTBabHl9jtbi8aw6bxcEPT1gduD2eHJzH
 5LFm3hpGj73fFrB4bP/2gNXjfvdxJo/NS+o9bv97zOwx+cZyRo/dNxvYPPq2rGL0+LxJLoA7
 Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUnsyy1SN8uQS/j9PFr
 rAWLOCqefLzN0sB4na2LkZNDQsBEYkfLFtYuRi4OIYGljBJbV81ggkjISJyc1sAKYQtL/LnW
 xQZR9JZRYu3ra8wgCWGBGInWa88YQWwRASWJp6/OMoIUMQt8YJJ4NnMlWEJI4DmjxJS9niA2
 m4ChRNfbLrDVvAJ2Er8bVoPVsAioSMz9NZmli5GDQ1QgVqLloiZEiaDEyZlPWEBsTgEdicnN
 H8BamQXMJOZtfsgMYctLbH87B8oWl7j1ZD7TBEahWUjaZyFpmYWkZRaSlgWMLKsYRVJLi3PT
 c4uN9IoTc4tL89L1kvNzNzECo3rbsZ9bdjB2vQs+xCjAwajEw7vh6/o4IdbEsuLK3EOMEhzM
 SiK8y35siBPiTUmsrEotyo8vKs1JLT7EaAr020RmKdHkfGDCySuJNzQ1NLewNDQ3Njc2s1AS
 5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwOhb+2Dighh70z3Lt+7bPPepsGqK2oT3qmsbrzj+
 P1vK94zf7NdU+323DefPK70+xfO304qzNgayXGxXVhxYI8yZr26Yyd68WeT5olM8EiKdeR+n
 3nXV9nXo/taf6X8q6s7BmNmyzMKSJ87uLfZLC/D2ZldO2NIWJbLfa2X0tsxJAguFz7ilhCmx
 FGckGmoxFxUnAgA0vfUqAAMAAA==
X-CMS-MailID: 20200505104448eucas1p2c685623a3df9ea52315da9da96ab16c0
X-Msg-Generator: CA
X-RootMTR: 20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <CGME20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050@eucas1p2.samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <20200505102234.GA15038@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 01/25] dma-mapping: add generic
 helpers for mapping sgtable objects
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

SGkgQ2hyaXN0b3BoLAoKT24gMDUuMDUuMjAyMCAxMjoyMiwgQ2hyaXN0b3BoIEhlbGx3aWcgd3Jv
dGU6Cj4+ICtzdGF0aWMgaW5saW5lIGludCBkbWFfbWFwX3NndGFibGVfYXR0cnMoc3RydWN0IGRl
dmljZSAqZGV2LAo+PiArCXN0cnVjdCBzZ190YWJsZSAqc2d0LCBlbnVtIGRtYV9kYXRhX2RpcmVj
dGlvbiBkaXIsIHVuc2lnbmVkIGxvbmcgYXR0cnMpCj4gVHdvIHRhYiBpbmRlbnRzIGZvciBwYXJh
bWV0ZXIgY29udGludWF0aW9uLCBwbGVhc2UuCj4KPiBDYW4gd2UgYWxzbyBza2lwIHRoZSBzZXBh
cmF0ZSBfYXR0cnMgdmVyc2lvbj8gIFRoZSBleGlzdGluZyBvbmVzIGhhdmUgdGhlCj4gc2VwYXJh
dGUgX2F0dHJzIHZhcmlhbnQgYXMgdGhlcmUgd2VyZSBwcmUtZXhpc3RpbmcgdmVyc2lvbnMgd2l0
aG91dCB0aGUKPiBhdHRycyBhcmd1bWVudCBhbmQgbG90cyBvZiB1c2VycywgYnV0IHRoYXQgZG9l
c24ndCByZWFsbHkgYXBwbHkgaGVyZSBhcwo+IGFuIGV4dHJhIDAgYXJndW1lbnQgaXNuJ3QgcmVh
bGx5IGFuIGlzc3VlLgoKT2theS4KCj4+ICtzdGF0aWMgaW5saW5lIHNpemVfdCBpb21tdV9tYXBf
c2d0YWJsZShzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4sCj4+ICsJCQl1bnNpZ25lZCBsb25n
IGlvdmEsIHN0cnVjdCBzZ190YWJsZSAqc2d0LCBpbnQgcHJvdCkKPj4gK3sKPj4gKwlyZXR1cm4g
aW9tbXVfbWFwX3NnKGRvbWFpbiwgaW92YSwgc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywgcHJv
dCk7Cj4+ICt9Cj4gU2hvdWxkIHRoaXMgYmUgYSBzZXBhcmF0ZSBwYXRjaCBkdWUgdG8gdGhlIGRp
ZmZlcmVudCBzdWJzeXN0ZW1zPwo+Cj4gRllJLCBJJ2xsIGhhcHBpbHkgcGljayB1cCB0aGUgcHJl
cCBwYXRjaGVzIGluIGFuIGltbXV0YWJsZSBicmFuY2ggb2YKPiB0aGUgZG1hLW1hcHBpbmcgdHJl
ZSBvbmUgd2UgaGF2ZSBzZXR0bGVkIG9uIHRoZSBkZXRhaWxzLgoKT2theS4KCkJlc3QgcmVnYXJk
cwotLSAKTWFyZWsgU3p5cHJvd3NraSwgUGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
