Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F81C30D147
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 03:14:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7643C61786
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 02:14:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5C3346604D; Wed,  3 Feb 2021 02:14:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6514F619D7;
	Wed,  3 Feb 2021 02:13:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DAA8D61786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 02:13:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BC7E8619D7; Wed,  3 Feb 2021 02:13:39 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 8D3AF61786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 02:13:38 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id p15so22394375wrq.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 18:13:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+vYDps8/+IhHaSDG5kMjkWUxFJUq2DFUOYgi2VmWXtI=;
 b=cHw/lOrFDX3au9WbIAoa1p1s8i6LAhqajbe2RipYzvaW0ePzj9ntuLKrXP/06mqcUf
 7ZQHfXYs7+85+qcy8tVS2eAIXAmeYb67PxP8/pR6w4QVqnA4GqTVMNjvEJbiQAXeidHk
 9i8fOCxQ3+ah0lytc99BnVqRhsCg/XTDPfT2mgKWjZRu4OlSCKaLGRswnThL1MlB59RE
 h9H7clw4tLmdDbfq2hY9fo+FATJ52nRDk8Ka0amPACYZDzenW9llWVi+J16BYTlLvCho
 hgObDN0r87f5/dMBO8ZcbaWsucHph15mBAZ1xG3hyfLomxdXPOxZ9mP9Iu+F00tid2uU
 fYKQ==
X-Gm-Message-State: AOAM531BVS4umG8jnfml/GGhUOkQY6MD5SeIk276x14MTKIl7/4suaLW
 U16OhKZ87TI0MVVszKjp57AjHa3DRhHaLfB4v3FHTA==
X-Google-Smtp-Source: ABdhPJzwvb53VryiSIObA9yOm78VKVx2cE/HoZ+IGvTixGvWum4punD5XJ9toA2haG1k35oBs/GNn0NjBEvmjKg7phM=
X-Received: by 2002:a5d:453b:: with SMTP id j27mr895948wra.92.1612318417595;
 Tue, 02 Feb 2021 18:13:37 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203003134.2422308-2-surenb@google.com>
 <CALAqxLWJNDDx_MFvYHszFXy=aV9bZGi50L3zDtuGaiYUbHKHSA@mail.gmail.com>
In-Reply-To: <CALAqxLWJNDDx_MFvYHszFXy=aV9bZGi50L3zDtuGaiYUbHKHSA@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Tue, 2 Feb 2021 18:13:26 -0800
Message-ID: <CAJuCfpGJn9WLjs5N6m2WZ4CxgkZeHgGinoS_v2XhiqbOB90rfQ@mail.gmail.com>
To: John Stultz <john.stultz@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Android Kernel Team <kernel-team@android.com>,
 James Jones <jajones@nvidia.com>, lkml <linux-kernel@vger.kernel.org>,
 Liam Mark <lmark@codeaurora.org>, Brian Starkey <Brian.Starkey@arm.com>,
 Christoph Hellwig <hch@infradead.org>, Minchan Kim <minchan@kernel.org>,
 linux-mm <linux-mm@kvack.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/2] dma-buf: heaps: Map system heap
 pages as managed by linux vm
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

T24gVHVlLCBGZWIgMiwgMjAyMSBhdCA2OjA3IFBNIEpvaG4gU3R1bHR6IDxqb2huLnN0dWx0ekBs
aW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgRmViIDIsIDIwMjEgYXQgNDozMSBQTSBTdXJl
biBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPiB3cm90ZToKPiA+IEN1cnJlbnRseSBz
eXN0ZW0gaGVhcCBtYXBzIGl0cyBidWZmZXJzIHdpdGggVk1fUEZOTUFQIGZsYWcgdXNpbmcKPiA+
IHJlbWFwX3Bmbl9yYW5nZS4gVGhpcyByZXN1bHRzIGluIHN1Y2ggYnVmZmVycyBub3QgYmVpbmcg
YWNjb3VudGVkCj4gPiBmb3IgaW4gUFNTIGNhbGN1bGF0aW9ucyBiZWNhdXNlIHZtIHRyZWF0cyB0
aGlzIG1lbW9yeSBhcyBoYXZpbmcgbm8KPiA+IHBhZ2Ugc3RydWN0cy4gV2l0aG91dCBwYWdlIHN0
cnVjdHMgdGhlcmUgYXJlIG5vIGNvdW50ZXJzIHJlcHJlc2VudGluZwo+ID4gaG93IG1hbnkgcHJv
Y2Vzc2VzIGFyZSBtYXBwaW5nIGEgcGFnZSBhbmQgdGhlcmVmb3JlIFBTUyBjYWxjdWxhdGlvbgo+
ID4gaXMgaW1wb3NzaWJsZS4KPiA+IEhpc3RvcmljYWxseSwgSU9OIGRyaXZlciB1c2VkIHRvIG1h
cCBpdHMgYnVmZmVycyBhcyBWTV9QRk5NQVAgYXJlYXMKPiA+IGR1ZSB0byBtZW1vcnkgY2FydmVv
dXRzIHRoYXQgZGlkIG5vdCBoYXZlIHBhZ2Ugc3RydWN0cyBbMV0uIFRoYXQKPiA+IGlzIG5vdCB0
aGUgY2FzZSBhbnltb3JlIGFuZCBpdCBzZWVtcyB0aGVyZSB3YXMgZGVzaXJlIHRvIG1vdmUgYXdh
eQo+ID4gZnJvbSByZW1hcF9wZm5fcmFuZ2UgWzJdLgo+ID4gRG1hYnVmIHN5c3RlbSBoZWFwIGRl
c2lnbiBpbmhlcml0cyB0aGlzIElPTiBiZWhhdmlvciBhbmQgbWFwcyBpdHMKPiA+IHBhZ2VzIHVz
aW5nIHJlbWFwX3Bmbl9yYW5nZSBldmVuIHRob3VnaCBhbGxvY2F0ZWQgcGFnZXMgYXJlIGJhY2tl
ZAo+ID4gYnkgcGFnZSBzdHJ1Y3RzLgo+ID4gUmVwbGFjZSByZW1hcF9wZm5fcmFuZ2Ugd2l0aCB2
bV9pbnNlcnRfcGFnZSwgZm9sbG93aW5nIExhdXJhJ3Mgc3VnZ2VzdGlvbgo+ID4gaW4gWzFdLiBU
aGlzIHdvdWxkIGFsbG93IGNvcnJlY3QgUFNTIGNhbGN1bGF0aW9uIGZvciBkbWFidWZzLgo+ID4K
PiA+IFsxXSBodHRwczovL2RyaXZlcmRldi1kZXZlbC5saW51eGRyaXZlcnByb2plY3QubmFya2l2
ZS5jb20vdjBmSkdwYUQvdXNpbmctaW9uLW1lbW9yeS1mb3ItZGlyZWN0LWlvCj4gPiBbMl0gaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL3BpcGVybWFpbC9kcml2ZXJkZXYt
ZGV2ZWwvMjAxOC1PY3RvYmVyLzEyNzUxOS5odG1sCj4gPiAoc29ycnksIGNvdWxkIG5vdCBmaW5k
IGxvcmUgbGlua3MgZm9yIHRoZXNlIGRpc2N1c3Npb25zKQo+ID4KPiA+IFN1Z2dlc3RlZC1ieTog
TGF1cmEgQWJib3R0IDxsYWJib3R0QGtlcm5lbC5vcmc+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTdXJl
biBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPgo+Cj4gRm9yIGNvbnNpc3RlbmN5LCBk
byB3ZSBuZWVkIHNvbWV0aGluZyBzaW1pbGFyIGZvciB0aGUgY21hIGhlYXAgYXMgd2VsbD8KCkdv
b2QgcXVlc3Rpb24uIExldCBtZSBsb29rIGNsb3NlciBpbnRvIGl0LgoKPgo+IHRoYW5rcwo+IC1q
b2huCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
