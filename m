Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8CB1C3AC6
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:03:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D84B56615F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:03:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C91E2661BF; Mon,  4 May 2020 13:03:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3FE76606F;
	Mon,  4 May 2020 12:55:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A19CE61992
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9154666098; Mon,  4 May 2020 12:54:27 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 207A661992
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:19 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125418euoutp0159b83ed705af0658be96cd6b681d6abf~L1G0LFuUy2849828498euoutp015
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125418euoutp0159b83ed705af0658be96cd6b681d6abf~L1G0LFuUy2849828498euoutp015
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125417eucas1p29975f37839a21bb71daff7da2708876c~L1GzpCSgB1833418334eucas1p2C;
 Mon,  4 May 2020 12:54:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 1D.D2.60679.97010BE5; Mon,  4
 May 2020 13:54:17 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125417eucas1p1672a3ad3263e5f6b9162ecf7bef7af2b~L1GzW3G_L1097010970eucas1p1e;
 Mon,  4 May 2020 12:54:17 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125417eusmtrp2a738da8603417531cc6899ad38350e8f~L1GzWOUco2826928269eusmtrp2R;
 Mon,  4 May 2020 12:54:17 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-a7-5eb0107905aa
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 39.69.08375.97010BE5; Mon,  4
 May 2020 13:54:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125416eusmtip2c18734bdecf75a1d1cd5f215d8a79491~L1GyqxnTi0350503505eusmtip2N;
 Mon,  4 May 2020 12:54:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:49 +0200
Message-Id: <20200504125359.5678-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSbUhTYRTHe3Z3765ri9sUfTDJGGRpqE0lLplRkHA/iSC9oGTOvKjppmzT
 UrKWVsRSU/ugiZqJNHO+TplvlU7T2wpWvmZZmVmSiWVORWVqmzft2/+c8/uf/+HhwRFRO+qK
 x8tVtEIuTRRjfK6hb8XsnUY0RB42zh4ic8wmDtlYVI+SG4Z8hBxa/I2RT3S9HHLj6wxKlhZk
 kOWdgeTC0ASH1E+OoORgewlG1r74xCONc9/QE0KqpqwGUM+WyrlUy9IXlBq/y3Copsrr1Nj6
 JELdH9UCquO9GqPWiju5VG5zNaBaRsoQyqLfGyoI5x+LoRPjU2mF7/Eofpxap8eSl1yu1M0N
 8tRgxlEDHHBIBMC2hXlEA/i4iKgCsClPjbLFAoBvhrsAW1gAbMzVY1uWqs99PHagBTCbKUW2
 LY8rGcROYYQEamY1mw4n4haAL3MEdggh5jjQaMrchByJMDjWtrIJcYn9cHr5A2rXQiIIPrzR
 gLJx7lDX0GXjcdzB1n+Qc8C+BxKveLDLouWwzCmosyz+O88R/mSaeax2gxttDzmsIQvACXMt
 jy2yARzMLAIsFQg/mlcxewJCeML6dl+7hMRJqH7qzMpdcHR2tx1GbLLAUIiwbSG8c1vE7vCA
 xUzddqrx7QDCagqWTNzD2PfpAXCNeY7lAffi/1nlAFQDFzpFKYullX5y+rKPUipTpshjfS4m
 yfTA9qNerzMLraDdGt0NCByIBcJzlvpIESpNVabJugHEEbGTsPWmrSWMkaal04qkC4qURFrZ
 DfbgXLGL0L9i+ryIiJWq6ASaTqYVW1MO7uCqBoVMR3KOX5hG7Zw/FRue0COYV8mCZbzgZWvw
 jmjdNbrCxIRmXX13duVg9Y/yfSPN4gLfgHHd0YypiuE/4/2/4lWKmDMavtl/otca4S05MtbS
 pPI4HeIljGKG3Aqd0iVkZ4RpdXFVcImrd45otYaUeTrzDdpHQf0D35t3moFUzFXGSSVeiEIp
 /QtEZExuTQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDIsWRmVeSWpSXmKPExsVy+t/xe7qVAhviDA5tlrToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSz+P3rNajF3Uq3Fgv3WFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObxd9Z+Fo++
 LasYPbZfm8fs8XmTXABPlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1N
 SmpOZllqkb5dgl5Gw+pNbAXfxCvWfbjM3sD4WriLkZNDQsBEYsW9Y+xdjFwcQgJLGSWO/7vO
 DpGQkTg5rYEVwhaW+HOtiw2i6BOjxNWr01hAEmwChhJdbyESIgKdjBLTuj+CjWIW+MEk8WjF
 REaQKmGBQInbva1gHSwCqhIvf9wCG8srYCsxv3ED1Ap5idUbDjB3MXJwcALFZ/aqg4SFBPIl
 7j79xzKBkW8BI8MqRpHU0uLc9NxiQ73ixNzi0rx0veT83E2MwJjZduzn5h2MlzYGH2IU4GBU
 4uGN+Lw+Tog1say4MvcQowQHs5II744WoBBvSmJlVWpRfnxRaU5q8SFGU6CbJjJLiSbnA+M5
 ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDo9A9VtNVze+jOoNk
 b649dT824fm1G9f2iQtuTynh2Hb4iVRDVpKr/gROh4MXfeKS/VXClnC/FjtrkO+6I26vmqGL
 2+4PH3k1w8/V/OcI+XDZz7e54Peez1M1e9hepNm/eXjGi7Hz7bKjxXnzxIVnL7qmeM9Fv+fl
 px3ud4QOZa338mjyZFzqp8RSnJFoqMVcVJwIAGHOQO+vAgAA
X-CMS-MailID: 20200504125417eucas1p1672a3ad3263e5f6b9162ecf7bef7af2b
X-Msg-Generator: CA
X-RootMTR: 20200504125417eucas1p1672a3ad3263e5f6b9162ecf7bef7af2b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125417eucas1p1672a3ad3263e5f6b9162ecf7bef7af2b
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125417eucas1p1672a3ad3263e5f6b9162ecf7bef7af2b@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 11/21] drm: rockchip: fix sg_table nents
 vs. orig_nents misuse
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
b3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2VkIHRvIGRtYV9tYXBfc2cuIFRoZQpzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyB8IDE1ICsr
KysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwppbmRl
eCAwZDE4ODQ2Li5hMDI0YzcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fZ2VtLmMKQEAgLTM3LDcgKzM3LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9nZW1faW9t
bXVfbWFwKHN0cnVjdCByb2NrY2hpcF9nZW1fb2JqZWN0ICpya19vYmopCiAJcmtfb2JqLT5kbWFf
YWRkciA9IHJrX29iai0+bW0uc3RhcnQ7CiAKIAlyZXQgPSBpb21tdV9tYXBfc2cocHJpdmF0ZS0+
ZG9tYWluLCBya19vYmotPmRtYV9hZGRyLCBya19vYmotPnNndC0+c2dsLAotCQkJICAgcmtfb2Jq
LT5zZ3QtPm5lbnRzLCBwcm90KTsKKwkJCSAgIHJrX29iai0+c2d0LT5vcmlnX25lbnRzLCBwcm90
KTsKIAlpZiAocmV0IDwgcmtfb2JqLT5iYXNlLnNpemUpIHsKIAkJRFJNX0VSUk9SKCJmYWlsZWQg
dG8gbWFwIGJ1ZmZlcjogc2l6ZT0lemQgcmVxdWVzdF9zaXplPSV6ZFxuIiwKIAkJCSAgcmV0LCBy
a19vYmotPmJhc2Uuc2l6ZSk7CkBAIC05OCwxMSArOTgsMTEgQEAgc3RhdGljIGludCByb2NrY2hp
cF9nZW1fZ2V0X3BhZ2VzKHN0cnVjdCByb2NrY2hpcF9nZW1fb2JqZWN0ICpya19vYmopCiAJICog
VE9ETzogUmVwbGFjZSB0aGlzIGJ5IGRybV9jbGZsdXNoX3NnKCkgb25jZSBpdCBjYW4gYmUgaW1w
bGVtZW50ZWQKIAkgKiB3aXRob3V0IHJlbHlpbmcgb24gc3ltYm9scyB0aGF0IGFyZSBub3QgZXhw
b3J0ZWQuCiAJICovCi0JZm9yX2VhY2hfc2cocmtfb2JqLT5zZ3QtPnNnbCwgcywgcmtfb2JqLT5z
Z3QtPm5lbnRzLCBpKQorCWZvcl9lYWNoX3NnKHJrX29iai0+c2d0LT5zZ2wsIHMsIHJrX29iai0+
c2d0LT5vcmlnX25lbnRzLCBpKQogCQlzZ19kbWFfYWRkcmVzcyhzKSA9IHNnX3BoeXMocyk7CiAK
LQlkbWFfc3luY19zZ19mb3JfZGV2aWNlKGRybS0+ZGV2LCBya19vYmotPnNndC0+c2dsLCBya19v
YmotPnNndC0+bmVudHMsCi0JCQkgICAgICAgRE1BX1RPX0RFVklDRSk7CisJZG1hX3N5bmNfc2df
Zm9yX2RldmljZShkcm0tPmRldiwgcmtfb2JqLT5zZ3QtPnNnbCwKKwkJCSAgICAgICBya19vYmot
PnNndC0+b3JpZ19uZW50cywgRE1BX1RPX0RFVklDRSk7CiAKIAlyZXR1cm4gMDsKIApAQCAtMzUx
LDcgKzM1MSw4IEBAIHZvaWQgcm9ja2NoaXBfZ2VtX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqKQogCQkJcm9ja2NoaXBfZ2VtX2lvbW11X3VubWFwKHJrX29iaik7CiAJCX0g
ZWxzZSB7CiAJCQlkbWFfdW5tYXBfc2coZHJtLT5kZXYsIHJrX29iai0+c2d0LT5zZ2wsCi0JCQkJ
ICAgICBya19vYmotPnNndC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwkJCQkgICAgIHJr
X29iai0+c2d0LT5vcmlnX25lbnRzLAorCQkJCSAgICAgRE1BX0JJRElSRUNUSU9OQUwpOwogCQl9
CiAJCWRybV9wcmltZV9nZW1fZGVzdHJveShvYmosIHJrX29iai0+c2d0KTsKIAl9IGVsc2UgewpA
QCAtNDkzLDE0ICs0OTQsMTQgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgcm9ja2NoaXBfc2dfZ2V0
X2NvbnRpZ3VvdXNfc2l6ZShzdHJ1Y3Qgc2dfdGFibGUgKnNndCwKIAkJCXN0cnVjdCBzZ190YWJs
ZSAqc2csCiAJCQlzdHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCAqcmtfb2JqKQogewotCWludCBj
b3VudCA9IGRtYV9tYXBfc2coZHJtLT5kZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywKKwlpbnQgY291
bnQgPSBkbWFfbWFwX3NnKGRybS0+ZGV2LCBzZy0+c2dsLCBzZy0+b3JpZ19uZW50cywKIAkJCSAg
ICAgICBETUFfQklESVJFQ1RJT05BTCk7CiAJaWYgKCFjb3VudCkKIAkJcmV0dXJuIC1FSU5WQUw7
CiAKIAlpZiAocm9ja2NoaXBfc2dfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzZywgY291bnQpIDwgYXR0
YWNoLT5kbWFidWYtPnNpemUpIHsKIAkJRFJNX0VSUk9SKCJmYWlsZWQgdG8gbWFwIHNnX3RhYmxl
IHRvIGNvbnRpZ3VvdXMgbGluZWFyIGFkZHJlc3MuXG4iKTsKLQkJZG1hX3VubWFwX3NnKGRybS0+
ZGV2LCBzZy0+c2dsLCBzZy0+bmVudHMsCisJCWRtYV91bm1hcF9zZyhkcm0tPmRldiwgc2ctPnNn
bCwgc2ctPm9yaWdfbmVudHMsCiAJCQkgICAgIERNQV9CSURJUkVDVElPTkFMKTsKIAkJcmV0dXJu
IC1FSU5WQUw7CiAJfQotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
