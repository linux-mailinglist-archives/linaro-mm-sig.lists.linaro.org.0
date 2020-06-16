Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BD594219F41
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:46:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2B1060190
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:46:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CF2666657B; Thu,  9 Jul 2020 11:46:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56EBC665C3;
	Thu,  9 Jul 2020 11:34:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C478261633
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 13:44:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B377F61810; Tue, 16 Jun 2020 13:44:03 +0000 (UTC)
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by lists.linaro.org (Postfix) with ESMTPS id 5547A61633
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 13:43:59 +0000 (UTC)
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJjNDlhNSIsICJsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-west-2.postgun.com with SMTP id
 5ee8cc994c9690533a9b621b (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 16 Jun 2020 13:43:53
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 61E5FC43391; Tue, 16 Jun 2020 13:43:53 +0000 (UTC)
Received: from [192.168.1.102] (unknown [183.83.143.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: charante)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BBD87C433C9;
 Tue, 16 Jun 2020 13:43:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BBD87C433C9
To: Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20200611114418.19852-1-sumit.semwal@linaro.org>
From: Charan Teja Kalla <charante@codeaurora.org>
Message-ID: <59f0062d-5ca9-84f1-ba92-c3463ff0e73d@codeaurora.org>
Date: Tue, 16 Jun 2020 19:13:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200611114418.19852-1-sumit.semwal@linaro.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: Arnd Bergmann <arnd@arndb.de>, Chenbo Feng <fengc@google.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org,
 syzbot+3643a18836bce555bff6@syzkaller.appspotmail.com
Subject: Re: [Linaro-mm-sig] [PATCH v2] dma-buf: Move dma_buf_release() from
 fops to dentry_ops
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

VGhhbmtzIFN1bWl0IGZvciB0aGUgZml4LgoKT24gNi8xMS8yMDIwIDU6MTQgUE0sIFN1bWl0IFNl
bXdhbCB3cm90ZToKPiBDaGFyYW4gVGVqYSByZXBvcnRlZCBhICd1c2UtYWZ0ZXItZnJlZScgaW4g
ZG1hYnVmZnNfZG5hbWUgWzFdLCB3aGljaAo+IGhhcHBlbnMgaWYgdGhlIGRtYV9idWZfcmVsZWFz
ZSgpIGlzIGNhbGxlZCB3aGlsZSB0aGUgdXNlcnNwYWNlIGlzCj4gYWNjZXNzaW5nIHRoZSBkbWFf
YnVmIHBzZXVkbyBmcydzIGRtYWJ1ZmZzX2RuYW1lKCkgaW4gYW5vdGhlciBwcm9jZXNzLAo+IGFu
ZCBkbWFfYnVmX3JlbGVhc2UoKSByZWxlYXNlcyB0aGUgZG1hYnVmIG9iamVjdCB3aGVuIHRoZSBs
YXN0IHJlZmVyZW5jZQo+IHRvIHRoZSBzdHJ1Y3QgZmlsZSBnb2VzIGF3YXkuCj4gCj4gSSBkaXNj
dXNzZWQgd2l0aCBBcm5kIEJlcmdtYW5uLCBhbmQgaGUgc3VnZ2VzdGVkIHRoYXQgcmF0aGVyIHRo
YW4gdHlpbmcKPiB0aGUgZG1hX2J1Zl9yZWxlYXNlKCkgdG8gdGhlIGZpbGVfb3BlcmF0aW9ucycg
cmVsZWFzZSgpLCB3ZSBjYW4gdGllIGl0IHRvCj4gdGhlIGRlbnRyeV9vcGVyYXRpb25zJyBkX3Jl
bGVhc2UoKSwgd2hpY2ggd2lsbCBiZSBjYWxsZWQgd2hlbiB0aGUgbGFzdCByZWYKPiB0byB0aGUg
ZGVudHJ5IGlzIHJlbW92ZWQuCj4gCj4gVGhlIHBhdGggZXhlcmNpc2VkIGJ5IF9fZnB1dCgpIGNh
bGxzIGZfb3AtPnJlbGVhc2UoKSBmaXJzdCwgYW5kIHRoZW4gY2FsbHMKPiBkcHV0LCB3aGljaCBl
dmVudHVhbGx5IGNhbGxzIGRfb3AtPmRfcmVsZWFzZSgpLgo+IAo+IEluIHRoZSAnbm9ybWFsJyBj
YXNlLCB3aGVuIG5vIHVzZXJzcGFjZSBhY2Nlc3MgaXMgaGFwcGVuaW5nIHZpYSBkbWFfYnVmCj4g
cHNldWRvIGZzLCB0aGVyZSBzaG91bGQgYmUgZXhhY3RseSBvbmUgZmQsIGZpbGUsIGRlbnRyeSBh
bmQgaW5vZGUsIHNvCj4gY2xvc2luZyB0aGUgZmQgd2lsbCBraWxsIG9mIGV2ZXJ5dGhpbmcgcmln
aHQgYXdheS4KPiAKPiBJbiB0aGUgcHJlc2VudGVkIGNhc2UsIHRoZSBkZW50cnkncyBkX3JlbGVh
c2UoKSB3aWxsIGJlIGNhbGxlZCBvbmx5IHdoZW4KPiB0aGUgZGVudHJ5J3MgbGFzdCByZWYgaXMg
cmVsZWFzZWQuCj4gCj4gVGhlcmVmb3JlLCBsZXRzIG1vdmUgZG1hX2J1Zl9yZWxlYXNlKCkgZnJv
bSBmb3BzLT5yZWxlYXNlKCkgdG8KPiBkX29wcy0+ZF9yZWxlYXNlKCkKPiAKPiBNYW55IHRoYW5r
cyB0byBBcm5kIGZvciBoaXMgRlMgaW5zaWdodHMgOikKPiAKPiBbMV06IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8xMjM4Mjc4Lwo+IAo+IEZpeGVzOiBiYjJiYjkwMzA0
MjUgKCJkbWEtYnVmOiBhZGQgRE1BX0JVRl9TRVRfTkFNRSBpb2N0bHMiKQo+IFJlcG9ydGVkLWJ5
OiBzeXpib3QrMzY0M2ExODgzNmJjZTU1NWJmZjZAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+
IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gWzUuMytdCj4gQ2M6IEFybmQgQmVyZ21hbm4g
PGFybmRAYXJuZGIuZGU+Cj4gUmVwb3J0ZWQtYnk6IENoYXJhbiBUZWphIFJlZGR5IDxjaGFyYW50
ZUBjb2RlYXVyb3JhLm9yZz4KPiBSZXZpZXdlZC1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5k
Yi5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8u
b3JnPgo+IAoKVGVzdGVkIHRoaXMgcGF0Y2ggZm9yIEFuZHJvaWQgcnVubmluZyBvbiBTbmFwZHJh
Z29uIGhhcmR3YXJlIGFuZCBzZWUgbm8KaXNzdWVzLgpUZXN0ZWQtYnk6IENoYXJhbiBUZWphIFJl
ZGR5IDxjaGFyYW50ZUBjb2RlYXVyb3JhLm9yZz4KCj4gLS0tCj4gdjI6IHBlciBBcm5kOiBNb3Zl
ZCBkbWFfYnVmX3JlbGVhc2UoKSBhYm92ZSB0byBhdm9pZCBmb3J3YXJkIGRlY2xhcmF0aW9uOwo+
ICAgICAgcmVtb3ZlZCBkZW50cnlfb3BzIGNoZWNrLgo+IC0tLQo+ICBkcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jIHwgNTQgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMKPiBpbmRleCAwMWNlMTI1ZjhlOGQuLjQxMjYyOTYwMWFkMyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYwo+IEBAIC01NCwzNyArNTQsMTEgQEAgc3RhdGljIGNoYXIgKmRtYWJ1ZmZzX2RuYW1lKHN0
cnVjdCBkZW50cnkgKmRlbnRyeSwgY2hhciAqYnVmZmVyLCBpbnQgYnVmbGVuKQo+ICAJCQkgICAg
IGRlbnRyeS0+ZF9uYW1lLm5hbWUsIHJldCA+IDAgPyBuYW1lIDogIiIpOwo+ICB9Cj4gIAo+IC1z
dGF0aWMgY29uc3Qgc3RydWN0IGRlbnRyeV9vcGVyYXRpb25zIGRtYV9idWZfZGVudHJ5X29wcyA9
IHsKPiAtCS5kX2RuYW1lID0gZG1hYnVmZnNfZG5hbWUsCj4gLX07Cj4gLQo+IC1zdGF0aWMgc3Ry
dWN0IHZmc21vdW50ICpkbWFfYnVmX21udDsKPiAtCj4gLXN0YXRpYyBpbnQgZG1hX2J1Zl9mc19p
bml0X2NvbnRleHQoc3RydWN0IGZzX2NvbnRleHQgKmZjKQo+IC17Cj4gLQlzdHJ1Y3QgcHNldWRv
X2ZzX2NvbnRleHQgKmN0eDsKPiAtCj4gLQljdHggPSBpbml0X3BzZXVkbyhmYywgRE1BX0JVRl9N
QUdJQyk7Cj4gLQlpZiAoIWN0eCkKPiAtCQlyZXR1cm4gLUVOT01FTTsKPiAtCWN0eC0+ZG9wcyA9
ICZkbWFfYnVmX2RlbnRyeV9vcHM7Cj4gLQlyZXR1cm4gMDsKPiAtfQo+IC0KPiAtc3RhdGljIHN0
cnVjdCBmaWxlX3N5c3RlbV90eXBlIGRtYV9idWZfZnNfdHlwZSA9IHsKPiAtCS5uYW1lID0gImRt
YWJ1ZiIsCj4gLQkuaW5pdF9mc19jb250ZXh0ID0gZG1hX2J1Zl9mc19pbml0X2NvbnRleHQsCj4g
LQkua2lsbF9zYiA9IGtpbGxfYW5vbl9zdXBlciwKPiAtfTsKPiAtCj4gLXN0YXRpYyBpbnQgZG1h
X2J1Zl9yZWxlYXNlKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxlKQo+ICtz
dGF0aWMgdm9pZCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5KQo+ICB7Cj4g
IAlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOwo+ICAKPiAtCWlmICghaXNfZG1hX2J1Zl9maWxlKGZp
bGUpKQo+IC0JCXJldHVybiAtRUlOVkFMOwo+IC0KPiAtCWRtYWJ1ZiA9IGZpbGUtPnByaXZhdGVf
ZGF0YTsKPiArCWRtYWJ1ZiA9IGRlbnRyeS0+ZF9mc2RhdGE7Cj4gIAo+ICAJQlVHX09OKGRtYWJ1
Zi0+dm1hcHBpbmdfY291bnRlcik7Cj4gIAo+IEBAIC0xMTAsOSArODQsMzIgQEAgc3RhdGljIGlu
dCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUp
Cj4gIAltb2R1bGVfcHV0KGRtYWJ1Zi0+b3duZXIpOwo+ICAJa2ZyZWUoZG1hYnVmLT5uYW1lKTsK
PiAgCWtmcmVlKGRtYWJ1Zik7Cj4gK30KPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZGVudHJ5
X29wZXJhdGlvbnMgZG1hX2J1Zl9kZW50cnlfb3BzID0gewo+ICsJLmRfZG5hbWUgPSBkbWFidWZm
c19kbmFtZSwKPiArCS5kX3JlbGVhc2UgPSBkbWFfYnVmX3JlbGVhc2UsCj4gK307Cj4gKwo+ICtz
dGF0aWMgc3RydWN0IHZmc21vdW50ICpkbWFfYnVmX21udDsKPiArCj4gK3N0YXRpYyBpbnQgZG1h
X2J1Zl9mc19pbml0X2NvbnRleHQoc3RydWN0IGZzX2NvbnRleHQgKmZjKQo+ICt7Cj4gKwlzdHJ1
Y3QgcHNldWRvX2ZzX2NvbnRleHQgKmN0eDsKPiArCj4gKwljdHggPSBpbml0X3BzZXVkbyhmYywg
RE1BX0JVRl9NQUdJQyk7Cj4gKwlpZiAoIWN0eCkKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCWN0
eC0+ZG9wcyA9ICZkbWFfYnVmX2RlbnRyeV9vcHM7Cj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiAr
c3RhdGljIHN0cnVjdCBmaWxlX3N5c3RlbV90eXBlIGRtYV9idWZfZnNfdHlwZSA9IHsKPiArCS5u
YW1lID0gImRtYWJ1ZiIsCj4gKwkuaW5pdF9mc19jb250ZXh0ID0gZG1hX2J1Zl9mc19pbml0X2Nv
bnRleHQsCj4gKwkua2lsbF9zYiA9IGtpbGxfYW5vbl9zdXBlciwKPiArfTsKPiArCj4gIHN0YXRp
YyBpbnQgZG1hX2J1Zl9tbWFwX2ludGVybmFsKHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3Qgdm1f
YXJlYV9zdHJ1Y3QgKnZtYSkKPiAgewo+ICAJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsKPiBAQCAt
NDEyLDcgKzQwOSw2IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfc2hvd19mZGluZm8oc3RydWN0IHNl
cV9maWxlICptLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKPiAgfQo+ICAKPiAgc3RhdGljIGNvbnN0IHN0
cnVjdCBmaWxlX29wZXJhdGlvbnMgZG1hX2J1Zl9mb3BzID0gewo+IC0JLnJlbGVhc2UJPSBkbWFf
YnVmX3JlbGVhc2UsCj4gIAkubW1hcAkJPSBkbWFfYnVmX21tYXBfaW50ZXJuYWwsCj4gIAkubGxz
ZWVrCQk9IGRtYV9idWZfbGxzZWVrLAo+ICAJLnBvbGwJCT0gZG1hX2J1Zl9wb2xsLAo+IAoKLS0g
ClRoZSBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhIG1lbWJlciBvZiB0aGUg
Q29kZSBBdXJvcmEKRm9ydW0sIGEgTGludXggRm91bmRhdGlvbiBDb2xsYWJvcmF0aXZlIFByb2pl
Y3QKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
