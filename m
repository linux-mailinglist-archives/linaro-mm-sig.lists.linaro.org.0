Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AA81C5182
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:04:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AD2B61999
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 09:04:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0DCC86618A; Tue,  5 May 2020 09:04:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 209D066543;
	Tue,  5 May 2020 08:48:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 08DCD60F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EC6BC66098; Tue,  5 May 2020 08:46:52 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 9E66060F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:38 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084637euoutp026ccf67d9743b5d160679d8f496f8368f~MFX2iCtOM2628726287euoutp02t
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084637euoutp026ccf67d9743b5d160679d8f496f8368f~MFX2iCtOM2628726287euoutp02t
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084637eucas1p1297f42df3c287917c2c0544c7e16b4d6~MFX2SMuf32430724307eucas1p13;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 8A.CF.61286.DE721BE5; Tue,  5
 May 2020 09:46:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084637eucas1p20390fa3c010bde00e438cce1b48d209c~MFX18i2791348613486eucas1p2o;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084637eusmtrp156559f615bad8ffc826c55f36f635cd2~MFX175TQi0969509695eusmtrp1C;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-ba-5eb127eda261
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E1.31.07950.DE721BE5; Tue,  5
 May 2020 09:46:37 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084636eusmtip1c82086af8bba62a51d3ac39d5c0e7684~MFX1WUA2u0521305213eusmtip1I;
 Tue,  5 May 2020 08:46:36 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:11 +0200
Message-Id: <20200505084614.30424-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfUgTYRzHee52t/NlcZ2CTxZJgywl38joyJKiovOPMkzCiqyVhy+5KTu1
 lKSRGDVfMC0yUxnTpfk2nbLClPmSLl8xHdOYUWYYaqvwrTSyNi/tv8/v+8Lvx8NDoFQr5k7E
 ypJYuUwSL8YdBfru5UEf666GSH910Q46Z7AHoX/ndwvphkItRv/R30dp0+I3nM4o0+L0s+ou
 hFYZgugF0wRC6ybNGD3SXIzTta/eCen275+wwyKmprQGML9W8gHTuqQSMM+XPmCMoaRGyLzP
 MiJMY/ktxrI6iTIFYxWAeflWgTO5TVWAmddtP+183vFgFBsfm8LK/YIvO8Y0DCwLE6dEN/RD
 eagC9DgpgQMByUBoHnuIK4EjQZGVAE7OqgE/LABo6ez/N8wDqOivE6xXqnpqBbxRAeDnriXh
 RuVj/RSwp3AyACqtStzOrmQmgK9znO0hlJxBYGnxPcxuuJDhsP2NGrGzgNwJLT2GNV1EBsP2
 mWmMX+cBq+vbUDs72PTJ4fG1ayHZK4RzjzUIHzoGK0cXcJ5d4IyxScjzNthXkC3gCxkATgzW
 CvkhG8CR24WATwXB8cEVW5uw3ecFtc1+vHwEmr8OYXYZkpvgmHWzXUZtmK9/hPKyCN69Q/Fp
 T1hkrNtY2z40jPLMwPkWA8q/UBeAo1YNlgc8iv4vUwFQBdzYZE4azXIBMva6LyeRcsmyaN+r
 CVIdsH2qvlXj3AuwOHylA5AEEDuLIua1kRQmSeFSpR0AEqjYVfT0Z30kJYqSpKax8oRL8uR4
 lusAWwmB2E20Vz19kSKjJUnsNZZNZOXrLkI4uCtAGjeWHhcSUu49GuDQGxGqtezTeXqdKVP5
 6M3yLVl7xhOT+08eeuAv8w7jTilM1ZlhnmfVndWam+WNIZaBXKrDYmLJH+eCVko9oj32Bx6P
 qv1yYdVJ7d6G+CykU7O7E5+YjmpK/GZOaGRllFdSZoVVkq4Ut6jDVYYDPiY8NE4s4GIkAd6o
 nJP8BVF1RjhQAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7pv1TfGGRz5zGXRe+4kk8XfScfY
 LTbOWM9q8X/bRGaLK1/fs1k0L17PZrFy9VEmiwX7rS2+XHnIZLHp8TVWi8u75rBZrD1yl93i
 4IcnrA68HmvmrWH0+P1rEqPH3m8LWDy2f3vA6rF/7hp2j/vdx5k8Ni+p97j97zGzx+Qbyxk9
 dt9sYPPo27KK0ePzJrkAnig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07
 m5TUnMyy1CJ9uwS9jI1nf7IXPOOt2HZhAnMD40nuLkZODgkBE4lVJ9eydDFycQgJLGWU6Pux
 jBkiISNxcloDK4QtLPHnWhcbRNEnRokb33awgSTYBAwlut5CJEQEOhklpnV/ZAdxmAU+MUkc
 uXYarEpYIEji7NlzTCA2i4CqxO2T+8HG8grYSRx89RJqhbzE6g0HwFZzAsUfX7oD1iskUCjx
 4fx31gmMfAsYGVYxiqSWFuem5xYb6RUn5haX5qXrJefnbmIExs22Yz+37GDsehd8iFGAg1GJ
 h3fD1/VxQqyJZcWVuYcYJTiYlUR4l/3YECfEm5JYWZValB9fVJqTWnyI0RToqInMUqLJ+cCY
 ziuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwNgu/CScU/HPrP+b
 8mJYTxhv/WifKa14eI5QTXGof8wdBSG1QCMd+8dKPHvnb1+fovBsCn/VWS5ZpSs7/JqrJ9j+
 PvxHT2aboU9au8LMulj2C5b/FeVDWnzf1B67zRXgbyE1+QU7g4ruTPXA7c8Wbtp83ePL6vo4
 i7A2uZAnb/feM7QImOznoMRSnJFoqMVcVJwIABoHAhCxAgAA
X-CMS-MailID: 20200505084637eucas1p20390fa3c010bde00e438cce1b48d209c
X-Msg-Generator: CA
X-RootMTR: 20200505084637eucas1p20390fa3c010bde00e438cce1b48d209c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084637eucas1p20390fa3c010bde00e438cce1b48d209c
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084637eucas1p20390fa3c010bde00e438cce1b48d209c@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 22/25] misc: fastrpc: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvbWlzYy9mYXN0cnBjLmMg
fCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9taXNjL2Zhc3RycGMuYyBiL2RyaXZlcnMvbWlzYy9mYXN0
cnBjLmMKaW5kZXggZTNlMDg1ZS4uMGEzZTAyYWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWlzYy9m
YXN0cnBjLmMKKysrIGIvZHJpdmVycy9taXNjL2Zhc3RycGMuYwpAQCAtNTE4LDcgKzUxOCw3IEBA
IHN0YXRpYyBzdHJ1Y3QgZmFzdHJwY19pbnZva2VfY3R4ICpmYXN0cnBjX2NvbnRleHRfYWxsb2Mo
CiAKIAl0YWJsZSA9ICZhLT5zZ3Q7CiAKLQlpZiAoIWRtYV9tYXBfc2coYXR0YWNobWVudC0+ZGV2
LCB0YWJsZS0+c2dsLCB0YWJsZS0+bmVudHMsIGRpcikpCisJaWYgKCFkbWFfbWFwX3NndGFibGUo
YXR0YWNobWVudC0+ZGV2LCB0YWJsZSwgZGlyKSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7
CiAKIAlyZXR1cm4gdGFibGU7CkBAIC01MjgsNyArNTI4LDcgQEAgc3RhdGljIHZvaWQgZmFzdHJw
Y191bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAkJCQkg
IHN0cnVjdCBzZ190YWJsZSAqdGFibGUsCiAJCQkJICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBk
aXIpCiB7Ci0JZG1hX3VubWFwX3NnKGF0dGFjaC0+ZGV2LCB0YWJsZS0+c2dsLCB0YWJsZS0+bmVu
dHMsIGRpcik7CisJZG1hX3VubWFwX3NndGFibGUoYXR0YWNoLT5kZXYsIHRhYmxlLCBkaXIpOwog
fQogCiBzdGF0aWMgdm9pZCBmYXN0cnBjX3JlbGVhc2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikK
LS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
