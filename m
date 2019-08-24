Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CFD9BDF3
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Aug 2019 15:23:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3104E61810
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Aug 2019 13:23:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 22F36617C9; Sat, 24 Aug 2019 13:23:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8688861738;
	Sat, 24 Aug 2019 13:22:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C020560F1F
 for <linaro-mm-sig@lists.linaro.org>; Sat, 24 Aug 2019 13:22:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AD58861738; Sat, 24 Aug 2019 13:22:39 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 7BB6E60F1F
 for <linaro-mm-sig@lists.linaro.org>; Sat, 24 Aug 2019 13:22:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18250784-1500050 for multiple; Sat, 24 Aug 2019 14:22:28 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <20190821123147.110736-9-christian.koenig@amd.com>
In-Reply-To: <20190821123147.110736-9-christian.koenig@amd.com>
Message-ID: <156665294650.4019.8311918110818842888@skylake-alporthouse-com>
Date: Sat, 24 Aug 2019 14:22:26 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 08/10] dma-buf/resv: replace shared
 fence with new fences container
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTIxIDEzOjMxOjQ1KQo+IEBAIC01Mjgs
MjAgKzM1Miw5IEBAIHZvaWQgZG1hX3Jlc3ZfcHJ1bmVfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAq
b2JqKQo+ICAgICAgICAgICAgICAgICBkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPiAgICAgICAgIH0K
PiAgCj4gLSAgICAgICBsaXN0ID0gZG1hX3Jlc3ZfZ2V0X2xpc3Qob2JqKTsKPiAtICAgICAgIGlm
ICghbGlzdCkKPiAtICAgICAgICAgICAgICAgcmV0dXJuOwo+IC0KPiAtICAgICAgIGZvciAoaSA9
IDA7IGkgPCBsaXN0LT5zaGFyZWRfY291bnQ7ICsraSkgewo+IC0gICAgICAgICAgICAgICBmZW5j
ZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQobGlzdC0+c2hhcmVkW2ldLAo+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZG1hX3Jlc3ZfaGVsZChv
YmopKTsKPiAtCj4gLSAgICAgICAgICAgICAgIGlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZl
bmNlKSkKPiAtICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiAtCj4gLSAgICAgICAg
ICAgICAgIFJDVV9JTklUX1BPSU5URVIobGlzdC0+c2hhcmVkW2ldLCBkbWFfZmVuY2VfZ2V0X3N0
dWIoKSk7Cj4gLSAgICAgICAgICAgICAgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOwo+IC0gICAgICAg
fQo+ICsgICAgICAgZmVuY2UgPSBkbWFfcmVzdl9mZW5jZXNfZGVyZWYob2JqLCAmb2JqLT5yZWFk
ZXJzKTsKPiArICAgICAgIGlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQo+ICsgICAg
ICAgICAgICAgICBkbWFfcmVzdl9mZW5jZXNfc2V0KG9iaiwgJm9iai0+cmVhZGVycywgTlVMTCk7
CgpTb21ldGhpbmcgdG8gbm90ZSBpcyB0aGF0IGEgZG1hLWZlbmNlLWFycmF5IGlzIG5vdCBhdXRv
bWF0aWNhbGx5CnNpZ25hbGVkIGFuZCBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSBkb2VzIG5vdCBj
aGVjayB0aGUgYXJyYXkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
