Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F181CF1FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:56:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A04A3619D0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:56:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8BDB5619D6; Tue, 12 May 2020 09:56:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96A5D665AB;
	Tue, 12 May 2020 09:09:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9398F65F7E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:09:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 827C0665AA; Tue, 12 May 2020 09:09:43 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id C699A619D9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:05:06 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090505euoutp024406db96a9d33a00d2bbfc85c196bf0d~OPI_Wdx5Z0539605396euoutp02g
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:05:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090505euoutp024406db96a9d33a00d2bbfc85c196bf0d~OPI_Wdx5Z0539605396euoutp02g
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090505eucas1p20a660e61f27d8ae9889b1a1eeba5f897~OPI_BjmSS1504115041eucas1p23;
 Tue, 12 May 2020 09:05:05 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 20.2C.60698.1C66ABE5; Tue, 12
 May 2020 10:05:05 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090505eucas1p20fdb2ff84bf04f85ba28ae14e6bd5f8c~OPI9mQpuy1504515045eucas1p2R;
 Tue, 12 May 2020 09:05:05 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090505eusmtrp203ec1cd226791e437020f232645dd228~OPI9lhoHW0721407214eusmtrp22;
 Tue, 12 May 2020 09:05:05 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-5b-5eba66c1f51b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F3.F5.08375.0C66ABE5; Tue, 12
 May 2020 10:05:05 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090504eusmtip17a2387bb0530d831d1e6bcd0dc503194~OPI84EYTJ1442114421eusmtip1p;
 Tue, 12 May 2020 09:05:04 +0000 (GMT)
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <df31517c-f3e2-8c57-b353-ff90745038f1@samsung.com>
Date: Tue, 12 May 2020 11:05:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200508071609.GA31690@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTURzu3JfX0ZXr1HawULg9oPKZEpeMKJK6EIhB9UeUtfTmJLfmrpoW
 lWQvl0Uapq5SK7Oymfiaj2rlqK1laZmYZqhLIzSlhzkparXtavnf9/t+33e+8x0OiUrHcH8y
 SZXKa1TyZIaQYAbzj47g1r0tcWG91QHs2XYrwtYUVePsH0MeynZNfibY23eeIGzZwyj2e5cN
 YWuHunH2dctlgr36tQFjT+ZU4Gzrl2GcrR/Lw9dSnL5ED7gH9jKMq63MIbhG+yDOlVg3cwNn
 LAhXV36U63MModyFnpuAu9ebRXDn6isBV9d2iJuoDYiltktWJ/DJSem8JnTNbomi4hShthIZ
 V2yDeBaowrXAk4R0JJw4fotwYSl9C8Bmh68WSJz4O4C/35hxcZgAsOzpgFNFuh1f8pUifxPA
 18YTqDh8BtB0owpxHeVDb4ENnRY39qUZ+GH0BXCJULobhYYRC+ZaEHQ41I5r3dkUvQbWWLrd
 PEYvhsc6y1EX9qN3wrbrdUDUeENr8bBb40kHwanGq24vSgfC7IZLqIhl8O1wKeIKg3QBCTvM
 FYRYNBpO5Y8AEfvAUUu9h4gXwD/NM4ZsAG3tVR7ikOssd6xo2hEF37X/dD8ASi+F1S2hIr0O
 OnLHpt/FC/aMe4uX8IL5hkJUpCl4+qRUVC+BOsvdf7GtLzvR84DRzaqmm1VHN6uO7n9uGcAq
 gYxPE5SJvBCh4g+ECHKlkKZKDInfr6wFzj/Y5rBMNgHjrz0mQJOAmUudXtEcJ8Xl6UKm0gQg
 iTK+1PEkJ0UlyDMP8pr9uzRpybxgAvNJjJFREddGdkrpRHkqv4/n1bxmZouQnv5ZoJwQ1mr3
 3R592Peyq6mhf5WtYEfMV/XzOHV4WP9K/fKBSZXD9Cn2xkUfRbAxOjInzvA+hevZVBpol2wt
 9tfPHS/8oVzvuSRyYUZ/RorC98i8edne92WMOTRig9IPibF9i/84fIVfdNg+Z4zaqK8gJh+F
 PJ+yG9lnOxDjNtnjoFcMJijk4ctQjSD/C/zubuh/AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPIsWRmVeSWpSXmKPExsVy+t/xu7oH03bFGXw9xmjRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLhx60sFm2dy1gtDn54wmqx
 5c1EVgdejzXz1jB67P22gMVj06pONo/t3x6wesw7Gehxv/s4k8fmJfUet/89ZvaYfGM5o8fu
 mw1sHn1bVjF6bD5d7fF5k1wAb5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGp
 kr6dTUpqTmZZapG+XYJexrJ2toKTbBVzHz5gbWBcy9rFyMEhIWAi8WFSbhcjF4eQwFJGiePH
 JzB2MXICxWUkTk5rYIWwhSX+XOtigyh6yyix6cd+sCJhgRCJrZeOM4HYIgJKEk9fnWUEKWIW
 uMEs8W1zLztEx0lmiecXToJ1sAkYSnS9BRnFycErYCex8fg1FhCbRUBVounSEmYQW1QgVmL1
 tVZGiBpBiZMzn4DVcAroSHzfvhCsl1nATGLe5ofMELa8RPPW2VC2uMStJ/OZJjAKzULSPgtJ
 yywkLbOQtCxgZFnFKJJaWpybnltsqFecmFtcmpeul5yfu4kRGPnbjv3cvIPx0sbgQ4wCHIxK
 PLwdRjvjhFgTy4orcw8xSnAwK4nwtmQChXhTEiurUovy44tKc1KLDzGaAj03kVlKNDkfmJTy
 SuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwVuW5PkxnUZo/me+z
 4a8XNRIqwYUdcVfbKyPUinX2ThUP+jFXVuUyi1pNyOL3TuHd5w8vnRvXVHRC86Udp8120S+2
 HrOO7e+JmcngnGH5b6df1qJg97ii568F5vv2yF2XNTi77FddTsAblacKn1knb5sa/HZm4Z/5
 e5nyll7anlNQKmobf6JHiaU4I9FQi7moOBEAk0k3RhIDAAA=
X-CMS-MailID: 20200512090505eucas1p20fdb2ff84bf04f85ba28ae14e6bd5f8c
X-Msg-Generator: CA
X-RootMTR: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454@eucas1p1.samsung.com>
 <20200505084614.30424-2-m.szyprowski@samsung.com>
 <20200505101508.GA14860@lst.de>
 <5dd1cb55-accb-0dc6-4ca5-90c57cd19527@samsung.com>
 <20200505110950.GA19067@lst.de>
 <b887c355-14db-ad37-0e93-733ff2249967@samsung.com>
 <20200508071609.GA31690@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 02/25] drm: core: fix common struct
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkgQ2hyaXN0b3BoLAoKT24gMDguMDUuMjAyMCAwOToxNiwgQ2hyaXN0b3BoIEhlbGx3aWcgd3Jv
dGU6Cj4gT24gRnJpLCBNYXkgMDgsIDIwMjAgYXQgMDk6MTI6MTNBTSArMDIwMCwgTWFyZWsgU3p5
cHJvd3NraSB3cm90ZToKPj4gVGhlbiB3ZSB3b3VsZCBqdXN0IG5lZWQgb25lIG1vcmUgaGVscGVy
IHRvIGNvbnN0cnVjdCBzY2F0dGVybGlzdCwgYXMgdGhlCj4+IGFib3ZlIHR3byBhcmUgcmVhZC1v
bmx5IGRvbid0IGFsbG93IHRvIG1vZGlmeSBzY2F0dGVybGlzdDoKPj4KPj4gI2RlZmluZSBmb3Jf
ZWFjaF9zZ3RhYmxlX3NnKHNndCwgc2csIGkpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IFwKPj4gICDCoMKgwqDCoMKgwqAgZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm9yaWdf
bmVudHMsIGkpCj4+Cj4+IFdpdGggdGhlIGFib3ZlIDMgaGVscGVycyB3ZSBjYW4gcHJvYmFibHkg
Z2V0IHJpZCBvZiBhbGwgaW5zdGFuY2VzIG9mCj4+IHNnX3RhYmxlLT57bmVudHMsb3JpZ19uZW50
c30gZnJvbSB0aGUgRFJNIGNvZGUuIEkgd2lsbCBwcmVwYXJlIHBhdGNoZXMgc29vbi4KPiBTb3Vu
ZHMgZ3JlYXQsIHRoYW5rcyEKCkl0IHR1cm5lZCBvdXQgdGhhdCB0aGUgNHRoIGhlbHBlciAoZm9y
X2VhY2hfc2d0YWJsZV9kbWFfc2cpIHdhcyBuZWVkZWQgCmFzIHNvbWUgZHJpdmVycyBtYWtlcyB1
c2Ugb2YgdGhlIGxhcmdlciB0aGFuIHRoZSBQQUdFX1NJWkUgdW5pdCBmb3IgRE1BIAptYXBwZWQg
cGFnZXMuCgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ksIFBoRApTYW1zdW5nIFIm
RCBJbnN0aXR1dGUgUG9sYW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
