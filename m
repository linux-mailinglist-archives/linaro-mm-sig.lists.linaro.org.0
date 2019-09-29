Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3535DC142C
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 29 Sep 2019 12:13:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03F9560F40
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 29 Sep 2019 10:13:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EAC456177D; Sun, 29 Sep 2019 10:13:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE85660749;
	Sun, 29 Sep 2019 10:13:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0FCC36071B
 for <linaro-mm-sig@lists.linaro.org>; Sun, 29 Sep 2019 10:13:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EA17260749; Sun, 29 Sep 2019 10:12:59 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id BDEBF6071B
 for <linaro-mm-sig@lists.linaro.org>; Sun, 29 Sep 2019 10:12:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91A76207FA;
 Sun, 29 Sep 2019 10:12:56 +0000 (UTC)
Date: Sun, 29 Sep 2019 12:12:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: jun.zhang@intel.com
Message-ID: <20190929101254.GA1907778@kroah.com>
References: <20190929072841.14848-1-jun.zhang@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929072841.14848-1-jun.zhang@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, tkjos@android.com, Bai@osuosl.org,
 Jie A <jie.a.bai@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, he@osuosl.org,
 arve@android.com, bo <bo.he@intel.com>, joel@joelfernandes.org,
 maco@android.com, christian@brauner.io
Subject: Re: [Linaro-mm-sig] [PATCH] ion_system_heap: support X86 archtecture
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

T24gU3VuLCBTZXAgMjksIDIwMTkgYXQgMDM6Mjg6NDFQTSArMDgwMCwganVuLnpoYW5nQGludGVs
LmNvbSB3cm90ZToKPiBGcm9tOiB6aGFuZyBqdW4gPGp1bi56aGFuZ0BpbnRlbC5jb20+Cj4gCj4g
d2Ugc2VlIHRvbnMgb2Ygd2FybmluZyBsaWtlOgo+IFsgICA0NS44NDY4NzJdIHg4Ni9QQVQ6IE5E
SyBNZWRpYUNvZGVjXzozNzUzIG1hcCBwZm4gUkFNIHJhbmdlIHJlcQo+IHdyaXRlLWNvbWJpbmlu
ZyBmb3IgW21lbSAweDFlN2E4MDAwMC0weDFlN2E4N2ZmZl0sIGdvdCB3cml0ZS1iYWNrCj4gWyAg
IDQ1Ljg0ODgyN10geDg2L1BBVDogLnZvcmJpcy5kZWNvZGVyOjQwODggbWFwIHBmbiBSQU0gcmFu
Z2UgcmVxCj4gd3JpdGUtY29tYmluaW5nIGZvciBbbWVtIDB4MWU3YTU4MDAwLTB4MWU3YTU4ZmZm
XSwgZ290IHdyaXRlLWJhY2sKPiBbICAgNDUuODQ4ODc1XSB4ODYvUEFUOiBOREsgTWVkaWFDb2Rl
Y186Mzc1MyBtYXAgcGZuIFJBTSByYW5nZSByZXEKPiB3cml0ZS1jb21iaW5pbmcgZm9yIFttZW0g
MHgxZTdhNDgwMDAtMHgxZTdhNGZmZmZdLCBnb3Qgd3JpdGUtYmFjawo+IFsgICA0NS44NDk0MDNd
IHg4Ni9QQVQ6IC52b3JiaXMuZGVjb2Rlcjo0MDg4IG1hcCBwZm4gUkFNIHJhbmdlCj4gcmVxIHdy
aXRlLWNvbWJpbmluZyBmb3IgW21lbSAweDFlN2E3MDAwMC0weDFlN2E3MGZmZl0sIGdvdCB3cml0
ZS1iYWNrCj4gCj4gY2hlY2sgdGhlIGtlcm5lbCBEb2N1bWVudGF0aW9uL3g4Ni9wYXQudHh0LCBp
dCBzYXlzOgo+IEEuIEV4cG9ydGluZyBwYWdlcyB0byB1c2VycyB3aXRoIHJlbWFwX3Bmbl9yYW5n
ZSwgaW9fcmVtYXBfcGZuX3JhbmdlLAo+IHZtX2luc2VydF9wZm4KPiBEcml2ZXJzIHdhbnRpbmcg
dG8gZXhwb3J0IHNvbWUgcGFnZXMgdG8gdXNlcnNwYWNlIGRvIGl0IGJ5IHVzaW5nCj4gbW1hcCBp
bnRlcmZhY2UgYW5kIGEgY29tYmluYXRpb24gb2YKPiAxKSBwZ3Byb3Rfbm9uY2FjaGVkKCkKPiAy
KSBpb19yZW1hcF9wZm5fcmFuZ2UoKSBvciByZW1hcF9wZm5fcmFuZ2UoKSBvciB2bV9pbnNlcnRf
cGZuKCkKPiBXaXRoIFBBVCBzdXBwb3J0LCBhIG5ldyBBUEkgcGdwcm90X3dyaXRlY29tYmluZSBp
cyBiZWluZyBhZGRlZC4KPiBTbywgZHJpdmVycyBjYW4gY29udGludWUgdG8gdXNlIHRoZSBhYm92
ZSBzZXF1ZW5jZSwgd2l0aCBlaXRoZXIKPiBwZ3Byb3Rfbm9uY2FjaGVkKCkgb3IgcGdwcm90X3dy
aXRlY29tYmluZSgpIGluIHN0ZXAgMSwgZm9sbG93ZWQgYnkgc3RlcCAyLgo+IAo+IEluIGFkZGl0
aW9uLCBzdGVwIDIgaW50ZXJuYWxseSB0cmFja3MgdGhlIHJlZ2lvbiBhcyBVQyBvciBXQyBpbgo+
IG1lbXR5cGUgbGlzdCBpbiBvcmRlciB0byBlbnN1cmUgbm8gY29uZmxpY3RpbmcgbWFwcGluZy4K
PiAKPiBOb3RlIHRoYXQgdGhpcyBzZXQgb2YgQVBJcyBvbmx5IHdvcmtzIHdpdGggSU8gKG5vbiBS
QU0pIHJlZ2lvbnMuCj4gSWYgZHJpdmVyIGFudHMgdG8gZXhwb3J0IGEgUkFNIHJlZ2lvbiwgaXQg
aGFzIHRvIGRvIHNldF9tZW1vcnlfdWMoKSBvcgo+IHNldF9tZW1vcnlfd2MoKSBhcyBzdGVwIDAg
YWJvdmUgYW5kIGFsc28gdHJhY2sgdGhlIHVzYWdlIG9mIHRob3NlIHBhZ2VzCj4gYW5kIHVzZSBz
ZXRfbWVtb3J5X3diKCkgYmVmb3JlIHRoZSBwYWdlIGlzIGZyZWVkIHRvIGZyZWUgcG9vbC4KPiAK
PiB0aGUgZml4IGZvbGxvdyB0aGUgcGF0IGRvY3VtZW50LCBkbyBzZXRfbWVtb3J5X3djKCkgYXMg
c3RlcCAwIGFuZAo+IHVzZSB0aGUgc2V0X21lbW9yeV93YigpIGJlZm9yZSB0aGUgcGFnZSBpcyBm
cmVlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBoZSwgYm8gPGJvLmhlQGludGVsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiB6aGFuZyBqdW4gPGp1bi56aGFuZ0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogQmFpLCBKaWUgQSA8amllLmEuYmFpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9zdGFn
aW5nL2FuZHJvaWQvaW9uL2lvbl9zeXN0ZW1faGVhcC5jIHwgMjggKysrKysrKysrKysrKysrKysr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX3N5c3RlbV9oZWFw
LmMgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX3N5c3RlbV9oZWFwLmMKPiBpbmRl
eCBiODNhMWQxNmJkODkuLmQyOThiODE5NDgyMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdp
bmcvYW5kcm9pZC9pb24vaW9uX3N5c3RlbV9oZWFwLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcv
YW5kcm9pZC9pb24vaW9uX3N5c3RlbV9oZWFwLmMKPiBAQCAtMTMsNiArMTMsNyBAQAo+ICAjaW5j
bHVkZSA8bGludXgvc2NhdHRlcmxpc3QuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiAg
I2luY2x1ZGUgPGxpbnV4L3ZtYWxsb2MuaD4KPiArI2luY2x1ZGUgPGFzbS9zZXRfbWVtb3J5Lmg+
Cj4gIAo+ICAjaW5jbHVkZSAiaW9uLmgiCj4gIAo+IEBAIC0xMzQsNiArMTM1LDEzIEBAIHN0YXRp
YyBpbnQgaW9uX3N5c3RlbV9oZWFwX2FsbG9jYXRlKHN0cnVjdCBpb25faGVhcCAqaGVhcCwKPiAg
CXNnID0gdGFibGUtPnNnbDsKPiAgCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShwYWdlLCB0bXBf
cGFnZSwgJnBhZ2VzLCBscnUpIHsKPiAgCQlzZ19zZXRfcGFnZShzZywgcGFnZSwgcGFnZV9zaXpl
KHBhZ2UpLCAwKTsKPiArCj4gKyNpZmRlZiBDT05GSUdfWDg2Cj4gKwlpZiAoIShidWZmZXItPmZs
YWdzICYgSU9OX0ZMQUdfQ0FDSEVEKSkKPiArCQlzZXRfbWVtb3J5X3djKCh1bnNpZ25lZCBsb25n
KXBhZ2VfYWRkcmVzcyhzZ19wYWdlKHNnKSksCj4gKwkJCSAgICAgIFBBR0VfQUxJR04oc2ctPmxl
bmd0aCkgPj4gUEFHRV9TSElGVCk7Cj4gKyNlbmRpZgoKVGhlcmUgaXMgbm8gd2F5IHRvIGRvIHRo
aXMgd2l0aG91dCB0aGVzZSAjaWZkZWZzPyAgVGhhdCBmZWVscyBvZGQsIHdoeQpjYW4ndCB5b3Ug
anVzdCBhbHdheXMgdGVzdCBmb3IgdGhpcz8KCnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
