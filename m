Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFCDEA194
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2019 17:17:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 958BF61967
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2019 16:17:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 882B76196E; Wed, 30 Oct 2019 16:17:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38F6A6196C;
	Wed, 30 Oct 2019 16:17:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A33406179A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 16:17:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 89FA56196C; Wed, 30 Oct 2019 16:17:27 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id A61466179A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 16:17:26 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id r14so2622277otn.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 09:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9Cj2/HXDLn8aS6ESVlsFGccn1N9mdAGQmhGwS0g3eOU=;
 b=SEJT0/Jm7zNMrOL9KtraCBnVy7THCP6pp9ei56M08bZinke8HouasORWwGZJ8O1XhG
 bbIf9oPvOT3i+GV37EyavF8Ys2ZUVUZcO+xhSfasURjFlBA10a2OqF+bLP1hqPAjD/z6
 f8TMyrXnmSlxWzE8cfyAngQYL11LIHO589ah52/9E6faH82iQkWbPaywcSgQrfad1L8A
 w2kau5qT/9Sa9RMk3rGBCSHfjVLodAOgAeY0bmJnFs4/yP9/cu7YtO4AV43BQfKJpDxq
 xJRyw7CDhxVOy+COi39GJSiQe6JY+392yBPj5e8mqYQgNTZYDSo7Pq/8FIXhCmjXc6zs
 8AYA==
X-Gm-Message-State: APjAAAWdQ/GYN/NR9cpnyaIRrBEX14AJxZm8cJWgojUqF/0NHX++Ikis
 GFZEMAgd+sYRET1NYRo7un783HKwVmekT9dBagQjjViF
X-Google-Smtp-Source: APXvYqyGIZXSa+DtUjwBGchbvDWoC92JPTPDAXB5UsVtXZB+/gNvTOEkAQTyhFxO7Jk/E+0BUW/SIrYMDoyFssBoOgQ=
X-Received: by 2002:a9d:630c:: with SMTP id q12mr590885otk.332.1572452245946; 
 Wed, 30 Oct 2019 09:17:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191029182943.GD17569@mwanda>
In-Reply-To: <20191029182943.GD17569@mwanda>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 30 Oct 2019 09:17:14 -0700
Message-ID: <CALAqxLU7k-z6JXbEFpK0D_7+jZz_Jdk7HxaSWm_rkBFEpQRQtg@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, lkml <linux-kernel@vger.kernel.org>,
 Liam Mark <lmark@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Brian Starkey <Brian.Starkey@arm.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Fix a warning message in
	dma_heap_buffer_destroy()
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

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMTE6MzEgQU0gRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBl
bnRlckBvcmFjbGUuY29tPiB3cm90ZToKPgo+IFRoZSBmaXJzdCBhcmd1bWVudCBvZiBXQVJOKCkg
aXMgYSBjb25kaXRpb24gc28gdGhpcyB3aWxsIGp1c3QgcHJpbnQgdGhlCj4gZnVuY3Rpb24gbmFt
ZSBpbnN0ZWFkIG9mIHRoZSB3aG9sZSB3YXJuaW5nIG1lc3NhZ2UuCj4KPiBGaXhlczogN2I4N2Vh
NzA0ZmQ5ICgiZG1hLWJ1ZjogaGVhcHM6IEFkZCBoZWFwIGhlbHBlcnMiKQo+IFNpZ25lZC1vZmYt
Ynk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVh
cC1oZWxwZXJzLmMKPiBpbmRleCA3NTBiZWY0ZTkwMmQuLmEzMTY4NGMwZDViMiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKPiArKysgYi9kcml2ZXJz
L2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKPiBAQCAtNTIsNyArNTIsNyBAQCBzdGF0aWMg
dm9pZCAqZG1hX2hlYXBfbWFwX2tlcm5lbChzdHJ1Y3QgaGVhcF9oZWxwZXJfYnVmZmVyICpidWZm
ZXIpCj4gIHN0YXRpYyB2b2lkIGRtYV9oZWFwX2J1ZmZlcl9kZXN0cm95KHN0cnVjdCBoZWFwX2hl
bHBlcl9idWZmZXIgKmJ1ZmZlcikKPiAgewo+ICAgICAgICAgaWYgKGJ1ZmZlci0+dm1hcF9jbnQg
PiAwKSB7Cj4gLSAgICAgICAgICAgICAgIFdBUk4oIiVzOiBidWZmZXIgc3RpbGwgbWFwcGVkIGlu
IHRoZSBrZXJuZWxcbiIsIF9fZnVuY19fKTsKPiArICAgICAgICAgICAgICAgV0FSTigxLCAiJXM6
IGJ1ZmZlciBzdGlsbCBtYXBwZWQgaW4gdGhlIGtlcm5lbFxuIiwgX19mdW5jX18pOwo+ICAgICAg
ICAgICAgICAgICB2dW5tYXAoYnVmZmVyLT52YWRkcik7Cj4gICAgICAgICB9CgpUaGFua3MgZm9y
IGNhdGNoaW5nIGFuZCByZXBvcnRpbmcgdGhpcyEKCkFja2VkLWJ5OiBKb2huIFN0dWx0eiA8am9o
bi5zdHVsdHpAbGluYXJvLm9yZz4KClN1bWl0LCBkbyB5b3UgbWluZCBwaWNraW5nIHRoaXMgdXAg
Zm9yIGRybS1taXNjLW5leHQ/Cgp0aGFua3MKLWpvaG4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
