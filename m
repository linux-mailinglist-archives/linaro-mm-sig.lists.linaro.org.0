Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 074561CEAA6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 04:15:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35D7E61831
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 02:15:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2A9886183D; Tue, 12 May 2020 02:15:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 271E661839;
	Tue, 12 May 2020 02:14:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5619660628
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 02:14:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 48E6261839; Tue, 12 May 2020 02:14:34 +0000 (UTC)
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by lists.linaro.org (Postfix) with ESMTPS id 3A1DA60628
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 02:14:33 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id s3so9679427eji.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 19:14:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6gJvFOJgRmCUuHQ9KCv0CAQBXJvMZ3ZEqpa1faKKd80=;
 b=P2OMdOU9CCA4top9k11hbIDIVijiJCftY8L07SuLfwsI20OOjodcrtQLjmE0NLF4/c
 7jcxJ6JYqX9S/wVMTqQ/xZdPQY/X9r0oV8Hb0DuWaQ9j9K8e4G894eCGo+dWdGav9Uh0
 VFflsYw9QtkFANWOKhUtcw8gst3YzNqH2Jwz14t32YVLbeh4Upa2wCaLN2Hteji+itei
 VGREnQ8hnaRcAka8O2aBh4mE+okiRGjocvfFUUarpTwVyvY70ZcFLi4R9vRClWfOjvHv
 crU3sFROWxMhoIHddrpGJx/x9hFA3jAwiNzQLMBLx33P6OWg4ghwrU0lVCPzx1w4yz3s
 Yv7Q==
X-Gm-Message-State: AGi0PubISbFM3zEY/w8zWvQ7rfvRtOPIvzo80LIuMTUkdk7wqx4+8ewq
 EXvYbkebA+HGRuKZIGPMUYsfrCz1UZFTiggeFj8=
X-Google-Smtp-Source: APiQypKvoGJ05XwMC2ywwTCNcJ1snijF1Y8YHOxuAycdEcZGBHIMpEuM9QUFeK3xCS81J/YmfWca02XITf2P9jmfZVw=
X-Received: by 2002:a17:907:2155:: with SMTP id
 rk21mr16482845ejb.163.1589249672229; 
 Mon, 11 May 2020 19:14:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
 <20200511091142.208787-3-daniel.vetter@ffwll.ch>
 <CAFCwf10m14ModSuRbQAsWf5CSJvTeP7YRzcokD=o+m2Pa0TqKg@mail.gmail.com>
In-Reply-To: <CAFCwf10m14ModSuRbQAsWf5CSJvTeP7YRzcokD=o+m2Pa0TqKg@mail.gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 12 May 2020 12:14:20 +1000
Message-ID: <CAPM=9tyukFdDiM6-Mxd+ouXCt9Z4t6LRZwxq7DGoX9drrHnMdQ@mail.gmail.com>
To: Oded Gabbay <oded.gabbay@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Daniel Vetter <daniel.vetter@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 3/3] misc/habalabs: don't
	set default fence_ops->wait
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

T24gTW9uLCAxMSBNYXkgMjAyMCBhdCAxOTozNywgT2RlZCBHYWJiYXkgPG9kZWQuZ2FiYmF5QGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIE1heSAxMSwgMjAyMCBhdCAxMjoxMSBQTSBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToKPiA+Cj4gPiBJdCdzIHRo
ZSBkZWZhdWx0Lgo+IFRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhhdC4KPgo+ID4KPiA+IEFsc28gc28g
bXVjaCBmb3IgIndlJ3JlIG5vdCBnb2luZyB0byB0ZWxsIHRoZSBncmFwaGljcyBwZW9wbGUgaG93
IHRvCj4gPiByZXZpZXcgdGhlaXIgY29kZSIsIGRtYV9mZW5jZSBpcyBhIHByZXR0eSBjb3JlIHBp
ZWNlIG9mIGdwdSBkcml2ZXIKPiA+IGluZnJhc3RydWN0dXJlLiBBbmQgaXQncyB2ZXJ5IG11Y2gg
dWFwaSByZWxldmFudCwgaW5jbHVkaW5nIHBpbGVzIG9mCj4gPiBjb3JyZXNwb25kaW5nIHVzZXJz
cGFjZSBwcm90b2NvbHMgYW5kIGxpYnJhcmllcyBmb3IgaG93IHRvIHBhc3MgdGhlc2UKPiA+IGFy
b3VuZC4KPiA+Cj4gPiBXb3VsZCBiZSBncmVhdCBpZiBoYWJhbmFsYWJzIHdvdWxkIG5vdCB1c2Ug
dGhpcyAoZnJvbSBhIHF1aWNrIGxvb2sKPiA+IGl0J3Mgbm90IG5lZWRlZCBhdCBhbGwpLCBzaW5j
ZSBvcGVuIHNvdXJjZSB0aGUgdXNlcnNwYWNlIGFuZCBwbGF5aW5nCj4gPiBieSB0aGUgdXN1YWwg
cnVsZXMgaXNuJ3Qgb24gdGhlIHRhYmxlLiBJZiB0aGF0J3Mgbm90IHBvc3NpYmxlIChiZWNhdXNl
Cj4gPiBpdCdzIGFjdHVhbGx5IHVzaW5nIHRoZSB1YXBpIHBhcnQgb2YgZG1hX2ZlbmNlIHRvIGlu
dGVyYWN0IHdpdGggZ3B1Cj4gPiBkcml2ZXJzKSB0aGVuIHdlIGhhdmUgZXhhY3RseSB3aGF0IGV2
ZXJ5b25lIHByb21pc2VkIHdlJ2Qgd2FudCB0bwo+ID4gYXZvaWQuCj4KPiBXZSBkb24ndCB1c2Ug
dGhlIHVhcGkgcGFydHMsIHdlIGN1cnJlbnRseSBvbmx5IHVzaW5nIHRoZSBmZW5jaW5nIGFuZAo+
IHNpZ25hbGluZyBhYmlsaXR5IG9mIHRoaXMgbW9kdWxlIGluc2lkZSBvdXIga2VybmVsIGNvZGUu
IEJ1dCBtYXliZSBJCj4gZGlkbid0IHVuZGVyc3RhbmQgd2hhdCB5b3UgcmVxdWVzdC4gWW91IHdh
bnQgdXMgKm5vdCogdG8gdXNlIHRoaXMKPiB3ZWxsLXdyaXR0ZW4gcGllY2Ugb2Yga2VybmVsIGNv
ZGUgYmVjYXVzZSBpdCBpcyBvbmx5IHVzZWQgYnkgZ3JhcGhpY3MKPiBkcml2ZXJzID8KPiBJJ20g
c29ycnkgYnV0IEkgZG9uJ3QgZ2V0IHRoaXMgYXJndW1lbnQsIGlmIHRoaXMgaXMgaW5kZWVkIHdo
YXQgeW91IG1lYW50LgoKV2Ugd291bGQgcmF0aGVyIGRyaXZlcnMgdXNpbmcgYSBmZWF0dXJlIHRo
YXQgaGFzIHJlcXVpcmVtZW50cyBvbgpjb3JyZWN0IHVzZXJzcGFjZSBpbXBsZW1lbnRhdGlvbnMg
b2YgdGhlIGZlYXR1cmUgaGF2ZSBhIHVzZXJzcGFjZSB0aGF0CmlzIG9wZW4gc291cmNlIGFuZCBh
dWRpdGFibGUuCgpGZW5jaW5nIGlzIHRyaWNreSwgY3Jvc3MtZGV2aWNlIGZlbmNpbmcgaXMgcmVh
bGx5IHRyaWNreSwgYW5kIGhhdmluZwp0aGUgYWJpbGl0eSBmb3IgYSBjbG9zZWQgdXNlcnNwYWNl
IGNvbXBvbmVudCB0byBtZXNzIHVwIG90aGVyIHBlb3BsZSdzCmRyaXZlcnMsIHRoaW5rIGk5MTUg
c2hhcmVkIHdpdGggY2xvc2VkIGhhYmFuYSB1c2Vyc3BhY2UgYW5kIHNoYXJlZApmZW5jZXMsIGRl
Y3JlYXNlcyBhYmlsaXR5IHRvIGRlYnVnIHRoaW5ncy4KCklkZWFsbHkgd2Ugd291bGRuJ3Qgb2Zm
ZXIgdXNlcnMga25vd24gdW50ZXN0ZWQvYnJva2VuIHNjZW5hcmlvcywgc28KeWVzIHdlJ2QgcHJl
ZmVyIHRoYXQgZHJpdmVycyB0aGF0IGludGVuZCB0byBleHBvc2UgYSB1c2Vyc3BhY2UgZmVuY2lu
ZwphcGkgYXJvdW5kIGRtYS1mZW5jZSB3b3VsZCBhZGhlcmUgdG8gdGhlIHJ1bGVzIG9mIHRoZSBn
cHUgZHJpdmVycy4KCkknbSBub3Qgc2F5IHlvdSBoYXZlIHRvIGRyb3AgdXNpbmcgZG1hLWZlbmNl
LCBidXQgaWYgeW91IG1vdmUgdG93YXJkcwpjcm9zcy1kZXZpY2Ugc3R1ZmYgSSBiZWxpZXZlIG90
aGVyIGRyaXZlcnMgd291bGQgYmUgY29ycmVjdCBpbgpyZWZ1c2luZyB0byBpbnRlcmFjdCB3aXRo
IGZlbmNlcyBmcm9tIGhlcmUuCgpEYXZlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
