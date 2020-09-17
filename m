Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D188426D39B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 08:24:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4196A666DD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 06:24:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 362BC666D8; Thu, 17 Sep 2020 06:24:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6882666D5;
	Thu, 17 Sep 2020 06:23:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C66E4666D3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 06:23:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AF0BC666D5; Thu, 17 Sep 2020 06:23:32 +0000 (UTC)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by lists.linaro.org (Postfix) with ESMTPS id 78FB6666D3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 06:23:31 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id x69so1210181oia.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 23:23:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=t5xSYs5WyUHGoVugyXIsV4oBDVq0zP8fjjYyhPxmS5A=;
 b=g82pPs9jbWeVz8w3f5hjGO4Ou7bxjx30nMzmoA4mL+6gsvUhPB2Ju2PBx/UlEbzYq1
 MYzfBfbSVK7zDaiKDB6Q+ZR+aZKZHHBLv3vkRMB/LVSWGBznYzm2CHF9vE5K1UXpauOi
 Zmu0bcO7fEZmgNpHeXZByxdYpGGUOI//dssZTEre3spJhbQ1RiNYjcAxLymrPeZIa6+s
 Yd7+CkGKHFUMqZywADypFbWY2Ql/fe/36STVA2RU6zj9iyqgXGK1SkNA46pYc7iRtruT
 P1bkxBNCYJ5RFzioqqbLzWYs8vVNR+rMHzGt2NbMrViAY8bJbcCqxsdXOXIhRbpAtphh
 q1Kg==
X-Gm-Message-State: AOAM530Y4gPSgVny78rK9hkw0qK/P5Nm/flh4rCZYA4jQdBBFTD55VyF
 i4GrjrYuWIysyCU4lT8+Abez1OabY0T8/jZNBEAeiA==
X-Google-Smtp-Source: ABdhPJzB3ReC52Ku2iqgR54KZacCgPTbpQb6FYFGgv4R5udMulfkKOhc4e2KvAwA9Q2qQA7f0ioN8nPBsAA6wdCsyJs=
X-Received: by 2002:aca:6083:: with SMTP id u125mr5461400oib.14.1600323810870; 
 Wed, 16 Sep 2020 23:23:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <40cd26ae-b855-4627-5a13-4dcea5d622f6@gmail.com>
 <20200914140632.GD1221970@ziepe.ca>
 <9302e4e0-0ff0-8b00-ada1-85feefb49e88@gmail.com>
 <20200916095359.GD438822@phenom.ffwll.local>
 <20200916140710.GA8409@ziepe.ca>
 <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
 <CAKMK7uFdwrT3HACPh3ADAKvhXJ-Hf3dExZmgJVAQ1KKjSai_0w@mail.gmail.com>
 <aa953b09-53b1-104b-dc4b-156ad8a75e62@gmail.com>
In-Reply-To: <aa953b09-53b1-104b-dc4b-156ad8a75e62@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 17 Sep 2020 08:23:19 +0200
Message-ID: <CAKMK7uHJNRzCJfWVSmMrLmGXE0qo+OCXiMd+zPTOkeG2pnVrmQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Jason Gunthorpe <jgg@ziepe.ca>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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

T24gV2VkLCBTZXAgMTYsIDIwMjAgYXQgNTozMSBQTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBBbSAxNi4wOS4yMCB1bSAxNzoy
NCBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiBPbiBXZWQsIFNlcCAxNiwgMjAyMCBhdCA0OjE0
IFBNIENocmlzdGlhbiBLw7ZuaWcKPiA+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3Rl
Ogo+ID4+IEFtIDE2LjA5LjIwIHVtIDE2OjA3IHNjaHJpZWIgSmFzb24gR3VudGhvcnBlOgo+ID4+
PiBPbiBXZWQsIFNlcCAxNiwgMjAyMCBhdCAxMTo1Mzo1OUFNICswMjAwLCBEYW5pZWwgVmV0dGVy
IHdyb3RlOgo+ID4+Pgo+ID4+Pj4gQnV0IHdpdGhpbiB0aGUgZHJpdmVyLCB3ZSBnZW5lcmFsbHkg
bmVlZCB0aG91c2FuZHMgb2YgdGhlc2UsIGFuZCB0aGF0Cj4gPj4+PiB0ZW5kcyB0byBicmluZyBm
ZCBleGhhdXN0aW9uIHByb2JsZW1zIHdpdGggaXQuIFRoYXQncyB3aHkgYWxsIHRoZSBwcml2YXRl
Cj4gPj4+PiBidWZmZXIgb2JqZWN0cyB3aGljaCBhcmVuJ3Qgc2hhcmVkIHdpdGggb3RoZXIgcHJv
Y2VzcyBvciBvdGhlciBkcml2ZXJzIGFyZQo+ID4+Pj4gaGFuZGxlcyBvbmx5IHZhbGlkIGZvciBh
IHNwZWNpZmljIGZkIGluc3RhbmNlIG9mIHRoZSBkcm0gY2hhcmRldiAoZWFjaAo+ID4+Pj4gb3Bl
biBnZXRzIHRoZWlyIG93biBuYW1lc3BhY2UpLCBhbmQgb25seSBmb3IgaW9jdGxzIGRvbmUgb24g
dGhhdCBjaGFyZGV2Lgo+ID4+Pj4gQW5kIGZvciBtbWFwIHdlIGFzc2lnbiBmYWtlIChidXQgdW5p
cXVlIGFjcm9zcyBhbGwgb3BlbiBmZCBvbiBpdCkgb2Zmc2V0cwo+ID4+Pj4gd2l0aGluIHRoZSBv
dmVyYWxsIGNoYXJkZXYuIEhlbmNlIGFsbCB0aGUgcGdvZmYgbWFuZ2xpbmcgYW5kIHJlLW1hbmds
aW5nLgo+ID4+PiBBcmUgdGhleSBzdGlsbCB1bmlxdWUgc3RydWN0IGZpbGVzPyBKdXN0IHdpdGhv
dXQgYSBmZG5vPwo+ID4+IFllcywgZXhhY3RseS4KPiA+IE5vdCBlbnRpcmVseSwgc2luY2UgZG1h
LWJ1ZiBoYXBwZW5lZCBhZnRlciBkcm0gY2hhcmRldiwgc28gZm9yIHRoYXQKPiA+IGhpc3Rvcmlj
YWwgcmVhc29uIHRoZSB1bmRlcmx5aW5nIHN0cnVjdCBmaWxlIGlzIHNoYXJlZCwgc2luY2UgaXQn
cyB0aGUKPiA+IGRybSBjaGFyZGV2LiBCdXQgc2luY2UgdGhhdCdzIHBlci1kZXZpY2Ugd2UgZG9u
J3QgaGF2ZSBhIHByb2JsZW0gaW4KPiA+IHByYWN0aWNlIHdpdGggZGlmZmVyZW50IHZtX29wcywg
c2luY2UgdGhvc2UgYXJlIGFsc28gcGVyLWRldmljZS4gQnV0Cj4gPiB5ZWFoIHdlIGNvdWxkIGZp
c2ggb3V0IHNvbWUgZW50aXJlbHkgaGlkZGVuIHBlci1vYmplY3Qgc3RydWN0IGZpbGUgaWYKPiA+
IHRoYXQncyByZXF1aXJlZCBmb3Igc29tZSBtbSBpbnRlcm5hbCByZWFzb25zLgo+Cj4gSHVpPyBP
ayB0aGF0IGlzIGp1c3QgdGhlIGhhbmRsaW5nIGluIGk5MTUsIGlzbid0IGl0Pwo+Cj4gQXMgZmFy
IGFzIEkga25vdyB3ZSBjcmVhdGUgYW4gdW5pcXVlIHN0cnVjdCBmaWxlIGZvciBlYWNoIERNQS1i
dWYuCgpZZXMgZG1hLWJ1ZiwgYnV0IHRoYXQgZ2V0cyBmb3J3YXJkZWQgdG8gdGhlIG9yaWdpbmFs
IGRybSBjaGFyZGV2IHdoaWNoCm9yaWdpbmFsbHkgZXhwb3J0ZWQgdGhlIGJ1ZmZlci4gSXQncyBv
bmx5IHRoZXJlIHdoZXJlIHRoZSBmb3J3YXJkaW5nCmNoYWluIHN0b3BzLiBUaGUgb3RoZXIgdGhp
bmcgaXMgdGhhdCBpaXJjIHdlIGhhdmUgYSBzaW5nbGV0b24KYW5vbl9pbm9kZSBiZWhpbmQgYWxs
IHRoZSBkbWEtYnVmLCBzbyB0aGV5J2Qgc2hhcmUgYWxsIHRoZSBzYW1lCmFkZHJlc3Nfc3BhY2Ug
YW5kIHNvIHdvdWxkIGFsbCBhbGlhcyBmb3IgdW5tYXBfbWFwcGluZ19yYW5nZSAoSSB0aGluawph
dCBsZWFzdCkuCi1EYW5pZWwKCj4KPiBSZWdhcmRzLAo+IENocmlzdGlhbi4KPgo+Cj4gPiAtRGFu
aWVsCj4gPgo+ID4+Pj4gSGVuY2Ugd2h5IHdlJ2QgbGlrZSB0byBiZSBhYmxlIHRvIGZvcndhcmQg
YWxpYXNpbmcgbWFwcGluZ3MgYW5kIGFkanVzdCB0aGUKPiA+Pj4+IGZpbGUgYW5kIHBnb2ZmLCB3
aGlsZSBob3BlZnVsbHkgZXZlcnl0aGluZyBrZWVwcyB3b3JraW5nLiBJIHRob3VnaHQgdGhpcwo+
ID4+Pj4gd291bGQgd29yaywgYnV0IENocmlzdGlhbiBub3RpY2VkIGl0IGRvZXNuJ3QgcmVhbGx5
Lgo+ID4+PiBJdCBzZWVtcyByZWFzb25hYmxlIHRvIG1lIHRoYXQgdGhlIGRtYSBidWYgc2hvdWxk
IGJlIHRoZSBvd25lciBvZiB0aGUKPiA+Pj4gVk1BLCBvdGhlcndpc2UgbGlrZSB5b3Ugc2F5LCB0
aGVyZSBpcyBhIGJpZyBtZXNzIGF0dGFjaGluZyB0aGUgY3VzdG9tCj4gPj4+IHZtYSBvcHMgYW5k
IHdoYXQgbm90IHRvIHRoZSBwcm9wZXIgZG1hIGJ1Zi4KPiA+Pj4KPiA+Pj4gSSBkb24ndCBzZWUg
YW55dGhpbmcgb2J2aW91c2x5IGFnYWluc3QgdGhpcyBpbiBtbWFwX3JlZ2lvbigpIC0gd2h5IGRp
ZAo+ID4+PiBDaHJpdGlhbiBub3RpY2UgaXQgZG9lc24ndCByZWFsbHkgd29yaz8KPiA+PiBUbyBj
bGFyaWZ5IEkgdGhpbmsgdGhpcyBtaWdodCB3b3JrLgo+ID4+Cj4gPj4gSSBqdXN0IGhhZCB0aGUg
c2FtZSAiSXMgdGhhdCBsZWdhbD8iLCAiV2hhdCBhYm91dCBzZWN1cml0eT8iLCBldGMuLgo+ID4+
IHF1ZXN0aW9ucyB5b3UgcmFpc2VkIGFzIHdlbGwuCj4gPj4KPiA+PiBJdCBzZWVtcyBsaWtlIGEg
c291cmNlIG9mIHRyb3VibGUgc28gSSB0aG91Z2h0IGJldHRlciBhc2sgc29tZWJvZHkgbW9yZQo+
ID4+IGZhbWlsaWFyIHdpdGggdGhhdC4KPiA+Pgo+ID4+IENocmlzdGlhbi4KPiA+Pgo+ID4+PiBK
YXNvbgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+ID4+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiA+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaS1kZXZlbAo+ID4KPiA+Cj4KCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdp
bmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
