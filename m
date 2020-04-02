Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C681B6D33
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:31:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E84BC619D6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:31:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D847D619D7; Fri, 24 Apr 2020 05:31:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 772CC619F1;
	Fri, 24 Apr 2020 05:29:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 85B4760DF8
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2020 07:11:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 75E9B6162C; Thu,  2 Apr 2020 07:11:33 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by lists.linaro.org (Postfix) with ESMTPS id 2E24D60DF8
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2020 07:11:32 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.72,334,1580770800"; d="scan'208";a="443452906"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 09:11:30 +0200
Date: Thu, 2 Apr 2020 09:11:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
In-Reply-To: <20200402012515.429329-1-jbwyatt4@gmail.com>
Message-ID: <alpine.DEB.2.21.2004020910570.3014@hadrien>
References: <20200402012515.429329-1-jbwyatt4@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 outreachy-kernel@googlegroups.com,
 =?ISO-8859-15?Q?Arve_Hj=F8nnev=E5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Subject: Re: [Linaro-mm-sig] [Outreachy kernel] [PATCH] staging: android:
 ion: Fix parenthesis alignment
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

CgpPbiBXZWQsIDEgQXByIDIwMjAsIEpvaG4gQi4gV3lhdHQgSVYgd3JvdGU6Cgo+IEZpeCAyIHBh
cmVudGhlc2lzIGFsaWdubWVudCBpc3N1ZXMuCgpQbGVhc2UgdHJ5IHRvIGZpbmQgYSB3YXkgdG8g
ZGVzY3JpYmUgd2hhdCB5b3UgaGF2ZSBkb25lIHRoYXQgZG9lc24ndAppbnZvbHZlIHRoZSB3b3Jk
ICJGaXgiLiAgV2hhdCBoYXZlIHlvdSBkb25lIGFuZCB3aHk/CgpqdWxpYQoKCj4KPiBSZXBvcnRl
ZCBieSBjaGVja3BhdGNoLgo+Cj4gU2lnbmVkLW9mZi1ieTogSm9obiBCLiBXeWF0dCBJViA8amJ3
eWF0dDRAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9u
X3BhZ2VfcG9vbC5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQv
aW9uL2lvbl9wYWdlX3Bvb2wuYyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25fcGFn
ZV9wb29sLmMKPiBpbmRleCBmODVlYzViMTZiNjUuLjAxOThiODg2ZDkwNiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX3BhZ2VfcG9vbC5jCj4gKysrIGIvZHJp
dmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9wYWdlX3Bvb2wuYwo+IEBAIC0zNyw3ICszNyw3
IEBAIHN0YXRpYyB2b2lkIGlvbl9wYWdlX3Bvb2xfYWRkKHN0cnVjdCBpb25fcGFnZV9wb29sICpw
b29sLCBzdHJ1Y3QgcGFnZSAqcGFnZSkKPiAgCX0KPgo+ICAJbW9kX25vZGVfcGFnZV9zdGF0ZShw
YWdlX3BnZGF0KHBhZ2UpLCBOUl9LRVJORUxfTUlTQ19SRUNMQUlNQUJMRSwKPiAtCQkJCQkJCTEg
PDwgcG9vbC0+b3JkZXIpOwo+ICsJCQkgICAgMSA8PCBwb29sLT5vcmRlcik7Cj4gIAltdXRleF91
bmxvY2soJnBvb2wtPm11dGV4KTsKPiAgfQo+Cj4gQEAgLTU3LDcgKzU3LDcgQEAgc3RhdGljIHN0
cnVjdCBwYWdlICppb25fcGFnZV9wb29sX3JlbW92ZShzdHJ1Y3QgaW9uX3BhZ2VfcG9vbCAqcG9v
bCwgYm9vbCBoaWdoKQo+Cj4gIAlsaXN0X2RlbCgmcGFnZS0+bHJ1KTsKPiAgCW1vZF9ub2RlX3Bh
Z2Vfc3RhdGUocGFnZV9wZ2RhdChwYWdlKSwgTlJfS0VSTkVMX01JU0NfUkVDTEFJTUFCTEUsCj4g
LQkJCQkJCQktKDEgPDwgcG9vbC0+b3JkZXIpKTsKPiArCQkJICAgIC0oMSA8PCBwb29sLT5vcmRl
cikpOwo+ICAJcmV0dXJuIHBhZ2U7Cj4gIH0KPgo+IC0tCj4gMi4yNS4xCj4KPiAtLQo+IFlvdSBy
ZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdv
b2dsZSBHcm91cHMgIm91dHJlYWNoeS1rZXJuZWwiIGdyb3VwLgo+IFRvIHVuc3Vic2NyaWJlIGZy
b20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4g
ZW1haWwgdG8gb3V0cmVhY2h5LWtlcm5lbCt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgo+
IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIgdmlzaXQgaHR0cHM6Ly9ncm91cHMu
Z29vZ2xlLmNvbS9kL21zZ2lkL291dHJlYWNoeS1rZXJuZWwvMjAyMDA0MDIwMTI1MTUuNDI5MzI5
LTEtamJ3eWF0dDQlNDBnbWFpbC5jb20uCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
