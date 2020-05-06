Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 825551C6C55
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2020 11:00:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27A4765F82
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2020 09:00:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 17F7065F7F; Wed,  6 May 2020 09:00:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 766C961731;
	Wed,  6 May 2020 09:00:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E611561635
 for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2020 09:00:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D611261731; Wed,  6 May 2020 09:00:06 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 5F1A561726
 for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2020 09:00:05 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCDA5206B8;
 Wed,  6 May 2020 09:00:03 +0000 (UTC)
Date: Wed, 6 May 2020 11:00:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Charan Teja Kalla <charante@codeaurora.org>
Message-ID: <20200506090002.GA2619587@kroah.com>
References: <1588060442-28638-1-git-send-email-charante@codeaurora.org>
 <20200505100806.GA4177627@kroah.com>
 <8424b2ac-3ea6-6e5b-b99c-951a569f493d@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8424b2ac-3ea6-6e5b-b99c-951a569f493d@codeaurora.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: fengc@google.com, linux-kernel@vger.kernel.org, ghackmann@google.com,
 linaro-mm-sig@lists.linaro.org, vinmenon@codeaurora.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: fix use-after-free in
	dmabuffs_dname
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

T24gV2VkLCBNYXkgMDYsIDIwMjAgYXQgMDI6MDA6MTBQTSArMDUzMCwgQ2hhcmFuIFRlamEgS2Fs
bGEgd3JvdGU6Cj4gVGhhbmsgeW91IEdyZWcgZm9yIHRoZSByZXBseS4KPiAKPiBPbiA1LzUvMjAy
MCAzOjM4IFBNLCBHcmVnIEtIIHdyb3RlOgo+ID4gT24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMDE6
MjQ6MDJQTSArMDUzMCwgQ2hhcmFuIFRlamEgUmVkZHkgd3JvdGU6Cj4gPiA+IFRoZSBmb2xsb3dp
bmcgcmFjZSBvY2N1cnMgd2hpbGUgYWNjZXNzaW5nIHRoZSBkbWFidWYgb2JqZWN0IGV4cG9ydGVk
IGFzCj4gPiA+IGZpbGU6Cj4gPiA+IFAxCQkJCVAyCj4gPiA+IGRtYV9idWZfcmVsZWFzZSgpICAg
ICAgICAgIGRtYWJ1ZmZzX2RuYW1lKCkKPiA+ID4gCQkJICAgW3NheSBsc29mIHJlYWRpbmcgL3By
b2MvPFAxIHBpZD4vZmQvPG51bT5dCj4gPiA+IAo+ID4gPiAJCQkgICByZWFkIGRtYWJ1ZiBzdG9y
ZWQgaW4gZGVudHJ5LT5mc2RhdGEKPiA+ID4gRnJlZSB0aGUgZG1hYnVmIG9iamVjdAo+ID4gPiAJ
CQkgICBTdGFydCBhY2Nlc3NpbmcgdGhlIGRtYWJ1ZiBzdHJ1Y3R1cmUKPiA+ID4gCj4gPiA+IElu
IHRoZSBhYm92ZSBkZXNjcmlwdGlvbiwgdGhlIGRtYWJ1ZiBvYmplY3QgZnJlZWQgaW4gUDEgaXMg
YmVpbmcKPiA+ID4gYWNjZXNzZWQgZnJvbSBQMiB3aGljaCBpcyByZXN1bHRpbmcgaW50byB0aGUg
dXNlLWFmdGVyLWZyZWUuIEJlbG93IGlzCj4gPiA+IHRoZSBkdW1wIHN0YWNrIHJlcG9ydGVkLgo+
ID4gPiAKPiA+ID4gQ2FsbCBUcmFjZToKPiA+ID4gICBrYXNhbl9yZXBvcnQrMHgxMi8weDIwCj4g
PiA+ICAgX19hc2FuX3JlcG9ydF9sb2FkOF9ub2Fib3J0KzB4MTQvMHgyMAo+ID4gPiAgIGRtYWJ1
ZmZzX2RuYW1lKzB4NGY0LzB4NTYwCj4gPiA+ICAgdG9tb3lvX3JlYWxwYXRoX2Zyb21fcGF0aCsw
eDE2NS8weDY2MAo+ID4gPiAgIHRvbW95b19nZXRfcmVhbHBhdGgKPiA+ID4gICB0b21veW9fY2hl
Y2tfb3Blbl9wZXJtaXNzaW9uKzB4MmEzLzB4M2UwCj4gPiA+ICAgdG9tb3lvX2ZpbGVfb3Blbgo+
ID4gPiAgIHRvbW95b19maWxlX29wZW4rMHhhOS8weGQwCj4gPiA+ICAgc2VjdXJpdHlfZmlsZV9v
cGVuKzB4NzEvMHgzMDAKPiA+ID4gICBkb19kZW50cnlfb3BlbisweDM3YS8weDEzODAKPiA+ID4g
ICB2ZnNfb3BlbisweGEwLzB4ZDAKPiA+ID4gICBwYXRoX29wZW5hdCsweDEyZWUvMHgzNDkwCj4g
PiA+ICAgZG9fZmlscF9vcGVuKzB4MTkyLzB4MjYwCj4gPiA+ICAgZG9fc3lzX29wZW5hdDIrMHg1
ZWIvMHg3ZTAKPiA+ID4gICBkb19zeXNfb3BlbisweGYyLzB4MTgwCj4gPiA+IAo+ID4gPiBGaXhl
czogYmIyYmI5MCAoImRtYS1idWY6IGFkZCBETUFfQlVGX1NFVF9OQU1FIGlvY3RscyIpCj4gPiBO
aXQsIHBsZWFzZSByZWFkIHRoZSBkb2N1bWVudGF0aW9uIGZvciBob3cgdG8gZG8gYSBGaXhlczog
bGluZSBwcm9wZXJseSwKPiA+IHlvdSBuZWVkIG1vcmUgZGlnaXRzOgo+ID4gCUZpeGVzOiBiYjJi
YjkwMzA0MjUgKCJkbWEtYnVmOiBhZGQgRE1BX0JVRl9TRVRfTkFNRSBpb2N0bHMiKQo+IAo+IAo+
IFdpbGwgdXBkYXRlIHRoZSBwYXRjaAo+IAo+IAo+ID4gPiBSZXBvcnRlZC1ieTpzeXpib3QrMzY0
M2ExODgzNmJjZTU1NWJmZjZAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBDaGFyYW4gVGVqYSBSZWRkeTxjaGFyYW50ZUBjb2RlYXVyb3JhLm9yZz4KPiA+IEFs
c28sIGFueSByZWFzb24geW91IGRpZG4ndCBpbmNsdWRlIHRoZSBvdGhlciBtYWlsaW5nIGxpc3Rz
IHRoYXQKPiA+IGdldF9tYWludGFpbmVyLnBsIHNhaWQgdG8/Cj4gCj4gCj4gUmVhbGx5IHNvcnJ5
IGZvciBub3Qgc2VuZGluZyB0byBjb21wbGV0ZSBsaXN0LiBBZGRlZCBub3cuCj4gCj4gCj4gPiBB
bmQgZmluYWxseSwgbm8gY2M6IHN0YWJsZSBpbiB0aGUgcy1vLWIgYXJlYSBmb3IgYW4gaXNzdWUg
dGhhdCBuZWVkcyB0bwo+ID4gYmUgYmFja3BvcnRlZCB0byBvbGRlciBrZXJuZWxzPwo+IAo+IAo+
IFdpbGwgdXBkYXRlIHRoZSBwYXRjaC4KPiAKPiAKPiA+IAo+ID4gPiAtLS0KPiA+ID4gICBkcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKystLQo+ID4g
PiAgIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgMSArCj4gPiA+ICAgMiBmaWxlcyBjaGFu
Z2VkLCAyNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jCj4gPiA+IGluZGV4IDU3MGM5MjMuLjA2OWQ4Zjc4IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMKPiA+ID4gQEAgLTI1LDYgKzI1LDcgQEAKPiA+ID4gICAjaW5jbHVkZSA8bGludXgvbW0uaD4K
PiA+ID4gICAjaW5jbHVkZSA8bGludXgvbW91bnQuaD4KPiA+ID4gICAjaW5jbHVkZSA8bGludXgv
cHNldWRvX2ZzLmg+Cj4gPiA+ICsjaW5jbHVkZSA8bGludXgvZGNhY2hlLmg+Cj4gPiA+ICAgI2lu
Y2x1ZGUgPHVhcGkvbGludXgvZG1hLWJ1Zi5oPgo+ID4gPiAgICNpbmNsdWRlIDx1YXBpL2xpbnV4
L21hZ2ljLmg+Cj4gPiA+IEBAIC0zOCwxOCArMzksMzQgQEAgc3RydWN0IGRtYV9idWZfbGlzdCB7
Cj4gPiA+ICAgc3RhdGljIHN0cnVjdCBkbWFfYnVmX2xpc3QgZGJfbGlzdDsKPiA+ID4gK3N0YXRp
YyB2b2lkIGRtYWJ1Zl9kZW50X3B1dChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQo+ID4gPiArewo+
ID4gPiArCWlmIChhdG9taWNfZGVjX2FuZF90ZXN0KCZkbWFidWYtPmRlbnRfY291bnQpKSB7Cj4g
PiA+ICsJCWtmcmVlKGRtYWJ1Zi0+bmFtZSk7Cj4gPiA+ICsJCWtmcmVlKGRtYWJ1Zik7Cj4gPiA+
ICsJfQo+ID4gV2h5IG5vdCBqdXN0IHVzZSBhIGtyZWYgaW5zdGVhZCBvZiBhbiBvcGVuLWNvZGVk
IGF0b21pYyB2YWx1ZT8KPiAKPiAKPiBLcmVmIGFwcHJvYWNoIGxvb2tzIGNsZWFuZXIuIHdpbGwg
dXBkYXRlIHRoZSBwYXRjaCBhY2NvcmRpbmdseS4KPiAKPiAKPiA+ID4gK30KPiA+ID4gKwo+ID4g
PiAgIHN0YXRpYyBjaGFyICpkbWFidWZmc19kbmFtZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnksIGNo
YXIgKmJ1ZmZlciwgaW50IGJ1ZmxlbikKPiA+ID4gICB7Cj4gPiA+ICAgCXN0cnVjdCBkbWFfYnVm
ICpkbWFidWY7Cj4gPiA+ICAgCWNoYXIgbmFtZVtETUFfQlVGX05BTUVfTEVOXTsKPiA+ID4gICAJ
c2l6ZV90IHJldCA9IDA7Cj4gPiA+ICsJc3Bpbl9sb2NrKCZkZW50cnktPmRfbG9jayk7Cj4gPiA+
ICAgCWRtYWJ1ZiA9IGRlbnRyeS0+ZF9mc2RhdGE7Cj4gPiA+ICsJaWYgKCFkbWFidWYgfHwgIWF0
b21pY19hZGRfdW5sZXNzKCZkbWFidWYtPmRlbnRfY291bnQsIDEsIDApKSB7Cj4gPiA+ICsJCXNw
aW5fdW5sb2NrKCZkZW50cnktPmRfbG9jayk7Cj4gPiA+ICsJCWdvdG8gb3V0Owo+ID4gSG93IGNh
biBkbWFidWYgbm90IGJlIHZhbGlkIGhlcmU/Cj4gPiAKPiA+IEFuZCBpc24ndCB0aGVyZSBhbHJl
YWR5IGEgdXNlY291bnQgZm9yIHRoZSBidWZmZXI/Cj4gCj4gCj4gZG1hYnVmIGV4cG9ydGVkIGFz
IGZpbGUgc2ltcGx5IHJlbGllcyBvbiB0aGF0IGZpbGUncyByZWZjb3VudCwgdGh1cyBmcHV0KCkK
PiByZWxlYXNlcyB0aGUgZG1hYnVmLgo+IAo+IFdlIGFyZSBzdG9yaW5nIHRoZSBkbWFidWYgaW4g
dGhlIGRlbnRyeS0+ZF9mc2RhdGEgYnV0IHRoZXJlIGlzIG5vIGJpbmRpbmcKPiBiZXR3ZWVuIHRo
ZSBkZW50cnkgYW5kIHRoZSBkbWFidWYuIFNvLCBmbG93IHdpbGwgYmUgbGlrZQo+IAo+IDEpIFAx
IGNhbGxzIGZwdXQoZG1hYnVmX2ZkKQo+IAo+IDIpIFAyIHRyeWluZyB0byBhY2Nlc3MgdGhlIGZp
bGUgaW5mb3JtYXRpb24gb2YgUDEuCj4gwqDCoMKgIEVnOiBsc29mIGNvbW1hbmQgdHJ5aW5nIHRv
IGxpc3Qgb3V0IHRoZSBkbWFidWZfZmQgaW5mb3JtYXRpb24gdXNpbmcKPiAvcHJvYy88UDEgcGlk
Pi9mZC9kbWFidWZfZmQKPiAKPiAzKSBQMSBjYWxscyB0aGUgZmlsZS0+Zl9vcC0+cmVsZWFzZShk
bWFidWZfZmRfZmlsZSkoZW5kcyB1cCBpbiBjYWxsaW5nCj4gZG1hX2J1Zl9yZWxlYXNlKCkpLMKg
wqAgdGh1cyBmcmVlcyB1cCB0aGUgZG1hYnVmIGJ1ZmZlci4KPiAKPiA0KSBQMiBhY2Nlc3MgdGhl
IGRtYWJ1ZiBzdG9yZWQgaW4gdGhlIGRlbnRyeS0+ZF9mc2RhdGEgd2hpY2ggd2FzIGZyZWVkIGlu
Cj4gc3RlcCAzLgo+IAo+IFNvIHdlIG5lZWQgdG8gaGF2ZSBzb21lIHJlZmNvdW50IG1lY2hhbmlz
bSB0byBhdm9pZCB0aGUgdXNlLWFmdGVyLWZyZWUgaW4KPiBzdGVwIDQuCgpPaywgYnV0IHdhdGNo
IG91dCwgbm93IHlvdSBoYXZlIDIgZGlmZmVyZW50IHJlZmVyZW5jZSBjb3VudHMgZm9yIHRoZQpz
YW1lIHN0cnVjdHVyZS4gIEtlZXBpbmcgdGhlbSBjb29yZGluYXRlZCBpcyBhbG1vc3QgYWx3YXlz
IGFuIGltcG9zc2libGUKdGFzayBzbyB5b3UgbmVlZCB0byBvbmx5IHJlbHkgb24gb25lLiAgSWYg
eW91IGNhbid0IHVzZSB0aGUgZmlsZSBhcGksCmp1c3QgZHJvcCBhbGwgb2YgdGhlIHJlZmVyZW5j
ZSBjb3VudGluZyBsb2dpYyBpbiB0aGVyZSBhbmQgb25seSB1c2UgdGhlCmtyZWYgb25lLgoKZ29v
ZCBsdWNrIQoKZ3JlZyBrLWgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
