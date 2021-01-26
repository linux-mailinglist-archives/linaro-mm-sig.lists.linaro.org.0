Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E73FD303757
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 08:33:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 17328618EF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 07:33:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 088B366743; Tue, 26 Jan 2021 07:33:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DAA1617EE;
	Tue, 26 Jan 2021 07:33:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2458D607FD
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 07:33:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0C219617EE; Tue, 26 Jan 2021 07:33:12 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by lists.linaro.org (Postfix) with ESMTPS id AC782607FD
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 07:33:10 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id b26so21436002lff.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jan 2021 23:33:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W32USTVMA4Na4R83P1ldiQToO8MF00oSxMXfGmTH1mg=;
 b=CJzDd7SJCkXbLgDUKc4WfsSYGkEUpB72YPikxBPCtio1NwW6hSKKH8tmhtvZPPDYVi
 qZWOpMFSuX2Jf8Xl4JjLk9qqtWLyJZL1TIND9YFAXrP8D3r+oQwNlZ2EYEVH7C40NAIu
 l1A1aBPyBVt0OZP2k5c/YhVmkiv4S/eq9nFbZdMW5SSQoIz4LsOVJmKwfGHlezyKPzwR
 LZGH+Y5ByxmIoG0l60xX6PbeBFuE4jCZfEQE4KpnujQkSQC0zjz3ey2DYo9xebE48M51
 33zPaziXiwxs8XGGuSmNgBntMdKJ/Q6EbMcnI25G7rx3PXpHg1xhc8QMiu8Nz4GEDQ1k
 batg==
X-Gm-Message-State: AOAM531+ymfWZUWI/wvT+NSCPyjPuOliFGtxsmB0MMGJzUeDVMtFSovW
 fV03wMhrg491B/n5a6VIlqA+UWzAl9HfjcAsRd2oCicb
X-Google-Smtp-Source: ABdhPJwXsF0xWCBhNsrr3s7doyV+JBsu/u9FZtgybX1V7crrHD588JGqYQnNs8eBrkRozy2tjTrONdtwgSFuQwqnwis=
X-Received: by 2002:a19:48d0:: with SMTP id v199mr2093711lfa.535.1611646389475; 
 Mon, 25 Jan 2021 23:33:09 -0800 (PST)
MIME-Version: 1.0
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-5-minchan@kernel.org>
In-Reply-To: <20210121175502.274391-5-minchan@kernel.org>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 25 Jan 2021 23:32:57 -0800
Message-ID: <CALAqxLWJDo=pM8bvt9YWrzJ+VyK5gojoL-v7ch1fQC=cjGwJOw@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Michal Hocko <mhocko@suse.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Christoph Hellwig <hch@infradead.org>,
 linux-mm <linux-mm@kvack.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH v4 4/4] dma-buf: heaps: add chunk heap
	to dmabuf heaps
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

T24gVGh1LCBKYW4gMjEsIDIwMjEgYXQgOTo1NSBBTSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJu
ZWwub3JnPiB3cm90ZToKCkhleSBNaW5jaGFuLAogIFRoYW5rcyBmb3Igc2VuZGluZyB0aGlzIG91
dCEgSSdtIHN0aWxsIHdvcmtpbmcgdGhyb3VnaCB0ZXN0aW5nIHdpdGgKdGhpcyBwYXRjaCBzZXQs
IHNvIEkgbWF5IGhhdmUgc29tZSBtb3JlIGZlZWRiYWNrIHRvbW9ycm93LCBidXQgYSBmZXcKcXVp
Y2sgaXRlbXMgSSBkaWQgaGl0IGJlbG93LgoKPiArCj4gKyNkZWZpbmUgQ0hVTktfUFJFRklYICJj
aHVuay0iCj4gKwo+ICtzdGF0aWMgaW50IHJlZ2lzdGVyX2NodW5rX2hlYXAoc3RydWN0IGNodW5r
X2hlYXAgKmNodW5rX2hlYXBfaW5mbykKPiArewo+ICsgICAgICAgc3RydWN0IGRtYV9oZWFwX2V4
cG9ydF9pbmZvIGV4cF9pbmZvOwo+ICsgICAgICAgY29uc3QgY2hhciAqbmFtZSA9IGNtYV9nZXRf
bmFtZShjaHVua19oZWFwX2luZm8tPmNtYSk7Cj4gKyAgICAgICBzaXplX3QgbGVuID0gc3RybGVu
KENIVU5LX1BSRUZJWCkgKyBzdHJsZW4obmFtZSkgKyAxOwo+ICsgICAgICAgY2hhciAqYnVmID0g
a21hbGxvYyhsZW4sIEdGUF9LRVJORUwpOwo+ICsKPiArICAgICAgIGlmICghYnVmKQo+ICsgICAg
ICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiArCj4gKyAgICAgICBzcHJpbnRmKGJ1ZiwgQ0hV
TktfUFJFRklYIiVzIiwgY21hX2dldF9uYW1lKGNodW5rX2hlYXBfaW5mby0+Y21hKSk7Cj4gKyAg
ICAgICBidWZbbGVuXSA9ICdcMCc7Cj4gKwo+ICsgICAgICAgZXhwX2luZm8ubmFtZSA9IGJ1ZjsK
PiArICAgICAgIGV4cF9pbmZvLm5hbWUgPSBjbWFfZ2V0X25hbWUoY2h1bmtfaGVhcF9pbmZvLT5j
bWEpOwoKSSB0aGluayB5b3UgaW50ZW5kZWQgdG8gZGVsZXRlIHRoaXMgbGluZSwgYXMgaXQncyBv
dmVyd3JpdGluZyB5b3VyCnByZWZpeGVkIG5hbWUuCgo+ICsgICAgICAgZXhwX2luZm8ub3BzID0g
JmNodW5rX2hlYXBfb3BzOwo+ICsgICAgICAgZXhwX2luZm8ucHJpdiA9IGNodW5rX2hlYXBfaW5m
bzsKPiArCj4gKyAgICAgICBjaHVua19oZWFwX2luZm8tPmhlYXAgPSBkbWFfaGVhcF9hZGQoJmV4
cF9pbmZvKTsKPiArICAgICAgIGlmIChJU19FUlIoY2h1bmtfaGVhcF9pbmZvLT5oZWFwKSkgewo+
ICsgICAgICAgICAgICAgICBrZnJlZShidWYpOwo+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRS
X0VSUihjaHVua19oZWFwX2luZm8tPmhlYXApOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHJl
dHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IF9faW5pdCBjaHVua19oZWFwX2luaXQodm9p
ZCkKPiArewo+ICsgICAgICAgdW5zaWduZWQgaW50IGk7Cj4gKwo+ICsgICAgICAgZm9yIChpID0g
MDsgaSA8IGNodW5rX2hlYXBfY291bnQ7IGkrKykKPiArICAgICAgICAgICAgICAgcmVnaXN0ZXJf
Y2h1bmtfaGVhcCgmY2h1bmtfaGVhcHNbaV0pOwo+ICsKPiArICAgICAgIHJldHVybiAwOwo+ICt9
Cj4gK21vZHVsZV9pbml0KGNodW5rX2hlYXBfaW5pdCk7Cj4gKwo+ICsjaWZkZWYgQ09ORklHX09G
X0VBUkxZX0ZMQVRUUkVFCj4gKwo+ICtzdGF0aWMgaW50IF9faW5pdCBkbWFidWZfY2h1bmtfaGVh
cF9hcmVhX2luaXQoc3RydWN0IHJlc2VydmVkX21lbSAqcm1lbSkKPiArewo+ICsgICAgICAgaW50
IHJldDsKPiArICAgICAgIHN0cnVjdCBjbWEgKmNtYTsKPiArICAgICAgIHN0cnVjdCBjaHVua19o
ZWFwICpjaHVua19oZWFwX2luZm87Cj4gKyAgICAgICBjb25zdCBfX2JlMzIgKmNodW5rX29yZGVy
Owo+ICsKPiArICAgICAgIHBoeXNfYWRkcl90IGFsaWduID0gUEFHRV9TSVpFIDw8IG1heChNQVhf
T1JERVIgLSAxLCBwYWdlYmxvY2tfb3JkZXIpOwo+ICsgICAgICAgcGh5c19hZGRyX3QgbWFzayA9
IGFsaWduIC0gMTsKPiArCj4gKyAgICAgICBpZiAoKHJtZW0tPmJhc2UgJiBtYXNrKSB8fCAocm1l
bS0+c2l6ZSAmIG1hc2spKSB7Cj4gKyAgICAgICAgICAgICAgIHByX2VycigiSW5jb3JyZWN0IGFs
aWdubWVudCBmb3IgQ01BIHJlZ2lvblxuIik7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlO
VkFMOwoKUGFzc2luZyB0aGlzIGNoZWNrIGNhbiBiZSB0b3VnaCBpZiB5b3UncmUgdXNpbmcgZHlu
YW1pY2FsbHkgYXNzaWduZWQKcm1lbSwgc28gaXQgbWlnaHQgYmUgaGVscGZ1bCBmb3IgZGVidWdn
aW5nIHRvIHByaW50IHRoZSBiYXNlL3NpemUvbWFzawp2YWx1ZXM/Cgp0aGFua3MKLWpvaG4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
