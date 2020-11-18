Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C89A72B759C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Nov 2020 06:19:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E79AA666D5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Nov 2020 05:19:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DA9D9666F1; Wed, 18 Nov 2020 05:19:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C74F666D9;
	Wed, 18 Nov 2020 05:18:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 05BAC666D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 05:18:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EB17C666D9; Wed, 18 Nov 2020 05:18:31 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id DBDC5666D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 05:18:30 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id a15so606407otf.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 21:18:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F7sKJwkzdbeLOyKiVuDYfrrRTcjeln31HNpMolHCz84=;
 b=aH7qXxdCrYvEEBJNHo6Wvl2tMI30ZgSVZPROAzjhH4Hve702wJ1Lru8WK+uLsPNNgo
 FUC7SmVaM3oyKHYExeZAXJLaICDHxiLxVS3uOp6oyTYvwJJHYaFk/6ZjZCBNrKjqrsQX
 jFXNOiF2lUKmgSRhEsQnC/c6sI83ZFm4aVC97Go6w8Y7QpLr099qGo1/6on7gXhtZjX7
 2GvXRulJj2HcutE5HpGiMz8i6AObBXGztiDXGnFKmDIr8JvSs2Rhj0652weGreXGGSbH
 kzZ+VV7HlS8GUfhktXqhU5YEOZrNXdyVWj7QP2Qbs3P8tuxvzW0rN8FFutgac7rBg9X2
 AZxw==
X-Gm-Message-State: AOAM531wxU551q3ZHv8tmB3oGnIiMTgld1dcPLr5cHQcCp2d3Dl66Oa8
 PFdNfTdhImBh4GbcFyRGnc3ktSByXXGLuz3loA7/99hK
X-Google-Smtp-Source: ABdhPJznMB7Dcm3wHiflI6UU5baKUw77SPDRMKIJ2o8sjGzcuUEIkHfXK7f360M22ZzOz3BxHb2BphgAFuVXhh6gpyE=
X-Received: by 2002:a9d:64ce:: with SMTP id n14mr5354340otl.352.1605676710354; 
 Tue, 17 Nov 2020 21:18:30 -0800 (PST)
MIME-Version: 1.0
References: <20201117181935.3613581-1-minchan@kernel.org>
 <20201117181935.3613581-3-minchan@kernel.org>
In-Reply-To: <20201117181935.3613581-3-minchan@kernel.org>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 17 Nov 2020 21:18:17 -0800
Message-ID: <CALAqxLX0BfH3G0eoA77dKyuVAUGmdJGhFuaoJdyG+TGqnmt2PA@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 Christoph Hellwig <hch@infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-mm <linux-mm@kvack.org>, Christian Koenig <christian.koenig@amd.com>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH 2/4] dma-buf: add export symbol for
	dma-heap
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

T24gVHVlLCBOb3YgMTcsIDIwMjAgYXQgMTA6MTkgQU0gTWluY2hhbiBLaW0gPG1pbmNoYW5Aa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBGcm9tOiBIeWVzb28gWXUgPGh5ZXNvby55dUBzYW1zdW5nLmNv
bT4KPgo+IFRoZSBoZWFwcyBjb3VsZCBiZSBhZGRlZCBhcyBtb2R1bGUsIHNvIHNvbWUgZnVuY3Rp
b25zIHNob3VsZAo+IGJlIGV4cG9ydGVkIHRvIHJlZ2lzdGVyIGRtYS1oZWFwcy4gQW5kIGRtYS1o
ZWFwIG9mIG1vZHVsZSBjYW4gdXNlCj4gY21hIGFyZWEgdG8gYWxsb2NhdGUgYW5kIGZyZWUuIEhv
d2V2ZXIgdGhlIGZ1bmN0aW9uIHJlbGF0ZWQgY21hCj4gaXMgbm90IGV4cG9ydGVkIG5vdy4gTGV0
J3MgZXhwb3J0IHRoZW0gZm9yIG5leHQgcGF0Y2hlcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEh5ZXNv
byBZdSA8aHllc29vLnl1QHNhbXN1bmcuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pbmNoYW4gS2lt
IDxtaW5jaGFuQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5j
IHwgMiArKwo+ICBtbS9jbWEuYyAgICAgICAgICAgICAgICAgICB8IDMgKysrCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYwo+IGluZGV4IGFmZDIyYzlk
YmRjZi4uY2M2MzM5Y2JjYTA5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVh
cC5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMKPiBAQCAtMTg5LDYgKzE4OSw3
IEBAIHZvaWQgKmRtYV9oZWFwX2dldF9kcnZkYXRhKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCkKPiAg
ewo+ICAgICAgICAgcmV0dXJuIGhlYXAtPnByaXY7Cj4gIH0KPiArRVhQT1JUX1NZTUJPTF9HUEwo
ZG1hX2hlYXBfZ2V0X2RydmRhdGEpOwo+Cj4gIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRk
KGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pCj4gIHsKPiBAQCAt
MjcyLDYgKzI3Myw3IEBAIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVj
dCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pCj4gICAgICAgICBrZnJlZShoZWFwKTsK
PiAgICAgICAgIHJldHVybiBlcnJfcmV0Owo+ICB9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9o
ZWFwX2FkZCk7Cj4KPiAgc3RhdGljIGNoYXIgKmRtYV9oZWFwX2Rldm5vZGUoc3RydWN0IGRldmlj
ZSAqZGV2LCB1bW9kZV90ICptb2RlKQo+ICB7CgpUaGFua3Mgc28gbXVjaCBmb3Igc2VuZGluZyB0
aGlzIHNlcmllcyBhbG9uZyEKSSdtIG9rIHdpdGggdGhlIGRtYS1oZWFwIGV4cG9ydHMgdG8gc3Vw
cG9ydCBtb2R1bGVzLgoKPiBkaWZmIC0tZ2l0IGEvbW0vY21hLmMgYi9tbS9jbWEuYwo+IGluZGV4
IDdjMTFlYzJkYzA0Yy4uODc4MzRlMjk2NmZhIDEwMDY0NAo+IC0tLSBhL21tL2NtYS5jCj4gKysr
IGIvbW0vY21hLmMKPiBAQCAtNTQsNiArNTQsNyBAQCBjb25zdCBjaGFyICpjbWFfZ2V0X25hbWUo
Y29uc3Qgc3RydWN0IGNtYSAqY21hKQo+ICB7Cj4gICAgICAgICByZXR1cm4gY21hLT5uYW1lOwo+
ICB9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKGNtYV9nZXRfbmFtZSk7Cj4KPiAgc3RhdGljIHVuc2ln
bmVkIGxvbmcgY21hX2JpdG1hcF9hbGlnbmVkX21hc2soY29uc3Qgc3RydWN0IGNtYSAqY21hLAo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGlu
dCBhbGlnbl9vcmRlcikKPiBAQCAtNDk4LDYgKzQ5OSw3IEBAIHN0cnVjdCBwYWdlICpjbWFfYWxs
b2Moc3RydWN0IGNtYSAqY21hLCBzaXplX3QgY291bnQsIHVuc2lnbmVkIGludCBhbGlnbiwKPiAg
ICAgICAgIHByX2RlYnVnKCIlcygpOiByZXR1cm5lZCAlcFxuIiwgX19mdW5jX18sIHBhZ2UpOwo+
ICAgICAgICAgcmV0dXJuIHBhZ2U7Cj4gIH0KPiArRVhQT1JUX1NZTUJPTF9HUEwoY21hX2FsbG9j
KTsKPgo+ICAvKgo+ICAgKiBjbWFfYWxsb2NfYnVsaygpIC0gYWxsb2NhdGUgaGlnaCBvcmRlciBi
dWxrIHBhZ2VzIGZyb20gY29udGlndW91cyBhcmVhIHdpdGgKPiBAQCAtNjQxLDYgKzY0Myw3IEBA
IGJvb2wgY21hX3JlbGVhc2Uoc3RydWN0IGNtYSAqY21hLCBjb25zdCBzdHJ1Y3QgcGFnZSAqcGFn
ZXMsIHVuc2lnbmVkIGludCBjb3VudCkKPgo+ICAgICAgICAgcmV0dXJuIHRydWU7Cj4gIH0KPiAr
RVhQT1JUX1NZTUJPTF9HUEwoY21hX3JlbGVhc2UpOwo+Cj4gIGludCBjbWFfZm9yX2VhY2hfYXJl
YShpbnQgKCppdCkoc3RydWN0IGNtYSAqY21hLCB2b2lkICpkYXRhKSwgdm9pZCAqZGF0YSkKPiAg
ewo+IC0tCgpUaG91Z2ggQ2hyaXN0b3BoJ3MgKGNjJ2VkKSBpbnB1dCB3b3VsZCBwcm9iYWJseSBi
ZSBnb29kIGZvciB0aGUgY21hCm9uZXMsIGFzIEkga25vdyBoZSBoYWQgY29uY2VybnMgcHJldmlv
dXNseSB3aXRoIHNpbWlsYXIgcGF0Y2hlcy4KCnRoYW5rcwotam9obgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
