Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 346121D15DD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:39:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5321F65FAE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:39:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4018B66528; Wed, 13 May 2020 13:39:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1EA6C65FAF;
	Wed, 13 May 2020 13:33:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A34C565F88
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8465E65F8F; Wed, 13 May 2020 13:33:06 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id CCC4365F88
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:32:59 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133259euoutp0232f95b0b8db88c107b09cea82a698af9~OmcJ7HlRv3110131101euoutp02R
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:32:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133259euoutp0232f95b0b8db88c107b09cea82a698af9~OmcJ7HlRv3110131101euoutp02R
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133258eucas1p17e5a2056843358c9468b6e2009d7d017~OmcJWZvTN2633226332eucas1p1S;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 2F.B5.61286.A07FBBE5; Wed, 13
 May 2020 14:32:58 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133258eucas1p2e8ffb90e5553c12419a5af5261b48f5e~OmcJDlZlr2029120291eucas1p2K;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133258eusmtrp121b121d239c04a654273b78d6838b65e~OmcJCQ68X0994509945eusmtrp1b;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-2c-5ebbf70a69aa
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 79.0A.08375.A07FBBE5; Wed, 13
 May 2020 14:32:58 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133257eusmtip155e8eb76c7cbe871b510eca19afc02e9~OmcIcHLlI2465024650eusmtip1-;
 Wed, 13 May 2020 13:32:57 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:10 +0200
Message-Id: <20200513133245.6408-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+XZ2OS5np2n5YpI1MtPISwYd8kKByPnDQiO6kdbKg0re2JyX
 IvKCVvNCukSbJkNy3u+yxJWbszI1RNRE0zJvVIYoXjFM2zxq//2+530envf7+HBMWMexwcMi
 Y2hJpDhcxOWzNR/Wek7yV7VBrvIkIDN7OllkfX4th9zUZGPkwPIclyyvfM8iVToP8mlBHY9c
 GhhnkQ2Tgxyyv6WQS1a/+8oj2+anOOfMqam2IhZVVVSFqLcrKjb1euU7hxpL72BRja8eUSMb
 kxilGCpFlHY4kUtlNVUgarHhkP+eG3zPYDo8LJaWuHjf5ofKU7tRdJIwvvNlFysRZe2VIzMc
 iNMwXZKJmVhIlCHInbgsR3wjLyFILZ/iMYNFBBlKt51Aq26Ix5hKEWheqNFuok2djkwuLuEG
 8lk518RWRCqCj5nmJsaIFhYoU8QmtiQCoGRkcMvPJuxhorJ+q01AeMLzxGwu02YHlXX6rfXM
 CC+YGdWxTWVAGHiQUzyNGJMP1KinMIYtYaajicewLXQrMrYDKQjGe6p5zCEDQX9y/nbaA0Z7
 /hjrcON6jlDb4sLI52FQ85htkoGwgKHZfcwFLCBHk4cxsgCepAkZ9zFQdtTs1rb19m2vQ0GZ
 ooHDPFA7gmFFI/cZslP+L1MhVIGsaZk0IoSWukXScc5ScYRUFhnifDcqogEZ/1H3RsdCM1ru
 u2NABI5E5gLyizZIyBHHShMiDAhwTGQluFhrlATB4oT7tCTqlkQWTksN6CDOFlkL3It/BQqJ
 EHEMfY+mo2nJzpSFm9kkoqPDY2HtTrahtmbXL/hf6Z39YW8+rc8OcFC4H35T+jnwgDZe7Yj7
 n1F66yU+quObAvX66kWe70rzULJvWquH66l1699HWisDO6/q/XIe2O1HMd8w3azfJ4trf2Vr
 jgv8ed9C3aXOLtubc5LcOM8CPd9Fe0L108HF8PBsvKFA7pUnYktDxW5OmEQq/gd4pfHwQwMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xu7pc33fHGey/z2rRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t0Tl7A7vFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x+PJwXlMHmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DK6Wk8zFjQKVZyce4qpgbGPv4uRk0NCwERi3/4b7F2MXBxCAksZJZrWdTFCJGQkTk5rYIWw
 hSX+XOtigyj6xCixbfd0JpAEm4ChRNdbiISIQCejxLTuj2CjmAUOMEm8atsONIqDQ1jAX+L5
 TleQBhYBVYlHqzeyg9i8AjYSUxomskFskJdYveEAM4jNKWAr8erOfhYQW0ggX2Lv4n1sExj5
 FjAyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMkG3Hfm7ewXhpY/AhRgEORiUeXotbu+OE
 WBPLiitzDzFKcDArifD6rQcK8aYkVlalFuXHF5XmpBYfYjQFOmois5Rocj4wevNK4g1NDc0t
 LA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTCKvL/34oqn4lyT63EZR1R+bf+6
 eJ7wdVFVC8nnfe5Hn60y1vcwYK2bz/lgyaQVqnM7j1/48lj5eFL7sgUFQbsEv3NY+DULz7Bx
 iWja5rsz+kb4tqoFzNI3YjT/VH6dpnRv56Jtn6Njvy55ItZbapFieUr85JYDBowvNWpZp7Q9
 YUisfqcd5v9ViaU4I9FQi7moOBEAy3gjmqYCAAA=
X-CMS-MailID: 20200513133258eucas1p2e8ffb90e5553c12419a5af5261b48f5e
X-Msg-Generator: CA
X-RootMTR: 20200513133258eucas1p2e8ffb90e5553c12419a5af5261b48f5e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133258eucas1p2e8ffb90e5553c12419a5af5261b48f5e
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133258eucas1p2e8ffb90e5553c12419a5af5261b48f5e@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 03/38] iommu: add generic helper for
 mapping sgtable objects
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

c3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0cnVjdHVyZSB1c2VkIGZvciBkZXNjcmliaW5n
IGEgbWVtb3J5CmJ1ZmZlci4gSXQgY29uc2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9y
eSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nlcwooc2dsIGVudHJ5KSwgYXMgd2VsbCBhcyB0aGUgbnVt
YmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJpZXM6IENQVSBwYWdlcwoob3JpZ19uZW50cyBlbnRyeSkg
YW5kIERNQSBtYXBwZWQgcGFnZXMgKG5lbnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBp
dCB3YXMgYSBjb21tb24gbWlzdGFrZSB0byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50
cmllcywgY2FsbGluZyBtYXBwaW5nIGZ1bmN0aW9ucyB3aXRoIGEgd3JvbmcgbnVtYmVyIG9mIGVu
dHJpZXMuCgpUbyBhdm9pZCBzdWNoIGlzc3VlcywgbGV0cyBpbnRyb2R1Y2UgYSBjb21tb24gd3Jh
cHBlciBvcGVyYXRpbmcgZGlyZWN0bHkKb24gdGhlIHN0cnVjdCBzZ190YWJsZSBvYmplY3RzLCB3
aGljaCB0YWtlIGNhcmUgb2YgdGhlIHByb3BlciB1c2Ugb2YKdGhlIG5lbnRzIGFuZCBvcmlnX25l
bnRzIGVudHJpZXMuCgpTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20+ClJldmlld2VkLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5k
ZT4KQWNrZWQtYnk6IEpvZXJnIFJvZWRlbCA8anJvZWRlbEBzdXNlLmRlPgpSZXZpZXdlZC1ieTog
Um9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gCi0tLQpGb3IgbW9yZSBpbmZvcm1h
dGlvbiwgc2VlICdbUEFUQ0ggdjUgMDAvMzhdIERSTTogZml4IHN0cnVjdCBzZ190YWJsZSBuZW50
cwp2cy4gb3JpZ19uZW50cyBtaXN1c2UnIHRocmVhZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtaW9tbXUvMjAyMDA1MTMxMzIxMTQuNjA0Ni0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNv
bS9ULwotLS0KIGluY2x1ZGUvbGludXgvaW9tbXUuaCB8IDE2ICsrKysrKysrKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9pb21tdS5oIGIvaW5jbHVkZS9saW51eC9pb21tdS5oCmluZGV4IDdjZmQyZGQuLjViZWQxOGEg
MTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvaW9tbXUuaAorKysgYi9pbmNsdWRlL2xpbnV4L2lv
bW11LmgKQEAgLTQ3OCw2ICs0NzgsMjIgQEAgZXh0ZXJuIHNpemVfdCBpb21tdV9tYXBfc2dfYXRv
bWljKHN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFpbiwKIGV4dGVybiB2b2lkIGlvbW11X3NldF9m
YXVsdF9oYW5kbGVyKHN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFpbiwKIAkJCWlvbW11X2ZhdWx0
X2hhbmRsZXJfdCBoYW5kbGVyLCB2b2lkICp0b2tlbik7CiAKKy8qKgorICogaW9tbXVfbWFwX3Nn
dGFibGUgLSBNYXAgdGhlIGdpdmVuIGJ1ZmZlciB0byB0aGUgSU9NTVUgZG9tYWluCisgKiBAZG9t
YWluOglUaGUgSU9NTVUgZG9tYWluIHRvIHBlcmZvcm0gdGhlIG1hcHBpbmcKKyAqIEBpb3ZhOglU
aGUgc3RhcnQgYWRkcmVzcyB0byBtYXAgdGhlIGJ1ZmZlcgorICogQHNndDoJVGhlIHNnX3RhYmxl
IG9iamVjdCBkZXNjcmliaW5nIHRoZSBidWZmZXIKKyAqIEBwcm90OglJT01NVSBwcm90ZWN0aW9u
IGJpdHMKKyAqCisgKiBDcmVhdGVzIGEgbWFwcGluZyBhdCBAaW92YSBmb3IgdGhlIGJ1ZmZlciBk
ZXNjcmliZWQgYnkgYSBzY2F0dGVybGlzdAorICogc3RvcmVkIGluIHRoZSBnaXZlbiBzZ190YWJs
ZSBvYmplY3QgaW4gdGhlIHByb3ZpZGVkIElPTU1VIGRvbWFpbi4KKyAqLworc3RhdGljIGlubGlu
ZSBzaXplX3QgaW9tbXVfbWFwX3NndGFibGUoc3RydWN0IGlvbW11X2RvbWFpbiAqZG9tYWluLAor
CQkJdW5zaWduZWQgbG9uZyBpb3ZhLCBzdHJ1Y3Qgc2dfdGFibGUgKnNndCwgaW50IHByb3QpCit7
CisJcmV0dXJuIGlvbW11X21hcF9zZyhkb21haW4sIGlvdmEsIHNndC0+c2dsLCBzZ3QtPm9yaWdf
bmVudHMsIHByb3QpOworfQorCiBleHRlcm4gdm9pZCBpb21tdV9nZXRfcmVzdl9yZWdpb25zKHN0
cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGxpc3RfaGVhZCAqbGlzdCk7CiBleHRlcm4gdm9pZCBp
b21tdV9wdXRfcmVzdl9yZWdpb25zKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGxpc3RfaGVh
ZCAqbGlzdCk7CiBleHRlcm4gdm9pZCBnZW5lcmljX2lvbW11X3B1dF9yZXN2X3JlZ2lvbnMoc3Ry
dWN0IGRldmljZSAqZGV2LAotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
