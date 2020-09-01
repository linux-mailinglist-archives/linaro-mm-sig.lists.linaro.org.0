Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 707D0259F0E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 21:15:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A2D56670F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 19:15:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8796A66714; Tue,  1 Sep 2020 19:15:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7C936670B;
	Tue,  1 Sep 2020 19:14:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B1EC566706
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:14:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 986186670B; Tue,  1 Sep 2020 19:14:33 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 497A766706
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:14:32 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F21C51FB;
 Tue,  1 Sep 2020 12:14:31 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC4A93F71F;
 Tue,  1 Sep 2020 12:14:29 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063535eucas1p10cef37d8364216cf57c97e96d3959dd2@eucas1p1.samsung.com>
 <20200826063316.23486-13-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <fe224152-b621-d96e-b432-bf837d320210@arm.com>
Date: Tue, 1 Sep 2020 20:14:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-13-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: freedreno@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-arm-msm@vger.kernel.org,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 12/32] drm: msm: fix common struct
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMC0wOC0yNiAwNzozMiwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBUaGUgRG9jdW1l
bnRhdGlvbi9ETUEtQVBJLUhPV1RPLnR4dCBzdGF0ZXMgdGhhdCB0aGUgZG1hX21hcF9zZygpIGZ1
bmN0aW9uCj4gcmV0dXJucyB0aGUgbnVtYmVyIG9mIHRoZSBjcmVhdGVkIGVudHJpZXMgaW4gdGhl
IERNQSBhZGRyZXNzIHNwYWNlLgo+IEhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMgdG8gdGhl
IGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKPiBkbWFfdW5tYXBfc2cgbXVzdCBi
ZSBjYWxsZWQgd2l0aCB0aGUgb3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzCj4gcGFzc2Vk
IHRvIHRoZSBkbWFfbWFwX3NnKCkuCj4gCj4gc3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0
cnVjdHVyZSB1c2VkIGZvciBkZXNjcmliaW5nIGEgbm9uLWNvbnRpZ3VvdXMKPiBtZW1vcnkgYnVm
ZmVyLCB1c2VkIGNvbW1vbmx5IGluIHRoZSBEUk0gYW5kIGdyYXBoaWNzIHN1YnN5c3RlbXMuIEl0
Cj4gY29uc2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFk
ZHJlc3NlcyAoc2dsIGVudHJ5KSwKPiBhcyB3ZWxsIGFzIHRoZSBudW1iZXIgb2Ygc2NhdHRlcmxp
c3QgZW50cmllczogQ1BVIHBhZ2VzIChvcmlnX25lbnRzIGVudHJ5KQo+IGFuZCBETUEgbWFwcGVk
IHBhZ2VzIChuZW50cyBlbnRyeSkuCj4gCj4gSXQgdHVybmVkIG91dCB0aGF0IGl0IHdhcyBhIGNv
bW1vbiBtaXN0YWtlIHRvIG1pc3VzZSBuZW50cyBhbmQgb3JpZ19uZW50cwo+IGVudHJpZXMsIGNh
bGxpbmcgRE1BLW1hcHBpbmcgZnVuY3Rpb25zIHdpdGggYSB3cm9uZyBudW1iZXIgb2YgZW50cmll
cyBvcgo+IGlnbm9yaW5nIHRoZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkg
dGhlIGRtYV9tYXBfc2coKQo+IGZ1bmN0aW9uLgo+IAo+IFRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBs
ZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFwcGluZyB3cmFwcGVycyBvcGVyYXRpbmcKPiBkaXJlY3Rs
eSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIHVzZSBzY2F0dGVybGlzdCBwYWdl
Cj4gaXRlcmF0b3JzIHdoZXJlIHBvc3NpYmxlLiBUaGlzLCBhbG1vc3QgYWx3YXlzLCBoaWRlcyBy
ZWZlcmVuY2VzIHRvIHRoZQo+IG5lbnRzIGFuZCBvcmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0
aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xsb3cKPiBhbmQgY29weS9wYXN0ZSBzYWZlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5n
LmNvbT4KPiBBY2tlZC1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPgo+IC0tLQo+
ICAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgICAgfCAxMyArKysrKy0tLS0tLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHVtbXUuYyB8IDE0ICsrKysrKy0tLS0tLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21tdS5jICB8ICAyICstCj4gICAzIGZpbGVzIGNo
YW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X2dlbS5jCj4gaW5kZXggYjJmNDkxNTJiNGQ0Li44YzdhZTgxMmI4MTMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9nZW0uYwo+IEBAIC01MywxMSArNTMsMTAgQEAgc3RhdGljIHZvaWQgc3luY19mb3JfZGV2
aWNlKHN0cnVjdCBtc21fZ2VtX29iamVjdCAqbXNtX29iaikKPiAgIAlzdHJ1Y3QgZGV2aWNlICpk
ZXYgPSBtc21fb2JqLT5iYXNlLmRldi0+ZGV2Owo+ICAgCj4gICAJaWYgKGdldF9kbWFfb3BzKGRl
dikgJiYgSVNfRU5BQkxFRChDT05GSUdfQVJNNjQpKSB7Cj4gLQkJZG1hX3N5bmNfc2dfZm9yX2Rl
dmljZShkZXYsIG1zbV9vYmotPnNndC0+c2dsLAo+IC0JCQltc21fb2JqLT5zZ3QtPm5lbnRzLCBE
TUFfQklESVJFQ1RJT05BTCk7Cj4gKwkJZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2aWNlKGRldiwg
bXNtX29iai0+c2d0LAo+ICsJCQkJCSAgICBETUFfQklESVJFQ1RJT05BTCk7Cj4gICAJfSBlbHNl
IHsKPiAtCQlkbWFfbWFwX3NnKGRldiwgbXNtX29iai0+c2d0LT5zZ2wsCj4gLQkJCW1zbV9vYmot
PnNndC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKPiArCQlkbWFfbWFwX3NndGFibGUoZGV2
LCBtc21fb2JqLT5zZ3QsIERNQV9CSURJUkVDVElPTkFMLCAwKTsKPiAgIAl9Cj4gICB9Cj4gICAK
PiBAQCAtNjYsMTEgKzY1LDkgQEAgc3RhdGljIHZvaWQgc3luY19mb3JfY3B1KHN0cnVjdCBtc21f
Z2VtX29iamVjdCAqbXNtX29iaikKPiAgIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBtc21fb2JqLT5i
YXNlLmRldi0+ZGV2Owo+ICAgCj4gICAJaWYgKGdldF9kbWFfb3BzKGRldikgJiYgSVNfRU5BQkxF
RChDT05GSUdfQVJNNjQpKSB7Cj4gLQkJZG1hX3N5bmNfc2dfZm9yX2NwdShkZXYsIG1zbV9vYmot
PnNndC0+c2dsLAo+IC0JCQltc21fb2JqLT5zZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7
Cj4gKwkJZG1hX3N5bmNfc2d0YWJsZV9mb3JfY3B1KGRldiwgbXNtX29iai0+c2d0LCBETUFfQklE
SVJFQ1RJT05BTCk7Cj4gICAJfSBlbHNlIHsKPiAtCQlkbWFfdW5tYXBfc2coZGV2LCBtc21fb2Jq
LT5zZ3QtPnNnbCwKPiAtCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwp
Owo+ICsJCWRtYV91bm1hcF9zZ3RhYmxlKGRldiwgbXNtX29iai0+c2d0LCBETUFfQklESVJFQ1RJ
T05BTCwgMCk7Cj4gICAJfQo+ICAgfQo+ICAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9tc20vbXNtX2dwdW1tdS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1bW11LmMKPiBp
bmRleCAzMTBhMzFiMDVmYWEuLjMxOWYwNmMyODIzNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9ncHVtbXUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dw
dW1tdS5jCj4gQEAgLTMwLDIxICszMCwxOSBAQCBzdGF0aWMgaW50IG1zbV9ncHVtbXVfbWFwKHN0
cnVjdCBtc21fbW11ICptbXUsIHVpbnQ2NF90IGlvdmEsCj4gICB7Cj4gICAJc3RydWN0IG1zbV9n
cHVtbXUgKmdwdW1tdSA9IHRvX21zbV9ncHVtbXUobW11KTsKPiAgIAl1bnNpZ25lZCBpZHggPSAo
aW92YSAtIEdQVU1NVV9WQV9TVEFSVCkgLyBHUFVNTVVfUEFHRV9TSVpFOwo+IC0Jc3RydWN0IHNj
YXR0ZXJsaXN0ICpzZzsKPiArCXN0cnVjdCBzZ19kbWFfcGFnZV9pdGVyIGRtYV9pdGVyOwo+ICAg
CXVuc2lnbmVkIHByb3RfYml0cyA9IDA7Cj4gLQl1bnNpZ25lZCBpLCBqOwo+ICAgCj4gICAJaWYg
KHByb3QgJiBJT01NVV9XUklURSkKPiAgIAkJcHJvdF9iaXRzIHw9IDE7Cj4gICAJaWYgKHByb3Qg
JiBJT01NVV9SRUFEKQo+ICAgCQlwcm90X2JpdHMgfD0gMjsKPiAgIAo+IC0JZm9yX2VhY2hfc2co
c2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBpKSB7Cj4gLQkJZG1hX2FkZHJfdCBhZGRyID0gc2ct
PmRtYV9hZGRyZXNzOwo+IC0JCWZvciAoaiA9IDA7IGogPCBzZy0+bGVuZ3RoIC8gR1BVTU1VX1BB
R0VfU0laRTsgaisrLCBpZHgrKykgewo+IC0JCQlncHVtbXUtPnRhYmxlW2lkeF0gPSBhZGRyIHwg
cHJvdF9iaXRzOwo+IC0JCQlhZGRyICs9IEdQVU1NVV9QQUdFX1NJWkU7Cj4gLQkJfQo+ICsJZm9y
X2VhY2hfc2d0YWJsZV9kbWFfcGFnZShzZ3QsICZkbWFfaXRlciwgMCkgewo+ICsJCWRtYV9hZGRy
X3QgYWRkciA9IHNnX3BhZ2VfaXRlcl9kbWFfYWRkcmVzcygmZG1hX2l0ZXIpOwo+ICsKPiArCQlC
VUlMRF9CVUdfT04oR1BVTU1VX1BBR0VfU0laRSAhPSBQQUdFX1NJWkUpOwo+ICsJCWdwdW1tdS0+
dGFibGVbaWR4KytdID0gYWRkciB8IHByb3RfYml0czsKCkdpdmVuIHRoYXQgdGhlIEJVSUxEX0JV
R19PTiBtaWdodCBwcmV2ZW50IHZhbGlkIGFybTY0IGNvbmZpZ3MgZnJvbSAKYnVpbGRpbmcsIGhv
dyBhYm91dCBhIHNpbXBsZSB0d2VhayBsaWtlOgoKCQlmb3IgKGkgPSAwOyBpIDwgUEFHRV9TSVpF
OyBpICs9IEdQVU1NVV9QQUdFX1NJWkUpCgkJCWdwdW1tdS0+dGFibGVbaWR4KytdID0gaSArIGFk
ZHIgfCBwcm90X2JpdHM7Cj8KCk9yIGFsdGVybmF0aXZlbHkgcGVyaGFwcyBzb21lIG1vcmUgYWdn
cmVzc2l2ZSAjaWZkZWZzIG9yIG1ha2VmaWxlIHR3ZWFrcyAKdG8gcHJldmVudCB0aGUgR1BVTU1V
IGNvZGUgYnVpbGRpbmcgZm9yIGFybTY0IGF0IGFsbCBpZiBpdCdzIG9ubHkgCnJlbGV2YW50IHRv
IDMyLWJpdCBwbGF0Zm9ybXMgKHdoaWNoIEkgYmVsaWV2ZSBtaWdodCBiZSB0aGUgY2FzZSkuCgpS
b2Jpbi4KCj4gICAJfQo+ICAgCj4gICAJLyogd2UgY2FuIGltcHJvdmUgYnkgZGVmZXJyaW5nIGZs
dXNoIGZvciBtdWx0aXBsZSBtYXAoKSAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
bXNtL21zbV9pb21tdS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21faW9tbXUuYwo+IGluZGV4
IDNhMzgxYTk2NzRjOS4uNmMzMWU2NTgzNGM2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9tc20vbXNtX2lvbW11LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21tdS5j
Cj4gQEAgLTM2LDcgKzM2LDcgQEAgc3RhdGljIGludCBtc21faW9tbXVfbWFwKHN0cnVjdCBtc21f
bW11ICptbXUsIHVpbnQ2NF90IGlvdmEsCj4gICAJc3RydWN0IG1zbV9pb21tdSAqaW9tbXUgPSB0
b19tc21faW9tbXUobW11KTsKPiAgIAlzaXplX3QgcmV0Owo+ICAgCj4gLQlyZXQgPSBpb21tdV9t
YXBfc2coaW9tbXUtPmRvbWFpbiwgaW92YSwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIHByb3QpOwo+
ICsJcmV0ID0gaW9tbXVfbWFwX3NndGFibGUoaW9tbXUtPmRvbWFpbiwgaW92YSwgc2d0LCBwcm90
KTsKPiAgIAlXQVJOX09OKCFyZXQpOwo+ICAgCj4gICAJcmV0dXJuIChyZXQgPT0gbGVuKSA/IDAg
OiAtRUlOVkFMOwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
