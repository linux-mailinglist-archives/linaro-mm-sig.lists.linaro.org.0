Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C3418290B69
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Oct 2020 20:35:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECC73664F0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Oct 2020 18:35:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E05C266525; Fri, 16 Oct 2020 18:35:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AF7D66519;
	Fri, 16 Oct 2020 18:34:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4C12D65FE6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 18:34:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3510D66519; Fri, 16 Oct 2020 18:34:23 +0000 (UTC)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by lists.linaro.org (Postfix) with ESMTPS id EB42865FE6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 18:34:21 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id 65so3296953otu.9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 11:34:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YjEtrYWM+WpdQq5rIA7Cd/jyyjiG9wZFmhoaoHRZ7kE=;
 b=pTxva3jDt/YmvsZouqymrafKyOIzZl0E2VLpiYihw77KHuplt5V4fJOYsGL0d8SFtn
 0s5ThCu3LCXUOY/dIobQXEleZggRVxvCmSbxRVOiaJKsTOdzFnWFDOSHKFLVfDh0G4Li
 18e+OmzxKJUoBtEfF45zY1sYMYByrKOGqVrCNClu7MVbv3jQUZGFC0nogjDutHZpC+8H
 zm+u/lUvoOniSBdWbzuyaKFKp9ahQMoFOx9h73n7tBpF4ie9affvMFrJERmK9UW3r+RE
 4e54vy4NBoqfkH1G2YBR0WGpyXOyLt5mYvLi1gfTjIE8sSFxKCxsgTJ7YqtLlrByZXXK
 SL4w==
X-Gm-Message-State: AOAM531Z4FxffYbM9L0LrGNftNxH7XMp5/3znVyNiCkMvevs0a8sZvjD
 QwwjjElzKd7jVV5dcd+kaMpHHihNbbmmRfxxNkN28XuM
X-Google-Smtp-Source: ABdhPJw7tjr1fm5GouHDD8zGthbFcVsfrvoic1jX6NFUO/r4ZCIcCnfQDkNxyGdlbwILCV5qg9V+t5ILDyD+A5ctrzQ=
X-Received: by 2002:a9d:2d81:: with SMTP id g1mr3513164otb.352.1602873261398; 
 Fri, 16 Oct 2020 11:34:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
 <20201016082945.GA1722359@kroah.com>
In-Reply-To: <20201016082945.GA1722359@kroah.com>
From: John Stultz <john.stultz@linaro.org>
Date: Fri, 16 Oct 2020 11:34:09 -0700
Message-ID: <CALAqxLWtrnYizdDVAQMqy1JmeZ5jUCko1XKaEtAd0zoV6oj0aQ@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Christoph Hellwig <hch@infradead.org>,
 Android Kernel Team <kernel-team@android.com>, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 Laura Abbott <laura@labbott.name>, Shuah Khan <shuah@kernel.org>,
 Christian Brauner <christian@brauner.io>
Subject: Re: [Linaro-mm-sig] [PATCH] staging: ion: remove from the tree
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

T24gRnJpLCBPY3QgMTYsIDIwMjAgYXQgMToyOSBBTSBHcmVnIEtyb2FoLUhhcnRtYW4KPGdyZWdr
aEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgQXVnIDI3LCAyMDIwIGF0
IDA5OjMxOjI3QU0gLTA0MDAsIExhdXJhIEFiYm90dCB3cm90ZToKPiA+IE9uIDgvMjcvMjAgODoz
NiBBTSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+ID4gPiBUaGUgSU9OIGFuZHJvaWQgY29k
ZSBoYXMgbG9uZyBiZWVuIG1hcmtlZCB0byBiZSByZW1vdmVkLCBub3cgdGhhdCB3ZQo+ID4gPiBk
bWEtYnVmIHN1cHBvcnQgbWVyZ2VkIGludG8gdGhlIHJlYWwgcGFydCBvZiB0aGUga2VybmVsLgo+
ID4gPgo+ID4gPiBJdCB3YXMgdGhvdWdodCB0aGF0IHdlIGNvdWxkIHdhaXQgdG8gcmVtb3ZlIHRo
ZSBpb24ga2VybmVsIGF0IGEgbGF0ZXIKPiA+ID4gdGltZSwgYnV0IGFzIHRoZSBvdXQtb2YtdHJl
ZSBBbmRyb2lkIGZvcmsgb2YgdGhlIGlvbiBjb2RlIGhhcyBkaXZlcmdlZAo+ID4gPiBxdWl0ZSBh
IGJpdCwgYW5kIGFueSBBbmRyb2lkIGRldmljZSB1c2luZyB0aGUgaW9uIGludGVyZmFjZSB1c2Vz
IHRoYXQKPiA+ID4gZm9ya2VkIHZlcnNpb24gYW5kIG5vdCB0aGlzIGluLXRyZWUgdmVyc2lvbiwg
dGhlIGluLXRyZWUgY29weSBvZiB0aGUKPiA+ID4gY29kZSBpcyBhYmFuZG9uZGVkIGFuZCBub3Qg
dXNlZCBieSBhbnlvbmUuCj4gPiA+Cj4gPiA+IENvbWJpbmUgdGhpcyBhYmFuZG9uZWQgY29kZWJh
c2Ugd2l0aCB0aGUgbmVlZCB0byBtYWtlIGNoYW5nZXMgdG8gaXQgaW4KPiA+ID4gb3JkZXIgdG8g
a2VlcCB0aGUga2VybmVsIGJ1aWxkaW5nIHByb3Blcmx5LCB3aGljaCB0aGVuIGNhdXNlcyBtZXJn
ZQo+ID4gPiBpc3N1ZXMgd2hlbiBtZXJnaW5nIHRob3NlIGNoYW5nZXMgaW50byB0aGUgb3V0LW9m
LXRyZWUgQW5kcm9pZCBjb2RlLCBhbmQKPiA+ID4geW91IGVuZCB1cCB3aXRoIHR3byBkaWZmZXJl
bnQgZ3JvdXBzIG9mIHBlb3BsZSAodGhlIGluLWtlcm5lbC10cmVlCj4gPiA+IGRldmVsb3BlcnMs
IGFuZCB0aGUgQW5kcm9pZCBrZXJuZWwgZGV2ZWxvcGVycykgd2hvIGFyZSBib3RoIGFubm95ZWQg
YXQKPiA+ID4gdGhlIGN1cnJlbnQgc2l0dWF0aW9uLiAgQmVjYXVzZSBvZiB0aGlzIHByb2JsZW0s
IGp1c3QgZHJvcCB0aGUgaW4ta2VybmVsCj4gPiA+IGNvcHkgb2YgdGhlIGlvbiBjb2RlIG5vdywg
YXMgaXQncyBub3QgdXNlZCwgYW5kIGlzIG9ubHkgY2F1c2luZyBwcm9ibGVtcwo+ID4gPiBmb3Ig
ZXZlcnlvbmUgaW52b2x2ZWQuCj4gPiA+Cj4gPiA+IENjOiAiQXJ2ZSBIasO4bm5ldsOlZyIgPGFy
dmVAYW5kcm9pZC5jb20+Cj4gPiA+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KPiA+ID4gQ2M6IENocmlzdGlhbiBCcmF1bmVyIDxjaHJpc3RpYW5AYnJh
dW5lci5pbz4KPiA+ID4gQ2M6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAaW5mcmFkZWFkLm9yZz4K
PiA+ID4gQ2M6IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPgo+ID4gPiBDYzog
Sm9lbCBGZXJuYW5kZXMgPGpvZWxAam9lbGZlcm5hbmRlcy5vcmc+Cj4gPiA+IENjOiBKb2huIFN0
dWx0eiA8am9obi5zdHVsdHpAbGluYXJvLm9yZz4KPiA+ID4gQ2M6IExhdXJhIEFiYm90dCA8bGF1
cmFAbGFiYm90dC5uYW1lPgo+ID4gPiBDYzogTWFydGlqbiBDb2VuZW4gPG1hY29AYW5kcm9pZC5j
b20+Cj4gPiA+IENjOiBTaHVhaCBLaGFuIDxzaHVhaEBrZXJuZWwub3JnPgo+ID4gPiBDYzogU3Vt
aXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiA+ID4gQ2M6IFN1cmVuIEJhZ2hk
YXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+Cj4gPiA+IENjOiBUb2RkIEtqb3MgPHRram9zQGFu
ZHJvaWQuY29tPgo+ID4gPiBDYzogZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmcKPiA+ID4gQ2M6
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4g
PGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+ID4KPiA+IFdlIGRpc2N1c3NlZCB0aGlzIGF0
IHRoZSBBbmRyb2lkIE1DIG9uIE1vbmRheSBhbmQgdGhlIHBsYW4gd2FzIHRvCj4gPiByZW1vdmUg
aXQgYWZ0ZXIgdGhlIG5leHQgTFRTIHJlbGVhc2UuCj4KPiBBcyA1LjEwIHdpbGwgYmUgdGhlIG5l
eHQgTFRTIHJlbGVhc2UsIEkgaGF2ZSBub3cgbWVyZ2VkIGl0IHRvIG15Cj4gInRlc3RpbmciIGJy
YW5jaCB0byBnbyBpbnRvIDUuMTEtcmMxLgoKU291bmRzIGdyZWF0ISBUaGFua3Mgc28gbXVjaCBm
b3Igd2FpdGluZyBhIGJpdCBvbiB0aGlzLCBJIHJlYWxseSBhcHByZWNpYXRlIGl0IQotam9obgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
