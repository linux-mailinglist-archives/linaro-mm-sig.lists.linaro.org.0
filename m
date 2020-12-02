Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC822CB193
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 01:34:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F25A460D86
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 00:34:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E696666015; Wed,  2 Dec 2020 00:34:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A16F65FD7;
	Wed,  2 Dec 2020 00:33:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3EB6560D86
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 00:33:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 254F665FD7; Wed,  2 Dec 2020 00:33:27 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by lists.linaro.org (Postfix) with ESMTPS id E1DFF60D86
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 00:33:25 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id z24so96383oto.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Dec 2020 16:33:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b7bUWtf5JcEJo8eU3QHsT0IzGFGYcNHBefSS0GBzXro=;
 b=nS6WYMig/LMoaixS/teAPjEA4cUV3ujaAVQ9sDeUncaldg0TJczmee5pIZaXWff7A9
 Dt9yPwagejfo9CQ2tl5sSPbA6+S2l+ydpM7cuUcwL3qaM7feucfqFRR2aCuaoJGakx8A
 gzMpVlZvQ3uLURQ7JHfEklLaxwF5wnd7YHxybIK41wJvziUGxZjKNnGqshQXSCncK0VZ
 vfjVnD4KJevoFPCWKf1rfRdkUuTEpSTe9Jb2+wHD3FjtOm5ZHaOz4KBCWQ7R0dZijCWz
 4urJzb/IzmaudllUaoIGaPRfKxO6yKHcQ5MutObt4dU2ZEOwIUKVrJyWX7OJI7l46flp
 bs8g==
X-Gm-Message-State: AOAM533pWyy3fo71F7C59LKke5JYShJmwOKuPih2JLpQuxWgu4st7XRS
 OdHkvTejnYprd50AHH1tLS9ptwCDv8zrPY9XR2ToeCB1
X-Google-Smtp-Source: ABdhPJzzD//+z/Kgp4hq35PZtpKGAwVdEzUSs1T/u5eAapNIYsM1KOPDQ3WheaHwILzvturXQdCwoNk4xq6ekztTclc=
X-Received: by 2002:a9d:851:: with SMTP id 75mr104253oty.102.1606869205374;
 Tue, 01 Dec 2020 16:33:25 -0800 (PST)
MIME-Version: 1.0
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-5-minchan@kernel.org>
 <CALAqxLXFeUStaJ8Mtm5v3kSxmeqnjzLTsyathkrKF0ke3fYGiQ@mail.gmail.com>
 <20201201225554.GA3968963@google.com>
 <CALAqxLW-n4-VSd9dj=KXS4WRDrPmKOShAwP9tCfCZnk+4kxW-w@mail.gmail.com>
 <20201202001302.GB3968963@google.com>
In-Reply-To: <20201202001302.GB3968963@google.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 1 Dec 2020 16:33:14 -0800
Message-ID: <CALAqxLVBRPOCwLU1iY44Nh1-SpDpsfMz+2c1XRX2WofkpjrhcQ@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-mm <linux-mm@kvack.org>, Christian Koenig <christian.koenig@amd.com>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH v2 4/4] dma-buf: heaps: add chunk heap
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

T24gVHVlLCBEZWMgMSwgMjAyMCBhdCA0OjEzIFBNIE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBEZWMgMDEsIDIwMjAgYXQgMDM6Mzg6MTRQTSAtMDgw
MCwgSm9obiBTdHVsdHogd3JvdGU6Cj4gPiBPbiBUdWUsIERlYyAxLCAyMDIwIGF0IDI6NTUgUE0g
TWluY2hhbiBLaW0gPG1pbmNoYW5Aa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgRGVj
IDAxLCAyMDIwIGF0IDExOjQ4OjE1QU0gLTA4MDAsIEpvaG4gU3R1bHR6IHdyb3RlOgo+ID4gPiA+
IE9uIFR1ZSwgRGVjIDEsIDIwMjAgYXQgOTo1MSBBTSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJu
ZWwub3JnPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IFRoYW5rcyBmb3IgcmV3b3JraW5nIGFuZCBy
ZXNlbmRpbmcgdGhpcyEKPiA+ID4gPgo+ID4gPiA+IC4uLgo+ID4gPiA+ID4gK3N0YXRpYyBpbnQg
X19pbml0IGNodW5rX2hlYXBfaW5pdCh2b2lkKQo+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ICsgICAg
ICAgc3RydWN0IGNtYSAqZGVmYXVsdF9jbWEgPSBkZXZfZ2V0X2NtYV9hcmVhKE5VTEwpOwo+ID4g
PiA+ID4gKyAgICAgICBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gZXhwX2luZm87Cj4gPiA+
ID4gPiArICAgICAgIHN0cnVjdCBjaHVua19oZWFwICpjaHVua19oZWFwOwo+ID4gPiA+ID4gKwo+
ID4gPiA+ID4gKyAgICAgICBpZiAoIWRlZmF1bHRfY21hKQo+ID4gPiA+ID4gKyAgICAgICAgICAg
ICAgIHJldHVybiAwOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICBjaHVua19oZWFwID0g
a3phbGxvYyhzaXplb2YoKmNodW5rX2hlYXApLCBHRlBfS0VSTkVMKTsKPiA+ID4gPiA+ICsgICAg
ICAgaWYgKCFjaHVua19oZWFwKQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5P
TUVNOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICBjaHVua19oZWFwLT5vcmRlciA9IENI
VU5LX0hFQVBfT1JERVI7Cj4gPiA+ID4gPiArICAgICAgIGNodW5rX2hlYXAtPmNtYSA9IGRlZmF1
bHRfY21hOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICBleHBfaW5mby5uYW1lID0gY21h
X2dldF9uYW1lKGRlZmF1bHRfY21hKTsKPiA+ID4gPgo+ID4gPiA+IFNvLCB0aGlzIHdvdWxkIGNy
ZWF0ZSBhIGNodW5rIGhlYXAgbmFtZSB3aXRoIHRoZSBkZWZhdWx0IENNQSBuYW1lLAo+ID4gPiA+
IHdoaWNoIHdvdWxkIGJlIGluZGlzdGluZ3Vpc2hhYmxlIGZyb20gdGhlIGhlYXAgbmFtZSB1c2Vk
IGZvciB0aGUgcGxhaW4KPiA+ID4gPiBDTUEgaGVhcC4KPiA+ID4gPgo+ID4gPiA+IFByb2JhYmx5
IGEgZ29vZCBpZGVhIHRvIHByZWZpeCBpdCB3aXRoICJjaHVuay0iIHNvIHRoZSBoZWFwIGRldmlj
ZQo+ID4gPiA+IG5hbWVzIGFyZSB1bmlxdWU/Cj4gPiA+Cj4gPiA+IFRoYXQgd2lsbCBnaXZlIGFu
IGltcHJlc3Npb24gdG8gdXNlciB0aGF0IHRoZXkgYXJlIHVzaW5nIGRpZmZlcmVudCBDTUEKPiA+
ID4gYXJlYSBidXQgdGhhdCdzIG5vdCB0cnVlLiBJTUhPLCBsZXQncyBiZSBob25lc3QgYXQgdGhp
cyBtb21lbnQuCj4gPgo+ID4gSSBkaXNhZ3JlZS4gIFRoZSBkbWFidWYgaGVhcHMgcHJvdmlkZSBh
biBhYnN0cmFjdGlvbiBmb3IgYWxsb2NhdGluZyBhCj4gPiB0eXBlIG9mIG1lbW9yeSwgYW5kIHdo
aWxlIHlvdXIgaGVhcCBpcyBwdWxsaW5nIGZyb20gQ01BLCB5b3UgYXJlbid0Cj4gPiAianVzdCIg
YWxsb2NhdGluZyBDTUEgYXMgdGhlIGV4aXN0aW5nIENNQSBoZWFwIHdvdWxkIHN1ZmZpY2UgZm9y
IHRoYXQuCj4gPgo+ID4gU2luY2UgeW91IG5lZWQgYSBzbGlnaHRseSBkaWZmZXJlbnQgbWV0aG9k
IHRvIGFsbG9jYXRlIGhpZ2ggb3JkZXIKPiA+IHBhZ2VzIGluIGJ1bGssIHdlIHJlYWxseSBzaG91
bGQgaGF2ZSBhIHVuaXF1ZSB3YXkgdG8gbmFtZSB0aGUKPiA+IGFsbG9jYXRvciBpbnRlcmZhY2Uu
IFRoYXQncyB3aHkgSSdkIHN1Z2dlc3QgdGhlICJjaHVuay0iIHByZWZpeCB0byB0aGUKPiA+IGhl
YXAgbmFtZS4KPgo+IEdvdCBpdC4gSG93IGFib3V0IHRoaXM/Cj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL2NodW5rX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9j
aHVua19oZWFwLmMKPiBpbmRleCAwMjc3NzA3YTkzYTkuLjM2ZTE4OWQwYjczZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY2h1bmtfaGVhcC5jCj4gKysrIGIvZHJpdmVycy9k
bWEtYnVmL2hlYXBzL2NodW5rX2hlYXAuYwo+IEBAIC00MTAsNyArNDEwLDcgQEAgc3RhdGljIGlu
dCBfX2luaXQgY2h1bmtfaGVhcF9pbml0KHZvaWQpCj4gICAgICAgICBjaHVua19oZWFwLT5vcmRl
ciA9IENIVU5LX0hFQVBfT1JERVI7Cj4gICAgICAgICBjaHVua19oZWFwLT5jbWEgPSBkZWZhdWx0
X2NtYTsKPgo+IC0gICAgICAgZXhwX2luZm8ubmFtZSA9IGNtYV9nZXRfbmFtZShkZWZhdWx0X2Nt
YSk7Cj4gKyAgICAgICBleHBfaW5mby5uYW1lID0gImNtYS1jaHVuay1oZWFwIjsKClRoYXQncyBz
dGlsbCBhIGJpdCBnZW5lcmFsIGZvciB0aGUgZGVmYXVsdCBjbWEgKHdoaWNoIGNhbiBiZSBuYW1l
ZApkaWZmZXJlbnRseSkuIEkgdGhpbmsgaW5jbHVkaW5nIGNtYSBuYW1lIGlzIGltcG9ydGFudCwg
anVzdCBhZGRpbmcgdGhlCmNodW5rIHByZWZpeCBtaWdodCBiZSBiZXN0LgoKU28gc29tZXRoaW5n
IGxpa2UKICBzcHJpbnRmKGJ1ZiwgImNodW5rLSVzIiwgY21hX2dldF9uYW1lKGRlZmF1bHRfY21h
KSk7CiAgZXhwX2luZm8ubmFtZSA9IGJ1ZjsKCnRoYW5rcwotam9obgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
