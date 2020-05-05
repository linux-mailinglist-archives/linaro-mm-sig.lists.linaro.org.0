Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 106DC1C515D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:53:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3535F66072
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:53:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2684766240; Tue,  5 May 2020 08:53:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22AF2664E8;
	Tue,  5 May 2020 08:47:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3F8F860F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 33F5A661BF; Tue,  5 May 2020 08:46:38 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id C796060F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:29 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084629euoutp01b574859d1d2a5545bb79da1459b4f015~MFXuRZzOI0374703747euoutp01M
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084629euoutp01b574859d1d2a5545bb79da1459b4f015~MFXuRZzOI0374703747euoutp01M
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084628eucas1p2e6d9d80ae7c77b138e29685007474ce4~MFXuBbCHp2338223382eucas1p26;
 Tue,  5 May 2020 08:46:28 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 4B.32.60679.4E721BE5; Tue,  5
 May 2020 09:46:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084628eucas1p2c87aae2f471b716675559debbf680c46~MFXttSlL42338223382eucas1p25;
 Tue,  5 May 2020 08:46:28 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084628eusmtrp17da6bec83a3598d7c2c2340783bb97ea~MFXtsna2U0942509425eusmtrp1_;
 Tue,  5 May 2020 08:46:28 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-38-5eb127e4be29
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 16.21.07950.4E721BE5; Tue,  5
 May 2020 09:46:28 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084627eusmtip15d51d655f7ea4491834ab348c4aebb6b~MFXtLhWHI0521305213eusmtip1B;
 Tue,  5 May 2020 08:46:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:45:57 +0200
Message-Id: <20200505084614.30424-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+c7Zzo7T6WlKflgoDEoUUmcRB7x0wT8OBGElFELaKU9Tc3Oc
 qWWBTkPNqWVZaiJmUt7nZV6biDqcKyQzldC85A1hgmipQyW0zaP23+99vuf53vd7+XBU3MF3
 w2MUCQyroOMkmJDXPrA9dGbRsznCL9/iTeYNfUHI5uJGPrnX/hIlxzZXMbKmzoiQ5T0B5HqZ
 DiM3xuYQUrfwg0+O6ksxUts/LSD71hb55Jp2E7koourL6gHVbSnnUZ9KpgVUh2WWT/3KMSFU
 y4dUanJ3AaUKxqsA1TWhxqjnrbWAWte5h9qHCwOjmLiYJIb1Db4jjJ6frOYrC50ezY7qgBqM
 OWiAHQ6Jc7DX+BPRACEuJqoB3FwuBFyxAeDan3kBV6wD2JVpAYeR6vbvPBuLiSoAa3fvHyWy
 dl7vmzBCCjUrGszGLkQGgJ/zHGwmlBhF4Dtj+n7amQiFs/061MY84hTMLP62r4uIIFjU/5XH
 dfOAdU29+x47IhgujExhtosgMSCAaVn1B6YQ2FnehXHsDJdNrQKOT8LBglweF3gK4NyQVsAV
 uQCOphcfPCgATg3tWNO4dT4v2Kj35eRLsHU5W2CTIeEIx1eO2WTUiq/ai1BOFsFnmWLOfRqW
 mBqO2vYNj6AcU9CsNaDchozWNWbsIfnAo+R/s3IAaoErk6iSyxiVv4J56KOi5apEhcznXrxc
 B6zfaXDXtNEJ9H/vGgCBA4mD6NZ6Y4SYTyepkuUGAHFU4iKq3GqKEIui6OTHDBsfySbGMSoD
 OIHzJK6isxXm22JCRicwDxhGybCHpwhu56YGN97HXjM5tWSmhdkNpKbNOHdKj5vxAFfWk/6Y
 3zYBt52cNPbXPeb0gUuRITm/0zwGYv2yUuxLey6z41jlzTDzXo1yiR1uerPQ8Fa2qnW82lyh
 3NYlaWmv7CDvmZRCRXjredOLJ+qeRkWuv+XCUnGkWbo1X38FKeh+31bkPimW8FTRtNQbZVX0
 PyYwgkBKAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xu7pP1DfGGfT/E7PoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+DxvE5vFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNXi
 w9qvTA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/Ho9grWgmn8FQ8ub2JsYLzC08XIySEhYCKxYttFli5GLg4hgaWMEgvvTWeBSMhI
 nJzWwAphC0v8udbFBlH0iVHi9d8rbCAJNgFDia63EAkRgU5GiWndH9lBHGaB20wSZ+ZOYAap
 Ehbwk3gz9TDYKBYBVYm2GefBVvAK2EpMP3IWap28xOoNB8DqOQXsJB5fugO2QUigUOLD+e+s
 Exj5FjAyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAiMlm3Hfm7Zwdj1LvgQowAHoxIP74av
 6+OEWBPLiitzDzFKcDArifAu+7EhTog3JbGyKrUoP76oNCe1+BCjKdBRE5mlRJPzgZGcVxJv
 aGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBceeCJq5nT17F9/AnKJjG
 L6y8tjFAUiyh/WtYpuOq1qNXC//Frsk/q8zrMp3n07r3qw0Xv2O4PF97/xEle/nil14iRpKt
 s/Tu2x87XnHL/pm+80aRWwGzZ36/LbSA4Uzyh6uKTmIbOtI/NCmk7JgWqRPs0Zr4r18vJlM3
 1lJN8LOYbKhNUpGoEktxRqKhFnNRcSIAx1ExtawCAAA=
X-CMS-MailID: 20200505084628eucas1p2c87aae2f471b716675559debbf680c46
X-Msg-Generator: CA
X-RootMTR: 20200505084628eucas1p2c87aae2f471b716675559debbf680c46
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084628eucas1p2c87aae2f471b716675559debbf680c46
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084628eucas1p2c87aae2f471b716675559debbf680c46@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 08/25] drm: lima: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xp
bWFfZ2VtLmMgfCAxMSArKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1h
X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYwppbmRleCA1NDA0ZTBkLi5m
Y2EzNTlkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMKQEAgLTY5LDggKzY5LDcgQEAgaW50IGxp
bWFfaGVhcF9hbGxvYyhzdHJ1Y3QgbGltYV9ibyAqYm8sIHN0cnVjdCBsaW1hX3ZtICp2bSkKIAkJ
cmV0dXJuIHJldDsKIAogCWlmIChiby0+YmFzZS5zZ3QpIHsKLQkJZG1hX3VubWFwX3NnKGRldiwg
Ym8tPmJhc2Uuc2d0LT5zZ2wsCi0JCQkgICAgIGJvLT5iYXNlLnNndC0+bmVudHMsIERNQV9CSURJ
UkVDVElPTkFMKTsKKwkJZG1hX3VubWFwX3NndGFibGUoZGV2LCBiby0+YmFzZS5zZ3QsIERNQV9C
SURJUkVDVElPTkFMKTsKIAkJc2dfZnJlZV90YWJsZShiby0+YmFzZS5zZ3QpOwogCX0gZWxzZSB7
CiAJCWJvLT5iYXNlLnNndCA9IGttYWxsb2Moc2l6ZW9mKCpiby0+YmFzZS5zZ3QpLCBHRlBfS0VS
TkVMKTsKQEAgLTgwLDcgKzc5LDEzIEBAIGludCBsaW1hX2hlYXBfYWxsb2Moc3RydWN0IGxpbWFf
Ym8gKmJvLCBzdHJ1Y3QgbGltYV92bSAqdm0pCiAJCX0KIAl9CiAKLQlkbWFfbWFwX3NnKGRldiwg
c2d0LnNnbCwgc2d0Lm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJcmV0ID0gZG1hX21hcF9z
Z3RhYmxlKGRldiwgJnNndCwgRE1BX0JJRElSRUNUSU9OQUwpOworCWlmIChyZXQpIHsKKwkJc2df
ZnJlZV90YWJsZSgmc2d0KTsKKwkJa2ZyZWUoYm8tPmJhc2Uuc2d0KTsKKwkJYm8tPmJhc2Uuc2d0
ID0gTlVMTDsKKwkJcmV0dXJuIHJldDsKKwl9CiAKIAkqYm8tPmJhc2Uuc2d0ID0gc2d0OwogCi0t
IAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
