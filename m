Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF70247FB7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 09:46:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7737066588
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 07:46:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5F5EA665AA; Tue, 18 Aug 2020 07:46:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DD81619D1;
	Tue, 18 Aug 2020 07:46:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4F4DD60665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:45:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 32FE5619B1; Tue, 18 Aug 2020 07:45:57 +0000 (UTC)
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
 by lists.linaro.org (Postfix) with ESMTPS id 009F260665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:45:54 +0000 (UTC)
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200818074551epoutp01ea7cc23eb1adcf75923123b95ecf85d7~sTRxZCKQm1068910689epoutp019
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:45:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200818074551epoutp01ea7cc23eb1adcf75923123b95ecf85d7~sTRxZCKQm1068910689epoutp019
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200818074551epcas2p3eafdb6409e1a2636717a4c2f73d76015~sTRwgIcRf2091420914epcas2p3b;
 Tue, 18 Aug 2020 07:45:51 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.181]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4BW2yj0RGSzMqYmC; Tue, 18 Aug
 2020 07:45:49 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 63.BD.19322.C278B3F5; Tue, 18 Aug 2020 16:45:48 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200818074547epcas2p21e0c2442873d03800c7bc2c3e76405d6~sTRtSO3vb2672326723epcas2p2X;
 Tue, 18 Aug 2020 07:45:47 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200818074547epsmtrp163a93b57be1a23b472e1de5be6cc5044~sTRtRGzpp2704127041epsmtrp1l;
 Tue, 18 Aug 2020 07:45:47 +0000 (GMT)
X-AuditID: b6c32a45-7adff70000004b7a-d2-5f3b872c46b0
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 84.78.08303.B278B3F5; Tue, 18 Aug 2020 16:45:47 +0900 (KST)
Received: from Dabang.dsn.sec.samsung.com (unknown [12.36.155.59]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200818074547epsmtip239546245637fb5172bd79a2d66a02ce9~sTRtBSvcm2582525825epsmtip2n;
 Tue, 18 Aug 2020 07:45:47 +0000 (GMT)
From: Hyesoo Yu <hyesoo.yu@samsung.com>
To: sumit.semwal@linaro.org
Date: Tue, 18 Aug 2020 17:04:12 +0900
Message-Id: <20200818080415.7531-1-hyesoo.yu@samsung.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Te0xTZxjG8522p4Wk21lx46MkwEo2A5NLweKHEzVOt2MgjsCyIMtWKhwp
 obRdD3hpXKYgFxGqgMPRKhRQVhgIloqAiIJkXEQDglgHCkPUyEAQVAgEXGkx47/nfd73l+e7
 5OUweGlsPidOnkip5BKZALdn1t3yCPDakP6l2LdhiIemunLY6Fx1JY6SW7twNNrVA9Dk8DUW
 Kmq7y0L9b6ZwtHSih4XKT6bgaE4/ykDdi16ovGkeQ6/7/8FQX+M5HGXVXGGhx5XvWEjbOYCh
 sjdTbLSc3QJQ6vU2Nup6NMtGeff0ONId04DtjmTqvSWcrCysBGSfJhsj9cYk0lhxAieNM7ls
 MnOyHyOHBppwsuP3RSY5fLIdIweXnzDIqeb7OKkxVQCyW9/GJtvNVzFy1ugSSkTKtkgpSQyl
 cqPk0YqYOHlskCA4XPyVWBTgK/QSBqJNAje5JIEKEuwMCfX6Ok5meQuB2wGJLMlihUpoWuCz
 dYtKkZRIuUkVdGKQgFLGyJRCodKbliTQSfJY72hFwmahr6+fyDIZJZNqiqTKLO6hlgYddhSc
 t88EdhxIbITNczdZmcCewyPqAWzNr2HYihkAl8/kYrZiFsBLExPgPfJ4eQi3NRoBnDdcWOXn
 AHw7PchYmcKJ9bDDVGYl1hHO8KzBYB1iEOVMOJBntjYcCH94YXDeCjCJz2Dm4hmr5hKBsFir
 WY1zhTm6R8DmfwQ7C8aYK5ph8VOu6KyHhUSeHXx+PpNtA3bClo4qpk07wPF206rPhy9Opa3q
 g/DO8VGWDT4OYG/+fdzW8IfaZ+mWNI4lwQNWN/qsSEi4w7a/V3M/gBm3ltg2mwsz0ng20B3e
 KCtcTXWCo1XpLJsm4cU6jVXziB9hTW0K6zRw1a65jXbNbbT/5+oBowJ8QinphFiK9lMK1/6q
 EVgXwnNXPcibnPZuBRgHtALIYQjWcfd1bBLzuDGSw2pKpRCrkmQU3QpElvfNYfA/jlZYNkqe
 KBaK/AICfANFSBTghwSO3IRPe37iEbGSRCqeopSU6j2Hcez4R7GCufmwUsm2cJT67qBh0fkZ
 P/XwUrj62sumyIcjyV1b+w3mhtEs6eZOV8c/f8mO92uujnCumD2S6fG5U99vKT43hbsf7AhR
 /+UcmfGH5zZ1xPOSq/ELt/dyMvLFpgOnPqy6W7D3i6Gj++hLtbXq+tjSKKco1+2F9SPmEsPT
 B+3BdTy5S8TppT3xDuYdv/aE5S4szH1fnHyIcr9hfklfbk4+Mp41ZjLxA3ffYZX6364t6z1L
 Q5WLpHd/3sYNP4QY08Nan+h1/eOXj3VPBbz61in13/aGkTaddqZhoji36O13L5hVF18J1K+f
 RsbkjvlUs4dLgqf2fzM0/vMe74eFWufr61Ox6V0CJi2VCD0ZKlryH4b59EiZBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA03RfUzMcRzA8b6/3+9+9+u2y69T+uZMdliWdUKbr9XIU75DmGbDcI5+qvV0
 7sqz6PKwLi55CL9DV7PknIeuECpcR9cTLTk3JKp5GKmVm0jhNJv/Xvu8t8/njw9DSkqp0Ux8
 ciqnTlYmymgRdbNaFhA8+VCYIqTquz/qrssVorPXzDTSWuto1F7XBFBX210Byrc9FqAWVzeN
 BrOaBOhSdiaNvhnbSdQwEIwuVfQT6GvLWwI9vXOWRoev3xCg1+ZfAsTXOghU5OoWoqEjDwA6
 UGkTorrWPiE63mykkSFDDyL88IHmQRqbz5sBfqo/QmCjJQ1bTFk0tvQeE2JdVwuBXzkqaGw/
 PUDhtuwaAr8c6iBxd9UzGuvLTAA3GG1CXOO8ReA+y9jl7BpReAyXGL+VU0+ZtUEUp8+PUx0W
 b39w20DsA+dEOuDJQDYUvh56ReuAiJGw5QB25emFw8Ef8n21xLBHwrb9NoHbEtYFYJ5jj9s0
 GwjtZUXAbR9WCk8VFwvci0i2moLVV520O4xkp8MLL/tJtyl2ItQNnPhrMTsTFvB6MHwgAOYa
 WsHw3BvWnumk3Cb/zDNvGMijwIv/L/H/JSMgTMCfU2mSYpM0U1XTkrltco0ySZOWHCvflJJk
 AX//GhRUDipMPXIrIBhgBZAhZT7ijfYZCok4RrljJ6dOUajTEjmNFUgZSuYndvEF6yVsrDKV
 S+A4Faf+VwnGc/Q+wlqvXdc4bgzd6FFp73FeWRbcsdmZnjk3RjuPSi9V34kMbJU6zCF+tjC2
 BHyz3rus++DkewLT5ov6iyO2JZhyol0e4VHaSE47GDUrdAuc77jlVPikfPIu7GVUOeX3CwVz
 Hofmh+5UfJZYD+ZGT2rwtO5IwEUrOuOjrzbtD3jHzxtFVr7x25XBGiKffLf/GL/Ie+GYD887
 myetfCT1fRH+UyL1LUZVYWtLd//qW/D20O7bqVl5Hj22givhXgG5MHt9O1orz/CK1xjSHxWW
 rzrpM7NkLy/fLFFOOF0vrmV9yYcj7PX5X3pnr4ZjP0aocpbkeHRkOBYHLi2d20Jd7HgfIqM0
 ccqpQaRao/wNZwBpYkYDAAA=
X-CMS-MailID: 20200818074547epcas2p21e0c2442873d03800c7bc2c3e76405d6
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200818074547epcas2p21e0c2442873d03800c7bc2c3e76405d6
References: <CGME20200818074547epcas2p21e0c2442873d03800c7bc2c3e76405d6@epcas2p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 benjamin.gaignard@linaro.org, Brian.Starkey@arm.com,
 Hyesoo Yu <hyesoo.yu@samsung.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org,
 john.stultz@linaro.org, pullip.cho@samsung.com, surenb@google.com,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, linux-kernel@vger.kernel.org,
 lmark@codeaurora.org, minchan@kernel.org, joaodias@google.com,
 akpm@linux-foundation.org, christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH 0/3] Chunk Heap Support on DMA-HEAP
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

VGhlc2UgcGF0Y2ggc2VyaWVzIHRvIGludHJvZHVjZSBhIG5ldyBkbWEgaGVhcCwgY2h1bmsgaGVh
cC4KVGhhdCBoZWFwIGlzIG5lZWRlZCBmb3Igc3BlY2lhbCBIVyB0aGF0IHJlcXVpcmVzIGJ1bGsg
YWxsb2NhdGlvbiBvZgpmaXhlZCBoaWdoIG9yZGVyIHBhZ2VzLiBGb3IgZXhhbXBsZSwgNjRNQiBk
bWEtYnVmIHBhZ2VzIGFyZSBtYWRlIHVwCnRvIGZpeGVkIG9yZGVyLTQgcGFnZXMgKiAxMDI0LgoK
VGhlIGNodW5rIGhlYXAgdXNlcyBhbGxvY19wYWdlc19idWxrIHRvIGFsbG9jYXRlIGhpZ2ggb3Jk
ZXIgcGFnZS4KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbW0vMjAyMDA4MTQxNzMxMzEu
MjgwMzAwMi0xLW1pbmNoYW5Aa2VybmVsLm9yZwoKVGhlIGNodW5rIGhlYXAgaXMgcmVnaXN0ZXJl
ZCBieSBkZXZpY2UgdHJlZSB3aXRoIGFsaWdubWVudCBhbmQgbWVtb3J5IG5vZGUKb2YgY29udGln
dW91cyBtZW1vcnkgYWxsb2NhdG9yKENNQSkuIEFsaWdubWVudCBkZWZpbmVzIGNodW5rIHBhZ2Ug
c2l6ZS4KRm9yIGV4YW1wbGUsIGFsaWdubWVudCAweDFfMDAwMCBtZWFucyBjaHVuayBwYWdlIHNp
emUgaXMgNjRLQi4KVGhlIHBoYW5kbGUgdG8gbWVtb3J5IG5vZGUgaW5kaWNhdGVzIGNvbnRpZ3Vv
dXMgbWVtb3J5IGFsbG9jYXRvcihDTUEpLgpJZiBkZXZpY2Ugbm9kZSBkb2Vzbid0IGhhdmUgY21h
LCB0aGUgcmVnaXN0cmF0aW9uIG9mIGNodW5rIGhlYXAgZmFpbHMuCgpUaGUgcGF0Y2hzZXQgaW5j
bHVkZXMgdGhlIGZvbGxvd2luZzoKIC0gZXhwb3J0IGRtYS1oZWFwIEFQSSB0byByZWdpc3RlciBr
ZXJuZWwgbW9kdWxlIGRtYSBoZWFwLgogLSBhZGQgY2h1bmsgaGVhcCBpbXBsZW1lbnRhdGlvbi4K
IC0gZG9jdW1lbnQgb2YgZGV2aWNlIHRyZWUgdG8gcmVnaXN0ZXIgY2h1bmsgaGVhcAoKSHllc29v
IFl1ICgzKToKICBkbWEtYnVmOiBhZGQgbWlzc2luZyBFWFBPUlRfU1lNQk9MX0dQTCgpIGZvciBk
bWEgaGVhcHMKICBkbWEtYnVmOiBoZWFwczogYWRkIGNodW5rIGhlYXAgdG8gZG1hYnVmIGhlYXBz
CiAgZG1hLWhlYXA6IERldmljZXRyZWUgYmluZGluZyBmb3IgY2h1bmsgaGVhcAoKIC4uLi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2RtYS1idWYvY2h1bmtfaGVhcC55YW1sICAgIHwgIDQ2ICsrKysrCiBk
cml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiAr
CiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICB8ICAg
OSArCiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICB8
ICAgMSArCiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvY2h1bmtfaGVhcC5jICAgICAgICAgICAgICAg
ICB8IDIyMiArKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFw
LWhlbHBlcnMuYyAgICAgICAgICAgICAgIHwgICAyICsKIDYgZmlsZXMgY2hhbmdlZCwgMjgyIGlu
c2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZG1hLWJ1Zi9jaHVua19oZWFwLnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2RtYS1idWYvaGVhcHMvY2h1bmtfaGVhcC5jCgotLSAKMi43LjQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
