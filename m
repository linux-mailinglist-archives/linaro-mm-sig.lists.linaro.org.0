Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C02632299CD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jul 2020 16:08:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7937665D6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jul 2020 14:08:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DCB4D665E4; Wed, 22 Jul 2020 14:08:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F44866588;
	Wed, 22 Jul 2020 14:07:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CA9A860E97
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jul 2020 14:07:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AE6D766558; Wed, 22 Jul 2020 14:07:52 +0000 (UTC)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by lists.linaro.org (Postfix) with ESMTPS id 4F78A60E97
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jul 2020 14:07:51 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id k22so1991365oib.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jul 2020 07:07:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yAHV/rpaUbGt0q99VF6bHWxElygJ/Z2JZXz353VfAMQ=;
 b=X6F31jGCXnCtvLS0vSAdju+wUDWKWfR+I2xJhZ/6WX9OYJ07mNTv5pI2Xj1nFj46Mk
 usPZvybwtmB2vHD/YQvl9SuwFW8LePN29ZeWyqV4SyXNAWx/Oj2DbFELHd3/iKO06ix+
 /a5koir1tgCrMNpTDZi7OsEX6ZSXOzP9xD0S4a5JdLRxdGbP2fuhsv+b/EbspQKolPE/
 x44r8ePHx26j4cnj2G90ZIsuiAEb5Y63oKCOKdr0i+rOhzPRhgDzGqV31s/7cCYOsv2k
 oe8HbS68sgmiwUPAXTqhx6D5doMqyl4TLxQfLiAgiZC+h/+DjOoyCFDPpXCB4nYkzYsy
 2nRQ==
X-Gm-Message-State: AOAM532UTpzC6t8nCAYtQY82FqIpj25BDAkpRp9m+4UA8V+HkARRAuNv
 eDgzILMkCduPdeVD2lJDuRPXYVU6okj7z/e/8ggQuw==
X-Google-Smtp-Source: ABdhPJxsmP01VwUh+xqO5FIOiyXHA61FZ3yhIgmjFOUSqLR+0KcXAPEhRCCAl08pk9WqF5Dcre5YesNtfI3JuxHSNWo=
X-Received: by 2002:aca:cc8e:: with SMTP id c136mr7273449oig.128.1595426870693; 
 Wed, 22 Jul 2020 07:07:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
 <CAPM=9twUWeenf-26GEvkuKo3wHgS3BCyrva=sNaWo6+=A5qdoQ@mail.gmail.com>
 <805c49b7-f0b3-45dc-5fe3-b352f0971527@shipmail.org>
 <CAKMK7uHhhxBC2MvnNnU9FjxJaWkEcP3m5m7AN3yzfw=wxFsckA@mail.gmail.com>
 <92393d26-d863-aac6-6d27-53cad6854e13@shipmail.org>
 <CAKMK7uF8jpyuCF8uUbEeJUedErxqRGa8JY+RuURg7H1XXWXzkw@mail.gmail.com>
 <8fd999f2-cbf6-813c-6ad4-131948fb5cc5@shipmail.org>
 <CAKMK7uH0rcyepP2hDpNB-yuvNyjee1tPmxWUyefS5j7i-N6Pfw@mail.gmail.com>
 <df5414f5-ac5c-d212-500c-b05c7c78ce84@shipmail.org>
 <CAKMK7uF27SifuvMatuP2kJPTf+LVmVbG098cE2cqorYYo7UHkw@mail.gmail.com>
 <697d1b5e-5d1c-1655-23f8-7a3f652606f3@shipmail.org>
In-Reply-To: <697d1b5e-5d1c-1655-23f8-7a3f652606f3@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 22 Jul 2020 16:07:39 +0200
Message-ID: <CAKMK7uGSkgdJyyvGe8SF_vWfgyaCWn5p0GvZZdLvkxmrS6tYbQ@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Felix Kuehling <Felix.Kuehling@amd.com>,
 Daniel Stone <daniels@collabora.com>, linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>, Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document why
 indefinite fences are a bad idea
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

T24gV2VkLCBKdWwgMjIsIDIwMjAgYXQgMzoxMiBQTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
Cjx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPiBPbiAyMDIwLTA3LTIyIDE0OjQxLCBE
YW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gQWggSSB0aGluayBJIG1pc3VuZGVyc3Rvb2Qgd2hpY2gg
b3B0aW9ucyB5b3Ugd2FudCB0byBjb21wYXJlIGhlcmUuIEknbQo+ID4gbm90IHN1cmUgaG93IG11
Y2ggcGFpbiBmaXhpbmcgdXAgImRtYS1mZW5jZSBhcyBtZW1vcnkgZmVuY2UiIHJlYWxseQo+ID4g
aXMuIFRoYXQncyBraW5kYSB3aHkgSSB3YW50IGEgbG90IG1vcmUgdGVzdGluZyBvbiBteSBhbm5v
dGF0aW9uCj4gPiBwYXRjaGVzLCB0byBmaWd1cmUgdGhhdCBvdXQuIE5vdCBtdWNoIGZlZWRiYWNr
IGFzaWRlIGZyb20gYW1kZ3B1IGFuZAo+ID4gaW50ZWwsIGFuZCB0aG9zZSB0d28gZHJpdmVycyBw
cmV0dHkgbXVjaCBuZWVkIHRvIHNvcnQgb3V0IHRoZWlyIG1lbW9yeQo+ID4gZmVuY2UgaXNzdWVz
IGFueXdheSAoYmVjYXVzZSBvZiB1c2VycHRyIGFuZCBzdHVmZiBsaWtlIHRoYXQpLgo+ID4KPiA+
IFRoZSBvbmx5IG90aGVyIGlzc3VlcyBvdXRzaWRlIG9mIHRoZXNlIHR3byBkcml2ZXJzIEknbSBh
d2FyZSBvZjoKPiA+IC0gdmFyaW91cyBzY2hlZHVsZXIgZHJpdmVycyBkb2luZyBhbGxvY2F0aW9u
cyBpbiB0aGUgZHJtL3NjaGVkdWxlcgo+ID4gY3JpdGljYWwgc2VjdGlvbi4gU2luY2UgYWxsIGFy
bS1zb2MgZHJpdmVycyBoYXZlIGEgbWlsZGx5IHNob2RkeQo+ID4gbWVtb3J5IG1vZGVsIG9mICJ3
ZSBqdXN0IHBpbiBldmVyeXRoaW5nIiB0aGV5IGRvbid0IHJlYWxseSBoYXZlIHRvCj4gPiBkZWFs
IHdpdGggdGhpcy4gU28gd2UgbWlnaHQganVzdCBkZWNsYXJlIGFybSBhcyBhIHBsYXRmb3JtIGJy
b2tlbiBhbmQKPiA+IG5vdCB0YWludCB0aGUgZG1hLWZlbmNlIGNyaXRpY2FsIHNlY3Rpb25zIHdp
dGggZnNfcmVjbGFpbS4gT3RvaCB3ZQo+ID4gbmVlZCB0byBmaXggdGhpcyBmb3IgZHJtL3NjaGVk
dWxlciBhbnl3YXksIEkgdGhpbmsgYmVzdCBvcHRpb24gd291bGQKPiA+IGJlIHRvIGhhdmUgYSBt
ZW1wb29sIGZvciBodyBmZW5jZXMgaW4gdGhlIHNjaGVkdWxlciBpdHNlbGYsIGFuZCBhdAo+ID4g
dGhhdCBwb2ludCBmaXhpbmcgdGhlIG90aGVyIGRyaXZlcnMgc2hvdWxkbid0IGJlIHRvbyBvbmVy
b3VzLgo+ID4KPiA+IC0gdm13Z2Z4IGRvaW5nIGEgZG1hX3Jlc3YgaW4gdGhlIGF0b21pYyBjb21t
aXQgdGFpbC4gRW50aXJlbHkKPiA+IG9ydGhvZ29uYWwgdG8gdGhlIGVudGlyZSBtZW1vcnkgZmVu
Y2UgZGlzY3Vzc2lvbi4KPgo+IFdpdGggdm13Z2Z4IHRoZXJlIGlzIGFub3RoZXIgaXNzdWUgdGhh
dCBpcyBoaXQgd2hlbiB0aGUgZ3B1IHNpZ25hbHMgYW4KPiBlcnJvci4gQXQgdGhhdCBwb2ludCB0
aGUgYmF0Y2ggbWlnaHQgYmUgcmVzdGFydGVkIHdpdGggYSBuZXcgbWV0YQo+IGNvbW1hbmQgYnVm
ZmVyIHRoYXQgbmVlZHMgdG8gYmUgYWxsb2NhdGVkIG91dCBvZiBhIGRtYSBwb29sLiBpbiB0aGUK
PiBmZW5jZSBjcml0aWNhbCBzZWN0aW9uLiBUaGF0J3MgcHJvYmFibHkgYSBiaXQgbmFzdHkgdG8g
Zml4LCBidXQgbm90Cj4gaW1wb3NzaWJsZS4KClllYWggcmVzZXQgaXMgZnVuLiBGcm9tIHdoYXQg
SSd2ZSBzZWVuIHRoaXMgaXNuJ3QgYW55IHdvcnNlIHRoYW4gdGhlCmh3IGFsbG9jYXRpb24gaXNz
dWUgZm9yIGRybS9zY2hlZHVsZXIgZHJpdmVycywgdGhleSBqdXN0IGFsbG9jYXRlCmFub3RoZXIg
aHcgZmVuY2Ugd2l0aCBhbGwgdGhhdCBkcmFncyBhbG9uZy4gU28gdGhlIHNhbWUgbWVtcG9vbCBz
aG91bGQKYmUgc3VmZmljaWVudC4KClRoZSByZWFsbHkgbmFzdHkgdGhpbmcgYXJvdW5kIHJlc2V0
IGlzIGRpc3BsYXkgaW50ZXJhY3Rpb25zLCBiZWNhdXNlCnlvdSBqdXN0IGNhbid0IHRha2UgZHJt
X21vZGVzZXRfbG9jay4gYW1kZ3B1IGZpeGVkIHRoYXQgbm93IChhdCBsZWFzdAp0aGUgbW9kZXNl
dF9sb2NrIHNpZGUsIG5vdCB5ZXQgdGhlIG1lbW9yeSBhbGxvY2F0aW9ucyB0aGF0IGJyaW5ncwph
bG9uZykuIGk5MTUgaGFzIHRoZSBzYW1lIHByb2JsZW0gZm9yIGdlbjIvMyAoc28gcmVhbGx5IG9s
ZCBzdHVmZiksCmFuZCB3ZSd2ZSBzb2x2ZWQgdGhhdCBieSBicmVha2luZyZyZXN0YXJ0aW5nIGFs
bCBpOTE1IGZlbmNlIHdhaXRzLCBidXQKdGhhdCBwcmVkYXRlcyBtdWx0aS1ncHUgYW5kIHdvbnQg
d29yayBmb3Igc2hhcmVkIGZlbmNlcyBvZmMuIEJ1dCBpdCdzCnNvIG9sZCBhbmQgcHJlZGF0ZXMg
YWxsIG11bHRpLWdwdSBsYXB0b3BzIHRoYXQgSSB0aGluayB3b250Zml4IGlzIHRoZQpyaWdodCB0
YWtlLgoKT3RoZXIgZHJtL3NjaGVkdWxlciBkcml2ZXJzIGRvbid0IGhhdmUgdGhhdCBwcm9ibGVt
IHNpbmNlIHRoZXkncmUgYWxsCnJlbmRlci1vbmx5LCBzbyBubyBkaXNwbGF5IGRyaXZlciBpbnRl
cmFjdGlvbi4KCj4gPiBJJ20gcHJldHR5IHN1cmUgdGhlcmUncyBtb3JlIGJ1Z3MsIEkganVzdCBo
YXZlbid0IGhlYXJkIGZyb20gdGhlbSB5ZXQuCj4gPiBBbHNvIGR1ZSB0byB0aGUgb3B0LWluIG5h
dHVyZSBvZiBkbWEtZmVuY2Ugd2UgY2FuIGxpbWl0IHRoZSBzY29wZSBvZgo+ID4gd2hhdCB3ZSBm
aXggZmFpcmx5IG5hdHVyYWxseSwganVzdCBkb24ndCBwdXQgdGhlbSB3aGVyZSBubyBvbmUgY2Fy
ZXMKPiA+IDotKSBPZiBjb3Vyc2UgdGhhdCBhbHNvIGhpZGVzIGdlbmVyYWwgbG9ja2luZyBpc3N1
ZXMgaW4gZG1hX2ZlbmNlCj4gPiBzaWduYWxsaW5nIGNvZGUsIGJ1dCB3ZWxsICpzaHJ1ZyouCj4g
SG1tLCB5ZXMuIEFub3RoZXIgcG90ZW50aWFsIGJpZyBwcm9ibGVtIHdvdWxkIGJlIGRyaXZlcnMg
dGhhdCB3YW50IHRvCj4gdXNlIGdwdSBwYWdlIGZhdWx0cyBpbiB0aGUgZG1hLWZlbmNlIGNyaXRp
Y2FsIHNlY3Rpb25zIHdpdGggdGhlCj4gYmF0Y2gtYmFzZWQgcHJvZ3JhbW1pbmcgbW9kZWwuCgpZ
ZWFoIHRoYXQncyBhIG1hc3NpdmUgY2FuIG9mIHdvcm1zLiBCdXQgbHVja2lseSB0aGVyZSdzIG5v
IHN1Y2ggZHJpdmVyCm1lcmdlZCBpbiB1cHN0cmVhbSwgc28gaG9wZWZ1bGx5IHdlIGNhbiB0aGlu
ayBhYm91dCBhbGwgdGhlCmNvbnN0cmFpbnRzIGFuZCBob3cgdG8gYmVzdCBhbm5vdGF0ZSZlbmZv
cmNlIHRoaXMgYmVmb3JlIHdlIGxhbmQgYW55CmNvZGUgYW5kIGhhdmUgYmlnIHJlZ3JldHMuCi1E
YW5pZWwKCgoKLS0KRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9y
YXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
