Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D57B247FC5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 09:49:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1AE1619D1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 07:49:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A5F1E65F83; Tue, 18 Aug 2020 07:49:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 291DE665A6;
	Tue, 18 Aug 2020 07:46:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E5C1165FCE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:46:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D8BC866015; Tue, 18 Aug 2020 07:46:06 +0000 (UTC)
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
 by lists.linaro.org (Postfix) with ESMTPS id E664A619B1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:45:58 +0000 (UTC)
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200818074556epoutp010fedc84f9a06b51481d5be3bfc4728bd~sTR2ET3kk1074110741epoutp018
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:45:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200818074556epoutp010fedc84f9a06b51481d5be3bfc4728bd~sTR2ET3kk1074110741epoutp018
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200818074556epcas2p3e533cf487e0aedafeb49bf98bb3f95af~sTR1fFhvt3189631896epcas2p3O;
 Tue, 18 Aug 2020 07:45:56 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.190]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4BW2yq0g06zMqYkw; Tue, 18 Aug
 2020 07:45:55 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 B2.7B.27013.2378B3F5; Tue, 18 Aug 2020 16:45:54 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200818074554epcas2p2702e648ba975ea6fbe33c84396b152a9~sTRz60yJF2912929129epcas2p2P;
 Tue, 18 Aug 2020 07:45:54 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200818074554epsmtrp2a90715301aa5475ea0eb05387cb4b51a~sTRz5weJW3172931729epsmtrp2Y;
 Tue, 18 Aug 2020 07:45:54 +0000 (GMT)
X-AuditID: b6c32a48-d1fff70000006985-f0-5f3b8732f518
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 79.78.08303.2378B3F5; Tue, 18 Aug 2020 16:45:54 +0900 (KST)
Received: from Dabang.dsn.sec.samsung.com (unknown [12.36.155.59]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200818074554epsmtip2c2421d264027b33b380a1078e7784644~sTRzmy3cy2522425224epsmtip2U;
 Tue, 18 Aug 2020 07:45:54 +0000 (GMT)
From: Hyesoo Yu <hyesoo.yu@samsung.com>
To: sumit.semwal@linaro.org
Date: Tue, 18 Aug 2020 17:04:15 +0900
Message-Id: <20200818080415.7531-4-hyesoo.yu@samsung.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200818080415.7531-1-hyesoo.yu@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Te0xTVxze6e29LWrNteg4wh7dZUYhFlqk5YAwcBBzI86RYJzbEruO3hVm
 abu2sMmEuclDKiU8ssEKatkcUh5jIDgG4gRJCgQV5ZG6DRUQkjEBlTEmL9dSzPjv+32/7zvf
 +f1ODhfj53I8uQlqA6NTy1UUsY596ZqPVLgra7dMNPsmmu7O56DS2moCfdXeTaCR7l6AJu+1
 4Ohcxw0c9c9OE2gpuxdH1tMnCTRnGcFQz4IQWS//y0J/9w+zUF9zKYFyfmrE0d3qZzgydw2y
 UPnsNActm9oAymjt4KDuoRkOKrxtIVDJl7kgwoPOuL1E0NVnqwHdl2ti0Zb6JLq+Mpug658U
 cGjjZD+L/mPwMkF3Fi+w6XunbSz69+VRjJ6+MkDQuQ2VgO6xdHBom/1nFj1T/0oM+Z4qNJ6R
 KxidgFHHaRQJamUYFR0ri5RJpCKxUByMgiiBWp7IhFFR+2OEexNUjlVQgmS5KslBxcj1esr/
 jVCdJsnACOI1ekMYxWgVKq1YrPXTyxP1SWqlX5wmMUQsEgVIHMoPVPEFV8O1eRs/W776PfsE
 yFtvBG5cSAbCB8sXWUawjssnmwC8k58NXMUTADMvWVY7MwDWlJ7Cn1tMtYurqmYAax/XEK5i
 DsAm2wLHqSLI7bCzoRw48WbSCxZVVOBOEUZa2XCw0L7ScCcjYPv9h2wj4HLZ5DY4akt1Qh4Z
 DIe+/sIV9irMLxkCTtqNDIFjVcFOmkdugl3fPmA7MeaQnGwswZynQ7LKDbbUtaxeNApW5AwA
 F3aHE7YGjgt7wpmpVsKFP4XX00dwlzkdwFvfDKw2dkHzeNZKMEb6wNpmfyeEpDfs+G01dyM8
 dW2J46J58FQm32X0hr+Wn2W78FY4UpOFuyQ0zJ70dy3KBGBXRhWWBwTmNdOY10xj/j/XArBK
 8CKj1ScqGX2ANnDt89aDlY/hSzeBkslHfu2AxQXtAHIxajPvw84gGZ+nkB9LYXQamS5Jxejb
 gcSx6HzMc0ucxvGz1AaZWBIglYqCJUgiDUCUB28qpPcIn1TKDcxRhtEyuuc+FtfN8wQrIl8+
 cShNYU/2k2YyNcepp4e/i8x522vfeVP0P1l9qj1CJqPI2ndQFX1G1LZ+aNR7UzR2N3Ouqm6n
 8HxverjGOvURMQ/rqi+Is8cvVPi8cC61xdB2J6YTN1jHFjvD8al3cuy4Rf4wsNbQf2yWt4Qd
 5aT88HhCp5p/ahN0vJb15yfvfvzWbpPUGJuRXur1etGPCv/5lNjQA/tv/mKXFbwv9A1IbeR6
 e8zt3R5VtjSbrdySWsNJ9q3bs4Ha4X7r4pD3dW3xjcWgm1X8fQepwjM7hw+VbU0ua7zyqLg1
 5eUjw2Xbij3/SnjWO55WQeyg7CNpn98/EIibm186bB87HslWGns2UGx9vFzsi+n08v8A7LoL
 oKEEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Rf1CLcRzHfZ89e/YsNx4z16MusTtilErOlxyO476hi7+cSGY9CtvqtiKc
 XyUlmpQVG1rnRLVTJtplkZVr23XdbOlQ6bc4sqj8OIq2zp3/3vd+ve59n7sPyeJbcR/ygDyZ
 UcjFUiHhhT+qF/oHhmaGxwZnpc2BLttlDrxeoSdgmtlGwB6bHcDBzsdsWNTQzIYtoy4Cjp23
 s2HphXQCftf1sGDTr0BYavqBwZGWbgw6a64T8GLlQzZ8q//DhhprKwZLRl0cOJ7zDMCM2gYO
 tHUMc2C+Q0dA7RkVWOeNMhxjBNLf1APkVOVgSGdIQYay8wQyfM3joOzBFgy1t5oIZLn6C0ed
 Fxox1Dbey0KuJy8JpKoqA6hJ18BBja+qMTRsmLONivZaHcdIDxxmFEvX7PVKyKtbm5Q7LXW8
 7hZ+GuROzQZckqbC6JyK3yAbeJF8ygjojos/8Ekwm9YMW7HJPJPuPNvAnpRGAf210A7cgKAC
 aEtViScLKF+68O5dj8Si6nG6/t4rwg1mUutoc9eniVWSxKn5dG/jCXfkUSvpDvWpyX1/+rK2
 A7hrLrWK7i9f6a75E4bRZPScwKNm0NZrfZ7TWBN6+kMtKxdQmv+Q5j+kA1gZmM0kKWXxMmVI
 UqicORKkFMuUKfL4IEmizAA83xaJjMBUNhRkBhgJzIAmWUIBb59lRSyfFyc+eoxRJMYqUqSM
 0gx8SVzozRvVFO/hU/HiZOYQwyQxin8UI7k+p7FI+8ai2hL1o2W84N5v3WHjY9LjNznbi1cv
 9+2P2NI1EusnjDqm2hHTXCMO97M6mdShrIH+Tcuf3pckcCK/tSnm7uYGU9LsnV/uaKPvH66y
 3k4V7+/DZqkOvkdhi0UVix6MiLCM5JP7vSOW5Duu+aUVHIxOd0yb1Vf90izbOlD5dkqyrTRQ
 ov7JOztw43awZZeDWz03Kr92MOr5gvINn0NKTO/aT62qFmQp1JIrqd51QR9XnJsyvWcJg32o
 ZJoEXSkBgs3lkp3GcP2lQJAnfV1kjMgEP+O+L3SdccllFUPtMSKLITLzg7T7jX+cz4JmuH6t
 0/60a15BZs2yF9qYd9ApxJUJ4hARS6EU/wVwY7QAXAMAAA==
X-CMS-MailID: 20200818074554epcas2p2702e648ba975ea6fbe33c84396b152a9
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200818074554epcas2p2702e648ba975ea6fbe33c84396b152a9
References: <20200818080415.7531-1-hyesoo.yu@samsung.com>
 <CGME20200818074554epcas2p2702e648ba975ea6fbe33c84396b152a9@epcas2p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 benjamin.gaignard@linaro.org, Brian.Starkey@arm.com,
 Hyesoo Yu <hyesoo.yu@samsung.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org,
 john.stultz@linaro.org, pullip.cho@samsung.com, surenb@google.com,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, linux-kernel@vger.kernel.org,
 lmark@codeaurora.org, minchan@kernel.org, joaodias@google.com,
 akpm@linux-foundation.org, christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH 3/3] dma-heap: Devicetree binding for chunk
	heap
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

RG9jdW1lbnQgZGV2aWNldHJlZSBiaW5kaW5nIGZvciBjaHVuayBoZWFwIG9uIGRtYSBoZWFwIGZy
YW1ld29yawoKU2lnbmVkLW9mZi1ieTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+
Ci0tLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hLWJ1Zi9jaHVua19oZWFwLnlhbWwgICAg
fCA0NiArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDYgaW5zZXJ0aW9u
cygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kbWEtYnVmL2NodW5rX2hlYXAueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kbWEtYnVmL2NodW5rX2hlYXAueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEtYnVmL2NodW5rX2hlYXAueWFtbApuZXcgZmlsZSBtb2Rl
IDEwMDY0NAppbmRleCAwMDAwMDAwLi4xZWU4ZmFkCi0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS1idWYvY2h1bmtfaGVhcC55YW1sCkBAIC0w
LDAgKzEsNDYgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1Ig
QlNELTItQ2xhdXNlKQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRyZWUub3Jn
L3NjaGVtYXMvZG1hLWJ1Zi9jaHVua19oZWFwLnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IERldmljZSB0cmVlIGJp
bmRpbmcgZm9yIGNodW5rIGhlYXAgb24gRE1BIEhFQVAgRlJBTUVXT1JLCisKK21haW50YWluZXJz
OgorICAtIFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CisKK2Rlc2NyaXB0
aW9uOiB8CisgIFRoZSBjaHVuayBoZWFwIGlzIGJhY2tlZCBieSB0aGUgQ29udGlndW91cyBNZW1v
cnkgQWxsb2NhdG9yIChDTUEpIGFuZAorICBhbGxvY2F0ZXMgdGhlIGJ1ZmZlcnMgdGhhdCBhcmUg
bWFkZSB1cCB0byBhIGxpc3Qgb2YgZml4ZWQgc2l6ZSBjaHVua3MKKyAgdGFrZW4gZnJvbSBDTUEu
IENodW5rIHNpemVzIGFyZSBjb25maWd1cmF0ZWQgd2hlbiB0aGUgaGVhcHMgYXJlIGNyZWF0ZWQu
CisKK3Byb3BlcnRpZXM6CisgIGNvbXBhdGlibGU6CisgICAgZW51bToKKyAgICAgIC0gZG1hX2hl
YXAsY2h1bmsKKworcmVxdWlyZWQ6CisgIC0gY29tcGF0aWJsZQorICAtIG1lbW9yeS1yZWdpb24K
KyAgLSBhbGlnbm1lbnQKKworYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisKK2V4YW1wbGVz
OgorICAtIHwKKyAgICByZXNlcnZlZC1tZW1vcnkgeworICAgICAgICAjYWRkcmVzcy1jZWxscyA9
IDwyPjsKKyAgICAgICAgI3NpemUtY2VsbHMgPSA8MT47CisKKyAgICAgICAgY2h1bmtfbWVtb3J5
OiBjaHVua19tZW1vcnkgeworICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaGFyZWQtZG1hLXBv
b2wiOworICAgICAgICAgICAgcmV1c2FibGU7CisgICAgICAgICAgICBzaXplID0gPDB4MTAwMDAw
MDA+OworICAgICAgICB9OworICAgIH07CisKKyAgICBjaHVua19kZWZhdWx0X2hlYXA6IGNodW5r
X2RlZmF1bHRfaGVhcCB7CisgICAgICAgIGNvbXBhdGlibGUgPSAiZG1hX2hlYXAsY2h1bmsiOwor
ICAgICAgICBtZW1vcnktcmVnaW9uID0gPCZjaHVua19tZW1vcnk+OworICAgICAgICBhbGlnbm1l
bnQgPSA8MHgxMDAwMD47CisgICAgfTsKLS0gCjIuNy40CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
