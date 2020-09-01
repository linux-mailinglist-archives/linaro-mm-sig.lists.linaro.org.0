Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E3259F46
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 21:35:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 413656670F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 19:35:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2B1F566715; Tue,  1 Sep 2020 19:35:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D78566713;
	Tue,  1 Sep 2020 19:34:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 29B346670F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:34:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1B30066710; Tue,  1 Sep 2020 19:34:35 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 916D066710
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:34:32 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63F041FB;
 Tue,  1 Sep 2020 12:34:32 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D91FB3F71F;
 Tue,  1 Sep 2020 12:34:29 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063537eucas1p1462d4761c8eb6d762fe5ea0fbd3b6e3b@eucas1p1.samsung.com>
 <20200826063316.23486-17-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <263143f0-8b39-6daa-1d26-54ef32b54c27@arm.com>
Date: Tue, 1 Sep 2020 20:34:28 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-17-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 16/32] drm: rockchip: use common
 helper for a scatterlist contiguity check
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMC0wOC0yNiAwNzozMywgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBVc2UgY29tbW9u
IGhlbHBlciBmb3IgY2hlY2tpbmcgdGhlIGNvbnRpZ3VpdHkgb2YgdGhlIGltcG9ydGVkIGRtYS1i
dWYuCgpSZXZpZXdlZC1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4KCj4g
U2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29t
Pgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyB8
IDE5ICstLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMTggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX2dlbS5jCj4gaW5kZXggYjkyNzViYTdjNWE1Li4yOTcwZTUzNGUyYmIgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKPiBAQCAtNDYwLDIz
ICs0NjAsNiBAQCBzdHJ1Y3Qgc2dfdGFibGUgKnJvY2tjaGlwX2dlbV9wcmltZV9nZXRfc2dfdGFi
bGUoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCj4gICAJcmV0dXJuIHNndDsKPiAgIH0KPiAg
IAo+IC1zdGF0aWMgdW5zaWduZWQgbG9uZyByb2NrY2hpcF9zZ19nZXRfY29udGlndW91c19zaXpl
KHN0cnVjdCBzZ190YWJsZSAqc2d0LAo+IC0JCQkJCQkgICAgIGludCBjb3VudCkKPiAtewo+IC0J
c3RydWN0IHNjYXR0ZXJsaXN0ICpzOwo+IC0JZG1hX2FkZHJfdCBleHBlY3RlZCA9IHNnX2RtYV9h
ZGRyZXNzKHNndC0+c2dsKTsKPiAtCXVuc2lnbmVkIGludCBpOwo+IC0JdW5zaWduZWQgbG9uZyBz
aXplID0gMDsKPiAtCj4gLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgcywgY291bnQsIGkpIHsKPiAt
CQlpZiAoc2dfZG1hX2FkZHJlc3MocykgIT0gZXhwZWN0ZWQpCj4gLQkJCWJyZWFrOwo+IC0JCWV4
cGVjdGVkID0gc2dfZG1hX2FkZHJlc3MocykgKyBzZ19kbWFfbGVuKHMpOwo+IC0JCXNpemUgKz0g
c2dfZG1hX2xlbihzKTsKPiAtCX0KPiAtCXJldHVybiBzaXplOwo+IC19Cj4gLQo+ICAgc3RhdGlj
IGludAo+ICAgcm9ja2NoaXBfZ2VtX2lvbW11X21hcF9zZyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJt
LAo+ICAgCQkJICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCj4gQEAgLTQ5OCw3
ICs0ODEsNyBAQCByb2NrY2hpcF9nZW1fZG1hX21hcF9zZyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJt
LAo+ICAgCWlmICghY291bnQpCj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCj4gLQlpZiAocm9j
a2NoaXBfc2dfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzZywgY291bnQpIDwgYXR0YWNoLT5kbWFidWYt
PnNpemUpIHsKPiArCWlmIChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzZykgPCBhdHRh
Y2gtPmRtYWJ1Zi0+c2l6ZSkgewo+ICAgCQlEUk1fRVJST1IoImZhaWxlZCB0byBtYXAgc2dfdGFi
bGUgdG8gY29udGlndW91cyBsaW5lYXIgYWRkcmVzcy5cbiIpOwo+ICAgCQlkbWFfdW5tYXBfc2co
ZHJtLT5kZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywKPiAgIAkJCSAgICAgRE1BX0JJRElSRUNUSU9O
QUwpOwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
