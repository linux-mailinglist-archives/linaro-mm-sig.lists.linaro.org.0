Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F9447169
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 15 Jun 2019 19:32:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7A5B60190
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 15 Jun 2019 17:32:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DA7D461702; Sat, 15 Jun 2019 17:32:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09D15616F4;
	Sat, 15 Jun 2019 17:31:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7C2F1615AD
 for <linaro-mm-sig@lists.linaro.org>; Sat, 15 Jun 2019 17:31:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6DD0D60190; Sat, 15 Jun 2019 17:31:53 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 9A02860190
 for <linaro-mm-sig@lists.linaro.org>; Sat, 15 Jun 2019 17:31:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A8812183F;
 Sat, 15 Jun 2019 17:31:51 +0000 (UTC)
Date: Sat, 15 Jun 2019 19:31:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Saiyam Doshi <saiyamdoshi.in@gmail.com>
Message-ID: <20190615173149.GA4914@kroah.com>
References: <20190614194156.GA21401@ahmlpt0706>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614194156.GA21401@ahmlpt0706>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [Linaro-mm-sig] [PATCH] staging: android: fix style problem
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

T24gU2F0LCBKdW4gMTUsIDIwMTkgYXQgMDE6MTE6NTZBTSArMDUzMCwgU2FpeWFtIERvc2hpIHdy
b3RlOgo+IGNoZWNrcGF0Y2ggcmVwb3J0ZWQgIldBUk5JTkc6IGxpbmUgb3ZlciA4MCBjaGFyYWN0
ZXJzIi4gVGhpcwo+IHBhdGNoIGZpeGVzIGl0IGJ5IGFsaWduaW5nIGZ1bmN0aW9uIGFyZ3VtZW50
cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTYWl5YW0gRG9zaGkgPHNhaXlhbWRvc2hpLmluQGdtYWls
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9jaHVua19oZWFw
LmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX2No
dW5rX2hlYXAuYyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25fY2h1bmtfaGVhcC5j
Cj4gaW5kZXggM2NkZGU5YzFhNzE3Li42YWNlYWIyZTc3ZTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9jaHVua19oZWFwLmMKPiArKysgYi9kcml2ZXJzL3N0
YWdpbmcvYW5kcm9pZC9pb24vaW9uX2NodW5rX2hlYXAuYwo+IEBAIC0xMDcsNyArMTA3LDkgQEAg
c3RhdGljIHN0cnVjdCBpb25faGVhcF9vcHMgY2h1bmtfaGVhcF9vcHMgPSB7Cj4gIAkudW5tYXBf
a2VybmVsID0gaW9uX2hlYXBfdW5tYXBfa2VybmVsLAo+ICB9Owo+ICAKPiAtc3RydWN0IGlvbl9o
ZWFwICppb25fY2h1bmtfaGVhcF9jcmVhdGUocGh5c19hZGRyX3QgYmFzZSwgc2l6ZV90IHNpemUs
IHNpemVfdCBjaHVua19zaXplKQo+ICtzdHJ1Y3QgaW9uX2hlYXAgKmlvbl9jaHVua19oZWFwX2Ny
ZWF0ZShwaHlzX2FkZHJfdCBiYXNlLAo+ICsJCQkJICAgICAgIHNpemVfdCBzaXplLAo+ICsJCQkJ
ICAgICAgIHNpemVfdCBjaHVua19zaXplKQoKSnVzdCBicmVhayB0aGUgbGluZSBhdCAic2l6ZV90
IHNpemUsIiwgbm8gbmVlZCBmb3IgMyBsaW5lcyB3aGVuIDIgd2lsbApkby4KCnRoYW5rcywKCmdy
ZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
