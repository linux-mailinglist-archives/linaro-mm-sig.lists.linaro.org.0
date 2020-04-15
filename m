Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AAA1A9202
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2020 06:42:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B46C366067
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2020 04:42:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A26206606B; Wed, 15 Apr 2020 04:42:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EDAA66063;
	Wed, 15 Apr 2020 04:41:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 17A566605A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2020 04:41:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EA2C866063; Wed, 15 Apr 2020 04:41:44 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by lists.linaro.org (Postfix) with ESMTPS id AEB256605A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2020 04:41:43 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id b13so2167685oti.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 21:41:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yuNggtIe2GcnI6FuGYRCP7sxE6PadkqmBj6CF6tR/Gs=;
 b=FoakKrZkr27VhAJuw5Bz+RpT+bJ2Mjbk6g2Vtm7faIDJMSJvXEEqymK8g7z1kenWRJ
 d5X2g78NlMMgmnEYg0uwT3wIlPDiqovAKYkuZaBrSWYt4LNMzDLkNqjeW6bpDe+Zeobm
 V/lLdhAP1UbDMPa/ssQ9ij5WvfnB9O51gxhjxaLtZqNcYkUHlw2QrmVF/4HnNtI/ABGt
 hqomU71WicgznEC6okSy1Ihc4gbVnCFj+eQyKH7EmXC77F5BQok5L/nBpze9R6gjMPY8
 8Vn0+LSMyvUZFnR7eXNUs8o+AGQW1bTXlRNSzDWG0993GGG+qiVoXNzs4iiyNmvWVq5z
 uAZw==
X-Gm-Message-State: AGi0PuYAUmaGk3gujBt1f4wCj+wGPClz1EKM+/ymW6NHo4J2F5Jr4SfE
 /hlT0PkwUW+WDzT8NdgEKlDAXV18p+wdZxoZSyYjhqo+
X-Google-Smtp-Source: APiQypLZVsuOAs/qV12E+s9L226LVjpTiUij81eio0cenUOY+4mpYMVYUEaDSaDyVC+DuicUwi+ryEMvkOkdej8Zuqw=
X-Received: by 2002:a05:6830:20c3:: with SMTP id
 z3mr15050625otq.102.1586925703073; 
 Tue, 14 Apr 2020 21:41:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
In-Reply-To: <20200414142810.GA958163@kroah.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 14 Apr 2020 21:41:31 -0700
Message-ID: <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, nd <nd@arm.com>,
 Todd Kjos <tkjos@android.com>, Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] staging: android: ion: Skip sync if not
	mapped
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

T24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgNzoyOCBBTSBHcmVnIEtyb2FoLUhhcnRtYW4KPGdyZWdr
aEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgQXByIDE0LCAyMDIwIGF0
IDA0OjE4OjQ3UE0gKzAyMDAsIMOYcmphbiBFaWRlIHdyb3RlOgo+ID4gT25seSBzeW5jIHRoZSBz
Zy1saXN0IG9mIGFuIElvbiBkbWEtYnVmIGF0dGFjaG1lbnQgd2hlbiB0aGUgYXR0YWNobWVudAo+
ID4gaXMgYWN0dWFsbHkgbWFwcGVkIG9uIHRoZSBkZXZpY2UuCj4gPgo+ID4gZG1hLWJ1ZnMgbWF5
IGJlIHN5bmNlZCBhdCBhbnkgdGltZS4gSXQgY2FuIGJlIHJlYWNoZWQgZnJvbSB1c2VyIHNwYWNl
Cj4gPiB2aWEgRE1BX0JVRl9JT0NUTF9TWU5DLCBzbyB0aGVyZSBhcmUgbm8gZ3VhcmFudGVlcyBm
cm9tIGNhbGxlcnMgb24gd2hlbgo+ID4gc3luY3MgbWF5IGJlIGF0dGVtcHRlZCwgYW5kIGRtYV9i
dWZfZW5kX2NwdV9hY2Nlc3MoKSBhbmQKPiA+IGRtYV9idWZfYmVnaW5fY3B1X2FjY2VzcygpIG1h
eSBub3QgYmUgcGFpcmVkLgo+ID4KPiA+IFNpbmNlIHRoZSBzZ19saXN0J3MgZG1hX2FkZHJlc3Mg
aXNuJ3Qgc2V0IHVwIHVudGlsIHRoZSBidWZmZXIgaXMgdXNlZAo+ID4gb24gdGhlIGRldmljZSwg
YW5kIGRtYV9tYXBfc2coKSBpcyBjYWxsZWQgb24gaXQsIHRoZSBkbWFfYWRkcmVzcyB3aWxsIGJl
Cj4gPiBOVUxMIGlmIHN5bmMgaXMgYXR0ZW1wdGVkIG9uIHRoZSBkbWEtYnVmIGJlZm9yZSBpdCdz
IG1hcHBlZCBvbiBhIGRldmljZS4KPiA+Cj4gPiBCZWZvcmUgdjUuMCAoY29tbWl0IDU1ODk3YWY2
MzA5MSAoImRtYS1kaXJlY3Q6IG1lcmdlIHN3aW90bGJfZG1hX29wcwo+ID4gaW50byB0aGUgZG1h
X2RpcmVjdCBjb2RlIikpIHRoaXMgd2FzIGEgcHJvYmxlbSBhcyB0aGUgZG1hLWFwaSAoYXQgbGVh
c3QKPiA+IHRoZSBzd2lvdGxiX2RtYV9vcHMgb24gYXJtNjQpIHdvdWxkIHVzZSB0aGUgcG90ZW50
aWFsbHkgaW52YWxpZAo+ID4gZG1hX2FkZHJlc3MuIEhvdyB0aGF0IGZhaWxlZCBkZXBlbmRlZCBv
biBob3cgdGhlIGRldmljZSBoYW5kbGVkIHBoeXNpY2FsCj4gPiBhZGRyZXNzIDAuIElmIDAgd2Fz
IGEgdmFsaWQgYWRkcmVzcyB0byBwaHlzaWNhbCByYW0sIHRoYXQgcGFnZSB3b3VsZCBnZXQKPiA+
IGZsdXNoZWQgYSBsb3QsIHdoaWxlIHRoZSBhY3R1YWwgcGFnZXMgaW4gdGhlIGJ1ZmZlciB3b3Vs
ZCBub3QgZ2V0IHN5bmNlZAo+ID4gY29ycmVjdGx5LiBXaGlsZSBpZiAwIGlzIGFuIGludmFsaWQg
cGh5c2ljYWwgYWRkcmVzcyBpdCBtYXkgY2F1c2UgYQo+ID4gZmF1bHQgYW5kIHRyaWdnZXIgYSBj
cmFzaC4KPiA+Cj4gPiBJbiB2NS4wIHRoaXMgd2FzIGluY2lkZW50YWxseSBmaXhlZCBieSBjb21t
aXQgNTU4OTdhZjYzMDkxICgiZG1hLWRpcmVjdDoKPiA+IG1lcmdlIHN3aW90bGJfZG1hX29wcyBp
bnRvIHRoZSBkbWFfZGlyZWN0IGNvZGUiKSwgYXMgdGhpcyBtb3ZlZCB0aGUKPiA+IGRtYS1hcGkg
dG8gdXNlIHRoZSBwYWdlIHBvaW50ZXIgaW4gdGhlIHNnX2xpc3QsIGFuZCAoZm9yIElvbiBidWZm
ZXJzIGF0Cj4gPiBsZWFzdCkgdGhpcyB3aWxsIGFsd2F5cyBiZSB2YWxpZCBpZiB0aGUgc2dfbGlz
dCBleGlzdHMgYXQgYWxsLgo+ID4KPiA+IEJ1dCwgdGhpcyBpc3N1ZSBpcyByZS1pbnRyb2R1Y2Vk
IGluIHY1LjMgd2l0aAo+ID4gY29tbWl0IDQ0OWZhNTRkNjgxNSAoImRtYS1kaXJlY3Q6IGNvcnJl
Y3QgdGhlIHBoeXNpY2FsIGFkZHIgaW4KPiA+IGRtYV9kaXJlY3Rfc3luY19zZ19mb3JfY3B1L2Rl
dmljZSIpIG1vdmVzIHRoZSBkbWEtYXBpIGJhY2sgdG8gdGhlIG9sZAo+ID4gYmVoYXZpb3VyIGFu
ZCBwaWNrcyB0aGUgZG1hX2FkZHJlc3MgdGhhdCBtYXkgYmUgaW52YWxpZC4KPiA+Cj4gPiBkbWEt
YnVmIGNvcmUgZG9lc24ndCBlbnN1cmUgdGhhdCB0aGUgYnVmZmVyIGlzIG1hcHBlZCBvbiB0aGUg
ZGV2aWNlLCBhbmQKPiA+IHRodXMgaGF2ZSBhIHZhbGlkIHNnX2xpc3QsIGJlZm9yZSBjYWxsaW5n
IHRoZSBleHBvcnRlcidzCj4gPiBiZWdpbl9jcHVfYWNjZXNzLgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IMOYcmphbiBFaWRlIDxvcmphbi5laWRlQGFybS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJz
L3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMgfCAxMiArKysrKysrKysrKysKPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IFJlc3VibWl0IHdpdGhvdXQgZGlzY2xh
aW1lciwgc29ycnkgYWJvdXQgdGhhdC4KPiA+Cj4gPiBUaGlzIHNlZW1zIHRvIGJlIHBhcnQgb2Yg
YSBiaWdnZXIgaXNzdWUgd2hlcmUgZG1hLWJ1ZiBleHBvcnRlcnMgYXNzdW1lCj4gPiB0aGF0IHRo
ZWlyIGRtYS1idWYgYmVnaW5fY3B1X2FjY2VzcyBhbmQgZW5kX2NwdV9hY2Nlc3MgY2FsbGJhY2tz
IGhhdmUgYQo+ID4gY2VydGFpbiBndWFyYW50ZWVkIGJlaGF2aW9yLCB3aGljaCBpc24ndCBlbnN1
cmVkIGJ5IGRtYS1idWYgY29yZS4KPiA+Cj4gPiBUaGlzIHBhdGNoIGZpeGVzIHRoaXMgaW4gaW9u
IG9ubHksIGJ1dCBpdCBhbHNvIG5lZWRzIHRvIGJlIGZpeGVkIGZvcgo+ID4gb3RoZXIgZXhwb3J0
ZXJzLCBlaXRoZXIgaGFuZGxlZCBsaWtlIHRoaXMgaW4gZWFjaCBleHBvcnRlciwgb3IgaW4KPiA+
IGRtYS1idWYgY29yZSBiZWZvcmUgY2FsbGluZyBpbnRvIHRoZSBleHBvcnRlcnMuCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyBiL2RyaXZlcnMv
c3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gaW5kZXggMzhiNTFlYWNlNGY5Li43Yjc1MmJh
MGNiNmQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMK
PiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+Cj4gTm93IHRoYXQg
d2UgaGF2ZSB0aGUgZG1hLWJ1ZmYgc3R1ZmYgaW4gdGhlIHRyZWUsIGRvIHdlIGV2ZW4gbmVlZCB0
aGUKPiBpb24gY29kZSBpbiB0aGUga2VybmVsIGFueW1vcmU/ICBDYW4ndCB3ZSBkZWxldGUgaXQg
bm93Pwo+CgpJIGFncmVlIHRoYXQgd2Ugc2hvdWxkbid0IGJlIHRha2luZyBmdXJ0aGVyIChub24t
c2VjdXJpdHkvY2xlYW51cCkKcGF0Y2hlcyB0byB0aGUgSU9OIGNvZGUuCgpJJ2QgbGlrZSB0byBn
aXZlIGRldmVsb3BlcnMgYSBsaXR0bGUgYml0IG9mIGEgdHJhbnNpdGlvbiBwZXJpb2QgKEkgd2Fz
CnRoaW5raW5nIGEgeWVhciwgYnV0IHJlYWxseSBqdXN0IG9uZSBMVFMgcmVsZWFzZSB0aGF0IGhh
cyBib3RoIHdvdWxkCmRvKSB3aGVyZSB0aGV5IGNhbiBtb3ZlIHRoZWlyIElPTiBoZWFwcyBvdmVy
IHRvIGRtYWJ1ZiBoZWFwcyBhbmQgdGVzdApib3RoIGFnYWluc3QgdGhlIHNhbWUgdHJlZS4KCkJ1
dCBJIGRvIHRoaW5rIHdlIGNhbiBtYXJrIGl0IGFzIGRlcHJlY2F0ZWQgYW5kIGxldCBmb2xrcyBr
bm93IHRoYXQKYXJvdW5kIHRoZSBlbmQgb2YgdGhlIHllYXIgaXQgd2lsbCBiZSBkZWxldGVkLgoK
VGhhdCBzb3VuZCBvaz8KCnRoYW5rcwotam9obgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
