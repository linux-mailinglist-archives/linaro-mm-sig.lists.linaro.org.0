Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D462FDB36
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jan 2021 21:53:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 770446073E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jan 2021 20:53:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 684FE6087D; Wed, 20 Jan 2021 20:53:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7CD760BEE;
	Wed, 20 Jan 2021 20:53:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2D2106073E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Jan 2021 20:53:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0AAA060BEE; Wed, 20 Jan 2021 20:53:14 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id D0C696073E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Jan 2021 20:53:12 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id l12so19150420wry.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Jan 2021 12:53:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+Fzlnu2gDVF5uqigGznocNtk8tICKRhrhDQur+g+6zI=;
 b=Leu6NALQZs6Wf4TBf2AG3TkKW9fjJSP8a0jbU2W5uLb7CX1+H4D/O8VJCBvs5+J46V
 MkhWa5aUPzFAhFWjhPa8Z5g9Rj7T6VHImq67ZFQxWb8M7PEsb8Bvg07yRGaSfFFEkdM4
 08dhLhsRDlsEWdcGSpVslQA7hfCMLqEZYCAADQAPDOFb+53XoL8npK5q4E19G7A+rO6+
 BsRL5adU1a0Xbek3U2FMyuKTxWMXdBByQTVVOpqrgCD8WNmKHoWQVEJGYsfYebe03Ser
 JXqhGTIzAf8IL6KvmsM6VYVaoRNaQ/qWcDf6UmKhN2KmBVjaj3cV6N5SUbh0DoV8j3fb
 WE8Q==
X-Gm-Message-State: AOAM532fKXRrPIxqj4hXW+29OdwsBjx3dpVs5YfcRDbK3t+dlV5Z7MrX
 hAtxDKyanYjKr6/SA1+h+LZA8ToryLtKkmz9M5Hbhw==
X-Google-Smtp-Source: ABdhPJwt7pT74j5UgBuf0hqmfBTKggX4sl1ee2GbnEY6OrFXtj1vnr4AMrVjK/Sb4RohxWtiIk9c6lfylvwXhnh6I2k=
X-Received: by 2002:a5d:4704:: with SMTP id y4mr10992455wrq.358.1611175991891; 
 Wed, 20 Jan 2021 12:53:11 -0800 (PST)
MIME-Version: 1.0
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-5-minchan@kernel.org>
 <CALAqxLWPT8PWYue0h1863NjNxKn_FH0DtoRtArpmmxZ1Ve5xCw@mail.gmail.com>
 <CGME20210119203646epcas2p2622d11cb2cf90a7bd24050a5238e78ef@epcas2p2.samsung.com>
 <YAdC2J4x/4J9ozkq@google.com> <20210120033208.GA179511@KEI>
In-Reply-To: <20210120033208.GA179511@KEI>
From: Suren Baghdasaryan <surenb@google.com>
Date: Wed, 20 Jan 2021 12:53:01 -0800
Message-ID: <CAJuCfpFN5ntfTT9N==wxnZM2rbFXWuL_PJhpJLA=AnYgEsReFQ@mail.gmail.com>
To: Hyesoo Yu <hyesoo.yu@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Michal Hocko <mhocko@suse.com>,
 Christoph Hellwig <hch@infradead.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, linux-mm <linux-mm@kvack.org>,
 Minchan Kim <minchan@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 John Stultz <john.stultz@linaro.org>, John Dias <joaodias@google.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v3 4/4] dma-buf: heaps: add chunk heap
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

T24gVHVlLCBKYW4gMTksIDIwMjEgYXQgNzozOSBQTSBIeWVzb28gWXUgPGh5ZXNvby55dUBzYW1z
dW5nLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIEphbiAxOSwgMjAyMSBhdCAxMjozNjo0MFBNIC0w
ODAwLCBNaW5jaGFuIEtpbSB3cm90ZToKPiA+IE9uIFR1ZSwgSmFuIDE5LCAyMDIxIGF0IDEwOjI5
OjI5QU0gLTA4MDAsIEpvaG4gU3R1bHR6IHdyb3RlOgo+ID4gPiBPbiBUdWUsIEphbiAxMiwgMjAy
MSBhdCA1OjIyIFBNIE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4g
PiA+Cj4gPiA+ID4gRnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4gPiA+
ID4KPiA+ID4gPiBUaGlzIHBhdGNoIHN1cHBvcnRzIGNodW5rIGhlYXAgdGhhdCBhbGxvY2F0ZXMg
dGhlIGJ1ZmZlcnMgdGhhdAo+ID4gPiA+IGFycmFuZ2VkIGludG8gYSBsaXN0IGEgZml4ZWQgc2l6
ZSBjaHVua3MgdGFrZW4gZnJvbSBDTUEuCj4gPiA+ID4KPiA+ID4gPiBUaGUgY2h1bmsgaGVhcCBk
cml2ZXIgaXMgYm91bmQgZGlyZWN0bHkgdG8gYSByZXNlcnZlZF9tZW1vcnkKPiA+ID4gPiBub2Rl
IGJ5IGZvbGxvd2luZyBSb2IgSGVycmluZydzIHN1Z2dlc3Rpb24gaW4gWzFdLgo+ID4gPiA+Cj4g
PiA+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAxOTEwMjUyMjUwMDkuNTAz
MDUtMi1qb2huLnN0dWx0ekBsaW5hcm8ub3JnL1QvI20zZGM2M2FjZDMzZmVhMjY5YTU4NGY0M2Ji
Nzk5YTg3NmYwYjJiNDVkCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBIeWVzb28gWXUg
PGh5ZXNvby55dUBzYW1zdW5nLmNvbT4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBIcmlkeWEgVmFs
c2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaW5jaGFu
IEtpbSA8bWluY2hhbkBrZXJuZWwub3JnPgoKQWZ0ZXIgYWRkcmVzc2luZyBKb2huJ3MgY29tbWVu
dHMgZmVlbCBmcmVlIHRvIGFkZCBSZXZpZXdlZC1ieTogU3VyZW4KQmFnaGRhc2FyeWFuIDxzdXJl
bmJAZ29vZ2xlLmNvbT4KCj4gPiA+ID4gLS0tCj4gPiA+IC4uLgo+ID4gPiA+ICtzdGF0aWMgaW50
IHJlZ2lzdGVyX2NodW5rX2hlYXAoc3RydWN0IGNodW5rX2hlYXAgKmNodW5rX2hlYXBfaW5mbykK
PiA+ID4gPiArewo+ID4gPiA+ICsgICAgICAgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvIGV4
cF9pbmZvOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIGV4cF9pbmZvLm5hbWUgPSBjbWFfZ2V0
X25hbWUoY2h1bmtfaGVhcF9pbmZvLT5jbWEpOwo+ID4gPgo+ID4gPiBPbmUgcG90ZW50aWFsIGlz
c3VlIGhlcmUsIHlvdSdyZSBzZXR0aW5nIHRoZSBuYW1lIHRvIHRoZSBzYW1lIGFzIHRoZQo+ID4g
PiBDTUEgbmFtZS4gU2luY2UgdGhlIENNQSBoZWFwIHVzZXMgdGhlIENNQSBuYW1lLCBpZiBvbmUg
Y2h1bmsgd2FzCj4gPiA+IHJlZ2lzdGVyZWQgYXMgYSBjaHVuayBoZWFwIGJ1dCBhbHNvIHdhcyB0
aGUgZGVmYXVsdCBDTUEgYXJlYSwgaXQgbWlnaHQKPiA+ID4gYmUgcmVnaXN0ZXJlZCB0d2ljZS4g
QnV0IHNpbmNlIGJvdGggd291bGQgaGF2ZSB0aGUgc2FtZSBuYW1lIGl0IHdvdWxkCj4gPiA+IGJl
IGFuIGluaXRpYWxpemF0aW9uIHJhY2UgYXMgdG8gd2hpY2ggb25lICJ3aW5zIi4KPiA+Cj4gPiBH
b29kIHBvaW50LiBNYXliZSBzb21lb25lIG1pZ2h0IHdhbnQgdG8gdXNlIGRlZmF1bHQgQ01BIGFy
ZWEgZm9yCj4gPiBib3RoIGNtYV9oZWFwIGFuZCBjaHVua19oZWFwLiBJIGNhbm5vdCBjb21lIHVw
IHdpdGggaWRlYXMgd2h5IHdlCj4gPiBzaG91bGQgcHJvaGliaXQgaXQgYXRtLgo+ID4KPiA+ID4K
PiA+ID4gU28gbWF5YmUgY291bGQgeW91IHBvc3RmaXggdGhlIENNQSBuYW1lIHdpdGggIi1jaHVu
ayIgb3Igc29tZXRoaW5nPwo+ID4KPiA+IEh5ZXNvbywgQW55IG9waW5pb24/Cj4gPiBVbmxlc3Mg
eW91IGhhdmUgc29tZXRoaW5nIG90aGVyIGlkZWEsIGxldCdzIGZpeCBpdCBpbiBuZXh0IHZlcnNp
b24uCj4gPgo+Cj4gSSBhZ3JlZSB0aGF0LiBJdCBpcyBub3QgZ29vZCB0byB1c2UgaGVhcCBuYW1l
IGRpcmVjdGx5IGFzIGNtYSBuYW1lLgo+IExldCdzIHBvc3RmaXggdGhlIG5hbWUgd2l0aCAnLWNo
dW5rJwo+Cj4gVGhhbmtzLAo+IFJlZ2FyZHMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
