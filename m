Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FDB97DC5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 16:58:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DAC5D6085A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 14:58:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C832261833; Wed, 21 Aug 2019 14:58:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84B6061828;
	Wed, 21 Aug 2019 14:57:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 244DC6085A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 14:56:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1363E61810; Wed, 21 Aug 2019 14:56:36 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 44BED61817
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 14:56:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18215656-1500050 for multiple; Wed, 21 Aug 2019 15:56:27 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <20190821123147.110736-6-christian.koenig@amd.com>
 <156639930822.1374.18129686805314896871@skylake-alporthouse-com>
In-Reply-To: <156639930822.1374.18129686805314896871@skylake-alporthouse-com>
Message-ID: <156639938517.1374.16561849999409019681@skylake-alporthouse-com>
Date: Wed, 21 Aug 2019 15:56:25 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 05/10] dma-buf/resv: add
	dma_resv_prune_fences
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjEgMTU6NTU6MDgpCj4gUXVvdGluZyBDaHJp
c3RpYW4gS8O2bmlnICgyMDE5LTA4LTIxIDEzOjMxOjQyKQo+ID4gQWRkIGEgbmV3IGRtYV9yZXN2
X3BydW5lX2ZlbmNlcygpIGZ1bmN0aW9uIHRvIGltcHJvdmUgbWVtb3J5IG1hbmFnZW1lbnQuCj4g
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jICAgICAgICAg
ICAgICAgICB8IDM3ICsrKysrKysrKysrKysrKysrKysrKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jICAgfCAgMyArLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYyB8ICAyICstCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV92bWEuYyAgICAgICAgICAgIHwgIDMgKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vdHRt
L3R0bV9iby5jICAgICAgICAgICAgICAgfCAgMiArLQo+ID4gIGluY2x1ZGUvbGludXgvZG1hLXJl
c3YuaCAgICAgICAgICAgICAgICAgICB8ICAxICsKPiA+ICA2IGZpbGVzIGNoYW5nZWQsIDQyIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4gPiBpbmRl
eCA0MmE4ZjNmMTE2ODEuLjI0YWRjMzJkMzZkNCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtcmVzdi5jCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+ID4g
QEAgLTMwMSw2ICszMDEsNDMgQEAgdm9pZCBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShzdHJ1Y3Qg
ZG1hX3Jlc3YgKm9iaiwgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCj4gPiAgfQo+ID4gIEVYUE9S
VF9TWU1CT0woZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2UpOwo+ID4gIAo+ID4gKy8qKgo+ID4gKyAq
IGRtYV9yZXN2X3BydW5lX2ZlbmNlcyAtIHBydW5lIHNpZ25hbGVkIGZlbmNlcyBmcm9tIHRoZSBy
ZXN2IG9iamVjdAo+ID4gKyAqIEBvYmo6IHRoZSByZXNlcnZhdGlvbiBvYmplY3QgdG8gcHJ1bmUK
PiA+ICsgKgo+ID4gKyAqIFBydW5lIGFsbCBzaWduYWxlZCBmZW5jZXMgZnJvbSB0aGUgcmVzZXJ2
YXRpb24gb2JqZWN0Lgo+ID4gKyAqLwo+ID4gK3ZvaWQgZG1hX3Jlc3ZfcHJ1bmVfZmVuY2VzKHN0
cnVjdCBkbWFfcmVzdiAqb2JqKQo+ID4gK3sKPiA+ICsgICAgICAgc3RydWN0IGRtYV9yZXN2X2xp
c3QgKmxpc3Q7Cj4gPiArICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+ID4gKyAgICAg
ICB1bnNpZ25lZCBpbnQgaTsKPiA+ICsKPiA+ICsgICAgICAgZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQo
b2JqKTsKPiA+ICsKPiA+ICsgICAgICAgZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbChvYmopOwo+
ID4gKyAgICAgICBpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkgewo+ID4gKyAgICAg
ICAgICAgICAgIFJDVV9JTklUX1BPSU5URVIob2JqLT5mZW5jZV9leGNsLCBOVUxMKTsKPiA+ICsg
ICAgICAgICAgICAgICBkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPiA+ICsgICAgICAgfQo+ID4gKwo+
ID4gKyAgICAgICBsaXN0ID0gZG1hX3Jlc3ZfZ2V0X2xpc3Qob2JqKTsKPiA+ICsgICAgICAgaWYg
KCFsaXN0KQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiA+ICsKPiA+ICsgICAgICAgZm9y
IChpID0gMDsgaSA8IGxpc3QtPnNoYXJlZF9jb3VudDsgKytpKSB7Cj4gPiArICAgICAgICAgICAg
ICAgZmVuY2UgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGxpc3QtPnNoYXJlZFtpXSwKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZG1hX3Jl
c3ZfaGVsZChvYmopKTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICBpZiAoIWRtYV9mZW5jZV9p
c19zaWduYWxlZChmZW5jZSkpCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsK
PiA+ICsKPiA+ICsgICAgICAgICAgICAgICBSQ1VfSU5JVF9QT0lOVEVSKGxpc3QtPnNoYXJlZFtp
XSwgZG1hX2ZlbmNlX2dldF9zdHViKCkpOwo+ID4gKyAgICAgICAgICAgICAgIGRtYV9mZW5jZV9w
dXQoZmVuY2UpOwo+IAo+IE5vdCB3b3J0aCByZXVzaW5nIHRoZSBjb21wYWN0aW9uIGxvZ2ljIGZy
b20gYWRkX3NoYXJlZF9mZW5jZT8KClNjcmF0Y2ggdGhhdCwgeW91J3JlIGdvaW5nIHRvIHJld3Jp
dGUgdGhlIHNoYXJlZCBmZW5jZSBjb250YWluZXIuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
