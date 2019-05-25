Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE4232DCF
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 12:43:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C27B861613
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 10:43:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AE0106164D; Mon,  3 Jun 2019 10:43:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C693C6106B;
	Mon,  3 Jun 2019 10:43:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0EE096077C
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2019 01:04:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F0DDE614F0; Sat, 25 May 2019 01:04:58 +0000 (UTC)
Received: from mail7-213.sinamail.sina.com.cn (mail7-213.sinamail.sina.com.cn
 [202.108.7.213])
 by lists.linaro.org (Postfix) with SMTP id E7D1E6077C
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2019 01:04:56 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([114.253.229.186])
 by sina.com with ESMTP
 id 5CE894B00000086A; Sat, 25 May 2019 09:04:50 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 175532395284
From: Hillf Danton <hdanton@sina.com>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Sat, 25 May 2019 09:04:39 +0800
Message-Id: <20190416183841.1577-3-christian.koenig@amd.com>
In-Reply-To: <20190416183841.1577-1-christian.koenig@amd.com>
References: <20190416183841.1577-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
Archived-At: <https://lore.kernel.org/lkml/20190416183841.1577-3-christian.koenig@amd.com/>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Mon, 03 Jun 2019 10:43:16 +0000
Cc: Hillf Danton <hdanton@sina.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 02/12] dma-buf: add
	dma_buf_(un)map_attachment_locked variants v3
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

Ck9uIFR1ZSwgMTYgQXByIDIwMTkgMjA6Mzg6MzEgKzAyMDAgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToKPiBBZGQgZnVuY3Rpb24gdmFyaWFudHMgd2hpY2ggY2FuIGJlIGNhbGxlZCB3aXRoIHRoZSBy
ZXNlcnZhdGlvbiBsb2NrCj4gYWxyZWFkeSBoZWxkLgo+IAo+IHYyOiByZW9yZGVyZWQsIGFkZCBs
b2NrZGVwIGFzc2VydHMsIGZpeCBrZXJuZWxkb2MKPiB2MzogcmViYXNlZCBvbiBzZ3QgY2FjaGlu
Zwo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDYzICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYu
aCAgIHwgIDUgKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDY4IGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMKPiBpbmRleCA2NTE2MWE4MmQ0ZDUuLmVmNDgwZTVmYjIzOSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYwo+IEBAIC02MjMsNiArNjIzLDQzIEBAIHZvaWQgZG1hX2J1Zl9kZXRhY2goc3RydWN0IGRt
YV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQo+ICB9Cj4g
IEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfZGV0YWNoKTsKPiAgCj4gKy8qKgo+ICsgKiBkbWFf
YnVmX21hcF9hdHRhY2htZW50X2xvY2tlZCAtIE1hcHMgdGhlIGJ1ZmZlciBpbnRvIF9kZXZpY2Vf
IGFkZHJlc3Mgc3BhY2UKPiArICogd2l0aCB0aGUgcmVzZXJ2YXRpb24gbG9jayBoZWxkLiBJcyBh
IHdyYXBwZXIgZm9yIG1hcF9kbWFfYnVmKCkgb2YgdGhlCgpTb21ldGhpbmcgaXMgbWlzc2luZzsg
c2VlbXMgdG8gYmUgcy9vZiB0aGUvb2YgdGhlIGRtYV9idWZfb3BzLi8KPiArICoKPiArICogUmV0
dXJucyB0aGUgc2NhdHRlcmxpc3QgdGFibGUgb2YgdGhlIGF0dGFjaG1lbnQ7Cj4gKyAqIGRtYV9i
dWZfb3BzLgoKT2ggaXQgaXMgc2l0dGluZyBoZXJlIQoKPiArICogQGF0dGFjaDoJW2luXQlhdHRh
Y2htZW50IHdob3NlIHNjYXR0ZXJsaXN0IGlzIHRvIGJlIHJldHVybmVkCj4gKyAqIEBkaXJlY3Rp
b246CVtpbl0JZGlyZWN0aW9uIG9mIERNQSB0cmFuc2Zlcgo+ICsgKgo+ICsgKiBSZXR1cm5zIHNn
X3RhYmxlIGNvbnRhaW5pbmcgdGhlIHNjYXR0ZXJsaXN0IHRvIGJlIHJldHVybmVkOyByZXR1cm5z
IEVSUl9QVFIKPiArICogb24gZXJyb3IuIE1heSByZXR1cm4gLUVJTlRSIGlmIGl0IGlzIGludGVy
cnVwdGVkIGJ5IGEgc2lnbmFsLgo+ICsgKgpFSU5UUiBsb29rcyBpbXBvc3NpYmxlIGluIHRoZSBj
b2RlLgoKPiArICogQSBtYXBwaW5nIG11c3QgYmUgdW5tYXBwZWQgYnkgdXNpbmcgZG1hX2J1Zl91
bm1hcF9hdHRhY2htZW50X2xvY2tlZCgpLiBOb3RlCj4gKyAqIHRoYXQgdGhlIHVuZGVybHlpbmcg
YmFja2luZyBzdG9yYWdlIGlzIHBpbm5lZCBmb3IgYXMgbG9uZyBhcyBhIG1hcHBpbmcKPiArICog
ZXhpc3RzLCB0aGVyZWZvcmUgdXNlcnMvaW1wb3J0ZXJzIHNob3VsZCBub3QgaG9sZCBvbnRvIGEg
bWFwcGluZyBmb3IgdW5kdWUKPiArICogYW1vdW50cyBvZiB0aW1lLgo+ICsgKi8KPiArc3RydWN0
IHNnX3RhYmxlICoKPiArZG1hX2J1Zl9tYXBfYXR0YWNobWVudF9sb2NrZWQoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNoLAo+ICsJCQkgICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlv
biBkaXJlY3Rpb24pCj4gK3sKPiArCXN0cnVjdCBzZ190YWJsZSAqc2dfdGFibGU7Cj4gKwo+ICsJ
bWlnaHRfc2xlZXAoKTsKPiArCXJlc2VydmF0aW9uX29iamVjdF9hc3NlcnRfaGVsZChhdHRhY2gt
PmRtYWJ1Zi0+cmVzdik7Cj4gKwo+ICsJaWYgKGF0dGFjaC0+c2d0KQo+ICsJCXJldHVybiBhdHRh
Y2gtPnNndDsKPiArCj4gKwlzZ190YWJsZSA9IGF0dGFjaC0+ZG1hYnVmLT5vcHMtPm1hcF9kbWFf
YnVmKGF0dGFjaCwgZGlyZWN0aW9uKTsKPiArCWlmICghc2dfdGFibGUpCj4gKwkJc2dfdGFibGUg
PSBFUlJfUFRSKC1FTk9NRU0pOwo+ICsKPiArCXJldHVybiBzZ190YWJsZTsKPiArfQo+ICtFWFBP
UlRfU1lNQk9MX0dQTChkbWFfYnVmX21hcF9hdHRhY2htZW50X2xvY2tlZCk7Cj4gKwpCZXN0IFJl
Z2FyZHMKSGlsbGYKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
