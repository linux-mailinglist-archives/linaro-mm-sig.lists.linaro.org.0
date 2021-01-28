Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 97143307D10
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 18:53:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9AF166766
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 17:53:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A5CB466767; Thu, 28 Jan 2021 17:53:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEE326675F;
	Thu, 28 Jan 2021 17:53:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D49E461816
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 17:53:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AB90D6675F; Thu, 28 Jan 2021 17:53:13 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id 7D5BD61816
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 17:53:11 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id c12so6303160wrc.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 09:53:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1yrHTpCxJbPqJxPosBUCqHjQNeMsmt6Vm7ugtgzEReE=;
 b=clcNEt45gyJK2FRC9+AwuMqXB77hmNBADzaqMm+ZRN07aCz7tQYaRUDEQpJUGKzXLX
 u6HUWhx/CFil5CJWIgoDSBYeBbdJEcHDCgmgi6SuJsnAA/QUL2JJPlSSbZ4ixPGrKrQJ
 YPcAdjlAtPrkd4jNrm9QjGKuXUu7iWv15RoOgz3HjGWh0DocDZjijTvuMZJZbP4B2dNi
 RnY/izVoTPDniIOq6oW8VbkSenG5+8NCV0JwmIAaIi+5PtiFUBAr05fFrGelM0t8AuZL
 AdPKik9EugCEoXC+Qte56O3uFWBB6DtQLc1cZ5WiZJHiO00/ujS265x8hBv49cNhR5rH
 yrgQ==
X-Gm-Message-State: AOAM5316WJxdPSmT1xtAWwpqawJvhcs4VMuG6y+1ESjF2Pvi4N1EBxZK
 52dZCoPUWa4biXMrvw3AIe3vSBhaBXLjmWm6hrZO7A==
X-Google-Smtp-Source: ABdhPJxwJqmSpiOHWxbkktFlqp4IMoBe4w7eVr8q1PfPy4kMSqkddDUEO7do+MQxEcJmtNOrfxqEeXfGoH86SezSyCg=
X-Received: by 2002:adf:ed45:: with SMTP id u5mr267262wro.358.1611856390338;
 Thu, 28 Jan 2021 09:53:10 -0800 (PST)
MIME-Version: 1.0
References: <20210128083817.314315-1-surenb@google.com>
 <20210128091348.GA1962975@infradead.org>
In-Reply-To: <20210128091348.GA1962975@infradead.org>
From: Suren Baghdasaryan <surenb@google.com>
Date: Thu, 28 Jan 2021 09:52:59 -0800
Message-ID: <CAJuCfpFUhJozS98WJpH0KQKBzyGXvqS1fitu-mgSyhaJ1xL8SQ@mail.gmail.com>
To: Christoph Hellwig <hch@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Sandeep Patil <sspatil@google.com>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>, christian.koenig@amd.com,
 kernel-team <kernel-team@android.com>, James Jones <jajones@nvidia.com>,
 LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Minchan Kim <minchan@kernel.org>, John Stultz <john.stultz@linaro.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 benjamin.gaignard@linaro.org, Hridya Valsaraju <hridya@google.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/1] dma-buf: heaps: Map system heap
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMToxMyBBTSBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGlu
ZnJhZGVhZC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMTI6Mzg6MTdB
TSAtMDgwMCwgU3VyZW4gQmFnaGRhc2FyeWFuIHdyb3RlOgo+ID4gQ3VycmVudGx5IHN5c3RlbSBo
ZWFwIG1hcHMgaXRzIGJ1ZmZlcnMgd2l0aCBWTV9QRk5NQVAgZmxhZyB1c2luZwo+ID4gcmVtYXBf
cGZuX3JhbmdlLiBUaGlzIHJlc3VsdHMgaW4gc3VjaCBidWZmZXJzIG5vdCBiZWluZyBhY2NvdW50
ZWQKPiA+IGZvciBpbiBQU1MgY2FsY3VsYXRpb25zIGJlY2F1c2Ugdm0gdHJlYXRzIHRoaXMgbWVt
b3J5IGFzIGhhdmluZyBubwo+ID4gcGFnZSBzdHJ1Y3RzLiBXaXRob3V0IHBhZ2Ugc3RydWN0cyB0
aGVyZSBhcmUgbm8gY291bnRlcnMgcmVwcmVzZW50aW5nCj4gPiBob3cgbWFueSBwcm9jZXNzZXMg
YXJlIG1hcHBpbmcgYSBwYWdlIGFuZCB0aGVyZWZvcmUgUFNTIGNhbGN1bGF0aW9uCj4gPiBpcyBp
bXBvc3NpYmxlLgo+ID4gSGlzdG9yaWNhbGx5LCBJT04gZHJpdmVyIHVzZWQgdG8gbWFwIGl0cyBi
dWZmZXJzIGFzIFZNX1BGTk1BUCBhcmVhcwo+ID4gZHVlIHRvIG1lbW9yeSBjYXJ2ZW91dHMgdGhh
dCBkaWQgbm90IGhhdmUgcGFnZSBzdHJ1Y3RzIFsxXS4gVGhhdAo+ID4gaXMgbm90IHRoZSBjYXNl
IGFueW1vcmUgYW5kIGl0IHNlZW1zIHRoZXJlIHdhcyBkZXNpcmUgdG8gbW92ZSBhd2F5Cj4gPiBm
cm9tIHJlbWFwX3Bmbl9yYW5nZSBbMl0uCj4gPiBEbWFidWYgc3lzdGVtIGhlYXAgZGVzaWduIGlu
aGVyaXRzIHRoaXMgSU9OIGJlaGF2aW9yIGFuZCBtYXBzIGl0cwo+ID4gcGFnZXMgdXNpbmcgcmVt
YXBfcGZuX3JhbmdlIGV2ZW4gdGhvdWdoIGFsbG9jYXRlZCBwYWdlcyBhcmUgYmFja2VkCj4gPiBi
eSBwYWdlIHN0cnVjdHMuCj4gPiBDbGVhciBWTV9JTyBhbmQgVk1fUEZOTUFQIGZsYWdzIHdoZW4g
bWFwcGluZyBtZW1vcnkgYWxsb2NhdGVkIGJ5IHRoZQo+ID4gc3lzdGVtIGhlYXAgYW5kIHJlcGxh
Y2UgcmVtYXBfcGZuX3JhbmdlIHdpdGggdm1faW5zZXJ0X3BhZ2UsIGZvbGxvd2luZwo+ID4gTGF1
cmEncyBzdWdnZXN0aW9uIGluIFsxXS4gVGhpcyB3b3VsZCBhbGxvdyBjb3JyZWN0IFBTUyBjYWxj
dWxhdGlvbgo+ID4gZm9yIGRtYWJ1ZnMuCj4gPgo+ID4gWzFdIGh0dHBzOi8vZHJpdmVyZGV2LWRl
dmVsLmxpbnV4ZHJpdmVycHJvamVjdC5uYXJraXZlLmNvbS92MGZKR3BhRC91c2luZy1pb24tbWVt
b3J5LWZvci1kaXJlY3QtaW8KPiA+IFsyXSBodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvcGlwZXJtYWlsL2RyaXZlcmRldi1kZXZlbC8yMDE4LU9jdG9iZXIvMTI3NTE5Lmh0
bWwKPiA+IChzb3JyeSwgY291bGQgbm90IGZpbmQgbG9yZSBsaW5rcyBmb3IgdGhlc2UgZGlzY3Vz
c2lvbnMpCj4gPgo+ID4gU3VnZ2VzdGVkLWJ5OiBMYXVyYSBBYmJvdHQgPGxhYmJvdHRAa2VybmVs
Lm9yZz4KPiA+IFNpZ25lZC1vZmYtYnk6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdvb2ds
ZS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyB8
IDYgKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9o
ZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYwo+ID4gaW5kZXggMTdl
MGU5YTY4YmFmLi4wZTkyZTQyYjIyNTEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvc3lzdGVtX2hlYXAuYwo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3Rl
bV9oZWFwLmMKPiA+IEBAIC0yMDAsMTEgKzIwMCwxMyBAQCBzdGF0aWMgaW50IHN5c3RlbV9oZWFw
X21tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEp
Cj4gPiAgICAgICBzdHJ1Y3Qgc2dfcGFnZV9pdGVyIHBpdGVyOwo+ID4gICAgICAgaW50IHJldDsK
PiA+Cj4gPiArICAgICAvKiBBbGwgcGFnZXMgYXJlIGJhY2tlZCBieSBhICJzdHJ1Y3QgcGFnZSIg
Ki8KPiA+ICsgICAgIHZtYS0+dm1fZmxhZ3MgJj0gflZNX1BGTk1BUDsKPgo+IFdoeSBkbyB3ZSBj
bGVhciB0aGlzIGZsYWc/ICBJdCBzaG91bGRuJ3QgZXZlbiBiZSBzZXQgaGVyZSBhcyBmYXIgYXMg
SQo+IGNhbiB0ZWxsLgoKVGhhbmtzIGZvciB0aGUgcXVlc3Rpb24sIENocmlzdG9waC4KSSB0cmFj
a2VkIGRvd24gdGhhdCBmbGFnIGJlaW5nIHNldCBieSBkcm1fZ2VtX21tYXBfb2JqKCkgd2hpY2gg
RFJNCmRyaXZlcnMgdXNlIHRvICJTZXQgdXAgdGhlIFZNQSB0byBwcmVwYXJlIG1hcHBpbmcgb2Yg
dGhlIEdFTSBvYmplY3QiCihhY2NvcmRpbmcgdG8gZHJtX2dlbV9tbWFwX29iaiBjb21tZW50cyku
IEkgYWxzbyBzZWUgYSBwYXR0ZXJuIGluCnNldmVyYWwgRE1SIGRyaXZlcnMgdG8gY2FsbCBkcm1f
Z2VtX21tYXBfb2JqKCkvZHJtX2dlbV9tbWFwKCksIHRoZW4KY2xlYXIgVk1fUEZOTUFQIGFuZCB0
aGVuIG1hcCB0aGUgVk1BIChmb3IgZXhhbXBsZSBoZXJlOgpodHRwczovL2VsaXhpci5ib290bGlu
LmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fZ2VtLmMjTDI0NikuCkkgdGhvdWdodCB0aGF0IGRtYWJ1ZiBhbGxvY2F0b3IgKGluIHRo
aXMgY2FzZSB0aGUgc3lzdGVtIGhlYXApIHdvdWxkCmJlIHRoZSByaWdodCBwbGFjZSB0byBzZXQg
dGhlc2UgZmxhZ3MgYmVjYXVzZSBpdCBjb250cm9scyBob3cgbWVtb3J5CmlzIGFsbG9jYXRlZCBi
ZWZvcmUgbWFwcGluZy4gSG93ZXZlciBpdCdzIHF1aXRlIHBvc3NpYmxlIHRoYXQgSSdtCm1pc3Np
bmcgdGhlIHJlYWwgcmVhc29uIGZvciBWTV9QRk5NQVAgYmVpbmcgc2V0IGluIGRybV9nZW1fbW1h
cF9vYmooKQpiZWZvcmUgZG1hX2J1Zl9tbWFwKCkgaXMgY2FsbGVkLiBJIGNvdWxkIG5vdCBmaW5k
IHRoZSBhbnN3ZXIgdG8gdGhhdCwKc28gSSBob3BlIHNvbWVvbmUgaGVyZSBjYW4gY2xhcmlmeSB0
aGF0LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
