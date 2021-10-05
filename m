Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BC6421F7C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 09:36:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F3B061E96
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 07:36:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4311A62423; Tue,  5 Oct 2021 07:36:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5044618C3;
	Tue,  5 Oct 2021 07:36:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 084F961758
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 07:36:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 06059618C3; Tue,  5 Oct 2021 07:36:01 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by lists.linaro.org (Postfix) with ESMTPS id B245A61758
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 07:35:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="311884982"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="311884982"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 00:35:55 -0700
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="487917277"
Received: from tbarret1-mobl.ger.corp.intel.com (HELO [10.213.238.194])
 ([10.213.238.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 00:35:53 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211001100610.2899-1-christian.koenig@amd.com>
 <20211001100610.2899-9-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <23ae5edb-4582-1fec-f0a5-db224265df77@linux.intel.com>
Date: Tue, 5 Oct 2021 08:35:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211001100610.2899-9-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 08/28] dma-buf: use the new iterator in
 dma_buf_debug_show
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: daniel@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Ck9uIDAxLzEwLzIwMjEgMTE6MDUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gU2ltcGxpZnlp
bmcgdGhlIGNvZGUgYSBiaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyB8IDI0ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gaW5kZXggNjFl
MjBhZTdiMDhiLi44MjQyYjVkOWJhZWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBAQCAtMTM1NiwxMCAr
MTM1Niw5IEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAq
cywgdm9pZCAqdW51c2VkKQo+ICAgewo+ICAgCXN0cnVjdCBkbWFfYnVmICpidWZfb2JqOwo+ICAg
CXN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaF9vYmo7Cj4gLQlzdHJ1Y3QgZG1hX3Jl
c3YgKnJvYmo7Cj4gLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZm9iajsKPiArCXN0cnVjdCBkbWFf
cmVzdl9pdGVyIGN1cnNvcjsKPiAgIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPiAtCWludCBj
b3VudCA9IDAsIGF0dGFjaF9jb3VudCwgc2hhcmVkX2NvdW50LCBpOwo+ICsJaW50IGNvdW50ID0g
MCwgYXR0YWNoX2NvdW50Owo+ICAgCXNpemVfdCBzaXplID0gMDsKPiAgIAlpbnQgcmV0Owo+ICAg
Cj4gQEAgLTEzODYsMjEgKzEzODUsMTAgQEAgc3RhdGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3co
c3RydWN0IHNlcV9maWxlICpzLCB2b2lkICp1bnVzZWQpCj4gICAJCQkJZmlsZV9pbm9kZShidWZf
b2JqLT5maWxlKS0+aV9pbm8sCj4gICAJCQkJYnVmX29iai0+bmFtZSA/OiAiIik7Cj4gICAKPiAt
CQlyb2JqID0gYnVmX29iai0+cmVzdjsKPiAtCQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2Uo
cm9iaik7Cj4gLQkJaWYgKGZlbmNlKQo+IC0JCQlzZXFfcHJpbnRmKHMsICJcdEV4Y2x1c2l2ZSBm
ZW5jZTogJXMgJXMgJXNzaWduYWxsZWRcbiIsCj4gLQkJCQkgICBmZW5jZS0+b3BzLT5nZXRfZHJp
dmVyX25hbWUoZmVuY2UpLAo+IC0JCQkJICAgZmVuY2UtPm9wcy0+Z2V0X3RpbWVsaW5lX25hbWUo
ZmVuY2UpLAo+IC0JCQkJICAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSA/ICIiIDogInVu
Iik7Cj4gLQo+IC0JCWZvYmogPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKHJvYmotPmZlbmNl
LAo+IC0JCQkJCQkgZG1hX3Jlc3ZfaGVsZChyb2JqKSk7Cj4gLQkJc2hhcmVkX2NvdW50ID0gZm9i
aiA/IGZvYmotPnNoYXJlZF9jb3VudCA6IDA7Cj4gLQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9j
b3VudDsgaSsrKSB7Cj4gLQkJCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmb2Jq
LT5zaGFyZWRbaV0sCj4gLQkJCQkJCQkgIGRtYV9yZXN2X2hlbGQocm9iaikpOwo+IC0JCQlzZXFf
cHJpbnRmKHMsICJcdFNoYXJlZCBmZW5jZTogJXMgJXMgJXNzaWduYWxsZWRcbiIsCj4gKwkJZG1h
X3Jlc3ZfZm9yX2VhY2hfZmVuY2UoJmN1cnNvciwgYnVmX29iai0+cmVzdiwgdHJ1ZSwgZmVuY2Up
IHsKPiArCQkJc2VxX3ByaW50ZihzLCAiXHQlcyBmZW5jZTogJXMgJXMgJXNzaWduYWxsZWRcbiIs
Cj4gKwkJCQkgICBkbWFfcmVzdl9pdGVyX2lzX2V4Y2x1c2l2ZSgmY3Vyc29yKSA/Cj4gKwkJCQkJ
IkV4Y2x1c2l2ZSIgOiAiU2hhcmVkIiwKPiAgIAkJCQkgICBmZW5jZS0+b3BzLT5nZXRfZHJpdmVy
X25hbWUoZmVuY2UpLAo+ICAgCQkJCSAgIGZlbmNlLT5vcHMtPmdldF90aW1lbGluZV9uYW1lKGZl
bmNlKSwKPiAgIAkJCQkgICBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpID8gIiIgOiAidW4i
KTsKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
