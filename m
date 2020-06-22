Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD94202FCB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2020 08:37:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 880636174C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2020 06:37:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 710E8617EE; Mon, 22 Jun 2020 06:37:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56FDD617EB;
	Mon, 22 Jun 2020 06:36:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3CB67616DC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2020 06:35:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2FE1C618C4; Mon, 22 Jun 2020 06:35:53 +0000 (UTC)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by lists.linaro.org (Postfix) with ESMTPS id 2B271616DC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2020 06:34:28 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id n6so12221791otl.0
 for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Jun 2020 23:34:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fA+O46nAmMQU+XrEe2RpDVyUBd8QOlVEvixhrlksQsk=;
 b=BKbMQlj5j/hgZCvXoCUnoktP2jC0ExzogK10gZ6s4rEoM1XN6VYoUzRRYRii8w6epY
 KFvsSkN9wfuhU3Uv+z4AocB52PoYIlFSmV3DSTJOpDod0QFxNayNPzdADrS/74+ybbJf
 AmZDRz5/6bcVmyE7JzTtP4rc52aXxRZAPoU/0pvHaY5t3Cw9geU03Vu5hege/nSupf9m
 DsObFCqywYfaqo0jr/X7SIEwiz3h31IjWxqpSSpIMRiTKWPWFUAzQwiFakGB9TsZyHRI
 21h+Y9Q5xcZn+aRmn0LoSgxlWeFJMYrJathaAzpdydxVJmW6UgZWn+cgu6nb3P6qOZOv
 knVw==
X-Gm-Message-State: AOAM533/wu5WIiqYTMAI4vLD+yRsw1PQ2AbrLHHP4Lg5VGG++7NQ5H8T
 dbs8FH8WOLVGQXrxOAYUVKOn/IbmUZefqdvaXhfGnAOw
X-Google-Smtp-Source: ABdhPJxjGYyJCmNve/9hcTZprbdLfZ54EQVt63NfNc2V6+/VXUjw/7gvzl9rJpUsQ+QN/VfX1wCUG1xliQmhzsSqEsY=
X-Received: by 2002:a9d:64da:: with SMTP id n26mr7434635otl.36.1592807667489; 
 Sun, 21 Jun 2020 23:34:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200611114418.19852-1-sumit.semwal@linaro.org>
 <59f0062d-5ca9-84f1-ba92-c3463ff0e73d@codeaurora.org>
In-Reply-To: <59f0062d-5ca9-84f1-ba92-c3463ff0e73d@codeaurora.org>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Mon, 22 Jun 2020 12:04:16 +0530
Message-ID: <CAO_48GHRf0AHTVFhroVe4O=+QVeHKNfKNwAf+5ioYyi1h7+Hsw@mail.gmail.com>
To: Charan Teja Kalla <charante@codeaurora.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>, Chenbo Feng <fengc@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 syzbot+3643a18836bce555bff6@syzkaller.appspotmail.com,
 "# 3.4.x" <stable@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
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

SGVsbG8gQ2hhcmFuLAoKT24gVHVlLCAxNiBKdW4gMjAyMCBhdCAxOToxMywgQ2hhcmFuIFRlamEg
S2FsbGEgPGNoYXJhbnRlQGNvZGVhdXJvcmEub3JnPiB3cm90ZToKPgo+IFRoYW5rcyBTdW1pdCBm
b3IgdGhlIGZpeC4KPgo+IE9uIDYvMTEvMjAyMCA1OjE0IFBNLCBTdW1pdCBTZW13YWwgd3JvdGU6
Cj4gPiBDaGFyYW4gVGVqYSByZXBvcnRlZCBhICd1c2UtYWZ0ZXItZnJlZScgaW4gZG1hYnVmZnNf
ZG5hbWUgWzFdLCB3aGljaAo+ID4gaGFwcGVucyBpZiB0aGUgZG1hX2J1Zl9yZWxlYXNlKCkgaXMg
Y2FsbGVkIHdoaWxlIHRoZSB1c2Vyc3BhY2UgaXMKPiA+IGFjY2Vzc2luZyB0aGUgZG1hX2J1ZiBw
c2V1ZG8gZnMncyBkbWFidWZmc19kbmFtZSgpIGluIGFub3RoZXIgcHJvY2VzcywKPiA+IGFuZCBk
bWFfYnVmX3JlbGVhc2UoKSByZWxlYXNlcyB0aGUgZG1hYnVmIG9iamVjdCB3aGVuIHRoZSBsYXN0
IHJlZmVyZW5jZQo+ID4gdG8gdGhlIHN0cnVjdCBmaWxlIGdvZXMgYXdheS4KPiA+Cj4gPiBJIGRp
c2N1c3NlZCB3aXRoIEFybmQgQmVyZ21hbm4sIGFuZCBoZSBzdWdnZXN0ZWQgdGhhdCByYXRoZXIg
dGhhbiB0eWluZwo+ID4gdGhlIGRtYV9idWZfcmVsZWFzZSgpIHRvIHRoZSBmaWxlX29wZXJhdGlv
bnMnIHJlbGVhc2UoKSwgd2UgY2FuIHRpZSBpdCB0bwo+ID4gdGhlIGRlbnRyeV9vcGVyYXRpb25z
JyBkX3JlbGVhc2UoKSwgd2hpY2ggd2lsbCBiZSBjYWxsZWQgd2hlbiB0aGUgbGFzdCByZWYKPiA+
IHRvIHRoZSBkZW50cnkgaXMgcmVtb3ZlZC4KPiA+Cj4gPiBUaGUgcGF0aCBleGVyY2lzZWQgYnkg
X19mcHV0KCkgY2FsbHMgZl9vcC0+cmVsZWFzZSgpIGZpcnN0LCBhbmQgdGhlbiBjYWxscwo+ID4g
ZHB1dCwgd2hpY2ggZXZlbnR1YWxseSBjYWxscyBkX29wLT5kX3JlbGVhc2UoKS4KPiA+Cj4gPiBJ
biB0aGUgJ25vcm1hbCcgY2FzZSwgd2hlbiBubyB1c2Vyc3BhY2UgYWNjZXNzIGlzIGhhcHBlbmlu
ZyB2aWEgZG1hX2J1Zgo+ID4gcHNldWRvIGZzLCB0aGVyZSBzaG91bGQgYmUgZXhhY3RseSBvbmUg
ZmQsIGZpbGUsIGRlbnRyeSBhbmQgaW5vZGUsIHNvCj4gPiBjbG9zaW5nIHRoZSBmZCB3aWxsIGtp
bGwgb2YgZXZlcnl0aGluZyByaWdodCBhd2F5Lgo+ID4KPiA+IEluIHRoZSBwcmVzZW50ZWQgY2Fz
ZSwgdGhlIGRlbnRyeSdzIGRfcmVsZWFzZSgpIHdpbGwgYmUgY2FsbGVkIG9ubHkgd2hlbgo+ID4g
dGhlIGRlbnRyeSdzIGxhc3QgcmVmIGlzIHJlbGVhc2VkLgo+ID4KPiA+IFRoZXJlZm9yZSwgbGV0
cyBtb3ZlIGRtYV9idWZfcmVsZWFzZSgpIGZyb20gZm9wcy0+cmVsZWFzZSgpIHRvCj4gPiBkX29w
cy0+ZF9yZWxlYXNlKCkKPiA+Cj4gPiBNYW55IHRoYW5rcyB0byBBcm5kIGZvciBoaXMgRlMgaW5z
aWdodHMgOikKPiA+Cj4gPiBbMV06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9w
YXRjaC8xMjM4Mjc4Lwo+ID4KPiA+IEZpeGVzOiBiYjJiYjkwMzA0MjUgKCJkbWEtYnVmOiBhZGQg
RE1BX0JVRl9TRVRfTkFNRSBpb2N0bHMiKQo+ID4gUmVwb3J0ZWQtYnk6IHN5emJvdCszNjQzYTE4
ODM2YmNlNTU1YmZmNkBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCj4gPiBDYzogPHN0YWJsZUB2
Z2VyLmtlcm5lbC5vcmc+IFs1LjMrXQo+ID4gQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIu
ZGU+Cj4gPiBSZXBvcnRlZC1ieTogQ2hhcmFuIFRlamEgUmVkZHkgPGNoYXJhbnRlQGNvZGVhdXJv
cmEub3JnPgo+ID4gUmV2aWV3ZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+
ID4KPgo+IFRlc3RlZCB0aGlzIHBhdGNoIGZvciBBbmRyb2lkIHJ1bm5pbmcgb24gU25hcGRyYWdv
biBoYXJkd2FyZSBhbmQgc2VlIG5vCj4gaXNzdWVzLgo+IFRlc3RlZC1ieTogQ2hhcmFuIFRlamEg
UmVkZHkgPGNoYXJhbnRlQGNvZGVhdXJvcmEub3JnPgpUaGFua3MgZm9yIHlvdXIgdGVzdGVkLWJ5
LCBhcHByZWNpYXRlIGl0IQoKQ2hyaXMsCmFueSBsdWNrIHdpdGggeW91ciBDSSB0byB0ZXN0IGlm
IHRoaXMgYWxzbyBoZWxwcyB5b3VyCmRtYV9idWZfcmVsZWFzZSgpIGJ1ZyB0aGF0IHlvdSBndXlz
IGhhdmUgc2Vlbj8KCklmIHlvdSd2ZSBub3QgYmVlbiBhYmxlIHRvIHRlc3QsIGFuZCB0aGVyZSBh
cmUgbm8gbW9yZSBvYmplY3Rpb25zIGJ5CkVPRCB0b2RheSwgSSB3aWxsIG1lcmdlIHRoaXMgdG8g
dGhlIGRybS1taXNjLWZpeGVzIGJyYW5jaC4KCj4KPiA+IC0tLQo+ID4gdjI6IHBlciBBcm5kOiBN
b3ZlZCBkbWFfYnVmX3JlbGVhc2UoKSBhYm92ZSB0byBhdm9pZCBmb3J3YXJkIGRlY2xhcmF0aW9u
Owo+ID4gICAgICByZW1vdmVkIGRlbnRyeV9vcHMgY2hlY2suCj4gPiAtLS0KCjxzbmlwPgpCZXN0
LApTdW1pdC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
