Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC5E1C3B03
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:13:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 030B2619C1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:13:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EBFCA66053; Mon,  4 May 2020 13:13:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A0B566098;
	Mon,  4 May 2020 13:07:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D512F66053
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 13:07:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C361866098; Mon,  4 May 2020 13:07:40 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 0D67C66055
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 13:05:33 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504130531euoutp024d1b8fffe0f10c6112ed6280b16ad253~L1QndSlgz2493324933euoutp02e
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 13:05:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504130531euoutp024d1b8fffe0f10c6112ed6280b16ad253~L1QndSlgz2493324933euoutp02e
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504130531eucas1p1099e600c4d2365791507a0dfd8dc7d6f~L1Qm_IG8C3232132321eucas1p1T;
 Mon,  4 May 2020 13:05:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 3D.94.60679.B1310BE5; Mon,  4
 May 2020 14:05:31 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504130530eucas1p26a54459b7d646533997f344f80fa9c19~L1QmmMUTe1623416234eucas1p2H;
 Mon,  4 May 2020 13:05:30 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504130530eusmtrp1e498827cd53b5885bd7ef4f387315eb7~L1QmliJIj0044500445eusmtrp1N;
 Mon,  4 May 2020 13:05:30 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-64-5eb0131b5d42
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E6.1B.08375.A1310BE5; Mon,  4
 May 2020 14:05:30 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504130530eusmtip225abacbe652fb54ff90c8cf8216f668e~L1QmABCzF1170111701eusmtip2U;
 Mon,  4 May 2020 13:05:30 +0000 (GMT)
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <b257279c-4138-b28e-584d-92bd15571ae1@samsung.com>
Date: Mon, 4 May 2020 15:05:30 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504125212.GA17241@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIKsWRmVeSWpSXmKPExsWy7djP87rSwhviDNr3i1r0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hszj44QmrA5fHmnlrGD32flvA
 4rH92wNWj/vdx5k8Ni+p97j97zGzx+Qbyxk9dt9sYPPo27KK0ePzJrkArigum5TUnMyy1CJ9
 uwSujNOHNjIWbGCtWLx4I2sD4wyWLkZODgkBE4m7myaygthCAisYJe7sj+1i5AKyvzBKtBy6
 ywrhfGaUaF10lgmm48eR5ywQieWMEr1zNzBCOO8ZJd79e84IUiUsECLx/fxuZhBbREBJ4umr
 s2BFzALnmCRm9V8CW84mYCjR9baLDcTmFbCTmDn7FZjNIqAi8blxDlADB4eoQKzE9GshECWC
 EidnPgFr5RTQkTg47RjYfGYBeYntb+dA2eISt57MZwLZJSHwkl1i9c4TjBBnu0hc6fkB9bSw
 xKvjW9ghbBmJ05N7WCAamhklHp5byw7h9DBKXG6aAdVtLXHn3C82kIuYBTQl1u/Shwg7Shx9
 3M0OEpYQ4JO48VYQ4gg+iUnbpjNDhHklOtqEIKrVJGYdXwe39uCFS8wTGJVmIXltFpJ3ZiF5
 ZxbC3gWMLKsYxVNLi3PTU4uN8lLL9YoTc4tL89L1kvNzNzECE9rpf8e/7GDc9SfpEKMAB6MS
 D2/E5/VxQqyJZcWVuYcYJTiYlUR4d7QAhXhTEiurUovy44tKc1KLDzFKc7AoifMaL3oZKySQ
 nliSmp2aWpBaBJNl4uCUamBcM3fdcxXpV72G5/gY2H5EKvEelPJ9Xl5/Yk0cwyHVzaeTzd7y
 Wx/+X5gSNSVx31OXD9Gn+1dH1CTu+VLyv1+mNJ5ZtO9mpwLPm6jr2knFxg+blC7rd+Qwne9N
 sVv0461s60rBVpWo4wu7Wli5NB5mq37dcDvNSGt5yHqFZu4jp24x3Ht8e5ESS3FGoqEWc1Fx
 IgAXjwr8ZAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEIsWRmVeSWpSXmKPExsVy+t/xe7pSwhviDLbOtLToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZnHwwxNWBy6PNfPWMHrs/baA
 xWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObRt2UVo8fnTXIBXFF6NkX5pSWpChn5
 xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GacPbWQs2MBasXjxRtYG
 xhksXYycHBICJhI/jjwHsrk4hASWMkrMm3weKiEjcXJaAyuELSzx51oXG4gtJPCWUeLOWx0Q
 W1ggROL7+d3MILaIgJLE01dnGUEGMQtcYJK4sfMoM0TDJkaJ/7uyQGw2AUOJrrcQg3gF7CRm
 zn4FZrMIqEh8bpwD1MzBISoQK9FyUROiRFDi5MwnYPdwCuhIHJx2DGwks4CZxLzND6FseYnt
 b+dA2eISt57MZ5rAKDQLSfssJC2zkLTMQtKygJFlFaNIamlxbnpusaFecWJucWleul5yfu4m
 RmD8bjv2c/MOxksbgw8xCnAwKvHwRnxeHyfEmlhWXJl7iFGCg1lJhHdHC1CINyWxsiq1KD++
 qDQntfgQoynQbxOZpUST84GpJa8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoR
 TB8TB6dUAyOfws/I+UnGq+6y5E/6///HPfaFT35kNjfJKbS8rmQz/u/y6dvr9m9VfCosf7ay
 7Yx3dbTkdK0wNOi211GMsdxiUMdzx7Rsu8fRw9u2pi+/UaZ4ReTOnQSTc7EzJ99QST01efUC
 4bNvVa+uj/rb43w3m5Mj1VUsJTJ0X87WP8H7+C4cnPbq6lQlluKMREMt5qLiRACU7P2j9QIA
 AA==
X-CMS-MailID: 20200504130530eucas1p26a54459b7d646533997f344f80fa9c19
X-Msg-Generator: CA
X-RootMTR: 20200504125032eucas1p2eeaf22690e6b557d69c834cc9dd75855
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125032eucas1p2eeaf22690e6b557d69c834cc9dd75855
References: <CGME20200504125032eucas1p2eeaf22690e6b557d69c834cc9dd75855@eucas1p2.samsung.com>
 <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125212.GA17241@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v2 00/21] DRM: fix struct sg_table nents
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkgQ2hyaXN0b3BoLAoKT24gMDQuMDUuMjAyMCAxNDo1MiwgQ2hyaXN0b3BoIEhlbGx3aWcgd3Jv
dGU6Cj4gT24gTW9uLCBNYXkgMDQsIDIwMjAgYXQgMDI6NTA6MTdQTSArMDIwMCwgTWFyZWsgU3p5
cHJvd3NraSB3cm90ZToKPj4gdjI6Cj4+IC0gZHJvcHBlZCBtb3N0IG9mIHRoZSBjaGFuZ2VzIHRv
IGRybS9pOTE1Cj4+IC0gYWRkZWQgZml4ZXMgZm9yIHJjYXItZHUsIHhlbiwgbWVkaWEgYW5kIGlv
bgo+PiAtIGZpeGVkIGEgZmV3IGlzc3VlcyBwb2ludGVkIGJ5IGtidWlsZCB0ZXN0IHJvYm90Cj4+
IC0gYWRkZWQgd2lkZSBjYzogbGlzdCBmb3IgZWFjaCBwYXRjaAo+IERpZG4ndCB5b3UgcGxhbiB0
byBhZGQgZG1hX21hcF9zZ2J1ZiBhbmQgY28gaGVscGVyPwoKWWVzLCBJIGhhdmUgYSBmb2xsb3d1
cCBwYXRjaGVzIGZvciB0aGF0LCBidXQgSSB3YW50ZWQgdG8gZml4IHRoZSAKZXhpc3RpbmcgY29k
ZSBpbiB0aGUgZmlyc3Qgc3RlcC4gVGhlbiBJIHdhbnRlZCB0byBzZW5kIGEgd3JhcHBlcnMgYW5k
IAp0aGVpciBhcHBsaWNhdGlvbi4gRG8geW91IHRoaW5rIEkgc2hvdWxkIGRvIGV2ZXJ5dGhpbmcg
YXQgb25jZSwgaW4gb25lIApwYXRjaHNldD8KCkJlc3QgcmVnYXJkcwotLSAKTWFyZWsgU3p5cHJv
d3NraSwgUGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
